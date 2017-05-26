<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<?= BASE_URL ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title><?= PROJECT_NAME ?></title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/components/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">

    <!-- Custom styles for this template -->


    <!-- jQuery -->
    <script src="vendor/components/jquery/jquery.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->


</head>

<body>

<!-- Fixed navbar -->
<nav id="navbarRegular"
     class="navbar navbar-inverse <?php if ($controller == "home"): ?>navbar-fixed-top <?php endif; ?> navfix"
     role="navigation">
    <div class="container navfix">
        <div id="mobileNav">
            <div class="wrapper">
                <nav class="mobileNav">
                    <ul class="nav text-center">
                        <li>
                            <a <?php
                               if ($controller == "home"): ?>class="active"<?php endif; ?> href="./">Home</a>
                        </li>
                        <li>
                            <a id="Furniture" href="furniture">Furniture</a>
                        </li>
                        <li>
                            <a id="Woodturning" href="woodturning">Woodturning</a>
                        </li>
                        <li>
                            <a id="Sketchbooks" href="sketchbooks">Sketchbooks</a>
                        </li>
                        <li>
                            <a href="about">About</a>
                        </li>
                        <li>
                            <a href="contact">Contact</a>
                        </li>
                        <ul class="nav lang">
                            <li>
                                <a href="#">ENG</a>
                            </li>
                            <li>
                                <a class="lang-sep" href="#">EST</a>
                            </li>
                            <li>
                                <a class="lang-sep" href="#">RUS</a>
                            </li>
                        </ul>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="mobileMenuLink" class="text-center">
            <a>Menu</a>
        </div>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a href="./"><img src="uploads/logo.png" class="navbar-brand"></a>
            <div class="text-right hidden-xs" style="padding-right: 100px">
                <!--<div class="shopping-cart">-->
                <div class="nav languages">
                    <ul class="nav navbar-lang">
                        <li>
                            <a href="#">EST</a>
                        </li>
                        <li>
                            <a class="active" href="#">ENG</a>
                        </li>
                        <li>
                            <a href="#">RUS</a>
                        </li>
                    </ul>
                </div>
                <a class="<?php
                if (isset ($_SESSION['cart_item'])) {
                    if (count($_SESSION['cart_item']) > 0) {
                        echo "cartIcon";
                    } else {
                        echo "hidden";
                    }
                } else {
                    echo "hidden";
                }
                ?>" href="cart" style="position: relative">
                    <img src="uploads/shoppingcart.png" width="35" height="35">

                    <span id="items_in_shopping_cart" data-qty="<?php
                    if (isset($_SESSION['cart_item'])) {
                        echo count($_SESSION['cart_item']);
                    } else {
                        echo 0;
                    } ?>"><?php
                        if (isset($_SESSION['cart_item'])) {
                            echo count($_SESSION['cart_item']);
                        } ?></span>
                </a>
            </div>

        </div>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class=" collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav text-center">
            <li>
                <a href="./">Home</a>
            </li>
            <li>
                <a id="Furniture" href="furniture">Furniture</a>
            </li>
            <li>
                <a id="Woodturning" href="woodturning">Woodturning</a>
            </li>
            <li>
                <a id="Sketchbooks" href="sketchbooks">Sketchbooks</a>
            </li>
            <li>
                <a href="about">About</a>
            </li>
            <li>
                <a href="contact">Contact</a>
            </li>
        </ul>
    </div>
    <hr class="navsep">
    <!-- /.navbar-collapse -->
</nav>


<!-- Main component for a primary marketing message or call to action -->
<?php if (!file_exists("views/$controller/{$controller}_$action.php")) error_out('The view <i>views/' . $controller . '/' . $controller . '_' . $action . '.php</i> does not exist. Create that file.'); ?>
<?php @require "views/$controller/{$controller}_$action.php"; ?>

<!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="vendor/components/bootstrap/js/bootstrap.min.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
<script src="assets/js/semantic.min.js"></script>
</body>
</html>
