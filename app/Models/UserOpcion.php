<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class UserOpcion extends Pivot
{
    protected $table = 'user_opcion';

    //public $incrementing = false;
    //public $timestamps = false;

    protected $fillable = [
        'user_id',
        'opcion_id',
    ];
}
