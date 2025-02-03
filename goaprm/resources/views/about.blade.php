@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')
    <main class="bg-[#F8FFF9]">

        <!--slider-area start-->
           <div class="slider-area pos-rel">
            <div class="slider-active">
                <div class="single-slider slider-height pos-rel d-flex align-items-center"
                    style="background-image: url({{asset('assets/img/slider/s3.jpg')}});">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    <h5 class="sub-title mb-25 wow fadeInUp2 animated" data-wow-delay=".1s"><span class="pr-10"><i class="fas fa-heart"></i></span>Raising Your Helping Hands</h5>
                                    <h1 class="main-title mb-35 wow fadeInUp2 animated" data-wow-delay=".1s">
                                    GOALPrime Stories and Features
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

        <!--about-us-area start-->
        <!-- who wwe are -->
        <div class=" text-[#30312C] pt-3 md:pb-10 ">
            <div class="relative ">
                <div class="bg-[#D198134D] absolute  p-2 rounded-full ml-[45%] mt-1"></div>
            </div>
            <div class="relative flex pt-10 justify-center">
                <h4 class=" font-bold leading-loose text-2xl md:text-4xl">About Us</h4>
                <div class="absolute">
                    <div class="bg-[#00A6514D] absolute ml-5 md:ml-16 p-3 rounded-full  mt-1"></div>
                </div>
            </div>
            
            
        </div>
        <!-- end who we are -->
        <section class="about-area  py-10">
            <div class="">
                <div class="">
                    <!-- <div class="">
                        <div class="volunteer-box pos-rel">
                            <div class="volunteer-box__img">
                                <img class="lg:w-[350px]" src="assets/img/added-pic/about1.png" alt="">
                            </div>
                            <div class="volunteer-box__img-02">
                                <img class="lg:w-[350px]" src="assets/img/added-pic/about2.png" alt="">
                            </div>
                            <div class="volunteer-box__shape">
                                <img class="lg:w-[350px]"  src="assets/img/added-pic/about3.png" alt="">
                            </div>
                        </div>
                    </div> -->
                    <div class="">
                        <div class="about-wrap-04 pt-0 mt-0">
                            <div class=" w-[90%]  ml-auto">
                                <div class="   wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    <!-- <h6 class=""><span><i class="fas fa-heart"></i></span> About GOALPrime</h6> -->
                                    <h2 class="text-[#30312CCC] text-center font-semibold md:text-2xl xl:text-3xl wow fadeInUp2 animated">Conflict Affected People Can Smile Again</h2>
                                </div>
                            </div>
                            
                            <!-- <p class="text-xs" style="text-align: justify;">{!!$abt ? $abt->content : ''!!}</p>  -->
                            <div class="pt-3 space-y-3 w-[90%] xl:w-[80%] mx-auto" style="text-align: justify;">
                                <p class=" text-base wow fadeInUp2 animated leading-loose" data-wow-delay='.1s'>
                                    GOALPrime Organization Nigeria (GPON) is a policy-driven humanitarian, national non-governmental organization that implements her program through a revitalized partnership the United Nations, the private sector, the international community and in strong collaboration with the government both at the local, state and federal level. GOALPrime implements directly to support conflict affected population as well as support the relevent government line ministries with system strengthening initiatives.
                                </p>
                                <div class=" py-3 relative wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    <div class="absolute">
                                        <!-- <div class="p-4  bg-[#00A65133] rounded-full ml-[70%]" ></div> -->
                                    </div>
                                    <div class="flex justify-center  "  >
                                        <img src="assets/img/added-pic/aboutus-1.png"  alt="" class="" >
                                    </div>
                                </div>
                                <p class=" text-base wow fadeInUp2 animated leading-loose" data-wow-delay='.1s'>
                                    GOALPrime over the last five years has been on the frontlines of the Northeast Nigeria humanitarian response; providing live-saving interventions to children and their caregivers via partnerships with the government line ministries, the United Nations Children Fund (UNICEF-Nigeria), Education Cannot Wait (ECW) MYRP, the Office of Coordination of Humanitarian Affairs (OCHA-NHF), the World Health Organization (WHO), PLAN International, Street Child Nigeria, ROHI, the Irish Embassy and a host of private sector organizations. In Northeast Nigeria (The BAY States), GOALPrime has provided live-saving interventions to over 2 million individuals over the last 5 years across thematics vis-a-vis child protection; education-in-emergencies; water, sanitations and hygiene (WASH); livelihood and early recovery support; peacebuilding; centre-based and community-based socio-economic reintegration; behavioral change communications; mine risk education, and gender based violence risk mitigation.
                                </p>
                                <div class="flex justify-center py-3 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    <img src="assets/img/added-pic/about-2.png" alt="" class="" style="width:70%" >
                                </div>
                                <p class=" text-base wow fadeInUp2 animated leading-loose" data-wow-delay='.1s'>
                                    GOALPrime is currently the Nigeria NGO representative to the Global Strategic Advisory Group (Global SAG) of the Child Protection Area of Responsibility (CP AoR); the Co-Lead Organization for Northeast Nigeria Child Protection Area of Responsibility (NE CP AoR), the Localization Focal Point Agency for Northeast Education in Emergencies; and a very strong member of the Strategic Advisory Groups (SAGs) of the Northeast Education in Emergencies Working Group, Northeast WASH-in-Emergencies Sector and the Northeast Child Protection Area of Responsibility.
                                </p>
                                <div class="flex justify-center py-3 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    <img src="assets/img/added-pic/about-3.png" alt="" class="" >
                                </div>
                                <p class=" text-base text-center leading-loose wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    GOALPrime's interventions are evidence-based and our commitment remains to make lives better for all vulnerable groups across conflict affected or disaster affected communities in Nigeria and beyond.
                                </p>
                            </div>
                            <!-- <button class="text-sm text-[#0B8647]" onclick="toggleText()" id="button"> Read More</button>
                            <span id="dots">...</span>
                             -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--about-us-area end-->

           <!--objectives-area start-->
                           
            <section>
                <h4 class="text-[#30312CCC] text-center font-semibold md:text-2xl xl:text-3xl wow fadeInUp2 animated" data-wow-delay='.1s' >GOALPrime Mission and Vision </h4>
            </section>
            <div class="text-center text-[#30312C] py-10 w-nty wow fadeInUp2 animated" data-wow-delay='.1s'>
                <h4 class="text-[#00A651] font-bold leading-loose text:xl md:text-2xl">Our <span class="text-[#D19813]">Vision</span></h4>
                <p class="leading-loose">A better world for children, women and caregivers</p>
                <div class="flex justify-center pt-5 md:pb-5">
                    <img class="w-48" src="assets/img/added-pic/mission-man.png" alt="">
                </div>
            </div>
            <div class=" text-[#30312C] py-10 w-nty">
                <h4 class=" text-[#00A651] text-center font-bold leading-loose text:xl md:text-2xl">Our <span class="text-[#D19813]">Mision</span> </h4>
                <p class="  md:text-center lg:w-1/2 mx-auto leading-loose">Partnering with all to realize a world with communities where children, young people and caregivers are safe, supported, protected and empowered via <span class="text-[#00A651]">age</span> appropriate, <span class="text-[#00A651]">culturally</span> sensitive, <span class="text-[#00A651]">disability</span> inclusive and <span class="text-[#00A651]"></span>gender transformative approaches</p>
                <div class="flex justify-center py-5">
                    <img class="w-80" src="assets/img/added-pic/vission-pic.png" alt="">
                </div>
            </div>
        <!--objectives-area end-->

        <!--history-details-area start-->
        <section class=" ">
            <div class="">
                <div class="flex flex-col justify-center items-center ">
                    
                    <div class="">
                        <div>
                            <h2 class="text-2xl pb-3 text-center font-bold wow fadeInUp2 animated" data-wow-delay='.1s'>Our Core Values</h2>
                            <ul class="text-[#004421] font-semibold space-y-2 wow fadeInUp2 animated leading-loose" data-wow-delay='.1s'>
                                <li>H - Humanity First</li>    
                                <li>E - Empathy, Equality and Equity</li>
                                <li>A - Accountability to Affected People</li>
                                <li>R - Racial Sensitivity</li>
                                <li>D - Dignified Approaches</li>
                            </ul>
                        </div>
                       
                    </div>
                    <div class="py-10">
                        <div class="team-details-img w-80">
                            <img class="" src="{{asset('assets/img/added-pic/man-woman-table.png')}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- our objectives -->
        <section>
            <div class=" text-[#30312C] pt-10 md:pt-20 pb-10 w-nty">
                <h2 class=" text-[#30312CCC] text-center font-semibold md:text-2xl xl:text-3xl wow fadeInUp2 animated">Our Objectives</h2>
                <ul class="about_list space-y-3  my-5 wow fadeInUp2 animated" data-wow-delay='.2s'>
                    <li class="text-justify">
                      To provide live saving intervention to children, young people and caregivers affected by conflict and other forms of disaster in Nigeria and other countries of concern
                    </li>
                    <li class="text-justify">To work for sustainable empowerment for the indigent citizens in Nigeria and other countries of concern</li>
                    <li class="text-justify">To facilitate and provide support for community development projects in Nigeria and other countries of concern</li>
                    <li class="text-justify">To provide helping hand towards building sustainable small-scale businesses in Nigeria and other countries of concern.</li>
                    <li class="text-justify">To promote advocacy and work for massive employment and skill acquisition of young people in Nigeria and other countries of concern.</li>
                    <li class="text-justify">To work for and assist the citizens of Nigeria and other countries of concern to conquer extreme poverty and hunger.</li>
                    <li class="text-justify">To motivate and promote mentoring, coaching, and training of youths in wealth creation Programmes in Nigeria and other countries of concern.</li>
                    <li class="text-justify">To conduct implementation research, collection, and analysis of data for grassroot development for the benefit of the citizenry of Nigeria and those of other countries of concern</li>
                    <li class="text-justify">To initiate and support system strengthening initiatives aimed at enhancing the capacity of government actors and their accountability to the citizens of Nigeria and those of other countries of concern</li>
                    <li class="text-justify">To facilitate and support initiatives aimed at strengthening the capacity of local actors to implement quality and value-driven interventions as well as enhancing access to funding opportunities</li>
                    <li class="text-justify">To facilitate and support green initiatives and Programmes aimed at combating climate change and the realization of the sustainable development goals in Nigeria and other countries of concern.</li>
                    <li class="text-justify">To support in the development and roll-out of Technology (Tech4Development) solutions aimed at improving service delivery in Nigeria and other countries of concern</li>
                    <li class="text-justify">To develop and roll-out formidable social-enterprise solutions aimed enhancing sustainability of Programmes and value-driven initiatives.</li>
                    <li class="text-justify">To support Government Policy development, solutions Programme design, implementation, monitoring, impact tracking, implementation learnings documentation and accountability influencing in Nigeria and other countries of concern.</li>
                    <li class="text-justify">To initiate affiliation and collaboration with persons, organizations and groups with similar aims and objectives.</li>
                    <li class="text-justify">To promote and support any other activity or programmes incidental to the achievement of its objectives.</li>
                    <li class="text-justify">To initiate affiliation and collaboration with persons, organizations and groups with similar aims and objectives.</li>
                    <li class="text-justify">To promote and support any other activity or programmes incidental to the achievement of its objectives.</li>
                </ul>
            </div>
        </section>
        <!-- end our obj -->
        <!--history-details-area end-->
       

         <!--quote/highligh-area start-->
         
         <!--subscribe-area start-->
        <section class="subscribe-area theme-bg2 py-3 px-5 my-5">
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
    <script>
        function toggleText() {
            var dots = document.getElementById("dots");
            var moreText = document.getElementById("more");
            var button = document.getElementById("button");

            if (dots.classList.contains("hidden")) {
                // Show the dots
                dots.classList.remove("hidden");

                // Hide the more text
                moreText.classList.add("hidden");

                // change text of the button
                button.innerHTML = "Read more";
            } else {
                // Hide the dots
                dots.classList.add("hidden");

                // hide the more text
                moreText.classList.remove("hidden");

                // change text of the button
                button.innerHTML = "Read less";
            }
        }
    </script>
    @endsection