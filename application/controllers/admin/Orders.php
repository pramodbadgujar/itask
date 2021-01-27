<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Orders extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct();
	}
	 
	public function index()
	{
 		
		$data['par2'] 				= "Dashboard";
		$data['par2_url'] 			= "admin/dashboard";
		$data['list_url'] 			= "admin/orders";

		$data['page_title'] 		= "orders";
 
		$data['layout'] 			= 'admin/orders/index';
		$this->load->view('admin/layout/template',$data);
	}

	 

	public function getList()
	{ 
		
        $postData = $this->input->post(); 

        $data = $this->orders_model->getList($postData);

        echo json_encode($data);
	}
	 
 
	public function remove( $encId )
	{
		if( $encId )
		{
			$this->db->where('id',base64_decode($encId));  
			$this->db->delete('orders');

			if($this->db->affected_rows() == true)
			{
				$this->session->set_flashdata('success', "orders deleted successfully." );
				redirect($_SERVER['HTTP_REFERER']);
			}

			$this->session->set_flashdata('error', "Something went to wrong while deleting orders." );
			redirect($_SERVER['HTTP_REFERER']);
			
		}
	}


 



}
