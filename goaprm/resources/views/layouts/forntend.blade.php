<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('title')</title>
    <meta name="description" content="𝖡𝗎𝗂𝗅𝖽𝗂𝗇𝗀 𝖺 𝖼𝗎𝗅𝗍𝗎𝗋𝖾 𝖺𝖼𝗋𝗈𝗌𝗌 𝗇𝖺𝗍𝗂𝗈𝗇𝗌 𝗐𝗁𝖾𝗋𝖾 𝖾𝗏𝖾𝗋𝗒𝗈𝗇𝖾 𝗂𝗌 𝖼𝗈𝗆𝗆𝗂𝗍𝗍𝖾𝖽 𝗍𝗈 𝗂𝗆𝗉𝗋𝗈𝗏𝗂𝗇𝗀 𝗅𝗂𝗏𝖾𝗌 𝗈𝖿 𝗏𝗎𝗅𝗇𝖾𝗋𝖺𝖻𝗅𝖾 𝗐𝗈𝗆𝖾𝗇 𝖺𝗇𝖽 𝖼𝗁𝗂𝗅𝖽𝗋𝖾𝗇">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="GOALPrime">
    <meta name="keywords" content="GOALPrime,">
         <meta property="og:image" content="https://goalprime.org/assets/img/logo/header_logo_one.png" />
  <meta property="og:image:width" content="400" />
  <meta property="og:image:height" content="400" />


    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/img/favicon.png')}}">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link href="{{ asset('assets/css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/font.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/metisMenu.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/nice-select.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/welcome.css')}}">
</head>

<body>
 <!-- preloader -->
 <div id="preloader">
    <div class="preloader">
        <span></span>
        <span></span>
    </div>
</div>
<!-- preloader end  -->

