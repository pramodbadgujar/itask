<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();   
	}

	public function add($data)
	{	  
		$data['added_by'] = $this->session->userdata[SESS_PREFIX.'admin_user_id'];
		$data['created_on'] = date("Y-m-d H:i:s");
	 
		if(!empty($_FILES['image']['name'])){
			$data['image'] = $this->uploadImage() ;
		}

		// print_r($_POST);die;
		$this->db->insert("products" ,$data);

		if($this->db->affected_rows() > 0)
		{ 
			redirect("admin/products"); 	  
		}

		$this->session->set_flashdata('error', "Something went to wrong while adding products." );
		redirect($_SERVER['HTTP_REFERER']);
	} 

	public function edit($data,$encId)
	{
 
		$data['updated_on'] = date("Y-m-d H:i:s");
		// print_r($data);die;
		if(!empty($_FILES['image']['name'])){
			$data['image'] = $this->uploadImage() ;
		} 

		// print_r($data);die;
		$this->db->where('id',base64_decode($encId)); 
		$this->db->set($data);
		$this->db->update('products');
		
		$this->session->set_flashdata('success', "products updated successfully." );
		redirect("admin/products"); 	  
	}


	public function uploadImage() 
   { 
      $config['upload_path']   = 'uploads/products/'; 
      $config['allowed_types'] = 'gif|jpg|png|jpeg'; 
      // $config['max_size']      = 1024;
      $config['encrypt_name']  = TRUE; 
      $this->load->library('upload', $config);
			$this->upload->initialize($config);

      if ( ! $this->upload->do_upload('image')) 
      { 
 			$error = $this->upload->display_errors();
         	$this->session->set_flashdata('error', $error);
			redirect("admin/products"); 
      }else { 

        $uploadedImage = $this->upload->data(); 

      	$this->load->library('image_lib');
	    $configer =  array(
	      'image_library'   => 'gd2',
	      'source_image'    =>  $uploadedImage['full_path'],
	      'maintain_ratio'  =>  TRUE,
	      'width'           =>  300,
	      'height'          =>  300,
	    );
	    $this->image_lib->clear();
	    $this->image_lib->initialize($configer);
	    $this->image_lib->resize(); 

	    return 'uploads/products/'.$uploadedImage['file_name'];
      } 
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
	    $columnName = isset($postData['columns'][$columnIndex]['data']) ? $postData['columns'][$columnIndex]['data'] : 'p.id'; 
	    $columnSortOrder = isset($postData['order'][0]['dir']) ? $postData['order'][0]['dir'] : 'desc'; // asc or desc
	    $searchValue = $postData['search']['value']; // Search value

	    ## Search 
	    $searchQuery = "";
	    if($searchValue != ''){
	        $searchQuery = " (p.name like '".$searchValue."%'  OR p.sku like '".$searchValue."%'  OR p.price like '".$searchValue."%'  ) ";
	    }

	    ## Total number of records without filtering
	    $this->db->select('count(*) as allcount');
	    $this->db->join("categories as c" , "c.id = p.category_id");
	    $records = $this->db->get('products as p')->result();
	    $totalRecords = $records[0]->allcount;

	    /*print_r($totalRecords);*/

	    ## Total number of record with filtering
	    $this->db->select('count(*) as allcount'); 
	    if($searchQuery != '')
	        $this->db->where($searchQuery);
	       $this->db->join("categories as c" , "c.id = p.category_id"); 
	    $records = $this->db->get('products as p')->result();
	    $totalRecordwithFilter = isset($records[0]->allcount) ? $records[0]->allcount : 0;

	    ## Fetch records
	    $this->db->select('p.*,c.title as category_name');
	    if($searchQuery != '')
	        $this->db->where($searchQuery);    
	    $this->db->order_by($columnName, $columnSortOrder) ->group_by('p.id');
	    $this->db->limit($rowperpage, $start);
	    $this->db->join("categories as c" , "c.id = p.category_id");
	    $records = $this->db->get('products as p')->result();

	    // print_r($this->db->last_query());
	    // die('die');

	    $data = array();
	    
	    foreach($records as $record ){

	    	$btnActions = ""; 
			$btnActions = "";
			$btnActions = '<a class="btn btn-xs btn-info" title="update" href="'.base_url().'admin/products/edit/'.base64_encode($record->id).'" 
				 ><i class="fa fa-edit"></i></a> &nbsp; <a class="btn btn-xs btn-danger" title="delete" href="'.base_url().'admin/products/remove/'.base64_encode($record->id).'" 
				 onclick="return confirm_action(this,event,\'Do you really want to delete this record?\')"><i class="fa fa-trash"></i></a>';

 
	        $data[] = array( 
	           "name"   =>$record->name,
	           "sku"     	=>$record->sku,
	           "category_name"   =>$record->category_name, 
	           "quantity"   =>$record->quantity, 
	           "price" 		=> $record->price,  
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