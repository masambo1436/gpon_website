@extends('layouts.admin')
@section('title')
    Donation 
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Donation Details</h1>
       
      </div>
       <div class="row">
  <div class="col-md-7">
         <div class="table-responsive">
        <table class="table table-striped table-sm" id="volunte">
         
          <tbody>
         
                <tr>
                <td>FullName</td><td>{{$shdonate->name}}</td></tr>
                <tr><td>Phone Number</td><td>{{$shdonate->phone}}</td></tr>
                <tr><td>Email</td><td>{{$shdonate->email}}</td></tr>
                <tr><td>City/State</td><td>{{$shdonate->city." / ".$shdonate->state}}</td></tr>
                <tr><td>Country</td><td>{{$shdonate->country}}</td></tr>
                <tr><td>Zip Code</td><td>{{$shdonate->zip_code}}</td></tr>
                <tr><td>Donation For</td><td>{{$shdonate->project}}</td></tr>
                <tr><td>Duration</td><td>{{$shdonate->duration}}</td></tr>
                <tr><td>Profession</td><td>{{$shdonate->profession}}</td></tr>
                <tr><td>Amount</td><td>{{number_format($shdonate->amount)}}</td></tr>
                
          </tbody>
        </table>       
      </div>
       <div class="row justify-content-center">
             <a href="{{route('admin.donation')}}" class="btn btn-secondary">Back</a>&nbsp;
            <button type="button" class="btn btn-info" id="showmail">Send Mail</button>
        </div>
         </div>
         <div class="col-md-5">
            @include('includes.messages')
             <div  id="mail2" style="display: none">
                 
              <form action="{{route('sendmail')}}" method="post">
                @csrf
              <input type="hidden" name="email" id="" value="{{$shdonate->email}}">          
                <div class="form-group">
                                  <label for="title">Subject</label>
                                <input type="text" name="subject" id="title" class="form-control"  value="{{old('subject')}}">
                                </div>
                     
                       <div class="form-group">
                        <label for="featured_image">Compose Message</label>
                       <textarea name="message" id="" cols="30" rows="10">{{old('message')}}</textarea>
                    </div>
                  
       <div class="form-group">
         <button type="submit" class="btn btn-success btn-block">Send</button>
    </div>
        </form>
             </div>
         </div>
 </div>
@endsection

@section('script')
  <script>
      CKEDITOR.replace('message');
      </script>
      <script>
          $(function() {
              $("#showmail").click(function(){
              $("#mail2").toggle().fadeIn();
              });
          });
      </script>
@endsection