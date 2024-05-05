<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Distrito;


class DistritoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from distrito");
        return view('tables.district ', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO distrito(idMunicipio, distrito) VALUES (?, ?)", [
                $request->idMunicipio,
                $request->distrito,
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        
        if ($sql == true) {
            return back()->with("Correcto", "Distrito registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Distrito registrado incorrectamente");
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
            $sql = DB::update("UPDATE distrito SET idMunicipio = ?, distrito = ? WHERE idDistrito = ?", [
                $request->idMunicipio,
                $request->distrito,
                $id
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        
        if ($sql == true) {
            return back()->with("Correcto", "Distrito actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "Distrito no pudo ser actualizado");
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
            $sql = DB::delete("DELETE FROM distrito WHERE idDistrito=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Distrito eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Distrito eliminado incorrectamente");
        }
    }
}
