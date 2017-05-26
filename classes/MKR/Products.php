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

    static function getOrders() {
        return \R::getAll("SELECT `order`.id, `order`.order_status, `order`.name, `order`.email, `order`.phone, `order`.address, `order`.delivery, `order`.comments, product.product_name, product.product_price,orderitem.nitem, orderitem.total, `order`.total from `order` LEFT JOIN orderitem on `order`.id = orderitem.order_id LEFT JOIN product on orderitem.product_id=product.id WHERE `order`.id = orderitem.order_id");
    }

}