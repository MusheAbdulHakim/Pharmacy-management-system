<?php

namespace App\Http\Controllers\Admin\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends Controller
{
    public function index(){
        $title = 'forgot password';
        return view('admin.auth.password.email', compact('title'));
    }

    public function requestEmail(Request $request){
        $this->validate($request,[
            'email' => 'required|email'
        ]);
        $status = Password::sendResetLink(
            $request->only('email')
        );
        return $status === Password::RESET_LINK_SENT
                ? back()->with(['status' => __($status)])
                : back()->withErrors(['email' => __($status)]);
    }


    
}
