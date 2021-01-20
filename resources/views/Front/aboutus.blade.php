@extends('Front.Layout.master')
@section('title','About Us | My E-commerce' )
@section('content')


    <div class="about-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2 class="noo-sh-title">{{$data->title}}</h2>
                    <p>{{$data->content}}</p>
                </div>
                <div class="col-lg-6">
                    <div class="banner-frame"><img class="img-thumbnail img-fluid" src="{{$data->image}}"
                                                   alt="About-Us"/>
                    </div>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>{{$data->subtitle_one}}</h3>
                        <p>{{$data->subtitle_one_desc}}</p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>{{$data->subtitle_two}}</h3>
                        <p>{{$data->subtitle_two_desc}}</p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>{{$data->subtitle_three}}</h3>
                        <p>{{$data->subtitle_three_desc}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection
