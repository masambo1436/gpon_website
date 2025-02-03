<!doctype html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

  
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/img/favicon.png')}}">
<!-- Datatables styles -->
      <link href="{{asset('css/jquery.dataTables.css')}}" rel="stylesheet" />
      <link href="{{asset('css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
    <!-- Styles -->
    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/admin.css')}}">
        <link rel="stylesheet" href="{{asset('css/all.css')}}">
</head>
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="{{route('admin.dashboard')}}"><h4>{{config('app.name','Goal Prime')}}</h4></a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!--<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">-->
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
    <a class="nav-link" href="{{route('admin.logout')}}">Sign out</a>
    </li>
  </ul>
</nav>
<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
          <a class="nav-link" href="{{route('admin.dashboard')}}">
              <span data-feather="home"></span>
              Dashboard <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.partner')}}">
              <span data-feather="mic"></span>
              Partners
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.newspage')}}">
              <span data-feather="mic"></span>
              Spotlight
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.uploads')}}">
              <span data-feather="mic"></span>
              Uploads
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.whatwedo')}}">
              <span data-feather="users"></span>
              What we do
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('prog.index')}}">
              <span data-feather="users"></span>
             Programs
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('re.index')}}">
              <span data-feather="users"></span>
            Research & Publication
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('pro.index')}}">
              <span data-feather="users"></span>
             Projects
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('live.index')}}">
              <span data-feather="users"></span>
            Goalprime Tv
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.faq')}}">
              <span data-feather="users"></span>
             Faq
            </a>
          </li>
        
          <li class="nav-item">
            <a class="nav-link" href="{{route('event.index')}}">
              <span data-feather="image"></span>
              Event
            </a>
          </li>
          
            <li class="nav-item">
            <a class="nav-link" href="{{route('admin.team')}}">
              <span data-feather="users"></span>
              Our Team
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.gallery')}}">
              <span data-feather="image"></span>
              Gallery
            </a>
          </li>
          
           <li class="nav-item">
            <a class="nav-link" href="{{route('admin.volunteer')}}">
              <span data-feather="book"></span>
              Volunteers
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="{{route('admin.donation')}}">
              <span data-feather="briefcase"></span>
              Donation
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="{{route('tst.index')}}">
              <span data-feather="user"></span>
              Testimonial
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('newslet')}}">
              <span data-feather="speaker"></span>
              Subcribes
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Settings</span>
          <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
             @if (Auth::user()->roles == 1)
          <li class="nav-item">
          <a class="nav-link" href="{{route('admin.user')}}">
              <span data-feather="user"></span>
              users
            </a>
          </li>
          @endif
          <li class="nav-item">
            <a class="nav-link" href="{{route('pageset')}}">
              <span class="fas fa-cogs"></span>
              Pagesettings
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('slide.index')}}">
              <span class="fas fa-camera"></span>
              Slides
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('password.change')}}">
              <span class="fas fa-key"></span>
              Change Password
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('admin.logout')}}">
              <span data-feather="unlock"></span>
              Sign Out
            </a>
          </li>
         
        </ul>
      </div>
    </nav>
     <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      @yield('maincontent')

    </main>
  </div>
</div>

    <script src="{{asset('js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('js/popper.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('js/dataTables.bootstrap4.js') }}"></script>
     <script src="{{asset('js/adminicon.js')}}"></script>
          <script src="{{asset('js/all.js')}}"></script>
        <script src="{{ asset('js/ckeditor/ckeditor.js') }}"></script>

     <script>
      function chgpassmodal(){
        $("#chngepasModal").modal
      } 
     </script>
   <script>
       $(document).ready(function(){
  setTimeout(function() { 
       $("#alert").fadeOut();
    }, 2000);
       });
   </script>
     @yield('script')
  </body>
</html>