<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\TipoPagos;

class TipoPagosController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT * FROM tipopagos");
        return view("tables.TypePayments")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO tipopagos(idTipoPago, nombre, descripcion) values(?,?,?)", [
                $request->idTipoPago,
                $request->nombre,
                $request->descripcion,
                
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Pago fue registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Pago fue registrado incorrectamente");
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
    public function update(Request $request)
    {
        try {
            $sql = DB::update("UPDATE tipopagos SET idTipoPago=?, nombre=?, descripcion=?", [
                $request->idTipoPago,
                $request->nombre,
                $request->descripcion,
                
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Pago fue actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Pago fue actualizado incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM tipopagos WHERE idTipoPago=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "Tipo Pago fue eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo Pago fue eliminado incorrectamente");
        }
    }
}