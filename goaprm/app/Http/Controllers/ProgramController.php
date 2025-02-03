<?php

namespace App\Http\Controllers;

use App\Models\Program;
use Illuminate\Http\Request;

class ProgramController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('admin.program.index')->with('prgs',Program::all());
    }

    public function create(){
        return view('admin.program.create');
    }

    public function store(Request $r){
        $this->validate($r,[
            'caption' => ['required','string'],
            'file' => ['required'],
            'content' => ['required'],
        ]);
       
        $img= $r->file('file');
        $imageNewName = time()."_".$img->getClientOriginalName();
        $img->move('uploads', $imageNewName);

        Program::create([
            'caption' => $r->caption,
            'content' => $r->content,
            'image' => 'uploads/'.$imageNewName
        ]);
        
        return redirect()->route('prog.index')->with('success','Record created');
    }

    public function edit($id){
        return view('admin.program.edit')->with('tsed',Program::findorfail($id));
    }

    public function update(Request $r,$id){
        $this->validate($r,[
            'caption' => ['required'],
            'content' => ['required']
        ]);
        $prog =  Program::findorfail($id);
        if ($r->hasFile('file')) {
            $imagePath = $r->file('file');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $prog->image = 'uploads/'.$imageNewName;
       }
       $prog->update([
            'caption' => $r->caption,
            'content' => $r->content
        ]);
        return redirect()->route('prog.index')->with('success','Record Updated');
    }

    public function destroy($id){
        $p = Program::findorfail($id);
        if (file_exists($p->image)) {
            unlink($p->image);
         }
        $p->delete();
        return redirect()->back()->with('success','Record Deleted');
    }
}
