<?php
/**
 * Created by PhpStorm.
 * User: heigo
 * Date: 16.05.2017
 * Time: 10:36
 */

namespace MKR;


class About
{
    static function getAbout()
    {
        return \R::getAll("SELECT * FROM  about");
    }

    static function getDescription()
    {
        return \R::getAll("SELECT * FROM  description");
    }

    static function getContact()
    {
        return \R::getAll("SELECT * FROM  contact ORDER BY name DESC");
    }
    static function getBackground()
    {
        return \R::getAll("SELECT * FROM  homebackground");
    }

    static function getId($id)
    {
        return \R::getAll("select * from about where about_id = '$id'");
    }
}