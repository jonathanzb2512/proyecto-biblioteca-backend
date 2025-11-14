<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Usuario extends Authenticatable
{
    use HasApiTokens, Notifiable;

    protected $table = 'usuarios'; // 👈 tu tabla personalizada

    protected $fillable = [
        'nombre',
        'email',
        'password',
        'role',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    // 👇 Para mantener compatibilidad con el campo "name" en Laravel
    public function getNameAttribute()
    {
        return $this->nombre;
    }
}
