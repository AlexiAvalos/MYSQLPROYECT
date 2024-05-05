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
        Schema::create('cuentas', function (Blueprint $table) {
            $table->unsignedBigInteger('idTipoCuenta');
            $table->unsignedBigInteger('idCliente');
            $table->date('fechaApertura');
            $table->decimal('credito', 10, 2); // Decimal con 10 dígitos en total y 2 decimales
            $table->string('estado');
            $table->timestamps();
        
            // Claves foráneas
            $table->foreign('idTipoCuenta')->references('id')->on('tipo_cuentas');
            $table->foreign('idCliente')->references('id')->on('clientes');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cuentas');
    }
};
