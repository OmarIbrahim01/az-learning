<?php

namespace App\Listeners;

use Illuminate\Auth\Events\Login;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Carbon\Carbon;
use App\Plan;
use App\User;
use App\Subscription;

class SetSubscriptionStatus
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Login  $event
     * @return void
     */
    public function handle(Login $event)
    {
        //Check if user has active subscription
        if ($event->user->hasActiveSubscription($event->user->id)){

            $subscription = $event->user->hasActiveSubscription($event->user->id);
            $activated_at = $subscription->activated_at;

            //{--Fix the Relations--} find the subscription plan
            $subscription_duration  = Plan::findorFail($subscription->plan_id)->duration;

            //check if the subscription has an end date and set it
            if(!isset($subscription->end_date)){
                $end_date = Carbon::parse($activated_at)->addMonths($subscription_duration)->format('Y-m-d H:i:s');
                $subscription->end_date = $end_date;
                $subscription->save();
            }

            //if the subscription has ended
            if (Carbon::now()->gt(Carbon::parse($subscription->end_date))){
                $subscription->active = 0;
                $subscription->save();
            }

        }

    }
}
