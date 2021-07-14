<?php

namespace App\Http\Controllers;

use DataTables;
use App\Models\Sales;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;
use App\Events\PurchaseOutStock;
use App\Notifications\StockAlert;

class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = "sales";
        $products = Product::get();
        $sales = Sales::with('product')->latest()->get();
                
        return view('sales',compact(
            'title','products','sales'
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
            'product'=>'required',
            'quantity'=>'required|integer|min:1'
        ]);
        $sold_product = Product::find($request->product);
        
        /**update quantity of
            sold item from
         purchases
        **/
        $purchased_item = Purchase::find($sold_product->purchase->id);
        $new_quantity = ($purchased_item->quantity) - ($request->quantity);
        $notification = '';
        if (!($new_quantity < 0)){

            $purchased_item->update([
                'quantity'=>$new_quantity,
            ]);

            /**
             * calcualting item's total price
            **/
            $total_price = ($request->quantity) * ($sold_product->price);
            Sales::create([
                'product_id'=>$request->product,
                'quantity'=>$request->quantity,
                'total_price'=>$total_price,
            ]);

            $notification = array(
                'message'=>"Product has been sold",
                'alert-type'=>'success',
            );
        } 
        if($new_quantity <=1 && $new_quantity !=0){
            // send notification 
            $product = Purchase::where('quantity', '<=', 1)->first();
            event(new PurchaseOutStock($product));
            // end of notification 
            $notification = array(
                'message'=>"Product is running out of stock!!!",
                'alert-type'=>'danger'
            );
            
        }
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
            'product'=>'required',
            'quantity'=>'required|integer'
        ]);
        $sold_product = Product::find($request->product);
        
        /**update quantity of
            sold item from
         purchases
        **/
        $purchased_item = Purchase::find($sold_product->purchase->id);
        $new_quantity = ($purchased_item->quantity) - ($request->quantity);
        if ($new_quantity > 0){

            $purchased_item->update([
                'quantity'=>$new_quantity,
            ]);

            /**
             * calcualting item's total price
            **/
            $total_price = ($request->quantity) * ($sold_product->price);
            Sales::create([
                'product_id'=>$request->product,
                'quantity'=>$request->quantity,
                'total_price'=>$total_price,
            ]);

            $notification = array(
                'message'=>"Product has been sold",
                'alert-type'=>'success',
            );
        }
        
        elseif($new_quantity <=3 && $new_quantity !=0){
            // send notification 
            $product = Purchase::where('quantity', '<=', 3)->first();
            event(new PurchaseOutStock($product));
            // end of notification 
            $notification = array(
                'message'=>"Product is running out of stock!!!",
                'alert-type'=>'danger'
            );
            
        }
        else{
            $notification = array(
                'message'=>"Please check purchase product quantity",
                'alert-type'=>'info',
            );
            return back()->with($notification);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $sale = Sales::find($request->id);
        $sale->delete();
        $notification = array(
            'message'=>"Sales has been deleted",
            'alert-type'=>'success'
        );
        return back()->with($notification);
    }
}
