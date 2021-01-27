<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{

		// $this->session->sess_destroy();
		$this->db->where("(parent_id IS NULL)");
		$this->db->limit(10);
		$category = $this->db->get("categories")->result_array();

		$this->db->order_by("id","desc");
		$this->db->limit(12);
		$products = $this->db->get("products")->result_array();


 		$data['title'] 		= 'Home  |  ' . PROJECT_NAME;   
		$data["main"] 		= "index";
		$data["current_page"] 		= ""; 
		$data["category"] 		= $category;
		$data["products"] 		= $products;
		$this->load->view('template',$data); 
	}


	public function add_to_cart()
	{
		$id = $this->input->post("id");
		$logid = $this->session->userdata(SESS_PREFIX.'user_id');
  		if(!empty($id))
  		{
  			$this->db->where("id",$id);
  			$prod = $this->db->get("products")->row_array();

  			$bag = $this->cart->contents();
  			$ins = true;
		    foreach ($bag as $item) { 
		        if ( $item['id'] == $id ) { 
 	 
  					$ins = false;
		        } 
		    }
		    if($ins === true){ 
		        $data = array(
			             'id'      => $prod['id'],
			             'qty'     => 1,
			             'price'   => $prod['price'],
			             'name'    => $prod['name'],
			             'image'    => $prod['image'],
			             'description'    => $prod['description'],
			             // 'options' => array('Size' => 'M', 'Color' => 'Blue')
			    ); 
			    $this->cart->insert($data);
  				echo json_encode(array("status"=>"true","count"=>$this->cart->total_items() ) );
		    }else{ 
  				echo json_encode(array("status"=>"false","count"=>$this->cart->total_items() ) ); 
		    }

  		}else{
  			echo json_encode(array("status"=>"false","count"=>$this->cart->total_items() ) ); 
  		}

	}
	public function plus_cart_qty()
	{
		$id = $this->input->post("id");
		$logid = $this->session->userdata(SESS_PREFIX.'user_id');
  			$fqty = 0;
  		$bag = $this->cart->contents();
  		if(!empty($id))
  		{
  			$this->db->where("id",$id);
  			$prod = $this->db->get("products")->row_array();
  			$rowids = "";
		    foreach ($bag as $item) 
		    {  
		    	$fqty = ($item['qty']+1);
		        if ( $item['id'] == $id ) {  
		        	$rowids = $item['rowid'];
 	 			// 	$data = array( 
		    //              'rowid'   => $id,
		    //              'qty'     => $fqty
					 // ); 
					 // $this->cart->update($data); 
		        } 
		    }

		    if(!empty($rowids)){

			    $data = array(
			        'rowid'   => $rowids,
			        'qty'     => $fqty
			    );
			    $this->cart->update($data); 
				echo json_encode(array("status"=>"true","count"=>$fqty ) );
		    }
	     
  		}else{
  			echo json_encode(array("status"=>"false","count"=>$fqty ) ); 
  		}

	}
	public function minus_cart_qty()
	{
		$id = $this->input->post("id");
		$logid = $this->session->userdata(SESS_PREFIX.'user_id');
  			$fqty = 0;
  		$bag = $this->cart->contents();
  		if(!empty($id))
  		{
  			$this->db->where("id",$id);
  			$prod = $this->db->get("products")->row_array();
  			$rowids = "";
		    foreach ($bag as $item) 
		    {  
		    	$fqty = ($item['qty']-1);
		        if ( $item['id'] == $id ) {  
		        	$rowids = $item['rowid'];
 	 			// 	$data = array( 
		    //              'rowid'   => $id,
		    //              'qty'     => $fqty
					 // ); 
					 // $this->cart->update($data); 
		        } 
		    }

		    if(!empty($rowids)){

			    $data = array(
			        'rowid'   => $rowids,
			        'qty'     => $fqty
			    );
			    $this->cart->update($data); 
				echo json_encode(array("status"=>"true","count"=>$fqty ) );
		    }
	     
  		}else{
  			echo json_encode(array("status"=>"false","count"=>$fqty ) ); 
  		}

	}


	public function remove_cart(){
		$rowid =  $this->uri->segment(3); 
		$this->cart->remove ($rowid);
 		redirect("welcome/cart");
	}	


	public function place_order()
	{	
		$shipping_address = $this->input->post("shipping_address");
		$logid = $this->session->userdata(SESS_PREFIX.'user_id');
		$bag = $this->cart->contents();	
		$res = array("status"=>"user_log","message"=>"Try after login");
		if(!empty($bag))
		{
			$in_ar= $ord_arr =[]; $total = 0;

			foreach ($bag as $row) 
			{
				$this->db->where("id",$row['id']);
  				$prod = $this->db->get("products")->row_array();
				$in_ar[] =array("product_id"=>$row['id'],"sub_total"=>$row['subtotal'],"qty"=>$row['qty'], "product_name"=>$prod['name'], "product_price"=>$prod['price'], "product_image"=>$prod['image']); 
				$total += $row['subtotal'];
			}

			$ord_arr = array("user_id"=>$logid , "total"=>$total,"shipping_address"=>$shipping_address,"created_on"=>date("Y-m-d H:i:s") ); 
			$this->db->insert('orders',$ord_arr);
			$order_id = $this->db->insert_id();
			$idd = 0;
			foreach ($in_ar as $value) {
				$in_ar[$idd]["order_id"] = $order_id;
				$idd++; 
			}
			$this->db->insert_batch("order_items",$in_ar);

			if(!empty($order_id))
			{
				$this->cart->destroy(); 
				$res = array("status"=>"success","message"=>"order placed successfully.");
			}else{ 
				$res = array("status"=>"error","message"=>"try again.");
			}
		}
		else
		{ 
			$res = array("status"=>"cart_empty","message"=>"Your cart is empty");
		}
		echo json_encode($res);
	}


	public function cart()
	{

		$products = $this->cart->contents();


 		$data['title'] 		= 'Cart  |  ' . PROJECT_NAME;   
		$data["main"] 		= "cart"; 
		$data["current_page"] 		= "Cart Items"; 
		$data["products"] 		= $products;
		$this->load->view('template',$data); 

	}


 
}
