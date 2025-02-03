@extends('layouts.admin')
@section('title')
    Testimonial
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
@include('includes.messages')

                                <div class="col-md-8">
                                 
                            <form action="{{route('tst.update',['id' => $tsed->id])}}" method="post" enctype="multipart/form-data">
                                @csrf 
                                
                                        <div class="form-group">
                                          <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" value="{{$tsed->name}}">     
                                        </div>                          
                                       <div class="form-group">
                                           <textarea name="content" id="content" cols="30" rows="10">{!!$tsed->content!!}</textarea>
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