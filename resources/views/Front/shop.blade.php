@extends('Front.Layout.master')
@section('title','Shop | My E-commerce' )
@section('content')

    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">

                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Categories</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree"
                                 id="list-group-men" data-children=".sub-men">

                                @foreach($categories as $category)
                                    @if($category->category_id == 0)
                                        <a href="{{route('front.shop',[$category->slug])}}"
                                           class="list-group-item list-group-item-action @if(Request::segment(2) == $category->slug) active @endif"> {{$category->title}}</a>
                                    @endif
                                @endforeach
                            </div>
                        </div>


                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
                        <div class="product-item-filter row">
                            <div class="col-12 col-sm-8 text-center text-sm-left">
                                <div class="toolbar-sorter-right">
                                    <span>Sort by </span>
                                    <select id="basic" class="selectpicker show-tick form-control"
                                            data-placeholder="$ USD">
                                        <option data-display="Select">Nothing</option>
                                        <option value="1">Popularity</option>
                                        <option value="2">High Price → High Price</option>
                                        <option value="3">Low Price → High Price</option>
                                        <option value="4">Best Selling</option>
                                    </select>
                                </div>
                                <p>Showing {{count($products)}} result(s)</p>
                            </div>
                        </div>

                        <div class="row product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
                                        @if(count($products) > 0)
                                            @foreach($products as $product)
                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <div class="products-single fix">
                                                        <div class="box-img-hover">
                                                            <div class="type-lb">
                                                                <p class="sale">Sale</p>
                                                            </div>
                                                            @if(count($product->getProductImage) > 0)
                                                            <img src="{{$product->getProductImage[0]->image}}"
                                                                 class="" alt="Image" height="250px; !important" width="200px;">
                                                            @endif

                                                        </div>
                                                        <div class="why-text">
                                                            <h4>
                                                                <a href="{{route('front.productDetail',[$product->title,$product->slug])}}">{{$product->title}}</a>
                                                            </h4>
                                                            <h5>
                                                                <del>${{$product->price}}</del>
                                                                ${{$product->price - (($product->price / 100) * $product->discount)}}
                                                            </h5>
                                                        </div>
                                                    </div>
                                                </div>

                                            @endforeach
                                        @endif

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
