<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\TarjetasCredito;

class TarjetasCreditoController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT * FROM tarjetascredito");
        return view("tables.creditCards")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO tarjetascredito(idCliente, idCicloFacturacion, numeroTarjeta, limiteCredito, saldoActual, fechaEmision, fechaVencimiento) values(?,?,?,?,?,?,?)", [
                $request->idCliente,
                $request->idCicloFacturacion,
                $request->numeroTarjeta,
                $request->limiteCredito,
                $request->saldoActual,
                $request->fechaEmision,
                $request->fechaVencimiento,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Tarjeta fue registrada correctamente");
        } else {
            return back()->with("Incorrecto", "La Tarjeta fue registrada incorrectamente");
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
            $sql = DB::update("UPDATE tarjetascredito SET idCliente=?, idCicloFacturacion=?, numeroTarjeta=?, limiteCredito=?, saldoActual=?, fechaEmision=?, fechaVencimiento=? where idCredito = ?", [
                $request->idCliente,
                $request->idCicloFacturacion,
                $request->numeroTarjeta,
                $request->limiteCredito,
                $request->saldoActual,
                $request->fechaEmision,
                $request->fechaVencimiento,
                $id
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Tarjeta fue actualizada correctamente");
        } else {
            return back()->with("Incorrecto", "La Tarjeta fue actualizada incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM tarjetascredito WHERE idCredito=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "La Tarjeta fue eliminada correctamente");
        } else {
            return back()->with("Incorrecto", "La Tarjeta fue eliminada incorrectamente");
        }
    }
}