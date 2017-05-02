<?php namespace Halo;

class about extends Controller
{

    function index()
    {
        $this->about = get_all("SELECT * FROM about");
    }

}