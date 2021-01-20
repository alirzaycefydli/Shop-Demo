<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Front\Categories;
use App\Models\Front\Products;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($name,$id){
        $categories = Categories::where('id',$id)->get();
        return view('Front.category_detail',compact('name','id','categories'));
    }
    public function products($title,$id){
        $products=Products::where('category_id',$id)->get();
        if ($products->count() >0 ){
            return view('Front.products',compact('products','title'));
        }
        return view('Front.products');
    }

    public function productDetail($title,$slug){
        $product = Products::where('slug',$slug)->get();
        if ($product->count() > 0){
            return view('Front.product_detail',compact('product','title'));
        }
    }


}
