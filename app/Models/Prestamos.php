<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prestamos extends Model
{
    protected $fillable = [
        'idCliente',
        'fechaPrestamo',
        'fechaVencimiento',
        'creditoPrestado',
        'creditoRecaudado',
        'intereses',
        'estado',

    ];
}
