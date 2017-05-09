<div class="row">
    <div class="col-xs-12 col-md-6" id="productSlider">
        <!-- Top part of the slider -->
        <div class="col-sm-8 col-md-11 col-md-offset-1" id="carousel-bounding-box">
            <div class="carousel slide" id="picCarousel" data-interval="false">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <?php createCarousel(); ?>
                </div><!-- Carousel nav -->
                <a class="left carousel-control" href="#picCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#picCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>

    <div class="col-xs-6 col-md-6">
        <div class="col-md-11">
            <div id='cart_update_info'></div>
            <!--     <h2><?php
            /*                    echo $name;
                                */?></h2>
                <br>
                <text>
                    <?php
            /*                    echo $price . " €";
                                */?></text>-->
            <br>
            <br>
            <text><?php echo $details ?></text>
            <br>
            <br>
            <text><?php echo $quantity . " items left in stock"; ?></text>
            <br>
            <br>
            <?php
            $id= $_GET['id'];
            $product_array = $db_handle->runQuery("SELECT product_code, product_name, product_price FROM product where product_id=$id");
            if (!empty($product_array)) {
                foreach ($product_array as $key => $value) {
                    ?>
                    <form class="item_form" method="post"
                          action="cart.php?action=add&product_code=<?php echo $product_array[$key]["product_code"]; ?>">
                        <div><strong><?php echo $product_array[$key]["product_name"]; ?></strong></div>
                        <div class="product-price"><?php echo $product_array[$key]["product_price"] . "€" ; ?></div>
                        <div><input type="text" name="quantity" value="1" size="2"/><input type="submit"
                                                                                           value="Add to cart"
                                                                                           class="btnAddAction"/>
                        </div>
                    </form>
                    <?php
                }
            }
            ?>
            <!--      <button type="button" class="btn btn-default">
                      <span class="glyphicon glyphicon glyphicon-shopping-cart"></span> Add to cart
                  </button>-->
        </div>
        <div class="col-md-1">
            <a href="furniture.php">
                <span class="glyphicon glyphicon-remove"></span>
            </a>
        </div>
    </div>
</div>
<div class="row">
    <div class="hidden-xs col-md-6" id="slider-thumbs">
        <div class="col-md-11 col-md-offset-1">
            <!-- Bottom switcher of slider -->
            <ul class="hide-bullets">
                <?php
                createThumbnail();
                ?>
            </ul>
        </div>
    </div>
</div>