@extends('layouts.admin')
@section('title')
    Manage Slide and Images
@endsection


@section('maincontent')
   
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Manage Slides & Images &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{route('slide.create')}}" class="btn btn-outline-info btn-sm">Add New</a></h1>
        
        </div>                   
                                @include('includes.messages')
                                <div class="table-responsive">
                                 
                                    <table class="table table-bordered" id="stores">
                                        <thead>
                                            <tr>
                                                 <th>#</th>  
                                                <th>Images</th>
                                                <th>content</th>
                                                 <th>status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                             <?php $i=0;?>
                                        @foreach ($slides as $slide)
                                               <tr>
                                                    <td>{{$i+1}}</td>
                                                    <td>
                                                    <img src="{{asset($slide->image)}}" width="60px" height="50px" alt="">   
                                                    </td>
                                                    <td>
                                                        <p>{{$slide->content}}</p>
                                                    </td>
                                                     <td>@if ($slide->status)
                                                         <a href="{{route('slide.deactivate',['id' => $slide->id])}}">Deactivate</a>
                                                     @else
                                                          <a href="{{route('slide.activate',['id' => $slide->id])}}">Activate</a>
                                                     @endif</td>                                        
                                                    <td>
                                                    <span> <a title="Edit"  href="{{route('slide.edit',['id' => $slide->id])}}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>&nbsp;<a title="Delete" href="{{route('slide.delete',['id' => $slide->id])}}" onclick = "return confirm('Are you sure you want to trash this image');" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a></span>
                                                    </td>
                                                   
                                            </tr>
                                             <?php $i++;?>
                                            @endforeach
                                        </tbody>
                                    </table>
                                   
                                </div>
                           
@endsection
@section('script')
    <script>
    $(document).ready(function(){
       $("#stores").DataTable();
    });
</script>
@endsection
