@extends('layouts.admin')
@section('title')
    Admin Users
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Admin Users &nbsp;<button class="btn btn-outline-info" data-toggle="modal" data-target="#newuser">Add New</button></h1>
       
      </div>
 @include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="users">
          <thead>
            <tr>            
                   <th>Name</th>
                 <th>Permission</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
             @foreach ($adusers as $user)
                        <tr>
                          
                  <td>{{$user->username}}</td>
                      
                  <td>
                      @if ($user->roles)
                  <a href="{{route('not_admin',['id' => $user->id])}}" class="btn btn-warning btn-xs">Remove Permission</a>                            
                      @else
                          <a href="{{route('make_admin',['id' => $user->id])}}" class="btn btn-success btn-xs">Make Admin</a>
                      @endif
                  </td>
                  <td>
                      @if ($user->roles != 1)
                  <span> <a href="{{route('admin.delete',['id' => $user->id])}}" onclick = "return confirm('Are you sure you want to trash this user');" class="text-danger" title="Delete User"> <span data-feather="trash"></span>Delete</a></span>
                      @endif
                      </td>
                  </tr>  
             @endforeach
          </tbody>
        </table>
      </div>
@endsection
 <div class="modal fade" id="newuser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('newuser.store')}}" method="post">
                @csrf
                                   
                <div class="form-group">
                  <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus>
                  </div> 

                <div class="form-group">
                  <input type="text" name="username" id="username" class="form-control" placeholder="Enter Username" required autofocus>
                  </div> 

                <div class="form-group">
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                    </div> 

                    <div class="form-group">
                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" required placeholder="Enter Comfirm Password">
                    </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-success">Save</button>
      </div>
        </form>
    </div>
  </div>
</div>
@section('script')
    <script>
    $(document).ready(function(){
       $("#users").DataTable();
    });
</script>
@endsection