@extends('layouts.admin')
@section('title')
    Research
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Research  &nbsp;<a href="{{route('re.create')}}" class="btn btn-outline-info">Add New</a></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
       @if (count($researchs)>0)
         <?php $i = 0;
           
            ?>
            <table class="table table-striped table-sm" id="rnews">
          <thead>
            <tr>
              <th>image</th>
              <th>Title</th>
              <th>Slug</th>
              <th></th>
              
            </tr>
          </thead>
          <tbody>
          
            @foreach ($researchs as $itemnews)
            
            <tr>
            <td><img src="{{asset($itemnews->image)}}" width="60px" height="60px" alt=""></td>
            <td>{{$itemnews->title}}</td>
            <td>{{$itemnews->slug}}</td>
             
              <td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    More
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="{{route('re.edit',['id' => $itemnews->id])}}" title="edit research">Edit</a>
  <a class="dropdown-item" href="{{route('re.delete',['id' => $itemnews->id])}}" onclick="return confirm('Are you sure you want to delete these post')" title="delete research">Delete</a>
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
       $("#rnews").DataTable();
    });
</script>

@endsection