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
        Schema::create('personas_fisicas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('institucion_id')->constrained('instituciones');
            $table->timestamps();
        });

        Schema::create('personas_morales', function (Blueprint $table) {
            $table->id();
            $table->foreignId('institucion_id')->constrained('instituciones');
            $table->string('nombreRazonSocial');
            $table->string('rfc',13);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('personas_fisicas');
    }
};
