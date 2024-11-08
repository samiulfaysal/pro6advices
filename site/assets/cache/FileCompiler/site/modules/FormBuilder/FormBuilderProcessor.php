<?php

/**
 * ProcessWire Inputfield Form Processor
 *
 * Handles the rendering and processing of forms for Form Builder.
 *
 * Copyright (C) 2012 by Ryan Cramer Design, LLC
 *
 * PLEASE DO NOT DISTRIBUTE
 *
 */

class FormBuilderProcessor extends \ProcessWire\WireData {

	/**
	 * These flags control what actions occur when a form is submitted. 
	 *
	 */
	const saveFlagDB = 1;		// save entry to database
	const saveFlagEmail = 2; 	// Send entries to email
	const saveFlagAction2 = 4; 	// Send entries to action2 (3rd party service)
	const saveFlagPage = 8; 	// Send entries to new pages
	const saveFlagExternal = 16; 	// Submit the form somewhere else (rendering all other options invalid)
	const saveFlagFilterSpam = 32; 	// Filter for spam
	const saveFlagResponder = 64; 	// Send an auto-responder email

	/**
	 * Instance of InputfieldForm created by this class
 	 *
	 */
	protected $form; 

	/**
	 * Form array that was passed to the constructor
	 *
	 */
	protected $formArray; 

	/**
	 * Keeps track of whether or not the form was successfully submitted (see isSubmitted method)
	 *
	 */
	protected $submitted = false; 

	/**
	 * Cache of our submitKey so we don't ever generate more than one per request
	 *
	 */
	protected $submitKey = '';

	/**
	 * Error messages generated from FormBuilderProcessor
	 *
	 */
	protected $errors = array();

	/**
	 * ID of inserted entry, if entry was saved to entries DB
	 *
	 */
	protected $entryID = 0;

	/**
	 * Construct the FormBuilderProcessor
	 *
	 * @param array $formArray Array that defines the fields for this form, see examples.
	 *
	 */
	public function __construct($id, array $formArray) { 
		// form ID number
		$this->set('id', (int) $id);
		$this->formArray = $formArray; 
		$this->init();
		$this->form = $this->arrayToInputfields($formArray); 
	}

	/**
	 * Initialize the FormBilderProcessor's configuration variables
	 *
	 */
	protected function init() {

		// flags that indicate what actions should occur at form save time
		$this->set('saveFlags', self::saveFlagDB);

		// require a unique session key for each form submission (for security)
		$this->set('skipSessionKey', false); 

		// name of the form, used for auto generated email subject if needed
		$this->set('formName', ''); 

		// text that appears on the submit button
		$this->set('submitText', 'Submit');

		// name of field that, when populated, invalidates the form submission
		$this->set('honeypot', '');

		// array containing list of field names and required answers
		$this->set('turingTest', array()); 

		// email address to send form submissions to, may also be multiple (1 per line) or conditional (1 condition per line)
		$this->set('emailTo', ''); 		

		// email address (or field name where it resides) to make email from
		$this->set('emailFrom', '');

		// subject of email that gets sent
		$this->set('emailSubject', 'Form Submission'); 

		// field name (not email address) that WILL contain the submittor's email address (where the responder should be sent)
		$this->set('responderTo', '');

		// Email address that the responder email should be from
		$this->set('responderFrom', '');

		// Subject line for the responder email
		$this->set('responderSubject', '');

		// Body for the responder email
		$this->set('responderBody', '');

		// URL to redirect to on successful form submission
		$this->set('successUrl', ''); 

		// message to display on successful form submission, assuming no successUrl was set
		$this->set('successMessage', 'Thank you, your form has been submitted.'); 

		// message to display when a form error occurred
		$this->set('errorMessage', 'One or more errors prevented submission of the form. Please correct and try again.'); 

		// URL to send duplicate submission to
		$this->set('action2', '');

		// array of name=value to add to duplicate submission
		$this->set('action2_add', array()); 

		// array of field names to remove from duplicate submission
		$this->set('action2_remove', array()); 

		// array of field names rename before duplicate submission
		$this->set('action2_rename', array()); 

		// CSV string containing field names of: "name,email,content" (in that order)
		$this->set('akismet', '');

		// allow form field values to be pre-set from GET variables?
		$this->set('allowPreset', false); 

		// settings specific to saving pages from submitted forms
		$this->set('savePageParent', ''); 	// path to parent page
		$this->set('savePageTemplate', ''); 	// name of template
		$this->set('savePageFields', array()); 	// array of 'form_field_name' => 'processwire_field_id (or name)'
		$this->set('savePageStatus', 0); 	// status of saved \ProcessWire\page(0 = don't save page now)

	}

