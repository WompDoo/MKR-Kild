<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<?= BASE_URL ?>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MKR Kild</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/components/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/semantic.min.css" rel="stylesheet">
    <link href="assets/css/image-picker.css" rel="stylesheet">
    <link href="assets/css/icon.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <?php if ($controller == "admin" && $action == "index"): ?>
        <link href="assets/css/admin.css" rel="stylesheet">
    <?php elseif ($action != "index"): ?>
        <link href="assets/css/main.css" rel="stylesheet">
    <?php endif; ?>
    <?php if ($action == "home"): ?>
        <link href="assets/css/fix.css" rel="stylesheet">
    <?php endif; ?>


    <script src="vendor/components/jquery/jquery.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<?php if ($action != "index"): ?>
    <button id="hiddenBtn" class="btn btnColor">
        <i class="glyphicon glyphicon-cog"></i>
    </button>
<?php endif; ?>
<nav id="adminNavbar" class="navbar navbar-default navbar-fixed-top topbar" role="admin">
    <div class="container-fluid">

        <div class="navbar-header">

            <a href="admin" class="navbar-brand">
                <span class="hidden-xs">MKR Kild<sup>Admin</sup></span>
            </a>
            <div class="ui buttons position">
                <?php if ($controller == "admin" && $action == "index"): ?>
                    <button class="navbar-text ui inverted red button">
                        <a href="admin/home">Home</a>
                    </button>
                    <button class="navbar-text ui inverted blue button">
                        <a href="admin/furniture">Furniture</a>
                    </button>
                    <button class="navbar-text ui inverted green button">
                        <a href="admin/sketchbooks">Sketchbooks</a>
                    </button>
                    <button class="navbar-text ui inverted orange button">
                        <a href="admin/woodturning">Woodturning</a>
                    </button>
                    <button class="navbar-text ui inverted purple button">
                        <a href="admin/about">About</a>
                    </button>
                    <button class="navbar-text ui inverted yellow button">
                        <a href="admin/contact">Contact</a>
                    </button>
                <?php elseif ($action == "home" && $controller == "admin"): ?>
                    <button data-toggle="modal" data-target="#myModal" value="Background"
                            class="navbar-text ui inverted red button" id="showModal">
                        <a>
                            Background
                        </a>
                    </button>
                    <button data-toggle="modal" data-target="#myModal" id="closeModal"
                            class="navbar-text ui inverted red button">
                        <a>
                            Close
                        </a>
                    </button>
                    <button class="navbar-text ui inverted green button">
                        <a href="admin/index">Dashboard</a>
                    </button>
                <?php elseif ($action == "about" && $controller == "admin"): ?>
                    <button id="edit" class="navbar-text ui inverted red button">
                        <a>
                            Edit
                        </a>
                    </button>
                    <button id="save" class="navbar-text ui inverted red button">
                        <a>
                            Save
                        </a>
                    </button>
                    <button data-toggle="modal" data-target="#aboutModal" value="Background"
                            class="navbar-text ui inverted red button">
                        <a>
                            Add section
                        </a>
                    </button>
                    <button class="navbar-text ui inverted green button">
                        <a href="admin/index">Dashboard</a>
                    </button>
                <?php elseif ($action == "contact" && $controller == "admin"): ?>
                    <button data-toggle="modal" data-target="#contactModal" value="Background"
                            class="navbar-text ui inverted red button">
                        <a>
                            Add contact
                        </a>
                    </button>
                    <button class="navbar-text ui inverted green button">
                        <a href="admin/index">Dashboard</a>
                    </button>
                <?php endif; ?>
            </div>
        </div>

        <div class="navbar-collapse collapse" id="navbar-collapse-main">


            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <button class="navbar-btn active" data-toggle="dropdown">
                        <img src="uploads/logo2.png" class="img-circle">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="admin/logout">Logout</a></li>
                        <?php if ($action != "index"): ?>
                            <li><a id="hideNav">Hide</a></li>
                            <li id="showNav" class="hidden"><a>Show</a></li>
                        <?php endif; ?>
                    </ul>
                </li>


            </ul>

        </div>
    </div>
</nav>
<?php if ($action != "index"): ?>
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
                                <a href="admin/home">Home</a>
                            </li>
                            <li class="active">
                                <a id="Furniture" href="admin/furniture">Furniture</a>
                            </li>
                            <li>
                                <a id="Woodturning" href="admin/woodturning">Woodturning</a>
                            </li>
                            <li>
                                <a id="Sketchbooks" href="admin/sketchbooks">Sketchbooks</a>
                            </li>
                            <li>
                                <a href="admin/about">About</a>
                            </li>
                            <li>
                                <a href="admin/contact">Contact</a>
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
                    <a class="cartIcon hidden" href="cart" style="position: relative">
                        <img src="uploads/shoppingcart.png" width="35" height="35">

                        <span id="items_in_shopping_cart" data-qty="0">                    </span>
                    </a>
                </div>

            </div>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class=" collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav text-center">
                <li>
                    <a href="admin/home">Home</a>
                </li>
                <li>
                    <a id="Furniture" href="admin/furniture">Furniture</a>
                </li>
                <li>
                    <a id="Woodturning" href="admin/woodturning">Woodturning</a>
                </li>
                <li>
                    <a id="Sketchbooks" href="admin/sketchbooks">Sketchbooks</a>
                </li>
                <li>
                    <a href="admin/about">About</a>
                </li>
                <li>
                    <a href="admin/contact">Contact</a>
                </li>
            </ul>
        </div>
        <hr class="navsep">
        <!-- /.navbar-collapse -->
    </nav>
<?php endif; ?>


<?php if ($action == "index"): ?>
<section class="main">
    <div class="container">
        <?php endif; ?>
        <!-- Main component for a primary marketing message or call to action -->
        <?php if (!file_exists("views/$controller/{$controller}_$action.php")) error_out('The view <i>views/' . $controller . '/' . $controller . '_' . $action . '.php</i> does not exist. Create that file.'); ?>
        <?php @require "views/$controller/{$controller}_$action.php"; ?>

        <?php if ($action == "index"): ?>
    </div>
    <!-- /container -->
</section>
<?php endif; ?>

<!-- Bootstrap Core JavaScript -->
<script src="vendor/components/bootstrap/js/bootstrap.min.js"></script>

<script src="assets/js/main.js"></script>
<script src="assets/js/semantic.min.js"></script>
<script src="assets/js/image-picker.min.js"></script>

</body>