<!-- header-area start -->
<header id="top-menu ">
    <div class="main-header-area ">
        <div class="">
            <div class="w-nty  flex flex-wrap items-center justify-between mx-auto py-2 relative">
                <div class="">
                    <div class="logo">
                        <a class="logo-img" href="{{url('/')}}"><img src="{{asset('assets/img/logo/header_logo_one.png')}}"
                                alt=""></a>
                    </div>
                </div>
                <div class="hidden lg:block">
                    <div class="main-menu ">
                        <nav>
                            <ul>
                                <li><a class="{{URL::current() == url('/') ? 'active' : ''}}" href="{{url('/')}}">HOME </a> </li>
                               
                                <li><a href="{{route('about')}}">ABOUT US <i class="far fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="{{route('about')}}">WHO WE ARE ARE</a></li>
                                        <li><a href="{{route('about')}}">Our Vision</a></li>
                                        <li><a href="{{route('about')}}">Our Mission</a></li>
                                        <li><a href="{{route('about')}}">Our Core Values</a></li>
                                        <li><a href="{{route('tem')}}">Our Team</a></li>
                                        <li><a href="{{route('about')}}">History</a></li>
                                        <li><a href="{{route('about')}}">Impact factsheet</a></li>
                                        <li><a href="{{route('about')}}">Strategic plan</a></li>
                                        <li><a href="{{route('about')}}">Aligning with SDGs</a></li>
                                        <!-- <li><a href="{{route('fq')}}">Frequently asked questions</a></li> -->
                                        <li><a href="{{route('contact')}}">Contact Us</a></li>

                                    </ul>
                                </li>
                                <li id="dropdownHoverButton" data-dropdown-toggle="dropdownHover" data-dropdown-trigger="hover"><a href="{{route('services')}}" {{URL::current() == route('services') ? 'active' : ''}}>WHAT WE DO <i class="far fa-chevron-down"></i> </a>
                                    
                                    
                                </li>

                                <li><a href="{{route('project')}}" {{URL::current() == route('project') ? 'active' : ''}}>HOW WE DO IT <i class="far fa-chevron-down"></i> </a>
                                    <ul class="submenu">  
                                        <li><a href="{{route('tem')}}">Understanding Needs</a></li>
                                        <li><a href="{{route('news')}}">Innovative Program Designs and Approaches</a></li>
                                        <li><a href="">Resource Mobilization</a></li>
                                        <li><a href="">Partnerships</a></li>
                                        <li><a href="">Monitoring and Evaluation</a></li>
                                        <li><a href="">Accountability and Learning</a></li>
                                        <li><a href="https://goalprime.org/what-we-do/13">Localization</a></li>
                                        <li><a href="">Mentorship</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">PRESS CENTRE <i class="far fa-chevron-down"></i></a>
                                    <ul class="submenu">  
                                        <li><a href="{{route('research')}}">RESEARCH & REPORTS</a></li>
                                        <li><a href="https://www.goalprime.org/journal">JOURNAL</a></li>
                                        <li><a href="{{route('news')}}">STORIES & FEATURES</a></li>
                                        <li><a href="{{route('gallery')}}">PICTURE GALLERY</a></li>
                                        <li><a href="{{route('gpritv')}}">GOALPrime TV</a></li>
                                    </ul>
                                </li>
                               
                                
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="">
                    <div class="hamburger-menu inline-flex items-center  justify-center lg:hidden">
                        <a href="javascript:void(0);">
                            <i class="far fa-bars"></i>
                        </a>
                    </div>
                    <div class=" hidden lg:block">
                        <a href="{{route('donte')}}" class="theme_btn theme_btn_bg">Donate Now <span><i class="fas fa-heart"></i></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
    <div id="dropdownHover" class=" hidden w-full p-4 py-6 " style="position: absolute; top: 119%; border-top: 4px solid #D19813; background: #F3FFEF none repeat scroll 0 0; box-shadow: 0 6px 12px rgba(0, 0, 0, 0.176); z-index: 20;">
        <div class="flex justify-between">
            
            <ul class="sub" >
                <li class="text-base font-bold text-left" style="padding: 5px 10px">Humaninitarian</li>
                <li class=""><a href="https://goalprime.org/what-we-do/17">Adolescent Development</a></li>
                <li><a href="https://goalprime.org/what-we-do/18">Child Rights</a></li>
                <li><a href="https://goalprime.org/what-we-do/19">Child Protection in Emergencies</a></li>
                <li><a href="https://goalprime.org/what-we-do/20"> Climate Change and Environment</a></li>
                <li><a href="https://goalprime.org/what-we-do/21"> Children with Disabilities</a></li>
                <li><a href="https://goalprime.org/what-we-do/22"> Early Childhood Development</a></li>
                <li><a href="https://goalprime.org/what-we-do/23"> Sustainable Development</a></li>
                <li><a href="https://goalprime.org/what-we-do/15"> Water, Sanitation and Hygiene</a></li>
                <li><a href="https://goalprime.org/what-we-do/16">  Education in Emergencies</a></li>
            </ul>
            <ul class="sub" >
                <li><a href="{{route('tem')}}">Rapid Response</a></li>
                <li><a href="{{route('volun')}}">WASH in Emergencies</a></li>
            </ul>
            <ul class="sub" >
                <li class="text-base font-bold text-left"  style="padding: 5px 10px">Nexus</li>
                <li><a href="https://goalprime.org/what-we-do/1">Early Recovery</a></li>
                <li><a href="https://goalprime.org/what-we-do/2">Behavioural Change Communication</a></li>
                <li><a href="https://goalprime.org/what-we-do/3">Peace Building</a></li>
                <li><a href="https://goalprime.org/what-we-do/12">Socio Economic Reintegration</a></li>
                <li><a href="https://goalprime.org/what-we-do/13">Localization</a></li>
                
            </ul>
            <ul class="sub" >
                <li class="text-base font-bold text-left"  style="padding: 5px 10px">Development</li>
                <li><a href="https://goalprime.org/what-we-do/24">Policy Influencing</a></li>
                <li><a href="https://goalprime.org/what-we-do/25">Advocacy</a></li>
                <li><a href="https://goalprime.org/what-we-do/26">System Strengthening</a></li>
                <li><a href="https://goalprime.org/what-we-do/12">Socio Economic Reintegration</a></li>
                <li><a href="https://goalprime.org/what-we-do/27">Development</a></li>
            </ul>
            <ul class="sub" >
                <li class="text-base font-bold text-left"  style="padding: 5px 10px">Social Enterprise</li>
                <li><a href="">GPON Edu </a></li>
                <li><a href="">GOALPrime Treasure Poo</a></li>
                <li><a href="">GLATS</a></li>
                <li><a href="">GOALPrime EduTech</a></li>
                <li><a href="">Communications for Development</a></li>
                <li><a href="">Game World</a></li>
                <li><a href="">GOALPrime Agro</a></li>
                <li><a href="">GOALPrime Office</a></li>
                <li><a href="">GOALPrime Humanitarian Common Pipeline Services</a></li>
            </ul>
            
            

            
        </div>
