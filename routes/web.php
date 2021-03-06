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

Route::get('/', 'MainController@index')->name('welcome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => 'admin'], function () {
    Route::resource('post', 'PostController')->except([
        'show'
    ]);
    Route::resource('tag', 'TagController')->except([
        'show'
    ]);
});

Route::resource('post', 'PostController')->only([
   'show', 'index',
]);
Route::resource('tag', 'TagController')->only([
   'show',
]);

Route::get('/about', 'MainController@about')->name('about');