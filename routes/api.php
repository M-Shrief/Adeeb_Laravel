<?php

use App\Http\Controllers\ChosenVersesController;
use App\Http\Controllers\PoemController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use  App\Http\Controllers\PoetController;
use App\Http\Controllers\ProseController;

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

Route::get('/poets', [PoetController::class, 'index']);
Route::prefix('/poet')->group(function () {
    Route::post('/store', [PoetController::class, 'store']);
    Route::get('/{id}', [PoetController::class, 'indexOneWithPoemsAndChosenVersesAndProses']);
    Route::put('/{id}', [PoetController::class, 'update']);
    Route::delete('/{id}', [PoetController::class, 'destroy']);
});

Route::get('/poems', [PoemController::class, 'indexWithPoet']);
Route::get('/poems_intros', [PoemController::class, 'indexIntrosWithPoetName']);
Route::prefix('/poem')->group(function () {
    Route::post('/store', [PoemController::class, 'store']);
    Route::get('/{id}', [PoemController::class, 'indexOneWithPoet']);
    Route::put('/{id}', [PoemController::class, 'update']);
    Route::delete('/{id}', [PoemController::class, 'destroy']);
});

Route::get('/chosen_verses', [ChosenVersesController::class, 'indexWithPoetAndPoem']);
Route::prefix('/chosen_verse')->group(function () {
    Route::post('/store', [ChosenVersesController::class, 'store']);
    Route::get('/{id}', [ChosenVersesController::class, 'indexOneWithPoet']);
    Route::put('/{id}', [ChosenVersesController::class, 'update']);
    Route::delete('/{id}', [ChosenVersesController::class, 'destroy']);
});

Route::get('/proses', [ProseController::class, 'indexWithPoet']);
Route::prefix('/prose')->group(function () {
    Route::post('/store', [ProseController::class, 'store']);
    Route::get('/{id}', [ProseController::class, 'indexOneWithPoet']);
    Route::put('/{id}', [ProseController::class, 'update']);
    Route::delete('/{id}', [ProseController::class, 'destroy']);
});
