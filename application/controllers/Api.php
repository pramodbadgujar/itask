<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller{
	 
 	function __construct()
 	{
 		parent::__construct();
 		$this->load->model('api_model' , 'model'); 
 	}

   
   

	#==================================
	#	user registration
	#==================================  
	public function registration()
	{  	
		$response = array();  
 

		if($this->input->post('first_name') =='' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Please enter first name.';
			echo json_encode($response);
			exit;
		}
 
		if($this->input->post('last_name') =='' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Please enter last name.';
			echo json_encode($response);
			exit;
		}
 
		if($this->input->post('email') =='' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Please enter email.';
			echo json_encode($response);
			exit;
		}
 
		if($this->input->post('contact') =='' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Please enter contact.';
			echo json_encode($response);
			exit;
		}
		 
		if($this->input->post('password') =='' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Please enter password.';
			echo json_encode($response);
			exit;
		}

	 
		$result = $this->model->registration();
	    echo json_encode($result);
		exit;     
	}

  

	#==================================
	#	get Products
	#================================== 
	public function get_product_list()
	{		  
		$response = array();  
		
		if($this->input->get('user_id') == '' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'User field is Required.';
			echo json_encode($response);
			exit;
		}  

		$result = $this->model->get_product_list();
	    echo json_encode($result);
		exit;   
	} 

	 
 	public function get_categories_list()
	{		  
		$response = array();  
		
		/*if($this->input->get('user_id') == '' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'User field is Required.';
			echo json_encode($response);
			exit;
		}  */

		$result = $this->model->get_categories_list();
	    echo json_encode($result);
		exit;   
	} 

 	public function get_subcategories_list()
	{		  
		$response = array();  
		
		if($this->input->get('category_id') == '' )
		{
			$response['success'] = FALSE;
			$response['message'] = 'Category id field is Required.';
			echo json_encode($response);
			exit;
		}  

		$result = $this->model->get_subcategories_list();
	    echo json_encode($result);
		exit;   
	} 

	 
 

 

}

