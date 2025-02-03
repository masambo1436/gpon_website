@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')
<main>
    <!--slider-area start-->
    <div class="slider-area pos-rel">
        <div class="slider-active">
            @foreach ($slides as $item)
            <div class="single-slider slider-height pos-rel d-flex align-items-center"
            style="background-image: url({{asset($item->image)}});">
            <div class="container">
                <div class="row">
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
                </div>
            </div>
        </div>
            @endforeach
        </div>
    </div>
    <!--slider-area end-->

    <!--area start-->
    <section class="about-area grey-bg2 pos-rel pt-40 pb-10">
        <div class="right-shape">
            <img src="{{asset('assets/img/shape/01.png')}}" alt="">
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="about-img mb-60 pos-rel">
                        <div class="about-img__thumb pr-45 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <img src="{{asset('assets/img/about/02.jpg')}}" alt="">
                        </div>
                        <div class="experience-box heding-bg wow fadeInUp2 animated"
                        data-wow-delay='.3s'>
                            <h1>06</h1>
                            <h4 class="semi-02-title">Years 
                                Experience</h4>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="about-wrapper mb-30">
                        <div class="section-title text-left mb-20 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            
                            <h2>We make conflict affected people smile again</h2>
                        </div>
                        <p>GOALPrime Organization Nigeria (GPON) is a policy-driven humanitarian, non-governmental 
                            organization that implements her program through revitalized partnerships.</p>
                        <ul class="about_list mt-30 mb-20 wow fadeInUp2 animated" data-wow-delay='.2s'>
                            
                            <li style="text-align: justify;">GPON is currently implementing in Nigeria where we have reached over 1,000,000 lives (women, men, boys, girls, elderly and disabled) with relief materials, child protection services, Education-in-Emergencies interventions, WASH interventions, socio-economic reintegration of ex-associates of Violence Extremist Organizations (VEOs), livelihood skills, Primary healthcare, Risk & Behavioral change communications, Peacebuilding and Lifeskills education across the Northeast, Northwest and Northcentral geopolitical zones via partnerships with governments, development & humanitarian donors/agencies and private sector organizations.</li>
                        </ul>
                        <a class="theme_btn theme_btn_bg" href="about.php">EXPLORE WHAT WE DO <span><i class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--area end-->

  @include('includes.one-dollar')



