<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Cliente;


class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" SELECT c.*, d.distrito AS Nombre_Distrito, ec.estadoCivil AS Nombre_EstadoCivil
        FROM cliente c
        JOIN distrito d ON c.idDistrito = d.idDistrito
        JOIN estadocivil ec ON c.idEstadoCivil = ec.idEstadoCivil");
        return view('tables.client', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
{
    try {
        $sql = DB::insert("INSERT INTO cliente(idDistrito, idEstadoCivil, nombre, apellido, dui, numeroCelular, numeroFijo, correo, fechaNacimiento, ingresos, direccion) VALUES (?,?,?,?,?,?,?,?,?,?,?)", [
            $request->idDistrito,
            $request->idEstadoCivil,
            $request->nombre,
            $request->apellido,
            $request->dui,
            $request->numeroCelular,
            $request->numeroFijo,
            $request->correo,
            $request->fechaNacimiento,
            $request->ingresos,
            $request->direccion,
        ]);
        $distrito = DB::select("SELECT nombre FROM distrito WHERE idDistrito = ?", [$request->idDistrito]);
        $estadoCivil = DB::select("SELECT nombre FROM estado_civil WHERE idEstadoCivil = ?", [$request->idEstadoCivil]);

        // Mensaje de respuesta con los nombres de distrito y estado civil
        $response = "Cliente creado correctamente. Distrito: " . $distrito[0]->nombre . ", Estado Civil: " . $estadoCivil[0]->nombre;
    
    } catch (\Throwable $th) {
        $sql = 0;
    }
    if ($sql == true) {
        return back()->with("Correcto", "Cliente registrado correctamente");
    } else {
        return back()->with("Incorrecto", "Cliente registrado incorrectamente");
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
        $sql = DB::update('UPDATE cliente SET idDistrito = ?, idEstadoCivil = ?, nombre = ?, apellido = ?, dui = ?, numeroCelular = ?, numeroFijo = ?, correo = ?, fechaNacimiento = ?, ingresos = ?, direccion = ? WHERE idCliente = ?', [
            $request->idDistrito,
            $request->idEstadoCivil,
            $request->nombre,
            $request->apellido,
            $request->dui,
            $request->numeroCelular,
            $request->numeroFijo,
            $request->correo,
            $request->fechaNacimiento,
            $request->ingresos,
            $request->direccion,
            $id
        ]);
        $distrito = DB::select("SELECT nombre FROM distrito WHERE idDistrito = ?", [$request->idDistrito]);
        $estadoCivil = DB::select("SELECT nombre FROM estado_civil WHERE idEstadoCivil = ?", [$request->idEstadoCivil]);

        // Mensaje de respuesta con los nombres de distrito y estado civil
        $response = "Cliente modificado correctamente. Distrito: " . $distrito[0]->nombre . ", Estado Civil: " . $estadoCivil[0]->nombre;
        if ($sql == 0) {
            $sql = 1;
        }
    } catch (\Throwable $th) {
        $sql = 0;
    }
    if ($sql == true) {
        return back()->with("Correcto", "Cliente modificado correctamente");
    } else {
        return back()->with("Incorrecto", "Cliente modificado incorrectamente");
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
            $sql = DB::delete("DELETE FROM cliente WHERE idCliente=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Cliente eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Cliente de Facturación eliminado incorrectamente");
        }
    }
}