	/**
	 * Populate the form with the key=value data given in the array
	 *
	 */
	public function ___populate(array $data, $entryID) {

		$entryID = (int) $entryID; 
		\ProcessWire\wire('session')->set('FormBuilderEntryID', $entryID);

		foreach($data as $key => $value) {

			$field = $this->form->get($key);
			if(!$field || !$field instanceof \ProcessWire\Inputfield) continue; 
			$field->attr('value', $value);

			if($field instanceof InputfieldFormBuilderInterface) {
				// populate extra values for InputfieldFormBuilder derived Inputfields
				if($entryID) $field->set('entryID', $entryID);
				$field->set('formID', $this->id);
			}
		}	
	
		// ensure the _savePage value is retained, but not manipulatable	
		if(isset($data['_savePage'])) {
			$field = \ProcessWire\wire('modules')->get('InputfieldHidden');
			$field->attr('name', '_savePage'); 
			$field->attr('value', (int) $data['_savePage']); 
			$field->collapsed = \ProcessWire\Inputfield::collapsedHidden; // makes it non-manipulatable
			$this->form->prepend($field);
		}

		return $this;
	}

	/**
	 * Return the rendered form output, whether an actual form or the success message after submitted.
	 *
	 * @param int id Optional ID of entry, if it already exists
	 * @return string
	 *
	 */
	public function ___render($id = 0) {

		$form = \ProcessWire\wire('forms')->get((int) $this->id);
		if(!$form->hasPermission('form-submit')) return $this->_('This form is not available at your access level.'); 

		$this->errors = array(); // ensure errors are clear

		\ProcessWire\wire('session')->set('FormBuilderFormID', $this->id);

		if($this->skipSessionKey) $this->form->protectCSRF = false;

		// copyright header precedes output
		$out = "\n<!-- " . FormBuilderMain::RCD . " -->\n"; 

		// check for valid license key
		if(!$this->forms->isValidLicense()) return "<p>License not detected for " . htmlentities($this->config->httpHost) . "</p>";
		
		// JS looks for this landmark to know when to scroll the parent in an iframe to the form
		if($this->input->post->_submitKey) $out .= "<div id='FormBuilderSubmitted'></div>\n";

		// if submission was successful, return with success message
		if($this->processInput($id)) return $out . $this->renderSuccess($this->successMessage); 

		// check if there were any errors produced by processInput or the form
		if(count($this->getErrors())) $out .= $this->renderErrors(); 

		// populate custom markup/classes for output
		$this->populateCustomMarkup();

		// give the form a unique & predictable ID attribute
		$this->form->attr('id', 'FormBuilder_' . $this->form->name); 

		// render the form
		$out .= $this->form->render();

		// check if we are in preview mode 
		if($this->input->get->preview && \ProcessWire\wire('page')->editable()) {
			// add a hidden input for JS detection to add edit links to form fields
			$p = \ProcessWire\wire('pages')->get("template=admin, name=" . FormBuilderMain::name); 
			if($p->id) $out .= "\n<input type='hidden' id='FormBuilderPreview' value='{$p->url}editField/?id={$this->id}&name=' />";
		}

		// insert the submitKey at the end of the form
		$out = str_replace('</form>', "\n\t" . $this->renderSubmitKey() . "\n</form>", $out);

		// if honeypot is here, give its wrapper a special class that hides it
		if($this->honeypot) $out = str_replace("wrap_Inputfield_{$this->honeypot}'", "wrap_Inputfield-'", $out);

		return $out; 
	}

	/**
	 * Populate any custom markup/classes defined with FormBuilder to the PW Inputfield classes
	 *
	 */
	protected function populateCustomMarkup() {

		$markup = array();
		foreach(\ProcessWire\InputfieldWrapper::getMarkup() as $key => $value) {
			$k = 'markup_' . $key;
			$value = \ProcessWire\wire('forms')->$k; 
			if(!empty($value)) $markup[$key] = $value; 
		}
		\ProcessWire\InputfieldWrapper::setMarkup($markup); 

		$classes = array();
		foreach(\ProcessWire\InputfieldWrapper::getClasses() as $key => $value) {
			$k = 'classes_' . $key;
			$value = \ProcessWire\wire('forms')->$k; 
			if(!empty($value)) $classes[$key] = $value; 
		}
		\ProcessWire\InputfieldWrapper::setClasses($classes);
	}


