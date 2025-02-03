@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')

    <main>

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset('assets/img/slider/slider1.JPG')}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 offset-xl-2">
                        <div class="page-title-wrapper text-center pt-125">
                            <div class="page-title-box">
                                <h2 class="page-title">Contact Us</h2>
                                <ul class="breadcrumb-list">
                                    <li><a href="{{url('/')}}">Home <i class="far fa-chevron-right"></i></a></li>
                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--join-team-area start-->
        <section class="contacts-details-area pt-130 pb-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-5 col-lg-6 col-md-6">
                        <div class="get-touch-area pl-50 pr-50">
                            <div class="section-title text-left mb-30 wow fadeInUp2 animated" data-wow-delay='.1s'>
                             
                                <h2>Don’t Hesited To 
                                    Contact Us</h2>
                                <p>For more specific questions and contact details, find answers to the most frequently asked questions about GOALPrime on our <span style="color:green"><a href="{{route('fq')}}">FAQ </a> page. </span></p>
                            </div>
                            <div class="contacts d-flex align-items-center mb-30">
                                <div class="contacts__icon mr-25">
                                    <i class="flaticon-phone-call"></i>
                                </div>
                                <div class="contacts__text">
                                    <h4 class="semi-02-title">Phone Number</h4>
                                    <h5>{{$cont ? $cont->phone : ""}}</h5>
                                </div>
                            </div>
                            <div class="contacts d-flex align-items-center mb-30">
                                <div class="contacts__icon mr-25">
                                    <i class="flaticon-chat"></i>
                                </div>
                                <div class="contacts__text">
                                    <h4 class="semi-02-title">Email Address</h4>
                                    <h5>{{$cont ? $cont->email : ""}}</h5>
                                </div>
                            </div>
                            <div class="contacts d-flex align-items-center mb-30">
                                <div class="contacts__icon mr-25">
                                    <i class="flaticon-location"></i>
                                </div>
                                <div class="contacts__text">
                                    <h4 class="semi-02-title">Our Location</h4>
                                    <h5>Yobe Office</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-6 col-md-6">
                        <div class="donar-information donation-form grey-bg2 mb-30 pr-50 pl-50">
                            <div class="section-title text-left mb-50 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h6><span><i class="fas fa-heart"></i></span> Send Message</h6>
                                <h2>Feel Free To Write 
                                    Us Message.</h2>
                            </div>
                            <div class="main-contact-area">
                                @include('includes.messages')
                                <form action="{{route('contactsend')}}" method="post">
                                    @csrf
                                    <div class="input-area mb-10">
                                        <input type="text" name="name" class="form-control" required placeholder="Your Name" value="{{old('name')}}">
                                    </div>
                                        <div class="input-area mb-10">
                                            <input type="email" name="email" class="form-control" required placeholder="Email Address" value="{{old('email')}}">
                                        </div>
                                        <div class="input-area mb-10">
                                            <input type="tel" name="phone" class="form-control" required placeholder="Mobile Number" value="{{old('phone')}}">
                                        </div>
                                        <div class="input-area mb-10">
                                            <input type="text" name="subject" class="form-control" required placeholder="Subject" value="{{old('subject')}}">
                                        </div>
                                       
                                        <div class="input-area mb-10">
                                            <textarea name="message" id="messsage" cols="30" rows="10" placeholder="Message">{{old('message')}}</textarea>
                                        </div>
                                        <div class="input-btn">
                                            <button class="theme_btn theme_btn_bg large_btn">Send message</button>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--join-team-area end-->
        <!--full-map-area end-->
       <section class="full-map-area">
            <div class="container-fluid pr-0 pl-0">
                <div class="row no-gutters">
                    <div class="col-xl-12">
                        <div class="map-area-02 map-area-03">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29169.94591227534!2d90.37409288955075!3d23.951837400000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1608827553239!5m2!1sen!2sbd"></iframe>
                        </div>
                    </div>
                    
                </div>
            </div>
       </section>
        <!--full-map-area start-->
        <!--brand-area start-->
        @include('includes.partners')
        <!--brand-area end-->
        <!--cta-area start-->
        <section class="cta-area theme-bg2 pt-50 pb-50">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-8 col-lg-8 col-md-8">
                        <div class="cta-wrapper pl-100">
                            <h2>Join With Our <a href="{{route('volun')}}">Volunteer</a> Team</h2>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4">
                        <div class="cta-btn">
                            <a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i
                                        class="fas fa-heart"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--cta-area end-->
    </main>
@endsection