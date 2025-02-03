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
                    style="background-image: url(assets/img/slider/s5.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                   
                                <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                   Research and reports
                            </h1> 
                                        <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                            <li><a class="theme_btn theme_btn_bg" href="about.php">Learn more <span><i class="fas fa-heart"></i></span></a>
                                            </li>
                                            <!-- <li><a class="theme_btn theme_btn2 theme_btn_bg_02" href="case-details.php">our cases <span><i class="fas fa-heart"></i></span></a>
                                            </li> -->
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
        <section class="events-grid-area py-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="events-wrapper mb-7">
                            @foreach ($reshers as $item)
                            <div class="events grey-bg2 pos-rel d-sm-flex align-items-center2 mb-7 wow fadeInUp2 animated"
                            data-wow-delay='.3s'>
                            <div class="events__back" style="background-image: url({{asset($item->image)}});">
                            </div>
                            <div class="row align-items-center px-12 ">
                                <div class="col-xl-8 col-lg-7 col-md-7">
                                    <div class="events__content">
                                        <span><i class="far fa-calendar-alt"></i> {{Date('d M, Y',strtotime($item->created_at))}}</span>
                                        <h3 class="mb-15"><a href="{{route('repotdetails',['details' => $item->slug])}}">{{$item->title}}</a></h3>
                                        <p>{!!Str::limit($item->details,'40','...')!!}</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-5 col-md-5">
                                    <div class="events__btn text-md-center text-lg-right">
                                        <a class="theme_btn theme_btn_bg" href="{{route('repotdetails',['details' => $item->slug])}}">Read More <span><i
                                                    class="fas fa-heart"></i></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                            @endforeach
                           
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="pagination-area my-7 ">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center">
                                          {{$reshers->links()}}
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
               <!--     <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="details-right-area">
                            <div class="widget grey-bg2 mb-7 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <div class="widget-post">
                                    <h3 class="cases-title mb-7">Stories</h3>
                                    @foreach ($news as $item)
                                    <div class="post d-flex align-items-center mb-5">
                                        <div class="post__thumb mr-5">
                                            {{-- <img src="{{asset($item->imagefile)}}" alt=""> --}}
                                        </div>
                                        <div class="post__content">
                                            <h5><a href="{{route('newsdetails',['slug' => $item->slug])}}">{{$item->title}}</a></h5>
                                            <a class="view_btn" href="{{route('newsdetails',['slug' => $item->slug])}}">view Details</a>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </section>
        <!--cases-details-area end-->
        <!--cta-area start-->
        <section class="cta-area theme-bg2 py-3 mb-5">
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