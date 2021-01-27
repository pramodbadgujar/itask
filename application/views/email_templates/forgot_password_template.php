	<!doctype html>
	<html>
	<head>
	<meta name="viewport" content="width=device-width">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><?php echo PROJECT_NAME;?></title>
	<link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
	</head>
	
	<body style="-webkit-font-smoothing: antialiased;  height: 100%;  -webkit-text-size-adjust: none;  width: 100% !important;font-family: 'Bitter', sans-serif;  font-size: 100%;  line-height: 1.6em;  margin: 0;  padding: 100px 0; ">
	
	<!-- body -->
	<table style="padding: 30px;  max-width: 550px; margin:0 auto; background-color:#000; color:#757575; font-size:14px; border-radius: 4px; text-align:center;">
		<thead>
	    	<tr>
	        	<td><!-- <img alt="We unable to find image"  src="<?php echo base_url('assets/images/basic/'.$this->site_detail->site_logo);?>" alt="" height="50"/> --></td>
	        </tr>
	    </thead>
	    <tbody>
		   <?php
	       $link = '<a href="'.base_url('admin/profile/forgot_password_reset_link/'.$code).'" style="padding: 10px 30px;text-decoration: none;margin: 30px auto;display: inline-block;border: none;text-transform: capitalize;color: #fff;border-radius: 3px;-webkit-transition: all 0.3s;-moz-transition: all 0.3s;-ms-transition: all 0.3s;-o-transition: all 0.3s;transition: all 0.3s;font-size: 13px;"> Reset password</a>';
			?>
 
	    	<tr>
	        	<td><h1 style="font-size:24px; color: #37474f; font-weight:400;">Welcome <?php echo $name; ?> </h1></td>
	        </tr>
	        <tr>
	        	<td style="padding-bottom:10px;">
					<?php 
						echo $message ."\n";	 
					?><br>
					<?php echo $link; ?>
				</td>
	        </tr>
			
	    </tbody>
	    <tfoot>
	    	<tr>
	            <td style="color:#afafaf; padding:20px; border-top:1px solid #eef3f4; padding-bottom:0; margin-top:10px;">
				<?php echo PROJECT_NAME.'@'.date("Y");?></td>
	        </tr>
	    </tfoot>
	</table>
	<!-- /body -->
	
	<!-- footer -->
	
	<!-- /footer -->
	
	</body>
	</html>