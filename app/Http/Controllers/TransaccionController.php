<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Transaccion;

class TransaccionController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT t.*, cliEmisor.nombre AS cuentaEmisor, cliDestino.nombre AS cuentaDestino, tt.nombre AS tipoTransaccion
        FROM transacciones t
        JOIN cuentas cEmisor ON t.idCuentaEmisor = cEmisor.idCuenta
        JOIN cuentas cDestino ON t.idCuentaDestino = cDestino.idCuenta
        JOIN cliente cliEmisor ON cEmisor.idCliente = cliEmisor.idCliente
        JOIN cliente cliDestino ON cDestino.idCliente = cliDestino.idCliente
        JOIN tipotransacciones tt ON t.idTipoTransaccion = tt.idTipoTransaccion");
        return view("tables.Transactions")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO transacciones(idCuentaEmisor, idCuentaDestino, idTipoTransaccion, fechaTransaccion, descripcion, monto) values(?,?,?,?,?,?)", [
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
            $sql = DB::update("UPDATE transacciones SET idCuentaEmisor=?, idCuentaDestino=?, idTipoTransaccion=?, fechaTransaccion=?, descripcion=?, monto=? where idTransaccion = ?", [
                $request->idCuentaEmisor,
                $request->idCuentaDestino,
                $request->idTipoTransaccion,
                $request->fechaTransaccion,
                $request->descripcion,
                $request->monto,
                $id
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