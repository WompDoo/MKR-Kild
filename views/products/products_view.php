<div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6" id="productSlider">
        <!-- Top part of the slider -->
        <div class="col-sm-12 col-md-10 col-md-offset-4" id="carousel-bounding-box">
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

    <div class="col-xs-12 col-sm-6 col-md-6">
        <div class="col-md-6 col-md-offset-2">
            <h4><?= __($product['product_name']) ?></h4>
            <h5><?= __($product['product_details']) ?></h5>
            <br>
            <text><?= $product['product_qty'] ?> <?=__('items left in stock')?></text>
            <form method="post" name="productForm" class="item_form"">
            <div><input type="hidden" name="id" value="<?= $product['id'] ?>" /></div>
                <div><input type="hidden" value="<?= $product['product_name'] ?>"/></div>
                <div class="product-price"><?= $product['product_price'] ?>€</div>
                <input class="qtyInput"  type="number" name="quantity" value="1" size="2"/>
                <input type="submit"
                       value="<?= __('Add to cart')?>"
                       class="btnAddAction"/>
            </form>
            <div id='cart_update_info'>
            </div>

        </div>
        <div class="col-md-1 hidden-xs xClass">
            <a href="javascript:history.back(1);">
               <img src="uploads/X.png" style="width:63%" />
            </a>
        </div>
    </div>
</div>
<div class="row">
    <div class="hidden-xs col-md-3 col-md-offset-1 underCarousel" id="slider-thumbs">
        <div class="col-md-11 col-md-offset-2">
            <!-- Bottom switcher of slider -->
            <ul class="hide-bullets thumbs">
                <?php
                $n = 0;
                foreach ($product->ownProductthumbList as $image): ?>
                    <li>
                        <div class="thumbnail" id="carousel-selector-<?= $n++; ?>">
                            <img src="uploads/<?= $image->image_path ?>"></div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>
