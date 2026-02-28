<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Force Musical Counter Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light p-5">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h1 class="fw-bold">Force Musical</h1>
            <h5 class="fw-normal text-secondary mt-2">Dashboard Counter</h5>
        </div>
        <div class="row justify-content-center mb-4">
            <!-- OTS -->
            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Penonton OTS</h5>
                        <div class="fs-2 py-3">{{ $OTS ?? 0 }}</div>
                    </div>
                </div>
            </div>
            <!-- Pengunjung Umum -->
            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Pengunjung Umum</h5>
                        <div class="fs-2 py-3">{{ $PengunjungUmum ?? 0 }}</div>
                    </div>
                </div>
            </div>
            <!-- Total Penonton -->
            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Total Penonton</h5>
                        <div class="fs-2 py-3">{{ $totalPenonton ?? 0 }}</div>
                    </div>
                </div>
            </div>
            <!-- Persentase Checkin Pengunjung Umum -->
            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Pengunjung Umum - % Check In</h5>
                        <div class="fs-2 py-3">
                            {{ $persentasePengunjungUmumCheckin ?? 0 }}%
                        </div>
                    </div>
                </div>
            </div> 
            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Pengunjung Umum - Check In</h5>
                        <div class="fs-2 py-3">
                            {{ $totalPengunjungUmumCheckin ?? 0 }}
                        </div>
                    </div>
                </div>
            </div> 

            <div class="col-12 col-lg-4 mb-3">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-secondary">Pengunjung Umum Belum Check In</h5>
                        <div class="fs-2 py-3">{{ $totalPengunjungUmumBelumCheckin ?? 0 }}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex flex-column align-items-center mt-5">
            <a href="{{ route('penonton.table') }}" class="btn btn-outline-primary mb-3 w-100" style="max-width:400px;">Lihat Tabel Penonton</a>
            <a href="{{ route('penonton.form') }}" class="btn btn-outline-success w-100 mb-3" style="max-width:400px;">Tambah Penonton OTS</a>
            <a href="{{ route('penonton.index') }}" class="btn btn-outline-dark w-100" style="max-width:400px;">Kembali ke Validasi Kode</a>
        </div>
    </div>
</body>

</html>
