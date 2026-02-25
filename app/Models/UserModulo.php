<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class UserModulo extends Pivot
{
    protected $table = 'user_modulo';

    public $incrementing = false;

    //public $timestamps = false;

    protected $fillable = [
        'user_id',
        'modulo_id',
    ];

}
