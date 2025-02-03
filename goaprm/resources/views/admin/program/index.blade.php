@extends('layouts.admin')
@section('title')
    Program
@endsection

@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Programs  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{route('prog.create')}}" class="btn btn-outline-info btn-sm">Add New</a></h1>
       
      </div>
@include('includes.messages')
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="testimonial">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Caption</th>
                                                <th>Image</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                            <?php $i=0;?>
                                             @foreach ($prgs as $te)
                                                 <tr>
                                                     <td>{{$i+1}}</td>
                                                
                                                 <td>{{$te->caption}}</td>
                                            <td>
                                               <img src="{{asset($te->image)}}" width="60" height="60" alt="">
                                            </td>
                                            <td>
                                                <span>
                                                    <a href="{{route('prog.edit',['id' => $te->id])}}"  class="btn btn-info btn-sm">Edit</a> 
                                                    <a href="{{route('prog.delete',['id' => $te->id])}}" onclick = "return confirm('Are you sure you want to delete these record');" class="btn btn-sm btn-danger">Trash</a></span>
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
       $("#testimonial").DataTable();
    });
</script>
@endsection
