<link href="assets/css/checkout.css" rel="stylesheet">

<div class="container">
    <div class="col-md-10 col-md-offset-1">

        <form method="post" id="contact_form">
            <?php
            if (isset($_SESSION['cart_item'])) {
                $item_total = 0;

                foreach ($_SESSION['cart_item'] as $item) {
                    $item_total += ($item["product_price"] * $item["quantity"]);

                    ?>
                    <input type="hidden" name="productID" value="<?= $item["id"]; ?>"/>
                    <input type="hidden" name="productQty" value="<?= $item["quantity"]; ?>"/>
                    <input type="hidden" name="productTotal" value="<?= $item["product_price"] * $item["quantity"]; ?>"/>

                    <?php
                }
            }
            ?>
            <div class="name col-md-5">
                <label for="name"></label>
                <input type="text" placeholder="<?= __('My name is')?>" name="name" id="name_input" required>
            </div>
            <div class="email col-md-5">
                <label for="email"></label>
                <input type="email" placeholder="<?= __('My email is')?>" name="email" id="email_input" required>
            </div>
            <div class="telephone col-md-10">
                <label for="phone"></label>
                <input type="text" placeholder="<?= __('My number is')?>" name="telephone" id="telephone_input" required>
            </div>
            <div class="address col-md-10">
                <label for="address"></label>
                <input type="text" placeholder="<?= __('Send package to')?>" name="address" id="address_input" required>
            </div>
            <!-- radio checks -->
            <div class="delivery col-md-10">
                <?= __(('Pay shipping on package arrival')) ?>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="smartpost"/><?= __('Send to Smartpost') ?><br/>
                        <a href="http://uus.smartpost.ee/pakiautomaatide-asukohad"><?= __('List of Smartpost package machines')?></a>
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="Omniva"/><?= __('Send to Omniva')?><br/>
                        <a href="https://www.omniva.ee/era/kaart/asukohad"><?= __('List of Omniva package machines')?></a>
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="errand-boy"/><?= __('Send with errand-boy')?>
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="post office"/><?= __('Send to post office')?>
                    </label>
                </div>
                <div class="radio last">
                    <label>
                        <input type="radio" name="delivery" value="pick it up"/><?= __("I'll pick it up myself")?>
                    </label>
                    <?= __('Free shipping!')?>
                </div>
            </div>

            <div class="message col-md-10">
                <label for="message"></label>
                <textarea name="message" placeholder="<?= __('Additional Information')?>" id="message_input" cols="30"
                          rows="5"></textarea>
            </div>
            <div class="submit col-md-4">
                <input type="submit" value="<?= __('Submit')?>" id="form_button"/>
            </div>
        </form><!-- // End form -->
    </div>
</div>
<script type="text/javascript" src="assets/js/validations.js"></script>
