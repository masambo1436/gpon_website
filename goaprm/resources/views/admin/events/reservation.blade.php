@extends('layouts.admin')
@section('title')
    Event
@endsection


@section('maincontent')
   
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
         <h2 class="h2">Event: {{$eventitle->title}}</h2>
                    
            </div> 
            @include('includes.messages')              
            
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="atten">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>

                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                            @foreach ($atte as $ati)
                                                   <tr>
                                                   <td>{{$ati->name}}</td>                                      
                                                   <td>{{$ati->email}}</td>
                                                   <td>{{$ati->phone}}</td>                                         
                                            </tr>  
                                          
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            
@endsection
@section('script')
    <script>
    $(document).ready(function(){
       $("#atten").DataTable();
    });
</script>
@endsection
