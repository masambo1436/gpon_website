@extends('layouts.admin')
@section('title')
    Event
@endsection

@section('maincontent')
   
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
         <h2 class="h2">Events  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="{{route('event.create')}}" class="btn btn-outline-info btn-sm">Add New</a></h2>
                    
            </div> 
            @include('includes.messages')   
   
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="eventes">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Venue</th>
                                                <th>Attendance</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Created On</th>
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                            @foreach ($events as $evn)
                                                   <tr>
                                                   <td>{{$evn->title}}<br>
                                            <span>
                                                @if (!$evn->status)
                                                    
                                                    <a href="{{route('event.publish',['id' => $evn->id])}}" class="text-info">End Event</a> |
                                                @endif
                                                <a href="{{route('event.attend',['id' => $evn->id])}}" class="text-info">See Attendance</a> | <a href="{{route('event.edit',['id' => $evn->id])}}" class="text-info">Edit</a> | <a href="{{route('event.delete',['id' => $evn->id])}}" onclick = "return confirm('Are you sure you want to delete these record');" class="text-danger">Trash</a></span>
                                            </td>
                                       
                                        <td>{{$evn->venue}}</td>
                                          <td>{{$evn->attends->count()}}</td>
                                           <td>{{$evn->datefrom}}</td>
                                            <td>{{date('h : ia',strtotime($evn->timestarted))}}</td>
                                              <td>{{date('d,M Y',strtotime($evn->created_at))}}</td>
                                            </tr>  
                                          
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                          
@endsection
@section('script')
    <script>
    $(document).ready(function(){
       $("#eventes").DataTable();
    });
</script>
@endsection
