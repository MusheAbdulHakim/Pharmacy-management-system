<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $title = 'permissions';
        if ($request->ajax()){
            $permissions = Permission::get();
            return DataTables::of($permissions)
                    ->addIndexColumn()
                    ->addColumn('created_at',function($row){
                        return date_format(date_create($row->created_at),'D M Y');
                    })
                    ->addColumn('action',function ($row){
                        $editbtn = '<a data-id="'.$row->id.'" data-name="'.$row->name.'" href="javascript:void(0)" class="editbtn"><button class="btn btn-primary"><i class="fa fa-edit"></i></button></a>';
                        $deletebtn = '<a data-id="'.$row->id.'" data-route="'.route('permissions.destroy',$row->id).'" href="javascript:void(0)" id="deletebtn"><button class="btn btn-danger"><i class="fa fa-trash"></i></button></a>';
                        if(!auth()->user()->hasPermissionTo('edit-permission')){
                            $editbtn = '';
                        }
                        if(!auth()->user()->hasPermissionTo('destroy-permission')){
                            $deletebtn = '';
                        }
                        $btn = $editbtn.' '.$deletebtn;
                        return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        
        return view('admin.roles.permissions',compact(
            'title',
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
            'permission' => 'required|min:3|max:255'
        ]);
        foreach (explode(',',$request->permission) as $permission){
            $permission = Permission::create(['name' => $permission]);
            $permission->assignRole('super-admin');
        }
        $notification = notify("permission created");
        return back()->with($notification);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request,[
            'permission' => 'required|min:3|max:255'
        ]);
        $permission = Permission::findOrFail($request->id);
        $permission->update([
            'name' => $request->permission,
        ]);
        $notification = notify('permission updated');
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
        return Permission::findOrFail($request->id)->delete();  
    }
}
