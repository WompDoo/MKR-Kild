<?php namespace Halo;
use \MKR\Products as P;

class products extends Controller
{

    function index()
    {

    }

    function view()
    {
        $this->product = P::getItem($this->getId());
    }





}