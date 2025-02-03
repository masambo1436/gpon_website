@extends('layouts.admin')
@section('title')
    Testimonial
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add New</h1>
       
      </div>
@include('includes.messages')
                                <div class="col-md-8">
                            <form action="{{route('tst.store')}}" method="post" enctype="multipart/form-data">
                                @csrf 
                                
                                        <div class="form-group">
                                          <input type="text" name="name" id="name" class="form-control" value="{{old('name')}}" placeholder="Enter Name">     
                                        </div>                          
                                       <div class="form-group">
                                           <textarea name="content" id="content" cols="30" rows="10">{{old('content')}}</textarea>
                                     </div> 
                                                                     
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-success">Save</button>
                                 </div>                          
                            </form>
                                </div>
                          
@endsection

@section('script')
     <script>
      CKEDITOR.replace('content');
      </script>

@endsection