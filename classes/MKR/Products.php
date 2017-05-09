<?php

namespace MKR;

class Products
{
    const FURNITURE = 1;
    const WOODTURNING = 2;
    const SKETCHBOOKS = 3;

    static function get($product_type)
    {
        return \R::getAll("SELECT * FROM product LEFT JOIN producttype USING (product_type_id) WHERE product_type_id = ?", [$product_type]);
    }

    static function getItem($id)
    {

        return \R::load( 'product', $id );

    }

    static function getImages($product_id)
    {
        return \R::getRow("SELECT image_path FROM productthumb WHERE product_id = ?", [$product_id]);
    }

    static function getAll()
    {
        return \R::getAll("SELECT * FROM product LEFT JOIN producttype USING (product_type_id)");
    }

    static function getAllProductTypes()
    {
        return \R::getAll("SELECT * FROM producttype");
    }


}