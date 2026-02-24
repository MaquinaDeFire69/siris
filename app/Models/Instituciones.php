<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Instituciones extends Model
{
    protected $fillable = [
       'ente_publico_s3',
       'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
