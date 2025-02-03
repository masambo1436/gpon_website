@extends('layouts.admin')
@section('title')
    News
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit News</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('admin.newspostupdate',['id' => $post->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                                  <label for="title">Title</label>
                                <input type="text" name="title" id="title" class="form-control" placeholder="Enter News Title" value="{{$post->title}}">
                                </div>
                     <div class="form-group">
                                   <label for="description">Description</label>
                                   <textarea name="description" id="post_description" cols="30" rows="10" class="form-control">
                                       {{$post->description}}
                                   </textarea>
                                </div>
                       <div class="form-group">
                        <label for="featured_image">Featured Image</label>
                         <img src="{{asset($post->imagefile)}}" width="60px" height="60px" alt="">
                    <input type="file" name="imagefile" id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                  
       <div class="form-group">
          <a href="{{route('admin.newspage')}}" class="btn btn-secondary">Cancel</a>
         <button type="submit" class="btn btn-success">Update Post</button>
    </div>
        </form>
         </div>
 </div>
@endsection

@section('script')
  <script>
      CKEDITOR.replace('description');
      </script>
@endsection