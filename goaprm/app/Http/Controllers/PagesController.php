<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use App\Models\Newsarticle;
use App\Models\Partner;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Comment;
use App\Models\Pagesetting;
use App\Models\Team;
use App\Models\Volunteer;
use App\Models\Donation;
use App\Models\Event;
use App\Models\Faq;
use App\Models\Gprimetv;
use App\Models\Newsletter;
use App\Models\Program;
use App\Models\Project;
use App\Models\Research;
use App\Models\Journal;
use App\Models\Slide;
use App\Models\Sponsor;
use App\Models\Testimonial;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;

class PagesController extends Controller
{
    public function index(){
        return view('welcome')->with('watwedo',Service::all())
                             ->with('parts',Partner::all())
                             ->with('watwe',Service::paginate(3))
                             ->with('exchg',Pagesetting::where('caption','exchgr')->first())
                             ->with('glivevideo',Gprimetv::where('status','1')->orderBy('id','DESC')->take(1)->get())
                             ->with('events',Event::where('status','0')->orderBy('id','DESC')->take(3)->get())
                             ->with('vs',Pagesetting::where('caption','vision')->first())
                             ->with('ms',Pagesetting::where('caption','mission')->first())
                             ->with('testi',Testimonial::orderBy('created_at','DESC')->get())
                              ->with('galleries', Gallery::orderBy('id', 'DESC')->paginate(6))
                              ->with('cont',Pagesetting::where('caption','contact page')->first())
                              ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                              ->with('slides', Slide::where('status',1)->orderBy('id','DESC')->get())
                              ->with('prgs', Program::orderBy('id', 'ASC')->take(3)->get())
                              ->with('projs', Project::orderBy('id', 'DESC')->take(3)->get());
    }
    public function about(){
        return view('about')->with('abt',Pagesetting::where('caption','about page')->first())
                            ->with('vs',Pagesetting::where('caption','vision')->first())
                            ->with('obj',Pagesetting::where('caption','obj page')->first())
                            ->with('watwe',Service::take(4))
                            ->with('parts',Partner::all())
                            ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                            ->with('cont',Pagesetting::where('caption','contact page')->first())
                            ->with('ms',Pagesetting::where('caption','mission')->first());
    }
    public function contact(){
        return view('contact')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }
    public function abuja(){
        return view('abuja')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }

    public function adamawa(){
        return view('adamawa')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }

    public function benue(){
        return view('benue')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }

    public function borno(){
        return view('borno')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }
    public function yobe(){
        return view('yobe')->with('cont',Pagesetting::where('caption','contact page')->first())
                             ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                             ->with('parts',Partner::all())
                             ->with('watwedo',Service::all());
    }
  
