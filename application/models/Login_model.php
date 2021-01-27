<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();   
	}


	public function login()
	{
        
        $email	  = $this->input->post('email');
		$password = $this->input->post('password');

		$this->db->where(" (email = '".$email."' AND is_admin = 0) ");
		$result   = $this->db->get(USERS )->row_array();   


		if(!empty($result))
		{	  

			if(password_verify($password, $result['password'] ) == false ){ 
				$this->session->set_flashdata('error', "Entered password was wrong." );
				redirect("login"); 
			}
 

			$session_data=array(SESS_PREFIX.'user_id'=>$result['id'],SESS_PREFIX.'email'=>$result['email'],SESS_PREFIX.'name'=>$result['first_name'],SESS_PREFIX.'image'=>$result['image']  );  

			$this->session->set_userdata($session_data); 

			return 1;
		}
		else{
			$this->session->set_flashdata('error', "Your are not admin or not registered." );
			redirect("login");
		}
		 
	} 

  

	 
}