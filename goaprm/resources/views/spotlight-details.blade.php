@extends('layouts.forntend2')
@section('title')
{{$single->title}}
@endsection
@section('fcontent')
    <main>

        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url({{asset($single->imagefile)}});">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="page-title-wrapper text-center pt-32">
                            <!-- <div class="page-title-box">
                                <h2 class="page-title">{{$single->title}}</h2>
                                
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
         <!--blog-area start-->
         <section class="blog-details-area py-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="blogs-details-left-area mb-12">
                            <div class="blog blogs-02 mb-10 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <div class="blog__thumb mb-8">
                                    <img src="{{asset($single->imagefile)}}" alt="">
                                </div>
                                <div class="blog__content">
                                    <a class="tag" href="#">{{$single->title}}</a>
                                    <h3 class="blog-title mb-5"><a href="#">{{$single->title}}</a></h3>
                                    <ul class="blog-author mb-5">
                                            <li><a href="#"><img src="assets/img/blog/04.png" alt="">
                                                    <span>{{$single->postby}}</span></a></li>
                                            <li>
                                                <i class="far fa-calendar-alt"></i> {{Date('d M, Y',strtotime($single->created_at))}}
                                            </li>
                                            <li>
                                                <i class="far fa-comments"></i> Comments ({{$single->comments->count()}})
                                            </li>
                                    </ul>
                            <p class="mb-8" style="text-align: justify;">{!!$single->description!!}</p>
                                       </div>
                            </div>
                           
                          
                            {{-- <div class="row">
                                
                                <div class="col-xl-6 col-lg-6 col-md-6 text-left text-md-right">
                                    <div class="header-social post-share-icon mb-12">
                                        <span>Share :</span>
                                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="#"><i class="fab fa-youtube"></i></a>
                                       
                                    </div>
                                </div>
                            </div> --}}
                           
                         
                            <div class="lates-comment mb-12">
                                <h3 class="cases-title mb-10">People’s Comments</h3>
                                <ul class="post-comment">
                                    @foreach ($single->comments as $item)
                                    <li>
                                        <div class="comment-box fix mb-10">
                                            <div class="comment-box__img mr-5 f-left">
                                                {{-- <img src="assets/img/blog/34.jpg" alt=""> --}}
                                            </div>
                                            <div class="comment-box__content fix">
                                                <h5>{{$item->name}}</h5>
                                               
                                                <p>{{$item->comment}}</p>
                                                {{-- <a href="#" class="reply-btn">Reply Comments <i class="far fa-long-arrow-right"></i></a> --}}
                                            </div>
                                        </div>
                                    </li>
                                    @endforeach
                               
                                </ul>
                            </div>
                            <div class="comment-form">
                                <h3 class="cases-title mb-7">Add Comment</h3>
                               
                                <form action="{{route('addcomments')}}" method="post">
                                    @include('includes.messages')
                                    @csrf
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <div class="input-area pos-rel mb-7">
                                                <input type="text" name="name" class="form-control" placeholder="Full Name Here" value="{{old('name')}}">
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="input-area input-mail pos-rel mb-7">
                                                <input type="text" name="email" class="form-control" placeholder="Email Here" value="{{old('email')}}">
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <div class="input-area input-comment pos-rel mb-7">
                                                <textarea name="comment" id="comments" cols="30" rows="10" placeholder="Comments">{{old('comment')}}</textarea>
                                            </div>
                                        </div>
                                        <input type="hidden" name="newsarticle_id" value="{{$single->id}}">
                                        <div class="col-xl-12 comment-btn">
                                            <button type="submit" class="theme_btn theme_btn_bg">send comments <span><i
                                                class="fas fa-heart"></i></span></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="standard-right-area">
                           
                            
                            <div class="widget grey-bg2 mb-6 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <div class="widget-post widget-post-02">
                                    <h3 class="cases-title mb-5">Recent Stories</h3>
                                    <ul>
                                        @foreach ($recent as $item)
                                        <li>
                                            <div class="post d-flex align-items-center mb-5">
                                                <div class="post__thumb mr-5">
                                                    <img src="{{asset($item->imagefile)}}" alt="">
                                                </div>
                                                <div class="post__content">
                                                    <h4><a href="{{route('newsdetails',['slug' => $item->slug])}}">{{$item->title}}</a></h4>
                                                    <a class="view_btn" href="{{route('newsdetails',['slug' => $item->slug])}}"><i class="far fa-chevron-right"></i> By {{$item->postby}}</a>
                                                </div>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            
                            {{-- <div class="widget grey-bg2 mb-7 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                <div class="widget-cat-btn">
                                    <h3 class="cases-title mb-7">Popular Tags</h3>
                                    <div class="cat-list">
                                        <a class="cat-btn" href="#">Design</a>
                                        <a class="cat-btn" href="#">Portfolio</a>
                                        <a class="cat-btn" href="#">Energy</a>
                                        <a class="cat-btn" href="#">Resume</a>
                                        <a class="cat-btn" href="#">Gallery</a>
                                        <a class="cat-btn" href="#">Renewable</a>
                                    </div>
                                </div>
                            </div> --}}
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--blog-area end-->
       
    </main>
  @endsection