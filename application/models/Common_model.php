<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Common_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();   
	}


 

	public function checkDuplicate($tbl,$arrWhere,$column = false,$value = false )
	{
		$this->db->where($arrWhere);

		if( $column != false && $value != false ){
			
			$this->db->where($column."!=",base64_decode($value));
		}

	    $query = $this->db->get($tbl);

	    $count_row = $query->num_rows();

	    if ($count_row > 0) {
	      
	        return FALSE; 
	     } 
	      
	     return TRUE; 

	} 
	
	 
	public function getCount($tbl,$arrWhere = "" )
	{
		if(!empty($arrWhere)){ 
		$this->db->where($arrWhere); 
		}

	    $query = $this->db->get($tbl);

	    $count_row = $query->num_rows();
	    // echo $this->db->last_query

 	     return $count_row; 

	} 
	
	public function getUser($id ="")
	{  

	    $query = $this->db->get(USERS)->result_array();   
	    $str = "<option value=''>Select Option</option>";
	    foreach ($query as $value) { 
	    		$selc = "";
	    	if($id == $value['id']){
	    		$selc = "selected";
	    	}
	    	$str .= " <option ".$selc." value='".$value['id']."'>".$value['first_name']."</option>";
	    }
	    echo $str;
	} 

	public function get_all_categories($id ="")
	{   

		  		$this->db->where("  parent_id IS NULL  " );
	    $query = $this->db->get("categories")->result_array();    

	    $str = "<option value=''>Select Option</option>";
	    foreach ($query as $value) { 
	    		$selc = "";
	    	if($id == $value['id']){
	    		$selc = "selected";
	    	}
	    	$str .= " <option ".$selc." value='".$value['id']."'>".$value['title']."</option>";
	    }
	    echo $str;
	} 
	 
 



	 
	 
}