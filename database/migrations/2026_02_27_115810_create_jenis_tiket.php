<?php

use App\Models\PenontonModel;
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
        Schema::table('penonton', function (Blueprint $table) {
            $table->string('jenis_tiket_penonton', 50)->nullable()->default(PenontonModel::TIPE_TIKET_KU);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jenis_tiket_penonton');
    }
};
