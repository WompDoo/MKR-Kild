<?php
/**
 * Created by PhpStorm.
 * User: heigo
 * Date: 27.05.2017
 * Time: 1:13
 */

namespace MKR;


class Aboutpage
{
    static function getAbout()
    {
        return \R::getAll("SELECT * FROM  about");
    }

    static function getDescription()
    {
        return \R::getAll("SELECT * FROM  description");
    }
}