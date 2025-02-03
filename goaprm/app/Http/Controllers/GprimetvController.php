<?php

namespace App\Http\Controllers;

use App\Models\Gprimetv;
use Illuminate\Http\Request;

class GprimetvController extends Controller
{
    public function index(){
        return view('admin.gprimetv.index')->with('gprimetvs',Gprimetv::orderBy('created_at','DESC')->get());
    }


    public function store(Request $r){
        $this->validate($r,[
            'title' => ['required','string'],
            'link' => ['required','string']
        ]);

        Gprimetv::create([
            'title' => $r->title,
            'link' => $r->link,
            'status' => '1'
        ]);
        return redirect()->back()->with('success','Record Saved');
    }

    public function edit($id){
        return view('admin.gprimetv.edit')->with('edt',Gprimetv::findorfail($id));
    }

    public  function update(Request $r,$id){
        $this->validate($r,[
            'title' => ['required','string'],
            'link' => ['required','string']
        ]);

        Gprimetv::findorfail($id)->update([
            'title' => $r->title,
            'link' => $r->link
        ]);
        return redirect()->route('live.index')->with('success','Record Updated');
    }

    public function delete($id){
        Gprimetv::findorfail($id)->delete();

        return redirect()->back()->with('success','Record Saved');
    }

    public function publish($id){
        $pub = Gprimetv::findorfail($id);
         $pub->status = '1';
         $pub->save();
   
         return redirect()->route('live.index')->with('success','Record Published');
     }
   
         
     public function not_publish($id){
    
        $unpub = Gprimetv::findorfail($id);
          $unpub->status = '0';
         $unpub->save();
   
         return redirect()->route('live.index')->with('success','Record Unpublished');
     }
}


