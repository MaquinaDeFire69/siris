<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PersonaFisica extends Model
{
    use HasFactory;

    protected $table = 'personas_fisicas';

    protected $fillable = [
        'institucion_id',
    ];

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class);
    }

    public function sanciones(): HasMany
    {
        return $this->hasMany(SancionFisica::class, 'persona_fisica_id');
    }
}
