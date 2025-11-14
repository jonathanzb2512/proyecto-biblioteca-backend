<?php

namespace App\Http\Controllers;

use App\Models\Autor;
use Illuminate\Http\Request;

class AutorController extends Controller
{
    public function index()
    {
        return response()->json(Autor::all(), 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:100',
            'apellidos' => 'nullable|string|max:100',
            'biografia' => 'nullable|string|max:250',
        ]);

        $autor = Autor::create([
            'nombre' => $request->nombre,
            'apellidos' => $request->apellidos,
            'biografia' => $request->biografia,
        ]);

        return response()->json([
            'message' => 'Autor creado con éxito',
            'autor' => $autor,
        ], 201);
    }

    public function show($id)
    {
        $autor = Autor::findOrFail($id);
        return response()->json($autor);
    }

    public function update(Request $request, $id)
    {
        $autor = Autor::findOrFail($id);

        $autor->update($request->all());

        return response()->json([
            'message' => 'Autor actualizado con éxito',
            'autor' => $autor,
        ]);
    }

    public function destroy($id)
    {
        Autor::destroy($id);
        return response()->json(['message' => 'Autor eliminado correctamente']);
    }
}
