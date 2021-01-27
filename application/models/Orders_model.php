<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Orders_model extends CI_Model
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
	    $columnName = isset($postData['columns'][$columnIndex]['data']) ? $postData['columns'][$columnIndex]['data'] : 'o.id'; 
	    $columnSortOrder = isset($postData['order'][0]['dir']) ? $postData['order'][0]['dir'] : 'desc'; // asc or desc
	    $searchValue = $postData['search']['value']; // Search value

	    ## Search 
	    $searchQuery = "";
	    if($searchValue != ''){
	        $searchQuery = " (u.first_name like '".$searchValue."%'  OR u.last_name like '".$searchValue."%'  OR o.shipping_address like '".$searchValue."%'  OR o.total like '".$searchValue."%' ) ";
	    }

	    ## Total number of records without filtering
	    $this->db->select('count(*) as allcount');
	    $this->db->join("users as u", "u.id = o.user_id");
	    $records = $this->db->get('orders as o')->result();
	    $totalRecords = $records[0]->allcount;

	    /*print_r($totalRecords);*/

	    ## Total number of record with filtering
	    $this->db->select('count(*) as allcount'); 
	    if($searchQuery != '')
	        $this->db->where($searchQuery); 
	    $this->db->join("users as u", "u.id = o.user_id");
	    $records = $this->db->get('orders as o')->result();
	    $totalRecordwithFilter = isset($records[0]->allcount) ? $records[0]->allcount : 0;

	    ## Fetch records
	    $this->db->select('o.*,u.first_name,u.last_name,u.contact');
	    if($searchQuery != '')
	        $this->db->where($searchQuery); 
	    $this->db->join("users as u", "u.id = o.user_id");
	    $this->db->order_by($columnName, $columnSortOrder) ->group_by('o.id');
	    $this->db->limit($rowperpage, $start);
	    $records = $this->db->get('orders as o')->result();

	    // print_r($this->db->last_query());
	    // die('die');

	    $data = array();
	    
	    foreach($records as $record ){

	    	$btnActions = ""; 
			$btnActions = "";
			$btnActions = '<a class="btn btn-xs btn-danger" title="delete" href="'.base_url().'admin/orders/remove/'.base64_encode($record->id).'" 
				 onclick="return confirm_action(this,event,\'Do you really want to delete this record?\')"><i class="fa fa-trash"></i></a>';
 
	        $data[] = array( 
	           "order_id"     	=> 'ord_'.$record->id ,  
	           "first_name"     	=>$record->first_name .' ' .$record->last_name,  
	           "shipping_address"   =>$record->shipping_address,
	           "total"   =>$record->total,  
	           "is_paid"   =>$record->is_paid,  
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