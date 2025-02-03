@extends('layouts.admin')
@section('title')
    Teams
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Our Team  &nbsp;<button class="btn btn-outline-info" data-toggle="modal" data-target="#teams">Add New</button></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="tems">
          <thead>
            <tr>
            
              <th>Image</th>
              <th>Name</th>
              <th>Position</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
         @foreach ($allteams as $patn)
                <tr>
                <td><img src="{{asset($patn->file)}}" width="60px" height="60px" alt=""></td>
                <td>{{$patn->name}}</td>
                <td>{{$patn->position}}</td>
                      <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('team.edit',['id' => $patn->id])}}" title="edit team">Edit</a>
  <a class="dropdown-item" href="{{route('team.delete',['id' => $patn->id])}}" onclick="return confirm('Are you sure you want to delete this record')" title="delete team">Delete</a>
  </div>
</div></td>
            
            </tr>
         @endforeach
           
          </tbody>
        </table>
      </div>
@endsection
 <div class="modal fade" id="teams" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="{{route('newteam')}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus value="{{old('name')}}">
                
                    </div> 
                    <div class="form-group">
                <input type="text" name="position" id="position" class="form-control" placeholder="Enter Position" required value="{{old('position')}}">
                    </div> 
                    <div class="form-group row">
                     <div class="col-md-6">
                       <input type="text" name="facebook" id="facebook" class="form-control" placeholder="Enter Facebook" value="{{old('facebook')}}">
                     </div>
                     <div class="col-md-6">
                       <input type="text" name="instagram" id="instagram" class="form-control" placeholder="Enter Instagram" value="{{old('instagram')}}">
                     </div>
                      </div> 
                      <div class="form-group row">
                        <div class="col-md-6">
                          <input type="text" name="twitter" id="twitter" class="form-control" placeholder="Enter Twitter" value="{{old('twitter')}}">
                        </div>
                        <div class="col-md-6">
                          <input type="text" name="linkedin" id="linkedin" class="form-control" placeholder="Enter Linkedin" value="{{old('linkedin')}}">
                        </div>
                         </div> 
                    <div class="form-group">
                      <input type="file" name="file" id="file" required class="form-control" accept=".jpg,.jpeg,.png">
                    </div>
                    <div class="form-group">
                      <textarea name="details" id="details" class="form-control" cols="30" rows="5">{{old('details')}}</textarea>
                    </div>                         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
         <button type="submit" class="btn btn-success">Save Record</button>
      </div>
        </form>
    </div>
  </div>
</div>
@section('script')
    <script>
    $(document).ready(function(){
       $("#tems").DataTable();
    });
</script>
@endsection