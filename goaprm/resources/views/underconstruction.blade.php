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
                    style="background-image: url({{asset('assets/img/slider/slider1.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    <h5 class="sub-title mb-25 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>Raising Your Helping Hands</h5>
                                <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
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
     
         <!--services-area start-->
         <!-- <section class="services-area grey-bg2 pb-10" >
            <div class="container custom-container-02">
                <div class="services-bg white-bg pos-rel pt-30 pr-30 pl-30">
                    <div class="row">
                       @foreach ($watwedo as $item)
                       <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp2 animated" data-wow-delay='.3s'>
                        <div class="services pos-rel mb-30">
                            <div class="services__img">
                                <img src="{{asset($item->imagefile)}}" alt="">
                            </div>
                            <ul class="services__content heding-bg pos-abl">
                                <li>
                                    <h4 class="semi-02-title"><a href="{{route('sersingle',['id' => $item->id])}}">{{$item->caption}}</a></h4>
                                    <p>Giving money to food</p>
                                </li>
                                <li><a class="more_btn" href="{{route('sersingle',['id' => $item->id])}}"><i class="far fa-arrow-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                       @endforeach
                        
                    </div>
                </div>
            </div>
        </section> -->
        <!--services-area end-->

        <!-- what we do -->
        <div class="text-center text-[#30312C] pt-20 pb-10">
            <h4 class=" font-bold leading-loose text:2xl md:text-4xl">UNDER-CONSTRUCTION</h4>
            <p class="text-base">
                The content you are looking for is currently not available.
            </p>
        </div>
        <section class="my-10">
            <div class="text-center space-y-5 bg-[#FCFFDE66] py-5">
                <div class="inline-flex items-center justify-center w-full relative bg-none">
                    <hr class="w-96 h-px my-8 bg-gray-900 border-0 dark:bg-gray-700 ">
                    <div class="absolute  -translate-x-1/2 left-1/2 bg-white  w-60">
                        <img src="{{asset('assets/img/added-pic/underconstruction.png')}}" alt="underconstruction" class="bg-[#FCFFDE66]">
                    </div>
                    <!-- <span class="absolute px-6 font-medium text-gray-900 -translate-x-1/2 bg-white left-1/2 ">or</span> -->
                </div>
             
            </div>
        
        </section>
        <br>
        <!-- end what we do -->
        <!--subscribe-area start-->
        <section class="subscribe-area theme-bg2 py-3 px-5 mb-5">
            <div class="">
                <div class="">
                    <div class="lg:flex flex-row justify-between items-center ">
                        <div class="subscribe-bg">
                            <div class="section-title white-title text-left  wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h2>Sign up for our newsletter</h2>
                                <p>Be the first to know about releases and industry news and insights.</p>
                            </div>
                        </div>
                        <div class="">
                            <div class="form-area text-center lg:flex items-center justify-center">
                                <form class="form lg:flex gap-3 justify-center"action="{{route('subcribe')}}" method="POST">
                                    @csrf
                                    <input type="email" name="email"  class="form-control" placeholder="Enter Your Email">
                                    <button class="theme_btn theme_btn3 theme_btn_bg_02 border_btn ml-10">subscribe now <span><i class="fas fa-envelope"></i></span></button>
                                
                                </form>
                            </div>
                            <p id="getmsg"></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!--subscribe-area end-->

<!--donation-area start-->
        
        <!--donation-area end-->  

      
       
    </main>
    @endsection