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

Route::get('/library/{course}',[
    'as' => 'courses.show',
    'uses' => 'CoursesController@show'
]);


Route::get('/library/{course}/{video}',[
    'as' => 'video.show',
    'uses' => 'VideosController@show'
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