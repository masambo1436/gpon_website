<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Newsarticle;
use App\Models\Partner;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\volunteer;
use App\Models\Team;
use App\Models\Donation;
use App\Models\Newsletter;
use App\Models\Serviceimage;
use App\Models\Faq;
use App\Models\Galleryimage;
use App\Models\Log;
use Carbon\Carbon;

use function Ramsey\Uuid\v1;

class AdminController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.dashboard')->with('v',Volunteer::where('status','new')->get())
                                      ->with('d',Donation::where('status','new')->get())
                                      ->with('p',Newsarticle::all())
                                      ->with('t',Team::all())
                                      ->with('users', User::all());
                                 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.createuser');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => ['required','string'],
            'username' => ['required','string'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

       User::create([
            'name' => $request->name,
            'username' => $request->username,
           'password' => Hash::make($request->password),
           'roles' => '0'
        ]);
          return redirect()->route('admin.user')->with('success','New Account Created Successfully');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $remove = User::findorfail($id);
        $remove->delete();
          return redirect()->route('admin.user')->with('success','Account Deleted Successfully');
    }

          
    public function make_admin($id){
       $admin = User::findorfail($id);
        $admin->roles = '1';
        $admin->save();

        return redirect()->route('admin.user')->with('success','Permission Changed Successfully');
    }

        
    public function not_admin($id){
   
       $admin = User::findorfail($id);
         $admin->roles = '0';
        $admin->save();

        return redirect()->route('admin.user')->with('success','Permission Changed Successfully');
    }

    public function adminuser(){
       $admin = User::all();
      return view('admin.users')->with('adusers', $admin);
        
    }
  

        //changepassword
      public function changepassword(Request $request){
           $this->validate($request, [
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
           User::where('id',$request->id)->update([
              'password' => Hash::make($request->password)
          ]);
       
           return redirect()->back()->with('success','Password Changed Successfully');
        }
// pages
    //change password view
    public function changepasswordpg(){
      return view('admin.changepassword');
   }
        public function newspage(){
           return view('admin.newsarticle.news')->with('allnews',Newsarticle::orderBy('created_at','DESC')->get());
        }
          public function partner(){
           return view('admin.partners.partner')->with('allpartners',Partner::all());
        }
//uploaded files with links
        public function upload(){
          return view('admin.upload.partner')->with('allpartners',Partner::orderBy('created_at','DESC')->get());
       }
        
          public function team(){
           return view('admin.team.index')->with('allteams',Team::all());
        }
      
           public function whatwedo(){
           return view('admin.services.whatwedo')->with('watwedo',Service::all());
        }
           public function gallery(){
           return view('admin.gallaries.gallery')->with('allgallery',Gallery::all());
        }
          public function volunter(){
           return view('admin.volunteer')->with('allvolunteers',volunteer::all());
        }
           public function donates(){
           return view('admin.donate')->with('alldonation',Donation::orderBy('created_at','DESC')->get())
                                       ->with('logs',Log::orderBy('created_at','DESC')->get());
        }


       // news posts
         public function newscreate() {
        
        return view('admin.newsarticle.create');
    }

        public function postnews(Request $request){
        $this->validate($request,[
         'title' => ['required','string'],        
         'description' => ['required','string'],
         'imagefile' => ['required','image'],
       ]);
      
       
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
       
        
       $posts = Newsarticle::create([           
           'title' => $request->title,
           'slug' => Str::slug($request->title),
           'postby' => Auth::user()->name,
           'description' => $request->description,
           'imagefile' => 'uploads/'.$imageNewName
       ]);

       return redirect()->route('admin.newspage')->with('success', 'News created Successfully');
        }


            public function newsedit($id) {
                    $posts = Newsarticle::findorfail($id);
                    return view('admin.newsarticle.edit')->with('post', $posts);
            }
 
            public function postnewsupdate(Request $request,$id){
                 $this->validate($request,[
         'title' => ['required','string'],
         'description' => ['required','string'],
      
       ]);

           $posts = Newsarticle::findorfail($id); 

       if ($request->hasFile('imagefile')) {
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $posts->imagefile = 'uploads/'.$imageNewName;
       }
        
           $posts->postby = Auth::user()->name;
           $posts->title = $request->title;
           $posts->slug = Str::slug($request->title);
           $posts->description = $request->description;
          
           $posts->save();
       return redirect()->route('admin.newspage')->with('success', 'News Updated Successfully');
            }
            
            public function newsdelete($id){

                  $posts = Newsarticle::findorfail($id);

        if (file_exists($posts->imagefile)) {
           unlink($posts->imagefile);
        }
        $posts->delete();
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->back()->with('success', 'News Deleted Successfully');

            }
  //end news post

  //what we do 
    public function addservices(Request $request){
        $this->validate($request,[
         'caption' => ['required','string'],        
         'message' => ['required','string'],
         'imagefile' => ['required','image'],
       ]);
      
       
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
       
        
       $posts = Service::create([           
           'caption' => $request->caption,
           'details' => $request->message,
           'imagefile' => 'uploads/'.$imageNewName
       ]);
       
      //   if($request->images){
      //        $imagePathmul = $request->file('images');
      //        foreach($imagePathmul as $valueimg){
      //     $imagemultiNewName = time()."_".$valueimg->getClientOriginalName();
      //        $valueimg->move('uploads', $imagemultiNewName);
            
      //       Serviceimage::create([
      //         'service_id' =>   $posts->id,
      //         'images' => 'uploads/'.$imagemultiNewName
      //     ]);
      // }
      //   }

       return redirect()->route('admin.whatwedo')->with('success', 'Record created Successfully');
        }


          //edit service
            public function servicesedit($id) {
                    $services = Service::findorfail($id);
                    return view('admin.services.edit')->with('ser', $services);
            }
 
            //update service
            public function serviceupdate(Request $request,$id){
                 $this->validate($request,[
         'caption' => ['required','string'],
         'message' => ['required','string'],
      
       ]);

           $service = Service::findorfail($id); 

       if ($request->hasFile('imagefile')) {
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $service->imagefile = 'uploads/'.$imageNewName;
       }
        
           $service->caption = $request->caption;
           $service->details = $request->message;
           $service->save();
           
      //      if($request->images){
      //        $imagePathmul = $request->file('images');
      //        foreach($imagePathmul as $valueimg){
      //     $imagemultiNewName = time()."_".$valueimg->getClientOriginalName();
      //        $valueimg->move('uploads', $imagemultiNewName);
            
      //       Serviceimage::create([
      //         'service_id' =>   $id,
      //         'images' => 'uploads/'.$imagemultiNewName
      //     ]);
      // }
      //   }
       return redirect()->route('admin.whatwedo')->with('success', 'Record Updated Successfully');
            }
            
            //delete service
            public function servicedelete($id){

                  $serv = Service::findorfail($id); 

        if (file_exists($serv->imagefile)) {
           unlink($serv->imagefile);
        }
        $serv->delete();
       // Serviceimage::where('service_id',$id)->delete();
          
                
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->route('admin.whatwedo')->with('success', 'Record Deleted Successfully');

            }
            
            //delete service images
            public function deleteservicesimg($id){
                 $servimg = Serviceimage::findorfail($id);
                    if (file_exists($servimg->images)) {
                   unlink($servimg->images);
                }
                 $servimg->delete();
                 return redirect()->back();
            }



            //partners
            public function addpartner(Request $request){
        $this->validate($request,[
         'name' => ['required','string'],        
         'imagefile' => ['required','image'],
       ]);
      
       
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
       
        
       $posts = Partner::create([           
           'name' => $request->name,
           'imagefile' => 'uploads/'.$imageNewName
       ]);

       return redirect()->route('admin.partner')->with('success', 'Record created Successfully');
        }


          //edit partners
            public function partneredit($id) {
                    $partners = Partner::findorfail($id);
                    return view('admin.partners.edit')->with('pat', $partners);
            }

             //update partners
             
            public function partnerupdate(Request $request,$id){
                 $this->validate($request,[
         'name' => ['required','string'],      
       ]);

           $parts = Partner::findorfail($id); 

       if ($request->hasFile('imagefile')) {
            $imagePath = $request->file('imagefile');
          $imageNewName = time().$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $parts->imagefile = 'uploads/'.$imageNewName;
       }
        
           $parts->name = $request->name;
          
          
           $parts->save();
       return redirect()->route('admin.partner')->with('success', 'Record Updated Successfully');
            }
            
            //delete partners
            public function partnerdelete($id){

                  $patdel = Partner::findorfail($id); 

        if (file_exists($patdel->imagefile)) {
           unlink($patdel->imagefile);
        }
        $patdel->delete();
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->route('admin.partner')->with('success', 'Record Deleted Successfully');

            }


  
            //gallery
            public function addgallery(Request $request){
        $this->validate($request,[
         'caption' => ['required','string'],        
         'thumbnail' => ['required'],
       ]);
      
       $gal = Gallery::create([           
        'caption' => $request->caption,
        ]);
          if($request->thumbnail){
              $imagePath = $request->file('thumbnail');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
       
               Gallery::where('id',$gal->id)->update([
                'thumbnail' => 'uploads/'.$imageNewName
               ]);    
          }

          if($request->images){
            $imagegPath = $request->file('images');
            foreach($imagegPath as $img){
        $imagegNewName = time()."_".$img->getClientOriginalName();
          $img->move('uploads', $imagegNewName);
     
             Galleryimage::create([
              'gallery_id' => $gal->id,
              'images' => 'uploads/'.$imagegNewName
             ]);
            }
        }
         

       return redirect()->route('admin.gallery')->with('success', 'Record created Successfully');
        }

        public function galleryimages(Request $request){
          $imagegPath = $request->file('images');
          foreach($imagegPath as $img){
            $imagegNewName = time()."_".$img->getClientOriginalName();
              $img->move('uploads', $imagegNewName);
        
                Galleryimage::create([
                  'gallery_id' => $request->gid,
                  'images' => 'uploads/'.$imagegNewName
                ]);
             }
             return redirect()->route('admin.gallery')->with('success', 'Images Added Successfully');
        }



          //edit gallery
      public function galleryedit($id) {
              $gal = Gallery::findorfail($id);
              return view('admin.gallaries.edit')->with('galle', $gal);
      }

     //update gallery
    public function galleryupdate(Request $request,$id){
            $this->validate($request,[
         'caption' => ['required','string'],      
       ]);

           $galleries = Gallery::findorfail($id); 

       if ($request->hasFile('thumbnail')) {
               unlink($galleries->thumbnail);
            $imagePath = $request->file('thumbnail');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $galleries->thumbnail = 'uploads/'.$imageNewName;
       }
        
       if($request->images){
        $imagegPath = $request->file('images');
        foreach($imagegPath as $img){
    $imagegNewName = time()."_".$img->getClientOriginalName();
      $img->move('uploads', $imagegNewName);
 
         Galleryimage::create([
          'gallery_id' => $id,
          'images' => 'uploads/'.$imagegNewName
         ]);
        }
    }
           $galleries->caption = $request->caption;
           $galleries->save();
       return redirect()->route('admin.gallery')->with('success', 'Record Updated Successfully');
            }
            
     //delete all gallery
     public function gallerydelete($id){
        $galdel = Gallery::findorfail($id); 
        $gims = Galleryimage::where('gallery_id',$id)->get();
        if (file_exists($galdel->thumbnail)) {
           unlink($galdel->thumbnail);
        }
        foreach ($gims  as $value) {
          if (file_exists($value->images)) {
              unlink($value->images);
          }
     }
       
        $galdel->delete();
        Galleryimage::where('gallery_id',$id)->delete();
         return redirect()->route('admin.gallery')->with('success', 'Record Deleted Successfully');

     }

     public function gdelete($id){
      $gim = Galleryimage::findorfail($id);
      if (file_exists($gim->images)) {
        unlink($gim->images);
     }
      $gim->delete();
       return redirect()->back()->with('success', 'Image Removed');

   }
 

      public function showvolunteer($id){
        $von = Volunteer::findorfail($id);
          $von->status = 'seen';
            $von->save();
          return view('admin.showvolunteerdetails')->with('shvolun',$von);
      }

          public function showdonate($id){
            $don = Donation::findorfail($id);
            $don->status = 'seen';
            $don->save();
          return view('admin.showdonationdetails')->with('shdonate',$don);
      }

     public function sendmailvoldon(Request $request){
             Mail::send('mailsend.mail',[
        'msg' => $request->message
        ],function($senddona)use($request){
           $senddona->from('no-reply@goalprime.org','Goal Prime');
           $senddona->to($request->email);
           $senddona->subject($request->subject);
        });

         return back()->with('success', 'Mail Sent Successfully');
        }
            

             //newsletter 
        public function managenewsletter(){
            return view('admin.newsletter')->with('adnews',Newsletter::all()); 
        }
        public function deletenewsletter($id){
              $subcribedel = Newsletter::findorfail($id);
              $subcribedel->delete();

              return redirect()->route('newslet')->with('success','Subcriber Deleted Successfully');
        }
        //show send broadcast message
        public function showbroadcast(){
           
            return view('admin.sendbroadcast')->with('allemail', Newsletter::all());
        }
        
 //send broadcast message 
        public function sendbroadcast(Request $request){
              $this->validate($request, [
            'subject' => ['required', 'string'],
            'message' => ['required','string']
        ]);

         
                  Mail::send(['html' => 'mailsend.mail'],[
                    'msg' => $request->message
                    ],function($subc)use($request){
                    $subc->from('no-reply@goalprime.org','Goal Prime'); 
                      foreach ($request->email as $emails) {                
                    $subc->to(explode(',',$emails));   
                      }                 
                    $subc->subject($request->subject);
                  });
                
              return redirect()->route('newslet')->with('success','Broadcast Message Sent Successfully');
        }
        
         //team
            public function addteam(Request $request){
        $this->validate($request,[
         'name' => ['required','string'],  
          'position' => ['required','string'], 
         'file' => ['required','image'],
         'details' => ['required','string'],
       ]);
      
       
            $imagePath = $request->file('file');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
       
        
          Team::create([           
           'name' => $request->name,
           'position' => $request->position,
           'file' => 'uploads/'.$imageNewName,
           'details' => $request->details,
           'fbook' => $request->facebook,
           'instagram' => $request->instagram,
           'twitter' => $request->twitter,
           'linkedin' => $request->linkedin
       ]);

       return redirect()->route('admin.team')->with('success', 'Record created Successfully');
        }


          //edit tem
            public function teamedit($id) {
                    $tams = Team::findorfail($id);
                    return view('admin.team.edit')->with('tm', $tams);
            }

             //update team
             
            public function teamupdate(Request $request,$id){
                 $this->validate($request,[
         'name' => ['required','string'],   
          'position' => ['required','string'], 
          'details' => ['required','string'], 
       ]);

           $tms = Team::findorfail($id); 

       if ($request->hasFile('file')) {
            $imagePath = $request->file('file');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $tms->file = 'uploads/'.$imageNewName;
       }
        
           $tms->name = $request->name;
            $tms->position = $request->position;
            $tms->details = $request->details;
            $tms->fbook = $request->facebook;
            $tms->twitter = $request->twitter;
            $tms->instagram = $request->instagram;
            $tms->linkedin = $request->linkedin;
           $tms->save();
           
       return redirect()->route('admin.team')->with('success', 'Record Updated Successfully');
            }
            
            //delete team
            public function teamdelete($id){

                  $tmdel = Team::findorfail($id); 

        if (file_exists($tmdel->file)) {
           unlink($tmdel->file);
        }
        $tmdel->delete();
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->route('admin.team')->with('success', 'Record Deleted Successfully');

            }

             //faq
     public function faqpage(){
      return view('admin.faq.index')->with('faqlist',Faq::all());
                                                                  
    }
    public function addfaq(Request $request){
        $this->validate($request,[
         'name' => ['required','string'],        
         'body' => ['required','string'],
       ]);
          
       $posts = Faq::create([           
           'name' => $request->name,
           'body' => $request->body,  
           'faqid' => Str::random(5),
       ]);

       return redirect()->route('admin.faq')->with('success', 'Record created Successfully');
        }

        public function faqedit($id){
          return view('admin.faq.edit')->with('edfq',Faq::findorfail($id));
                                          
        }

           //update faq
            public function faqupdate(Request $request,$id){
                 $this->validate($request,[
         'name' => ['required','string'],
         'body' => ['required','string'],
      
       ]);

           $fq = Faq::findorfail($id); 
        
           $fq->name = $request->name;
           $fq->body = $request->body;
          
           $fq->save();
       return redirect()->route('admin.faq')->with('success', 'Record Updated Successfully');
            }
            
            //delete faq
            public function faqdelete($id){

                  $faqdel = Faq::findorfail($id); 
        $faqdel->delete();
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->route('admin.faq')->with('success', 'Record Deleted Successfully');

            }

    public function send_reminder_message(Request $r){
      $this->validate($r, [
        'subject' => ['required', 'string'],
        'message' => ['required','string']
    ]);

    Log::create([
      'last_date_sent' => Carbon::now(),
      'reminder_type' => $r->reminder
    ]);
            Mail::send(['html' => 'mailsend.mail'],[
              'msg' => $r->message
              ],function($subc)use($r){
              $subc->from('no-reply@goalprime.org','Goal Prime'); 
                foreach ($r->email as $emails) {                
              $subc->to(explode(',',$emails));   
                }                 
              $subc->subject($r->subject);
            }); 
          return redirect()->route('admin.donation')->with('success','Reminder Sent Successfully');
    }

    public function donatesmail(){
      $getemails = Donation::where('duration',request()->options)->select('email')->get();
       return view('admin.sendremindermsg')->with('allemails',$getemails);
    }

    
}//end of class
