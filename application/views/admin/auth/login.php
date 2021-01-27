<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/admin/plugins/fontawesome-free/css/all.min.css" >
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/admin/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

<!-- jQuery -->
<script src="<?= base_url(); ?>assets/admin/plugins/jquery/jquery.min.js"></script>
  <script src="<?= base_url(); ?>newjs/jquery.validate.min.js"></script>
   
  <style type="text/css">
    .error{
      color:red;
    }
  </style>
  
 

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="<?= base_url('admin'); ?>">
       
        <img alt="We unable to find image"  src="<?= base_url(); ?>assets/admin/img/final1.jpeg" alt="Logo" class="img img-responsive"
      style=" width: 100px;" >
      </a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">

      <?php
          $this->load->view('admin/layout/alert');
      ?>

      <p class="login-box-msg">Login to start your session</p>
      <form action="<?= base_url('admin/auth/login') ?>" method="post" id="login_form" >
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="email" name="email" placeholder="Email" required="" value="<?php if (get_cookie(SESS_PREFIX.'admin_email')) { echo get_cookie(SESS_PREFIX.'admin_email'); } ?>">  
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control"  id="password" name="password" placeholder="Password" required="" value="<?php if (get_cookie(SESS_PREFIX.'admin_password')) { echo get_cookie(SESS_PREFIX.'admin_password'); } ?>" > 
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary"> 
                <input  id="remember_me" name="remember_me" <?php if (get_cookie(SESS_PREFIX.'admin_remember')) { ?> checked="checked" <?php } ?> type="checkbox">  
              <label for="remember_me">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <p class="mb-1">
        <a href="javascript:void(0)">Forgot Password?</a>
      </p>
      
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- Bootstrap 4 -->
<script src="<?= base_url(); ?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url(); ?>assets/admin/js/adminlte.min.js"></script>

</body>
</html>





<script type="text/javascript">
    $(function(){
        $('#login_form').validate({
            rules:{
              email:{
                required:true,
                // email:true,
              },
              password:{
                required:true,
              } 
            },
            messages:{
              email:{
                required:"Enter Email",
                // email:"Enter Valid Email",
              },
              password:{
                required:"Enter Password",
              }
            }
        });
 
    });
</script>