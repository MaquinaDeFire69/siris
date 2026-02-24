<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AcusesApi extends Model
{
    protected $fillable = [
        'client_id',
        'client_secret',
        'user_api',
        'password_api',
        'instituciones_id'
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
}
