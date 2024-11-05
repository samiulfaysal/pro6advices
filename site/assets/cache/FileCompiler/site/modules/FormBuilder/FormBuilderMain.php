<?php

/**
 * ProcessWire Form Builder
 *
 * Provides the capability to build, edit and embed forms 
 * on your ProcessWire-powered web site. 
 *
 * Copyright (C) 2012 by Ryan Cramer Design, LLC
 * 
 * PLEASE DO NOT DISTRIBUTE
 * 
 * This file is commercially licensed.
 * 
 */

class FormBuilderMain implements IteratorAggregate, Countable {

	/**
	 * Name used by our tables, pages and templates
	 *
	 * Also serves as the default embed tag (though user may change that)
	 *
	 */
	const name = 'form-builder';

	/**
	 * Name of table used for form schema
	 *
	 */
	const formsTable = 'forms';

	/**
	 * Embed code used by the iframe embed options
	 *
	 * Tag {url} is replaced with the form's URL
	 *
	 */
	const embedCode = "<iframe frameborder='0' id='FormBuilderViewport' allowTransparency='true' style='width: 100%; height: 700px;' src='{url}'></iframe>"; 

	/**
	 * Copyright line, do not change or remove
	 *
	 */
	const RCD = 'ProcessWire Form Builder - Copyright 2012 by Ryan Cramer Design, LLC';

	/**
	 * User agent when submitting http requests
	 *
	 */
	const userAgent = 'ProcessWire/2 | FormBuilder/1';

	/**
	 * An array that holds just id (key) and name (value) for each form in the system
	 *
	 * We use this to quickly determine if a given id/name is used by a form.
	 *
	 */
	protected $formNames = array();

	/**
	 * Reference to mysqli database instance
	 *
	 */
	protected $db;

	/**
	 * Writable path where Form Builder files may be stored
	 *
	 */
	protected $filesPath; 

	/**
	 * Names that may not be used for forms or fields
	 *
	 * Only necessary to include lowercase, as form field names can't contain uppercase
	 *
	 */
	protected $reservedNames = array(
		'name',
		'value',
		'field',
		'key',
		'id', 
		'class',
		'style',
		'processor',
		'entries',
		'form',
		'input',
		'forms',
		'action',
		'action2',
		'action2_add',
		'action2_remove',
		'action2_rename',
		'method',
		'get',
		'post',
		'target',
		'honeypot',
		'type',
		'label',
		'description',
		'notes',
		'head',
		'parent',
		'required',
		'level',
		'children',
		'processor',
		'entries',
		'akismet',
		'created',
		'modified',
		'data',
		);

