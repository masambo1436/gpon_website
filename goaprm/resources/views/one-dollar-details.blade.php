@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')
    <main>
        <!--slider-area start-->
        <div class="slider-area pos-rel">
            <div class="slider-active">


                <div class="single-slider slider-height pos-rel d-flex align-items-center"
                    style="background-image: url({{asset('assets/img/slider/s3.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    <h5 class="sub-title mb-25 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>GoalPrime $1 Campaign</h5>
                                    <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".2s">
                                       With your $1, a Better Humanity is Possible!</h1>
                                        <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                            <li><a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i class="fas fa-heart"></i></span></a>
                                            </li>
                                            <li><a class="theme_btn theme_btn2 theme_btn_bg_02" href="{{route('project')}}">our cases <span><i class="fas fa-heart"></i></span></a>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
        <!--slider-area end-->

        <!--area start-->
        <section class="about-area grey-bg2 pos-rel pt-40 pb-10">
            <div class="right-shape">
                <img src="{{asset('assets/img/shape/01.png')}}" alt="">
            </div>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="about-img mb-60 pos-rel">
                            <div class="about-img__thumb pr-45 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <img src="{{asset('assets/img/about/02.jpg')}}" alt="">
                            </div>
                            <div class="experience-box heding-bg wow fadeInUp2 animated"
                            data-wow-delay='.3s'>
                                <h1>GPON</h1>
                               
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="about-wrapper mb-30">
                            <div class="section-title text-left mb-10 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                
                                <h2>With your $1, a Better Humanity is Possible! </h2>
                            </div>
                            <p>With your $1 monthly contribution, you can be part of the great success story of making the world a better place for all vulnerable groups.</p>
                            <ul class="about_list mt-20 mb-15 wow fadeInUp2 animated" data-wow-delay='.2s'>
                                 <li style="text-align: justify;">Quality education is guaranteed for vulnerable children</li>
                                  <li style="text-align: justify;">Access to primary health care is guaranteed for children and their caregivers</li>
                                   <li style="text-align: justify;">Access to child-friendly justice system is guaranteed</li>
                                    <li style="text-align: justify;">Access to protection for children and their caregivers</li>
                                 <li style="text-align: justify;">Access to Nutrition for children under 5</li>
                                <li style="text-align: justify;">Access to livelihood support for adolescent and caregivers</li>
                            </ul>
                            <a class="theme_btn theme_btn_bg" href="{{route('donte')}}">Take Action <span><i class="fas fa-heart"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--area end-->


         
        
        <!--brand-area start-->
        @include('includes.partners')
        <!--brand-area end-->
    </main>
     @endsection