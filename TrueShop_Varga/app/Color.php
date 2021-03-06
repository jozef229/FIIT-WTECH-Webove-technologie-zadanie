<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    protected $fillable = ['color'];
    public function products(){
        return $this->hasMany('App\Product');
    }
}
