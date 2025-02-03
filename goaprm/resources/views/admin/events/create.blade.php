@extends('layouts.admin')
@section('title')
    Event
@endsection

@section('maincontent')
   
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
         <h2 class="h2">Create Event</h2>
                    
            </div> 
                                <div class="col-md-8">
                                    @include('includes.messages') 
                                <form action="{{route('event.store')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                 <div class="form-group">
                                 <label>Titles</label>
                                 <input type="text" name="title" id="caption" class="form-control" placeholder="Enter Event Title" value="{{old('title')}}" autofocus>
                                     </div> 

                                      <div class="form-group">
                                      <label>Venue</label>
                                 <input type="text" name="venue" id="caption" class="form-control" placeholder="Enter Event Venue" value="{{old('venue')}}">
                                     </div> 

                                       <div class="form-group">
                                           <label>Date</label>
                                 <input type="date" name="datefrom" id="datefrom" class="form-control" placeholder="Enter Event Title" value="{{old('datefrom')}}" >
                                     </div>

                                     {{-- <div class="form-group">
                                         <label>Date Ended</label>
                                 <input type="date" name="dateto" id="dateto" class="form-control" placeholder="Enter Event Title" value="{{old('dateto')}}" >
                                     </div> --}}

                                      <div class="form-group">
                                          <label>Time</label>
                                 <input type="time" name="timestarted" id="timestarted" class="form-control" placeholder="Enter Event Time" value="{{old('timestarted')}}" >
                                     </div>
                                
                                     <div class="form-group">
                                            <label for="featured_image">Featured Image</label>
                                        <input type="file" name="eventimage" id="eventimage" class="form-control" accept=".jpg,.png,.jpeg">
                                        </div>
                                        {{-- <div class="form-group">
                                            <label>Price</label>
                                   <input type="text" name="price" id="price" class="form-control" placeholder="Enter Event Price" value="{{old('timestarted')}}" >
                                       </div> --}}
                                       <div class="form-group">
                                        <label>Event Details</label>
                                        <textarea name="details" id="details" cols="30" rows="10">{{old('details')}}</textarea>
                                  </div> 
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-success">Add Event</button>
                                 </div>                          
                            </form>
                                </div>
                          
@endsection


@section('script')
     <script>
      CKEDITOR.replace('details');
      </script>

@endsection