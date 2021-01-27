<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct(); 
	}
	 
	public function index()
	{ 

		$data['title'] 				= "Dashboard";
		$data['keywords'] 			= 'meta tags here';
		$data['meta_description'] 	= 'your meta description here';
 
		$data['layout'] 			= 'admin/dashboard';
		$this->load->view('admin/layout/template',$data);
	}
 

 
}
