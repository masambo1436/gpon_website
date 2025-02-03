@extends('layouts.admin')
@section('title')
    Volunteers
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Volunteers</h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="volunte">
          <thead>
            <tr>
          
              <th>Name</th>
              <th>Phone</th>
              <th>Email</th>
              <th>Gender</th>
               <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
          @foreach ($allvolunteers as $vitem)
                <tr>
                <td>{{$vitem->name}}</td>
                <td>{{$vitem->phone}}</td>
                <td>{{$vitem->email}}</td>
                <td>{{$vitem->gender}}</td>
                <td><span class="{{$vitem->status == 'new' ? 'text-danger' : 'text-dark'}}">{{$vitem->status}}</span></td>
                <td><a href="{{route('admin.showvolunteer',['id' => $vitem->id])}}" title="view details" class="text-primary">View</a></td>
            </tr>
          @endforeach
           
          </tbody>
        </table>
      </div>
@endsection
@section('script')
    <script>
    $(document).ready(function(){
       $("#volunte").DataTable();
    });
</script>
@endsection