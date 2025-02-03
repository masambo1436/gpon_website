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
                                <li><a class="theme_btn theme_btn2 theme_btn_bg_02" href="{{route('project')}}">our interventions <span><i class="fas fa-heart"></i></span></a>
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
    <section class="about-area pos-rel pt-20 ">
        <div class="right-shape">
            <img src="{{asset('assets/img/shape/01.png')}}" alt="">
        </div>
        <div class="w-nty">
            <div class="rolls align-items-center  mx-auto">
                
                <div class="colo-2">
                    <div class="about-wrapper mb-30">
                        <div class="section-title text-left mb-5 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            
                            <h2>We make conflict affected people smile again</h2>
                        </div>
                        <p class="text-base">GOALPrime Organization Nigeria (GPON) is a policy-driven humanitarian, non-governmental 
                            organization that implements her program through revitalized partnerships.</p>
                        <ul class="py-3 text-base wow fadeInUp2 animated" data-wow-delay='.2s'>
                            
                            <li style="text-align: justify;">GPON is currently implementing in Nigeria where we have reached over 7,000,000 lives (women, men, boys, girls, elderly and disabled) with relief materials, child protection services, Education-in-Emergencies interventions, WASH interventions, socio-economic reintegration of ex-associates of Violence Extremist Organizations (VEOs), livelihood skills, Primary healthcare, Risk & Behavioral change communications, Peacebuilding and Lifeskills education across the Northeast, Northwest and Northcentral geopolitical zones via partnerships with governments, development & humanitarian donors/agencies and private sector organizations.</li>
                        </ul>
                    </div>
                </div>
                <div class="colo-1">
                @foreach ($glivevideo as $item)
                    <div class="events_grid_wrapper">
                        <div class="events-02 about-img__thumb pos-rel mb-10 wow fadeInUp2 animated" data-wow-delay='.4s' style="background-image: url(assets/img/about/02.jpg); border-radius:10px; background-position:cover">
                            <iframe  height="500" width="100%" src="{{$item->link}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>        
                        </div>
                    @endforeach
                    </div>
                    <!-- <div class="about-img pos-rel">
                        <div class="about-img__thumb pr-45 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <img src="{{asset('assets/img/about/02.jpg')}}" alt="">
                        </div>
                        
                    </div> -->
                </div>
            </div>
        </div>
    </section>
    
    <!-- what we do -->
    
    <!-- <section> -->
        <div class=" w-[80%] mx-auto  space-x-5 pt-20 clear-both" >
            <div class=" mx-auto space-y-6 text-center">
                <h2 class="text-[#30312C] section-title mb-5 wow fadeInUp2 animated " data-wow-delay='.1s'>What we do</h2>
                <p class="text-base md:text-lg  wow fadeInUp2 animated" data-wow-delay='.1s'>GOALPrime Organization Nigeria operates in over 7 states in Nigeria to save vulnerable <br class="hidden md:block"> children and women, to defend their rights and help them fulfill their potentials. </p>
                <!-- <p class="text-lg" style="color: #008440;">Select one to know more</p> -->
            </div>
            <div class="pt-20">
                <div class="flex gap-20  justify-center items-center">
                    
                    <div class="text-center">
                        <img class="" src="{{asset('assets/img/added-pic/help.png')}}" alt="humanitarian">
                        <a href="" class="md:text-xl " style="color: #008440;">Humanitarian</a>
                    </div>
                    <div class="text-center">
                        <img class="" src="{{asset('assets/img/added-pic/world-peace.png')}}" alt="">
                        <a href="" class="md:text-xl" style="color: #008440;" >Nexus</a>
                    </div>
                    
                
                </div>
                <div class="flex gap-20 lg:gap-32  justify-center items-center">
                    
                    <div class="text-center">
                        <img class="" src="{{asset('assets/img/added-pic/male-code.png')}}" alt="development">
                        <a href="" class="md:text-xl" style="color: #008440;">Development</a>
                    </div>
                    <div class="text-center">
                        <img class="" src="{{asset('assets/img/added-pic/businessman-growth.png')}}" alt="">
                        <a href="" class="md:text-xl" style="color: #008440;">Social Enterprise</a>
                    </div>
                
                </div>
                
                <div class="flex justify-center my-10" >
                <a class="theme_btn theme_btn_bg" href="{{route('about')}}">EXPLORE WHAT WE DO <span><i class="fas fa-heart"></i></span></a>
                </div>
            </div>
            
            
            
        </div>
    
    <!-- </section> -->
    
    
    
    <!--what we do end here-->
     <!--spotlight-area start-->
     <section class="blog-area  py-10 " >
            <div class="container">
                <h2 class="text-[#30312C] text-center section-title py-3 wow fadeInUp2 animated " data-wow-delay='.1s'>Stories and Features</h2>
                <p class="text-base text-center md:text-lg  wow fadeInUp2 animated" data-wow-delay='.1s'>
                    Get inspired, get involved, explore How we help our communities get better 
                <br class="hidden md:block"> and join us
                </p>
                <div class="row pt-10 ">
                @foreach ($news as $item)
                    <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay='.3s'>
                        <div class="blog bg-[#F0F0F0]  mb-5 rounded-lg p-3 flex flex-col justify-between relative">
                                <div class="blog__thumb">
                                    <img class="" src="{{asset($item->imagefile)}}" alt="">
                                </div>
                                <div class="blog__content my-3">
                                    <ul class="blog-author">
                                        <!-- <li><a class="mr-6" href="#">
                                                <span>{{$item->postby}}</span></a></li> -->
                                        <li>
                                            <i class="far fa-calendar-alt"></i>{{Date('d M, Y',strtotime($item->created_at))}}
                                        </li>
                                    </ul>
                                    <h3 class="blog-title"><a href="{{route('newsdetails',['slug' => $item->slug])}}">{!!Str::limit($item->title,'60','...')!!}</a></h3>
                                   <!-- <p>{!!Str::limit($item->description,'40','...')!!}</p> -->
                                </div>
                                <a class="tag" href="{{route('newsdetails',['slug' => $item->slug])}}">Learn More <span class="pl-3"><i class="far fa-chevron-right"></i></span></a>
                            
                            
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
            <div></div>
        </section>
    <!--spotlight-area end-->

    <!-- projects -->
    <!-- <section class="projects wow fadeInUp2 animated" data-wow-delay='.1s'>
        <div class="container" >
            <h4 class="">
                More projects
            </h4>
            <div class="project-lists">
                <div class="project">
                    <img src="{{asset('assets/img/added-pic/pro1.png')}}">
                    <div class="lay" >
                        <h3> Mission smile 1k: Outdoor charity</h3>
                        <P>This is  amission to put smile on the face on a thousand Nigerians, we do this by providing basic needs and amenities to the less priviledge</P>
                        <a class="theme_btn theme_btn2 theme_btn_bg_02" target="_blank" href="">                        
                        <p>Donate</p> 
                        </a>
                    </div>
                    
                </div>
                <div class="project">
                    <img src="{{asset('assets/img/added-pic/pro.png')}}">
                    <div class="lay">
                        <h3> Weekly excursions</h3>
                        <P>This is  amission to put smile on the face on a thousand Nigerians, we do this by providing basic needs and amenities to the less priviledge</P>
                        <a class="theme_btn theme_btn2 theme_btn_bg_02" target="_blank" href="">                        
                            <p>Donate</p> 
                        </a>
                    </div>
                    
                </div>
                <div class="project">
                    <img src="{{asset('assets/img/added-pic/pro2.png')}}">
                    <div class="lay">
                        <h3> Monthly public awareness</h3>
                        <P>This is  amission to put smile on the face on a thousand Nigerians, we do this by providing basic needs and amenities to the less priviledge</P>
                        <a class="theme_btn theme_btn2 theme_btn_bg_02" target="_blank" href=""> 
                            <p>Donate</p>                      
                        </a>
                    </div>
                    
                </div>
                
            </div>
        </div>
   </section> -->
    <!-- end of more projects -->


  @include('includes.one-dollar')



