<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct(); 
	}

 
	 
	public function index()
	{ 
		  
		if(!empty($this->session->userdata(SESS_PREFIX."user_id") )){
			redirect(base_url('login') );
		}
		if(!empty($_POST["email"] ) && !empty($_POST["password"] ))
 		{
		// print_r($_POST);die;
 				// echo "<pre>"; print_r($_POST); die;
			$this->form_validation->set_rules('email','Email','required|trim');
			$this->form_validation->set_rules('password','Password','required|trim');

			if($this->form_validation->run()==true)
			{
				
				$data=$this->login_model->login();
				// print_r($data);die;
				if(!empty($data)){   
 					redirect(base_url() ); 
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
			
			redirect(base_url('login'));  

 		}else{ 

			
			$data['title'] 		= 'Login  |  ' . PROJECT_NAME;   
			$data["main"] 		= "login";
			$data["current_page"] 		= "User login";  
			$this->load->view('template',$data);
 		} 

	}



	public function logout(){

		setcookie (session_id(), "", time() - 3600);
		setcookie ("ci_session", "", time() - 3600); 
		session_destroy();
		redirect(base_url() );

	}
 



	

}
