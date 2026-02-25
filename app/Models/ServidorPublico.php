<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ServidorPublico extends Model
{
    Use HasFactory;

   protected $table = 'servidores_publicos';

    protected $fillable = [
        'institucion_id',
        'id_referencia_s3',
        'ente_publico_s3',
        'fecha',
        'expediente',
        'nombre',
        'primerApellido',
        'segundoApellido',
        'curp',
        'rfc',
        'sexo',
        'nombreNormatividad',
        'articulo',
        'fraccion',
        'fecha_resolucion_firme',
        'fecha_notificacion_firme',
        'inhabilitacion_anios',
        'inhabilitacion_meses',
        'inhabilitacion_dias',
        'inhabilitacion_inicio',
        'inhabilitacion_final',
        'falta_cometida',
        'tipo_falta',
    ];

    protected $casts = [
        'fecha' => 'date',
        'fecha_resolucion_firme' => 'date',
        'fecha_notificacion_firme' => 'date',
        'inhabilitacion_inicio' => 'date',
        'inhabilitacion_final' => 'date',
    ];

    public function institucion(): BelongsTo
    {
        return $this->belongsTo(Institucion::class);
    }

    public function sanciones(): HasMany
    {
        return $this->hasMany(SancionServidor::class, 'servidor_publico_id');
    }
}
