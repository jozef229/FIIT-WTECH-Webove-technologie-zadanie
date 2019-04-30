<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'description', 'price', 'memory_id', 'category_id', 'color_id', 'file'];





    public function memories(){
        return $this->belongsTo('App\Memory', 'memory_id');
    }
    public function categories(){
        return $this->belongsTo('App\Category', 'category_id');
    }
    public function colors(){
        return $this->belongsTo('App\Color', 'color_id');
    }
    public function product_orders(){
        return $this->hasMany('App\Product_Order');
    }
}
