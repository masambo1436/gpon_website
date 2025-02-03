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
                    style="background-image: url({{asset('assets/img/slider/s4.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    <h5 class="sub-title mb-6 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>Raising Your Helping Hands</h5>
                                <h1 class="main-title mb-8 wow fadeInUp2 animated" data-wow-delay=".1s">
                                    A Better Humanity is Possible
                            </h1>
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
     
         <!--what-we-area start-->
        <section class="what-we-area grey-bg2 pos-rel py-12">
         <!--   <div class="right-help" style="background-image: url({{$sinchild->imagefile}});">    
            </div>-->
            <div class="container">
                <div class="row align-items-center">
                    <div class="about-wrap-04 pt-0 mt-0">
                        <div class="pt-3 space-y-3 w-[90%] xl:w-[80%] mx-auto" style="text-align: justify;"">
                            <div class="section-title text-left mb-5 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h6><span><i class="fas fa-heart"></i></span> What We Do</h6>
                                <h2>{{$sinchild->caption}}</h2>
                            </div>
                            <p class="wow fadeInUp2 animated" data-wow-delay='.2s' style="text-align: justify;">{!!$sinchild->details!!}</p>
                           
                            <a class="theme_btn theme_btn_bg wow fadeInUp2 animated" data-wow-delay='.5s' href="{{route('donte')}}">Take Action <span><i
                                        class="fas fa-heart"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--what-we-area end-->

    @include('includes.one-dollar')

<!--donation-area start-->
        <section class="donation-area-03  pos-rel py-12">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-7 col-lg-6 col-md-6">
                        <div class="doante-select-area donate-select-02 mb-7 mr-12 text-center white-bg wow fadeInUp2 animated"
                            data-wow-delay='.3s'>
                        <div class="section-title text-center mb-10 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h2>Become a donor</h2>
                                <p> Join us to make a direct impact in the lives of the world’s most vulnerable children.</p>
                            </div>
                            
                            <button class="theme_btn theme_btn_bg" onclick="window.location.href='{{route('donte')}}'">Proceed </button>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6 col-md-6">
                        <div class="about-wrapper about-wrap-02 mb-14">
                            <div class="section-title text-left mb-5 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h6><span><i class="fas fa-heart"></i></span> A better humanity is possible</h6>
                                <h2>Ready To Take Action?</h2>
                            </div>
                            <p>Every child deserves a fair chance in life. Your donation helps GOALPrime make a difference for children around the world.</p>
                           
                            <a class="theme_btn theme_btn2 theme_btn_bg_02" href="{{route('about')}}">Learn more <span><i
                                        class="fas fa-heart"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--donation-area end-->  

      
       
    </main>
  @endsection