@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')

    <main style="background:#F8FFF9">

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset('assets/img/added-pic/our-team.jpg')}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="page-title-wrapper text-center pt-125">
                            <!-- <div class="page-title-box">
                                <h2 class="page-title">GOALPrime workforce</h2>
                               
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->

        <!--team-details-area start-->
        <section class="team-details-area pt-10">
            <div class="container">
                <div class="row items-center">
                    <div class="col-xl-5 col-lg-5">
                        <div class="team-details-img mb-[70px]">
                            <img src="{{asset($team->file)}}" alt=""  style="max-height:400px; object-fit:contain; border-radius:20px">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7">
                        <div class="team-details-wrapper pl-10 mb-[70px]">
                            <h2>{{$team->name}}</h2>
                            <span class="mb-3">{{$team->position}}</span>
                            <p class="mb-7" style="text-align: justify;">{{$team->details}}</p>
                            <div class="teams__thumb--social">
                                @if (!is_null($team->fbook))
                                    <a href="{{$team->fbook}}" target="_blank">
                                        <i class="fab fa-facebook-f"></i>
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    @endif
                                   @if (!is_null($team->twitte))
                                   <a href="{{$team->twitte}}" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                    <i class="fab fa-twitter"></i>
                                </a>
                                   @endif
                                   @if (!is_null($team->instagram))
                                   <a href="{{$team->instagram}}" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                    <i class="fab fa-instagram"></i>
                                </a>
                                   @endif
                                   @if (!is_null($team->linkedin))
                                   <a href="{{$team->linkedin}}" target="_blank">
                                    <i class="fab fa-linkedin"></i>
                                    <i class="fab fa-linkedin"></i>
                                </a>
                                   @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--team-details-area end-->
      
        <!--cta-area start-->
        <section class="cta-area theme-bg2 py-3 mb-3">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-8 col-lg-8 col-md-8">
                        <div class="cta-wrapper pl-12">
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