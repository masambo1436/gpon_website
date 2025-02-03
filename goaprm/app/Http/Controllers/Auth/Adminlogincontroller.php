<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Adminlogincontroller extends Controller
{
    public function __construct(){
        $this->middleware('guest',['except'=> 'adminlogout']);
    }
     //show admin login page
    public function showadminlogin(){
        return view('auth.admin-login');
    }
      //login into admin page 
    public function adminlogin(Request $request){
      $this->validate($request,[
            'username' => 'required',
            'password' => 'required'
        ]);
     
      if (Auth::attempt(['username'=>$request->username, 'password' => $request->password])) {
          return redirect()->intended(route('admin.dashboard'));
      }
      return redirect()->back()->withInput($request->only('username'))->with('error','invalid Username or Password');

    }
      public function adminlogout(){
        Auth::logout();
        return redirect()->route('show.login')->with('success','You have successfully Logout');
    }
}
