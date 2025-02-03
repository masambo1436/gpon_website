@extends('layouts.admin')
@section('title')
 Gallery
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('gallery.update',['id' => $galle->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                                  <label for="title">Caption</label>
                                <input type="text" name="caption" id="title" class="form-control"  value="{{$galle->caption}}">
                                </div>
                     
                       <div class="form-group">
                        <label for="featured_image">Thumbnail</label>
                         <img src="{{asset($galle->thumbnail)}}" width="60px" height="60px" alt="">
                    <input type="file" name="thumbnail" id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                       <div class="form-group">
                        <label for="featured_image">Images</label>
                        @foreach ($galle->galleryimages as $img)
                        <a href="{{route('removeimage',['id' => $img->id])}}" title="remove image" onclick="return confirm('Are you sure you want to remove these image')">
                          <img src="{{asset($img->images)}}" width="60px" height="50px" alt="">
                        </a>
                        @endforeach
                    <input type="file" name="images[]" id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                  
                  <div class="form-group">
                      <a href="{{route('admin.gallery')}}" class="btn btn-secondary">Cancel</a>
                    <button type="submit" class="btn btn-success">Update Record</button>
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