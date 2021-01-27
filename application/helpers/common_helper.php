<?php



function get_cart_count()
{
	$ci = get_instance(); 
	$logid = $ci->session->userdata(SESS_PREFIX.'user_id');
	if(!empty($logid)){ 
		$ci->db->where("user_id" , $logid);
	}
	return $ci->db->get("tbl_cart")->num_rows(); 
}
 
 
 

function getError($page){
	$ci = get_instance();
	$str = "";
	if($ci->session->flashdata($page.'_success') != ''){
		$str .= "<div class='alert alert-success' ><a href='#' class='close' data-dismiss='alert'>&times;</a>
					".$ci->session->flashdata($page.'_success')."
				 </div>";
	}
	if($ci->session->flashdata($page.'_error') != ''){
		$str .= "<div class='alert alert-danger' ><a href='#' class='close' data-dismiss='alert'>&times;</a>
					".$ci->session->flashdata($page.'_error')."
				 </div>";
	}
 
	return $str;
}

  






?>