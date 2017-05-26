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
                <input type="text" placeholder="My name is" name="name" id="name_input" required>
            </div>
            <div class="email col-md-5">
                <label for="email"></label>
                <input type="email" placeholder="My e-mail is" name="email" id="email_input" required>
            </div>
            <div class="telephone col-md-10">
                <label for="phone"></label>
                <input type="text" placeholder="My number is" name="telephone" id="telephone_input" required>
            </div>
            <div class="address col-md-10">
                <label for="address"></label>
                <input type="text" placeholder="Send package to" name="address" id="address_input" required>
            </div>
            <!-- radio checks -->
            <div class="delivery col-md-10">
                (Pay shipping on package arrival)
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="smartpost"/>Send to Smartpost<br/>
                        <a href="http://uus.smartpost.ee/pakiautomaatide-asukohad">List of Smartpost package machines</a>
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="Omniva"/>Send to Omniva<br/>
                        <a href="https://www.omniva.ee/era/kaart/asukohad">List of Omniva package machines</a>
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="errand-boy"/>Send with errand-boy
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="delivery" value="post office"/>Send to post office
                    </label>
                </div>
                <div class="radio last">
                    <label>
                        <input type="radio" name="delivery" value="pick it up"/>I'll pick it up myself
                    </label>
                    (Free shipping!)
                </div>
            </div>

            <div class="message col-md-10">
                <label for="message"></label>
                <textarea name="message" placeholder="Additional information" id="message_input" cols="30"
                          rows="5"></textarea>
            </div>
            <div class="submit col-md-4">
                <input type="submit" value="Submit" id="form_button"/>
            </div>
        </form><!-- // End form -->
    </div>

</div>