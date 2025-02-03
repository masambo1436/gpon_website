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
                    style="background-image: url({{asset('assets/img/slider/s8.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    
                                <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                   GOALPrime's Latest
                            Event & Program
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

  <!--events-area start-->
  <section class="donation-area pos-rel pt-30 pb-30" >
     
  
    <div class="container">
       
        <div class="row">
           
           @foreach ($evens as $item)
           <div class="col-xl-4 col-lg-4 col-md-6">
            <div class="events-02 events-02-lg pos-rel mb-30 wow fadeInUp2 animated" data-wow-delay='.2s' style="background-image: url({{asset($item->eventimage)}});">
                <div class="events__content">
                    <span><i class="far fa-calendar-alt"></i>{{Date('d M, Y',strtotime($item->created_at))}}</span>
                    <h3><a href="{{route('eventsin',['id' => $item->id])}}">{{$item->title}}</a></h3>
                    <a class="more_btn3" href="javascript:void(0)" onclick="joinevt('{{$item->id}}')">join event <i
                            class="far fa-long-arrow-right"></i></a>
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
                           {{$evens->links()}}
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!--events-area end-->

 <!--spotlight-area start-->
          <section class="blog-area theme-bg3 pt-20 pb-30">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="section-title text-center mb-85  wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> Latest News</h6>
                            <h2>Beyond the headlines, every child has a story. </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                     @foreach ($news as $item)
                     <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay='.3s'>
                        <div class="blog mb-30">
                            <div class="blog__thumb mb-40">
                                <img src="{{asset($item->imagefile)}}" alt="">
                            </div>
                            <div class="blog__content">
                                {{-- <a class="tag" href="blog-details.php">Category</a> --}}
                                <h3 class="blog-title mb-15"><a href="{{route('newsdetails',['slug' => $item->slug])}}">{{$item->title}}</a></h3>
                                <p class="mb-25">{!!Str::limit($item->description,'40','...')!!}</p>
                                <ul class="blog-author">
                                    <li><a class="mr-30" href="#">
                                            <span>{{$item->postby}}</span></a></li>
                                    <li>
                                        <i class="far fa-calendar-alt"></i> {{Date('d M, Y',strtotime($item->created_at))}}
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                     @endforeach
                </div>

                
            </div>
        </section>
        <!--spotlight-area end-->

        
       
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