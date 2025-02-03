@extends('layouts.admin')
@section('title')
    Gallery
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Gallery   &nbsp;<button class="btn btn-outline-info" data-toggle="modal" data-target="#gallery">Add New</button></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="galla">
          <thead>
            <tr>
            
              <th>Image</th>
              <th>Caption</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
         @foreach ($allgallery as $gallery)
                <tr>
                <td><img src="{{asset($gallery->thumbnail)}}" width="60px" height="60px" alt=""></td>
                <td>{{$gallery->caption}}</td>
                      <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="javascript:void(0)" onclick="addimages('{{$gallery->id}}')" title="add images">Add Images</a>
    <a class="dropdown-item" href="{{route('gallery.edit',['id' => $gallery->id])}}" title="edit gallery">Edit</a>
  <a class="dropdown-item" href="{{route('gallery.delete',['id' => $gallery->id])}}" onclick="return confirm('Are you sure you want to delete this record')" title="delete record">Delete</a>
  </div>
</div></td>
            
            </tr>
         @endforeach
           
          </tbody>
        </table>
      </div>
@endsection
 <div class="modal fade" id="gallery" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('newgallery')}}" method="post" enctype="multipart/form-data">
                @csrf
           <div class="form-group">
                                  <label for="title">Caption</label>
                                <input type="text" name="caption" id="title" class="form-control"  value="{{old('caption')}}">
                                </div>
                     
                       <div class="form-group">
                        <label for="featured_image">Thumbnail</label>
                    <input type="file" name="thumbnail"  id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                     
                       <div class="form-group">
                        <label for="featured_image">Images</label>
                    <input type="file" name="images[]" multiple id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                                         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-success">Save Record</button>
      </div>
        </form>
    </div>
  </div>
</div>
<div class="modal fade" id="galleryimages" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Images</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('galleryimags')}}" method="post" enctype="multipart/form-data">
                @csrf
           
              <div class="form-group">
              <label for="featured_image">Images</label>
          <input type="file" name="images[]" multiple id="featured_image" class="form-control" accept=".jpg,.png,.jpeg">
          </div>
               <input type="hidden" name="gid" id="gid" value="">                          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-success">Upload Record</button>
      </div>
        </form>
    </div>
  </div>
</div>
@section('script')
    <script>
      function addimages(id){
        $("#galleryimages").modal();
        $("#gid").val(id);
      }

    $(document).ready(function(){
       $("#galla").DataTable();
    });
</script>
@endsection