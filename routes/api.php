<?php

use App\Http\Controllers\ApiController;
use App\Http\Controllers\LoginController;
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


Route::prefix('v1')->middleware('auth:api')->group(function () {
    Route::post('register', [ApiController::class, 'register']);
    Route::post('package', [ApiController::class, 'package']);
    Route::get('check/{token}', [ApiController::class, 'check']);
});

Route::post('login', [LoginController::class, 'login']);
