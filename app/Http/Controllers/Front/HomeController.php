<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Front\Home;
use App\Models\Front\Products;

class HomeController extends Controller
{

    public function index(){
        $data=Home::find(1);
        $products = Products::inRandomOrder()->limit(8)->get();
        return view('Front.home',compact('data','products'));
    }
}
