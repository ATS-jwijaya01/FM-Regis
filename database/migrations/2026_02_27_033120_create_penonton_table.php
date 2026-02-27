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
        Schema::create('penonton', function (Blueprint $table) {
            $table->id("id_pk_penonton");
            $table->string("kode_penonton", 10)->nullable();
            $table->string("nama_penonton", 100)->nullable();
            $table->string("tipe_penonton", 100)->nullable();
            $table->string("nohp_penonton", 100)->nullable();
            $table->string("email_penonton", 100)->nullable();
            $table->string("status_penonton", 50)->nullable();
            $table->datetime("waktu_checking_penonton")->nullable();
            $table->string("catatan_penonton", 50)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penonton');
    }
};
