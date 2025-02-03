<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\Order;
class SlidesController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.slide.index')->with('slides', Slide::orderBy('id','DESC')->get());

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('admin.slide.create');
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
         'image' => ['required']
       ]);
       

          if ($request->image) {
              $imagePath = $request->file('image');
                    foreach ($imagePath as $value) {
                         $imageNewName = time()."_".$value->getClientOriginalName();
                          $value->move('uploads', $imageNewName);
                       
                           $slides = Slide::create([
                             'content' => $request->content,
                             'image' =>  'uploads/'.$imageNewName
                           ]);
                    }                  
          }
        
            

       return redirect()->route('slide.index')->with('success', 'Slide created Successfully');
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
         return view('admin.slide.edit')->with('slides', Slide::findorfail($id));
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
      
           $slides = Slide::findorfail($id); 

       if ($request->hasFile('image')) {
            $imagePath = $request->file('image');
                         $imageNewName = time()."_".$imagePath->getClientOriginalName();
                          $imagePath->move('uploads', $imageNewName);
                        //  $arr[] = 'slideupload/'.$imageNewName;   
                 $slides->image = 'uploads/'.$imageNewName;
       }
       $slides->content = $request->content;
           $slides->save();
         
       return redirect()->route('slide.index')->with('success', 'Slide Updated Successfully');
    }

    public function activate($id){
        Slide::findorfail($id)->update([
            'status' => '1'
        ]);
        return redirect()->back()->with('success','Activated');
    }

     public function deactivate($id){
        Slide::findorfail($id)->update([
            'status' => '0'
        ]);
        return redirect()->back()->with('success','Deactivated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $slides = Slide::findorfail($id);
             if (file_exists($slides->image)) {
                 unlink($slides->image);
             }
      
        $slides->delete();
         return redirect()->route('slide.index')->with('success', 'Slide Deleted Successfully');
    }


}
