@extends('layouts.admin')
@section('title')
  Subcribers 
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Subcribers &nbsp; <a href="{{route('showbcast')}}" class="btn btn-outline-info btn-sm">Send Broadcast Message</a></h1>
       
      </div>
@include('includes.messages')
      <div class="table-responsive">
       @if (count($adnews)>0)
         <?php $i = 0;
           
            ?>
            <table class="table table-striped table-sm" id="news">
          <thead>
            <tr>
            
              <th>Email</th>
              <th>Action</th>
              
            </tr>
          </thead>
          <tbody>
               @foreach ($adnews as $newslet)
             <tr>
                <td>{{$newslet->email}}                                   
                    </td>
                
                <td>
                <span> <a href="{{route('newsletter.delete',['id' => $newslet->id])}}" onclick = "return confirm('Are you sure you want to trash this subcriber');" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a></span>                                     
                </td>
                </tr>  
              @endforeach   
</tbody>
        </table>
      
       @else
       <div class="alert alert-info">No Data Found</div>
       @endif
      </div>
@endsection

@section('script')
    <script>
    $(document).ready(function(){
       $("#news").DataTable();
    });
</script>

@endsection
 