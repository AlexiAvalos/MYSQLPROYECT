<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistorialIngreso extends Model
{
    protected $fillable = [
        'idCuenta',
        'fechaHoraIngreso',
        'fechaHoraSalida',
        'dispositivo',
    ];
}

