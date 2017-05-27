<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<?= BASE_URL ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
    <meta name="description"
          content="Three friends who share a passion for the wood. With this material,
           we carry out all our ideas - from small details to furniture.
            If you find something interesting on our site or want something made
             according to your own design, please contact us and let's carry out your idea.">
    <meta name="keywords" content="MKR, MKR Kild, woodturning, furniture, sketchbooks, wooden products, handmade">

    <title><?= PROJECT_NAME ?></title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/components/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/formValidation.min.css" rel="stylesheet">
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

<!-- Navbar -->
<nav id="navbarRegular"
     class="navbar navbar-inverse <?php
     if ($controller == "home"): ?> navbar-fixed-top <?php endif; ?> navfix"
     role="navigation">
    <div class="container navfix">
        <div id="mobileNav">
            <div class="wrapper">
                <nav class="mobileNav">
                    <ul class="nav text-center">
                        <li>
                            <a class="<?= $controller == 'home' ? 'active' : '' ?>" href="./">Home</a>
                        </li>

                        <li>
                            <a id="Furniture" href="furniture"
                               class="<?= $controller == 'furniture' ? 'active' : '' ?>"><?= __('Furniture') ?></a>
                        </li>
                        <li>
                            <a class="<?= $controller == 'woodturning' ? 'active' : '' ?>" id="Woodturning" href="woodturning"><?= __('Woodturning') ?></a>
                        </li>
                        <li>
                            <a class="<?= $controller == 'sketchbooks' ? 'active' : '' ?>" id="Sketchbooks" href="sketchbooks"><?= __('Sketchbooks') ?></a>
                        </li>
                        <li>
                            <a class="<?= $controller == 'about' ? 'active' : '' ?>" href="about"><?= __('About') ?></a>
                        </li>
                        <li>
                            <a class="<?= $controller == 'contact' ? 'active' : '' ?>" href="contact"><?= __('Contact') ?></a>
                        </li>
                        <li>
                            <a class="cartinfo <?php
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

                                <span id="items_in_shopping_cart" style="color:black" data-qty="<?php
                                if (isset($_SESSION['cart_item'])) {
                                    echo count($_SESSION['cart_item']);
                                } ?>"><?php
                                    echo count($_SESSION['cart_item']);
                                    ?></span>
                            </a>
                        </li>
                        <ul class="nav lang">
                            <?php foreach ($supported_languages as $language) : ?>
                                <li>
                                    <a <?= $language == $_SESSION['language'] ? 'class="active"' : '' ?> href="<?= $_SERVER['REQUEST_URI'] . "?language=$language" ?>"><?= $language ?></a>
                                </li>
                            <?php endforeach; ?>
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
                        <?php foreach ($supported_languages as $language) : ?>
                            <li>
                                <a <?= $language == $_SESSION['language'] ? 'class="active"' : '' ?> href=<?= "$controller/$action/" .implode("/", $params) . "?language=$language" ?> > <?= $language ?></a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <a class="cartinfo <?php
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

                    <span id="items_in_shopping_cart" style="color:black" data-qty="<?php
                    if (isset($_SESSION['cart_item'])) {
                        echo count($_SESSION['cart_item']);
                    } ?>"><?php
                        if (isset($_SESSION['cart_item'])) {
                        echo count($_SESSION['cart_item']);
                        }
                        ?></span>
                </a>
            </div>

        </div>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class=" collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="sticknav nav navbar-nav text-center">
            <li>
                <a class="<?= $controller == 'home' ? 'active' : '' ?>" href="./"><?= __('Home') ?></a>
            </li>
            <li>
                <a class="<?= $controller == 'furniture' ? 'active' : '' ?>" id="Furniture" href="furniture"><?= __('Furniture') ?></a>
            </li>
            <li>
                <a class="<?= $controller == 'woodturning' ? 'active' : '' ?>" id="Woodturning" href="woodturning"><?= __('Woodturning') ?></a>
            </li>
            <li>
                <a class="<?= $controller == 'sketchbooks' ? 'active' : '' ?>" id="Sketchbooks" href="sketchbooks"><?= __('Sketchbooks') ?></a>
            </li>
            <li>
                <a class="<?= $controller == 'about' ? 'active' : '' ?>" href="about"><?= __('About') ?></a>
            </li>
            <li>
                <a class="<?= $controller == 'contact' ? 'active' : '' ?>" href="contact"><?= __('Contact') ?></a>
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
<?php
if ($controller == "home"): ?>
    <footer class="footer">
        <div class="row">
            <div class="group-social col-md-4 col-md-offset-5 text-center">
                <div class="col-xs-6 col-md-2">
                    <a href="https://www.facebook.com/MKRKILD/">
                        <img src="./uploads/facebook.png" width="30" height="30"/>
                    </a>
                </div>
                <div class="socialborder col-xs-6 col-md-2">
                    <a href="#">
                        <img src="./uploads/instagram.png" width="28" height="28"/>
                    </a>
                </div>
                <div class="socialborder col-xs-6 col-md-2">
                    <a href="#">
                        <img src="./uploads/google.png" width="33" height="25"/>
                    </a>
                </div>
            </div>
        </div>
    </footer> <?php endif; ?>
<?php
if ($controller != "home"): ?>
<hr class="footsep"/>
<footer class="footer2">
    <div class="row">
        <div class="group-social2 col-md-4 col-md-offset-5 text-center">
            <div class="col-xs-6 col-md-2">
                <a href="https://www.facebook.com/MKRKILD/">
                    <img src="./uploads/facebook.png" width="30" height="30"/>
                </a>
            </div>
            <div class="col-xs-6 col-md-2 socialborder">
                <a href="#">
                    <img src="./uploads/instagram.png" width="28" height="28"/>
                </a>
            </div>
            <div class="col-xs-6 col-md-2 socialborder">
                <a href="#">
                    <img src="./uploads/google.png" width="33" height="25"/>
                </a>
            </div>
        </div>
    </div>
</footer><?php endif; ?>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="vendor/components/bootstrap/js/bootstrap.min.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
<script src="assets/js/semantic.min.js"></script>
<script src="assets/js/formValidation.min.js"></script>
<script src="assets/js/bootstrapForm.min.js"></script>
</body>
</html>
