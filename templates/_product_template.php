<div class="container-fluid">
    <div class="customized">
        <?php foreach ($products as $product): ?>
            <div class="col-xs-12 col-md-3 text-center">
            <a href='products/<?= $product['id'] ?>'>
                <img class='img-responsive productimg' src='uploads/<?= $product['product_image'] ?>'
                     alt='<?= $product['product_name'] ?>'/>
                <p><?= $product['product_name'] ?></p>
            </a>
            </div><?php endforeach ?>
    </div>
</div>