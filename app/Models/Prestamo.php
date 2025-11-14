<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prestamo extends Model
{
    use HasFactory;

    protected $fillable = [
        'usuario_id',
        'libro_id',
        'cantidad', // 👈 nuevo campo
        'fecha_prestamo',
        'fecha_devolucion_estimada',
        'fecha_devolucion_real',
        'estado',
    ];

    // Relaciones (opcional, útil si luego quieres traer info con join)
    public function usuario()
    {
        return $this->belongsTo(User::class, 'usuario_id');
    }

    public function libro()
    {
        return $this->belongsTo(Libro::class, 'libro_id');
    }
}
