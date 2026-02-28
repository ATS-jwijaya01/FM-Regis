<?php

namespace App\Http\Controllers;

use App\Models\PenontonModel;
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\IOFactory;

class PenontonController extends Controller
{
    public function index()
    {
        // TODO: Implement logic for displaying the main penonton page
        return view('penonton.index');
    }
    public function counter()
    {
        $OTS = PenontonModel::where('tipe_penonton', PenontonModel::TIPE_PENONTON_OTS)->count();
        $PengunjungUmum = PenontonModel::where('tipe_penonton', PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM)->count();
        $totalPenonton = $OTS + $PengunjungUmum;

        $totalPengunjungUmumCheckin = PenontonModel::where('tipe_penonton', PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM)->where('status_penonton', PenontonModel::STATUS_PENONTON_CHECKIN)->count();
        $persentasePengunjungUmumCheckin = number_format(($totalPengunjungUmumCheckin / $PengunjungUmum) * 100, 2);
        $totalPengunjungUmumBelumCheckin = $PengunjungUmum - $totalPengunjungUmumCheckin;
        

        return view('penonton.counter', compact('OTS', 'PengunjungUmum', 'totalPenonton', 'persentasePengunjungUmumCheckin', 'totalPengunjungUmumBelumCheckin', 'totalPengunjungUmumCheckin'));
    }

    public function validateKodePenonton(Request $request)
    {
        $kode = $request->input('kode_penonton');
        $penontonObj = PenontonModel::where('kode_penonton', $kode)->first()->toArray();
        if ($penontonObj) {
            $response = array(
                "data" => (array) $penontonObj,
                "message" => "Kode penonton valid",
                "status" => true
            );
        } else {
            $response = array(
                "data" => [],
                "message" => "Kode penonton tidak valid",
                "status" => false
            );
        }
        return response()->json($response);
    }

    public function checkingPenonton(Request $request)
    {
        $kode = $request->input('kode_penonton');
        $penontonObj = PenontonModel::where('kode_penonton', $kode)->first();
        if ($penontonObj) {
            $penontonObj->status_penonton = PenontonModel::STATUS_PENONTON_CHECKIN;
            $penontonObj->waktu_checking_penonton = date('Y-m-d H:i:s');
            $penontonObj->save();

            $response = array(
                "data" => (array) $penontonObj,
                "message" => "Penonton berhasil checkin",
                "status" => true
            );
        } else {
            $response = array(
                "data" => [],
                "message" => "Penonton tidak ditemukan",
                "status" => false
            );
        }
        return response()->json($response);
    }

    public function table()
    {
        // TODO: Implement logic for showing penonton table
        return view('penonton.table');
    }

    public function datatable(Request $request)
    {
        try {
            if ($request->has("start")) {
                $tableParameter["start"] = $request->input("start");
            }

            if ($request->has("length")) {
                $tableParameter["length"] = $request->input("length");
            }

            if ($request->has("order")) {
                $tableParameter["orderColumn"] = ($request->input("order"))[0]["column"];
                $tableParameter["orderDir"] = ($request->input("order"))[0]["dir"];
                $tableParameter["orderColumn"] = PenontonModel::getFilterColumn()[$tableParameter["orderColumn"]];
            }

            if ($request->has("search")) {
                $tableParameter["search"] = ($request->input("search"))["value"];
            }

            $tableParameter["filterColumn"] = PenontonModel::getFilterColumn();

            $result = PenontonModel::getData($tableParameter);
            $response = array(
                "status" => true,
                "message" => "Data penonton berhasil diambil",
                "data" => $result["data"],
                "recordsFiltered" => $result["filteredData"],
                "recordsTotal" => $result["allData"]
            );
            return response()->json($response);
        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "message" => $e->getMessage()
            ], 500);
        }
    }

    public function form()
    {
        // TODO: Implement logic for displaying the main penonton page
        return view('penonton.form');
    }

    public function store(Request $request)
    {
        $data = array(
            "kode_penonton" => PenontonModel::generateKodePenonton($request->input('nama_penonton'), $request->input('nohp_penonton')),
            "tipe_penonton" => PenontonModel::TIPE_PENONTON_OTS,
            "nama_penonton" => $request->input('nama_penonton') ?? "-",
            "nohp_penonton" => $request->input('nohp_penonton') ?? "-",
            "status_penonton" => PenontonModel::STATUS_PENONTON_CHECKIN,
            "waktu_checking_penonton" => date('Y-m-d H:i:s'),
        );
        $penontonObj = PenontonModel::create($data);
        return response()->json([
            "status" => true,
            "message" => "Penonton berhasil disimpan",
            "data" => $penontonObj
        ]);
    }

    public function checkIn(Request $request)
    {
        $kode = $request->input('kode_penonton');
        $penontonObj = PenontonModel::where('kode_penonton', $kode)->first();
        if ($penontonObj) {
            $penontonObj->status_penonton = PenontonModel::STATUS_PENONTON_CHECKIN;
            $penontonObj->waktu_checking_penonton = date('Y-m-d H:i:s');
            $penontonObj->save();
        }
        return response()->json([
            "status" => true,
            "message" => "Penonton berhasil check in",
            "data" => $penontonObj
        ]);
    }

    public function import()
    {
        // Contoh menggunakan package PhpSpreadsheet
        $filePath = storage_path('app/form.xlsx'); // Ubah 'yourfile.xlsx' dengan nama file yang sesuai

        $spreadsheet = IOFactory::load($filePath);
        $sheet = $spreadsheet->getSheet(0); // sheet 1 = index 0

        $rows = $sheet->toArray();

        $NAMA_PENONTON = 1;
        $NOHP_PENONTON = 4;


        foreach ($rows as $idx => $row) {

            if ($idx == 0) {
                continue;
            }

            $formateedNoHP = $this->format_nomorhp($row[$NOHP_PENONTON]);
            $data = array(
                "kode_penonton" => PenontonModel::generateKodePenonton($row[$NAMA_PENONTON], $row[$NOHP_PENONTON]),
                "tipe_penonton" => PenontonModel::TIPE_PENONTON_PENGUNJUNG_UMUM,
                "nama_penonton" => $row[$NAMA_PENONTON],
                "nohp_penonton" => $formateedNoHP,
                "status_penonton" => PenontonModel::STATUS_PENONTON_BELUM_CHECKIN,
                "waktu_checking_penonton" => null
            );

            PenontonModel::create($data);
        }
        return response()->json([
            "status" => true,
            "message" => "Penonton berhasil diimport",
        ]);
    }

    private function format_nomorhp($nomorhp)
    {
        // Replace all spaces and + with ''
        $nomorhp = str_replace([' ', '+', '-'], '', $nomorhp);

        // Check if it contains any alphabets
        if (preg_match('/[a-zA-Z]/', $nomorhp)) {
            return '000';
        }

        // Format
        if (strpos($nomorhp, '8') === 0) {
            // starts with 8, add 62 in front
            return '62' . $nomorhp;
        } elseif (strpos($nomorhp, '0') === 0) {
            // starts with 0, replace with 62
            return '62' . substr($nomorhp, 1);
        } elseif (strpos($nomorhp, '62') === 0) {
            // already starts with 62, do nothing
            return $nomorhp;
        } 

        // If somehow starts with '628...' after removing +, or other valid
        // No valid pattern, return original, or per rule, maybe still return as is
        return $nomorhp;
    }
}
