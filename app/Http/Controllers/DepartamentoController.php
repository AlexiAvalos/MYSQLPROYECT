<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Departamento;


class DepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from departamento");
        return view('tables.department ', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO departamento(departamento) VALUES (?)", [
                $request->departamento,
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        
        if ($sql == true) {
            return back()->with("Correcto", "Departamento registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Departamento registrado incorrectamente");
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
        $sql = DB::update("UPDATE departamento SET departamento=? where idDepartamento = ?", [
            $request->departamento,
            $id
        ]);
    
    } catch (\Throwable $th) {
        $sql = 0;
    }
    
    if ($sql == true) {
        return back()->with("Correcto", "Departamento actualizado correctamente");
    } else {
        return back()->with("Incorrecto", "Departamento actualizado incorrectamente");
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
            $sql = DB::delete("DELETE FROM departamento WHERE idDepartamento=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Departamento eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Departamento eliminado incorrectamente");
        }
    }
}
