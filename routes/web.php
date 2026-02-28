<?php

use App\Http\Controllers\PenontonController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PenontonController::class, 'index'])->name('penonton.index');
Route::post('/validate-kode-penonton', [PenontonController::class, 'validateKodePenonton'])->name('penonton.validateKodePenonton');
Route::get('/form-penonton-ots', [PenontonController::class, 'form'])->name('penonton.form');
Route::post('/store-penonton-ots', [PenontonController::class, 'store'])->name('penonton.store');
Route::post('/check-in-penonton', [PenontonController::class, 'checkIn'])->name('penonton.checkIn');
Route::get('/table-penonton', [PenontonController::class, 'table'])->name('penonton.table');
Route::get('/datatable-penonton', [PenontonController::class, 'datatable'])->name('penonton.datatable');
Route::get('/import-penonton', [PenontonController::class, 'import'])->name('penonton.import');
Route::get('/counter-penonton', [PenontonController::class, 'counter'])->name('penonton.counter');
