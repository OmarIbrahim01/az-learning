<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Video extends Model
{

	public function course()
	{
		return $this->belongsTo('App\Course');
	}

	public function history()
  {
  	return $this->hasMany('App\History');
  }
    
}
