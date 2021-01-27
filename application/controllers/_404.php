<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class _404 extends CI_Controller {

	public function index()
	{
		

		$data["title"] = "Page not found";
		$data["main"] = "404";
		$this->load->view('template',$data); 
	}
}