</div>
<!-- header-area end -->

<!-- slide-bar start -->
<aside class="slide-bar">
    <div class="close-mobile-menu">
        <a href="javascript:void(0);"><i class="fas fa-times"></i></a>
    </div>

   

    <!-- side-mobile-menu start -->
    <nav class="side-mobile-menu">
        <ul id="mobile-menu-active">
            <li><a href="{{url('/')}}">HOME</a></li>
            
            <li class="has-dropdown">
                <a href="#">ABOUT US</a>
                <ul class="sub-menu">
                    <li class=""><a href="{{route('about')}}">WHO WE ARE</a></li>
                    <li><a href="{{route('tem')}}">TEAM</a></li>
                    <li><a href="{{route('volun')}}">VOLUNTEER</a></li>
                    <li><a href="{{route('contact')}}">CONTACT US</a></li>
                </ul>
            </li>
            <li class="has-dropdown">
                <a href="">WHAT WE DO</a>
                <ul class="sub-menu">
                    <li class=""><a href="{{route('services')}}">Humanitarian</a></li>
                    <li class=""><a href="{{route('services')}}">Nexus</a></li>
                    <li class=""><a href="{{route('services')}}">Development</a></li>
                    <li class=""><a href="{{route('services')}}">Social Enterprise</a></li>
                </ul>
            </li>

            <li><a href="{{route('project')}}">PROJECT</a></li>

             <li class="has-dropdown">
                <a href="#">PRESS CENTRE</a>
                <ul class="sub-menu">
                   <li><a href="{{route('research')}}">RESEARCH & REPORTS</a></li>
                    <li><a href="https://www.goalprime.org/journal">JOURNAL</a></li>
                <li><a href="{{route('news')}}">STORIES & FEATURES</a></li>
                <li><a href="{{route('gallery')}}">PICTURE GALLERY</a></li>
                <li><a href="{{route('gpritv')}}">GOALPRIME TV</a></li>
                </ul>
            </li>
           
                <div class="sub-menu">
                        <a href="{{route('donte')}}" class="theme_btn theme_btn_bg">Donate Now <span><i class="fas fa-heart"></i></span></a>
                </div>
           
            
        </ul>
    </nav>
    <!-- side-mobile-menu end -->
</aside>
<div class="body-overlay"></div>
<!-- slide-bar end -->

