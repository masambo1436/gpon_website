<?php

namespace App\Http\Controllers;

use App\Models\Research;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class ResearchController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('admin.research.index')->with('researchs', Research::orderBy('created_at','DESC')->get());
    }

      // news posts
      public function create() {
        
        return view('admin.research.create');
    }

        public function store(Request $request){
        $this->validate($request,[
         'title' => ['required','string'],        
         'description' => ['required','string'],
         'imagefile' => ['required','image'],
       ]);
      
       
            $imagePath = $request->file('imagefile');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);

            $imagefPath = $request->file('file');
          $imagefNewName = time()."_".$imagefPath->getClientOriginalName();
            $imagefPath->move('uploads', $imagefNewName);
       
        
       $posts = Research::create([           
           'title' => $request->title,
           'slug' => Str::slug($request->title),
           'postby' => Auth::user()->name,
           'details' => $request->description,
           'image' => 'uploads/'.$imageNewName,
           'file' => 'uploads/'.$imagefNewName
       ]);

       return redirect()->route('re.index')->with('success', 'created Successfully');
        }


            public function edit($id) {
                    $posts = Research::findorfail($id);
                    return view('admin.research.edit')->with('post', $posts);
            }
 
            public function update(Request $request,$id){
                 $this->validate($request,[
                    'title' => ['required','string'],
                    'description' => ['required','string'],
                
                ]);

           $posts = Research::findorfail($id); 

       if ($request->hasFile('imagefile')) {
               unlink($posts->image);
            $imagePath = $request->file('imagefile');
          $imageNewName = time()."_".$imagePath->getClientOriginalName();
            $imagePath->move('uploads', $imageNewName);
             $posts->image = 'uploads/'.$imageNewName;
       }
       if ($request->hasFile('file')) {
        $imagefPath = $request->file('file');
      $imagefNewName = time()."_".$imagefPath->getClientOriginalName();
        $imagefPath->move('uploads', $imagefNewName);
         $posts->file = 'uploads/'.$imagefNewName;
   }
        
           $posts->postby = Auth::user()->name;
           $posts->title = $request->title;
           $posts->slug = Str::slug($request->title);
           $posts->details = $request->description;
          
           $posts->save();
       return redirect()->route('re.index')->with('success', 'Updated Successfully');
            }
            
    public function delete($id){

         $posts = Research::findorfail($id);

        if (file_exists($posts->image)) {
           unlink($posts->image);
        }
        if (file_exists($posts->file)) {
           unlink($posts->file);
        }
        $posts->delete();
        //Comment::where('post_id',$posts->id)->delete();
         return redirect()->back()->with('success', 'Deleted Successfully');

    }
}
