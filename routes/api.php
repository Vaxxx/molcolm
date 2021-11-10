<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
/**
 * register, login and user APIs
 */
Route::post('api_register' , [\App\Http\Controllers\Api\AuthController::class,'apiRegister'])->name('apiRegister');
Route::post('api_login', [\App\Http\Controllers\Api\AuthController::class,'apiLogin'])->name('apiLogin');
Route::middleware('auth:api')->group(function(){
    Route::get('user', [\App\Http\Controllers\Api\AuthController::class,'authenticatedUserDetails']);
});
