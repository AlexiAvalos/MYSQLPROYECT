<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TipoCuentas extends Model
{
    protected $fillable = [
        'TipoCuenta',
        'Descripcion',
        'Estado',

    ];
}
