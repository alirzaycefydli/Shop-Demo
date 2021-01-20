@extends('Front.Layout.master')
@section('title',$name.' | My E-commerce')
@section('content')


    <h1 style="text-align: center; font-weight: bold; margin-top: 15px; margin-bottom: -50px;">{{$name}}</h1>
    <div class="categories-shop">
        <div class="container">
            <div class="row">

                @foreach($categories as $category)
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="{{asset('web')}}/images/t-shirts-img.jpg" alt=""/>
                            <a class="btn hvr-hover" href="{{route('front.products',['title'=>$category->slug,'id'=>$category->id])}}">{{$category->title}}</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>


@endsection
