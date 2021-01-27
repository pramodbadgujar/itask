
<div class="container">

    <!--Section: Block Content-->
<section>

  <!--Grid row-->
  <div class="row">

    <!--Grid column-->
    <div class="col-lg-8">

      <!-- Card -->
    <form method="post" id="frm_order"> 
      <div class="mb-3">
        <div class="pt-4 wish-list">
            <?php 
            // print_r($products);
            ?>
          <h5 class="mb-4">Cart (<span><?= @count($this->cart->contents()); ?></span> items)</h5>

          <?php 
            $total =0;
          if(!empty($products)){
            foreach ($products as  $prow) 
            {
                echo '<div class="row mb-4">
                        <div class="col-md-5 col-lg-3 col-xl-3">
                          <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                            <img class="img-fluid w-100" src="'.base_url($prow['image']).'" alt="Sample"> 
                          </div>
                        </div>
                        <div class="col-md-7 col-lg-9 col-xl-9">
                          <div>
                            <div class="d-flex justify-content-between">
                              <div>
                                <h5>'.$prow['name'].'</h5>
                                <p class="mb-3 text-muted text-uppercase small">'.$prow['description'].'</p> 
                              </div>
                              <div>
                                <div class="def-number-input number-input safari_only mb-0 w-100">
                                  <button onClick="plus_cart_qty(this,'.$prow['id'].')" class="fa fa-plus">+</button>

                                  <input class="quantity" min="0" name="quantity" value="'.$prow['qty'].'" type="text">

                                  <button onClick="minus_cart_qty(this,'.$prow['id'].')" class="fa fa-minus">-</button>
                                </div>
                                <small id="passwordHelpBlock" class="form-text text-muted text-center">
                                  (Note, 1 piece)
                                </small>
                              </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                              <div>
                                <a href="'.base_url('welcome/remove_cart/').$prow['rowid'] .'" type="button" class="card-link-secondary small text-uppercase mr-3"><i
                                    class="fas fa-trash-alt mr-1"></i> Remove item </a>
                              </div>
                              <p class="mb-0"><span><strong id="summary">$'.$prow['price'].'</strong></span></p class="mb-0">
                            </div>
                          </div>
                        </div>
                      </div>
                      <hr class="mb-4">';
                $total +=$prow['subtotal'];
            }
          }else{
            echo '<div class="row mb-4">Your cart is empty</div>';
          }
          ?> 
             
        </div>
      </div>
      <!-- Card -->
 
        <div class="mb-3">
            <div class="pt-4 wish-list">
                <h4> Shipping Details</h4>
                <textarea id="shipping_address" name="shipping_address" class="form-control" placeholder="Enter shipping address"></textarea>
            </div>
        </div>
      <hr class="mb-4">

      <!-- Card -->
      <div class="mb-3">
        <div class="pt-4">

          <h5 class="mb-4">We accept</h5>

            <input type="radio" name="cash_on_delivery" id="cash_on_delivery" checked><h5>Cash On Delivery</h4>

          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
            alt="Visa">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
            alt="American Express">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
            alt="Mastercard">
          <img class="mr-2" width="45px"
            src="https://mdbootstrap.com/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
            alt="PayPal acceptance mark">
        </div>
      </div>
      <!-- Card -->

    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4">

      <!-- Card -->
      <div class="mb-3">
        <div class="pt-4">

          <h5 class="mb-3">The total amount of</h5>

          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
              Temporary amount
              <span>$<?= $total; ?></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center px-0">
              Shipping
              <span>Free</span>
            </li>
            <!-- <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
              <div>
                <strong>The total amount of</strong>
                <strong>
                  <p class="mb-0">(including VAT)</p>
                </strong>
              </div>
              <span><strong>$53.98</strong></span>
            </li> -->
          </ul>

          <button type="button" onClick="place_order(this)" class="btn btn-primary btn-block">Place Order</button>

        </div>
      </div>
  </form>
      <!-- Card -->

    
    </div>
    <!--Grid column-->

  </div>
  <!-- Grid row -->

</section>
<!--Section: Block Content-->

</div>
