@extends('layouts.admin')
@section('title')
    Testimonial
@endsection

@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Testimonial  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{route('tst.create')}}" class="btn btn-outline-info btn-sm">Add New</a></h1>
       
      </div>
@include('includes.messages')
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="testimonial">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Content</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                            <?php $i=0;?>
                                             @foreach ($txtm as $te)
                                                 <tr>
                                                     <td>{{$i+1}}</td>
                                                
                                                 <td>{{$te->name}}</td>
                                            <td>
                                                {!!Str::limit($te->content,'50','...')!!}
                                            </td>
                                            <td>
                                                <span>
                                                    <a href="{{route('tst.edit',['id' => $te->id])}}"  class="btn btn-info btn-sm">Edit</a> 
                                                    <a href="{{route('tst.delete',['id' => $te->id])}}" onclick = "return confirm('Are you sure you want to delete these record');" class="btn btn-sm btn-danger">Trash</a></span>
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
