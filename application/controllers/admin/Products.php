<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CI_Controller 
{
	
	public function __contruct()
	{
		parent::__contruct();
	}
	 
	public function index()
	{
 		
		$data['par2'] 				= "Dashboard";
		$data['par2_url'] 			= "admin/dashboard";
		$data['list_url'] 			= "admin/products";

		$data['page_title'] 		= "Products";
 
		$data['layout'] 			= 'admin/products/index';
		$this->load->view('admin/layout/template',$data);
	}

	 
	public function add(){  

		if($this->input->post())
		{ 
			$this->form_validation->set_rules('name','name','required|trim|xss_clean'); 
			$this->form_validation->set_rules('sku','sku','required|trim'); 
			$this->form_validation->set_rules('quantity','quantity','trim|xss_clean'); 
			$this->form_validation->set_rules('price','price','trim|xss_clean'); 

			if( $this->form_validation->run() == true )
			{
				$arrWhere = $this->input->post();

				unset($arrWhere['price']);
				unset($arrWhere['quantity']);
				unset($arrWhere['description']);
				$isDuplicate = $this->Common_model->checkDuplicate('products',$arrWhere);

				if(!$isDuplicate)
				{
					$this->session->set_flashdata('error', "This record is already stored.");
					redirect($_SERVER['HTTP_REFERER']);
				}

				$this->products_model->add($this->input->post());				
			}

			$this->session->set_flashdata('error', $this->form_validation->error_string());

			redirect($_SERVER['HTTP_REFERER']);
			
		}

		$data['par1'] 				= "Dashboard";
		$data['par1_url'] 			= "admin/dashboard";

		$data['par2'] 				= "Manage products";
		$data['par2_url'] 			= "admin/products";
		$data['list_url'] 			= "admin/products";

 	
 		$data['page_title'] 		= "Add products";	 
		$data['layout'] 			= 'admin/products/add';
		$this->load->view('admin/layout/template',$data);
	}

	public function getList()
	{
		 
        $postData = $this->input->post(); 

        $data = $this->products_model->getList($postData);

        echo json_encode($data);
	}
	 

	public function edit($encId){  

		if($this->input->post())
		{ 
			$this->form_validation->set_rules('name','name','required|trim|xss_clean'); 
			$this->form_validation->set_rules('sku','sku','required|trim'); 
			$this->form_validation->set_rules('quantity','quantity','trim|xss_clean'); 
			$this->form_validation->set_rules('price','price','trim|xss_clean'); 


			if( $this->form_validation->run() == true )
			{
				$arrWhere = $this->input->post(); 
				unset($arrWhere['price']);
				unset($arrWhere['quantity']);
				unset($arrWhere['description']);
				$isDuplicate = $this->Common_model->checkDuplicate('products',$arrWhere,'id',$encId);

				if(!$isDuplicate)
				{
					$this->session->set_flashdata('error', "This record is already stored.");
					redirect($_SERVER['HTTP_REFERER']);
				}

				$this->products_model->edit($this->input->post(),$encId);
				
			}

			$this->session->set_flashdata('error', $this->form_validation->error_string());

			redirect($_SERVER['HTTP_REFERER']);
			
		}

		$arrData = $this->db->select('*')
        ->get_where('products', array('id' => base64_decode($encId)))
        ->row();

		$data['par1'] 				= "Dashboard";
		$data['par1_url'] 			= "admin/dashboard";

		$data['par2'] 				= "Manage products";
		$data['par2_url'] 			= "admin/products";
		$data['list_url'] 			= "admin/products";

		$data['page_title'] 		= "Edit products";
 
		$data['layout'] 			= 'admin/products/edit';
		$data['arrData'] 			    = $arrData;
		$this->load->view('admin/layout/template',$data);
	}

  

	public function remove( $encId )
	{
		if( $encId )
		{
			$this->db->where('id',base64_decode($encId));  
			$this->db->delete('products');

			if($this->db->affected_rows() == true)
			{
				$this->session->set_flashdata('success', "Products deleted successfully." );
				redirect($_SERVER['HTTP_REFERER']);
			}

			$this->session->set_flashdata('error', "Something went to wrong while deleting Products." );
			redirect($_SERVER['HTTP_REFERER']);
			
		}
	}


 



}
