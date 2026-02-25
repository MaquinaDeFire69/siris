<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Periodos extends Model
{
    use HasFactory;

    protected $table = 'periodos';

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

    public function acuses(): HasMany
    {
        return $this->hasMany(Acuse::class);
    }

}
