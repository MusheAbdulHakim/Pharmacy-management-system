<?php

namespace App\Models;

use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Sales extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'product_id','quantity','total_price',
    ];

    public function product(){
        return $this->belongsTo(Product::class);
    }

    
}
