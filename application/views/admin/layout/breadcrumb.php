<!-- Content Header (Page header) -->
   <section class="content-header">
      <div class="container-fluid padding-left-30 padding-right-30">
         <?php
            $this->load->view ('admin/layout/alert');
         ?>
         <div class="row">
            <?php if($this->router->method == 'add' || $this->router->method == 'edit') { ?>

               <div class="col-sm-6">
                  <h1><?php echo isset($page_title) ? $page_title : 'N/A';  ?></h1>
               </div>
               <div class="col-sm-6">
                  <ol class="breadcrumb float-sm-right">
                     <li class="breadcrumb-item"><a href="<?= base_url($par1_url); ?>"><?php echo isset($par1) ? $par1 : 'N/A';  ?></a></li>
                     <li class="breadcrumb-item"><a href="<?= base_url($par2_url); ?>"><?php echo isset($par2) ? $par2 : 'N/A';  ?></a></li>
                     <li class="breadcrumb-item active"><?php echo isset($page_title) ? $page_title : 'N/A';  ?></li>
                  </ol>
               </div>

            <?php }else { ?>
               <div class="col-sm-6">
                  <h1><?php echo isset($page_title) ? $page_title : 'N/A';  ?></h1>
               </div>
               <div class="col-sm-6">
                  <ol class="breadcrumb float-sm-right">
                     <li class="breadcrumb-item"><a href="<?= base_url($par2_url); ?>"><?php echo isset($par2) ? $par2 : 'N/A';  ?></a></li>
                     <li class="breadcrumb-item active"><?php echo isset($page_title) ? $page_title : 'N/A';  ?></li>
                  </ol>
               </div>
            <?php } ?>
         </div>
      </div>
      <!-- /.container-fluid -->
   </section>
<!-- Main content -->