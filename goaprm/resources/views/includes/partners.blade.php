<section class="brand-area grey-bg2 pt-50">
    <div class="container custom-container-03">
        <div class="row brand-active pb-60">
           
           @foreach ($parts as $item)
           <div class="col-xl-2">
            <div class="brand-slide text-center wow fadeInUp animated" data-wow-delay='.1s'>
                <div class="brand-img">
                    <a href="#"><img src="{{asset($item->imagefile)}}" alt=""></a>
                </div>
            </div>
        </div>
           @endforeach
            
        </div>
    </div>
</section>