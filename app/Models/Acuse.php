<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Acuses extends Model
{
    use HasFactory;

    protected $table = 'acuses';

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

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class);
    }

    public function periodo(): BelongsTo
    {
        return $this->belongsTo(Periodo::class);
    }
}
