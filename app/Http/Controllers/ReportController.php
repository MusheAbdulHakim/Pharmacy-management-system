<?php

namespace App\Http\Controllers;

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
        
    }
}
