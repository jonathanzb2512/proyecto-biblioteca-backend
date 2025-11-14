<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\AutorController;
use App\Http\Controllers\LibroController; // ← ESTA ES LA CLAVE
use App\Http\Controllers\PrestamoController;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', [AuthController::class, 'user']);
    Route::post('/logout', [AuthController::class, 'logout']);
    
    Route::apiResource('autores', AutorController::class);
    
    Route::post('/libros', [LibroController::class, 'store']);
    Route::get('/libros', [LibroController::class, 'index']);

    // ✅ Préstamos
    Route::post('/prestamos', [PrestamoController::class, 'store']);
    Route::get('/prestamos', [PrestamoController::class, 'index']);
    Route::put('/prestamos/{id}', [PrestamoController::class, 'update']); // ⚠️ IMPORTANTE ESTA LÍNE
});