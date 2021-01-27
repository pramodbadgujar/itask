<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Api_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}   
  

 

	#==========================================
	#	User Registration
	#========================================== 
	public function registration()
	{  
	    $result		= array();   
	    $result['success'] 	= false;
		$result['data'] 	= []; 
		$result['message']	= 'Error occured while registration.';
 
		$email 		= $this->input->post('email');    
		$first_name	 	= $this->input->post('first_name');  
		$last_name	 	= $this->input->post('last_name');  
		$contact	 	= $this->input->post('contact');  
		$password 		= $this->input->post('password');     
		$address 	= $this->input->post('address');   

		 // check data
		$users = $this->db->get_where(USERS , array("email" =>$email ))->row_array(); 
 		 
		if(!empty($users))  
		{	 
	        $result['message'] 	= 'Email is already exist.';     
	        return $result; 
	    } else { 

			$insert_array = array( 
				"email"		=> $email , 
				"is_admin"	=> 0 , 
				"password"	=> password_hash($password, PASSWORD_DEFAULT),   
				"created_on"	=> date("Y-m-d H:i:s")
			);   
			if( !empty($first_name) ){ $insert_array['first_name'] = $first_name; }
			if( !empty($last_name) ){ $insert_array['last_name'] = $last_name; }
			if( !empty($address) ){ $insert_array['address'] = $address; }
			if( !empty($contact) ){ $insert_array['contact'] = $contact; } 

			if($this->db->insert(USERS , $insert_array )) {	
				$insert_id = $this->db->insert_id(); 

				$this->db->select("id,first_name,last_name,address,email,contact");
				$user_data = $this->db->get_where(USERS , array("id" =>$insert_id))->row_array();


		        $result['success']	= true;
				$result['data']		= $user_data; 
		        $result['message']	= 'Registration done Successfully.'; 
			}else{
		        $result['success']	= false;
				$result['data']		= []; 
		        $result['message']	= 'Something went wrong.'; 

			} 
		}   
	    return $result;
	} 
 
 	public function get_product_list()
 	{
 		$id = $this->input->get("user_id"); 

		$this->db->from(USERS);    
		$this->db->where('id',$id);   
		$user = $this->db->get()->row_array();   
 

	    $result['success']	= false;
		$result['data']		= []; 
        $result['message']	= 'You are not registered with us.';  

 		if(!empty($user)) 
 		{
 					$this->db->select("id , name , description , category_id , image,sku , price");
 						$this->db->limit(20);
 						$this->db->order_by("id","desc");
			$product_list = $this->db->get("products")->result_array();  


 			if(!empty($product_list)){
		        $result['success']	= true;
				$result['product_list']	= $product_list; 
		        $result['message']	= 'Product list.'; 

 			}else{
				$result['success']	= true;
				$result['product_list']		= []; 
		        $result['message']	= 'Product not found.';  
 			}
		}
		return $result;
 	}

 
 	public function get_categories_list()
 	{  
 
			$this->db->select("id , title , slug , description , icon "); 
				$this->db->order_by("id","desc");
				$this->db->where("(parent_id IS NULL )");
		$category_list = $this->db->get("categories")->result_array();  

	    $result['success']	= false;
		$result['category_list']		= []; 
        $result['message']	= 'Data not found.';  

 		if(!empty($category_list)) 
 		{ 
	        $result['success']	= true;
			$result['category_list']	= $category_list; 
	        $result['message']	= 'Category list.';   
		}
		return $result;
 	}
	
	public function get_subcategories_list()
 	{  
 	
 		$category_id = $this->input->get("category_id");
			$this->db->select("id , title , parent_id , slug , description , icon "); 
				$this->db->order_by("id","desc");
				$this->db->where(" parent_id " , $category_id);
		$category_list = $this->db->get("categories")->result_array();  

	    $result['success']	= false;
		$result['category_list']		= []; 
        $result['message']	= 'Data not found.';  

 		if(!empty($category_list)) 
 		{ 
	        $result['success']	= true;
			$result['category_list']	= $category_list; 
	        $result['message']	= 'SubCategory list.';   
		}
		return $result;
 	}

 
}
