@extends('Front.Layout.master')
@section('title','Cart | My E-commerce')
@section('content')



    <div class="cart-box-main">
        <div class="container">
            @if(Cart::count() <= 0)
                <h2>No item(s) found in your cart!</h2>
            <div class="spacer"></div>
                <div class="col-12 d-flex shopping-box"><a href="{{route('front.home')}}" class=" btn hvr-hover">Continue Shopping</a> </div>
            @else
                <h2>{{Cart::count()}} item(s) found in your cart!</h2>
            <div class="row">
                <div class="col-lg-12">
                    

                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach(Cart::content() as $item)
                                <tr>
                                    <td class="thumbnail-img">
                                        <a href="{{route('front.productDetail',[$item->model->title,$item->model->slug])}}">
                                            <img class="img-fluid" src="{{$item->model->getProductImage[0]->image}}" alt="" />
                                        </a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="{{route('front.productDetail',[$item->model->title,$item->model->slug])}}">
                                            {{$item->model->title}}
                                        </a>
                                    </td>
                                    <td class="price-pr">
                                        <p>$ {{$item->model->price}}</p>
                                    </td>
                                    <td class="quantity-box"><h5 class="qty text"> {{$item->qty}}</h5></td>
                                    <td class="remove-pr">
                                        <form action="{{route('front.remove',$item->rowId)}}" method="post">
                                            {{csrf_field()}}
                                            {{method_field('DELETE')}}
                                            <button type="submit" class="remove-pr"><i class="fas fa-times"></i></button>
                                        </form>
                                    </td>
                                </tr>
                                
                    @endforeach
                                </tbody>
                            </table>
                        </div>

                </div>

            </div>

            <div class="row my-5">
                <div class="col-lg-6 col-sm-6">
                    <div class="coupon-box">
                        <div class="input-group input-group-sm">
                            <input class="form-control" placeholder="Enter your coupon code" aria-label="Coupon code" type="text">
                            <div class="input-group-append">
                                <button class="btn btn-theme" type="button">Apply Coupon</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row my-5">
                <div class="col-lg-8 col-sm-12"></div>
                <div class="col-lg-4 col-sm-12">
                    <div class="order-box">
                        <h3>Order summary</h3>
                        <div class="d-flex">
                            <h4>Sub Total</h4>
                            <div class="ml-auto font-weight-bold"> $ {{Cart::subtotal()}} </div>
                        </div>
                        <hr class="my-1">
                        <div class="d-flex">
                            <h4>Tax</h4>
                            <div class="ml-auto font-weight-bold"> $ {{Cart::tax()}} </div>
                        </div>
                        <hr>
                        <div class="d-flex gr-total">
                            <h5>Grand Total</h5>
                            <div class="ml-auto h5"> $ {{Cart::total()}} </div>
                        </div>
                        <hr> </div>
                </div>
                <div class="col-12 d-flex shopping-box"><a href="{{route('front.checkout')}}" class="ml-auto btn hvr-hover">Checkout</a> </div>
            </div>
            @endif

        </div>
    </div>
@endsection
