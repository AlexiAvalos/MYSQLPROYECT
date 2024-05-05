<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\CicloFacturacion;


class CicloFacturacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from ciclofacturacion");
        return view('tables.billingCycle', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql = DB::insert("insert into ciclofacturacion(fechaInicio, fechaFin, intereses) values (?,?,?)", [
                $request->fechaInicio,
                $request->fechaFin,
                $request->intereses,
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Ciclo de Facturacion registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Ciclo de Facturacion registrado incorrectamente");
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
            $sql = DB::update('UPDATE ciclofacturacion SET fechaInicio = ?, fechaFin = ?, intereses = ? WHERE idCicloFacturacion = ?', [
                $request->fechaInicio,
                $request->fechaFin,
                $request->intereses,
                $id
            ]);
            if ($sql == 0) {
                $sql = 1;
            }
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Ciclo de Facturación modificado correctamente");
        } else {
            return back()->with("Incorrecto", "Ciclo de Facturación modificado incorrectamente");
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
            $sql = DB::delete("DELETE FROM ciclofacturacion WHERE idCicloFacturacion=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Ciclo de Facturación eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Ciclo de Facturación eliminado incorrectamente");
        }
    }
}
