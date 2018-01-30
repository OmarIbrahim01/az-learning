<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Welcome
Route::get('/welcome', function () {
    return view('welcome');
});


//library
Route::get('/', function () {
    return redirect('/library');
});

Route::get('/library',[
    'as' => 'library.index',
    'uses' => 'LibraryController@index'
]);

Route::get('/library/category/{name}',[
    'as' => 'library.category',
    'uses' => 'LibraryController@category'
]);

//Courses
Route::get('/library/{course}',[
    'as' => 'courses.show',
    'uses' => 'CoursesController@show'
]);

//Vodeo
Route::get('/library/{course}/{video}',[
    'as' => 'video.show',
    'uses' => 'VideosController@show'
]);


//User Subscriptions
Route::get('/subscription/create', [
    'as' => 'subscription.create',
    'uses' => 'SubscriptionController@create'
]);

Route::post('/subscription', [
    'as' => 'subscription.store',
    'uses' => 'SubscriptionController@store'
]);


//Manage Subscriptions (for SubAdmin)
Route::get('/manage_subscriptions', [
    'as' => 'subscription.manage',
    'uses' => 'SubscriptionController@manageIndex'
]);

Route::get('/manage_subscriptions/{sub_id}/activate', [
    'as' => 'subscription.activate',
    'uses' => 'SubscriptionController@activate'
]);







Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


// Route::get('/items/showall/{name}',[
//     'as' => 'items.show_all',
//     'uses' => 'ItemsController@showAll'
// ]);