<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    public function subscription()
    {
        return $this->hasMany('App/Subscription');
    }
}
