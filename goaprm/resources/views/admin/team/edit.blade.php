@extends('layouts.admin')
@section('title')
    Team
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('team.update',['id' => $tm->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                          <label for="title">Name</label>
                        <input type="text" name="name" id="name" class="form-control"  value="{{$tm->name}}">
                    </div>
                    
                    <div class="form-group">
                          <label for="title">Position</label>
                        <input type="text" name="position" id="position" class="form-control"  value="{{$tm->position}}">
                    </div>
                     
                    <div class="form-group row">
                      <div class="col-md-6">
                        <label>Facebook</label>
                        <input type="text" name="facebook" id="facebook" class="form-control" placeholder="Enter Facebook" value="{{$tm->fbook}}">
                      </div>
                      <div class="col-md-6">
                        <label>Instagram</label>
                        <input type="text" name="instagram" id="instagram" class="form-control" placeholder="Enter Instagram" value="{{$tm->instagram}}">
                      </div>
                       </div> 
                       <div class="form-group row">
                         <div class="col-md-6">
                          <label>Twitter</label>
                           <input type="text" name="twitter" id="twitter" class="form-control" placeholder="Enter Twitter" value="{{$tm->twitter}}">
                         </div>
                         <div class="col-md-6">
                          <label>Linkedin</label>
                           <input type="text" name="linkedin" id="linkedin" class="form-control" placeholder="Enter Linkedin" value="{{$tm->linkedin}}">
                         </div>
                          </div> 

                       <div class="form-group">      
                        <img src="{{asset($tm->file)}}" width="60px" height="60px" alt=""><br>
                       <label for="featured_image">Image</label>
                    <input type="file" name="file" id="file" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                    <div class="form-group">
                      <textarea name="details" id="details" class="form-control" cols="30" rows="7">{{$tm->details}}</textarea>
                    </div>   
                  
       <div class="form-group">
          <a href="{{route('admin.team')}}" class="btn btn-secondary">Cancel</a>
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