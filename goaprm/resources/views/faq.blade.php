@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')

    <main>

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset('assets/img/slider/slider2.JPG')}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="page-title-wrapper text-center pt-125">
                            <div class="page-title-box">
                                <h2 class="page-title">Faq</h2>
                                <ul class="breadcrumb-list">
                                    <li><a href="{{url('/')}}">Home <i class="far fa-chevron-right"></i></a></li>
                                    <li><a href="#">Faq</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--faq-area start-->
        <section class="faq-area grey-bg2 pt-50 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="faq-wrapper-area white-bg pt-45 pb-50">
                            <div id="accordion">
                               @foreach ($faqs as $item)
                               <div class="card">
                                <div class="card-header" id="headingOne">
                                  <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapse{{$item->faqid}}" aria-expanded="true" aria-controls="collapse{{$item->faqid}}">
                                      {{$item->name}}
                                    </button>
                                  </h5>
                                </div>
                            
                                <div id="collapse{{$item->faqid}}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                  <div class="card-body mb-10">
                                     {!!$item->body!!}
                                  </div>
                                </div>
                              </div>
                               @endforeach
                                
                              </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="details-right-area">
                            <div class="widget white-bg mb-30 wow fadeInUp2 animated" data-wow-delay='.2s'>
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
                            <div class="widget mb-30">
                               @foreach ($projs as $item)
                               <div class="events_wrapper wow fadeInUp2 animated" data-wow-delay='.2s'>
                                <div class="events-02 events-03 pos-rel mb-30" style="background-image: url({{asset($item->imagefile)}});">
                                    <div class="cases">
                                        <div class="cases__box pos-rel">
                                            <ul class="cases__tag white-bg">
                                                <li>
                                                    <div class="cases--author d-flex align-items-center">
                                                        {{-- <img src="" alt=""> --}}
                                                        <h4 class="semi-02-title ml-15">GOALPrime</h4>
                                                    </div>
                                                </li>
                                                <li>
                                                    <a class="theme_btn theme_btn2 theme_btn_bg_02 d-btn" href="{{route('donte')}}?donateto={{$item->title}}">Donate</a>
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
                                                <?php
                                                    $percent = (int)$item->amount_raised / (int)$item->budget * 100
                                                  ?>
                                                <div class="progress">
                                                    <div class="progress-bar wow fadeInLeft animated" data-wow-delay="0.3s" role="progressbar" style="width: {{$percent}}%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"><h5>{{$percent}}%</h5></div>
                                                </div>
                                            </div>
                                            <h3><a href="{{route('projed',['id' => $item->id])}}">{{$item->title}}</a></h3>
                                            <p>{!!Str::limit($item->details,'40','...')!!}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                               @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--faq-area end-->
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