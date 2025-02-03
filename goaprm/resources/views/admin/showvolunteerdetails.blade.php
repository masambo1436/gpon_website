@extends('layouts.admin')
@section('title')
    Volunteer 
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Volunteer Details</h1>
       
      </div>
       <div class="row">
  <div class="col-md-7">
        <div class="table-responsive">
        <table class="table table-striped table-sm" id="volunte">
         
          <tbody>
         
                <tr>
                <td>FullName</td><td>{{$shvolun->name}}</td></tr>
                <tr><td>Phone Number</td><td>{{$shvolun->phone}}</td></tr>
                <tr><td>Email</td><td>{{$shvolun->email}}</td></tr>
                <tr><td>Gender</td><td>{{$shvolun->gender}}</td></tr>
                <tr><td>Date of Birth</td><td>{{$shvolun->dob}}</td></tr>
                <tr><td>Address</td><td>{{$shvolun->address}}</td></tr>
                <tr><td>City/State</td><td>{{$shvolun->city." / ".$shvolun->state}}</td></tr>
                <tr><td>Skills</td><td>{{$shvolun->skills}}</td></tr>
                <tr><td>Work Experience</td><td>{{$shvolun->work}}year(s)</td></tr>
             
          </tbody>
        </table>      
      </div>
      <p>Cover Letter</p>
    <p class="text-justify border p-2">{{$shvolun->coverletter}}</p>
      <div class="row justify-content-center">
             <a href="{{route('admin.volunteer')}}" class="btn btn-secondary">Back</a>&nbsp;
            <button type="button" class="btn btn-info" id="vmail">Send Mail</button>
        </div>
         </div>
         <div class="col-md-5">
             @include('includes.messages')

            <div id="showmone" style="display: none">
                  <form action="{{route('sendmail')}}" method="post">
                @csrf
                       <input type="hidden" name="email" id="" value="{{$shvolun->email}}">          
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
              $("#vmail").click(function(){
              $("#showmone").toggle().fadeIn();
              });
          });
      </script>

@endsection