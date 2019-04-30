<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{

    protected $fillable = ['user_id','payment_id','delivery_id', 'name', 'city', 'street', 'zip'];

    public function users(){
        return $this->belongsTo('App\User', 'user_id');
    }
    public function payments(){
        return $this->belongsTo('App\Payment', 'payment_id');
    }
    public function deliveries(){
        return $this->belongsTo('App\Delivery', 'delivery_id');
    }
    public function product_orders(){
        return $this->hasMany('App\Product_Order');
    }
}
