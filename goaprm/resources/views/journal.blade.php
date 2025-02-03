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
                                    <h5 class="sub-title mb-25 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>Raising Your Helping Hands</h5>
                                <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                   GOALPrime Journal
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
        
          <!--spotlight-area start-->
          <section class="blog-area pt-5 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="section-title text-center mb-20  wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> Latest Journal</h6>
                            <h2>See some of our Journals. </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($allnews as $item)
                    <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay='.3s'>
                        <div class="blog mb-6 bg-[#F0F0F0] rounded-lg p-3 flex flex-col justify-between">
                            <div class="blog__thumb mb-10">
                                <img src="{{asset($item->image)}}" alt="">
                            </div>
                            <div class="blog__content">
                                
                                <h3 class="blog-title mb-15"><a href="{{route('journaldetails',['details' => $item->slug])}}">{{$item->title}}</a></h3>
                                <p class="mb-25">{!!Str::limit($item->description,'40','...')!!}</p>
                                <ul class="blog-author">
                                    <li><a class="mr-7" href="#">
                                            <span>{{$item->postby}}</span></a></li>
                                    <li>
                                        <i class="far fa-calendar-alt"></i> {{Date('d M, Y',strtotime($item->created_at))}}
                                    </li>
                                </ul>
                            </div>
                            <div class="mt-3">
                                <a class="tag" href="route('journaldetails',['details' => $item->slug])">Learn More <span class="pl-3"><i class="far fa-chevron-right"></i></span></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                     
                </div>

                <div class="row">
                    <div class="col-xl-12">
                        <div class="pagination-area my-7">
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-center">
                                    {{$allnews->links()}}
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--spotlight-area end-->
        <section class="cta-area theme-bg2 py-3 my-5">
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

         <!--events-area start-->
  <!-- <section class="donation-area pos-rel py-12" >
    <div class="row">
               <div class="col-xl-6 offset-xl-3">
                   <div class="section-title text-center mb-20 wow fadeInUp2 animated" data-wow-delay='.1s'>
                      
                       <h2 style="color: white;"> <span>GOALPrime</span> Latest
                           Event & Program</h2>
                   </div>
               </div>
           </div>
 
   <div class="container">
      
       <div class="row">
          @foreach ($evens as $item)
          <div class="col-xl-4 col-lg-4 col-md-6">
            <div class="events-02 events-02-lg pos-rel mb-7 wow fadeInUp2 animated" data-wow-delay='.2s' style="background-image: url({{asset($item->eventimage)}});">
                <div class="events__content">
                    <span><i class="far fa-calendar-alt"></i> {{Date('d M, Y',strtotime($item->created_at))}}</span>
                    <h3><a href="{{route('eventsin',['id' => $item->id])}}">{{$item->title}}</a></h3>
                    <a class="more_btn3" href="javascript:void(0)" onclick="joinevt('{{$item->id}}')">join event <i
                            class="far fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
          @endforeach
         
       </div>
       
   </div>
</section> -->
<!--events-area end-->

       <!--testimonial-area start-->
       <!-- <section class="testimonial-area theme-bg3 pos-rel pt-80 pb-80">
           <div class="container">
               <div class="row">
                   <div class="col-xl-4">
                       <div class="testimonial-text-wrapper wow fadeInUp2 animated mb-30" data-wow-delay='.1s'>
                           <div class="section-title text-left mb-35">
                               <h6><span><i class="fas fa-heart"></i></span> Clients Feedback</h6>
                               <h2>What Our Partners 
                                   Say About Us</h2>
                           </div>
                           
                           <a class="theme_btn theme_btn_bg" href="{{route('donte')}}">Take Action  <span><i class="fas fa-heart"></i></span></a>
                       </div>
                   </div>
                   <div class="col-xl-8 testimonial-wrapper">
                       <div class="row testimonial-active">
                                @foreach ($testi as $item)
                                <div class="col-xl-6">
                                <div class="testimonial-item white-bg pos-rel wow fadeInUp2 animated" data-wow-delay='.3s'>
                                    <div class="author_box d-flex align-items-center mb-25">
                                        <div class="author_box__img mr-15">
                                            {{-- <img src="assets/img/testimonial/01.png" alt=""> --}}
                                        </div>
                                        <div class="author_box__content">
                                            <h4 class="semi-02-title">{{$item->name}}</h4>
                                            {{-- <p>Senior Web Developer</p> --}}
                                        </div>
                                    </div>
                                    <p class="semi-title mb-10">{!!$item->content!!}</p>
                                    <div class="review-icon">
                                        {{-- <span>Most Trusted</span>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a> --}}
                                    </div>
                                </div>
                            </div>
                                @endforeach
                           
                       </div>
                   </div>
               </div>
           </div>
       </section> -->
       <!--testimonial-area end-->
    </main>
  @endsection