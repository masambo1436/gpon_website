@extends('layouts.admin')
@section('title')
   Slides 
@endsection


@section('maincontent')
   
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit</h1>
   
  </div>
                                <div class="col-md-8">
                                    @include('includes.messages')
                            <form action="{{route('slide.update',['id' => $slides->id])}}" method="post" enctype="multipart/form-data">
                                @csrf
                                 
                                      <div class="form-group">
                                          <label for="image">Image</label>
                                 <input type="file" name="image" id="image" class="form-control" accept=".jpg,.jpeg,.png" multiple>
                                 <div>
                                    <img src="{{asset($slides->image)}}" width="60px" height="50px" alt="">
                                       </div> 
                                </div> 
                                     <div class="form-group">
                                        <label for="image">Image Content (Optional)</label>
                                        <textarea name="content" class="form-control" cols="30" rows="3">{{$slides->content}}</textarea>
                                     </div>
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-success">Update</button>
                                 </div>                          
                            </form>
                                </div>
                          
@endsection

