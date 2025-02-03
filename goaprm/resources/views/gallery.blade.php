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
                            style="background-image: url({{asset('assets/img/slider/s10.jpg')}});">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-7">
                                        <div class="slider__content text-left">
                                           
                                        <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                           GOALPrime Award Winning Gallery
                                    </h1>
                                                <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                                    <li><a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i class="fas fa-heart"></i></span></a>
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

        <!--gallery-area start-->
        <section class="gallery-area pt-50 pb-50">
            <div class="container">
                <div class="row">
                    @foreach ($galleries as $item)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="gallery gallery-02 pos-rel text-center wow fadeInUp2 animated" data-wow-delay='.3s'>
                            <div class="gallery__thumb pos-rel mb-30">
                                <img src="{{asset($item->thumbnail)}}" alt="">
                            </div>
                            <div class="gallery__content">
                                <h4 class="semi-02-title"><a href="{{route('galldetails',['id' => $item->id])}}">{{$item->caption}} <span><i class="far fa-plus"></i></span></a></h4>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </section>
        <!--gallery-area end-->
        
       
    </main>
    @endsection