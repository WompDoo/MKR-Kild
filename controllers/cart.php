<?php
namespace Halo;

class Cart extends Controller
{

    function index()
    {
        session_name('cart_item');
        if (PHP_SESSION_ACTIVE != true) {
            session_start();
        }
    }

    function ajax_addToCart()
    {

        $id = $_POST['id'];

        if (!empty($_POST["quantity"])) {
            $productById = \R::getAll("SELECT * FROM product WHERE id= $id");
            $itemArray = array($productById[0]["id"] => array('product_name' => $productById[0]["product_name"], 'id' => $productById[0]["id"], 'product_code' => $productById[0]["product_code"], 'quantity' => $_POST["quantity"], 'product_price' => $productById[0]["product_price"]));

            if (!empty($_SESSION['cart_item'])) {
                if (in_array($productById[0]["id"], array_keys($_SESSION['cart_item']))) {
                    foreach ($_SESSION['cart_item'] as $k => $v) {
                        if ($productById[0]["id"] == $k) {
                            if (empty($_SESSION['cart_item'][$k]["quantity"])) {
                                $_SESSION['cart_item'][$k]["quantity"] = 0;
                            }
                            $_SESSION['cart_item'][$k]["quantity"] += $_POST["quantity"];
                        }
                    }
                } else {
                    $_SESSION['cart_item'] = array_merge($_SESSION['cart_item'], $itemArray);
                }
            } else {
                $_SESSION['cart_item'] = $itemArray;
            }
        }
    }


    function ajax_removeFromCart()
    {

        if (!empty($_SESSION["cart_item"])) {
            foreach ($_SESSION["cart_item"] as $k => $v) {
                if ($_POST["id"] == $k)
                    unset($_SESSION["cart_item"][$k]);
                if (empty($_SESSION["cart_item"]))
                    unset($_SESSION["cart_item"]);
            }
        }
    }

    function ajax_emptyCart()
    {
        unset($_SESSION['cart_item']);
    }

}

