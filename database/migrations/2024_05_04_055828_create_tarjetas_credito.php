<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tarjetascredito', function (Blueprint $table) {
            $table->integer('idCliente');
            $table->integer('idCicloFacturacion');
            $table->int('numeroTarjeta');
            $table->string('limiteCredito');
            $table->string('saldoActual');
            $table->string('fechaEmision');
            $table->string('fechaVencimiento');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tarjetascredito');
    }
};
