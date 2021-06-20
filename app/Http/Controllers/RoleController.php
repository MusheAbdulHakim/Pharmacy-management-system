<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = "user Roles";
        $roles = Role::with('permissions')->get();
        $permissions = Permission::get();
        return view('roles',compact(
            'title','roles','permissions'
        ));
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
            'role'=>'required|max:100',
            'permission'=>'required'
        ]);
        $role = Role::create(['name' => $request->role]);
        $permissions = $request->permission;
        $role->syncPermissions($permissions);
        $notification = array(
            'message'=>"Role Created Successfully!!",
            'alert-type'=>"success"
        );
        return back()->with($notification);
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
            'role'=>'required|max:100',
            'permission'=>'required'
        ]);
        $role = Role::find($request->id);
        $role->update([
            'name'=>$request->role,
        ]);
        $permissions = $request->permission;
        $role->syncPermissions($permissions);
        $notification = array(
            'message'=>"Role Updated Successfully!!",
            'alert-type'=>"success"
        );
        return back()->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $role = Role::find($request->id);
        $role->delete();
        $notification = array(
            'message'=>"Role deleted successfully!!.",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }
}
