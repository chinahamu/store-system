<?php

use Illuminate\Support\Facades\Route;

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
    return view('app');
});

Route::view('/', 'app');
Route::view('/profiles', 'app');
Route::view('/shifts', 'app');
Route::view('/menues', 'app');
Route::view('/ranking', 'app');
Route::view('/questionnaire', 'app');
Route::view('/access', 'app');

Route::get('/api/get_profiles','App\Http\Controllers\ProfileController@get_profiles');
Route::get('/api/get_menues','App\Http\Controllers\MenuController@get_menues');
Route::get('/api/get_cast_shifts','App\Http\Controllers\ShiftController@get_cast_shifts');
Route::get('/api/get_detail/{cast_id}','App\Http\Controllers\DetailController@get_detail');
Route::get('/api/get_shifts/{cast_id}','App\Http\Controllers\DetailController@get_shifts');
Route::get('/api/get_options/{cast_id}','App\Http\Controllers\DetailController@get_options');
Route::get('/api/get_answers/{cast_id}','App\Http\Controllers\DetailController@get_answers');
Route::get('/api/get_ranking','App\Http\Controllers\RankingController@get_ranking');
Route::post('/api/send_answer','App\Http\Controllers\QuestionnaireController@send_answer');
