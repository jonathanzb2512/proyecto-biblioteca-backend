<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Prestamo;
use App\Models\Libro;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PrestamoController extends Controller
{
    /**
     * 📋 Listar todos los préstamos (incluye usuario, libro y autor)
     */
    public function index()
    {
        $prestamos = Prestamo::with(['usuario', 'libro.autor'])->get();
        return response()->json($prestamos);
    }

    /**
     * 📚 Registrar un nuevo préstamo
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'libro_id' => 'required|exists:libros,id',
            'cantidad' => 'required|integer|min:1',
            'fecha_prestamo' => 'required|date',
            'fecha_devolucion_estimada' => 'required|date|after_or_equal:fecha_prestamo',
            'estado' => 'required|string|in:prestado,devuelto,vencido',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $usuario = Auth::user();
        if (!$usuario) {
            return response()->json(['message' => 'Usuario no autenticado'], 401);
        }

        $libro = Libro::findOrFail($request->libro_id);

        // 🔥 Verificar stock disponible
        if ($libro->stock < $request->cantidad) {
            return response()->json(['message' => 'No hay suficiente stock disponible'], 400);
        }

        // 🔥 Restar cantidad al stock
        $libro->stock -= $request->cantidad;
        $libro->save();

        // Crear préstamo
        $prestamo = Prestamo::create([
            'usuario_id' => $usuario->id,
            'libro_id' => $libro->id,
            'cantidad' => $request->cantidad,
            'fecha_prestamo' => $request->fecha_prestamo,
            'fecha_devolucion_estimada' => $request->fecha_devolucion_estimada,
            'estado' => 'prestado',
        ]);

        return response()->json([
            'message' => 'Préstamo registrado exitosamente',
            'prestamo' => $prestamo,
        ], 201);
    }

    /**
     * 🔄 Actualizar el estado del préstamo (prestado/devuelto/vencido)
     */
    public function update(Request $request, $id)
    {
        $prestamo = Prestamo::findOrFail($id);
        $libro = Libro::findOrFail($prestamo->libro_id);

        $validator = Validator::make($request->all(), [
            'estado' => 'required|string|in:prestado,devuelto,vencido',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // ✅ Si se marca como "devuelto" y antes no lo estaba, sumar stock
        if ($request->estado === 'devuelto' && $prestamo->estado !== 'devuelto') {
            $libro->stock += $prestamo->cantidad;
            $libro->save();
        }

        $prestamo->estado = $request->estado;
        $prestamo->save();

        return response()->json([
            'message' => 'Estado actualizado correctamente',
            'prestamo' => $prestamo
        ]);
    }
}
