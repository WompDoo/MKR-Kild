<?php namespace Halo;
use \MKR\Products;
class woodturning extends Controller
{

    function index()
    {
        $this->products = Products::get(Products::WOODTURNING);
    }

}