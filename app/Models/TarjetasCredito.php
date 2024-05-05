<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TarjetasCredito extends Model
{
    protected $fillable = [
        'idCliente',
        'idCicloFacturacion',
        'numeroTarjeta',
        'limiteCredito',
        'saldoActual',
        'fechaEmision',
        'fechaVencimiento',

    ];
}
