<div class="container">
    <div class="row">
        <div class="col-md-11 col-md-offset-1">
            <div class="txt-heading"><h2>Shopping Cart</h2></div>
            <div id="shopping-cart" class="col-md-8">
                <div id="shopping-cart-refresh">
                    <?php
                    if (isset($_SESSION['cart_item'])) {
                    $item_total = 0;
                    ?>
                    <table id="inCart" cellpadding="10" cellspacing="1" class="table table-responsive">
                        <a id="btnEmpty" class="button">Empty
                            Cart</a>
                        <tbody>
                        <tr>
                            <th><strong>Name</strong></th>
                            <th><strong>Quantity</strong></th>
                            <th><strong>Price</strong></th>
                            <th><strong>Action</strong></th>
                        </tr>
                        <?php
                        foreach ($_SESSION['cart_item'] as $item) {
                            ?>
                            <tr data-id="<?= $item['id']; ?>">
                                <td>
                                    <strong><?php echo $item["product_name"]; ?></strong></td>
                                    <td><?php echo $item["quantity"]; ?></td>
                                <td><?php echo "€" . $item["product_price"] * $item["quantity"]; ?></td>
                               <td><a class="btnRemoveAction">Remove Item</a></td>
                            </tr>
                            <?php
                            $item_total += ($item["product_price"] * $item["quantity"]);
                            }
                        ?>

                        <tr>
                            <td colspan="5" align=right><strong>Total:</strong> <?php echo "€" . $item_total; ?>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" align="right">
                                <a href='checkout' title="Review Cart and Check Out">
                                    <button type="button" class="btn checkoutButton">Checkout</button>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>