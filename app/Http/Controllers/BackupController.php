<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class BackupController extends Controller
{
    
    public function index(){
        Artisan::call('backup:run');
        $notification = [
            'message'=>"Backup has been made",
            'alert-type'=>'success',
        ];
        return redirect()->route('dashboard')->with($notification);
    }

}
