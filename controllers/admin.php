<?php

namespace Halo;

use \MKR\Products;
use \MKR\About;


class admin extends Controller
{
    public $template = 'admin';
    public $requires_auth = true;

    function index()
    {
        $this->products = Products::getAll();
        $this->product_types = Products::getAllProductTypes();
        $this->orders = Products::getOrders();

    }


    function ajax_addStock()
    {
        $id = $_POST['id'];
        \R::exec("UPDATE product SET product_qty = product_qty + 1 WHERE id = '$id'");

    }

    function ajax_rmvStock()
    {
        $id = $_POST['id'];
        \R::exec("UPDATE product SET product_qty = product_qty - 1 WHERE id = '$id' AND product_qty > 0");

    }

    function ajax_destroyStock()
    {
        $id = $_POST['id'];
        \R::exec("DELETE FROM product WHERE id = '$id'");

    }

    function ajax_createStock()
    {
        $name = $_POST["name"];
        $price = $_POST["price"];
        $qty = $_POST["qty"];
        $description = $_POST["description"];
        $category = $_POST['category'];

        \R::exec("INSERT INTO product (product_name, product_type_id, product_details, product_price, product_qty)
VALUES ('$name', '$category', '$description', $price, $qty)");

    }

    function furniture()
    {
        $this->products = Products::get(Products::FURNITURE);
    }

    function woodturning()
    {
        $this->products = Products::get(Products::WOODTURNING);
    }

    function sketchbooks()
    {
        $this->products = Products::get(Products::SKETCHBOOKS);
    }

    function home()
    {
        $this->backgrounds = About::getBackground();
    }

    function getImages()
    {
        $filenameArray = [];
        $dir = 'uploads/background';
        $handle = opendir($dir);
        while ($file = readdir($handle)) {
            if ($file !== '.' && $file !== '..') {
                array_push($filenameArray, "uploads/background/" . $file);
            }
        }

        exit (json_encode($filenameArray));
    }

    function upload()
    {
        if (!file_exists('uploads/background/')) {
            mkdir('uploads/background/', 0777, true);
        }
        $total = count($_FILES['file']['name']);
        for ($i = 0; $i < $total; $i++) {
            if (file_exists('uploads/background/' . $_FILES['file']['name'])) {
            } else {
                move_uploaded_file($_FILES['file']['tmp_name'], 'uploads/background/' . $_FILES['file']['name']);
            }
        }
        exit ();
    }

    function uploadThumb()
    {
        if (!file_exists('uploads/thumbs/')) {
            mkdir('uploads/thumbs/', 0777, true);
        }
        $total = count($_FILES['file']['name']);
        for ($i = 0; $i < $total; $i++) {
            if (file_exists('uploads/thumbs/' . $_FILES['file']['name'])) {
            } else {
                move_uploaded_file($_FILES['file']['tmp_name'], 'uploads/thumbs/' . $_FILES['file']['name']);
            }
        }
        exit ();
    }

    function uploadContact()
    {
        if (!file_exists('uploads/contact/')) {
            mkdir('uploads/contact/', 0777, true);
        }
        $total = count($_FILES['file']['name']);
        for ($i = 0; $i < $total; $i++) {
            if (file_exists('uploads/contact/' . $_FILES['file']['name'])) {
            } else {
                move_uploaded_file($_FILES['file']['tmp_name'], 'uploads/contact/' . $_FILES['file']['name']);
            }
        }
        exit ();
    }

    function about()
    {
        $this->about = About::getAbout();
        $this->description = About::getDescription();
    }

    function contact()
    {
        $this->contact = About::getContact();
    }

    function ajax_addContact()
    {

        $name = $_POST["contactName"];
        $description = $_POST["description"];
        $picture = $_POST["picture"];


        \R::exec("INSERT INTO contact (name, description, picture)
VALUES ('$name', '$description', '$picture')");

    }

    function ajax_rmvContact()
    {
        $id = $_POST['id'];
        \R::exec("DELETE FROM contact WHERE contact_id = '$id'");

    }

    function logout()
    {
        session_destroy();
        header('Location: ' . BASE_URL);
        exit();
    }

    function updateAbout()
    {
        $desc = $_POST['n1'];
        \R::exec("UPDATE description SET description ='$desc' WHERE description.id = 1;");
        exit();
    }

    function ajax_addSection()
    {

        $heading = $_POST["heading"];
        $text = $_POST["text"];
        $picture = $_POST["picture"];


        \R::exec("INSERT INTO about (heading, text, picture)
VALUES ('$heading', '$text', '$picture')");


    }

    function ajax_rmvSection()
    {
        $id = $_POST['id'];
        $query = \R::getAll('SELECT * FROM about');
        $image = $query['picture'];
        var_dump($query);
        //$image = ('uploads/thumbs/' . $quersy);
        unlink($image);
        \R::exec("DELETE FROM about WHERE about_id = '$id'");


    }

    function ajax_changeBackground()
    {
        $background = $_POST['background'];
        \R::exec("INSERT INTO homebackground (background)
VALUES ('$background')");


    }

    function ajax_emptyBackground()
    {
        \R::exec("TRUNCATE TABLE homebackground");
    }

    function ajax_destroyOrder()
    {
        $id = $_POST['id'];
        \R::exec("DELETE FROM `order` WHERE id = '$id'");
    }

    function ajax_orderDone()
    {
        $id = $_POST['id'];
        $qty = $_POST['qty'];
        \R::exec("UPDATE product SET product_qty ='$qty' WHERE id = '$id'");
    }

}