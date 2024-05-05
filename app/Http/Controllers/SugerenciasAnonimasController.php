<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\SugerenciaAnonimas;

class SugerenciasAnonimasController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT * FROM sugerenciasanonimas");
        return view("tables.anonymoussuggestions")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO sugerenciasanonimas(asunto, descripcion) values(?,?)", [
                $request->asunto,
                $request->descripcion,
                
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Sugerencia Anonima fue registrado correctamente");
        } else {
            return back()->with("Incorrecto", "La Sugerencia Anonima fue registrado incorrectamente");
        }
    }
      /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }
    public function update(Request $request, $id)
    {
        try {
            $sql = DB::update("UPDATE sugerenciasanonimas SET asunto=?, descripcion=? where idSugerencia = ?", [
                $request->asunto,
                $request->descripcion,
                $id
                
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Sugerencia Anonima fue actualizada correctamente");
        } else {
            return back()->with("Incorrecto", "La Sugerencia Anonima fue actualizada incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM sugerenciasanonimas WHERE idSugerencia=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Sugerencia Anonima fue eliminada correctamente");
        } else {
            return back()->with("Incorrecto", "La Sugerencia Anonima fue eliminada incorrectamente");
        }
    }
}