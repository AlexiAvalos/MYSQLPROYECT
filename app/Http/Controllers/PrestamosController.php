<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Prestamos;

class PrestamosController extends Controller
{
    public function index()
    {
        $datos = DB::select("SELECT pr.*, c.nombre AS nombreCliente
        FROM prestamos pr
        JOIN cliente c ON pr.idCliente = c.idCliente");
        return view("tables.loans")->with("datos", $datos);
    }

    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO prestamos(idCliente, fechaPrestamo, fechaVencimiento, creditoPrestado, creditoRecaudado, intereses, estado) values(?,?,?,?,?,?,?)", [
                $request->idCliente,
                $request->fechaPrestamo,
                $request->fechaVencimiento,
                $request->creditoPrestado,
                $request->creditoRecaudado,
                $request->intereses,
                $request->estado,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Prestamo fue registrado correctamente");
        } else {
            return back()->with("Incorrecto", "El Prestamo fue registrado incorrectamente");
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
            $sql = DB::update("UPDATE prestamos SET idCliente=?, fechaPrestamo=?, fechaVencimiento=?, creditoPrestado=?, creditoRecaudado=?, intereses=?, estado=? where idPrestamo = ?", [
                $request->idCliente,
                $request->fechaPrestamo,
                $request->fechaVencimiento,
                $request->creditoPrestado,
                $request->creditoRecaudado,
                $request->intereses,
                $request->estado,
                $id
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Prestamo fue actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "El Prestamo fue actualizado incorrectamente");
        }
    }

    public function destroy($id)
    {
        try {
            $sql = DB::delete("DELETE FROM prestamos WHERE idPrestamo=?", [$id]);
        } catch (\Throwable $th) {
            $sql = 0;
        }

        if ($sql) {
            return back()->with("Correcto", "El Prestamo fue eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "El Prestamo fueeliminado incorrectamente");
        }
    }
}