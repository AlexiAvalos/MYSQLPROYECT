<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Municipio;


class MunicipioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from municipio");
        return view("tables.municipality")->with("datos", $datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql=DB::insert(" INSERT INTO municipio(idDepartamento, municipio) values(?,?)", [
                $request->idDepartamento,
                $request->municipio,
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Municipio registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Municipio registrado incorrectamente");
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
            $sql=DB::update(" UPDATE municipio SET idDepartamento=?, municipio=? where idMunicipio =?", [
                $request->idDepartamento,
                $request->municipio,
                $id
            ]);
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Municipio actualizado correctamente");
        } else {
            return back()->with("Incorrecto", "Municipio actualizado incorrectamente");
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
            $sql = DB::delete("delete from municipio where idMunicipio=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if($sql == true ) {
            return back()->with("Correcto", "Municipio eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Municipio eliminado incorrectamente");
        }
    }
}
