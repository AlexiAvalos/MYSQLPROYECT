<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Cuentas;


class CuentasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos = DB::select("SELECT c.*, tc.TipoCuenta AS nombreTipoCuenta, cli.nombre AS nombreCliente
        FROM cuentas c
        JOIN tipoCuentas tc ON c.idTipoCuenta = tc.idTipoCuenta
        JOIN cliente cli ON c.idCliente = cli.idCliente");

        return view('tables.accounts', ['datos' => $datos]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql=DB::insert("insert into cuentas(idTipoCuenta, idCliente, fechaApertura, credito, estado) values (?,?,?,?,?)", [
                $request->idTipoCuenta,
                $request->idCliente,
                $request->fechaApertura,
                $request->credito,
                $request->estado,
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Cuenta registrada correctamente");
        } else {
            return back()->with("Incorrecto", "Cuenta registrada incorrectamente");
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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $sql = DB::update('UPDATE cuentas SET idTipoCuenta = ?, idCliente = ?, fechaApertura = ?, credito = ?, estado = ? WHERE idCuenta = ?', [
                $request->idTipoCuenta,
                $request->idCliente,
                $request->fechaApertura,
                $request->credito,
                $request->estado,
                $id
            ]);
            if ($sql == 0) {
                $sql = 1;
            }
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Cuenta modificada correctamente");
        } else {
            return back()->with("Incorrecto", "Cuenta modificada incorrectamente");
        }
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM cuentas WHERE idCuenta=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Cuenta eliminada correctamente");
        } else {
            return back()->with("Incorrecto", "Cuenta eliminada incorrectamente");
        }
    }
}