<!--donation-area start-->
    <section class="donation-area-03 theme-bg3 pos-rel pt-50 pb-50">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-7 col-lg-6 col-md-6">
                    <div class="doante-select-area donate-select-02 mb-30 mr-50 text-center white-bg wow fadeInUp2 animated"
                        data-wow-delay='.3s'>
                    <div class="section-title text-center mb-40 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h2>Become a donor</h2>
                            <p> Join us to make a direct impact in the lives of the world’s most vulnerable children.</p>
                        </div>
                       
                        <button class="theme_btn theme_btn_bg" onclick="window.location.href='{{route('donte')}}'">Proceed </button>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 col-md-6">
                    <div class="about-wrapper about-wrap-02 mb-60">
                        <div class="section-title text-left mb-20 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> A better humanity is possible</h6>
                            <h2>Ready To Take Action?</h2>
                        </div>
                        <p>Every child deserves a fair chance in life. Your donation helps GOALPrime make a difference for children around the world.</p>
                       
                        <a class="theme_btn theme_btn2 theme_btn_bg_02" href="{{route('about')}}">Learn more <span><i
                                    class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--donation-area end-->  


    <!--risk communication area start-->
    @foreach ($prgs as $item)
    <section class="what-we-area grey-bg2 pos-rel pt-50 pb-50 mb-10">
        
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="about-wrapper we-wrapper mb-30">
                        <div class="section-title text-left mb-20 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> A Better Humanity is possible</h6>
                            <h2>{{$item->caption}}</h2>
                        </div>
                        <p class="wow fadeInUp2 animated" data-wow-delay='.2s'>{!!$item->content!!}</p>
                    
                        <a class="theme_btn theme_btn_bg wow fadeInUp2 animated" data-wow-delay='.5s' href="{{route('donte')}}">Take Action <span><i
                                    class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-help" style="background-image: url({{asset($item->image)}});">    
        </div>
    </section>

    @endforeach
    <!--communication-risk-area end-->

    <!--cases-area start-->
    <section class="cases-area theme-bg3 pt-40 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <div class="section-title text-center mb-75 pl-50 pr-50 wow fadeInUp2 animated" data-wow-delay='.1s'>
                        <h6><span><i class="fas fa-heart"></i></span> Popular Cases</h6>
                        <h2>Donate to Our Popular Charity Causes
                             </h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($projs as $item)
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="cases grey-bg2 mb-30 wow fadeInUp2 animated" data-wow-delay='.3s'>
                        <div class="cases__box pos-rel">
                            <div class="cases__box--img">
                                <img src="{{asset($item->imagefile)}}" alt="">
                            </div>
                            <ul class="cases__tag white-bg">
                                <li>
                                    <div class="cases--author d-flex align-items-center">
                                       
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
                                <?php
                                  $percent = (int)$item->amount_raised / (int)$item->budget * 100
                                ?>
                                 <div class="progress">
                                    <div class="progress-bar wow fadeInLeft animated" data-wow-delay="0.7s" role="progressbar" style="width: {{$percent}}%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"><h5>{{$percent}}%</h5></div>
                                </div>
                            </div>
                            <h3><a href="{{route('projed',['id' => $item->id])}}">{{$item->title}}</a></h3>
                           
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--cases-area end-->

 

     <!--spotlight-area start-->
    <section class="blog-area theme-bg3 pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 offset-xl-3">
                    <div class="section-title text-center mb-85  wow fadeInUp2 animated" data-wow-delay='.1s'>
                        <h6><span><i class="fas fa-heart"></i></span> GOALPrime spotlight </h6>
                        <h2>Beyond the headlines, every child has a story.</h2>
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
                                <i class="far fa-calendar-alt"></i>{{Date('d M, Y',strtotime($item->created_at))}}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
               @endforeach
               
            </div>

            {{-- <div class="row">
                <div class="col-xl-12">
                    <div class="pagination-area mt-30 mb-30">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link" href="#"><i class="far fa-chevron-left"></i></a></li>
                                <li class="page-item"><a class="page-link" href="#">01</a></li>
                                <li class="page-item"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                                <li class="page-item"><a class="page-link" href="#">04</a></li>
                                <li class="page-item"><a class="page-link" href="#">05</a></li>
                                <li class="page-item"><a class="page-link" href="#"><i class="far fa-chevron-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div> --}}
        </div>
    </section>
    <!--spotlight-area end-->


   
    <!--testimonial-area start-->
    <section class="testimonial-area pos-rel pt-80 pb-80">
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
    </section>
    <!--testimonial-area end-->
    
    <!--brand-area start-->
    @include('includes.partners')
    <!--brand-area end-->

      <!--subscribe-area start-->
      <section class="subscribe-area theme-bg2 pb-0">
        <div class="container">
            <div class="subscribe-bg">
                <div class="row sub-back theme-bg2 align-items-center pt-40 pb-20 pr-55" style="background-image: url(assets/img/shape/12.png);">
                    <div class="col-xl-4 col-lg-12">
                        <div class="section-title white-title text-left mb-30 text-xs-center text-sm-center   text-md-center wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h2>Newsletters</h2>
                            <p>More Update To Subscribe Newsletters</p>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-12">
                        <div class="form-area text-center d-lg-flex align-items-center justify-content-center mb-30">
                            <form class="form d-lg-flex"action="{{route('subcribe')}}" method="POST">
                                  @csrf
                                <input type="email" name="email"  class="form-control" placeholder="Enter Your Email">
                                <button class="theme_btn theme_btn3 theme_btn_bg_02 border_btn ml-10">subscribe now <span><i class="fas fa-envelope"></i></span></button>
                            
                            </form>
                        </div>
                        <p id="getmsg"></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--subscribe-area end-->
</main>
@endsection