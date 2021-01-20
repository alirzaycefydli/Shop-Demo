<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>@yield('title','My E-commerce')</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="{{asset('images/logo.png')}}" type="image/x-icon">
    <link rel="apple-touch-icon" href="{{asset('images/logo.png')}}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('web')}}/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="{{asset('web')}}/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="{{asset('web')}}/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{asset('web')}}/css/custom.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    @toastr_css
    @yield('css')
</head>
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                    <a class="navbar-brand" href="{{route('front.home')}}"><img src="{{asset('images/logo.png')}}" height="40px;"
                                                                   width="40px;" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item"><a class="nav-link" href="{{route('front.home')}}">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('front.shop')}}">Shop</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('front.about_us')}}">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{route('front.contact_us')}}">Contact Us</a></li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                   <li>
                       <form method="get" action="{{route('front.search')}}" style="margin-top: 20px;">
                           <i class="fa fa-search search-icon"></i>
                           <input type="text" name="query" id="query" value="{{request()->input('query')}}" class="form-group" placeholder="Search for products">
                       </form>
                   </li>
                    <li><a href="{{route('front.cart')}}">
                            <i class="fa fa-shopping-bag"></i>
                            <span
                                class="badge">@if(Cart::instance('default')->count() > 0){{Cart::instance('default')->count()}} @endif</span>
                        </a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>

    </nav>
    <!-- End Navigation -->
</header>
