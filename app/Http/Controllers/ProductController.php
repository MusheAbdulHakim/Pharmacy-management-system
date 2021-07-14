<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Category;
use App\Models\Purchase;
use Illuminate\Http\Request;
use App\Notifications\StockAlert;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Event;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = "products";
        $products = Product::with('purchase')->get();
    
        return view('products',compact(
            'title','products',
        ));
    }

    public function create(){
        $title= "Add Product";
        $products = Purchase::get();
        return view('add-product',compact(
            'title','products',
        ));
    }
    

    /**
     * Display a listing of expired resources.
     *
     * @return \Illuminate\Http\Response
     */
    public function expired(){
        $title = "expired Products";
        $products = Purchase::whereDate('expiry_date', '=', Carbon::now())->get();
        
        return view('expired',compact(
            'title','products'
        ));
    }

    /**
     * Display a listing of out of stock resources.
     *
     * @return \Illuminate\Http\Response
     */
    public function outstock(){
        $title = "outstocked Products";
        $products = Purchase::where('quantity', '<=', 0)->get();
        $product = Purchase::where('quantity', '<=', 0)->first();
        // auth()->user()->notify(new StockAlert($product));
        
        return view('outstock',compact(
            'title','products',
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
            'product'=>'required|max:200',
            'price'=>'required|min:1',
            'discount'=>'nullable',
            'description'=>'nullable|max:200',
        ]);
        $price = $request->price;
        if($request->discount >0){
           $price = $request->discount * $request->price;
        }
        Product::create([
            'purchase_id'=>$request->product,
            'price'=>$price,
            'discount'=>$request->discount,
            'description'=>$request->description,
        ]);
        $notification=array(
            'message'=>"Product has been added",
            'alert-type'=>'success',
        );
        return redirect()->route('products')->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $title = "Edit Product";
        $product = Product::find($id);
        $purchased_products = Purchase::get();
        return view('edit-product',compact(
            'title','product','purchased_products'
        ));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Product $product)
    {
        $this->validate($request,[
            'product'=>'required|max:200',
            'price'=>'required',
            'discount'=>'nullable',
            'description'=>'nullable|max:200',
        ]);
        
        $price = $request->price;
        if($request->discount >0){
           $price = $request->discount * $request->price;
        }
       $product->update([
            'purchase_id'=>$request->product,
            'price'=>$price,
            'discount'=>$request->discount,
            'description'=>$request->description,
        ]);
        $notification=array(
            'message'=>"Product has been updated",
            'alert-type'=>'success',
        );
        return redirect()->route('products')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $product = Product::find($request->id);
        $product->delete();
        $notification = array(
            'message'=>"Product has been deleted",
            'alert-type'=>'success',
        );
        return back()->with($notification);
    }
}
