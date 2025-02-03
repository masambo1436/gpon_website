@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')
    <main>

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset($sinresh->image)}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="page-title-wrapper text-center pt-32">
                            <!-- <div class="page-title-box">
                                <h2 class="page-title">{{$sinresh->title}}</h2>
                                
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--cases-details-area start-->
        <section class="cases-details-area pt-10">
            <div class="container">
                <div class="row">
                    <div class="about-wrap-04 pt-0 mt-0">
                        <div class="details-left-area pb-24">
                            <div class="pt-3 space-y-3 w-[90%] xl:w-[80%] mx-auto" style="text-align: justify;"
                                data-wow-delay='.2s'>
                                <div class="text-sm">
                                    <h3 class="mb-2"><a href="#">{{$sinresh->title}} </a></h3>
                                    
                                    
                                    <!-- <div class="cases__box ">
                                        <img class="img-fluid" src="{{asset($sinresh->image)}}" alt="">
                                    </div> -->
                                    <h3 >Highlight</h3>
                                    <p style="text-align: justify; padding-top:5px">{!!$sinresh->details!!}</p>
                                </div>
                            </div>
                            <div class="cases-feature mb-[3px]">

                                <div class="row">
                                     <div class="col-xl-4">
                                        <div class="cases-single fix mb-7">
                                            <div class="cases-single__icon">
                                                <i class="far fa-check"></i>
                                            </div>
                                            <div class="cases-single__content fix ml-6">
                                                <h5>Author(s)</h5>
                                                <p>{{ucfirst($sinresh->postby)}}</p>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="col-xl-4">
                                        <div class="cases-single fix mb-7">
                                            <div class="cases-single__icon">
                                                <i class="far fa-check"></i>
                                            </div>
                                            <div class="cases-single__content fix ml-6">
                                                <h5>Publication date</h5>
                                                <p>{{Date('M Y',strtotime($sinresh->created_at))}}</p>
                                            </div>
                                        </div>
                                    </div>
                                  
                                     <div class="col-xl-4">
                                        <div class="cases-single fix mb-7">
                                            <div class="cases-single__icon">
                                                <i class="far fa-check"></i>
                                            </div>
                                            <div class="cases-single__content fix ml-6">
                                                <h5>Languages</h5>
                                                <p>English </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cases-meta d-sm-flex justify-content-between mt-5">
                                       
                                        <div class="cases-btn mb-2 d-none d-xl-inline-block">
                                            <a href="{{asset($sinresh->file)}}" class="theme_btn theme_btn2 theme_btn_bg_02" download="">Download
                                                Now <span><i class="fas fa-heart"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            

                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="details-right-area">
                            <div class="widget grey-bg2 mb-7">
                                <div class="widget-post">
                                   @if (count($resh)>0)
                                   <h3 class="cases-title mb-7">Other Reports</h3>
                                   @foreach ($resh as $item)
                                   <div class="post d-flex align-items-center mb-5">
                                       <div class="post__thumb mr-5">
                                           {{-- <img src="assets/img/cases/20.jpg" alt=""> --}}
                                       </div>
                                       <div class="post__content">
                                           <h5><a href="blog-details.php">{{$item->title}}</a></h5>
                                           <a class="view_btn" href="{{route('repotdetails',['details' => $item->slug])}}">view Details</a>
                                       </div>
                                   </div>
                                   @endforeach
                                   @endif 
                                </div>
                            </div>

                         
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--cases-details-area end-->
        
    </main>
@endsection