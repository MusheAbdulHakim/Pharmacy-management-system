<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Supplier extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'name','email','phone','company',
        'address','product','description'
    ];

    
    
}
