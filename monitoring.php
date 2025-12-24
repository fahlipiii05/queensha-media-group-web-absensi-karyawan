<?php
$title = "Absensi Karyawan | Monitoring";
date_default_timezone_set("Asia/Makassar");
require 'template/header.php';
require 'template/navbar.php';
?>
<style>
    .img-linkar {
        width: 50px;
        height: 50px;
        border-radius: 100%;
    }
</style>

<div class="container-fluid">
    <div class="row">
        <!-- Kolom 1: Monitoring Karyawan Tanpa Keterangan -->
        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-header bg-success text-white">
                    <h6>Monitoring Karyawan Tanpa Keterangan</h6>
                </div>
                <div class="card-body">
                    <table class="table table-sm table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Karyawan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            include 'db/koneksi.php';
                            $karyawan = mysqli_query($koneksi,"SELECT * FROM tbl_karyawan WHERE status_absen='alfa' OR status_absen=''");
                            while ($row = mysqli_fetch_assoc($karyawan)) {
                            ?>
                            <tr>
                                <td><?= $row['nama_karyawan']; ?></td>
                                <td>
                                    <a href="proses/proses_kehadiran.php?nik=<?= $row['nik']; ?>&info=hadir" class="btn btn-success btn-sm">H</a>
                                    <a href="proses/proses_kehadiran.php?nik=<?= $row['nik']; ?>&info=sakit" class="btn btn-warning btn-sm">S</a>
                                    <a href="proses/proses_kehadiran.php?nik=<?= $row['nik']; ?>&info=izin" class="btn btn-info btn-sm">I</a>
                                    <a href="proses/proses_kehadiran.php?nik=<?= $row['nik']; ?>&info=alfa" class="btn btn-danger btn-sm">A</a>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Kolom 2: Monitoring Karyawan Masuk -->
        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-header bg-success text-white">
                    <h6>Monitoring Karyawan Masuk</h6>
                </div>
                <div class="card-body">
                    <table class="table table-sm table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Karyawan</th>
                                <th>Jam Masuk</th>
                                <th>Jam Keluar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $karyawan = mysqli_query($koneksi, "SELECT * FROM view_absen WHERE status_absen='hadir'");
                            while ($row = mysqli_fetch_assoc($karyawan)) {
                            ?>
                            <tr>
                                <td><?= $row['nama_karyawan']; ?></td>
                                <td><?= $row['jam_masuk']; ?></td>
                                <td>
                                    <?php if ($row['jam_keluar'] == '00:00:00') { ?>
                                        <a href="proses/proses_kehadiran.php?nik=<?= $row['nik']; ?>&info=keluar" class="btn btn-danger btn-sm"><i class="fa-solid fa-sign-out-alt"></i></a>
                                    <?php } else { ?>
                                        <?= $row['jam_keluar']; ?>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Kolom 3: Monitoring Karyawan Alfa, Sakit & Izin -->
        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-header bg-success text-white">
                    <h6>Monitoring Karyawan Alfa, Sakit & Izin</h6>
                </div>
                <div class="card-body">
                    <table class="table table-sm table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Karyawan</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $karyawan = mysqli_query($koneksi, "SELECT * FROM tbl_karyawan WHERE status_absen IN ('sakit', 'izin', 'alfa')");
                            while ($row = mysqli_fetch_assoc($karyawan)) {
                            ?>
                            <tr>
                                <td><?= $row['nama_karyawan']; ?></td>
                                <td class="text-center">
                                    <?php if ($row['status_absen'] == 'alfa') { ?>
                                        <span class="badge bg-danger">ALFA</span>
                                    <?php } elseif ($row['status_absen'] == 'sakit') { ?>
                                        <span class="badge bg-info">SAKIT</span>
                                    <?php } elseif ($row['status_absen'] == 'izin') { ?>
                                        <span class="badge bg-warning">IZIN</span>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div> <!-- End Row -->
</div> <!-- End Container -->

<?php
require 'template/footer.php';
?>
