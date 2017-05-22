$(document).ready(function () {

    $('#myCarousel').carousel({
        interval: 5000,
        pause: "false"
    })


    //Mobile menu
    $(function () {
        var i = 0;
        $('#mobileMenuLink').on('click', function () {
            i++;
            if (i % 2 != 0) {
                $('#mobileNav').css({
                    'max-height': '999px',
                    'transition-property': 'all',
                    'transition-duration': '.5s',
                    'transition-timing-function': 'cubic-bezier(0, 1, 0.5, 1)',
                    'overflow': 'visible',
                    'visibility': 'visible'

                });
            } else {
                $('#mobileNav').css({
                    'max-height': '0',
                    'overflow': 'hidden',
                    'visibility': 'hidden'
                });
            }
        });
    });


//ProductCarousel
    $('#picCarousel').carousel({
        interval: false
    });

// Handles the carousel thumbnails
    $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id");
        var id = id_selector.substr(id_selector.length - 1);
        id = parseInt(id);
        $('#picCarousel').carousel(id);
        $('[id^=carousel-selector-]').removeClass('active');
        $(this).addClass('active');
    });

    //Shopping cart
    $(".item_form").submit(function (e) {
        var form_data = $(this).serialize();
        /* AJAX request  - controllers/cart.php */
        $.ajax({
            url: $(this).attr('action'),
            type: "POST",
            dataType: "text",
            data: form_data,
            success: (function (data) {//if AJAX request if succesful
                /* Empty the update info bar before calling it. Otherwise appended content will duplicate. */
                $('#cart_update_info').empty();
                /* append data/info to cart_update_info bar */
                $("#cart_update_info").append("<div id='new_item_added'><i class='glyphicon glyphicon-ok' style='color:green;'></i> Item added to the cart</div>").fadeIn('fast').delay(2000).fadeOut('fast');
                /* If shopping cart is still open, items will appear on it at the same time of adding them */
                $("#shopping-cart").load(location.href + " #inCart");
                $(".cartIcon").removeClass("hidden").addClass("animated fadeIn");
                //var itemsInCart = $("#items_in_shopping_cart").val();
                var n = $("#items_in_shopping_cart").data("qty");
                $("#items_in_shopping_cart").html(n + 1);
            })
        })
        e.preventDefault();
    });

    /*$.post("admin.php/addStock", {
     siia_mingi_id: 'blablabla',
     siia_näiteks_tekst: $('.tekstiväli').val()
     });*/


    //Add stock quantity on admin panel
    $(document).on("click", ".add", (function () {
        var id = $(this).parents("tr").attr("data-id");
        $.ajax({
            type: 'POST',
            url: 'admin/addStock',
            data: {id: id},
            dataType: 'text',
            success: function (data) {
                console.log("tere", id);
                $("#product-dad").load(location.href + " #product");
            }
        });
    }));

    //Remove from stock quantity on admin panel
    $(document).on("click", ".remove", (function () {
        var id = $(this).parents("tr").attr("data-id");
        $.ajax({
            type: 'POST',
            url: 'admin/rmvStock',
            data: {id: id},
            dataType: 'text',
            success: function (data) {
                $("#product-dad").load(location.href + " #product");
                console.log(data);

            }
        });
    }));

    //Remove the item completely
    $(document).on("click", ".destroy", (function () {
        var id = $(this).parents("tr").attr("data-id");
        $.ajax({
            type: 'POST',
            url: 'admin/destroyStock',
            data: {id: id},
            dataType: 'text',
            success: function (data) {
                $("#product-dad").load(location.href + " #product");

            }
        });
    }));

    //Create a new product as admin
    $(document).on("click", ".create", (function () {
        $.ajax({
            type: 'POST',
            url: 'admin/createStock',
            data: $('#newProduct').serialize(),
            dataType: 'text',
            success: function (data) {
                $("#product-dad").load(location.href + " #product");

            }
        });
    }));


    $(document).on("click", ".createSection", (function () {
        $.ajax({
            type: 'POST',
            url: 'admin/addSection',
            data: $('#newSection').serialize(),
            dataType: 'text',
            success: function (data) {
                $("#myP-dad").load(location.href + " #myP");

            }
        });
    }));

    $(document).on("click", ".createContact", (function () {
        $.ajax({
            type: 'POST',
            url: 'admin/addContact',
            data: $('#newContact').serialize(),
            dataType: 'text',
            success: function (data) {
                console.log(data);
                $("#myP-dad").load(location.href + " #myP");

            }
        });
    }));

    $(document).on("click", ".rmvSection", (function () {
        var id = $(this).parents(".about-section").attr("data-id");
        $.ajax({
            type: 'POST',
            url: 'admin/rmvSection',
            data: {id: id},
            dataType: 'text',
            success: function (data) {
                $("#myP-dad").load(location.href + " #myP");

            }
        });
    }));

    $(document).on("click", ".rmvContact", (function () {
        var id = $(this).parents("#contact").attr("data-id");
        $.ajax({
            type: 'POST',
            url: 'admin/rmvContact',
            data: {id: id},
            dataType: 'text',
            success: function (data) {
                $("#myP-dad").load(location.href + " #myP");

            }
        });
    }));


    $("#2").click(function (event) {
        $('tr[id^="Sketchbooks"]').hide();
        $('tr[id^="Furniture"]').hide();
        $('tr[id^="Woodturning"]').show();
        $( "#2" ).addClass( "active" );
        $( "#1, #3, #All" ).removeClass( "active" );

    });

    $("#1").click(function (event) {

        $('tr[id^="Sketchbooks"]').hide();
        $('tr[id^="Woodturning"]').hide();
        $('tr[id^="Furniture"]').show();
        $( "#1" ).addClass( "active" );
        $( "#2, #3, #All" ).removeClass( "active" );
    });

    $("#3").click(function (event) {
        $('tr[id^="Woodturning"]').hide();
        $('tr[id^="Furniture"]').hide();
        $('tr[id^="Sketchbooks"]').show();
        $( "#3" ).addClass( "active" );
        $( "#1, #2, #All" ).removeClass( "active" );
    });

    $("#All").click(function (event) {
        $('tr[id^="Woodturning"]').show();
        $('tr[id^="Furniture"]').show();
        $('tr[id^="Sketchbooks"]').show();
        $( "#All" ).addClass( "active" );
        $( "#1, #2, #3" ).removeClass( "active" );
    });


    $("#searchInput").keyup(function () {
        //split the current value of searchInput
        var data = this.value.toUpperCase().split(" ");
        //create a jquery object of the rows
        var jo = $("#fbody").find("tr");
        if (this.value == "") {
            jo.show();
            return;
        }
        //hide all the rows
        jo.hide();

        //Recusively filter the jquery object to get results.
        jo.filter(function (i, v) {
            var $t = $(this);
            for (var d = 0; d < data.length; ++d) {
                if ($t.text().toUpperCase().indexOf(data[d]) > -1) {
                    return true;
                }
            }
            return false;
        })
        //show the rows that match.
            .show();
    }).focus(function () {
        this.value = "";
        $(this).css({
            "color": "black"
        });
        $(this).unbind('focus');
    }).css({
        "color": "#C0C0C0"
    });

    /*  $(document).on("click", ".btnAddAction", (function () {
     $.ajax({
     type: 'POST',
     url: './controllers/cart.php',
     data: $('.item_form').serialize(),
     dataType: 'text',
     success: function (data) {
     $("#shopping-cart").load(location.href + " #inCart");
     //window.location = window.location.href;
     }
     });
     }));*/

    //Handle admin nav animations
    $("#hideNav").click(function (event) {
        $("#adminNavbar").hide("slow");
        $("#hiddenBtn").show("slow");
        document.getElementById("navbarRegular").style.paddingTop = "0px";
    });
    $("#hiddenBtn").click(function (event) {
        $("#adminNavbar").show("slow");
        $("#hiddenBtn").hide("slow");
        document.getElementById("navbarRegular").style.paddingTop = "50px";
    });




