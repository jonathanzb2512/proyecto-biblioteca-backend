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
        Schema::create('prestamos', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('usuario_id')->index('fk_prestamos_usuarios');
            $table->integer('libro_id')->index('fk_prestamos_libros');
            $table->date('fecha_prestamo');
            $table->date('fecha_devolucion_estimada');
            $table->date('fecha_devolucion_real')->nullable();
            $table->enum('estado', ['prestado', 'devuelto', 'vencido'])->nullable()->default('prestado');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prestamos');
    }
};
