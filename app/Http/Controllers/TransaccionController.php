<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Transaccion;

class TransaccionController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT * FROM transacciones");
        return view("tables.Transactions")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO transacciones(idPrestamo, idCliente, fechaPrestamo, fechaVencimiento, creditoPrestado, creditoRecaudado, intereses, estado) values(?,?,?,?,?,?,?,?)", [
                $request->idTransaccion,
                $request->idCuentaEmisor,
                $request->idCuentaDestino,
                $request->idTipoTransaccion,
                $request->fechaTransaccion,
                $request->descripcion,
                $request->monto,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Transaccion fue registrada correctamente");
        } else {
            return back()->with("Incorrecto", "La Transaccion fue registrada incorrectamente");
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
            $sql = DB::update("UPDATE transacciones SET idPrestamo=?, idCliente=?, fechaPrestamo=?, fechaVencimiento=?, creditoPrestado=?, creditoRecaudado=?, intereses=?, estado=?", [
                $request->idTransaccion,
                $request->idCuentaEmisor,
                $request->idCuentaDestino,
                $request->idTipoTransaccion,
                $request->fechaTransaccion,
                $request->descripcion,
                $request->monto,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql) {
            return back()->with("Correcto", "La Transaccion fue actualizada correctamente");
        } else {
            return back()->with("Incorrecto", "La Transaccion fue actualizada incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM transacciones WHERE idTransaccion=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Transaccion fue eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "La Transaccion fue eliminado incorrectamente");
        }
    }
}