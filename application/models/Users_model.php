<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();   
	}
 



	public function getList( $postData = null )
	{	
		$response = array();
		$user_id = $this->session->userdata[SESS_PREFIX.'admin_user_id']; 

	    ## Read value
	    $draw = $postData['draw'];
	    $start = $postData['start'];
	    $rowperpage = $postData['length']; // Rows display per page

	    // Column index
	    $columnIndex = isset($postData['order'][0]['column']) ? $postData['order'][0]['column'] : ''; 

	    // Column name
	    $columnName = isset($postData['columns'][$columnIndex]['data']) ? $postData['columns'][$columnIndex]['data'] : 'id'; 
	    $columnSortOrder = isset($postData['order'][0]['dir']) ? $postData['order'][0]['dir'] : 'desc'; // asc or desc
	    $searchValue = $postData['search']['value']; // Search value

	    ## Search 
	    $searchQuery = "";
	    if($searchValue != ''){
	        $searchQuery = " (first_name like '".$searchValue."%'  OR last_name like '".$searchValue."%'  OR email like '".$searchValue."%'  OR contact like '".$searchValue."%' ) ";
	    }

	    ## Total number of records without filtering
	    $this->db->select('count(*) as allcount');
	    $this->db->where('is_admin',0);  
	    $records = $this->db->get('users')->result();
	    $totalRecords = $records[0]->allcount;

	    /*print_r($totalRecords);*/

	    ## Total number of record with filtering
	    $this->db->select('count(*) as allcount')->where('is_admin',0); 
	    if($searchQuery != '')
	        $this->db->where($searchQuery); 
	    $records = $this->db->get('users')->result();
	    $totalRecordwithFilter = isset($records[0]->allcount) ? $records[0]->allcount : 0;

	    ## Fetch records
	    $this->db->select('*');
	    if($searchQuery != '')
	        $this->db->where($searchQuery); 
	    $this->db->where('is_admin',0);  
	    $this->db->order_by($columnName, $columnSortOrder) ->group_by('id');
	    $this->db->limit($rowperpage, $start);
	    $records = $this->db->get('users')->result();

	    // print_r($this->db->last_query());
	    // die('die');

	    $data = array();
	    
	    foreach($records as $record ){

	    	$btnActions = ""; 
			$btnActions = "";
			$btnActions = '<a class="btn btn-xs btn-danger" title="delete" href="'.base_url().'admin/users/remove/'.base64_encode($record->id).'" 
				 onclick="return confirm_action(this,event,\'Do you really want to delete this user?\')"><i class="fa fa-trash"></i></a>';
 
	        $data[] = array( 
	           "first_name"     	=>$record->first_name, 
	           "last_name"     	=>$record->last_name, 
	           "address"   =>$record->address,
	           "email" 		=>$record->email,
	           "contact" 	=>$record->contact,   
	           "actions"	=> $btnActions
	        ); 
 


	    }

	     ## Response
	     $response = array(
	        "draw" => intval($draw),
	        "iTotalRecords" => $totalRecords,
	        "iTotalDisplayRecords" => $totalRecordwithFilter,
	        "aaData" => $data
	     );

	     return $response; 
	
    }
 
}