<?php namespace Halo;

class contact extends Controller
{

    function index()
    {
        $this->contact = get_all("SELECT * FROM contact");
    }

}