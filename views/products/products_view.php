<div class="row">
    <div class="col-xs-12 col-md-6" id="productSlider">
        <!-- Top part of the slider -->
        <div class="col-sm-8 col-md-11 col-md-offset-1" id="carousel-bounding-box">
            <div class="carousel slide" id="picCarousel" data-interval="false">
                <!-- Carousel items -->
                <div class="carousel-inner">

                    <?php
                    $n = 0;
                    foreach ($product->ownProductthumbList as $image): ?>
                        <div class="<?= ($n == 0) ? 'item active' : 'item'; ?> data-slide-number=<?= $n++; ?>">
                            <img src="uploads/<?= $image->image_path ?>"></div>
                    <?php endforeach; ?>
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
            <!--     <h2></h2>
                 <br>
                 <text>
                     </text>-->
            <text><?= $product['product_details'] ?></text>
            <br>
            <text><?= $product['product_qty'] ?> items left in stock</text>
            <form class="item_form" method="post"
                  action="cart.php?action=add&product_code=TC102">
                <div><strong><?= $product['product_name'] ?></strong></div>
                <div class="product-price"><?= $product['product_price'] ?>€</div>
                <div><input type="text" name="quantity" value="1" size="2"/><input type="submit"
                                                                                   value="Add to cart"
                                                                                   class="btnAddAction"/>
                </div>
            </form>
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
                $n = 0;
                foreach ($product->ownProductthumbList as $image): ?>
                    <li class='col-sm-2'>
                        <div class="thumbnail" id="carousel-selector-<?= $n++; ?>">
                            <img src="uploads/<?= $image->image_path ?>"></div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>
