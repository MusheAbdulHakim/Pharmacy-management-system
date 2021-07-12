<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = "users";
        $users  = User::with('roles')->get();
        $roles = Role::get();
        return view('users',compact(
            'title','users','roles'
        ));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        $this->validate($request,[
            'name'=>'required|max:100',
            'email'=>'required|email',
            'role'=>'required',
            'password'=>'required|confirmed|max:200',
            'avatar'=>'file|image|mimes:jpg,jpeg,gif,png',
        ]);
        $imageName = null;
        if($request->hasFile('avatar')){
            $imageName = time().'.'.$request->avatar->extension();
            $request->avatar->move(public_path('storage/users'), $imageName);
        }
        $user = User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'avatar'=>$imageName
        ]);
        $user->assignRole($request->role);
        $notification =array(
            'message'=>"User has been added!!!",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }

    /**
     * Display currently authenticated user.
     *
     * @return \Illuminate\Http\Response
     */
    public function profile()
    {
        $title = "profile";
        $roles = Role::get();
        return view('profile',compact(
            'title','roles'
        ));
    }

    /**
     * update resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateProfile(Request $request)
    {
        $this->validate($request,[
            'name'=>'required|max:100',
            'email'=>'required|email',
            'avatar'=>'file|image|mimes:jpg,jpeg,gif,png',
        ]);
        if($request->hasFile('avatar')){
            $imageName = time().'.'.$request->avatar->extension();
            $request->avatar->move(public_path('storage/users'), $imageName);
        }else{
            $imageName = auth()->user()->avatar;
        }
        auth()->user()->update([
            'name'=>$request->name,
            'email'=>$request->email,
            'avatar'=>$imageName,
        ]);
        $notification =array(
            'message'=>"User profile has been updated !!!",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }

    /**
     * Update current user password.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request)
    {
        $this->validate($request,[
            'old_password'=>'required',
            'password'=>'required|max:200|confirmed',
        ]);

        if (password_verify($request->old_password,auth()->user()->password)){
            auth()->user()->update(['password'=>Hash::make($request->password)]);
            $notification = array(
                'message'=>"User password updated successfully!!!",
                'alert-type'=>'success'
            );
            $logout = auth()->logout();
            return back()->with($notification,$logout);
        }else{
            $notification = array(
                'message'=>"Old Password do not match!!!",
                'alert-type'=>'danger'
            );
            return back()->with($notification);
        }
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request,[
            'name'=>'required|max:100',
            'email'=>'required|email',
            'password'=>'required|confirmed|max:200',
            'avatar'=>'file|image|mimes:jpg,jpeg,gif,png',
        ]);
        $imageName = auth()->user()->avatar;
        if($request->hasFile('avatar')){
            $imageName = time().'.'.$request->avatar->extension();
            $request->avatar->move(public_path('storage/users'), $imageName);
        }
        $user = User::find($request->id);
        $user->update([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'avatar'=>$imageName
        ]);
        $user->assignRole($request->role);
        $notification =array(
            'message'=>"User has been updated!!!",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $user = User::find($request->id);
        if($user->hasRole('super-admin')){
            $notification=array(
                'message'=>"Super admin cannot be deleted",
                'alert-type'=>'warning',
            );
            return back()->with($notification);
        }
        $user->delete();
        $notification=array(
            'message'=>"User has been deleted",
            'alert-type'=>'success',
        );
        return back()->with($notification);
    }
}
