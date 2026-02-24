<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Periodos extends Model
{
    protected $fillable = [
        'descripcion',
        'fecha_inicial',
        'fecha_final',
        'es_activo'
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
