<?php namespace Halo;
use \MKR\Products;
class sketchbooks extends Controller
{

    function index()
    {
        $this->products = Products::get(Products::SKETCHBOOKS);
    }

}