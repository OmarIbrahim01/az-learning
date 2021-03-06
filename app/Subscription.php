<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Subscription extends Model
{
    public function user()
    {
        return $this->belongsTo('\TCG\Voyager\Models\User');
    }

    public function plan()
    {
        return $this->belongsTo('App\Plan');
    }

    public function paymentMethod()
    {
        return $this->belongsTo('App\PaymentMethod');
    }
}
