@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')
    <main >

        <!--slider-area start
           <div class="slider-area pos-rel">
            <div class="slider-active">
                <div class="single-slider slider-height pos-rel d-flex align-items-center"
                    style="background-image: url({{asset('assets/img/added-pic/organogram.jpg')}}); background-size: contain;  ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    
                                    <!-- <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                        GOALPrime's Amazing Workforce
                                    </h1>
                                    <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                        <li><a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i class="fas fa-heart"></i></span></a>
                                        </li>
                                        
                                    </ul> ->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
        slider-area end-->
        
           <!--slider-area start-->
    <div class="slider-area pos-rel">
        <div class="slider-active ">
            @foreach ($teams as $item)
            <div class="single-slider slider-height pos-rel d-flex align-items-center"
            style="background-image: url({{asset($item->image)}}); background-size: contain;">
            <div class="container">
                <!-- <div class="row">
                    <div class="col-xl-7">
                        <div class="slider__content text-left">
                           
                            <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                            {{$item->content}}
                            </h1>
                            <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                <li><a class="theme_btn theme_btn_bg" href="{{route('about')}}">Learn more <span><i class="fas fa-heart"></i></span></a>
                                </li>
                                <li><a class="theme_btn theme_btn2 theme_btn_bg_02" href="{{route('project')}}">our cases <span><i class="fas fa-heart"></i></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
            @endforeach
        </div>
    </div>
    <!--slider-area end-->
    
         <!--team-area start-->
         <section class="team-area-02 pt-10 pb-16">
            <div class=" w-[90%]  mx-auto pb-3">
                <div class="   wow fadeInUp2 animated" data-wow-delay='.1s'>
                    <!-- <h6 class=""><span><i class="fas fa-heart"></i></span> About GOALPrime</h6> -->
                    <h2 class=" text-center font-bold md:text-2xl xl:text-3xl  wow fadeInUp2 animated">Meet The Team</h2>
                    <!-- <p class="text-[#30312CCC] text-center leading-8">Take a tour on our Executive Management team with their various <br>profiles and designations</p> -->
                </div>
                </div>
            <div class="container pt-10">
                <div class="row">
                    @foreach ($slider as $item)
                    <div class="col-xl-3 col-lg-6 col-md-6 mb-7 wow fadeInUp animated" data-wow-delay='.2s'>
                        <div class="teams white-bg mb-7 shadow-lg">
                            <div class="teams__thumb pos-rel mb-7 ">
                                <div class="teams__thumb--img pos-rel">
                                    <img src="{{asset($item->file)}}" alt="" style="max-height:400px; object-fit:contain">
                                </div>
                                <div class="teams__thumb--social">
                                    @if (!is_null($item->fbook))
                                    <a href="{{$item->fbook}}" target="_blank">
                                        <i class="fab fa-facebook-f"></i>
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    @endif
                                   @if (!is_null($item->twitte))
                                   <a href="{{$item->twitte}}" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                    <i class="fab fa-twitter"></i>
                                </a>
                                   @endif
                                   @if (!is_null($item->instagram))
                                   <a href="{{$item->instagram}}" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                    <i class="fab fa-instagram"></i>
                                </a>
                                   @endif
                                   @if (!is_null($item->linkedin))
                                   <a href="{{$item->linkedin}}" target="_blank">
                                    <i class="fab fa-linkedin"></i>
                                    <i class="fab fa-linkedin"></i>
                                </a>
                                   @endif
                                </div>
                            </div>
                            <div class="teams__content text-center">
                                <h3 class="semi-02-title"><a href="{{route('temdetails',['id' => $item->id])}}">{{$item->name}}</a></h3>
                                <p>{{$item->position}}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                   
                </div>
            </div>
        </section>
        <!--team-area end-->
        
   <!--spotlight-area start-->
        
        <!--spotlight-area end-->
    

    </main>
  @endsection