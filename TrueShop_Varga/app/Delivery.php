<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    protected $fillable = ['type'];

    public function orders(){
        return $this->hasMany('App\Order');
    }
}
