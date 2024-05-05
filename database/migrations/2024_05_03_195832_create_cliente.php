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
        Schema::create('cliente', function (Blueprint $table) {
            $table->integer('idDistrito');
            $table->integer('idEstadoCivil');
            $table->string('nombre');
            $table->string('apellido');
            $table->string('dui');
            $table->string('numeroCelular');
            $table->string('numeroFijo');
            $table->string('correo');
            $table->date('fechaNacimiento');
            $table->decimal('ingresos', 10, 2);
            $table->string('direccion');
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
        Schema::dropIfExists('cliente');
    }
};
