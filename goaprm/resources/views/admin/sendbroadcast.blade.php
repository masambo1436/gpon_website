@extends('layouts.admin')
@section('title')
    Subcribers
@endsection
@section('maincontent')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Send Broadcast Message</h1>
       
      </div>
       <div class="row justify-content-center">
  <div class="col-md-7">
@include('includes.messages')
         <form action="{{route('send.msg')}}" method="post">
           @csrf 
         @foreach ($allemail as $mail)
            <input type="hidden" name="email[]" id="email" class="form-control" value="{{$mail->email}}">     
                @endforeach
                        <div class="form-group">
                            <input type="text" name="subject" id="subject" class="form-control" placeholder="Enter Subject">     
                        </div>                          
                        <div class="form-group">
                            <textarea name="message" id="message" cols="30" rows="10"></textarea>
                        </div> 
                                                            
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">Send Message</button>
                    </div>                          
                </form>
         </div>
 </div>
@endsection

@section('script')
  <script>
      CKEDITOR.replace('message');
      </script>
@endsection

 