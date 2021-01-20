@extends('Front.Layout.master')
@section('title','Search Results | My E-commerce')
@section('content')

    <section class="new-product-area" style="margin-top: 20px;">
        <div class="container">
            <!-- Section tittle -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-tittle mb-70">
                        <h2>Search Results</h2>
                        <p>{{count($products)}} result(s) found for '{{request()->input('query')}}'</p>
                    </div>
                </div>
            </div>
            
            @if(count($errors) > 0) 
                <div class="container">
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif


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
    </section>

@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('web')}}/css/style2.css">
@endsection
@section('js')
@endsection
