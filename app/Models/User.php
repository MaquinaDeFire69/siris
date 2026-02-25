<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
     use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'es_activo',
        'tipo',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'created_at',
        'updated_at'
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class);
    }

    // Relaciones directas mediante las tablas pivot
    public function modulos(): BelongsToMany
    {
        return $this->belongsToMany(Modulo::class, 'user_modulo', 'user_id', 'modulo_id');
    }

    public function opciones(): BelongsToMany
    {
        return $this->belongsToMany(Opcion::class, 'user_opcion', 'user_id', 'opcion_id');
    }
}
