@extends('layouts.admin')
@section('title')
   Program Edit
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
@include('includes.messages')

                                <div class="col-md-8">
                                 
                            <form action="{{route('pro.update',['id' => $tsed->id])}}" method="post" enctype="multipart/form-data">
                                @csrf 
                                
                                        <div class="form-group">
                                          <input type="text" name="title" id="title" class="form-control" placeholder="Enter Project Title" value="{{$tsed->title}}">     
                                        </div> 
                                        <div class="form-group">
                                          <input type="number" name="budget" id="budget" class="form-control" value="{{$tsed->budget}}" placeholder="Enter Budget Amount eg:5000">     
                                        </div>   
                                        <div class="form-group">
                                            <input type="file" name="file" id="file" class="form-control"  placeholder="Choose file">     
                                          </div>                        
                                       <div class="form-group">
                                           <textarea name="content" id="content" cols="30" rows="10">{!!$tsed->details!!}</textarea>
                                     </div> 
                                                                     
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-success">Update</button>
                                 </div>                          
                            </form>
                                </div>
                          
@endsection

@section('script')
     <script>
      CKEDITOR.replace('content');
      </script>

@endsection