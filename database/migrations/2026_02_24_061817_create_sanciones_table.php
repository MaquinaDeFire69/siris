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
        //Tabla: sanciones_servidores_publicos
        Schema::create('sanciones_servidores', function (Blueprint $table) {
            $table->id();
            $table->foreignId('servidor_publico_id')->constrained('servidores_publicos');
            $table->string('nombre');
            $table->tinyInteger('tipo_falta');
            $table->timestamps();
        });

        // Tabla: sanciones_fisicas
        Schema::create('sanciones_fisicas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('persona_fisica_id')->constrained('personas_fisicas');
            $table->string('nombre');
            $table->timestamps();
        });

        // Tabla: sanciones_morales
        Schema::create('sanciones_morales', function (Blueprint $table) {
            $table->id();
            $table->foreignId('persona_moral_id')->constrained('personas_morales');
            $table->string('nombre');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sanciones');
    }
};
