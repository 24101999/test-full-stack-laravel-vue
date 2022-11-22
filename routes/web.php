<?php

use App\Http\Controllers\HomeController;
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

Route::get('/api', [HomeController::class, 'index']);

Route::get('/delete{id?}', [HomeController::class, 'delete']);
// Route::get('/update{id?}', [HomeController::class, 'update']);
// Route::post('/update{id?}', [HomeController::class, 'update']);
Route::get('/update{id?}', [HomeController::class, 'update']);
Route::get('/up{id?}', [HomeController::class, 'up']);
Route::put('/up{id?}', [HomeController::class, 'up'])->name('up');
Route::any('/cep', function () {
    return view('cep');
});


Route::any('/', [HomeController::class, 'insert']);