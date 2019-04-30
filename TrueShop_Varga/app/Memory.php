<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Memory extends Model
{
    protected $fillable = ['memory'];

    public function products(){
        return $this->hasMany('App\Product');
    }
}
