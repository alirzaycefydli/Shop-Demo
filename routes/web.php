<?php
use Illuminate\Support\Facades\Route;

Route::get('shop/{slug?}','Front\ShopController@index')->name('front.shop');
Route::get('/','Front\HomeController@index')->name('front.home');
Route::get('home','Front\HomeController@index')->name('front.home');
Route::get('about_us','Front\AboutUsController@index')->name('front.about_us');
Route::get('contact_us','Front\ContactUsController@index')->name('front.contact_us');
Route::get('categories/{name}/{id}','Front\CategoryController@index')->name('front.categories.detail');
Route::get('products/{title}/{id}','Front\CategoryController@products')->name('front.products');
Route::get('{title}/{slug}','Front\CategoryController@productDetail')->name('front.productDetail');
Route::get('cart','Front\CartController@index')->name('front.cart');
Route::post('cart','Front\CartController@store')->name('front.store');
Route::delete('cart/{product}','Front\CartController@remove')->name('front.remove');
Route::get('checkout','Front\CheckoutController@index')->name('front.checkout');
Route::get('search','Front\ShopController@search')->name('front.search');