<!--donation-area start-->
    <section class="donation-area-03  pos-rel py-20 w-nty mx-auto pt-32">
        <div class="">
            <div class="lg:flex gap-20  items-center">
                <div class="" >
                    <div class="doante-select-area donate-select-02 mb-10 text-center white-bg  space-y-6"
                        data-wow-delay='.3s' style="background-image: url({{asset('assets/img/added-pic/become-donor.png')}}); background-repeat:no-repeat; border-radius:20px; background-size: cover;">
                        <div class="section-title text-center wow fadeInUp2 animated" data-wow-delay='.1s' >
                            <h2 class="mt-3" style="color:white; margin-bottom:60px; ">Become a donor</h2>
                            <div class=""style="background: rgba(0, 0, 0, 0.40); padding:6px 3px; border-radius:10px; ">
                             <p class="text-sm m-3 font-medium" style="color:white; line-height: 27.234px"> Join us to make a direct impact in the lives of the world’s most <br> vulnerable children.</p>
                            </div>
                        </div>
                       
                        <!-- <button class="theme_btn theme_btn_bg" onclick="window.location.href='{{route('donte')}}'">Proceed </button> -->
                    </div>
                </div>
                <div class="">
                    <div class="about-wrapper about-wrap-02 mb-5 space-y-5">
                        <div class="section-title text-left space-y-5 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> A better humanity is possible</h6>
                            <h2>Ready To <br class="hidden md:block">Take Action?</h2>
                        </div>
                        <p class="text-base font-medium">Every child deserves a fair chance in life. Your donation helps <br class="hidden lg:block">GOALPrime make a difference for children around the world.</p>
                       
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
    <!-- <section class="what-we-area grey-bg2 pos-rel pt-50 pb-50 mb-10">
        
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="about-wrapper we-wrapper mb-6 ">
                        <div class="section-title text-left mb-5 wow fadeInUp2 animated" data-wow-delay='.1s'>
                            <h6><span><i class="fas fa-heart"></i></span> A Better Humanity is possible</h6>
                            <h2 class=" ">{{$item->caption}}</h2>
                        </div>
                        <p class="wow fadeInUp2 animated " data-wow-delay='.2s'>{!!$item->content!!}</p>
                    
                        <a class="theme_btn theme_btn_bg wow fadeInUp2 animated" data-wow-delay='.5s' href="{{route('donte')}}">Take Action <span><i
                                    class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-help" style="background-image: url({{asset($item->image)}});">    
        </div>
    </section> -->

    @endforeach
    <!--communication-risk-area end-->

    <!--cases-area start-->
    <!-- <section class="cases-area pt-40 pb-20">
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
    </section> -->
    <!--cases-area end-->

 <section class="highlight-area w-full "  >
    <div class="">
        <div class="flex lg:flex-row flex-col-reverse" >
            <div class="w-full" style="background: rgba(0, 0, 0, 0.75); padding:30px 0">
                <!-- <div class=" "> -->
                    <div class="hidden lg:block w-[90%] mx-auto section-title text-left mb-3  wow fadeInUp2 animated" data-wow-delay='.1s' style="color:white">
                        <h6 style=""><span><i class="fas fa-heart"></i></span> GOALPrime spotlight </h6>
                        <h2 style="color:white; font-size:40px">Beyond the headlines, <br>every child has a story.</h2>
                    </div>
                    <p class="mb-3 w-[90%] mx-auto" style="opacity: 0.6; color:white">We understand that when you make a  donation, you want to know exactly where your money is going and we pledge to be transparent.</p>
                    <ul class="w-[80%] mx-auto" style=" ">
                        <li>40% child care home</li>
                        <li>35% cleanliness program</li>
                        <li>10% helping people</li>
                        <li>10% excursions</li>
                        <li>5% feeding the poor</li>
                       
                    </ul>
                </div>
            <!-- </div> -->
            <!-- <div > -->
                
                <img class="w-full" src="{{asset('assets/img/added-pic/child-story.png')}}" alt="">
                <div class="lg:hidden w-[90%] mx-auto section-title text-left mb-3  wow fadeInUp2 animated" data-wow-delay='.1s' style="color:white">
                    <h6 style=""><span><i class="fas fa-heart"></i></span> GOALPrime spotlight </h6>
                </div>
            <!-- </div> -->
        </div>
    </div>
 </section>

   


   
    <!--testimonial-area start-->
   
    <!-- <section class="testimonial-area pos-rel pt-80 pb-80">
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
    
    <!--brand-area start-->
    <!-- @include('includes.partners') -->
    <!--brand-area end-->
    <!-- our patners -->
        <section class="partners">
            <h4 class="mb-10">Our Esteemed partners</h4>
            <img src="{{asset('assets/img/added-pic/patners-img.png')}}" alt="">
        </section>
        <!-- end our patners -->
      <!--subscribe-area start-->
        <section class="subscribe-area theme-bg2 py-3 px-5 mb-5">
            <div class="">
                <div class="">
                    <div class="lg:flex flex-row justify-between items-center ">
                        <div class="subscribe-bg">
                            <div class="section-title white-title text-left  wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h2>Sign up for our newsletter</h2>
                                <p>Be the first to know about releases and industry news and insights.</p>
                            </div>
                        </div>
                        <div class="">
                            <div class="form-area text-center lg:flex items-center justify-center">
                                <form class="form lg:flex gap-3 justify-center"action="{{route('subcribe')}}" method="POST">
                                    @csrf
                                    <input type="email" name="email"  class="form-control" placeholder="Enter Your Email">
                                    <button class="theme_btn rounded-md  theme_btn3 theme_btn_bg_02  ml-10">subscribe now </button>
                                
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