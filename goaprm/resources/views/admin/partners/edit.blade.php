@extends('layouts.admin')
@section('title')
    Partners
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('partner.update',['id' => $pat->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                                  <label for="title">Partners Name</label>
                                <input type="text" name="name" id="title" class="form-control"  value="{{$pat->name}}">
                                </div>
                     
                       <div class="form-group">
                        <label for="featured_image">Image</label>
                         <img src="{{asset($pat->imagefile)}}" width="60px" height="60px" alt="">
                    <input type="file" name="imagefile" id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                  
       <div class="form-group">
          <a href="{{route('admin.partner')}}" class="btn btn-secondary">Cancel</a>
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