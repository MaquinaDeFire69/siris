<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Instituciones extends Model
{
    use HasFactory;

    protected $table = 'instituciones';

    protected $fillable = [
       'ente_publico_s3',
       'nombre',
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];

    public function users(): HasMany
    {
        return $this->hasMany(User::class);
    }

    public function acuses(): HasMany
    {
        return $this->hasMany(Acuse::class);
    }

    public function accesosApis(): HasMany
    {
        return $this->hasMany(AccesoApi::class, 'instituciones_id');
    }
    
    public function servidoresPublicos(): HasMany
    {
        return $this->hasMany(ServidorPublico::class);
    }
}
