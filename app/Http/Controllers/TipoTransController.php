<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\TipoTrans;

class TipoTransController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT * FROM tipotransacciones");
        return view("tables.TypeTrans")->with("datos", $datos);
    }
     
    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO tipotransacciones(nombre, descripcion, comision) values(?,?,?)", [
                $request->nombre,
                $request->descripcion,
                $request->comision,
                
                
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Transaccion fue registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Transaccion  fue registrado incorrectamente");
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
        $sql = DB::update("UPDATE tipotransacciones SET nombre=?, descripcion=?, comision=? where idTipoTransaccion = ?", [
                $request->nombre,
                $request->descripcion,
                $request->comision,
                $id
            
            ]);
            if ($sql==0) {
                $sql = 1;
            }
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Transaccion fue actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Transaccion  fue actualizado incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM tipotransacciones WHERE idTipoTransaccion=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Transaccion  fue eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Transaccion  fue eliminado incorrectamente");
        }
    }
}