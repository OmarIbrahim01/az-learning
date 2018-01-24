<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Course extends Model
{
  public function videos()
	{
		return $this->hasMany('App\Video');
	}

	public function categpry()
	{
		return $this->belongsTo('App\Category');
	}
}
