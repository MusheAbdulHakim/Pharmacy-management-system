<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Sales;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index(){
        $title = "generate Reports";
        return view('reports',compact(
            'title',
        ));
    }

    public function getData(Request $request){
        $this->validate($request,[
            'from_date'=>'required',
            'to_date'=>'required',
            'resource'=>'required',
        ]);
        if ($request->resource == 'sales'){
            $sales = Sales::whereDate('created_at','=',Carbon::now())->get();
            $title = "Sales Reports";
            return view('reports',compact('sales','title'));
        }
        if($request->resource == "products"){
            $title = "Products Reports";
            $products = Product::get();
            return view('reports',compact('title','products'));
        }
        if($request->resource == 'purchases'){
            $title = "Purchases Reports";
            $purchases = Purchase::get();
            return view('reports',compact('title','purchases'));
        }
    }
}
