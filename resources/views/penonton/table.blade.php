<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Daftar Penonton - Force Musical</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables Bootstrap 5 CDN -->
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/compact/1.13.6/css/compact.dataTables.min.css" rel="stylesheet">
</head>

<body class="bg-light p-5">
    <div class="container">
        <div class="row mb-3">
            <div class="col-12 d-flex align-items-center justify-content-between">
                <h1 class="fw-bold mb-0">Daftar Penonton</h1>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-12">
                <div class="table-responsive">
                    <table id="penonton-table" class="table table-striped table-bordered display compact nowrap w-100" style="width:100%">
                        <thead>
                            <tr>
                                <th>Kode Penonton</th>
                                <th>Nama Penonton</th>
                                <th>Nomor HP</th>
                                <th>Status Penonton</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- DataTables will fill data here -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-sm-12 mb-3">
                <a href="{{ route('penonton.index') }}" class="col-12 btn btn-primary">
                    <i class="bi bi-plus-lg"></i> Buka Form Validasi
                </a>
            </div>
            <div class="col-lg-6 col-sm-12 mb-3">
                <a href="{{ route('penonton.form') }}" class="col-12 btn btn-warning">
                    <i class="bi bi-plus-lg"></i> Buka Form OTS
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS (Popper included) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- DataTables JS CDN -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/compact/1.13.6/js/dataTables.compact.min.js"></script>
    <!-- Optionally use Bootstrap Icons for button -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <script>
        $(document).ready(function() {
            $('#penonton-table').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                compact: true,
                ajax: {
                    url: "{{ route('penonton.datatable') }}",
                    type: "GET"
                },
                columns: [
                    { data: 'kode_penonton', name: 'kode_penonton' },
                    { data: 'nama_penonton', name: 'nama_penonton' },
                    { data: 'nohp_penonton', name: 'nohp_penonton' },
                    { data: 'status_penonton', name: 'status_penonton' }
                ],
                order: [[0, 'asc']],
            });
        });
    </script>
</body>

</html>
