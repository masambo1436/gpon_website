@extends('layouts.admin')
@section('title')
    What We Do
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">What We Do  &nbsp;<button class="btn btn-outline-info" data-toggle="modal" data-target="#watwe">Add New</button></h1>
       
      </div>

@include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="whtwedo">
          <thead>
            <tr>
              
              <th>image</th>
              <th>Caption</th>
              
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            
            @foreach ($watwedo as $item)
                <tr>
            
                <td><img src="{{asset($item->imagefile)}}" width="60px" height="60px" alt=""></td>
                <td>{{$item->caption}}</td>
               
              <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('service.edit',['id' => $item->id])}}" title="edit news">Edit</a>
  <a class="dropdown-item" href="{{route('service.delete',['id' => $item->id])}}" onclick="return confirm('Are you sure you want to delete this Record')" title="delete news">Delete</a>
  </div>
</div></td>
            </tr>
            @endforeach          
          </tbody>
        </table>
      </div>
@endsection
 <div class="modal fade" id="watwe" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('newservice')}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                    <label>Caption</label>
                <input type="text" name="caption" id="password" class="form-control" placeholder="Enter Caption" required autofocus value="{{old('caption')}}">
                    </div> 
                    <div class="form-group">
                         <label>Image Caption</label>
                      <input type="file" name="imagefile" id="" class="form-control" required accept=".jpg,.jpeg,.png">
                    </div>
                    <div class="form-group">
                    <textarea name="message" id="" cols="30" class="form-control" placeholder="Enter message" rows="10">{{old('message')}}</textarea>
                    </div>
                    
                     {{-- <div class="form-group">
                         <label>Add Other Image Captions</label>
                      <input type="file" name="images[]" multiple id="" class="form-control" required accept=".jpg,.jpeg,.png">
                    </div> --}}
                                         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
         <button type="submit" class="btn btn-success">Save</button>
      </div>
        </form>
    </div>
  </div>
</div>
@section('script')
    <script>
    $(document).ready(function(){
       $("#whtwedo").DataTable();
    });
    
      CKEDITOR.replace('message');
    
</script>
@endsection