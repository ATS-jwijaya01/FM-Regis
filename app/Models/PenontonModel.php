<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;

class PenontonModel extends ATSModel
{
    protected $table = 'penonton';
    protected $primaryKey = 'id_pk_penonton';
    protected $fillable = ['id_pk_penonton', 'kode_penonton', 'nama_penonton', 'tipe_penonton', 'nohp_penonton', 'email_penonton', 'status_penonton', 'waktu_checking_penonton', 'catatan_penonton'];

    const TIPE_PENONTON_ORANG_TUA = 'Orang Tua';
    const TIPE_PENONTON_PENGUNJUNG_UMUM = 'Pengunjung Umum';
    const TIPE_PENONTON_OTS = 'OTS';

    const STATUS_PENONTON_BELUM_CHECKIN = 'Belum Checkin';
    const STATUS_PENONTON_CHECKIN = 'Sudah Checkin';

    public function getPenontonById($id)
    {
        return $this->find($id);
    }

    public function getPenontonByKode($kode)
    {
        return $this->where('kode_penonton', $kode)->first();
    }

    public static function generateKodePenonton($nama_penonton, $nohp_penonton)
    {
        // Ambil nama depan
        $namaDepan = trim(explode(' ', $nama_penonton)[0]);
        $firstThree = substr($namaDepan, 0, 3);

        // Ambil 4 digit terakhir nomor HP
        $nohp = preg_replace('/\D/', '', $nohp_penonton); // hanya angka
        $lastFour = substr($nohp, -4);

        $baseCode = strtoupper($firstThree . $lastFour);
        $kodePenonton = $baseCode;
        $counter = 0;

        // Cek duplikat kode di database, tambahkan angka jika sudah ada
        while (self::where('kode_penonton', $kodePenonton)->exists()) {
            $kodePenonton = $baseCode . $counter;
            $counter++;
        }

        return $kodePenonton;

    }

    public static function getReadTable()
    {
        return DB::raw("
            (
                select * from penonton
            ) as penonton
        ");
    }

    public static function getFilterColumn(): array
    {
        return [
            "id_pk_penonton",
            "nama_penonton",
            "nohp_penonton",
            "email_penonton",
            "status_penonton",
            "waktu_checking_penonton",
            "catatan_penonton",
            "kode_penonton"
        ];
    }

    public static function getData($tableParameter)
    {
        $table = self::getReadTable();
        $result = parent::prepareDataTable($tableParameter, $table);
        return $result;
    }
}
