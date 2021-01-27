<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function sendEmail($to = '', $subject  = '', $body = '', $attachment = '', $cc = '')
{
	$controller =& get_instance();
    // $userid = $controller->session->userdata(SESS_PREFIX."user_id"); 
      
	// Configure email library  
   
	$config['protocol']    	= 'smtp'; 
    $config['smtp_host']    = 'ssl://mail.oreansoft.in';
    // $config['smtp_host']    = 'ssl://smtp.gmail.com';
    $config['smtp_port']    = 465;
    $config['smtp_timeout'] = 7;
    $config['smtp_user'] 	= "info@oreansoft.in";
	$config['smtp_pass'] 	= "Pr@m0D@123";
    $config['charset']    	= 'utf-8';
    $config['newline']    	= "\r\n";
    $config['mailtype'] 	= 'html'; // or html
    $config['validation']   = TRUE; // bool whether to validate email or not          
	

    $controller->email->initialize($config); 
    $controller->email->from( "info@oreansoft.in" , PROJECT_NAME);

    $controller->email->set_mailtype("html"); 
	$controller->email->to($to);
	$controller->email->subject($subject);  
	$controller->email->message($body);
	

	if ($cc != '') {
		$controller->email->cc($cc);
	}

    // echo $attachment; die;
	if ($attachment != '') {
		$controller->email->attach($attachment);

	}

	if ($controller->email->send()) { 
		return "success";
        // echo $controller->email->print_debugger();
	} else {
		echo $controller->email->print_debugger();
        return "fail"; 
	}
}
  
function contactemailBody($email,$message)
{
    $login_link = "<a href='".base_url()."' >Click Here For Login</a>";  

    $username1 = explode("@", $email);
    if(!empty($username1)){
        $username = $username1[0];
    }else{
        $username = $email;
    }

    $str = "<p>Customer has sent contact details, need to contact.</p><br>"; 
    $str .= "<p>Name : ".$message['name']."</p><br>"; 
    $str .= "<p>Email : ".$message['email']."</p><br>"; 
    $str .= "<p>Subject : ".$message['subject']."</p><br>"; 
    $str .= "<p>Message : ".$message['message']."</p><br>"; 
    $tpl = '<h3>Hi ' .strtoupper($username).'</h3>
        <p>Welcome to '.PROJECT_NAME.'!</p>
        <p>'.$str.'</p> 

        <hr>
        <br> 
        '; 
         $tpl .= '
        <br>
        <br> 
        <p>Regards, <br> 
           '.COMPANY_NAME.' <br> 
        </p>
';
    return $tpl;        
}
 
function emailBody($email,$message)
{
    $login_link = "<a href='".base_url()."' >Click Here For Login</a>";  

    $username1 = explode("@", $email);
    if(!empty($username1)){
        $username = $username1[0];
    }else{
        $username = $email;
    }

    $tpl = '<h3>Hi ' .strtoupper($username).'</h3>
        <p>Welcome to '.PROJECT_NAME.'!</p>
        <p>'.$message.'</p> 

        <hr>
        <br> 
        '; 

        $tpl .= '<p>'.$login_link.'</p>
        <br>
        <br>

        <p>Regards, <br> 
           '.PROJECT_NAME.'  Team <br> 
        </p>
';
    return $tpl;        
}
 



?>