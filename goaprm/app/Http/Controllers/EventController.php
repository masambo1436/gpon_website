<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Attendance;
class EventController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
  public function index()
  {
      return view('admin.events.index')->with('events',Event::all());
  }

  public function create()
  {
       return view('admin.events.create');
  }

  public function store(Request $request)
  {
       $this->validate($request,[
        'title' => ['required','string'],
        'venue' => ['required','string'],
        'datefrom' => ['required','string'],
        'timestarted' => ['required','string'],
        'details' => ['required','string'],
        'eventimage' => ['required','image','mimes:jpg,jpeg,png'],
      ]);
      $imagePath = $request->file('eventimage');
        $imageNewName = time().$imagePath->getClientOriginalName();
          $imagePath->move('imageupload', $imageNewName);

      Event::create([
          'title' => $request->title,
          'venue' => $request->venue,
          'datefrom' => $request->datefrom,
          'timestarted' => $request->timestarted,          
          'eventimage' => 'imageupload/'.$imageNewName,
          'details' => $request->details, 
      ]);

       return redirect()->route('event.index')->with('success','Event Scheduled Successfully');
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function attend($id)
  {
       return view('admin.events.reservation')->with('eventitle',Event::findorfail($id))
                                                ->with('atte',Attendance::where('event_id',$id)->get());
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
       return view('admin.events.edit')->with('eventsed',Event::findorfail($id));
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
       $this->validate($request,[
        'title' => ['required','string'],
        'venue' => ['required','string'],
        'datefrom' => ['required','string'],
        'timestarted' => ['required','string'],
        'details' => ['required','string'],
      ]);
       $upevent = Event::findorfail($id);

        if ($request->hasFile('eventimage')) {
          $imagePath = $request->file('eventimage');
        $imageNewName = time().$imagePath->getClientOriginalName();
          $imagePath->move('imageupload', $imageNewName);
           $upevent->eventimage = 'imageupload/'.$imageNewName;
     }
        $upevent->title = $request->title;
        $upevent->venue = $request->venue;
        $upevent->datefrom = $request->datefrom;
        $upevent->timestarted = $request->timestarted;
        $upevent->details = $request->details;

        $upevent->save();
       return redirect()->route('event.index')->with('success','Event Updated Successfully');
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
      $delevet = Event::findorfail($id);
        if (file_exists($delevet->eventimage)) {
             unlink($delevet->eventimage);
        }
       $delevet->delete();
       Attendance::where('event_id', $id)->delete(); 
        return redirect()->route('event.index')->with('success','Event Deleted Successfully');
  }

   public function publish($id){
     $pub = Event::findorfail($id);
      $pub->status = '1';
      $pub->save();

      return redirect()->route('event.index')->with('success','Event Published Successfully');
  }

      
  public function not_publish($id){
 
     $unpub = Event::findorfail($id);
       $unpub->status = '0';
      $unpub->save();

      return redirect()->route('event.index')->with('success','Event Unpublished');
  }
}
