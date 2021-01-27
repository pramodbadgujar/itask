<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
   <?php
      $this->load->view ('admin/layout/breadcrumb');
      // echo $role; die;
   ?>
   <section class="content">
      <div class="container-fluid padding-left-30 padding-right-30">
         <!-- SELECT2 EXAMPLE -->
         <div class="card card-info">
            <!-- /.card-header -->
            <form method="post" id="from-add" enctype="multipart/form-data" >
               <div class="card-body">

                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group">
                           <label>Category</label>
                           <select class="form-control" name="category_id" id="category_id" required="" data-rule-required="true" data-msg-required="Please select category.">  
                              <?php $this->Common_model->get_all_categories(); ?>
                            </select>
                        </div>
                     </div>

                  </div>

                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group"> 
                           <label>Name</label>
                           <input type="text" class="form-control" placeholder="Name" name="name" data-rule-required="true" data-msg-required="Please enter name.">
                        </div> 
                     </div>
                  </div>

                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group">
                           <label>Sku</label>
                           <input type="text" class="form-control" placeholder="sku" name="sku" data-rule-required="true" data-msg-required="Please enter sku.">
                        </div> 
                     </div>
                  </div>

                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group"> 
                           <label>Quantity</label>
                           <input type="text" class="form-control" placeholder="quantity" name="quantity" data-rule-required="true" data-msg-required="Please enter quantity.">
                        </div> 
                     </div>
                  </div>

 
                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group"> 
                           <label>Price</label>
                           <input type="text" class="form-control" placeholder="price" name="price" data-rule-required="true" data-msg-required="Please enter price.">
                        </div> 
                     </div>
                  </div>
               
                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group"> 
                           <label>Description</label>
                           <textarea class="form-control" placeholder="Description" name="description" data-rule-required="true" data-msg-required="Please enter Description."></textarea>
                        </div> 
                     </div>
                  </div>
 

                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <div class="form-group"> 
                           <label>Image</label>
                           <input type="file" class="form-control" placeholder="image" name="image" data-rule-required="true" data-msg-required="Please enter image.">
                        </div> 
                     </div>
                  </div> 

                     
                  <div class="row"> 
                     <div class="col-md-2"></div>
                     <div class="col-md-8">
                        <!-- <div class="form-group">  --> 
                        <input type="submit" value="Save" class="btn btn-success">
                        <a href="<?= base_url($list_url); ?>" value="Cancel" class="btn btn-secondary">Cancel</a>
                        <!-- </div> -->
                     </div> 
                  </div>
                  <!-- /.row -->
                  <!-- /.row -->
               </div>
               <!-- /.card-body -->
            </form>
         </div>
         <!-- /.card -->
         <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
   </section>
   <!-- /.content -->
</div>

<!-- Select2 -->