//About page edit coded
    $("#edit").click(function (event) {
        $("#edit").hide("slow");
        $("#save").show("slow");
        var h3 = document.getElementById("description");
        var input = $('<input>').val($(h3).text());

        $(h3).after(input);
        $(h3).hide();

        input.on('blur', function() {
            $(h3).text(input.val());
            $(h3).show();
            input.hide();
        });
        $( ".about-section" ).each(function() {
            var heading = document.getElementsByClassName("about-heading");
            if ($(this).data("id") == 1) {
                console.log($(this).data("id"));

            }
        });

    });

    $("#save").click(function (event) {
        $("#save").hide("fast");
        $("#edit").show("fast");
        var h3 = document.getElementById("description");
        $.ajax({
            type: 'POST',
            url: 'admin/updateAbout',
            data: { n1: h3.textContent },
            dataType: 'text',
            success: function (data) {
            }
        });
    });

// Code for showing modal
    $("#showModal").click(function (event) {
        $("#showModal").hide("slow");
        $("#closeModal").show("slow");
    });

    $("#closeModal").click(function (event) {
        $("#closeModal").hide("slow");
        $("#showModal").show("slow");
        //$("#myModal").modal(hide);
    });
// Init Image_picker JS plugin
    var initializePlugins = function () {
        $('.image-picker').imagepicker({
            limit: 3
        });
    };
// Change background on index page
    $('#changeBG').on('click', function () {
        $("#myCarousel-son").empty();
        var value = $("select").data('picker');
        var selected = value.select[0].selectedOptions;
        $(selected).each(function () {
            var imagelink = this.value;
            $('#myCarousel-son').prepend('<div class="item"><div class="fill" style="background-image:url(' + imagelink + ');"></div></div>');
        });
        $('#myCarousel-son').children(":first").addClass("active");
    });
// Upload images for index page
    $('.upload').on('click', function () {
        var file_data = $('#js-upload-files').prop('files')[0];
        var form_data = new FormData();
        form_data.append('file', file_data);
        event.preventDefault();
        $.ajax({
            url: 'admin/upload', // point to server-side PHP script
            dataType: 'text',  // what to expect back from the PHP script, if anything
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',
            success: function (data) {
                $("#selectablePics-dad").load(location.href + " #selectablePics");
                $.ajax({
                    url: "admin/getImages",
                    dataType: "json",
                    success: function (data) {

                        $.each(data, function (i, filename) {
                            $('#bgPics').prepend('<option data-img-src="' + filename + '" value="' + filename + '"></option>');
                            initializePlugins();
                        });
                    }
                });
            }
        });
    });

// To display uploaded images
    $.ajax({
        url: "admin/getImages",
        dataType: "json",
        success: function (data) {

            $.each(data, function (i, filename) {
                $('#bgPics').prepend('<option data-img-src="' + filename + '" value="' + filename + '"></option>');
                initializePlugins();
            });
        }
    });


    /* WE MIGHT NEED IT ON THE ADMIN PANEL
     $(document).on("click", ".sidebar-toggle", function () {
     $(".wrapper").toggleClass("toggled");
     });
     */
});