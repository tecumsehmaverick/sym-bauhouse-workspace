<?php

	require_once(TOOLKIT . '/class.datasource.php');
	require_once(TOOLKIT . '/class.sectionmanager.php');
	require_once(TOOLKIT . '/class.fieldmanager.php');
	require_once(TOOLKIT . '/class.entrymanager.php');
	
	Class datasourcesection_schema_journal extends Datasource{
		
		public $dsParamROOTELEMENT = 'section-schema';
		
		
		
		
		
		
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array("");
		}
		
		public function about(){
			return array(
					 'name' => 'Section Schema: Journal',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/bauhouse/www',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-23T16:42:03+00:00');	
		}
		
		public function getSource(){
			return '3';
		}
		
		public function allowEditorToParse(){
			return false;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				$extension = $this->_Parent->ExtensionManager->create('section_schemas');
				$extension->getSectionSchema($result, $this->getSource());
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			
			
			
			return $result;
		}
	}

