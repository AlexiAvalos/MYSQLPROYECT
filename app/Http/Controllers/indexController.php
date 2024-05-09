<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;


class IndexController extends Controller
{
    public function index()
    {

        return view('index');
    }


    public function checkConnection()
    {
        try {
            DB::connection()->getPdo();
            $connected = true; // La conexión está activa
        } catch (\Exception $e) {
            $connected = false; // La conexión ha fallado
        }

        return response()->json(['connected' => $connected]);
    }
}






