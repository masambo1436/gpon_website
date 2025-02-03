@extends('layouts.admin')
@section('title')
  Settings
@endsection

@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2"><i class="fas fa-cogs mr-1"></i> Settings</h1>
       
      </div>
       @include('includes.messages')
         
                 <div class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>Set Exchange Rate</h5>
                    </div>
                    <form action="{{route('addsetting')}}" method="post">
                        @csrf
                       <div class="form-group col-6">
                           <label for="trans-fee">Set Exchange Rate</label>
                        <input type="text" name="exchg" class="form-control" id="exchg" placeholder="Enter Exchange Rate eg:1000" value="{{$exchg ? $exchg->content : ""}}">
                       </div>
                       <div class="form-group">
                        <input type="submit" name="saveexchg" id="saveexchg" class="btn btn-primary"  value="Save Exchange Rate">
                       </div>
                    </form>

                 <div class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>About</h5>
                    </div>
                <form action="{{route('addsetting')}}" method="post">
                    @csrf
                             <div class="container">
                           
                            <div class="form-group">
                            
                            <textarea name="content" id="content" cols="30" rows="10">@if($abt ?? ""){!!$abt->content!!}@endif</textarea>
                            </div>

                             <div class="form-group">
                                <input type="submit" name="saveabout" id="saveabout" class="btn btn-primary"  value="Save About">
                            </div>
                    </div>
                </form>
                      <div class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>Our Vision</h5>
                    </div>
                <form action="{{route('addsetting')}}" method="post">
                    @csrf
                             <div class="container">
                           
                            <div class="form-group">
                            
                            <textarea name="content4" id="content4" cols="30" rows="10">@if($vis ?? ""){!!$vis->content!!}@endif</textarea>
                            </div>

                             <div class="form-group">
                                <input type="submit" name="savevision" id="savevision" class="btn btn-primary"  value="Save Vision">
                            </div>
                    </div>
                </form>

                               <div class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>Our Mission</h5>
                    </div>
                    <form action="{{route('addsetting')}}" method="post">
                        @csrf
                      <div class="container">
                           
                            <div class="form-group">
                            
                            <textarea name="content3" id="content3" cols="30" rows="10">@if ($mis ?? ""){!!$mis->content!!} @endif</textarea>
                            </div>

                             <div class="form-group">
                                <input type="submit" name="savemission" id="savemission" class="btn btn-primary"  value="Save Mission">
                            </div>
                    </div>

                    </form>
                               <div class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>Our Objectives</h5>
                    </div>
                    <form action="{{route('addsetting')}}" method="post">
                        @csrf
                      <div class="container">
                           
                            <div class="form-group">
                                
                            <textarea name="content5" id="content5" cols="30" rows="10">@if ($obj ?? ""){!!$obj->content!!}@endif</textarea>
                            </div>

                             <div class="form-group">
                                <input type="submit" name="saveobj" id="saveobj" class="btn btn-primary"  value="Save Objective">
                            </div>
                    </div>

                    </form>
                    <form action="{{route('addsetting')}}" method="post">
                        @csrf
                                 <div  class="bg-secondary text-white p-3 border-left-primary my-3">
                        <h5>Contact Page</h5>
                    </div>
                           <div class="container">
                       
                             <div class="form-group">
                                 <label for="content"> Company Email</label>
                                <input type="text" name="email" id="email" class="form-control col-7" placeholder="Enter company Emails" value="{{$cont ? $cont->email : old('email')}}">
                            </div>
                             <div class="form-group">
                                 <label for="content">Company Phone No</label>
                                <input type="text" name="phone" id="phone" class="form-control col-7" placeholder="Enter company Phone No" value="{{$cont ? $cont->phone :old('phone')}}">
                            </div>
                             <div class="form-group">
                                 <label for="content">Company Address</label>
                                <input type="text" name="address" id="address" class="form-control col-7" placeholder="Enter company Address" value="{{$cont ? $cont->address :old('phone')}}">
                            </div>
                            <div class="form-group">
                                 <label for="content">Company Map Location</label>
                                <input type="text" name="location" id="location" class="form-control col-7" placeholder="Enter company Map Location" value="{{$cont ? $cont->location :old('phone')}}">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="savecontact" id="savecontact" class="btn btn-primary"  value="Save Contact">
                            </div>
                    </div>
                        </form>
          
@endsection
@section('script')
    <script>
      CKEDITOR.replace('content');
      CKEDITOR.replace('content2');
      CKEDITOR.replace('content3');
      CKEDITOR.replace('content4');
       CKEDITOR.replace('content5');
      </script>
@endsection
