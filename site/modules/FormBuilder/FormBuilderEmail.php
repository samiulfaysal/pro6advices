<?php

/**
 * ProcessWire Form Builder Email
 *
 * Handles the emailing of Inputfields 
 *
 * Copyright (C) 2012 by Ryan Cramer Design, LLC
 *
 * PLEASE DO NOT DISTRIBUTE
 *
 */

class FormBuilderEmail extends FormBuilderData {

	/**
	 * Instance of InputfieldForm
	 *
	 */
	protected $form = null;

	/**
	 * List of field names that should not be included in the email
	 *
	 */
	protected $skipFieldNames = array();

	/**
	 * List of field types that should not be included in the email
	 *
	 */
	protected $skipFieldTypes = array(
		'InputfieldSubmit',
		);

	/**
	 * Construct the FormBuilderEmail
	 *
	 * @param InputfieldForm $form
	 *
	 */
	public function __construct(InputfieldForm $form) {
		$this->form = $form;
		$this->set('to', ''); // required, may contain multiple lines/emails or conditions
		$this->set('from', ''); // optional, email address or field name to pull it from
		$this->set('subject', ''); // optional
		$this->set('body', ''); // optional, appears above form data
	}

	protected function matches($value1, $operator, $value2) {
		$matches = false;
		switch($operator) {
			case '==':
			case '=': if($value1 == $value2) $matches = true; break;
			case '>': if($value1 > $value2) $matches = true; break;
			case '<': if($value1 < $value2) $matches = true; break;
			case '>=': if($value1 >= $value2) $matches = true; break;
			case '<=': if($value1 <= $value2) $matches = true; break;
			case '*=': if(strpos($value2, $value1) !== false) $matches = true; break;
			case '!=': if($value1 != $value2) $matches = true; break;
		}
		return $matches; 
	}

	/**
	 * Takes a list of email addresses, one per line and optionally including conditions, and converts them to an array of email addresses
	 *
	 * Conditional example:
	 * 	frontdesk@company.com (always gets emailed)
	 * 	inquiry_type=Sales? sales@company.com (gets emailed only when inquiry_type is 'Sales')
	 * 	inquiry_type=Support? help@company.com (gets emailed only when inquiry_type is 'Support')
	 *
	 * @param string $str Email addresses in a line separated string
	 * @return array
	 *
	 */
	public function emailsToArray($str) {

		$emails = array();

		foreach(explode("\n", $str) as $line) {

			$line = trim($line);

			if(strpos($line, '?') !== false) {
				// conditional address
				// VARIABLES:     1:field name        2:operator         3:value    4:email
				if(!preg_match('/^([-_.a-zA-Z0-9]+)\s*(=|==|>|<|>=|<=|\*=|!=)([^\?]*)\?\s*(.*)$/', $line, $matches)) continue; 

				$field = $matches[1];
				$subfield = '';
				if(strpos($field, '.') !== false) list($field, $subfield) = explode('.', $field);
				$operator = $matches[2];
				$requireValue = $matches[3];
				$addrs = explode(',', $matches[4]); // one email or optional multiple CSV string of emails
				if(!count($addrs)) continue; // invalid email address
				$inputfield = $this->form->get($field);
				if(!$inputfield) continue; // inputfield does not exist
				$inputValue = $inputfield->attr('value'); 

				// pull subfield value from an object, typically a $page
				if(is_object($inputValue) && $subfield) $inputValue = $inputValue->$subfield;

				if(!$this->matches($inputValue, $operator, $requireValue)) continue; // condition does not match

				// condition matches
				foreach($addrs as $email) $emails[] = $email;

			} else if(strpos($line, ',') !== false) {
				// multiple addresses on 1 line
				foreach(explode(',', $line) as $email) $emails[] = $email;

			} else {
				// just an email address
				$emails[] = $line;
			}
		}

		// sanitize and validate all found emails
		foreach($emails as $key => $email) {
			$email = wire('sanitizer')->email($email);
			if(!strlen($email)) unset($emails[$key]); 
				else $emails[$key] = $email;
		}

		return $emails; 
	}

	/**
	 * Send the given $form to the email address
	 *
	 * @param string $template Name of email template to use
	 *
	 */
	public function send($template = 'email') {

		$to = $this->emailsToArray($this->to);

		// no addresses to send to
		if(!count($to)) return false; 

		$from = $this->getFromEmail();
		$subject = wire('sanitizer')->text($this->subject);

		// autogenerate an email subject if not provided
		if(!$subject) $subject = sprintf($this->_('%s form submission'), $this->form->name); 

		$headers = array('Content-Type: text/html; charset=utf-8'); 
		if(strlen($from)) $headers[] = "From: $from";
		
		$body = $this->renderBody($template);

		$params = wire('config')->phpMailAdditionalParameters; 
		if(!$params) $params = '';

		foreach($to as $email) {
			$result = @mail($email, $subject, $body, implode("\r\n", $headers), $params); 
		}

		return $result;	
	}

