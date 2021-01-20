<?php

namespace App\Models\Front;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table="products";

    public function getProductImage(){
        return $this->hasMany('App\Models\Front\ProductImages','product_id','id');
    }
}
