<?php
namespace Halo;

class Checkout extends Controller
{

    function index()
    {
        session_name('cart_item');
        if (PHP_SESSION_ACTIVE != true) {
            session_start();
        }
    }

    function ajax_sendOrder()
    {
        if (isset($_SESSION['cart_item'])) {
            $total = 0;
            $cart = $_SESSION['cart_item'];

                $arr = array();
                $productID = $_POST['productID'];
                $productQty = $_POST['productQty'];
                $productTotal = $_POST['productTotal'];
                $name = $_POST['name'];
                $email = $_POST['email'];
                $phone = $_POST['telephone'];
                $address = $_POST['address'];
                $delivery = $_POST['delivery'];
                $comment = $_POST['message'];

            foreach ($_SESSION['cart_item'] as $item) {

                $total += ($item["product_price"] * $item["quantity"]);
                //$cart = $_SESSION['cart_item'];
            }

                \R::exec("INSERT INTO `order`( name, email, phone, address, delivery, comments, total) VALUES ('$name', '$email', '$phone', '$address', '$delivery', '$comment', $total)");

                $newid = \R::getInsertID();

                    //for ($i = 0; $i < count($_SESSION['cart_item']); $i++) {
                    foreach ($_SESSION['cart_item'] as $item) {
                        \R::exec("INSERT INTO orderitem( order_id, product_id, nitem, total) VALUES($newid, $item[id], $item[quantity], $item[product_price] * $item[quantity])");
                    }

        } unset($_SESSION['cart_item']);
    }
}
