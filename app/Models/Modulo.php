<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Modulos extends Model
{
    use HasFactory;

    protected $table = 'modulos';

    protected $fillable = [
        'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    public function opciones(): HasMany
    {
        return $this->hasMany(Opcion::class);
    }

    public function users(): BelongsToMany
    {
        return $this->belongsToMany(User::class, 'user_modulo', 'modulo_id', 'user_id');
    }
}
