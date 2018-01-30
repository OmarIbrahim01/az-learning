<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subscription;
use App\Plan;
use DB;
use App\User;
use Auth;
use Carbon\Carbon;

class SubscriptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $packages = Plan::all();
        return view('subscriptions.create')->withPackages($packages);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (Auth::user()->hasActiveSubscription(Auth::id())  || Auth::user()->hasRequestedSubscription(Auth::id())){
            return back();
        }

        // $this->validate(request(), [
        //     'mobile' => 'required|max:11|min:11',
        //     'plan' => 'required'
        // ]);

        $subscription = new Subscription;

        $subscription->user_id = Auth::id();
        $subscription->plan_id = request('package');
        $subscription->mobile = request('mobile');

        $subscription->save();
        return redirect('/');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function manageIndex()
    {
        
        $subscriptions = Subscription::
                            where('activated_at', null)

                            ->where('active', 0)
                            ->orWhere('active', null)

                            ->where('end_date', null)

                            ->get();

        return view('subscriptions.manage')->withSubscriptions($subscriptions);
    }

    public function activate($id)
    {
        $subscription = Subscription::findOrfail($id);

        $subscription->active = true;
        $subscription->activated_at = Carbon::now();
        $subscription->end_date = Carbon::parse($subscription->activated_at)->addMonths($subscription->plan->duration)->format('Y-m-d H:i:s');
        $subscription->save();

        return back();
    }
}





// $subscriptions = Subscription::all()
//                     ->where('activated_at', null)
//                     ->where(function($q){ $q->where('active', '=', 0)->orWhere('active', '=', null); })
//                     ->orWhere('active', null)
//                     ->where('end_date', null);