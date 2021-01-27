<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct();
	} 

	public function update()
	{    
		$data['par1'] 				= "Dashboard";
		$data['par1_url'] 			= "admin/dashboard";

		$data['par2'] 				= "Manage Profile";
		$data['par2_url'] 			= "admin/profile";
		$data['list_url'] 			= "admin/profile/update";

		$data['page_title'] 		= "Update Profile";
 	
		$data['layout'] 			= 'admin/profile/update';

		$logId = $this->session->userdata(SESS_PREFIX."admin_user_id");

		$data['profile_data'] = $this->Profile_model->getProfile($logId); 
		 
		if($this->input->post())
		{  
			$this->form_validation->set_rules('name','Name','required|trim');
			// $this->form_validation->set_rules('last_name','Last name','required|trim'); ;
			 
			if( $this->form_validation->run() == true )
			{  	
				if($_FILES['image']['name']!='')
				{ 
					$proImg = $this->Profile_model->uploadImage($_FILES);
					$_POST['image'] = $proImg;

					if ($this->input->post('old_image')!='') {
						unlink('uploads/profile_picture/'.$this->input->post('old_image')); 
					}
				}  
 
				unset($_POST['old_image']); 

				$this->Profile_model->edit($this->input->post(),$logId);   
			}

			$this->session->set_flashdata('error', $this->form_validation->error_string());

			redirect($_SERVER['HTTP_REFERER']); 			
		}

		$this->load->view('admin/layout/template',$data);
	} 

	public function change_password()
	{    
		$data['par1'] 				= "Dashboard";
		$data['par1_url'] 			= "admin/dashboard";

		$data['par2'] 				= "Profile";
		$data['par2_url'] 			= "admin/profile";
		$data['list_url'] 			= "admin/profile/change_password";

		$data['page_title'] 		= "Change Password";
 	
		$data['layout'] 			= 'admin/profile/change-password';
  		
		if($this->input->post())
		{  

			$this->form_validation->set_rules('old_password','Current password','required|trim');
			$this->form_validation->set_rules('new_password', 'New password', 'trim|required'); 
			$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[new_password]');

			if( $this->form_validation->run() == true )
			{ 
				$logId = $this->session->userdata(SESS_PREFIX."admin_user_id");

				$profile_data = $this->Profile_model->getProfile($logId);

				$old_password = $this->input->post('old_password');
				$con_password = $this->input->post('confirm_password');
				// print_r($_POST);die;
				if(password_verify($old_password, $profile_data->password ) == true )
				{ 
				 	$this->Profile_model->password_change($con_password,$logId);
				}
				else
				{
					$this->session->set_flashdata('error', 'Old password not match');

					redirect($_SERVER['HTTP_REFERER']);
				}  
			}

			$this->session->set_flashdata('error', $this->form_validation->error_string());

			redirect($_SERVER['HTTP_REFERER']); 			
		}

		$this->load->view('admin/layout/template',$data);
	} 


	public function forgot_password_reset_link()			/*for forgot password*/
 	{	  
 		$data['title'] = "Reset Password";
 		$this->load->view("admin/changepassword",$data);
 	}



 	public function forgot_change_password()	/*for forgot password*/
	{	 
		echo json_encode($this->Profile_model->forgot_change_password());
		exit();		
	}

	
	

} //class closed
