<?php namespace Halo;

use \MKR\Aboutpage;

class about extends Controller
{

    function index()
    {
        $this->about = Aboutpage::getAbout();
        $this->description = Aboutpage::getDescription();
    }

}