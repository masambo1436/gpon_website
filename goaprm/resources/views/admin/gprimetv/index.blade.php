@extends('layouts.admin')
@section('title')
Goalprime 
@endsection
@section('maincontent')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">
    Goalprime Tv   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="btn btn-outline-info" data-toggle="modal" data-target="#live">Add New</button>
  </h1>
 
</div>
    @include('includes.messages')
      <div class="table-responsive">
            @if (count($gprimetvs)>0)
        <table class="table table-striped table-sm" id="whtwedo">
          <thead>
            <tr>
              <th>#</th>
              <th>Title</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
             <?php $i = 0;
           
            ?>
            @foreach ($gprimetvs as $item)
                <tr>
            <td>{{$i+1}}</td>
                <td>{{$item->title}}</td>
              <td>
                @if ($item->status)
                <a class="text-primary" href="{{route('live.unpublish',['id' => $item->id])}}" title="unpublish Live Stream">Unpublish</a> |
                @else
                <a class="text-primary" href="{{route('live.publish',['id' => $item->id])}}" title="publish Live Stream">Publish</a> |
                @endif
                <a class="text-info" href="{{route('live.edit',['id' => $item->id])}}" title="edit gallery">Edit</a> |
                <a class="text-danger" href="{{route('live.delete',['id' => $item->id])}}" onclick="return confirm('Are you sure you want to delete this Record')" title="delete news">Delete</a>
              </td>
            </tr>
            <?php  $i++ ?>
            @endforeach          
          </tbody>
        </table>
           @else
       <div class="alert alert-info">No Data Found</div>
       @endif
      </div>
      
@endsection
 <div class="modal fade" id="live" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('live.store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                  <input type="text" name="title" id="title" class="form-control" placeholder="Enter Live Streaming Title" required autofocus value="{{old('title')}}">
                  </div>            
                <div class="form-group">
                <textarea name="link" id="link" class="form-control" placeholder="Enter Live Streaming Link" required cols="30" rows="5">{{old('link')}}</textarea>
                    </div>                        
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
    
      CKEDITOR.replace('body');
    
</script>
@endsection