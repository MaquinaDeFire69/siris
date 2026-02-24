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
        Schema::create('acuses', function (Blueprint $table) {
            $table->id();
            $table->foreignId('institucion_id')->constrained('instituciones');
            $table->foreignId('periodo_id')->constrained('periodos');
            $table->string('descripcion');
            $table->string('validacion_acuse');
            $table->integer('cantidad_registros');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('acuses');
    }
};
