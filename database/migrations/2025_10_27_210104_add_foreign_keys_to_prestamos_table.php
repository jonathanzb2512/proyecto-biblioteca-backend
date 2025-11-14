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
        Schema::table('prestamos', function (Blueprint $table) {
            $table->foreign(['libro_id'], 'fk_prestamos_libros')->references(['id'])->on('libros')->onUpdate('CASCADE');
            $table->foreign(['usuario_id'], 'fk_prestamos_usuarios')->references(['id'])->on('usuarios')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('prestamos', function (Blueprint $table) {
            $table->dropForeign('fk_prestamos_libros');
            $table->dropForeign('fk_prestamos_usuarios');
        });
    }
};