@yield('fcontent')

 <!--footer-area start-->
 <footer class="footer-area pos-rel pt-10 pb-5" style="background-image:url({{asset('assets/img/bg/02.png')}}); background-color:#002626">
    <div class="w-nty">
        <div class="lg:flex justify-between mb-5">
            <div class=" wow fadeInUp2 animated" data-wow-delay='.1s'>
                <div class="footer__widget mb-8">
                    <!-- <h5 class="semi-02-title mb-5">GOALPrime</h5>
                   <p class="text-base">This is the official website of GOALPrime, with the mandate to protect and improve the lives of vulnerable groups especially women and children.</p> -->
                   <div class="footer-log ">
                        <a href="{{url('/')}}" class="footer-logo "><img src="{{asset('assets/img/logo/footer-logo1.png')}}"
                        alt=""></a>
                   </div>
                </div>
            </div>
            <div class=" wow fadeInUp2 animated" data-wow-delay='.3s'>
                <div class="footer__widget fot_abot ">
                    <h5 class="semi-02-title mb-25">Quick Link</h5>
                    <ul class="fot-list">
                        <li><a href="{{route('about')}}">Our Organization</a></li>
                        <li><a href="{{route('volun')}}">Become a Volunteer</a></li>
                        <li><a href="{{route('project')}}">Projects</a></li>
                        <li><a href="{{route('event')}}">Events</a></li>
                        <li><a href="{{route('contact')}}">Contact Us</a></li>
                        <li><a href="{{route('gallery')}}">Picture Gallery</a></li>
                    </ul>
                </div>
            </div>
            <div class=" wow fadeInUp2 animated" data-wow-delay='.3s'>
            <div class="">
                <img src="{{asset('assets/img/added-pic/mapmobile.png')}}" alt="" usemap="#image-map" class="maparea"/>
                <map name="image-map" id="image-map">
                    <area target="_self" alt="Abuja Head Office" title="Abuja Head Office:
