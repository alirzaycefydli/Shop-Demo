<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Front\Categories;
use App\Models\Front\Products;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index($slug = null){
        $categories = Categories::all();

        if ($slug == null){
            $products = Products::orderBy('created_at', 'desc')
                ->get();
        }else{
            $id = Categories::where('slug',$slug)->get('id');
            $products= Products::where('category_id',$id[0]->id)->limit(3)->get();
        }
        return view('Front.shop',compact('categories','products'));
    }

    public function search(Request $request)
    {
        $request->validate([
            'query' =>'required|min:3'
        ]);
        $query = $request->input('query');
        $products = Products::where('title','like',"%$query%")
            ->orWhere('description','like',"%$query%")
            ->get();
        return view('Front.search_results')->with('products',$products);
    }
}
