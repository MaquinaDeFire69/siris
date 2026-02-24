<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('servidores_publicos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('institucion_id')->constrained('instituciones');
            $table->integer('id_referencia_s3');
            $table->integer('ente_publico_s3');
            $table->date('fecha');
            $table->string('expediente');
            $table->string('nombre');
            $table->string('primerApellido');
            $table->string('segundoApellido')->nullable();
            $table->string('curp');
            $table->string('rfc');
            $table->string('sexo');
            $table->string('nombreNormatividad');
            $table->string('articulo');
            $table->string('fraccion');
            $table->date('fecha_resolucion_firme');
            $table->date('fecha_notificacion_firme');
            $table->integer('inhabilitacion_anios');
            $table->integer('inhabilitacion_meses');
            $table->integer('inhabilitacion_dias');
            $table->date('inhabilitacion_inicio');
            $table->date('inhabilitacion_final');
            $table->string('falta_cometida');
            $table->tinyInteger('tipo_falta');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('servidores_publicos');
    }
};
