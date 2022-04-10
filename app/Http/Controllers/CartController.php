<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class CartController extends Controller
{
    public function index()
    {
        return view('pages.cart');
    }

    public function success()
    {
        return view('pages.success');
    }
}
