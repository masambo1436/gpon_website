@extends('layouts.admin')
@section('title')
Reminder Message
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Send Reminder Message</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('sendreminder')}}" method="post">
           @csrf 
           @if (count($allemails)>0)
           @foreach ($allemails as $mail)
           <input type="hidden" name="email[]" id="email" class="form-control" value="{{$mail->email}}">     
               @endforeach
                       <div class="form-group">
                           <input type="text" name="subject" id="subject" class="form-control" placeholder="Enter Subject">     
                       </div>                          
                       <div class="form-group">
                           <textarea name="message" id="message" cols="30" rows="10"></textarea>
                       </div>  
                       <input type="hidden" name="reminder" value="{{!empty($_GET['options']) ? $_GET['options'] : ''}}">                           
                       <div class="form-group">
                           <button type="submit" class="btn btn-success">Send Message</button>
                           <a href="{{route('admin.donation')}}" class="btn btn-danger">Back</a>&nbsp;
                   </div>           
           @else
               <div class="alert alert-info">No Emails Found For Selected Option</div>
               <a href="{{route('admin.donation')}}" class="btn btn-danger">Back</a>
           @endif
              </form>
         </div>
 </div>
@endsection

@section('script')
  <script>
      CKEDITOR.replace('message');
      </script>
@endsection

      