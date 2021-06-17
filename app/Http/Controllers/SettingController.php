<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use QCod\AppSettings\SavesSettings;

class SettingController extends Controller
{
    use SavesSettings;
    
}
