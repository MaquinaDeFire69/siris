<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SancionFisica extends Model
{
    use HasFactory;

    protected $table = 'sanciones_fisicas';

    protected $fillable = [
        'persona_fisica_id',
        'nombre',
    ];

    public function personaFisica(): BelongsTo
    {
        return $this->belongsTo(PersonaFisica::class, 'persona_fisica_id');
    }
}