No. 2 Bacelona Street,
Suncity Estate, Abuja" href="https://goalprime.org/abuja" coords="167,204,165,195,165,185,167,177,174,175,179,176,186,172,193,170,195,175,195,181,194,186,192,191,189,196,185,200,177,204" shape="poly">
                    <area target="_self" alt="Borno Office" title="Borno Office"  href="https://goalprime.org/borno" coords="339,126,339,117,343,111,348,109,353,105,354,95,358,90,356,81,356,71,357,61,360,52,363,43,361,35,365,26,371,20,377,16,385,14,391,10,398,7,404,8,408,12,411,16,414,22,416,28,419,34,422,39,424,45,425,51,428,55,434,57,437,64,436,77,436,84,436,90,427,93,419,98,411,105,404,111,396,114,393,122,389,127,381,122,375,126,368,132,361,135,355,140,350,146,343,141,336,133" shape="poly">
                    <area target="_self" alt="Adamawa Office" title="Adamawa Office" href="https://goalprime.org/adamawa" coords="332,225,329,217,333,210,338,204,344,197,345,188,338,178,335,169,334,161,340,159,346,152,351,145,358,137,364,134,371,130,378,124,385,124,390,127,395,119,401,112,402,119,400,125,399,131,399,139,393,144,392,152,390,160,383,163,381,170,378,180,376,188,373,195,364,200,358,206,356,214,354,223,351,231,347,237,341,227" shape="poly">
                    <area target="_self" alt="Benue Officce" title="Benue Officce" href="https://goalprime.org/benue" coords="193,256,198,251,201,243,200,234,199,225,204,219,209,221,215,223,221,226,225,218,234,218,239,221,247,220,250,227,256,228,265,227,271,230,274,235,276,241,274,247,272,253,268,261,268,268,266,275,255,270,244,266,233,262,228,268,220,269,212,268,205,273,199,262" shape="poly">
                    <area target="_self" alt="Yobe Office" title="Yobe Office" href="https://goalprime.org/yobe" coords="337,125,333,116,330,105,320,98,313,92,311,81,307,70,302,58,299,49,296,40,288,34,280,37,272,43,283,28,292,24,300,22,308,21,316,21,325,22,333,24,341,25,349,27,355,29,360,32,362,40,363,48,358,56,357,64,357,72,357,80,357,90,353,99,348,108,341,115" shape="poly">
                </map>
            </div>
            </div>
            
            <div class="  wow fadeInUp2 animated" data-wow-delay='.7s'>
                <div class="footer__widget fot_abot ">
                    <h5 class="semi-02-title ">Get In Touch</h5>
                    <ul class="widget_address_list text-sm space-y-3">
                        <li>
                            <div class="widget_address flex space-x-2 items-center">
                                <div class="widget_address__icon ">
                                    <i class="flaticon-location"></i>
                                </div>
                                <div class="widget_address__content">
                                    <h4 class="semi-02-title"><a href="{{route('contact')}}">Location</a></h4>
                                    <span>{{$cont ? $cont->address : ""}}</span>
                                    {{-- House No C18, New G.R.A, Bama Road, Maiduguri. Borno-Nigeria  info@goalprime.org--}}
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="widget_events flex space-x-2 items-center">
                                <div class="widget_address__icon">
                                    <i class="flaticon-chat"></i>
                                </div>
                                <div class="widget_address__content">
                                    <h4 class="semi-02-title"><a href="mailto:{{$cont ? $cont->email : ""}}">Email Us</a></h4>
                                    <span><i class="far fa-map-marker-alt"></i>{{$cont ? $cont->email : ""}}</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="widget_events flex space-x-2 items-center ">
                                <div class="widget_address__icon ">
                                    <i class="flaticon-phone-call"></i>
                                </div>
                                <div class="widget_address__content">
                                    <h4 class="semi-02-title"><a href="tel:{{$cont ? $cont->phone : ''}}">Call Us</a></h4>
                                    <span><i class="far fa-map-marker-alt"></i> {{$cont ? $cont->phone : ''}}</span>
                                </div>
                            </div>
                        </li>
                    </ul> 

                </div>
            </div>
        </div>
        <!--scroll-target-btn-->
       
        <!--scroll-target-btn-->
        <div class="copy-right-area pt-2">
            <div class="row align-items-center">
                <div class="col-xl-12">
                    <div class="copyright space-y-3">

                        <div class="header-social">
                            <a href="https://web.facebook.com/GOALPrimeORGNigeria/?_rdc=1&_rdr"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://twitter.com/GOALPrime?fbclid=IwAR0ZFZCYRW2zjDaNqjaAC0LVkHIuHGLytY2nP3fMy_8zc99BTkG0BSPBTaE"><i class="fab fa-twitter"></i></a>
                            <a href="https://www.youtube.com/channel/UCP0QDklktavgS-zr2m11FFg"><i class="fab fa-youtube"></i></a>
                            <a href="https://www.instagram.com/goalprime.ng/?fbclid=IwAR0_l7yhKr7YoGZP2-JQmViOj93LyS4L3XAOusCBVRf5F_ySCsQuY4znqvE"><i class="fab fa-instagram"></i></a>
                            <a href="https://www.linkedin.com/company/goalprime-organization-nigeria/?originalSubdomain=ng"><i class="fab fa-linkedin"></i></a>
                            <a href=""><i class="fab fa-whatsapp"></i></a>
                        </div>
                        <p >Privacy Policy</p>
                    </div>
                    <p class="text-center" style="color:white; padding:5px 0;">Copyright (2023) @ GOALPrime Organization Nigeria</p>
                </div>

            </div>
        </div>
    </div>
