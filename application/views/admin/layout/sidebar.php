<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
   <!-- Brand Logo -->
   <a href="javascript:void(0)" class="brand-link">
   <img alt="We unable to find image"  src="<?= base_url(); ?>assets/admin/img/final1.jpeg" alt="Logo" class="brand-image img-circle elevation-3"
      style="">
   <span class="brand-text font-weight-light"><?= PROJECT_NAME; ?> - Admin</span>
   </a>
   <!-- Sidebar -->
   <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
         <div class="image">
            <?php 
            $proImg = $this->session->userdata(SESS_PREFIX.'admin_image');
            if ($proImg=='') {
               $img = 'AdminLTELogo.png';
            }else{
               $img = $proImg;
            } 
            ?>
            <img alt="We unable to find image"  src="<?php echo base_url(); ?><?php echo $img; ?>" class="img-circle elevation-2" alt="User Image">
         </div>
         <div class="info">
            <a href="javascript:void(0)" class="d-block">
               <?php echo ucfirst($this->session->userdata(SESS_PREFIX.'admin_name')); ?> 
            </a>
         </div>
      </div>
      <!-- Sidebar Menu -->

      <?php 
      $user_id = $this->session->userdata[SESS_PREFIX.'admin_user_id']; 
      ?>

      <nav class="mt-2">
         <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview">
               <a href="<?= base_url('admin/dashboard'); ?>" class="nav-link <?php echo $this->router->fetch_class() == 'dashboard' ? 'active' : ''; ?>">
                  <i class="nav-icon fas fa-tachometer-alt"></i>
                  <p>
                     Dashboard
                  </p>
               </a>
            </li>

          

          <li class="nav-item has-treeview">
            <a href="#" class="nav-link ">
               <i class="nav-icon fas fa-users"></i>
               <p>
                  Manage Admin Users
                  <i class="fas fa-angle-left right"></i>
               </p>
            </a>
            <ul class="nav nav-treeview">

               <li class="nav-item">
                  <a href="<?= base_url('admin/users'); ?>" class="nav-link <?php echo $this->router->fetch_class() == 'users' && $this->router->fetch_method() == 'index' ? 'active' : ''; ?>">
                     <i class="far fa-circle nav-icon"></i>
                     <p>User List</p>
                  </a>
               </li>  
 
            </ul>
         </li>  


             <li class="nav-item has-treeview">
               <a href="#" class="nav-link ">
                  <i class="nav-icon fas fa-blog"></i>
                  <p>
                     Manage Products
                     <i class="fas fa-angle-left right"></i>
                  </p>
               </a>
               <ul class="nav nav-treeview">

                  <li class="nav-item">
                     <a href="<?= base_url('admin/products'); ?>" class="nav-link <?php echo $this->router->fetch_class() == 'products' && $this->router->fetch_method() == 'index' ? 'active' : ''; ?>">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Products List</p>
                     </a>
                  </li>  

                  <li class="nav-item">
                     <a href="<?= base_url('admin/products/add'); ?>" class="nav-link  <?php echo $this->router->fetch_class() == 'products' && $this->router->fetch_method() == 'products' || $this->router->fetch_method() == 'edit' ? 'active' : ''; ?> ">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Products Add</p>
                     </a>
                  </li> 
               </ul>
            </li>  


             <li class="nav-item has-treeview">
               <a href="#" class="nav-link ">
                  <i class="nav-icon fas fa-mobile"></i>
                  <p>
                     Manage Orders
                     <i class="fas fa-angle-left right"></i>
                  </p>
               </a>
               <ul class="nav nav-treeview">

                  <li class="nav-item">
                     <a href="<?= base_url('admin/orders'); ?>" class="nav-link <?php echo $this->router->fetch_class() == 'orders' && $this->router->fetch_method() == 'index' ? 'active' : ''; ?>">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Orders List</p>
                     </a>
                  </li>   
                  
               </ul>
            </li>  


         <li class="nav-item has-treeview">
            <a href="<?= base_url('admin/auth/logout'); ?>" class="nav-link">
               <i class="nav-icon fas fa-sign-out-alt"></i>
               <p>
                  Logout
               </p>
            </a>
         </li>

         </ul>
      </nav>
      <!-- /.sidebar-menu -->
   </div>
   <!-- /.sidebar -->
</aside>