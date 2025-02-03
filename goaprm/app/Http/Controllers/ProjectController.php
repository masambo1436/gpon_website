<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('admin.projects.index')->with('prgs',Project::all());
    }

    public function create(){
        return view('admin.projects.create');
    }

    public function store(Request $r){
        $this->validate($r,[
            'title' => ['required','string'],
            'budget' => ['required','string','numeric'],
            'file' => ['required'],
            'content' => ['required'],
        ]);
       
        $img= $r->file('file');
        $imageNewName = time()."_".$img->getClientOriginalName();
        $img->move('uploads', $imageNewName);

        Project::create([
            'title' => $r->title,
            'budget' => $r->budget,
            'details' => $r->content,
            'amount_raised' => "0",
            'imagefile' => 'uploads/'.$imageNewName
        ]);
        
        return redirect()->route('pro.index')->with('success','Record created');
    }

    public function edit($id){
        return view('admin.projects.edit')->with('tsed',Project::findorfail($id));
    }

    public function pro_raised(Request $r){
        $this->validate($r,[
            'amount' => ['required','string','numeric'],
        ]);
        $pro =  Project::findorfail($r->id);
        $ad = (int)$pro->amount_raised + (int)$r->amount;
        $pro->update([
            'amount_raised' => $ad
        ]);
        return redirect()->route('pro.index')->with('success','Amount Updated');
    }

    public function update(Request $r,$id){
        $this->validate($r,[
            'title' => ['required'],
            'budget' => ['required','string','numeric'],
            'content' => ['required']
        ]);
        $pro =  Project::findorfail($id);
        if ($r->hasFile('file')) {
            unlink($pro->imagefile);
            $imagePath = $r->file('file');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $pro->imagefile = 'uploads/'.$imageNewName;
       }
       $pro->update([
            'title' => $r->title,
            'budget' => $r->budget,
            'details' => $r->content
        ]);
        return redirect()->route('pro.index')->with('success','Record Updated');
    }

    public function destroy($id){
        $p = Project::findorfail($id);
        if (file_exists($p->imagefile)) {
            unlink($p->imagefile);
         }
        $p->delete();
        return redirect()->back()->with('success','Record Deleted');
    }
}
