<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Pagesetting;
use App\Models\User;
class PagesettingsController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }


    public function pageset(){
        return view('admin.pagesettings')->with('vis', Pagesetting::where('caption','vision')->first())
                                              ->with('mis', Pagesetting::where('caption','mission')->first())
                                           ->with('abt',Pagesetting::where('caption','about page')->first())
                                            ->with('obj',Pagesetting::where('caption','obj page')->first())
                                            ->with('exchg',Pagesetting::where('caption','exchgr')->first())
                                              ->with('cont',Pagesetting::where('caption','contact page')->first());
                                             
    }

    public function addpagesettings(Request $r){
        $caption1 = "about page";
        $caption2 = "contact page";
        $caption3 = "vision";
        $caption4 = "mission";
        $caption5 = "obj page";
        $caption6 = "exchgr";

        if (!empty($r->saveabout)) {
             $checkabt = Pagesetting::where('caption','about page')->first();
             if (empty($checkabt)) {
                  Pagesetting::create([
                'caption' => $caption1,
                 'content' => $r->content
            ]);
             } else {
                  Pagesetting::where('caption','about page')->update([
                'caption' => $caption1,
                 'content' => $r->content
            ]);
             }
             
            return redirect()->back()->with('success', 'Setting Saved');

        }elseif (!empty($r->savecontact)) {
            $checkcont = Pagesetting::where('caption','contact page')->first();
            if (empty($checkcont)) {                
               Pagesetting::create([
                'caption' => $caption2,
                 'email' => $r->email,
                 'phone' => $r->phone,
                 'address' => $r->address,
                 'location' => $r->location
            ]);
            } else {
               Pagesetting::where('caption','contact page')->update([
                'caption' => $caption2,
                 'email' => $r->email,
                 'phone' => $r->phone,
                 'address' => $r->address,
                 'location' => $r->location
            ]);
            }
             return redirect()->back()->with('success', 'Setting Saved');

        }elseif (!empty($r->savevision)) {
             $checkvis = Pagesetting::where('caption','vision')->first();
            if (empty($checkvis)) {
                  Pagesetting::create([
                'caption' => $caption3,
                 'content' => $r->content4
            ]);
             } else {
                  Pagesetting::where('caption','vision')->update([
                'caption' => $caption3,
                 'content' => $r->content4
            ]);
             }
          
             return redirect()->back()->with('success', 'Setting Saved');

        }elseif (!empty($r->savemission)) {
              $checkmis = Pagesetting::where('caption','mission')->first();
           if (empty($checkmis)) {
                  Pagesetting::create([
                'caption' => $caption4,
                 'content' => $r->content3
            ]);
             } else {
                  Pagesetting::where('caption','mission')->update([
                'caption' => $caption4,
                 'content' => $r->content3
            ]);
             }
             return redirect()->back()->with('success', 'Setting Saved');
        }elseif (!empty($r->saveobj)) {
              $checkobj = Pagesetting::where('caption','obj page')->first();
           if (empty($checkobj)) {
                  Pagesetting::create([
                'caption' => $caption5,
                 'content' => $r->content5
            ]);
             } else {
                  Pagesetting::where('caption','obj page')->update([
                'caption' => $caption5,
                 'content' => $r->content5
            ]);
             }
             return redirect()->back()->with('success', 'Setting Saved');
        }elseif(!empty($r->saveexchg)){
          $checkex = Pagesetting::where('caption',$caption6)->first();
          if (empty($checkex)) {
                 Pagesetting::create([
               'caption' => $caption6,
                'content' => $r->exchg
           ]);
            } else {
                 Pagesetting::where('caption',$caption6)->update([
               'caption' => $caption6,
               'content' => $r->exchg
           ]);
            }
            return redirect()->back()->with('success', 'Exchange Rate Updated');
        }
    }
}
