<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Opciones extends Model
{
    protected $fillable = [
        'modulo_id',
        'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
