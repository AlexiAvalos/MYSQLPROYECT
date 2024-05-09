<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Pagos;

class PagosController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT p.*, c.nombre AS nombreCliente, tp.nombre AS nombreTipoPago
        FROM pagos p
        JOIN cuentas cu ON p.idCuenta = cu.idCuenta
        JOIN cliente c ON cu.idCliente = c.idCliente
        JOIN tipopagos tp ON p.idTipoPago = tp.idTipoPago");
        return view("tables.payments")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO pagos(idCuenta, idTipoPago, montoPago, fechaPago, descripcion, estadoPago) values(?,?,?,?,?,?)", [
                $request->idCuenta,
                $request->idTipoPago,
                $request->montoPago,
                $request->fechaPago,
                $request->descripcion,
                $request->estadoPago,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Pago fue registrado correctamente");
        } else {
            return back()->with("Incorrecto", "El Pago fue registrado incorrectamente");
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
            $sql = DB::update("UPDATE pagos SET idCuenta=?, idTipoPago=?, montoPago=?, fechaPago=?, descripcion=?, estadoPago=? WHERE idPago=?", [
                $request->idCuenta,
                $request->idTipoPago,
                $request->montoPago,
                $request->fechaPago,
                $request->descripcion,
                $request->estadoPago,
                $id,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Pago fue actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "El Pago fue actualizado incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM pagos WHERE idPago=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Pago fue eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "El Pago fue eliminado incorrectamente");
        }
    }
}