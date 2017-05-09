<?php namespace Halo;

class products extends Controller
{

    function index()
    {

    }

    function view()
    {
        $this->products = Products::getItem();
    }


    function createCarousel()
    {
        $id = $_GET['id'];

        global $db;

        $sql = "SELECT  DISTINCT productimage.image_path FROM productimage JOIN product on product.product_id=productimage.product_id 
WHERE product.product_id='$id'";

        $res = $db->query($sql);

        $rowcount = mysqli_num_rows($res);


        if ($rowcount > 0) { //Run Loop
            while ($row = mysqli_fetch_array($res)) {
                $thumb[] = $row['image_path'];
            }

            for ($i = 0; $i < $rowcount; $i++) {

                // $x = $valid ? 'yes' : 'no'
                $item_class = ($i == 0) ? 'item active' : 'item';
                echo "<div class='$item_class data-slide-number=$i'>
                                    <img src='$thumb[$i]'></div>";

            }
        }
        $res->close();
    }

    function createThumbnail()
    {
        $id = $_GET['id'];

        global $db;

        $sql = "SELECT  DISTINCT productimage.image_path FROM productimage JOIN product on product.product_id=productimage.product_id 
WHERE product.product_id='$id'";

        $res = $db->query($sql);

        $rowcount = mysqli_num_rows($res);

        if ($rowcount > 0) { //Run Loop
            while ($row = mysqli_fetch_array($res)) {
                $thumb[] = $row['image_path'];
            }

            for ($i = 0; $i < $rowcount; $i++) {

                echo "
                    <li class='col-sm-2'>
                        <a class='thumbnail' id='carousel-selector-$i'><img src='$thumb[$i]'></a>
                    </li>
            ";

            }
        }
    }


}