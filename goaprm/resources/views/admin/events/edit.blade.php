@extends('layouts.admin')
@section('title')
   Edit Event
@endsection


@section('maincontent')
   
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
         <h2 class="h2">Edit Event</h2>
                    
            </div> 
            @include('includes.messages') 
        
                                <div class="row">
                                    <div class="col-md-8">
                            <form action="{{route('event.update',['id' => $eventsed->id])}}" method="post" enctype="multipart/form-data">
                                @csrf
                                  <div class="form-group">
                                  <label>Title</label>
                                 <input type="text" name="title" id="caption" class="form-control" placeholder="Enter Event Title" value="{{$eventsed->title}}">
                                     </div> 

                                      <div class="form-group">
                                      <label>Venue</label>
                                 <input type="text" name="venue" id="caption" class="form-control" placeholder="Enter Event Venue" value="{{$eventsed->venue}}">
                                     </div> 

                                       <div class="form-group">
                                       <label>Date </label>
                                 <input type="date" name="datefrom" id="caption" class="form-control" placeholder="Enter Event Title" value="{{$eventsed->datefrom}}" >
                                     </div>

                                     {{-- <div class="form-group">
                                     <label>Date Ended</label>
                                 <input type="date" name="dateto" id="caption" class="form-control" placeholder="Enter Event Title" value="{{$eventsed->dateto}}" >
                                     </div> --}}

                                      <div class="form-group">
                                      <label>Time</label>
                                 <input type="time" name="timestarted" id="caption" class="form-control" placeholder="Enter Event Time" value="{{$eventsed->timestarted}}" >
                                     </div>
                                   
                         <div class="form-group">
                             <img src="{{asset($eventsed->eventimage)}}" width="60px" height="60px"><br>
                        <label for="featured_image">Featured Image</label>
                               <input type="file" name="eventimage" id="eventimage" class="form-control" accept=".jpg,.png,.jpeg">
                    </div>
                    {{-- <div class="form-group">
                        <label>Price</label>
               <input type="text" name="price" id="price" class="form-control" placeholder="Enter Event Price" value="{{$eventsed->price}}" >
                   </div> --}}
                           
                   <div class="form-group">
                    <label>Event Details</label>
                    <textarea name="details" id="details" cols="30" rows="10">{!!$eventsed->details!!}</textarea>
              </div> 
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-success">Update Event</button>
                                 </div>                           
                            </form>
                            
                                </div>
                               
                                </div>
                         
@endsection


@section('script')
     <script>
      CKEDITOR.replace('details');
      </script>

@endsection