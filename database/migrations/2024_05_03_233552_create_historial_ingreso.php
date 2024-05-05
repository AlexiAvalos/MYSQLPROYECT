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
        Schema::create('historial_ingreso', function (Blueprint $table) {
            $table->integer('idCuenta')->unsigned();
            $table->foreign('idCuenta')->references('id')->on('cuentas');
            $table->dateTime('fechaHoraIngreso');
            $table->dateTime('fechaHoraSalida')->nullable();
            $table->string('dispositivo');
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
        Schema::dropIfExists('historial_ingreso');
    }
};