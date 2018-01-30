@extends('layouts.main')

@section('css')
  <link href="/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
@stop


@section('breadcrumbs')
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1>Category full</h1>
            </div>
            <div class="col-md-5">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li>Category full</li>
                </ul>

            </div>
        </div>
    </div>
</div>
@stop



@section('content')

<div class="container" style="margin-bottom: 120px;">
<section>
    <div class="row">
        <div class="col-md-12">
            <div class="heading">
                <h2>Requested Subscriptions</h2>
            </div>
        </div>
    </div>
</section>

<section style="margin-bottom: 50px;">
  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
      <thead>
          <tr>
              <th>Email</th>
              <th>Subscription</th>
              <th>Request Date</th>
              <th>Total Price</th>
              <th>Mobile</th>
              <th style="text-align: center; width: 10%;">Activate</th>
          </tr>
      </thead>
      <tbody>
        @foreach($subscriptions as $subscription)
          <tr>
              <td>{{$subscription->user->email}}</td>
              <td>{{$subscription->plan->name}}</td>
              <td>{{$subscription->created_at}}</td>
              <td>{{$subscription->plan->price}} EGP</td>
              <td>{{$subscription->mobile}}</td>
              <td style="text-align: center; width: 10%;"><a href="{{route('subscription.activate', $subscription->id)}}" class="btn btn-success" style="border-radius: 3px;">Activate</a></td>
          </tr>
        @endforeach
      </tbody>
  </table>
</section>
</div>

@stop






@section('js')

<!-- Bootstrap core JavaScript-->
<script src="/vendor/datatables/jquery.dataTables.js"></script>
<script src="/vendor/datatables/dataTables.bootstrap4.js"></script>
<script src="/js/sb-admin-datatables.min.js"></script>
    
@stop