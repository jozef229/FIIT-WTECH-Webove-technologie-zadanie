<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Order extends Model
{
    protected $fillable = ['order_id','product_id','count'];

    public function products(){
        return $this->belongsTo('App\Product', 'product_id');
    }
    public function orders(){
        return $this->belongsTo('App\Order', 'order_id');
    }
}