	/** 
	 * Create a new submitKey containing number of fields, random component and session key
	 *
	 * @return string
	 *
	 */
	public function makeSubmitKey() {
		if($this->submitKey) return $this->submitKey;
		$numFields = count($this->form->children); 
		if(!$this->skipSessionKey) {
			// if we're also using a sessionKey, then append it to the submitKey and remember in session
			$sessionKey = md5(mt_rand() . microtime() . mt_rand()); 
			$this->session->set('FormBuilderSessionKey_' . $this->formName, $sessionKey);
		} else {
			$this->form->protectCSRF = false;
			$sessionKey = '0';
		}
		$submitKey = $numFields . ':' . $this->formName . ':' . $sessionKey; 
		$this->submitKey = $submitKey;
		return $submitKey;
	}

	/** 
	 * Render the submitKey in a hidden form field, ready to be output
	 *
	 * @return string
	 *
	 */
	public function renderSubmitKey($submitKey = '') {
		$submitKey = $this->makeSubmitKey();
		return "<input type='hidden' name='_submitKey' value='$submitKey' />";
	}

	/** 
	 * check whether or not the form is submitted and if it's valid
	 *
	 * @return string|bool Returns the submitKey if valid, or boolean false if not
	 *
	 */
	public function validSubmitKey() {

		// first check if form posted
		$submitKey = $this->input->post->_submitKey; 
		if(empty($submitKey)) return false; 

		// extract the submitKey to the individual parts
		$parts = explode(':', $submitKey); 
		if(count($parts) !== 3) return false;
		list($numFields, $formName, $sessionKey) = $parts;
		$numFields = (int) $numFields;

		// if the number of fields or formName doesn't match up, it's not valid
		if($numFields != count($this->form->children) || $formName !== $this->formName) return false;

		// if session key is required, check that it is also correct
		if(!$this->skipSessionKey) {
			$sessionKeyName = 'FormBuilderSessionKey_' . $this->formName;
			$sessionKey2 = $this->session->get($sessionKeyName);
			if($sessionKey !== $sessionKey2) {
				// session key is invalid, making the form submission invalid
				// check if its a previous submit key, perhaps they just double submitted? 
				if($sessionKey === $this->session->get('FormBuilderSessionKeyLast')) {
					// if so, we'll acknowledge it
					$this->errors[] = $this->_('This form was already submitted.'); 
				}
				return false; 
			}
			$this->session->remove($sessionKeyName);
			$this->session->set('FormBuilderSessionKeyLast', $sessionKey2); 
		} else {
			if($sessionKey != "0") return false;
			$this->form->protectCSRF = false;
		}

		// reconstruct the submitKey just for added measure
		$submitKey = "$numFields:{$this->formName}:$sessionKey";
		return $submitKey; 
	}


	/**
	 * Process the input for a submitted form
	 *
	 * @param int id Optional id of entry, if it already exists
	 * @return bool Whether the submission was successful
	 *
	 */
	protected function ___processInput($id = 0) {

		// determine if valid form was submitted and return if not
		if($this->validSubmitKey() === false) {
			if($this->input->post->_submitKey && !count($this->errors)) $this->errors[] = $this->_('Invalid form submission');
			return false;
		}

		$filterSpam = $this->saveFlags & self::saveFlagFilterSpam;

		// if honeypot was populated, then do nothing but pretend it was successful
		if($filterSpam && $this->honeypot && strlen($this->input->post($this->honeypot))) return true; 

		// let the form process itself
		$this->form->processInput($this->input->post); 	

		if($filterSpam) {
			// perform optional turing test
			$this->processInputTuringTest();

			// perform optional Akismet spam filtering
			$this->processInputAkismet();
		}

		// if errors occurred then trigger error hooks and return
		$errors = $this->getErrors(); 
		if(count($errors)) {
			$this->formSubmitError($this->form, $errors);
			return false;
		}

		$entryID = $this->saveForm($this->form, $id);
		if(is_int($entryID)) $this->entryID = $entryID; 

		// trigger the success hook
		$this->formSubmitSuccess($this->form); 

		// if there is a success URL, redirect to it (not typically used)
		if($this->successUrl) $this->session->redirect($this->successUrl); 

		return true; 
	}

