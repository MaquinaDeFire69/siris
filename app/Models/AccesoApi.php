<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class AccesoApi extends Model
{
    use HasFactory;

    protected $table = 'accesos_apis';
    
    protected $fillable = [
        'client_id',
        'client_secret',
        'user_api',
        'password_api',
        'instituciones_id'
    ];

    protected $hidden = [
        'client_secret',
        'password_api',
    ];

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class, 'instituciones_id');
    }
}
