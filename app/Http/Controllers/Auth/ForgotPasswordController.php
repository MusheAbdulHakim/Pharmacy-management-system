<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ForgotPasswordController extends Controller
{
    public function index(){
        $title = "forgot password";
        return view('auth.forgot-password',compact(
            'title'
        ));
    }

    public function reset(Request $request){
        $this->validate($request,[
            'email'=>'required|email',
        ]);
    }
}
