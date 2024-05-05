<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\TipoCuentas;


class TipoCuentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from tipocuentas ");
        return view("tables.typeOfAccounts")->with("datos", $datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql=DB::insert(" insert into tipoCuentas(TipoCuenta, Descripcion, Estado) values(?,?,?)", [
                $request->tipoCuenta,
                $request->descripcion,
                $request->estado,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Tipo de cuenta registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo de cuenta registrado incorrectamente");
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
            $sql=DB::update('update tipoCuentas set TipoCuenta = ?, Descripcion = ?, Estado = ? where idTipoCuenta = ?', [
                $request->tipoCuenta,
                $request->descripcion,
                $request->estado,
                $request->idTipoCuenta
            ]);
            if ($sql==0) {
                $sql = 1;
            }
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if($sql == true ) {
            return back()->with("Correcto", "Tipo de cuenta modificado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo de cuenta modificado incorrectamente");
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
            $sql = DB::delete("delete from tipoCuentas where idTipoCuenta=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if($sql == true ) {
            return back()->with("Correcto", "Tipo de cuenta eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Tipo de cuenta eliminado incorrectamente");
        }
    }
}
