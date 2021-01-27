<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct();
	}
	 
	public function index()
	{
 		
		$data['par2'] 				= "Dashboard";
		$data['par2_url'] 			= "admin/dashboard";
		$data['list_url'] 			= "admin/users";

		$data['page_title'] 		= "users";
 
		$data['layout'] 			= 'admin/users/index';
		$this->load->view('admin/layout/template',$data);
	}

	 

	public function getList()
	{
		$this->load->model('users_model');
		
        $postData = $this->input->post(); 

        $data = $this->users_model->getList($postData);

        echo json_encode($data);
	}
	 
 
	public function remove( $encId )
	{
		if( $encId )
		{
			$this->db->where('id',base64_decode($encId));  
			$this->db->delete('users');

			if($this->db->affected_rows() == true)
			{
				$this->session->set_flashdata('success', "users deleted successfully." );
				redirect($_SERVER['HTTP_REFERER']);
			}

			$this->session->set_flashdata('error', "Something went to wrong while deleting users." );
			redirect($_SERVER['HTTP_REFERER']);
			
		}
	}


 



}
