<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head> 
  	<title><?= $title; ?></title>
  <style type="text/css">
    
    .bloc_left_price {
        color: #c01508;
        text-align: center;
        font-weight: bold;
        font-size: 150%;
    }
    .category_block li:hover {
        background-color: #007bff;
    }
    .category_block li:hover a {
        color: #ffffff;
    }
    .category_block li a {
        color: #343a40;
    }
    .add_to_cart_block .price {
        color: #c01508;
        text-align: center;
        font-weight: bold;
        font-size: 200%;
        margin-bottom: 0;
    }
    .add_to_cart_block .price_discounted {
        color: #343a40;
        text-align: center;
        text-decoration: line-through;
        font-size: 140%;
    }
    .product_rassurance {
        padding: 10px;
        margin-top: 15px;
        background: #ffffff;
        border: 1px solid #6c757d;
        color: #6c757d;
    }
    .product_rassurance .list-inline {
        margin-bottom: 0;
        text-transform: uppercase;
        text-align: center;
    }
    .product_rassurance .list-inline li:hover {
        color: #343a40;
    }
    .reviews_product .fa-star {
        color: gold;
    }
    .pagination {
        margin-top: 20px;
    }
    footer {
        background: #343a40;
        padding: 40px;
    }
    footer a {
        color: #f8f9fa!important
    }


  </style>
  <link href="<?= base_url('newjs'); ?>/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="<?= base_url('newjs'); ?>/bootstrap.min.js"></script>
  <script src="<?= base_url('newjs'); ?>/jquery.min.js"></script>
  <script src="<?= base_url('newjs'); ?>/cartjs.js"></script>
  <!------ Include the above in your HEAD tag ---------->

  <link href="<?= base_url('newjs'); ?>/font-awesome.min.css" rel="stylesheet">

  <script type="text/javascript">
              

        function add_to_cart(th , id)
        {

            $.ajax({
                url:"<?= base_url('welcome/add_to_cart') ?>",
                type:"post",
                data:{"id":id}, 
                success:function(res){
                    res = JSON.parse(res); 
                    if(res.status == 'true'){
                        $("#cart_count").html(res.count);
                        alert("product added to cart");
                    }
                    else if(res.status == 'false' ){
                        alert("product already exist in cart");
                    }else { 
                        alert("try again");
                    }
                }
            });
        }

        function plus_cart_qty(th , id)
        {

            $.ajax({
                url:"<?= base_url('welcome/plus_cart_qty') ?>",
                type:"post",
                data:{"id":id}, 
                success:function(res){
                    res = JSON.parse(res); 
                    if(res.status == 'true'){
                        $(".quantity").val(res.count);
                        alert("Cart updated");
                    }
                    else if(res.status == 'false' ){
                        alert("try again");
                    }else { 
                        alert("try again");
                    }
                }
            });
        }

        function minus_cart_qty(th , id)
        {

            $.ajax({
                url:"<?= base_url('welcome/minus_cart_qty') ?>",
                type:"post",
                data:{"id":id}, 
                success:function(res){
                    res = JSON.parse(res); 
                    if(res.status == 'true'){
                        $(".quantity").val(res.count);
                        alert("Cart updated");
                    }
                    else if(res.status == 'false' ){
                        alert("try again");
                    }else { 
                        alert("try again");
                    }

                    if(res.count == 0){
                        location.reload(true);
                    }

                }
            });
        }

        function place_order(th)
        {

            if("<?= $this->session->userdata(SESS_PREFIX.'user_id'); ?>" == "")
            {
                alert('Try after login.');
                window.location.href = "<?= base_url('login'); ?>";
            }else{ 

                shipping_address = $("#shipping_address").val();
                if(shipping_address == ""){ 
                    alert('Enter shipping address.');

                }
                else
                { 
                    $.ajax({
                        url:"<?= base_url('welcome/place_order') ?>",
                        type:"post",
                        data:{"shipping_address":shipping_address}, 
                        success:function(res){
                            res = JSON.parse(res); 
                            if(res.status == 'success'){ 
                                alert(res.message);
                            }
                            else if(res.status == 'user_log' ){
                                alert(res.message);
                            }else if(res.status == 'cart_empty' ){
                                alert(res.message);
                            }else { 
                                alert(res.message);
                            } 


                            location.reload(true);
                         
                        }
                    });
                }
            }
        }

  </script>
</head>
<body>


<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="<?= base_url(); ?>">Simple Ecommerce</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<?= base_url() ?>">Home</a>
                </li>
                <!-- <li class="nav-item ">
                    <a class="nav-link" href="category.html">Categories <span class="sr-only">(current)</span></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="product.html">Product</a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('welcome/cart'); ?>">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
                <?php 
                $logid = $this->session->userdata(SESS_PREFIX.'user_id');
                if(!empty($logid)){
 
                ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('login/logout'); ?>">Logout</a>
                    </li>
                <?php } ?>
            </ul>

            <form class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="<?= base_url('welcome/cart'); ?>">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light" id="cart_count"> <?= @count($this->cart->contents()); ?></span>
                </a>
            </form>
        </div>
    </div>
</nav>
<?php  if($this->router->fetch_class() =="welcome" && $this->router->fetch_method() =="index" ){ ?>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">E-COMMERCE </h1>
        <p class="lead text-muted mb-0">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte...</p>
    </div>
</section> 
<?php }else{ echo "<div clss='row'> </div><br>";} ?>
<div class="container">
    <div class="row">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><?= $current_page?></a></li> 
                </ol>
            </nav>
        </div>
    </div>
</div>