</footer>
<!--footer-area end-->
    <div class="modal fade" id="evetModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Join Event</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
            <form action="{{route('regevent')}}" method="post" id="eventform">
                    @csrf
                                    
                    <div class="form-group">
                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus>
                    
                        </div> 
                        <div class="form-group">
                    <input type="email" name="email" id="email" class="form-control" required placeholder="Enter Email">
                        </div>
                        <div class="form-group">
                    <input type="tel" name="phone" id="phone" class="form-control" required placeholder="Enter Phone Number">
                        </div>
                        <input type="hidden" name="eventid" id="evtid" value=""> 
                        <p id="getmsgev"></p>                           
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-success">Register</button>
            </div>
            </form>
        </div>
        </div>
    </div>
   <!-- JS here -->
   <!-- <script src="{{ asset('js/app.js') }}"></script> -->
   <script src="{{asset('assets/js/vendor/modernizr-2.8.3.min.js')}}"></script>
   <!--<script src="{{asset('assets/js/vendor/jquery-1.12.4.min.js')}}"></script>-->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>
   <script src="{{asset('assets/js/isotope.pkgd.min.js')}}"></script>
   <script src="{{asset('assets/js/slick.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.meanmenu.min.js')}}"></script>
   <script src="{{asset('assets/js/metisMenu.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.nice-select.js')}}"></script>
   <script src="{{asset('assets/js/ajax-form.js')}}"></script>
   <script src="{{asset('assets/js/wow.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.counterup.min.js')}}"></script>
   <script src="{{asset('assets/js/waypoints.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.scrollUp.min.js')}}"></script>
   <script src="{{asset('assets/js/imagesloaded.pkgd.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.magnific-popup.min.js')}}"></script>
   <script src="{{asset('assets/js/jquery.easypiechart.js')}}"></script>
   <script src="{{asset('assets/js/tilt.jquery.js')}}"></script>
   <script src="{{asset('assets/js/parallax.min.js')}}"></script>
   <script src="{{asset('assets/js/plugins.js')}}"></script>
   <script src="{{asset('assets/js/main.js')}}"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
    <script src="{{asset('assets/js/index.js')}}"></script>
<script src="{{asset('js/toastr.min.js')}}"></script>
<script src="https://js.paystack.co/v1/inline.js"></script> 
<script src="https://checkout.flutterwave.com/v3.js"></script>


@if (session()->has('success'))  
    <script> toastr.success("{{session()->get('success')}}");</script>
 @endif
 @if (session()->has('error'))  
    <script> toastr.success("{{session()->get('error')}}");</script>
 @endif
 @if ($errors->any())
      @foreach ($errors->all() as $error)
           <script> toastr.success("{{$error}}");</script>
      @endforeach
@endif
<script>
function joinevt(id){
    $("#evetModal").modal();
    $("#evtid").val(id);
}
$(document).ready(function(){

    $("#payme").submit(function(e){
e.preventDefault();
$.ajax({
    url:"/get-attendance",
    method:"post",
    data:$("#payme").serialize(),
    beforeSend:function(){
        $(".prc").attr('disabled',true);
        $(".prc").text('Please Wait...');
    },
    success:function(data){
     // $("#em").val(data.email);
      $("#getmsg").text('Registration Success').addClass('alert-success');
      $(".prc").attr('disabled',false);
     $(".prc").text('Register');
     $("#payme")[0].reset();
    //  $(".form1").hide();
    //  $(".form2").show();
     
    }
});
});

$(".form").submit(function(e){
e.preventDefault();
$.ajax({
    url: $(".form").attr('action'),
    method:"post",
    data:$(".form").serialize(),
    beforeSend:function(){
        $("#getmsg").text('Please Wait...').css('color','white');
    },
    success:function(data){
     if(data == 'success'){
        $("#getmsg").text('You Have Successfully subcribed').css('color','white');
        $(".form")[0].reset();
     }
    },
    error:function(xhr){
        $.each(xhr.responseJSON.errors, function (key, value) {
            $("#getmsg").text(value).css('color','red');
        });
    }
  });
});

$("#eventform").submit(function(e){
e.preventDefault();
$.ajax({
    url: $("#eventform").attr('action'),
    method:"post",
    data:$("#eventform").serialize(),
    beforeSend:function(){
        $("#getmsgev").text('Please Wait...').css('color','red');
    },
    success:function(data){
     if(data == 'success'){
        $("#getmsgev").text('Registered Successfully').css('color','green');
        $("#eventform")[0].reset();
     }
    },
    error:function(xhr){
        $.each(xhr.responseJSON.errors, function (key, value) {
            $("#getmsgev").text(value).css('color','red');
        });
    }
  });
});

});
</script>

</body>
</html>
