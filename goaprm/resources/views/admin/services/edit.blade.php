@extends('layouts.admin')
@section('title')
    What we do
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
          <form action="{{route('service.update',['id' => $ser->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                                
                <div class="form-group">
                    <label>Caption</label>
                <input type="text" name="caption" id="password" class="form-control" placeholder="Enter Caption" required autofocus value="{{$ser->caption}}">
                
                    </div> 
                    <div class="form-group">
                         <label>Image Caption</label>
                    <img src="{{asset($ser->imagefile)}}" width="60px" height="60px" alt="">
                      <input type="file" name="imagefile"  class="form-control" accept=".jpg,.jpeg,.png">
                    </div>
                    <div class="form-group">
                    <textarea name="message" cols="30" class="form-control" placeholder="Enter message" rows="10">{{$ser->message}}</textarea>
                    </div>
                    
                      {{-- <div class="form-group">
                         <label>Add Other Image Captions</label>
                         <div class="row">
                               @foreach ($ser->images as $imgitem)
                             <div class="col-md-3">
                                
                                  <img src="{{asset($imgitem->images)}}" width="60px" height="60px" alt="">
                                   <sup class="mb-5">
                                       <span class="badge badge-danger">
                                           <a class="text-white" href="{{route('rmimag',['id' => $imgitem->id])}}" onclick="return confirm('Are you want to delete these Image')"  title="Remove Image">&times</a>
                                       </span></sup>
                             </div>
                              @endforeach  
                         </div>
                      <input type="file" name="images[]" multiple  class="form-control" required accept=".jpg,.jpeg,.png">
                    </div> --}}
                  
       <div class="form-group">
          <a href="{{route('admin.whatwedo')}}" class="btn btn-secondary">Cancel</a>
         <button type="submit" class="btn btn-success">Update</button>
    </div>
        </form>
         </div>
 </div>
@endsection

@section('script')
  <script>
      CKEDITOR.replace('message');
      
      function deleteimg(id){
        if(confirm('Are you want to delete these Image')){
             $.ajax({
             url:'/removeimage',
             method:'post',
             data: {"id": id},
             success:function(data){
                    alert(data);
                 location.reload();
             },
             error:function(xhr){
                 alert('Error...');
             }
         });
        }
      }
      </script>
@endsection