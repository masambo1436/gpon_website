@extends('layouts.admin')
@section('title')
    Faq
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Faq  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{URL::previous()}}" class="btn btn-outline-info btn-sm">Back</a></h1>
       
      </div>
@include('includes.messages')

                    <div class="col-7">
                           <form action="{{route('faq.update',['id' => $edfq->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                                  <label for="title">Name</label>
                                <input type="text" name="name" id="title" class="form-control"  value="{{$edfq->name}}">
                                </div>
                     
                     <div class="form-group">
                    <textarea name="body" id="" cols="30" class="form-control" placeholder="Enter message" rows="10">{{$edfq->body}}</textarea>
                    </div>
                  
       <div class="form-group">
          <a href="{{route('admin.faq')}}" class="btn btn-secondary">Cancel</a>
         <button type="submit" class="btn btn-success">Update Record</button>
    </div>
        </form>
                    </div>
               
@endsection
@section('script')
  <script>
          CKEDITOR.replace('body');
      </script>
@endsection