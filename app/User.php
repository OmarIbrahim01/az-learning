<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function subscription()
    {
        return $this->hasMany('App\Subscription');
    }

    public function HadSubscription($id)  // User::incomplete()->get();
    {
        $user = User::find($id);
        return $user->subscription->all();
    }

    public function HasActiveSubscription($id)  // User::incomplete()->get();
    {
        $user = User::find($id);
        return $user->subscription->where('active', 1)->first();
    }
}
