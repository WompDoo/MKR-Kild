<?php

namespace MKR;

class Products
{
    const FURNITURE = 1;
    const WOODTURNING = 2;
    const SKETCHBOOKS = 3;

    static function get($product_type)
    {
        return get_all("SELECT * FROM products LEFT JOIN product_types USING (product_type_id) WHERE product_type_id = $product_type");
    }

    static function getAll()
    {
        return get_all("SELECT * FROM products LEFT JOIN product_types USING (product_type_id)");
    }

    static function getAllProductTypes()
    {
        return get_all("SELECT * FROM product_types");
    }

}