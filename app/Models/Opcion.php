<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Opciones extends Model
{
    use HasFactory;

    protected $table = 'opciones';

    protected $fillable = [
        'modulo_id',
        'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    public function modulo(): BelongsTo
    {
        return $this->belongsTo(Modulo::class);
    }

    public function users(): BelongsToMany
    {
        return $this->belongsToMany(User::class, 'user_opcion', 'opcion_id', 'user_id');
    }
}
