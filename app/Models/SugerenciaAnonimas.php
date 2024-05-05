<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SugerenciaAnonimas extends Model
{
    protected $fillable = [
        'idSugerencia',
        'asunto',
        'descripcion',

    ];
}
