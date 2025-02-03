@extends('layouts.admin')
@section('title')
    Program
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add New</h1>
       
      </div>
@include('includes.messages')
                                <div class="col-md-8">
                            <form action="{{route('prog.store')}}" method="post" enctype="multipart/form-data">
                                @csrf 
                                
                                        <div class="form-group">
                                          <input type="text" name="caption" id="caption" class="form-control" value="{{old('caption')}}" placeholder="Enter Caption">     
                                        </div>                          
                                        <div class="form-group">
                                          <input type="file" name="file" id="file" class="form-control"  placeholder="Choose file">     
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