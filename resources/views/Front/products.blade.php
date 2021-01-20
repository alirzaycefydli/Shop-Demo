@extends('Front.Layout.master')
@section('title',$title .' | My E-commerce')
@section('content')

    <section class="new-product-area" style="margin-top: 20px;">
        <div class="container">
            <!-- Section tittle -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-tittle mb-70">
                        <h2>{{$title}}</h2>
                    </div>
                </div>
            </div>

            @foreach($products as $product)
                <div class="row">
                    <a href="{{route('front.productDetail',['title'=>$title, 'slug'=> $product->slug])}}" >
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                        <div class="single-new-pro mb-30 text-center">
                            <div class="product-img">
                                <img src="{{$product->getProductImage[0]->image}}" alt="">
                            </div>
                            <div class="product-caption">
                                <h3><a href="{{route('front.productDetail',['title'=>$title, 'slug'=> $product->slug])}}">{!!  $product->title!!}</a></h3>
                                @if($product->discount < 0)
                                    <span>${{$product->price}}</span>
                                @else
                                    <span><del>${{$product->price}}</del> ${{$product->price - (($product->price / 100) * $product->discount)}}</span>
                                @endif
                            </div>
                        </div>
                    </div>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('web')}}/css/style2.css">
@endsection
@section('js')
@endsection
