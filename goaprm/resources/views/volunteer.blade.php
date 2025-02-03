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
                    style="background-image: url(assets/img/slider/s8.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    
                                <h1 class="main-title mb-8 wow fadeInUp2 animated" data-wow-delay=".1s">
                                   Become a GOALPrime's Volunteer
                            </h1>
                                        <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                            <li><a class="theme_btn theme_btn_bg" href="about.php">Learn more <span><i class="fas fa-heart"></i></span></a>
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
        <!--join-team-area start-->
        <section class="join-volunteer-area pos-rel pt-10 pb-16">
            <div class="container">
                <div class="w-full lg:w-1/2">
                    <div class="">
                        <div class="donar-information donation-form grey-bg2 mb-7">
                            <div class="section-title text-left mb-12 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <h6><span><i class="fas fa-heart"></i></span> Join Our Team</h6>
                                <h2>Become A Proud
                                    Volunteer</h2>
                            </div>
                            @include('includes.messages')
                            <form action="{{route('saveform')}}" method="post">	
                              @csrf
                                <div class="input-area mb-3">
                                    <input type="text" class="form-control" name="name" placeholder="Your Name" required value="{{old('name')}}">
                                </div>
                                <div class="input-area mb-3">
                                    <input type="email" name="email" class="form-control" placeholder="Email Address" required  value="{{old('email')}}">
                                </div>
                                <div class="input-area mb-3">
                                    <input type="tel"  name="phone" class="form-control" placeholder="Enter Phone number" required  value="{{old('phone')}}">
                                </div>
                                <div class="input-area mb-3">
                                    <input type="date" class="form-control" name="dob" value="DOB" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DOB';}" required>
                                </div>
                                <div class="select-area mb-3">
                                    <select  name="gender" required>
                                        <option selected disabled>Gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                      
                                    </select>
                                </div>
                                <div class="select-area mb-3">
                                    <select  name="grade" class="form-control"  required>
                                        <option selected disabled>Qualification</option>
                                        <option value="phd">PhD</option>
                                        <option value="msc">MSc</option>
                                        <option value="bsc">BSc</option>
                                        <option value="ond">OND</option>
                                        <option value="hnd">HND</option>
                                        <option value="ssce">SSCE</option>
                                        <option value="fslc">FSLC</option>
                                        <option value="others">Others</option> 
                                    </select>
                                </div>
                                <div class="input-area mb-3">
                                    <input type="text" name="address" class="form-control"  placeholder="Enter Address"  value="{{old('address')}}"  required>
                                </div>
                                <div class="input-area mb-3">
                                    <input type="text" name="city" class="form-control" placeholder="Enter City" value="{{old('city')}}"  required>
                                </div>
                                <div class="input-area mb-3">
                                    <input type="text" name="state" class="form-control"  placeholder="Enter State" value="{{old('state')}}" required>
                                </div>
                                <div class="input-area mb-3">
                                    <input type="text" class="form-control" name="discipline"  value="{{old('discipline')}}" placeholder="discipline" required>
                                </div>
                                <div class="input-area mb-3">
                                    <textarea  name="skills" class="form-control" placeholder="Skills" required>{{old('skills')}}</textarea>
                                </div>
                                
                                <div class="input-area mb-3">
                                    <input type="number"  name="work" class="form-control" placeholder="Enter years of Experience" value="{{old('work')}}" required>
                                </div>
                                <div class="input-area mb-3">
                                    <textarea name="coverletter" id="messsage" cols="30" rows="10" placeholder="Cover Letter">{{old('coverletter')}}</textarea>
                                </div>
                                <div class="input-area mb-3">
                                    <label class="text-dark">Are You A Robot</label>
					                 <?php $recaptcha = mt_rand('000000','999999');?>
                                <div class="p-3 my-3 font-italic text-center w-25" style="background-color:#d802e070;"><del>{{$recaptcha}}</del></div>
                                <input type="hidden" class="form-control" name="hiddenrecaptcha" id="" value="{{$recaptcha}}">
                                <input type="text" class="form-control" name="recaptcha" placeholder="Enter Code Shown in the image"  required>
                                </div>
                                <div class="input-btn">
                                    <button type="submit" class="theme_btn theme_btn_bg large_btn">join with us</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="volunteer-box pos-rel">
                            <div class="volunteer-box__img">
                                <img src="assets/img/about/07.jpg" alt="">
                            </div>
                            <div class="volunteer-box__img-02">
                                <img src="assets/img/about/08.jpg" alt="">
                            </div>
                            <div class="volunteer-box__shape">
                                <img src="assets/img/shape/14.png" alt="">
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </section>
        <!--join-team-area end-->
     
       
    </main>
 @endsection