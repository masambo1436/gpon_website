@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')

    <main>

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset($siev->eventimage)}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="page-title-wrapper text-center pt-125">
                            <div class="page-title-box">
                                <h2 class="page-title">Event Details</h2>
                                <ul class="breadcrumb-list">
                                    <li><a href="{{url('/')}}">Home <i class="far fa-chevron-right"></i></a></li>
                                    <li><a href="#">Events</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--cases-details-area start-->
        <section class="events-details-area pt-125 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="events-details-left">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12">
                                    <div class="events-details-thumb mb-30">
                                        <img src="{{asset($siev->eventimage)}}" alt="">
                                    </div>
                                </div>
                                {{-- <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="events-details-thumb mb-30">
                                        <img src="assets/img/events/16.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="events-details-thumb mb-30">
                                        <img src="assets/img/events/17.jpg" alt="">
                                    </div>
                                </div> --}}
                            </div>
                            <div class="events-text-box mb-45">
                                <h2 class="mb-30">{{$siev->title}}</h2>
                                <p class="mb-15">{!!$siev->details!!}</p>
                            </div>
                            <div class="map-area">
                                {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29168.25352313116!2d90.37365128955076!3d23.959319500000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1608807707111!5m2!1sen!2sbd"></iframe> --}}
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="events-details-right">
                            <div class="widget grey-bg2 mb-30">
                                <div class="widget-post">
                                    <h3 class="cases-title mb-15">Events Information</h3>
                                    <p class="mb-20">{{$siev->title}}</p>
                                    <div class="times__content mb-20">
                                        <h5><a href="#">Event Date</a></h5>
                                        <p><i class="far fa-calendar-alt"></i> {{$siev->datefrom}}</p>
                                    </div>
                                    <div class="times__content mb-20">
                                        <h5><a href="#">Event Time</a></h5>
                                        <p><i class="far fa-clock"></i> {{date('h : ia',strtotime($siev->timestarted))}}</p>
                                    </div>
                                    <div class="times__content mb-20">
                                        <h5><a href="events-list.php">Event Location</a></h5>
                                        <p><i class="far fa-map-marker-alt"></i> {{$siev->venue}}</p>
                                    </div>
                                    {{-- <div class="times__content mb-20">
                                        <h5><a href="events-list.php">Event Cost</a></h5>
                                        <p><i class="far fa-usd-circle"></i> 100</p>
                                    </div> --}}
                                </div>
                                <a href="javascript:void(0)" class="theme_btn theme_btn_bg large_btn mx-3 my-3" onclick="joinevt('{{$siev->id}}')">join Event</a>
                            </div>
                            <div class="widget theme-bg mb-30">
                                <div class="widget-post widget-organizer" style="background-image: url({{asset('assets/img/shape/13.png')}});">
                                    <h3 class="cases-title mb-20">Events Organizer</h3>
                                    <div class="cases--author d-flex align-items-center mb-25">
                                        <img src="{{asset('assets/img/logo/header_logo_one.png')}}g" alt="">
                                        <h4 class="semi-02-title ml-15">GOALPrime</h4>
                                    </div>
                                    <div class="times__content mb-20">
                                        <h5><a href="events-list.php">Phone Number</a></h5>
                                        <p><i class="far fa-phone"></i> {{$cont ? $cont->phone : ''}}</p>
                                    </div>
                                    <div class="times__content mb-20">
                                        <h5><a href="events-list.php">Email Address</a></h5>
                                        <p><i class="fal fa-envelope-open"></i> {{$cont ? $cont->email : ''}}</p>
                                    </div>
                                    {{-- <div class="times__content mb-20">
                                        <h5><a href="events-list.php">Website</a></h5>
                                        <p><i class="far fa-globe"></i> www.GOALPrime.com</p>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--cases-details-area end-->
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