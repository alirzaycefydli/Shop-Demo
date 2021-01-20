<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        return view('Front.cart');
    }

    public function store(Request $request){
        Cart::add($request->id, $request->name, 1, $request->price)->associate('App\Models\Front\Products');

        return redirect()->route('front.cart');
    }

    public function remove($id){
        Cart::remove($id);
        return back();
    }
}
