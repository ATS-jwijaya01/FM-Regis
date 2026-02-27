<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Form Penonton OTS - Force Musical</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light p-5">
    <div class="container min-vh-50 d-flex flex-column justify-content-center align-items-center">
        <div class="w-100" style="max-width: 400px;">
            <div class="text-center mb-4">
                <h1 class="fw-bold">Force Musical</h1>
                <h5 class="fw-normal text-secondary mt-2">Form Penonton OTS</h5>
            </div>
            <form id="formPenontonOTS" autocomplete="off">
                <div class="mb-3">
                    <label for="nama_penonton" class="form-label">Nama Penonton</label>
                    <input type="text" class="form-control" id="nama_penonton" name="nama_penonton" placeholder="Masukkan nama penonton" required autofocus>
                </div>
                <div class="mb-3">
                    <label for="nohp_penonton" class="form-label">Nomor HP</label>
                    <input type="text" class="form-control" id="nohp_penonton" name="nohp_penonton" placeholder="Masukkan nomor HP penonton" required>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="button" id="refreshBtn" class="btn btn-secondary w-50 me-2">Refresh</button>
                    <button type="submit" id="submitBtn" class="btn btn-primary w-50 ms-2">Submit</button>
                </div>
            </form>
            <div class="mt-4 text-center">
                <a href="{{ route('penonton.index') }}" class="btn btn-outline-primary w-100 mb-2">
                    Kembali ke Validasi Kode
                </a>
                <a href="{{ route('penonton.table') }}" class="btn btn-outline-success w-100">
                    Lihat Tabel Penonton
                </a>
            </div>

            <!-- Success alert -->
            <div class="alert alert-success mt-4 text-center d-none" id="successAlert" role="alert">
                Data penonton berhasil disimpan!
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS (Popper included) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            // Handle form submit
            $('#formPenontonOTS').on('submit', function(e) {
                e.preventDefault();

                var nama = $('#nama_penonton').val().trim();
                var nohp = $('#nohp_penonton').val().trim();

                if (!nama) {
                    alert('Masukkan nama penonton terlebih dahulu.');
                    return;
                }
                if (!nohp) {
                    alert('Masukkan nomor HP penonton terlebih dahulu.');
                    return;
                }

                if (confirm('Apakah Anda yakin untuk submit data penonton ini?')) {
                    $('#submitBtn').attr('disabled', true);

                    $.ajax({
                        url: "{{ route('penonton.store') }}",
                        method: 'POST',
                        data: {
                            nama_penonton: nama,
                            nohp_penonton: nohp,
                            _token: '{{ csrf_token() }}'
                        },
                        dataType: 'json',
                        success: function(response) {
                            $('#submitBtn').attr('disabled', false);
                            if (response.status) {
                                $('#successAlert').removeClass('d-none');
                                $('#formPenontonOTS')[0].reset();
                                setTimeout(function() {
                                    $('#successAlert').addClass('d-none');
                                }, 2500);
                            } else {
                                alert('Gagal menyimpan data: ' + (response.message || ''));
                            }
                        },
                        error: function(xhr) {
                            $('#submitBtn').attr('disabled', false);
                            let msg = 'Terjadi kesalahan. Silakan coba lagi.';
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                msg = xhr.responseJSON.message;
                            }
                            alert(msg);
                        }
                    });
                }
            });

            // Handle refresh button
            $('#refreshBtn').on('click', function() {
                $('#formPenontonOTS')[0].reset();
                $('#nama_penonton').focus();
            });
        });
    </script>
</body>

</html>
