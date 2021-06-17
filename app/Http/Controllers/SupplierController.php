<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title ="Suppliers";
        $suppliers = Supplier::get();
        return view('suppliers',compact('title','suppliers'));
    }

    /**
     * Display a form for adding the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = "add supplier";
        $products = Product::get();
        return view('add-supplier',compact(
            'title','products'
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
            'name'=>'required',
            'product'=>'required',
            'email'=>'email|string',
            'phone'=>'max:13',
            'company'=>'max:200|required',
            'address'=>'required|max:200',
            'description' =>'max:200',
        ]);
        Supplier::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'company'=>$request->company,
            'address'=>$request->address,
            'product'=>$request->product,
            'description'=>$request->description,
        ]);
        $notification = array(
            'message'=>"Supplier has been added",
            'alert-type'=>'success',
        );
        return redirect()->route('suppliers')->with($notification);
    }

    /**
     * Display the specified resource.
     *@param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request,$id)
    {
        $title = "edit Supplier";
        $products = Product::get();
        $supplier = Supplier::find($id);
        return view('edit-supplier',compact(
            'title','products','supplier'
        ));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Supplier $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Supplier $supplier)
    {
        $this->validate($request,[
            'name'=>'required',
            'product'=>'required',
            'email'=>'email|string',
            'phone'=>'max:13',
            'company'=>'max:200|required',
            'address'=>'required|max:200',
            'description' =>'max:200',
        ]);

        $supplier->update($request->all());
        $notification = array(
            'message'=>"Supplier has been updated",
            'alert-type'=>'success',
        );
        return redirect()->route('suppliers')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $supplier = Supplier::find($request->id);
        $supplier->delete();
        $notification = array(
            'message'=>"Supplier has been deleted",
            'alert-type'=>'success',
        );
        return back()->with($notification);
    }
}
