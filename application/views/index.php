
<div class="container">
    <div class="row">
        <div class="col-12 col-sm-3">
            <div class="card bg-light mb-3">
                <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                <ul class="list-group category_block">
                    <?php 
                    if(!empty($category)){
                        foreach ($category as $rcat) {
                            echo '
                                <li class="list-group-item"><a href="javascript:void(0)">'.$rcat["title"].'</a></li>
                            ';
                        }
                    }
                    ?> 
                </ul>
            </div>
            <div class="card bg-light mb-3">
                <div class="card-header bg-success text-white text-uppercase">Last product</div>
                <div class="card-body">
                    <img class="img-fluid" src="https://dummyimage.com/600x400/55595c/fff" />
                    <h5 class="card-title">Product title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <p class="bloc_left_price">99.00 $</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="row">
                 
                <?php 
                if(!empty($products)){
                    foreach ($products as  $prow) 
                    {
                        echo '
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card">
                                <img class="card-img-top" src="'.base_url($prow['image']).'" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title"><a href="product.html" title="View Product">'.$prow['name'].'</a></h4>
                                    <p class="card-text">'.$prow['description'].'</p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-danger btn-block">'.$prow['price'].' $</p>
                                        </div>
                                        <div class="col">
                                            <a href="javascript:void(0)" onclick="add_to_cart(this,'.$prow['id'].')" class="btn btn-success btn-block">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        ';       
                    }
                }
                else{
                    echo '<div class="col-12"> Product not found.</div>';
                }
                ?>

                <!-- <div class="col-12">
                    <nav aria-label="...">
                        <ul class="pagination">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active">
                                <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div> -->
            </div>
        </div>

    </div>
</div>
