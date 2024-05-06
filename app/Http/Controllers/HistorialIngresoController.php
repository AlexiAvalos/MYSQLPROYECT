<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\HistorialIngreso;


class HistorialIngresoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select("SELECT h.*, c.nombre AS nombreCliente
        FROM historialingreso h
        JOIN cuentas cu ON h.idCuenta = cu.idCuenta
        JOIN cliente c ON cu.idCliente = c.idCliente");
        return view('tables.historyIncome ', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
{
    try {
        $sql = DB::insert("INSERT INTO historialingreso(idCuenta, fechaHoraIngreso, fechaHoraSalida, dispositivo) VALUES (?, ?, ?, ?)", [
            $request->idCuenta,
            $request->fechaHoraIngreso,
            $request->fechaHoraSalida,
            $request->dispositivo,
        ]);

    } catch (\Throwable $th) {
        $sql = 0;
    }

    if ($sql == true) {
        return back()->with("Correcto", "Registro de ingreso registrado correctamente");
    } else {
        return back()->with("Incorrecto", "Registro de ingreso registrado incorrectamente");
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
            $sql = DB::update("UPDATE historialingreso SET idCuenta=?, fechaHoraIngreso=?, fechaHoraSalida=?, dispositivo=? where idIngreso = ?", [
                $request->idCuenta,
                $request->fechaHoraIngreso,
                $request->fechaHoraSalida,
                $request->dispositivo,
                $id
            ]);
    
        } catch (\Throwable $th) {
            $sql = 0;
        }
    
        if ($sql == true) {
            return back()->with("Correcto", "Registro de ingreso actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "Registro de ingreso actualizado incorrectamente");
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
        $sql = DB::delete("DELETE FROM historialingreso WHERE idIngreso=$id");
    } catch (\Throwable $th) {
        $sql = 0;
    }
    if ($sql == true) {
        return back()->with("Correcto", "Registro de ingreso eliminado correctamente");
    } else {
        return back()->with("Incorrecto", "Registro de ingreso eliminado incorrectamente");
    }
}

}
