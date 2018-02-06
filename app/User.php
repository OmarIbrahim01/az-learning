<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;
use App\Subscription;

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

    public function history()
  {
    return $this->hasMany('App\History');
  }





    public function HadSubscription($id)  // User::incomplete()->get();
    {
        $user = User::find($id);
        return $user->subscription->all();
    }

    public function HasActiveSubscription($id)  // User::incomplete()->get();
    {
        $user = User::find($id)->subscription->where('active', 1)->first();
        if (isset($user)){
            return $user;
        }else {
            return false;
        }
    }

    public function HasRequestedSubscription($id)  // User::incomplete()->get();
    {
        $user = User::find($id);
        return $user->subscription->where('end_date', null)->first();
    }

    public function isAdmin($id)
    {
        if(Auth::check()){
            $user = User::findOrFail($id);
            if ($user->role_id == 1) {
                return true;
            } else {
                return false;
            }
        }else {
            return false;
        }
    }

    public function isSubAdmin($id)
    {
        if(Auth::check()){
            $user = User::findOrFail($id);
            if ($user->role_id == 2) {
                return true;
            } else {
                return false;
            }
        }else {
            return false;
        }
    }
}
