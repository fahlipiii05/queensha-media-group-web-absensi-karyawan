<?php
$title = "Absensi Karyawan | Pengaturan";
require 'template/header.php';
require 'template/navbar.php';
include 'db/koneksi.php';

// Ambil data jadwal kerja dari database
$query_jadwal = mysqli_query($koneksi, "SELECT * FROM tbl_jadwal LIMIT 1");
$row = mysqli_fetch_assoc($query_jadwal);
?>

<style>
    .jumbotron { border-radius: 20px; }
    #map { height: 300px; width: 100%; margin-top: 10px; }
</style>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<div class="col-md-12 mt-4">
    <div class="card">
        <div class="card-header bg-success">
            <h6 class="text-white">Pengaturan Jadwal Jam Kerja</h6>
        </div>
        <div class="card-body">
            <div class="jumbotron jumbotron-fluid bg-success text-center">
                <div class="container">
                    <h4 class="display-4 text-white"><b>Pengaturan Jam Kerja</b></h4>
                    <p class="lead"><i>Atur Jadwal Jam Masuk & Jam Keluar </i></p>
                </div>
            </div>

            <form action="proses/proses_jadwal.php" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <label>Jam Masuk :</label>
                        <input type="time" name="jam_masuk" class="form-control" value="<?= isset($row['jam_masuk']) ? $row['jam_masuk'] : ''; ?>" required>
                    </div>
                    <div class="col-md-6">
                        <label>Jam Keluar :</label>
                        <input type="time" name="jam_keluar" class="form-control" value="<?= isset($row['jam_keluar']) ? $row['jam_keluar'] : ''; ?>" required>
                    </div>
                </div>
                <br>
                <br><br>
                <div class="card-footer">
                    <button type="submit" name="jadwal_kerja" class="btn btn-success">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php require 'template/footer.php'; ?>
