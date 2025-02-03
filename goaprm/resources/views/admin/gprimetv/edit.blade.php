@extends('layouts.admin')
@section('title')
GoalPrime
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit GoalPrime</h1>      
      </div>
       <div class="row justify-content-center">
           
  <div class="col-md-7">
    @include('includes.messages')
          <form action="{{route('live.update',['id' => $edt->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                <input type="text" name="title" id="title" class="form-control" placeholder="Enter Live Streaming Title" required autofocus value="{{$edt->title}}">
                    </div> 
                    <div class="form-group">
                      <textarea name="link" id="link" class="form-control" placeholder="Enter Live Streaming Link" required cols="30" rows="5">{{$edt->link}}</textarea>     
                    </div>   
                    
                  
       <div class="form-group">
          <a href="{{route('live.index')}}" class="btn btn-secondary">Cancel</a>
         <button type="submit" class="btn btn-success">Update</button>
    </div>
        </form>
         </div>
 </div>
@endsection
