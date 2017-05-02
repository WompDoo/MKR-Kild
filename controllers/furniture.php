<?php namespace Halo;
use \MKR\Products;
class furniture extends Controller
{

    function index()
    {
        $this->products = Products::get(Products::FURNITURE);
    }

}