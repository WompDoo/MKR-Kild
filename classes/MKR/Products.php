<?php

namespace MKR;

class Products
{
    const FURNITURE = 1;
    const WOODTURNING = 2;
    const SKETCHBOOKS = 3;
    static function get($product_type)
    {
        return get_all("SELECT * FROM products WHERE product_type_id = $product_type");
    }
}