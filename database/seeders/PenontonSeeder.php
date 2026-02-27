<?php

namespace Database\Seeders;

use App\Models\PenontonModel;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PenontonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        PenontonModel::create([
            "kode_penonton" => "FEB2442",
            "tipe_penonton" => PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM,
            "nama_penonton" => "Febe",
            "nohp_penonton" => "6282262122442",
            "status_penonton" => PenontonModel::STATUS_PENONTON_BELUM_CHECKIN,
            "waktu_checking_penonton" => date('Y-m-d H:i:s')
        ]);
        PenontonModel::create([
            "kode_penonton" => "STE6803",
            "tipe_penonton" => PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM,
            "nama_penonton" => "Stevan Nathan",
            "nohp_penonton" => "6289691336803",
            "status_penonton" => PenontonModel::STATUS_PENONTON_BELUM_CHECKIN,
            "waktu_checking_penonton" => date('Y-m-d H:i:s')
        ]);
        PenontonModel::create([
            "kode_penonton" => "DEN9009",
            "tipe_penonton" => PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM,
            "nama_penonton" => "Denny Arfianto",
            "nohp_penonton" => "628112829009",
            "status_penonton" => PenontonModel::STATUS_PENONTON_BELUM_CHECKIN,
            "waktu_checking_penonton" => date('Y-m-d H:i:s')
        ]);
        PenontonModel::create([
            "kode_penonton" => "JOS1915",
            "tipe_penonton" => PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM,
            "nama_penonton" => "Joshua Natan Wijaya",
            "nohp_penonton" => "6289616961915",
            "status_penonton" => PenontonModel::STATUS_PENONTON_BELUM_CHECKIN,
            "waktu_checking_penonton" => date('Y-m-d H:i:s')
        ]);
    }
}
