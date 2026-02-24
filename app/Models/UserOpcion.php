<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserOpcion extends Model
{
    protected $fillable = [
        'user_id',
        'opcion_id',
    ];
}
