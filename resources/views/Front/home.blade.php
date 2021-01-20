@extends('Front.Layout.master')
@section('title','Welcome | My E-commerce' )
@section('content')

    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-left">
                <img src="{{$data->image_one}}" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>{{$data->title_one}}</strong></h1>
                            <p class="m-b-40">{!! $data->description_one !!}</p>
                            <p><a class="btn hvr-hover" href="{{route('front.shop')}}">Shop Now</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="{{$data->image_two}}" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>{{$data->title_two}}</strong></h1>
                            <p class="m-b-40">{!!$data->description_two!!}</p>
                            <p><a class="btn hvr-hover" href="{{route('front.shop')}}">Shop Now</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-right">
                <img src="{{$data->image_three}}" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>{{$data->title_three}}</strong></h1>
                            <p class="m-b-40">{!!$data->description_three!!}</p>
                            <p><a class="btn hvr-hover" href="{{route('front.shop')}}">Shop Now</a></p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>

    <h1 style="text-align: center; font-weight: bold; margin-top: 15px; margin-bottom: -50px;">Futured Products</h1>
    <div class="categories-shop">
        <div class="container">
            <div class="row">

                @foreach($products as $product)
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="" src="{{$product->getProductImage[0]->image}}" width="200px; !important" height="350px; !important" alt=""/>
                            <a class="btn hvr-hover" href="{{route('front.productDetail',[$product->title,$product->slug])}}">{{$product->title}}</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

@endsection
