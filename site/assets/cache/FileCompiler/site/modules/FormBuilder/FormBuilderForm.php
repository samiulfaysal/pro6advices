<?php

/**
 * ProcessWire Form Builder Form
 *
 * Serves as container form for FormBuilderField objects. 
 * It is an intermediary between the JSON/array form and Inputfields.
 *
 * Copyright (C) 2012 by Ryan Cramer Design, LLC
 * 
 * PLEASE DO NOT DISTRIBUTE
 * 
 * This file is commercially licensed.
 * 
 */

class FormBuilderForm extends FormBuilderField {

	/**
	 * Reference to FormBuilderMain
	 *
	 */
	protected $forms = null;

	/**
	 * Reference to FormBuilderEntries instance, when cached. 
	 *
	 */
	protected $entries = null;

	/**
	 * Reference to FormBuilderProcessor instance, when cached. 
	 *
	 */
	protected $processor = null;

	/**	
	 * Form specific permission definitions
	 *
	 */
	protected $defaultRoles = array(
		'form-submit' => array('guest'),
		'form-list' => array(),
		'form-edit' => array(),
		'form-delete' => array(),
		'entries-list' => array(),
		'entries-edit' => array(),
		'entries-delete' => array(),
		'entries-page' => array()
		);

	/**
	 * Construct the form and set initial values
	 *
	 */
	public function __construct(FormBuilderMain $forms) {
		$this->forms = $forms; 
		parent::__construct();

		$this->set('id', 0); 
		$this->set('type', 'Form'); 
		$this->set('action', './');
		$this->set('method', 'post');
		$this->set('roles', $this->defaultRoles);

		// note that several other values may be set to the Form
		// like submitText, successMessage, etc. 
		// that are ultimately passed through to the FormBuilderProcessor
	}

	/**
	 * Save this form
	 *
	 */
	public function save() {
		return $this->forms->save($this);
	}

	/**
	 * Render this form's output and/or process if it has been posted.
	 *
	 * @return string
	 *
	 */ 
	public function render() {
		return $this->processor()->render();
	}

	/**
	 * Get this form's FormBuilderProcessor instance
	 *
	 * @return FormBuilderProcessor
	 *
	 */
	public function processor() {
		if($this->processor) return $this->processor; 
 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderForm.php') . '/FormBuilderProcessor.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
		$a = $this->getArray();
		$this->processor = new FormBuilderProcessor($this->id, $a);
		$this->processor->action = $this->action; 
		return $this->processor;
	}

	/**
	 * Get this form's FormBuilderEntries instance
	 *
	 * @return FormBuilderEntries
	 *
	 */
	public function entries() {
		if($this->entries) return $this->entries; 
 require_once(\ProcessWire\wire('files')->compile(dirname(\ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/FormBuilderForm.php') . '/FormBuilderEntries.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); 
		$this->entries = new FormBuilderEntries($this->id, $this->forms->db);
		return $this->entries; 
	}

	/**
	 * Was the form submitted?
	 *
	 * @return bool
	 *
	 */
	public function isSubmitted() {
		return $this->processor()->isSubmitted();
	}

	/**
	 * Return a list of errors that occurred, if submitted.
	 *
	 * @return array
	 *
	 */
	public function getErrors() {
		return $this->processor()->getErrors();
	}

	/**
	 * Ensure that direct access to 'processor' or 'entries' goes to the right place
	 *
	 */
	public function get($key) {
		if($key == 'processor') return $this->processor();
			else if($key == 'entries') return $this->entries();
		return parent::get($key);
	}

	public function set($key, $value) {
		if($key == 'roles') {
			if(!is_array($value)) $value = array();	
			$value = array_merge($this->defaultRoles, $value);
		}
		return parent::set($key, $value);
	}

	public function hasPermission($name) {
		return \ProcessWire\wire('forms')->hasPermission($name, $this); 
	}


}

