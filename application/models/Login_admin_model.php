<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_admin_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();   
	}


	public function login()
	{
        
        $email	  = $this->input->post('email');
		$password = $this->input->post('password');

		$this->db->where(" (email = '".$email."' AND is_admin = 1) ");
		$result   = $this->db->get(USERS )->row_array();   


		if(!empty($result))
		{	  

			if(password_verify($password, $result['password'] ) == false ){ 
				$this->session->set_flashdata('error', "Entered password was wrong." );
				redirect("admin/auth/login"); 
			}

			if($this->input->post('remember_me') == "on"){             
               	$this->input->set_cookie(SESS_PREFIX.'admin_email', $email , 86500); 
                $this->input->set_cookie(SESS_PREFIX.'admin_password', $password , 86500); 
                $this->input->set_cookie(SESS_PREFIX.'admin_remember', true, 86500);   
		    } 
            else 
            { 
                delete_cookie(SESS_PREFIX.'admin_email');  
                delete_cookie(SESS_PREFIX.'admin_password'); 
                delete_cookie(SESS_PREFIX.'admin_remember'); 
            }

			$session_data=array(SESS_PREFIX.'admin_user_id'=>$result['id'],SESS_PREFIX.'admin_email'=>$result['email'],SESS_PREFIX.'admin_name'=>$result['first_name'],SESS_PREFIX.'admin_image'=>$result['image']  );  

			$this->session->set_userdata($session_data); 

			return 1;
		}
		else{
			$this->session->set_flashdata('error', "Your are not admin or not registered." );
			redirect("admin/auth/login");
		}
		 
	} 

  

	 
}