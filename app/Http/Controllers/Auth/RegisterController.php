<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        $title = "register";
        return view('auth.register',compact(
            'title',
        ));
    }

    public function store(Request $request){
        $this->validate($request ,[
            'name'=>'required|max:100',
            'email'=>'required|email',
            'password'=>'required|max:200|confirmed',
        ]);
        // Role::create(['name'=>'Super-admin']);
        User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
        ]);
        auth()->attempt($request->only('email','password'));
        return redirect()->route('dashboard');
    }
}
