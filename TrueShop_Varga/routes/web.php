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



Route::middleware(['auth'])->group(function () {
    Route::post('/', 'MainController@store');
    Route::get('products/create/', 'ProductController@create');
    Route::post('products/', 'ProductController@store');
    Route::get('/basket/', 'MainController@basket_only');
    Route::get('/basket/{product}', 'MainController@basket');
    Route::get('/basket/finish','MainController@basket_finish');
    Route::post('/order','MainController@order');
    Route::get('/basket/refresh/{product}', 'MainController@basket_refresh');
    Route::get('products/{product}/edit/', 'ProductController@edit');
    Route::put('products/{product}/', 'ProductController@update');
    Route::delete('products/{product}/', 'ProductController@destroy');
});

Route::get('/', 'MainController@index');
Route::get('products/', 'ProductController@index');
Route::post('products/filter/', 'ProductController@filter');
Route::get('products/{product}/', 'ProductController@show');

Auth::routes();