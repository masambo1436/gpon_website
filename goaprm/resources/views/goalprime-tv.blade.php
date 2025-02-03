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
                            style="background-image: url({{asset('assets/img/slider/s9.jpg')}});">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-7">
                                        <div class="slider__content text-left">
                                           
                                        <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                           GOALPrime TV
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
        <!--cases-details-area start-->
        <section class="events-grid-area pt-5 pb-20">
            <div class="container">
                
                <div class="row">
                    @foreach ($glive as $item)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="events_grid_wrapper">
                            <div class="events-02 pos-rel mb-20 wow fadeInUp2 animated" data-wow-delay='.4s' style="background-image: url(assets/img/events/12.jpg);">
                                <iframe width="560" height="315" src="{{$item->link}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>        
                            </div>
                        </div>
                    </div>
                    @endforeach
                   
                </div>
                
                <div class="row">
                    <div class="col-xl-12">
                        <div class="pagination-area mt-30 mb-30">
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-center">
                                    {{$glive->links()}}
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--cases-details-area end-->
      
    </main>
   @endsection