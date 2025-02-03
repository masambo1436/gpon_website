@extends('layouts.admin')
@section('title')
    Project
@endsection

@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Projects  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{route('pro.create')}}" class="btn btn-outline-info btn-sm">Add New</a></h1>
       
      </div>
@include('includes.messages')
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="testimonial">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Title</th>
                                                <th>Budget</th>
                                                <th>Amount Raised</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                            <?php $i=0;?>
                                             @foreach ($prgs as $te)
                                                 <tr>
                                                     <td>{{$i+1}}</td>
                                                 <td>{{$te->title}}</td>
                                            <td>&#x20A6; {{number_format($te->budget)}}</td>
                                            <td>&#x20A6; {{number_format($te->amount_raised)}} &nbsp;<a href="javascript:void(0)" onclick="upamount('{{$te->id}}')" class="text-primary">&plus; Add</a></td>
                                            <td>
                                                <span>
                                                    <a href="{{route('pro.edit',['id' => $te->id])}}"  class="btn btn-info btn-sm">Edit</a> 
                                                    <a href="{{route('pro.delete',['id' => $te->id])}}" onclick = "return confirm('Are you sure you want to delete these record');" class="btn btn-sm btn-danger">Trash</a></span>
                                            </td>
                                            </tr>  
                                             <?php $i++;?>
                                             @endforeach

                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal fade" id="rasidamut" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h5 class="modal-title" id="exampleModalLabel">New User</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                          <form action="{{route('pro.raised')}}" method="post">
                                                  @csrf
                                                                     
                                                  <div class="form-group">
                                                    <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter Amount eg:5000" required autofocus>
                                                    </div> 
                                  
                                                    <input type="hidden" name="id" id="uid" class="form-control" value="">
                                        
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                           <button type="submit" class="btn btn-success">Update Amount</button>
                                        </div>
                                          </form>
                                      </div>
                                    </div>
                                  </div>                    
@endsection
@section('script')
    <script> 
    function upamount(id){
      $("#rasidamut").modal();  
      $("#uid").val(id);  
    }
    $(document).ready(function(){
       $("#testimonial").DataTable();
    });
</script>
@endsection
