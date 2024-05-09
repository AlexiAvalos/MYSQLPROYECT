<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NetworkTrafficController extends Controller
{
    public function getIncomingTraffic()
    {
        // Ejecutar el script de PowerShell
        $scriptPath = base_path('scripts/get_network_traffic.ps1');
        $incomingTrafficBytes = exec("powershell.exe -File $scriptPath");

        // Convertir bytes a bits por segundo
        $incomingTrafficBitsPerSecond = $incomingTrafficBytes * 8;

        return response()->json(['incoming_traffic' => $incomingTrafficBitsPerSecond]);
    }
}
