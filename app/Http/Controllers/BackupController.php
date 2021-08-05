<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class BackupController extends Controller
{
    
    public function index(){
        Artisan::call('backup:run --disable-notifications');
        $notification = [
            'message'=>"Backup has been made",
            'alert-type'=>'success',
        ];
        return redirect()->route('dashboard')->with($notification);
    }

    public function database(){
        Artisan::call('backup:run --only-db --disable-notifications');
        $notification = [
            'message'=>"Database has been backed up",
            'alert-type'=>'success',
        ];
        return redirect()->route('dashboard')->with($notification);
    }

}
