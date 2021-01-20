
<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4>My E-commerce</h4>
                        <p> {{$contact[0]->description}}</p>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>Information</h4>
                        <ul>
                            <li><a href="{{route('front.about_us')}}">About Us</a></li>
                            <li><a href="#">Customer Service</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                            <li><a href="#">Terms &amp; Conditions</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Delivery Information</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>Contact Us</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Address: {{$contact[0]->address}}</p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:{{$contact[0]->phone}}">{{$contact[0]->phone}}</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">{{$contact[0]->mail}}</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; {{date('Y')}}<a target="_blank" rel="noopener noreferrer" href="http://alirizayucefaydali.club"> My E-commerce</a></p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

<!-- ALL JS FILES -->
<script src="{{asset('web')}}/js/jquery-3.2.1.min.js"></script>
<script src="{{asset('web')}}/js/popper.min.js"></script>
<script src="{{asset('web')}}/js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="{{asset('web')}}/js/jquery.superslides.min.js"></script>
<script src="{{asset('web')}}/js/bootstrap-select.js"></script>
<script src="{{asset('web')}}/js/inewsticker.js"></script>
<script src="{{asset('web')}}/js/bootsnav.js"></script>
<script src="{{asset('web')}}/js/images-loded.min.js"></script>
<script src="{{asset('web')}}/js/isotope.min.js"></script>
<script src="{{asset('web')}}/js/owl.carousel.min.js"></script>
<script src="{{asset('web')}}/js/baguetteBox.min.js"></script>
<script src="{{asset('web')}}/js/form-validator.min.js"></script>
<script src="{{asset('web')}}/js/contact-form-script.js"></script>
<script src="{{asset('web')}}/js/custom.js"></script>
@toastr_js
@toastr_render
@yield('js')
</body>

</html>
