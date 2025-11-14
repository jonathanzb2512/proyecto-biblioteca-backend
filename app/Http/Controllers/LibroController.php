<?php

namespace App\Http\Controllers;

use App\Models\Libro;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LibroController extends Controller
{
    /**
     * 📋 Listar todos los libros (con el autor)
     */
    public function index()
    {
        $libros = Libro::with('autor')->get();
        return response()->json($libros);
    }

    /**
     * ➕ Registrar un nuevo libro
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'titulo' => 'required|string|max:255',
            'isbn' => 'required|string|max:20|unique:libros,isbn',
            'anio_publicacion' => 'nullable|digits:4',
            'stock' => 'required|integer|min:0',
            'autor_id' => 'required|exists:autores,id',
        ]);

        $libro = Libro::create($validated);

        return response()->json([
            'message' => 'Libro registrado exitosamente',
            'libro' => $libro,
        ], 201);
    }

    /**
     * 🔄 Actualizar el stock de un libro
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'stock' => 'required|integer|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $libro = Libro::findOrFail($id);
        $libro->stock = $request->stock;
        $libro->save();

        return response()->json([
            'message' => 'Stock actualizado correctamente',
            'libro' => $libro
        ]);
    }

    /**
     * ❌ Eliminar un libro
     */
    public function destroy($id)
    {
        $libro = Libro::findOrFail($id);
        $libro->delete();

        return response()->json(['message' => 'Libro eliminado correctamente']);
    }
}
