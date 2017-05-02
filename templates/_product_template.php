<div class="row">
    <div class="col-md-12 text-center">
        <?php foreach ($products as $product): ?>
            <div class="col-xs-6 col-md-4">
                <a href='products/<?=$product['product_id']?>'>
                    <img class='productimg' src='uploads/<?=$product['product_image']?>' alt='<?=$product['product_name']?>'/>
                    <figcaption><?=$product['product_name']?> <br>
                        <?=$product['product_price']?>€
                    </figcaption>
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>
