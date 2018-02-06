@extends('layouts.main')

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

<div class="container">
    <section style="margin-bottom: 10px;">
        <div class="row">
            <div class="col-md-12">
                <div class="heading">
                    <h2>Our packages</h2>
                </div>

                <p class="lead" style="margin-bottom: 0;">Yielding, they're air. Land replenish spirit given gathered subdue, day Blessed you'll great created, lights a one light, blessed deep morning, appear our. Fruit multiply, creeping first image. Upon saw isn't male winged to
                    replenish tree and.</p>
            </div>
        </div>
    </section>

    <section>
        <div class="row packages">

            @foreach($packages as $package)
                <div class="col-md-3">
                    <div class="package ">
                        <div class="package-header">
                            <h5>{{$package->name}}</h5>
                        </div>
                        <div class="price">
                            <div class="price-container">
                                <h4 style="font-size: 3em;"><span class="currency"></span>{{$package->price}} EGP</h4>
                                <span class="period" style="font-size: 1.8em;">/ {{$package->name}}</span>
                            </div>
                        </div>
                        <ul>
                            <li><i class="fa fa-check"></i>Accsess to Premium Courses</li>
                            <li><i class="fa fa-check"></i>Accsess to Premium Videos</li>
                            <li><i class="fa fa-check"></i>Accsess to Premium Posts</li>
                        </ul>
                    </div>
                </div>
            @endforeach
            <!-- / END FIRST PACKAGE -->

            

    </section>
    
    <section style="margin-bottom: 10px;">
    <div class="col-md-6">
        <div class="box">
            <h2 class="text-uppercase">Select Package</h2>

            <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
            <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>

            <hr>
            <div class="col-md" style="margin-right: 30%;">
                <form method="POST" action="/subscription">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="name-login">Package</label>
                        <select class="form-control" name="package">
                            <option disabled selected value="0">Select Package</option>
                            @foreach($packages as $package)
                                <option value="{{$package->id}}">{{$package->price}}EGP/{{$package->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="name-login">Payment Method</label>
                        <select class="form-control" name="payment_method">
                            <option disabled selected value="0">Select Payment Method</option>
                            @foreach($paymentMethods as $payment_method)
                                <option value="{{$payment_method->id}}">{{$payment_method->name}} / {{$payment_method->number}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="mobile">Your Mobile Number</label>
                        <input type="text" class="form-control" name="mobile">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-template-main"><i class="fa fa-user-md"></i> Subscribe</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="box" style="border-bottom: none;">
            <h2 class="text-uppercase">Payment Methods</h2>

            <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>

            <img src="/img/vodafon.png" class="col-md-6">
            <img src="/img/etislat.jpg" class="col-md-6">
            <img src="/img/orange.png" class="col-md-6">
            
        </div>
    </div>


</section>



</div>

@stop