<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CicloFacturacion extends Model
{
    protected $fillable = [
        'fechaInicio',
        'fechaFin',
        'intereses',
    ];

}
