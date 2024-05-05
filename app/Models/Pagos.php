<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pagos extends Model
{
    protected $fillable = [
        'idCuenta',
        'montoPago',
        'fechaPago',
        'descripcion',
        'estadoPago',

    ];
}