	/**
	 * Check the submission against a turing test, when enabled
	 *
	 */
	protected function processInputTuringTest() {
		if(empty($this->turingTest)) return;

		foreach($this->turingTest as $fieldName => $answer) {
			$field = $this->form->get($fieldName); 				
			if(!$field || !$field instanceof \ProcessWire\Inputfield) continue; 
			if($field->attr('value') != $answer) $field->error($this->_('Incorrect answer')); 
		}
	}

	/**
	 * Check the submission against Akismet, when enabled
	 *
	 * Akismet check is not performed if other errors have already occurred.
	 *
	 */
	protected function processInputAkismet() {

		if(!$this->akismet || count($this->form->getErrors())) return;

		list($author, $email, $content) = explode(',', $this->akismet);

		$author = $this->form->get($author)->attr('value');
		$email = $this->form->get($email)->attr('value');
		$content = $this->form->get($content)->attr('value');

 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderProcessor.php') . '/FormBuilderAkismet.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 	
		$akismet = new FormBuilderAkismet(\ProcessWire\wire('modules')->get('FormBuilder')->akismetKey); 

		if($akismet->isSpam($author, $email, $content)) {
			$this->errors[] = $this->_('Spam filter has been triggered'); 
		}
	}

	/**
	 * Save the form to the database
	 *
	 * @param InputfieldForm $form
	 * @param int $id Optional id of form, if it already exists
	 * @param int ID of inserted entry (if saving to entries database) or boolean true if not.
	 *
	 */
	protected function ___saveForm(\ProcessWire\InputfieldForm $form, $id = 0) {

		$data = array();
		$entryID = 0; 

		if(($this->saveFlags & self::saveFlagDB) || ($this->saveFlags & self::saveFlagAction2) || ($this->saveFlags & self::saveFlagPage)) {

			// prepare a $data array that is used by DB or action2 saves
			foreach($form->getAll() as $f) {
				if($f instanceof \ProcessWire\InputfieldWrapper) continue; 
				$value = $f->attr('value');
				if(is_object($value)) $value = (string) $value; 
				$name = $f->name; 
				$data[$name] = $value; 
			}

			// save the form to a page	
			if($this->saveFlags & self::saveFlagPage) {
				$data['_savePage'] = (int) ((string) $this->savePage($data));
			}

			// save the form to the DB
			if($this->saveFlags & self::saveFlagDB) {
 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderProcessor.php') . '/FormBuilderEntries.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
				$entries = new FormBuilderEntries($this->id, \ProcessWire\wire('db'));
				$data['id'] = $id; 
				$entryID = (int) $entries->save($data); // returns entry ID
			}
		}

		// Email the form to recipient(s) if applicable
		if($this->saveFlags & self::saveFlagEmail) $this->emailForm($form);

		// Send an auto-responder if applicable
		if($this->saveFlags & self::saveFlagResponder) $this->emailFormResponder($form);
	
		// if there is a secondary action, then initiate a duplicate post
		if(($this->saveFlags & self::saveFlagAction2) && $this->action2) $this->postAction2($data); 

		return $entryID;
	}