    public function watwedo(){
        return view('services')->with('cont',Pagesetting::where('caption','contact page')->first())
                                  ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->get());                           
    }
    public function underconstruction(){
        return view('underconstruction')->with('cont',Pagesetting::where('caption','contact page')->first())
                                  ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->get());                           
    }
    public function watwedosingle($id){
        return view('service-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                    ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                  ->with('sinchild',Service::findorfail($id));
    }

    public function volunteers(){
        return view('volunteer')->with('cont',Pagesetting::where('caption','contact page')->first())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }

    public function donation(){
        return view('donation')->with('cont',Pagesetting::where('caption','contact page')->first())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                ->with('projs', Project::orderBy('id', 'DESC')->take(5)->get())
                                ->with('allproj', Project::orderBy('id', 'DESC')->get())
                                ->with('counrts', DB::table("countries")->select('name')->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }
   
    public function one_dollar_details(){
        return view('one-dollar-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                ->with('parts',Partner::all())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }

    public function research(){
        return view('report')->with('cont',Pagesetting::where('caption','contact page')->first())
                                ->with('resh', Research::orderBy('id', 'DESC')->take(3)->get())
                                ->with('reshers', Research::orderBy('id', 'DESC')->paginate(6))
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(5)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }

    public function research_detail($details){
        return view('report-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                 ->with('sinresh', Research::where('slug', $details)->first())
                                 ->with('resh', Research::orderBy('id', 'DESC')->where('slug','!=',$details)->take(5)->get())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }

    public function journal_detail($details){
        return view('journal-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                 ->with('sinresh', Journal::where('slug', $details)->first())
                                 ->with('resh', Journal::orderBy('id', 'DESC')->where('slug','!=',$details)->take(5)->get())
                                ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                               ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
    }
     //Fetch youtube channel video
     public function goalprimetv(){
        /*    $apikey = env('YOUTUBE_KEY');
            $base_url = env('BASE_URL');
            $part = 'snippet';
            $country = 'NG';
            $type = 'video';
            $order = 'date';
            $channel_id = env('CHANNEL_ID');
            $maxResult = 100;
            $api_url = $base_url."part=$part&channelId=".$channel_id."&maxResults=$maxResult&order=$order&regionCode=$country&type=$type&key=$apikey";
            $response = Http::get($api_url);
           // echo "<pre>";
            //$playlist_data = json_decode($response,true);
            //$pageInfo = (array)$playlist_data['pageInfo'];
            //$pageCount = $pageInfo['totalResult'];
           // $items = $response->json('items');
            //$title = $response->json('items.0.snippet.title');
            $playlist_data = (array)json_decode($response);
    $pageInfo =(array)$playlist_data['pageInfo'];
    $pageCount =$pageInfo['totalResults'];
            //$link = $response->json('items.0.id.videoId');
           // $completelink = 'https://www.youtube.com/embed/'.$link;
           // $totalResult = $response->json('pageInfo.totalResults');
        
    
            if($pageCount > 0){
                $items = (array)$playlist_data['items'];
                //$results = $response->json('items');
    
                foreach($items as $key => $counter) {
                    $video_data = (array)$items[$key];
                    $playlist_id = (array)$video_data['id'];
                    $playlist_id2 = $video_data['id'];
                    $snippet = (array)$video_data['snippet'];
                    $title = $snippet['title'];
                    $link = $playlist_id['videoId'];
                    //$mydata2 = $mydata[$response->json('items.0.id.videoId')];
                    //$link= $response->json('items.0.id.videoId');
                    $completelink = 'https://www.youtube.com/embed/'.$link;
    
                 Gprimetv::updateOrCreate(
                    ['playlist_id'=>$playlist_id],
                     ['title'=>$title,
                     'link'=>$completelink
                    
                     ]);
              
                }
                
                }
                else
                {
    
                }
    
       
            //$items=(array)$playlist_data['items'];
            
        //     foreach($items as $key=> $counter)
        //     {
        //     //$videoid=()
        //    // $playlist_data = $response['id'];
        //    // $snippet = (array)$playlist_data['snippet'];
        //    // $title=$snippet['title'];
        //     }
    
           // https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCP0QDklktavgS-zr2m11FFg&maxResults=10&order=date&key=AIzaSyDNORgMXcwhADI3xC_H-FWlgxEV2mrtN84
    */
            return view('goalprime-tv')->with('cont',Pagesetting::where('caption','contact page')->first())
                                       ->with('glive',Gprimetv::where('status','1')->orderBy('created_at','DESC')->paginate(9))
                                      ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                   ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
        }
    
       /* public function goalprimetv(){
           $apikey = env('YOUTUBE_KEY');
            $base_url = env('BASE_URL');
            $part = 'snippet';
            $country = 'NG';
            $type = 'video';
            $order = 'date';
            $channel_id = env('CHANNEL_ID');
            $maxResult = 100;
            $api_url = $base_url."part=$part&channelId=".$channel_id."&maxResults=$maxResult&order=$order&regionCode=$country&type=$type&key=$apikey";
            $response = Http::get($api_url);
           // echo "<pre>";
            //$playlist_data = json_decode($response,true);
            //$pageInfo = (array)$playlist_data['pageInfo'];
            //$pageCount = $pageInfo['totalResult'];
           // $items = $response->json('items');
            //$title = $response->json('items.0.snippet.title');
            $playlist_data = (array)json_decode($response);
    $pageInfo =(array)$playlist_data['pageInfo'];
    $pageCount =$pageInfo['totalResults'];
            //$link = $response->json('items.0.id.videoId');
           // $completelink = 'https://www.youtube.com/embed/'.$link;
           // $totalResult = $response->json('pageInfo.totalResults');
        
    
            if($pageCount > 0){
                $items = (array)$playlist_data['items'];
                //$results = $response->json('items');
    
                foreach($items as $key => $counter) {
                    $video_data = (array)$items[$key];
                    $playlist_id = (array)$video_data['id'];
                    $playlist_id2 = $video_data['id'];
                    $snippet = (array)$video_data['snippet'];
                    $title = $snippet['title'];
                    $link = $playlist_id['videoId'];
                    //$mydata2 = $mydata[$response->json('items.0.id.videoId')];
                    //$link= $response->json('items.0.id.videoId');
                    $completelink = 'https://www.youtube.com/embed/'.$link;
    
                 Gprimetv::updateOrCreate(
                    ['playlist_id'=>$playlist_id],
                     ['title'=>$title,
                     'link'=>$completelink
                    
                     ]);
              
                }
                
                }
                else
                {
    
                }
    
       
            //$items=(array)$playlist_data['items'];
            
        //     foreach($items as $key=> $counter)
        //     {
        //     //$videoid=()
        //    // $playlist_data = $response['id'];
        //    // $snippet = (array)$playlist_data['snippet'];
        //    // $title=$snippet['title'];
        //     }
    
           // https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCP0QDklktavgS-zr2m11FFg&maxResults=10&order=date&key=AIzaSyDNORgMXcwhADI3xC_H-FWlgxEV2mrtN84
    
            return view('goalprime-tv',compact('response', 'link','pageCount'))->with('cont',Pagesetting::where('caption','contact page')->first())
                                       ->with('glive',Gprimetv::where('status','1')->orderBy('created_at','DESC')->paginate(9))
                                      ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                   ->with('watwedo',Service::orderBy('created_at','DESC')->paginate(6));                           
        } */
    

    public function project(){
        return view('project')->with('cont',Pagesetting::where('caption','contact page')->first())
                                  ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                  ->with('exchg',Pagesetting::where('caption','exchgr')->first())
                               ->with('projects',Project::orderBy('created_at','DESC')->paginate(9));                           
    }
    public function project_details($id){
        return view('project-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                  ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                  ->with('exchg',Pagesetting::where('caption','exchgr')->first())
                                  ->with('resh', Research::orderBy('id', 'DESC')->take(5)->get())
                               ->with('proj',Project::findorfail($id));                           
    }

    public function gallery(){
        return view('gallery')->with('cont',Pagesetting::where('caption','contact page')->first())
                                  ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                            ->with('galleries', Gallery::orderBy('id', 'DESC')->paginate(12));
    }
   

    public function galleryimages($id){
        return view('album-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                    ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                    ->with('galleries', Gallery::findorfail($id));
    }
   
    //event page
  public function evente(){
    $date = date("Y-m-d");
     return view('events')->with('evens',Event::where('status','0')->orderBy('id','DESC')->paginate(6))
                         ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                         ->with('upcom',Event::where('datefrom','!=', $date)->orderBy('id','DESC')->take(1)->get())
                         ->with('cont',Pagesetting::where('caption','contact page')->first());
                                       
 }
 public function singleente($id){
     return view('event-details')->with('siev',Event::findorfail($id))
                                   ->with('cont',Pagesetting::where('caption','contact page')->first())
                                   ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                   ->with('watwedo',Service::all());
 }

    public function news(){
        return view('spotlight')->with('allnews', Newsarticle::orderBy('id', 'DESC')->paginate(12))
                              ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                              ->with('testi',Testimonial::orderBy('created_at','DESC')->get())
                              ->with('evens',Event::where('status','0')->orderBy('id','DESC')->take(3)->get())
                           ->with('cont',Pagesetting::where('caption','contact page')->first())
                           ->with('watwedo',Service::all());
    }

    public function journal(){
        return view('journal')->with('allnews', Journal::orderBy('id', 'DESC')->paginate(12))
                              ->with('news', Journal::orderBy('id', 'DESC')->take(3)->get())
                              ->with('testi',Testimonial::orderBy('created_at','DESC')->get())
                              ->with('evens',Event::where('status','0')->orderBy('id','DESC')->take(3)->get())
                           ->with('cont',Pagesetting::where('caption','contact page')->first())
                           ->with('watwedo',Service::all());
    }
    public function newsdet($slug){
         $newsdetails = Newsarticle::where('slug',$slug)->first();
        return view('spotlight-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                                        ->with('recent', Newsarticle::orderBy('created_at', 'DESC')->take(4)->get())
                                        ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                                        ->with('single',$newsdetails)
                                    ->with('watwedo',Service::all());
    }

 
    public function faq(){
        return view('faq')->with('faqs',Faq::orderBy('created_at','DESC')->get())
                         ->with('exchg',Pagesetting::where('caption','exchgr')->first())
                         ->with('resh', Research::orderBy('id', 'DESC')->take(5)->get())
                         ->with('projs', Project::orderBy('id', 'DESC')->take(1)->get())
                           ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                          ->with('cont',Pagesetting::where('caption','contact page')->first());
                             
    }

    public function team(){
        return view('team')->with('cont',Pagesetting::where('caption','contact page')->first())
                           ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                           ->with('slider',Team::where('status',1)->orderBy('id','ASC')->get())
                           ->with('teams',Team::all());
    }
    public function team_details($id){
        return view('team-details')->with('cont',Pagesetting::where('caption','contact page')->first())
                           ->with('news', Newsarticle::orderBy('id', 'DESC')->take(3)->get())
                           ->with('team',Team::findorfail($id));
    }

    public function addcomments(Request $request){
          $this->validate($request,[
             'name' => ['required','string'],
             'email' => ['required', 'email'],
             'comment' => ['required'],
          ]);
            Comment::create([
               'name' => $request->name,
               'email' => $request->email,
               'newsarticle_id' => $request->newsarticle_id,
               'comment' => $request->comment
            ]);
            return redirect()->back()->with('success','comment successful');
    }

    public function sendcontactmail(Request $request){
        $this->validate($request,[
           'name' => ['required','string'],
           'email' => ['required','string','email'],
           'phone' => ['required','string'],
          'subject' => ['required','string'],
           'message' => ['required','string'],
        ]);

            Mail::send('mailsend.mail',[
        'msg' => $request->message."<br> phone: ".$request->phone
        ],function($contactmail)use($request){
           $contactmail->from($request->email,$request->name);
           $contactmail->to('info@goalprime.org');
           $contactmail->subject($request->subject);
        });

        return back()->with('success', 'Thank You for Contacting Us');
    }
    public function subcribers(Request $request){
         $this->validate($request,[
           'email' => ['required','string','email'],
         ]);
         Newsletter::create([
             'email' => $request->email,
         ]);
          return 'success';

    }

    public function savevolunteers(Request $request){
        $this->validate($request,[
            'name' => ['required','string'],
             'email' => ['required','string','email'],
              'phone' => ['required','string'],
             'dob' => ['required','string'],
             'gender' => ['required','string'],
             'grade' => ['required','string'],
              'address' => ['required','string'],
             'city' => ['required','string'],
                'state' => ['required','string'],
             'discipline' => ['required','string'],
                'skills' => ['required','string'],
             'work' => ['required','string'],
              'coverletter' => ['required','string'],
              'recaptcha' => ['required']
          ]);
          if ($request->hiddenrecaptcha != $request->recaptcha) {
              return back()->with('error', 'Sorry Invalid Recaptcha Code');
          }else {
               Volunteer::create([
               'name' => $request->name,
               'email' => $request->email,
               'phone' => $request->phone,
               'dob' => $request->dob,
               'gender' => $request->gender,
               'grade' => $request->grade,
               'address' => $request->address,
               'city' => $request->city,
               'state' => $request->state,
               'discipline' =>$request->discipline,
               'skills' => $request->skills,
               'work' => $request->work,
               'coverletter' => $request->coverletter,
               'status' => 'new'
           ]);
           $message = $request->name." just Volunteer via the Website";
             Mail::send('mailsend.mail',[
          'msg' => $message
          ],function($sendvolun)use($request){
             $sendvolun->from($request->email,$request->name);
             $sendvolun->to('info@goalprime.org');
             $sendvolun->subject('New Volunteer');
          });
  
           return back()->with('success', 'Successfully Registered');
  
          }

    }

    public function savedonation(Request $request){
           $this->validate($request,[
          'name' => ['required','string'],
           'email' => ['required','string','email'],
           'phone' => ['required'],
           'amount' => ['required','string'],    
        ]);
         
        $prj = empty($request->support_type) ? $request->project : $request->support_type;
            Donation::create([
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'country' => $request->country,
                'city' => $request->city,
                'state' => $request->state,
                'zip_code' => $request->zipcode,
                'profession' => $request->profession,
                'zipcode' => $request->zipcode,
                'project' => $request->project,
                'amount' => $request->amount,
                'duration' => $request->duration,
                'status' => 'new'
            ]);
             $message = "Dear ".$request->name."<br> Thank for donating to our foundation and to our course.<br> One of our agent will contact you for other information for you make the donation";
           Mail::send('mailsend.mail',[
        'msg' => $message
        ],function($senddona)use($request){
           $senddona->from('no-reply@goalprime.org','Goal Prime');
           $senddona->to($request->email);
           $senddona->subject('Thank you for Donating to our course');
        });

        Mail::send('mailsend.mail',[
            'msg' => $request->name." just filled a donation form via the Website"
            ],function($send)use($request){
               $send->from($request->email,$request->name);
               $send->to('info@goalprime.org');
               $send->subject('New Donation Entry');
            });

         return back()->with('success', 'Donation made successfull');
        
    }


public function attendance(Request $r){
    $this->validate($r,[
        'name' => ['required','string'],
        'phone' => ['required','string'],
        'email' => ['required','string','email'],
    ]);
      Attendance::create([
         'name' => $r->name,
         'phone' => $r->phone,
         'email' => $r->email,
         'event_id' => $r->eventid,
     ]);
    
          return 'success';
      }
 public function sponsor(Request $r){
        $this->validate($r,[
            'name' => ['required','string'],
            'phone' => ['required','string'],
            'email' => ['required','string','email'],
        ]);
         Sponsor::create([
             'name' => $r->name,
             'phone' => $r->phone,
             'email' => $r->email,
             'event_id' => $r->eventid,
         ]);
        
              return 'success';
          }
}