	/**
	 * Get the email 'from' address, which may be pulled from a field name
	 *
	 * @return string
	 *
	 */
	protected function getFromEmail() {

		if(!strlen($this->from)) return '';

		if(strpos($this->from, '@')) {
			// email address
			$from = wire('sanitizer')->email($this->from);
		} else {
			// field name
			$field = $this->form->getChildByName(wire('sanitizer')->fieldName($this->from)); 	
			if($field) $from = wire('sanitizer')->email($field->attr('value')); 
				else $from = '';
		}

		return $from;
	}

	/**
	 * Render the body/message portion of an email with the form results
	 *
	 * Note: inline styles are used since many email clients (like gmail) won't work without them.
	 *
	 * @param string $template Name of email template to use
	 * @return string
	 *
	 */
	protected function renderBody($template) {

		$values = array();
		$labels = array();

		foreach($this->form->getAll() as $f) {

			$skip = false;
			foreach($this->skipFieldTypes as $type) if($f instanceof $type) $skip = true; 
			if($skip) continue; 
			if(in_array($f->name, $this->skipFieldNames)) continue; 

			$value = $f->renderValue();

			// now we convert lists to newlines if the value changes when we do a replacement
			$len = strlen($value);
			$value = str_replace(array('<ul>', '<li>', '</ul>', '</li>'), array('', '', '', "\n"), $value);
			if($len !== strlen($value)) $value = nl2br($value);

			$values[$f->name] = trim($value); 
			$labels[$f->name] = htmlentities($f->label, ENT_QUOTES, 'UTF-8');
		}

		// 1. first try /site/templates/FormBuilder/[template]-[form].php
		$filename = wire('config')->paths->templates . "FormBuilder/$template-{$this->form->name}.php"; 

		// 2. next try /site/templates/FormBuilder/[template].php
		if(!is_file($filename)) $filename = wire('config')->paths->templates . "FormBuilder/$template.php"; 

		// 3. otherwise, use the predefined one in /site/modules/FormBuilder/[template].php
		if(!is_file($filename)) $filename = dirname(__FILE__) . "/$template.php"; 

		$t = new TemplateFile($filename); 
		$t->set('values', $values); 
		$t->set('labels', $labels); 
		$t->set('body', $this->populateTags($this->body)); 
		$t->set('subject', $this->subject); 
		$t->set('form', $this->form); 
		
		return $t->render();
	}

	/**
	 * Convert form field [field_name] tags to values in body
	 *
	 */
	protected function populateTags($body) {
		if(strpos($body, '[') === false) return $body;
		if(!preg_match_all('/\[([_.a-zA-Z0-9]+)\]/', $body, $matches)) return $body;
		foreach($matches[1] as $key => $fieldName) {
			$field = $this->form->get($fieldName); 	
			if(!$field || !$field instanceof Inputfield) continue; 
			$value = strip_tags(rtrim(str_replace("</li>", ", ", $field->renderValue()), ", "));
			$body = str_replace($matches[0][$key], $value, $body); 
		}
		return $body; 
	}

	/**
	 * Render the body/message portion of an email with the form results
	 *
	 * Note: inline styles are used since many email clients (like gmail) won't work without them.
	 *
	 * @param InputfieldForm $form
	 * @return string
	 *
	protected function renderBodyOld() {

		$date = date('Y/m/d g:ia'); 
		$tableStyles = "width: 100%; border-bottom: 1px solid #ccc;";
		$thStyles = "width: 30%; text-align: right; font-weight: bold; padding: 10px 10px 10px 0; vertical-align: top; border-top: 1px solid #ccc;";
		$tdStyles = "width: 70%; padding: 10px 0 10px 0; border-top: 1px solid #ccc;";
		$out = "<!DOCTYPE html>\n<html>\n<head></head>\n<body>\n<table style='$tableStyles' cellspacing='0'>" . $this->body;

		foreach($this->form->getAll() as $f) {

			$skip = false;
			foreach($this->skipFieldTypes as $type) if($f instanceof $type) $skip = true; 
			if($skip) continue; 
			if(in_array($f->name, $this->skipFieldNames)) continue; 

			$value = $f->renderValue();
			$value = str_replace(array('<ul>', '<li>', '</ul>', '</li>'), array('', '', '', "\n"), $value);
			$value = nl2br($value);

			$out .= "\n<tr>" . 
				"\n\t<td style='$thStyles'>{$f->label}</td>" . 
				"\n\t<td style='$tdStyles'>$value</td>" . 
				"\n</tr>";
		}

		$out .= "\n</table>" . 
			"\n<p><small>ProcessWire Form Builder &bull; $date</small></p>" . 
			"\n</body>\n</html>"; 

		return $out; 
	}
	 */

	/**
	 * Set a field name that should be skipped
	 *
	 */
	public function setSkipFieldName($fieldName) {
		$this->skipFieldNames[] = $fieldName;
		return $this;
	}

	/**
	 * Set a field type that should be skipped
	 *
 	 */
	public function setSkipFieldType($fieldType) {
		$this->skipFieldTypes[] = $fieldType;
		return $this;
	}

}
