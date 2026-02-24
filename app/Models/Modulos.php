<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Modulos extends Model
{
    protected $fillable = [
        'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