	/**
	 * Save the form result to a Page
	 *
	 * @param array $data Form data to send to page
	 * @param int $status Status of created pages
	 * @return Page Created page or null on failure
	 *
	 */
	public function ___savePage(array $data, $status = null) {

		if(is_null($status)) $status = (int) $this->savePageStatus; 
		if(!$this->savePageTemplate || !$this->savePageParent) return null; 

		// if savePage contains a value, then we'll move forward with the save in order to update the page
		if(!$status && empty($data['_savePage'])) return null;

		$template = \ProcessWire\wire('templates')->get($this->savePageTemplate); 
		$parent = \ProcessWire\wire('pages')->get((int) $this->savePageParent); 
		if(!$template || !$parent->id) return null;

		$page = null;
		// check if we should send to existing page
		if(!empty($data['_savePage'])) { 
			$page = \ProcessWire\wire('pages')->get((int) $data['_savePage']); 
			if($page->id) {
				// if existing page doesn't have same template/parent, then we don't use it
				if($page->template !== $template || $page->parent->id !== $parent->id) $page = null;
			} else {
				// if no status defined and page didn't exist, don't create a new one
				if(!$this->savePageStatus) return null;
				$page = null;
			}
		}
	
		// create a new page	
		if(is_null($page)) { 	
			$page = new \ProcessWire\Page();
			$page->parent = $parent;
			$page->template = $template; 
			$page->status = $status; 
		}

		// fields that must be populated after first save
		$fileFields = array();

		// populate field values to the page
		foreach($this->savePageFields as $field_id => $formFieldName) {

			if(ctype_digit("$field_id")) { 
				// custom field
				$field = \ProcessWire\wire('fields')->get((int) $field_id); 
				if(!$field) continue; 
				$pageFieldName = $field->name; 

				if($field->type instanceof \ProcessWire\FieldtypeFile) {
					$fileFields[] = array($formFieldName, $pageFieldName);
					continue; 
				}

			} else if($field_id === 'name') {
				// allowed native field
				$pageFieldName = $field_id; 

			} else {
				// unknown or invalid field
				continue;
			}

			$value = isset($data[$formFieldName]) ? $data[$formFieldName] : null;
			if($pageFieldName === 'name') $value = \ProcessWire\wire('sanitizer')->pageName($value, true); 
			$page->set($pageFieldName, $value); 
		}

		if(!strlen($page->title)) $page->title = date('Y-m-d H:i:s'); 
		
		try {
			$page->save();
		} catch(Exception $e) {
			if(\ProcessWire\wire('config')->debug || \ProcessWire\wire('user')->isSuperuser()) $this->error($e->getMessage()); 
		}

		// process any fields that can only be set for a page that exists (like file fields)
		if($page->id && count($fileFields)) {
			foreach($fileFields as $item) {
				list($formFieldName, $pageFieldName) = $item;
				$pageValue = $page->get($pageFieldName);
				$pageValue->removeAll();
				$value = isset($data[$formFieldName]) ? $data[$formFieldName] : null;
				if(is_array($value)) foreach($value as $file) $pageValue->add($file);
				$page->set($pageFieldName, $pageValue);
				$this->message("page->set($pageFieldName, " . print_r($value, true) . ")");
			}
			try {
				$page->save();
			} catch(Exception $e) {
				if(\ProcessWire\wire('config')->debug || \ProcessWire\wire('user')->isSuperuser()) $this->error($e->getMessage()); 
			}
		}

		return $page; 
	}

