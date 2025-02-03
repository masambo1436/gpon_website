@extends('layouts.forntend')
@section('title')
GOALPrime Nigeria - A Better Humanity is Possible
@endsection
@section('fcontent')

    <main>

        <!--slider-area start-->
           <div class="slider-area pos-rel">
            <div class="slider-active">
                <div class="single-slider slider-height pos-rel d-flex align-items-center"
                    style="background-image: url(assets/img/slider/s2.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7">
                                <div class="slider__content text-left">
                                    
                                <h1 class="main-title mb-8 wow fadeInUp2 animated" data-wow-delay=".1s">
                                   MILLION OF CHILDREN IN NIGERIA ARE IN DANGER. THEY NEED YOUR SUPPORT.
                            </h1>
                                        <ul class="btn-list wow fadeInUp2 animated" data-wow-delay=".3s">
                                            <li><a class="theme_btn theme_btn_bg" href="about.php">Learn more <span><i class="fas fa-heart"></i></span></a>
                                            </li>
                                           
                                        </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
        <!--slider-area end-->

        <!--donation-form-area start-->
        <section class="donation-form-area-02 grey-bg2 pt-5 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12">
                        <div class="donation-form-left">
                            <form action="{{route('savedonate')}}" method="post" class="donate-btn pos-rel" id="makedonation">
                                @csrf
                                <div class="donar-information donation-form white-bg mb-7 wow fadeInUp2 animated" data-wow-delay='.1s'>
                                    <div class="section-title text-left mb-12">
                                        
                                        <h2>Personal Information</h2>
                                    </div>
                                    @include('includes.messages')
                                    
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="name" id="name" class="form-control" autocomplete="off" required placeholder="Your Name">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="phone" id="phone" class="form-control" autocomplete="off" required placeholder="Your Phone">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="email" id="email" class="form-control" autocomplete="off"  required placeholder="Email Address">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="select-area mb-2">
                                                    <select name="country" id="country" required autocomplete="off">
                                                        <option value="">Select a Country</option>
                                                        @foreach ($counrts as $item)
                                                        <option style="overflow-y:scroll" value="{{$item->name}}">{{$item->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="city" id="city" class="form-control" autocomplete="off" required placeholder="Your Location/ City">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="zipcode" id="zipcode" class="form-control" autocomplete="off" required placeholder="Zip Code">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="state" id="state" class="form-control" autocomplete="off" required placeholder="State">
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input-area mb-2">
                                                    <input type="text" name="profession" id="profession" class="form-control" autocomplete="off"  placeholder="Profession">
                                                </div>
                                            </div>
                                        </div>
                                
                                </div>
                                <div class="doante-select-area donate-select-area-04 mb-7 text-center white-bg wow fadeInUp2 animated"
                                    data-wow-delay='.1s'>
                                    @if (empty($_GET['donateto']))
                                    <div class="section-title text-left mb-12">
                                    
                                        <h2>Support a cause</h2>
                                    </div>
                                    <div class="select-area mb-2">
                                        <select name="project" id="podje">
                                            <option value="Select Fund">Select a project</option>
                                            @foreach ($allproj as $item)
                                                <option value="{{$item->title}}">{{$item->title}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    @endif
                                    <div class="select-area mb-2">
                                        <select name="duration" id="dur" autocomplete="off" required>
                                            <option value="">Donation Type</option>
                                            <option value="one off">One off</option>
                                            <option value="monthly">Monthly</option>
                                            <option value="quarterly">Quarterly</option>
                                            <option value="yearly">Yearly</option>
                                        
                                        </select>
                                    </div>
                                    <div class="donate-cart pos-rel mb-2">
                                        <div class="input-area mb-2">
                                            <input type="number" name="amount" id="amount" placeholder="Amount eg:5000" autocomplete="off" class="form-control" value="">
                                        </div>
                                        {{-- <div class="plus-minus">
                                            <div class="cart inc"><i class="far fa-chevron-left"></i></div>
                                            <div class="cart dec"><i class="far fa-chevron-right"></i></div>
                                        </div> --}}
                                    </div>
                                    <input type="hidden" name="support_type" id="" value="{{!empty($_GET['donateto']) ? $_GET['donateto'] : " "}}">
                                    <div class="input-donate mb-2">
                                        <button type="button" class="cont_btn" onclick="document.getElementById('amount').value='500'">₦500</button>
                                        <button type="button" class="cont_btn" onclick="document.getElementById('amount').value='1000'">₦1000</button>
                                        <button type="button" class="cont_btn" onclick="document.getElementById('amount').value='2000'">₦2000</button>
                                        <button type="button" class="cont_btn" onclick="document.getElementById('amount').value='5000'">₦5000</button>
                                        <button type="button" class="cont_btn" onclick="document.getElementById('amount').value='10000'">₦10000</button>
                                    
                                    </div>
                                    <img src="{{asset('assets/img/ajax-loader.gif')}}" id="pstatus" style="display:none" width="16" height="16" alt="loading...">
                                    <button type="button"  class="theme_btn theme_btn_bg pstack " onclick="payWithPaystack()">Donate With Paystack <span><i class="fas fa-heart"></i></span></button>
                                    <button type="button"  class="theme_btn theme_btn_bg pflut " onclick="payWithflutterwave()">Donate With Flutterwave <span><i class="fas fa-heart"></i></span></button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="details-right-area">
                            <div class="widget white-bg mb-7">
                                <div class="widget-post">
                                    @if (count($projs)>0)
                                    <h3 class="cases-title mb-7">Project</h3>
                                    @foreach ($projs as $item)
                                    <div class="post d-flex align-items-center mb-5">
                                        <div class="post__thumb mr-5">
                                            <img src="assets/img/cases/20.jpg" alt="">
                                        </div>
                                        <div class="post__content">
                                            <h5><a href="blog-details.php">Help Us For Mineral
                                                    Water Provides</a></h5>
                                            <a class="view_btn" href="blog-details.php">view Details</a>
                                        </div>
                                    </div>
                                    @endforeach 
                                    @endif
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--donation-form-area end-->
        <?php 
        $tref = substr(mt_rand('0',time()),'0','7');
        ?>
    </main>
    <script>
        function payWithflutterwave(){
               if($("#name").val() == '' || $("#phone").val() == '' || $("#email").val() == '' || $("#country").val() == '' || $("#amount").val() == ''  || $("#city").val() == '' || $("#state").val() == '' || $("#zipcode").val() == '' || $("#dur").val() == ''){
                alert('Sorry Some fields are empty')
               }else{
                $("#pstatus").show();
          $(".pflut").attr('disabled',true); 
            FlutterwaveCheckout({
          public_key: "FLWPUBK_TEST-bdc16a076af8e5f87049db8be5626c03-X",
          tx_ref: "RX1_{{$tref}}",
          amount: document.getElementById("amount").value,
          currency: "NGN",
          country: "NG",
          payment_options: "card, banktransfer, ussd",
         
          customer: {
            email: document.getElementById("email").value,
            phone_number: document.getElementById("phone").value,
            name:document.getElementById("name").value,
          },
          callback: function (data) {
            let trns = data.transaction_id;
            const form = document.getElementById("makedonation");
             form.submit();
            console.log(data);
          },
          onclose: function() {
            // close modal
            $("#pstatus").hide();
          $(".pflut").attr('disabled',false); 
          },
          customizations: {
            title: "Goalprime",
            description: "Donation",
            logo: "{{asset('assets/img/logo/header_logo_one.png')}}",
          },
        });
          
        }
        }//flutterwave
    </script>
    <script>
        
        var paymentForm = document.getElementById("makedonation");
        paymentForm.addEventListener('submit', payWithPaystack, false);
        function payWithPaystack() {
            if($("#name").val() == '' || $("#phone").val() == '' || $("#email").val() == '' || $("#country").val() == '' || $("#amount").val() == ''  || $("#city").val() == '' || $("#state").val() == '' || $("#zipcode").val() == '' || $("#dur").val() == ''){
                alert('Sorry Some fields are empty')
               }else{
          $("#pstatus").show();
          $(".pstack").attr('disabled',true);  
            var handler = PaystackPop.setup({
            
            key: "pk_test_1e6d7eee29170399ea8237bef435dcdc8feb2f7f", // Replace with your public key
            
            email: document.getElementById("email").value,
            amount: document.getElementById('amount').value * 100, // the amount value is multiplied by 100 to convert to the lowest currency unit
            
            currency: 'NGN', // Use GHS for Ghana Cedis or USD for US Dollars
            
            ref: (new Date().getTime()).toString(36) * Math.random(), // Replace with a reference you generated
            
            callback: function(response) {
            
                //this happens after the payment is completed successfully
            
                var reference = response.reference;
            
                alert('Payment complete! Reference: ' + reference);
                const form = document.getElementById("makedonation");
                form.submit();
                // Make an AJAX call to your server with the reference to verify the transaction
            
            },
            
            onClose: function() {
            
                alert('Transaction was not completed, window closed.');
                $("#pstatus").hide();
                $(".pstack").attr('disabled',false);  
            },
            
            });
    
            handler.openIframe();
    
             }
        }//paystack
    </script>
@endsection