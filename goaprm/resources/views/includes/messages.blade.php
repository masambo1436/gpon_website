@if ($errors->any())
    <div class="alert alert-danger alert-dismissible" id="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="close">x</button>
      @foreach ($errors->all() as $error)
          <strong>{{$error}}</strong>
      @endforeach
    </div>
@endif


@if (session()->has('success'))
<div class="alert alert-success alert-dismissible" id="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="close">x</button>
    <strong>{{session()->get('success')}}</strong>
</div>
    
@endif

@if (session()->has('error'))
<div class="alert alert-danger alert-dismissible" id="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="close">x</button>
    <strong>{{session()->get('error')}}</strong>
</div>
    
@endif

@if (session()->has('info'))
<div class="alert alert-info alert-dismissible" id="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="close">x</button>
    <strong>{{session()->get('info')}}</strong>
</div>
    
@endif