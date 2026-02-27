<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Force Musical</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light p-5">
    <div class="container min-vh-50 d-flex flex-column justify-content-center align-items-center">
        <div class="w-100" style="max-width: 400px;">
            <div class="text-center mb-4">
                <h1 class="fw-bold">Force Musical</h1>
                <h5 class="fw-normal text-secondary mt-2">Validasi Kode Pendaftaran</h5>
            </div>
            <form id="validasiForm" autocomplete="off">
                <div class="mb-3">
                    <label for="kode_penonton" class="form-label">Kode Pendaftaran</label>
                    <input type="text" class="form-control" id="kode_penonton" name="kode_penonton"
                        placeholder="Masukkan kode pendaftaran" required autofocus>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" id="submitBtn" class="btn btn-primary w-50 me-2">Kirim</button>
                    <button type="button" id="refreshBtn" class="btn btn-secondary w-50 ms-2">Refresh</button>
                </div>
            </form>
            <div class="mt-4 text-center">
                <!-- Button to go to table page -->
                <a href="{{ route('penonton.table') }}" class="btn btn-outline-primary w-100">
                    Lihat Tabel Penonton
                </a>
            </div>
            <div class="mt-4 text-center">
                <!-- Button to go to table page -->
                <a href="{{ route('penonton.form') }}" class="btn btn-outline-primary w-100">
                    Tambah Penonton OTS
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap Modal -->
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
                                <td id="nama_penonton"></td>
                            </tr>
                            <tr>
                                <th scope="row">Nomor Telpon</th>
                                <td id="nohp_penonton"></td>
                            </tr>
                            <tr>
                                <th scope="row">Status</th>
                                <td id="status_penonton"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal" id="okBtn">OK</button>
                    <button type="button" class="btn btn-primary" id="checkInBtn">Check In</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS (Popper included) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery CDN (for AJAX simplicity) -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#validasiForm').on('submit', function(e) {
                $("#nama_penonton").text("");
                $("#nohp_penonton").text("");
                $("#status_penonton").text("");
                e.preventDefault();

                var kode = $('#kode_penonton').val().trim();
                if (!kode) {
                    alert('Masukkan kode pendaftaran terlebih dahulu.');
                    return;
                }

                $('#submitBtn').attr('disabled', true);

                $.ajax({
                    url: "{{  route('penonton.validateKodePenonton') }}",
                    method: 'POST',
                    data: {
                        kode_penonton: kode,
                        _token: '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(response) {
                        $('#submitBtn').attr('disabled', false);
                        if (response.status) {
                            var modal = new bootstrap.Modal(document.getElementById(
                                'successModal'));
                            modal.show();
                            $("#nama_penonton").text(response.data.nama_penonton);
                            $("#nohp_penonton").text(response.data.nohp_penonton);
                            $("#status_penonton").text(response.data.status_penonton);

                            if(response.data.status_penonton == "Belum Checkin") {
                                $("#checkInBtn").show();
                            } else {
                                $("#checkInBtn").hide();
                            }
                        } else {
                            alert('Kode pendaftaran ga di temukan.');
                        }
                    },
                    error: function() {
                        $('#submitBtn').attr('disabled', false);
                        alert('Terjadi kesalahan. Silakan coba lagi.');
                    }
                });
            });

            $('#refreshBtn').on('click', function() {
                $('#validasiForm')[0].reset();
                $('#kode_penonton').focus();
            });
        });

        $(document).on("click", "#checkInBtn", function() {
            var kode = $('#kode_penonton').val().trim();

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
                        $("#okBtn").click()
                        $('#validasiForm').submit()
                    }
                },
            });
        });
    </script>
</body>

</html>
