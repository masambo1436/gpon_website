@extends('layouts.admin')
@section('title')
    Change Password
@endsection


@section('maincontent')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Change Password </h1>
   
  </div>
  @include('includes.messages')
  <div class="row justify-content-center">
    <div class="col-md-7">
        <form action="{{route('change.pass')}}" method="post">
            @csrf
                            
            <div class="form-group">
            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required autofocus>
            
                </div> 
                <div class="form-group">
            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" required placeholder="Enter Comfirm Password">
                </div>
              <input type="hidden" name="id" id="id" value="{{Auth::user()->id}}"> 
                                     
             <div class="form-group">
                <button type="submit" class="btn btn-success">Save Password</button>
             </div>
    </form>
    </div>
  </div>
@endsection

