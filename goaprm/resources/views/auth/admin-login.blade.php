<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="theme-color" content="#563d7c">
    <title>{{ config('app.name', 'Goal Prime') }}</title>

    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/img/favicon.png')}}">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap core CSS -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">


    <!-- Custom styles for this template -->
  <link href="{{asset('css/floating-labels.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="{{asset('css/toastr.min.css')}}">
  </head>
  <body>
    <div class="w-100 mx-auto">
      
      <div class="row justify-content-center my-5">

        <form class="form-signin" action="{{route('admin.login')}}" method="post">
          @csrf
        <div class="text-center mb-4">
          <h1 class="mb-3 font-weight-normal">Goal <span class="text-success font-weight-bold">Prime</span></h1>
         <h1 class="h3 mb-3 font-weight-normal">Admin Login</h1>
         @include('includes.messages')
        </div>
        <div class="form-group">
          <label for="inputusername">Username</label>
          <input type="text" name="username" id="inputusername" class="form-control" style="width:100% !important" value="{{old('username')}}" placeholder="Username" required autofocus>
          @error('username')
              <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
      
        <div class="form-group">
          <label for="inputPassword">Password</label>
          <input type="password" name="password" id="inputPassword" class="form-control" style="width:100% !important" placeholder="Password" required>
          @error('password')
             <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
      
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; {{date("Y")}} Goal <span class="text-success font-weight-bold">Prime</span></p>
      </form>
      </div>
    </div>
           <script src="{{ asset('js/jquery-3.3.1.min.js') }}"></script>
            <script src="{{ asset('js/popper.min.js') }}"></script>
             <script src="{{asset('js/toastr.min.js')}}"></script>
             <script src="{{ asset('js/ckeditor/ckeditor.js') }}"></script>

</body>
</html>
