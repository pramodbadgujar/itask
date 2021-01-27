<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct(); 
	}

 
	 
	public function login()
	{ 
		  
		if(!empty($this->session->userdata(SESS_PREFIX."admin_user_id") )){
			redirect(base_url().'admin/dashboard' );
		}
		if(!empty($_POST["email"] ) && !empty($_POST["password"] ))
 		{
		// print_r($_POST);die;
 				// echo "<pre>"; print_r($_POST); die;
			$this->form_validation->set_rules('email','Email','required|trim');
			$this->form_validation->set_rules('password','Password','required|trim');

			if($this->form_validation->run()==true)
			{
				
				$data=$this->login_admin_model->login();
				// print_r($data);die;
				if(!empty($data)){   
 					redirect('admin/dashboard'); 
				}
				else
				{
					$this->session->set_flashdata('error','Enter a valid login details.');
				}
			}
			else
			{
				$this->session->set_flashdata('error', $this->form_validation->error_string());
			}
			
			redirect('admin/auth/login');  

 		}else{ 

			$data['title'] 				= "Login"; 
			$data['layout'] 			= 'admin/auth/login';
			$this->load->view('admin/auth/login');
 		} 

	}



	public function logout(){

		setcookie (session_id(), "", time() - 3600);
		setcookie ("ci_session", "", time() - 3600); 
		session_destroy();
		redirect("admin");

	}
 



	

}
