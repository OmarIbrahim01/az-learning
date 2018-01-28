<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
		/**
		* the 
		*
		* @var string
		*/

		protected $table = 'plans';

    public function subscription()
    {
        return $this->hasMany('App/Subscription');
    }
}
