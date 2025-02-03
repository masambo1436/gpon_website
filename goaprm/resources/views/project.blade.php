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
                    style="background-image: url({{asset('assets/img/slider/s7.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    <h5 class="sub-title mb-25 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>A better humanity is possible</h5>
                                    <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".2s">
                                        We improve the lives of vulnerable women and children</h1>
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

        
        <!-- course-area-start -->
       <div class="course-area course-area-02 pt-30 pb-40">
        <div class="container">
           
            <div class="row grid">
               @foreach ($projects as $item)
               <div class="col-xl-4 col-lg-4 col-md-6 grid-item cat2 cat5 cat3">
                <div class="cases grey-bg2 mb-30 wow fadeInUp2 animated" data-wow-delay='.3s'>
                    <div class="cases__box pos-rel">
                        <div class="cases__box--img">
                            <img src="{{asset($item->imagefile)}}" alt="">
                        </div>
                        <ul class="cases__tag white-bg">
                            <li>
                                <div class="cases--author d-flex align-items-center">
                                    {{-- <img src="{{asset($item->imagefile)}}" alt=""> --}}
                                    <h4 class="semi-02-title ml-15">GOALPrime</h4>
                                </div>
                            </li>
                            <li>
                                <a class="theme_btn theme_btn_bg d-btn" href="{{route('donte')}}?donateto={{$item->title}}">Donate</a>
                            </li>
                        </ul>
                    </div>
                    <div class="cases__content">
                        <div class="cases-progress mb-25">
                            <?php 
                            $ex = $exchg ? $exchg->content : ""; 
                            $bd = $item->budget / $ex;
                            $ard = $item->amount_raised / $ex;
                         ?>
                            <p class="funding">Budget <span>&#x20A6;{{number_format($item->budget)}} || ${{number_format($bd)}}</span></p>
                            <p class="funding">Raised <span>&#x20A6;{{number_format($item->amount_raised)}} || ${{number_format($ard)}}</span></p>
                            <div class="progress">
                                <?php
                                  $percent = (int)$item->amount_raised / (int)$item->budget * 100
                                ?>
                                <div class="progress-bar wow fadeInLeft animated" data-wow-delay="0.3s" role="progressbar" style="width: {{$percent}}%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"><h5>{{$percent}}%</h5></div>
                            </div>
                        </div>
                        <h3><a href="{{route('projed',['id' => $item->id])}}">{{$item->title}}</a></h3>
                        <p>{!!Str::limit($item->details,'40','...')!!}</p>
                    </div>
                </div>
            </div>
               @endforeach
               
            </div>
        </div>
        </div>
        <!-- course-area-end -->
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
                        <a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
       </section>
       <!--cta-area end-->
    </main>
@endsection