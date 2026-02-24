<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Acuses extends Model
{
    protected $fillable = [
        'institucion_id',
        'periodo_id',
        'descripcion',
        'validacion_acuse',
        'cantidad_registros'
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