	/**
	 * Email the form result to the recipient defined by $emailTo
	 *
	 * @param InputfieldForm $form 
	 * @return bool Whether it was successful
	 *
	 */
	protected function ___emailForm(\ProcessWire\InputfieldForm $form) {

		if(!strlen($this->emailTo)) return false;		

 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderProcessor.php') . '/FormBuilderEmail.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false)));
		$email = new FormBuilderEmail($form);
		$email->to = $this->emailTo;
		$email->from = $this->emailFrom;
		$email->subject = $this->emailSubject; 

		if($this->honeypot) $email->setSkipFieldName($this->honeypot); 

		return $email->send('email-administrator');
	}

	/**
	 * Email the form result to the sending (auto-responder)
	 *
	 * @param InputfieldForm $form 
	 * @return bool Whether it was successful
	 *
	 */
	protected function ___emailFormResponder(\ProcessWire\InputfieldForm $form) {

		if(!strlen($this->responderTo)) return false;		
		$field = $form->get($this->responderTo);
		if(!$field) return false;
		$responderTo = \ProcessWire\wire('sanitizer')->email($field->attr('value'));
		if(!strlen($responderTo)) return false;

 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderProcessor.php') . '/FormBuilderEmail.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false)));
		$email = new FormBuilderEmail($form);
		$email->to = $responderTo;
		$email->from = $this->responderFrom;
		$email->subject = $this->responderSubject; 
		$email->body = $this->responderBody; 

		if($this->honeypot) $email->setSkipFieldName($this->honeypot); 

		return $email->send('email-autoresponder');
	}

	/**
	 * Post a duplicate copy of the form to another URL
	 *
	 */
	protected function ___postAction2(array $data) {

		unset($data['id'], $data[$this->formName . '_submit']); 

		// remove fields
		foreach($this->action2_remove as $name) {
			unset($data[$name]); 
		}	
		// add fields
		foreach($this->action2_add as $name => $value) {
			$data[$name] = $value; 
		}
		// rename fields
		foreach($this->action2_rename as $name => $newName) {
			if(!array_key_exists($name, $data)) continue; 
			$value = $data[$name]; 
			unset($data[$name]); 
			$data[$newName] = $value; 
		}

		// post the data
		$http = new \ProcessWire\WireHttp();
		$http->post($this->action2, $data); 
	}


	/**
	 * Called upon successful form submission
	 *
	 * Intended for hooks to listen to. 
	 *
	 * @param InputfieldForm $form
	 *
	 */
	protected function ___formSubmitSuccess(\ProcessWire\InputfieldForm $form) {
		$this->submitted = true; 
	}

	/**
	 * Called upon a form submission error, for hooks to listen to.
	 *
	 * @param InputfieldForm $form
	 * @param array $errors Array of errors that occurred (strings)
	 *
	 */
	protected function ___formSubmitError(\ProcessWire\InputfieldForm $form, array $errors) {
		$this->submitted = false;
	}

	/**
	 * Render the given success message for output
	 *
	 * @param string $message
	 * @return string
	 *
	 */
	protected function ___renderSuccess($message) {
	
		$message = trim($message);
		$out = 'Success';
		$successUrl = '';

		if(ctype_digit("$message")) {

			$page = $this->pages->get((int) $message); 
			if($page->id) $successUrl = $page->url;

		} else {

			// With the regex below, we are sifting through the success message to determine if it is just text, a URL or a URL:field
			// Variable Positions: ......................... 1 ................... 2 . 3 ................. 4 .....
			if(strpos($message, '/') !== 0 || !preg_match('{^(/[-_a-zA-Z0-9/]+|\d+)(:?)((?:[_a-zA-Z0-9]+)?)(\?.*)?$}', $message, $matches)) {
				// if not a path then populate a simple text success message
				return nl2br(str_replace('{out}', $message, $this->forms->markup_success)); 
			}

			// we have matched a $message is in the format: /path/to/page/ or /path/to/page/:field or 123:field
			if(strlen($matches[2]) && strlen($matches[3])) {
				// pull the field from /path/to/page
				$page = $this->pages->get($matches[1]); 
				$field = $matches[3]; 
				$value = $page->get($field); 
				if(strlen($value)) $out = "<div class='InputfieldMarkup'><div class='ui-widget-content'>$value</div></div>"; 
				
			} else {
				// just a redirect URL
				$successUrl = $matches[1]; 
				// page path
				if(strpos($successUrl, '?') === false) {
					// attempt to tie the path to page, in case site is running from subdir, path can start non-subdir
					$page = $this->pages->get($successUrl); 
					if($page->id) $successUrl = $page->url; 
				}
				if(isset($matches[4])) $successUrl .= $matches[4]; // opitonal query string
			}

		}

		if($successUrl) {
			// JS redirect required since we will be redirecting the parent window
			$out = 	"<script type='text/javascript'>window.top.location.href='$successUrl';</script>" . 
				"<noscript><a href='$successUrl'>$successUrl</a></noscript>";
		}

		return $out;
	}

	/**
	 * Render the given error messages for output
	 *
	 * @param array $errors Array of strings
	 * @return string
	 *
	 */
	protected function ___renderErrors() {

		$tpl = \ProcessWire\wire('forms')->markup_error;
		$out = '';

		// prepend our standard error message to the top
		$errors = $this->getErrors(false);
		array_unshift($errors, $this->errorMessage); 

		foreach($errors as $error) {
			$error = htmlentities($error, ENT_QUOTES, "UTF-8"); 
			$out .= str_replace('{out}', $error, $tpl); 
		}

		if($out) $out = "<div class='FormBuilderErrors'>$out</div>";

		return $out; 
	}

	/**
	 * Given a form configuration array, create an InputfieldForm from it
	 *
	 * @param array $a Form configuration array
	 * @param InputfieldWrapper $inputfields For internal/recursive use only
	 * @return InputfieldForm
	 *
	 */
	protected function arrayToInputfields(array $a, $inputfields = null) {

		$language = null;
		if(\ProcessWire\wire('languages')) {
			$language = \ProcessWire\wire('user')->language; 
			if($language && $language->isDefault()) $language = null;
		} 

		if(is_null($inputfields)) {
			// start a new form
			$inputfields = \ProcessWire\wire('modules')->get('InputfieldForm'); 
			$inputfields->attr('method', $a['method']); 
			$inputfields->attr('action', $a['action']); 
			if(!empty($a['target'])) $inputfields->attr('target', $a['target']); 
		
			// make sure it starts where we expect
			if($a['type'] == 'Form') {
				$inputfields->attr('id+name', $a['name']); 
				$this->formName = $a['name'];
				foreach($a as $k => $v) {
					if($this->$k !== null) $this->set($k, $v); 
					if($language) {
						// swap language value with default, when applicable
						if(!empty($a["$k$language"])) $this->set($k, $a["$k$language"]); 
					}
				}
				$a = isset($a['children']) ? $a['children'] : array(); 
			}
			$isForm = true;
		} else $isForm = false;

		foreach($a as $name => $data) {

			if(!is_array($data) || empty($data['type'])) continue; 
			$f = \ProcessWire\wire('modules')->get('Inputfield' . $data['type']); 		
			if(!$f) $f = \ProcessWire\wire('modules')->get('InputfieldText'); 
			$f->attr('name', $name); 
			$f->attr('id', 'Inputfield_' . $name); 
			$f->set('formBuilder', true); // in case any Inputfields need to know this context
			$f->set('hasFieldtype', false); // in case any Inputfields need to know this context
			$f->setParent($inputfields); 

			if($f instanceof InputfieldFormBuilderInterface) {
				// set extra values to InputfieldFormBuilder derived Inputfields
				$f->set('processor', $this);
				$f->set('formID', $this->id); 
			}

			foreach($data as $key => $value) {
				if(in_array($key, array('type', 'children'))) continue; 
				$f->$key = $data[$key];
			}

			if($language) foreach(array('label', 'description', 'notes') as $key) {
				$langKey = $key . $language->id; 
				$langVal = $f->$langKey;
				if(strlen($langVal)) $f->$key = $langVal;
			}

			if(!empty($data['children']) && $f instanceof \ProcessWire\InputfieldWrapper) {
				// this field contains children, convert them
				$this->arrayToInputfields($data['children'], $f);	

			} else if($this->allowPreset && !is_null($this->input->get($name))) {
				// a value is being pre-set from a GET var
				$f->processInput($this->input->get); 	
			}

			$inputfields->add($f); 
		}	

		if($isForm) {
			$submit = \ProcessWire\wire('modules')->get('InputfieldSubmit');	
			$submit->attr('id+name', $this->formName . '_submit'); 
			$submit->attr('value', $this->submitText); 
			if($language) {
				$value = $this->get("submitText$language"); 
				if(strlen($value)) $submit->attr('value', $value); 
			}
			$inputfields->add($submit);
		}

		return $inputfields;
	}

	/**
	 * Get an array of all values from this form
	 *
	 * Should be called only after successful form submission, see isSubmitted() method
	 *
	 * @return array Values indexed by inputfield 'name' attribute
	 *
	 */
	public function getValues() {

		$values = array();
		$skipTypes = array(
			'InputfieldMarkup',
			'InputfieldWrapper',
			'InputfieldSubmit',
			);

		$inputfields = $this->form->getAll();

		foreach($inputfields as $f) {
			$skip = false;
			foreach($skipTypes as $type) if($f instanceof $type) $skip = true; // if(is_a($f, $type)) $skip = true; 
			if($skip) continue; 
			$name = $f->attr('name'); 
			$value = $f->attr('value'); 
			$values[$name] = $value; 
		}

		return $values; 
	}

	/**
	 * Was the form successfully submitted? 
	 *
	 * @return bool
	 *
	 */
	public function isSubmitted() {
		return $this->submitted; 
	}

	/**
	 * Get the constructed form 
	 *
	 * @return InputfieldForm
	 *
	 */
	public function getInputfieldsForm() {
		return $this->form; 
	}

	/**
	 * Get the array upon which this form is based (same as what was passed to constructor)
	 *
	 * @return array
	 *
	 */
	public function getFormArray() {
		return $this->formArray; 
	}

	/**
	 * Return an array of errors that occurred (strings)
	 *
	 * @param bool $all When true, all errors are included. When false, field-specific errors (displayed inline) are excluded.
	 * @return array Will be blank if no errors. 
	 *
	 */
	public function getErrors($all = true) {
		$errors = $all ? $this->form->getErrors() : array();
		// prepend any self generated errors
		foreach($this->errors as $error) {
			array_unshift($errors, $error); 
		}
		return $errors;
	}

}

