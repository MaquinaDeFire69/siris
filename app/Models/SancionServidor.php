<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class SancionServidor extends Model
{
    use HasFactory;

    protected $table = 'sanciones_servidores';

    protected $fillable = [
        'servidor_publico_id',
        'nombre',
        'tipo_falta',
    ];

    public function servidorPublico(): BelongsTo
    {
        return $this->belongsTo(ServidorPublico::class, 'servidor_publico_id');
    }
}
