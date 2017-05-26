<?php namespace Halo;


use \MKR\About;

class home extends Controller
{

    function index()
    {
        $this->backgrounds = About::getBackground();
    }

}