@extends('layouts.admin')
@section('title')
    Donations
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Donations</h1>
       
      </div>
      @include('includes.messages')
  <div class="row justify-content-center">
    <div class="d-flex mb-3">
      <button type="button" class="btn btn-outline-primary btn-sm mx-2" onclick="window.location.href='{{route('getdonationmail')}}?options=monthly'">Monthly Reminder</button>
      <button type="button" class="btn btn-outline-info btn-sm mx-2" onclick="window.location.href='{{route('getdonationmail')}}?options=quarterly'">Quarterly Reminder</button>
      <button type="button" class="btn btn-outline-danger btn-sm mx-2" onclick="window.location.href='{{route('getdonationmail')}}?options=yearly'">Yearly Reminder</button>
      <button type="button" class="btn btn-outline-dark btn-sm mx-2" onclick="openlogmodal()">View Last Message Log</button>
    </div>
    
  </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="donate">
          <thead>
            <tr>
             
              <th>FullName</th>
              <th>Phone</th>
              <th>Email</th>
              <th>Donation For</th>
              <th>Amount</th>
              <th>Duration</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
             @foreach ($alldonation as $donitem)
                  <tr>
                <td>{{$donitem->name}}</td>
                <td>{{$donitem->phone}}</td>
                <td>{{$donitem->email}}</td>
                <td>{{$donitem->project}}</td>
                <td>{{number_format($donitem->amount)}}</td>
                <td>{{$donitem->duration}}</td>
                <td><span class="{{$donitem->status == 'new' ? 'text-danger' : 'text-dark'}}">{{$donitem->status}}</span></td>
                <td><a href="{{route('admin.showdonation',['id' => $donitem->id])}}" title="view details" class="text-primary">View</a></td>
            </tr>
             @endforeach
          </tbody>
        </table>
      </div>
     
      {{-- message log --}}
      <div class="modal fade" id="msglogModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Message Log</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <table class="table table-sm" id="logs">
                  <thead>
                    <th>Last Date Sent</th>
                    <th>Reminder Type</th>
                  </thead>
                  <tbody>
                   @foreach ($logs as $item)
                    <tr>
                      <td>{{Date('d M, Y',strtotime($item->last_date_sent))." at ".Date('H:ia',strtotime($item->last_date_sent))}}</td>
                      <td>{{ucfirst($item->reminder_type)}}</td>
                    </tr>
                   @endforeach
                  </tbody>
                </table>
          </div>
        </div>
      </div>
      {{-- message log --}}
@endsection
@section('script')
<script>
  CKEDITOR.replace('message');
  </script>
      <script> 
         function openlogmodal(){
        $("#msglogModal").modal();
      }    
    $(document).ready(function(){
       $("#donate").DataTable();
       $("#logs").DataTable({pageLength:25});
    });
</script>

@endsection