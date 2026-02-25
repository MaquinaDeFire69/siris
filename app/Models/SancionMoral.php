<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SancionMoral extends Model
{
    use HasFactory;

    protected $table = 'sanciones_morales';

    protected $fillable = [
        'persona_moral_id',
        'nombre',
    ];

    public function personaMoral(): BelongsTo
    {
        return $this->belongsTo(PersonaMoral::class, 'persona_moral_id');
    }
}
