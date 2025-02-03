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
                    style="background-image: url({{asset($proj->imagefile)}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                   
                                <!-- <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                    {{$proj->title}}
                            </h1>  -->
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
        
        <!--cases-details-area start-->
        <section class="cases-details-area pt-30">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="details-left-area pb-100">
                            <div class="cases cases-wrapper-box wow fadeInUp2 animated"
                                data-wow-delay='.2s'>
                                <div class="cases__content">
                                    <h2><a href="#">{{$proj->title}}</a></h2>
                                    <div class="cases--author d-flex align-items-center mb-25">
                                        {{-- <img src="{{asset($proj->imagefile)}}" alt=""> --}}
                                        <h4 class="semi-02-title ml-15">GOALPrime</h4>
                                    </div>
                                    <div class="cases-meta d-sm-flex justify-content-between">
                                        <div class="cases-progress mb-60">
                                            <?php 
                                            $ex = $exchg ? $exchg->content : ""; 
                                            $bd = $proj->budget / $ex;
                                            $ard = $proj->amount_raised / $ex;
                                         ?>
                                            <h4 class="funding semi-02-title">Budget <span>&#x20A6;{{number_format($proj->budget)}} || ${{number_format($bd)}}</span></h4>
                                            <h4 class="funding semi-02-title">Raised <span>&#x20A6;{{number_format($proj->amount_raised)}} || ${{number_format($ard)}}</span></h4>
                                            <div class="progress">
                                                <?php
                                                $percent = (int)$proj->amount_raised / (int)$proj->budget * 100
                                              ?>
                                                <div class="progress-bar wow fadeInLeft animated" data-wow-delay="0.3s"
                                                    role="progressbar" style="width: {{$percent}}%;" aria-valuenow="25"
                                                    aria-valuemin="0" aria-valuemax="100">
                                                    <h3>{{$percent}}%</h3>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cases-btn mb-10 d-none d-xl-inline-block">
                                            <a href="{{route('donte')}}?donateto={{$proj->title}}" class="theme_btn theme_btn2 theme_btn_bg_02">donate
                                                Now <span><i class="fas fa-heart"></i></span></a>
                                        </div>
                                    </div>
                                    <div class="cases__box mb-40">
                                        {{-- <img class="img-fluid" src="{{asset('assets/img/cases/18.jpg')}}" alt=""> --}}
                                    </div>
                                    <p>{!!$proj->details!!}</p>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="details-right-area">
                            <div class="widget grey-bg2 mb-30">
                                <div class="widget-post">
                                    @if (count($resh)>0)
                                    <h3 class="cases-title mb-30">Cases</h3>
                                    @foreach ($resh as $item)
                                    <div class="post d-flex align-items-center mb-20">
                                     <div class="post__thumb mr-20">
                                         <img src="{{asset($item->image)}}" alt="">
                                     </div>
                                     <div class="post__content">
                                         <h5><a href="{{route('repotdetails',['details' => $item->slug])}}">{{$item->title}}</a></h5>
                                         <a class="view_btn" href="{{route('repotdetails',['details' => $item->slug])}}">view Details</a>
                                     </div>
                                 </div>
                                    @endforeach
                                    @endif
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