	/**
	 * Construct FormBuilderMain and include related files
	 *
	 * @param mysqli $db
	 * @param string $filesPath Path where form builder files can be stored
	 *
	 */
	public function __construct($db, $filesPath) {

		$this->db = $db; 
		$this->filesPath = self::parseFilesPath($filesPath);

		$dirname = dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderMain.php') . '/';
 require_once(\ProcessWire\wire('files')->compile($dirname . 'FormBuilderException.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
 require_once(\ProcessWire\wire('files')->compile($dirname . 'FormBuilderData.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
 require_once(\ProcessWire\wire('files')->compile($dirname . 'FormBuilderField.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
 require_once(\ProcessWire\wire('files')->compile($dirname . 'FormBuilderForm.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
 require_once(\ProcessWire\wire('files')->compile($dirname . 'FormBuilderEntries.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
 require_once(\ProcessWire\wire('files')->compile($dirname . 'InputfieldFormBuilder.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
	}

	/**
	 * Given a path with a potential {config.paths.$key} in it, parse it to an actual runtime path
	 *
	 */
	static public function parseFilesPath($path) {

                if(strpos($path, '{') !== false && preg_match('/\{config\.paths\.([a-z]+)\}/', $path, $matches)) {
                        $key = $matches[1]; 
                        $path = str_replace($matches[0], \ProcessWire\wire('config')->paths->$key, $path); 
                }

		// normalize trailing slash
		$path = rtrim($path, '/') . '/'; 

		// go to a default path if the specified one doesn't exist
		if(!is_dir($path)) $path = \ProcessWire\wire('config')->paths->cache . self::name . '/'; 

		return $path;
	}

	/**
	 * Populate the $forms summary variable
	 *
	 */
	public function getFormNames() {
		if(count($this->formNames)) return $this->formNames;
		$result = $this->db->query("SELECT id, name FROM " . self::formsTable . " ORDER BY name"); 
		if($result->num_rows) {
			while($row = $result->fetch_row()) {
				list($id, $name) = $row; 
				$this->formNames[$id] = $name;
			}
		}
		return $this->formNames; 
	}

	/**
	 * Given a form ID or name, returns true if is used by a form, false if not
	 *
	 * @param int|string $id May be form ID or form name
	 * @return bool
	 *
	 */
	public function isForm($id) {
		$formNames = $this->getFormNames();
		if(ctype_digit("$id")) return isset($formNames[$id]); 
		if(strlen($id)) return in_array($id, $formNames); 
		return false;
	}

	/**
	 * Retrieve a form by $id or $name
	 *
	 * @param int|string May be form ID or form name
	 * @return FormBuilderForm|null Returns $form on success or NULL on failure to load
	 *
	 */
	public function load($id) {
		static $cache = array();

		if(!$this->isForm($id)) return null;
		if(isset($cache[$id])) return $cache[$id];

		$sql = "SELECT id, name, data FROM " . self::formsTable . ' ';
	
		if(ctype_digit("$id")) { 	
			$id = (int) $id; 
			if(!$id) return null;
			$sql .= "WHERE id=$id";

		} else if(strlen($id)) {
			$name = preg_replace('/[^-_.a-z0-9]/i', '-', $id); // sanitize name
			$sql .= "WHERE name='" . $this->db->escape_string($name) . "'";

		} else {
			// no form specified
			return null;
		}
	
		$result = $this->db->query($sql);
		if(!$result->num_rows) return null;
		$row = $result->fetch_row();

		list($id, $name, $data) = $row;
		$data = json_decode($data, true);

		if(!isset($data['children'])) $data['children'] = array();

		$form = new FormBuilderForm($this);
		$form->set('id', $id); 
		$form->set('name', $name); 
		$form->setArray($data); 

		$cache[$id] = $form;

		return $form;
	}

	/**
	 * Save the given $form 
	 *
	 * @param FormBuilderForm $form
	 * @return bool Returns true on success, false on failure
	 *
	 */
	public function save(FormBuilderForm $form) {
		$name = $this->db->escape_string($form->name); 
		$id = (int) $form->id; 
		$data = $form->getArray();
		unset($data['name'], $data['type'], $data['id']); 
		$data = $this->db->escape_string(json_encode($data)); 
		$sql = ($id ? "UPDATE" : "INSERT INTO") . " " . self::formsTable . " SET name='$name', data='$data' " . ($id ? "WHERE id=$id" : ''); 
		$result = $this->db->query($sql); 
		if(!$result) return false;
		if(!$id) $form->id = $this->db->insert_id;
		$this->getFormNames();
		$this->formNames[$form->id] = $form->name;
		return true; 
	}

	/**
	 * Add a new form with the given name
	 *
	 * @param string $formName Using characters: -_a-z0-9
	 * @return FormBuilderForm
	 *
	 */
	public function addNew($formName) {
		$formName = preg_replace('/[^-_.a-z0-9]/i', '-', $formName); // sanitize name
		if(!$formName) throw new \ProcessWire\WireException("No form name specified"); 
		$name = $this->db->escape_string($formName);
		$this->db->query("INSERT INTO " . self::formsTable . " SET name='$name'"); 
		$form = new FormBuilderForm($this);
		$form->id = $this->db->insert_id; 
		$form->name = $formName; 
		return $form; 
	}

	/**
	 * Delete the given $form 
	 *
	 * @param int|string|FormBuilderForm $id May be a $form instance, an ID or a name
	 * @return bool Returns true on success, false on failure
	 *
	 */
	public function delete($id) {
		if(is_object($id) && $id instanceof FormBuilderForm) $id = $id->id;
		if(!ctype_digit("$id")) $id = array_search($id, $this->getFormNames());
		$id = (int) $id; 
		if(!$id) return false;
		$result = $this->db->query("DELETE FROM " . self::formsTable . " WHERE id=$id LIMIT 1"); 
		if(!$result) return false; 

		$entries = new FormBuilderEntries($id, $this->db);
		$entries->deleteAll(); 

		$path = $entries->getFilesPath();
		if($path) \ProcessWire\wirermdir($path, true);

		$this->getFormNames();
		unset($this->formNames[$id]); 
		return true; 
	}

	/**
	 * Retrieve a form (alias of load)
	 *
	 */
	public function get($key) {
		if($this->isForm($key)) $value = $this->load($key);
			else $value = null;
		return $value;
	}

	/**
	 * Make this module iterable, as required by the IteratorAggregate interface
	 *
	 */
	public function getIterator() {
		return new ArrayObject($this->getFormNames()); 
	}

	/**
	 * Return number of forms here, per Countable interface
	 *
	 */
	public function count() {
		return count($this->getFormNames()); 
	}

	/**
	 * Return the number of entries for the given form ID
	 *
	 */
	public function countEntries($id) {
		$entries = new FormBuilderEntries($id, $this->db); 	
		return $entries->getTotal();
	}

	/**
	 * Return the JSON schema for the given form ID
	 *
	 */
	public function exportJSON($id) {
		$id = (int) $id; 
		if(!$id) return '';
		$result = $this->db->query("SELECT data FROM " . self::formsTable . " WHERE id=$id"); 
		if(!$result->num_rows) return '';
		list($data) = $result->fetch_row();
		return $data; 
	}

	/**
	 * Import the given JSON schema for the given form ID
	 *
	 */
	public function importJSON($id, $json) {
		$id = (int) $id; 
		$data = json_decode($json, true); 
		$result = false;
		if($data && array_key_exists('children', $data)) {
			// JSON is valid
			$json = $this->db->escape_string($json);
			$result = $this->db->query("UPDATE " . self::formsTable . " SET data='$json' WHERE id=$id"); 
		}
		return $result;
	}

	/**
	 * Returns whether the given license key is valid for the domain its running on
	 *
	 * @param string $license
	 * @return bool
	 *
	 */
	public function isValidLicense($license) {
		return true; 
		/*
		$host = $_SERVER['HTTP_HOST'];
		while(substr_count($host, '.') > 1) $host = substr($host, strpos($host, '.')+1);
		return in_array(str_rot13(strtolower($host)), explode("+", base64_decode($license)));
		*/
	}

	/**
	 * Returns whether or not the given $name may be used or a form or field name
	 *
	 * @param string $name
	 * @return bool
	 *
	 */
	public function isReservedName($name) {
		return in_array($name, $this->reservedNames);
	}

	/**
	 * Return path that FormBuilder uses for storing files
	 *
	 * @return string 
	 *
	 */
	public function getFilesPath($tmp = false) {

		$path = $this->filesPath; 
		if(!is_dir($path)) \ProcessWire\wiremkdir($path);
		if($tmp) { 
			$path .= 'tmp/';
			if(!is_dir($path)) \ProcessWire\wiremkdir($path);
		}

		if(!is_dir($path)) throw new FormBuilderException("Unable to create: $path"); 
		if(!is_writable($path)) throw new FormBuilderException("Unable to write to: $path");

		return $path;
	}

	/**
	 * Generate a transportable key for the given filename within a form and entry
	 *
	 * @param int $formID
	 * @param int $entryID Or specify 0 if not yet an active entry
	 * @param string $filename
	 * @return bool|string Returns false on failure or string on success
	 *
	 */
	public function getFileKey($formID, $entryID, $filename) {
		if(!is_file($filename)) return false;
		$key = "$formID,$entryID," . basename($filename) . "," . sha1_file($filename);
		return $key; 
	}

	/**
	 * Retrieve a filename from a transportable key
	 *
	 * @param string $key Must be in the format given by getFileKey
	 * @return bool|string Returns boolean false on failure or full path+filename on success
	 *
	 */
	public function getFileFromKey($key) {
		if(!preg_match('/^(\d+),(\d+),([-_.a-zA-Z0-9]+),(.+)$/', trim($key), $matches)) return false;
		$formID = (int) $matches[1];
		if(!$formID) return false;
		$entryID = (int) $matches[2];
		$basename = $matches[3]; 
		$hash = $matches[4]; 
		$form = $this->load((int) $formID);
		if(!$form) return false;
		if($entryID) $path = $form->entries()->getFilesPath($entryID);
			else $path = $this->getTempFilesPath();
		$filename = $path . $basename; 
		if(!is_file($filename)) return false;
		if(sha1_file($filename) !== $hash) return false;
		return $filename;	
	}

	/**
	 * Return a URL where the given file can be viewed
	 *
	 * @param int $formID
	 * @param int $entryID Or specify 0 if not yet an active entry
	 * @param string $filename
	 * @return bool|string Returns false on failure or URL on success
	 *
	 */
	public function getFileURL($formID, $entryID, $filename) {
		$key = $this->getFileKey($formID, $entryID, $filename);
		if(!$key) return false;
		$page = \ProcessWire\wire('pages')->get("template=" . self::name);		
		if(!$page->id) return false;
		return $page->httpUrl() . "?view_file=$key";
	}

	/**
	 * Outputs the given file, must be located under getFilesPath()
	 *
	 * @param string $key Key representing the file to view (generated by getFileKey) 
	 * @return bool Returns false on failure. On success, it exists program execution.
	 *
	 */
	public function viewFile($key) {

		$filename = $this->getFileFromKey($key);
		if(!$filename || !is_file($filename)) return false;

		$filesize = filesize($filename);	
		$info = pathinfo($filename);
		$ext = $info['extension']; 

		$contentTypes = array(
			'pdf' => 'application/pdf',
			'doc' => 'application/msword',
			'docx' => 'application/msword',
			'xls' => 'application/excel',
			'xlsx' => 'application/excel',
			'rtf' => 'application/rtf',
			'gif' => 'image/gif', 
			'jpg' => 'image/jpeg',
			'jpeg' => 'image/jpeg',
			'png' => 'image/x-png', 
			);

		// types that won't trigger a 'save' dialog and instead will just display
		$nonDownloadTypes = array('gif', 'jpg', 'jpeg', 'png');
		
		if(isset($contentTypes[$ext])) $contentType = $contentTypes[$ext];
			else $contentType = 'application/octet-stream';

		if(ini_get('zlib.output_compression')) ini_set('zlib.output_compression', 'Off');

		header("Pragma: public");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Content-Type: $contentType");
		header("Content-Transfer-Encoding: binary");
		header("Content-Length: $filesize");
		if(!in_array($ext, $nonDownloadTypes)) header("Content-Disposition: attachment; filename=\"$info[basename]\"");
		ob_clean();
		flush();
		readfile($filename);
		exit;
	}

	/**
	 * Direct access properties
	 *
	 */
	public function __get($key) {
		if($key == 'db') return $this->db;
		return null;
	}

	/**
	 * Install the tables
	 *
	 */
	public function _install() {

		$sql =  "CREATE TABLE " . self::formsTable . " (" . 
			"id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, " . 
			"name VARCHAR(255) NOT NULL, " .  
			"data TEXT NOT NULL, " . 
			"UNIQUE name (name)" . 
			")";


		try {
			if(!$this->db->query($sql)) \ProcessWire\wire('modules')->error($this->db->error); 
		} catch(Exception $e) { 
			\ProcessWire\wire('modules')->error($this->db->error); 
		}
		FormBuilderEntries::_install($this->db);
	}

	/**
	 * Uninstall the tables
	 *
	 */
	public function _uninstall() {
		try {
			$this->db->query("DROP TABLE " . self::formsTable);
			FormBuilderEntries::_uninstall($this->db);
		} catch(Exception $e) {
			// just catch, no need to do anything else
		}
	}


}
