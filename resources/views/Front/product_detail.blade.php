@extends('Front.Layout.master')
@section('title',$product[0]->title.' | My E-commerce')
@section('content')
    <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">

                            @for($i=0; $i<count($product[0]->getProductImage); $i++)
                                @if($i ==0)
                                    <div class="carousel-item active"><img class="d-block w-100" src="{{$product[0]->getProductImage[$i]->image}}"> </div>
                                @else
                                    <div class="carousel-item"> <img class="d-block w-100" src="{{$product[0]->getProductImage[$i]->image}}"> </div>
                                @endif
                            @endfor

                        </div>
                        <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev">
                            <i class="fa fa-angle-left" aria-hidden="true"></i>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next">
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="single-product-details">
                        <h2>{{$product[0]->title}}</h2>
                        <h5> <del>${{$product[0]->price}}</del> ${{$product[0]->price - (($product[0]->price / 100) * $product[0]->discount)}}</h5>
                        <h4>Short Description:</h4>
                        <p>{{$product[0]->description}}</p>
                        <ul>

                            <li>
                                <div class="form-group quantity-box">
                                    <label class="control-label">Quantity</label>
                                    <input class="form-control" value="1" min="0" max="20" type="number">
                                </div>
                            </li>
                        </ul>

                        <div class="price-box-bar">
                            <div class="cart-and-bay-btn">
                                <form action="{{route('front.store')}}" method="post">
                                    {{csrf_field()}}
                                    <input type="hidden" name="id" value="{{$product[0]->id}}">
                                    <input type="hidden" name="name" value="{{$product[0]->title}}">
                                    <input type="hidden" name="price" value="{{$product[0]->price}}">
                                    <button type="submit" class="btn hvr-hover">Add to cart</button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>


@endsection
