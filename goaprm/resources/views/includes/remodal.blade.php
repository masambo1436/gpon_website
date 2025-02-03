
  <div id="donate-popup2" class="donate-popup">
        
    <div class="popup-overlay"></div>

    <div class="donate-form-area">
        <div class="donate-form-wrapper">
            <div class="close-donate theme-btn"><span class="flaticon-close"></span></div>
            <div class="sec-title text-center">
                <h1>Reservation</h1>
                <div class="text"></div>
            </div>
            <div class="alert" id="getmsg"></div>
            <form id="payme" class="donate-form default-form" method="POST">
                @csrf
               

                <h3>Event Information</h3>

                <div class="contact-form">
                    <div class="row clearfix">
                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <input type="text" name="name" class="form-control" placeholder="Enter Full Name" required value="{{old('name')}}">
                        </div>
                      </div>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <input type="text" name="phone"  class="form-control" placeholder="Enter Your Phone Number" required value="{{old('phone')}}">
                        </div>
                      </div>
                      <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <input type="email" name="email"  class="form-control" placeholder="Enter Your Email" required value="{{old('email')}}">
                        </div>
                      </div>
                        <input type="hidden" name="eventid"  id="eventid" value="">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group d-flex align-items-center justify-content-between">
                                <button class="theme-btn btn-style-one prc" type="submit"><span>Register</span></button>
                               
                            </div>
                        </div>  

                    </div>
                </div>
            </form>
        </div>
            
    </div>
</div>