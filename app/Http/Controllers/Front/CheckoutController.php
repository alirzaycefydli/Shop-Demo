<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Front\Categories;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function index(){
        return view('Front.checkout');
    }
}
