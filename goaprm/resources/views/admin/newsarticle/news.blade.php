@extends('layouts.admin')
@section('title')
    News
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">News  &nbsp;<a href="{{route('admin.addnews')}}" class="btn btn-outline-info">Add New</a></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
       @if (count($allnews)>0)
         <?php $i = 0;
           
            ?>
            <table class="table table-striped table-sm" id="news">
          <thead>
            <tr>
              <th>image</th>
              <th>News Title</th>
              <th>Slug</th>
              <th></th>
              
            </tr>
          </thead>
          <tbody>
          
            @foreach ($allnews as $itemnews)
            
            <tr>
            <td><img src="{{asset($itemnews->imagefile)}}" width="60px" height="60px" alt=""></td>
            <td>{{$itemnews->title}}</td>
            <td>{{$itemnews->slug}}</td>
             
              <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('admin.newsedit',['id' => $itemnews->id])}}" title="edit news">Edit</a>
  <a class="dropdown-item" href="{{route('admin.newsdelete',['id' => $itemnews->id])}}" onclick="return confirm('Are you sure you want to delete this news post')" title="delete news">Delete</a>
  </div>
</div></td>
            </tr>
            @endforeach
     
          </tbody>
        </table>
      
       @else
       <div class="alert alert-info">No Data Found</div>
       @endif
      </div>
@endsection

@section('script')
    <script>
    $(document).ready(function(){
       $("#news").DataTable();
    });
</script>

@endsection