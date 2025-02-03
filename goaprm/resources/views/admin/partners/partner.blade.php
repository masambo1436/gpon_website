@extends('layouts.admin')
@section('title')
    Partners
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Partners  &nbsp;<button class="btn btn-outline-info" data-toggle="modal" data-target="#parts">Add New</button></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="partners">
          <thead>
            <tr>
            
              <th>Image</th>
              <th>Name</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
         @foreach ($allpartners as $patn)
                <tr>
                <td><img src="{{asset($patn->imagefile)}}" width="60px" height="60px" alt=""></td>
                <td>{{$patn->name}}</td>
                      <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('partner.edit',['id' => $patn->id])}}" title="edit partner">Edit</a>
  <a class="dropdown-item" href="{{route('partner.delete',['id' => $patn->id])}}" onclick="return confirm('Are you sure you want to delete this record')" title="delete partner">Delete</a>
  </div>
</div></td>
            
            </tr>
         @endforeach
           
          </tbody>
        </table>
      </div>
@endsection
 <div class="modal fade" id="parts" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="{{route('newpartner')}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                <input type="text" name="name" id="" class="form-control" placeholder="Enter Partners name" required autofocus value="{{old('name')}}">
                
                    </div> 
                    <div class="form-group">
                   
                      <input type="file" name="imagefile" id="" required class="form-control" accept=".jpg,.jpeg,.png">
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
       $("#partners").DataTable();
    });
</script>
@endsection