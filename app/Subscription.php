<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Plan;

class Subscription extends Model
{
    public function user()
    {
        return $this->belongsTo('App/User');
    }

    public function plan()
    {
        return $this->belongsTo('App/Plan');
    }
}
