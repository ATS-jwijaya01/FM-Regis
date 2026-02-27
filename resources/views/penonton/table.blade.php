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
                                <th>#</th>
                                <th>Kode Penonton</th>
                                <th>Nama Penonton</th>
                                <th>Nomor HP</th>
                                <th>Status Penonton</th>
                                <th>Jenis Tiket</th>
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

    <!-- Modal copied/adapted from index.blade.php -->
    <div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successModalLabel">Berhasil!</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Tutup"></button>
                </div>
                <div class="modal-body">
                    <div class="alert alert-success text-center mb-4" role="alert">
                        <strong>Kode Pendaftaran valid</strong>
                    </div>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th scope="row" style="width: 40%;">Nama</th>
                                <td id="modal_nama_penonton"></td>
                            </tr>
                            <tr>
                                <th scope="row">Nomor Telpon</th>
                                <td id="modal_nohp_penonton"></td>
                            </tr>
                            <tr>
                                <th scope="row">Jenis Tiket</th>
                                <td id="modal_jenis_tiket_penonton"></td>
                            </tr>
                            <tr>
                                <th scope="row">Status</th>
                                <td id="modal_status_penonton"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal" id="modal_okBtn">OK</button>
                    <button type="button" class="btn btn-primary" id="modal_checkInBtn">Check In</button>
                </div>
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
            var table = $('#penonton-table').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                compact: true,
                ajax: {
                    url: "{{ route('penonton.datatable') }}",
                    type: "GET"
                },
                columns: [
                    { data: 'id_pk_penonton', name: 'id_pk_penonton' },
                    { data: 'kode_penonton', name: 'kode_penonton' },
                    { data: 'nama_penonton', name: 'nama_penonton' },
                    { data: 'nohp_penonton', name: 'nohp_penonton' },
                    { data: 'status_penonton', name: 'status_penonton' },
                    { data: 'jenis_tiket_penonton', name: 'jenis_tiket_penonton' },
                ],
                order: [[0, 'asc']],
            });

            // Attach click handler to table rows after draw
            $('#penonton-table tbody').on('click', 'tr', function () {
                var rowData = table.row(this).data();
                // If row is a 'no data' display, ignore it
                if (!rowData || rowData.kode_penonton === undefined) return;

                // Assume kode_penonton is available
                var kode = rowData.kode_penonton;

                // Reset modal content
                $("#modal_nama_penonton").text("");
                $("#modal_nohp_penonton").text("");
                $("#modal_status_penonton").text("");
                $("#modal_jenis_tiket_penonton").text("");
                $("#modal_checkInBtn").data("kode", kode); // Keep kode in button for later

                // Disable checkin while validating
                $("#modal_checkInBtn").hide();

                // AJAX validation as in index.blade.php
                $.ajax({
                    url: "{{  route('penonton.validateKodePenonton') }}",
                    method: 'POST',
                    data: {
                        kode_penonton: kode,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.status) {
                            var modal = new bootstrap.Modal(document.getElementById('successModal'));
                            // Fill modal fields
                            $("#modal_nama_penonton").text(response.data.nama_penonton);
                            $("#modal_nohp_penonton").text(response.data.nohp_penonton);
                            $("#modal_status_penonton").text(response.data.status_penonton);
                            $("#modal_jenis_tiket_penonton").text(response.data.jenis_tiket_penonton);
                            // Show Check In button only if "Belum Checkin"
                            if(response.data.status_penonton == "Belum Checkin") {
                                $("#modal_checkInBtn").show();
                            } else {
                                $("#modal_checkInBtn").hide();
                            }
                            // Open modal
                            modal.show();
                        } else {
                            alert('Kode pendaftaran ga di temukan.');
                        }
                    },
                    error: function() {
                        alert('Terjadi kesalahan. Silakan coba lagi.');
                    }
                });
            });

            // Check In functionality as in index.blade.php
            $(document).on("click", "#modal_checkInBtn", function() {
                var kode = $(this).data("kode");

                $.ajax({
                    url: "{{  route('penonton.checkIn') }}",
                    method: 'POST',
                    data: {
                        kode_penonton: kode,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.status) {
                            alert('Penonton berhasil check in.');
                            $("#modal_okBtn").click();
                            table.ajax.reload(null, false);
                        }
                    },
                    error: function() {
                        alert('Terjadi kesalahan waktu check in.');
                    }
                });
            });
        });
    </script>
</body>

</html>
