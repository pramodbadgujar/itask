
<div class="container">

  <div class="row">
    <div class="col-3"></div>
    <div class="col-6">
      <div class="card-body login-card-body">
 

        <p class="login-box-msg">Login to start your session</p>
        <form action="<?= base_url('login') ?>" method="post" id="login_form" >
          <div class="input-group mb-3">
            <input type="text" class="form-control" id="email" name="email" placeholder="Email" required="" >  
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" class="form-control"  id="password" name="password" placeholder="Password" required="" > 
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-8">
              <div class="icheck-primary"> 
                  <input  id="remember_me" name="remember_me" type="checkbox">  
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

</div><!-- row -->
</div>
