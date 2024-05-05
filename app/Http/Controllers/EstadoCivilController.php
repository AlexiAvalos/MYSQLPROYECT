<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\EstadoCivil;


class EstadoCivilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos=DB::select(" select * from estadocivil");
        return view('tables.maritalStatus ', ['datos' => $datos]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            $sql = DB::insert("INSERT INTO estadocivil(estadoCivil) VALUES (?)", [
                $request->estadoCivil,
            ]);
        
        } catch (\Throwable $th) {
            $sql = 0;
        }
        
        if ($sql == true) {
            return back()->with("Correcto", "Estado Civil registrado correctamente");
        } else {
            return back()->with("Incorrecto", "Estado Civil registrado incorrectamente");
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
        {
            try {
                $sql = DB::update("update estadocivil set estadoCivil=? where idEstadoCivil = ?", [
                    $request->estadoCivil,
                    $id
                ]);
            
            } catch (\Throwable $th) {
                $sql = 0;
            }
            
            if ($sql == true) {
                return back()->with("Correcto", "Estado Civil registrado correctamente");
            } else {
                return back()->with("Incorrecto", "Estado Civil registrado incorrectamente");
            }
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
            $sql = DB::delete("DELETE FROM estadocivil WHERE idEstadoCivil=$id");
        } catch (\Throwable $th) {
            $sql = 0;
        }
        if ($sql == true) {
            return back()->with("Correcto", "Estado Civil eliminado correctamente");
        } else {
            return back()->with("Incorrecto", "Estado Civil eliminado incorrectamente");
        }
    }
}
