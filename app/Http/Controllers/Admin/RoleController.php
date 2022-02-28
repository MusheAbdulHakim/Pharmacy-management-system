<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $title = 'roles';
        if($request->ajax()){
            $roles = Role::get();
            return DataTables::of($roles)
                ->addIndexColumn()
                ->addColumn('permissions',function ($role){
                    // for ($i=0; $i < $role->getAllPermissions()->count(); $i++) { 
                        
                    // }
                    foreach($role->getAllPermissions() as $permission){
                        $permission->name;
                    }
                    // array_map(function($permission){
                    //     return '<span class="badge badge-primary">'.$permission['name'].'</span>';
                    // },$role->getAllPermissions()->toArray());
                    // return implode("",$role->getAllPermissions()->toArray());
                })
                ->addColumn('action',function ($row){
                    $editbtn = '<a href="'.route('roles.edit',$row->id).'" class="editbtn"><button class="btn btn-primary"><i class="fa fa-edit"></i></button></a>';
                    $deletebtn = '<a data-id="'.$row->id.'" data-route="'.route('roles.destroy',$row->id).'" href="javascript:void(0)" id="deletebtn"><button class="btn btn-danger"><i class="fa fa-trash"></i></button></a>';
                    if(!auth()->user()->hasPermissionTo('edit-role')){
                        $editbtn = '';
                    }
                    if(!auth()->user()->hasPermissionTo('destroy-role')){
                        $deletebtn = '';
                    }
                    $btn = $editbtn.' '.$deletebtn;
                    return $btn;
                })
                ->rawColumns(['permissions','action'])
                ->make(true);
        }
        return view('admin.roles.index',compact(
           'title' 
        ));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'create role';
        $permissions = Permission::get();
        return view('admin.roles.create',compact('title','permissions'));
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
            'role' => 'required|min:3|max:255',
            'permission' => 'required',
        ]);
        $role = Role::create(['name' => $request->role]);
        $role->syncPermissions($request->permission);
        $notification = notify('role created successfully');
        return redirect()->route('roles.index')->with($notification);
    }

    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Spatie\Permission\Models\Role $role
     * @return \Illuminate\Http\Response
     */
    public function edit(Role $role)
    {
        $title = 'edit role';
        $permissions = Permission::get();
        return view('admin.roles.edit',compact(
            'title','role','permissions'
        ));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Spatie\Permission\Models\Role $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role)
    {
        $this->validate($request,[
            'role' => 'required|min:3|max:255',
            'permission' => 'required'
        ]);
        $role->update([
            'name' => $request->role,
        ]);
        $role->syncPermissions($request->permission);
        return redirect()->route('roles.index')->with(notify('Role updated successfully'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        return Role::findOrFail($request->id)->delete();
    }
}
