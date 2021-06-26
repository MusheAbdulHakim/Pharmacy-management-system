<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Sales;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
        $from_date = $request->from_date;
        $to_date = $request->to_date;
        if ($request->resource == 'sales'){
            $sales = Sales::whereBetween(DB::raw('DATE(created_at)'), array($from_date, $to_date))->get();
            $total_sales = $sales->count();
            $total_cash =$sales->sum('total_price');
            $title = "Sales Reports";
            return view('reports',compact('sales','title','total_sales','total_cash'));
        }
        if($request->resource == "products"){
            $title = "Products Reports";
            $products = Product::whereBetween(DB::raw('DATE(created_at)'), array($from_date, $to_date))->get();
            return view('reports',compact('title','products'));
        }
        if($request->resource == 'purchases'){
            $title = "Purchases Reports";
            $purchases = Purchase::whereBetween(DB::raw('DATE(created_at)'), array($from_date, $to_date))->get();
            return view('reports',compact('title','purchases'));
        }
    }
}
