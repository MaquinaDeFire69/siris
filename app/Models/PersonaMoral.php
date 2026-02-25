<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PersonaMoral extends Model
{
    use HasFactory;

    protected $table = 'personas_morales';

    protected $fillable = [
        'institucion_id',
        'nombreRazonSocial',
        'rfc',
    ];

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class);
    }

    public function sanciones(): HasMany
    {
        return $this->hasMany(SancionMoral::class, 'persona_moral_id');
    }
}
