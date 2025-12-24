<?php
$title = "Absensi Karyawan | Dashboard";
require 'template/header.php';
require 'template/navbar.php'; 
?>

<div class="col-md-12 mt-4">
    <!-- Card untuk Menampung Semua Elemen -->
    <div class="card mb-4">
    <div class="card-header text-center" style="background-color: #28a745;">
    <h2 class="text-white">Dashboard Absensi Karyawan</h2>
</div>
        <div class="card-body">
            <!-- Kartu Informasi -->
            <div class="row mt-2">
                <div class="col-md-4">
                    <div class="card text-white bg-primary mb-3">
                        <div class="card-body">
                            <h5 class="card-title">
                                <?php
                                include 'db/koneksi.php';
                                $total_karyawan = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM tbl_karyawan");
                                $data_karyawan = mysqli_fetch_assoc($total_karyawan);
                                echo $data_karyawan['total'];
                                ?>
                            </h5>
                            <p class="card-text">Jumlah total karyawan yang terdaftar.</p>
                            <a href="data_karyawan.php" class="btn btn-light">Lihat Data Karyawan</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-white bg-success mb-3">
                        <div class="card-body">
                            <h5 class="card-title">
                                <?php
                                $total_absensi = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM view_absen");
                                $data_absensi = mysqli_fetch_assoc($total_absensi);
                                echo $data_absensi['total'];
                                ?>
                            </h5>
                            <p class="card-text">Jumlah total absensi karyawan.</p>
                            <a href="absensi.php" class="btn btn-light">Lihat Absensi</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-white bg-warning mb-3">
                        <div class="card-body">
                            <h5 class="card-title">
                                <?php
                                $data_karyawan_tanpa_keterangan = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM tbl_karyawan WHERE status_absen IS NULL OR status_absen=''");
                                $data_tanpa_keterangan = mysqli_fetch_assoc($data_karyawan_tanpa_keterangan);
                                echo $data_tanpa_keterangan['total'];
                                ?>
                            </h5>
                            <p class="card-text">Jumlah Karyawan Tanpa Keterangan</p>
                            <a href="monitoring.php" class="btn btn-light">Lihat Monitoring</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Statistik Grafik -->
            <div class="row mt-2">
                <div class="col-md-12">
                    <h5 class="text-center">Statistik Absensi Karyawan</h5>
                    <canvas id="absensiChart" width="800" height="200"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var ctx = document.getElementById('absensiChart').getContext('2d');
    var absensiChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Hadir', 'Tidak Hadir', 'Sakit', 'Izin', 'Cuti'],
            datasets: [{
                label: 'Jumlah Karyawan',
                data: [
                    <?php
                    $karyawan_hadir = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM view_absen WHERE status_absen='hadir'");
                    $data_hadir = mysqli_fetch_assoc($karyawan_hadir);
                    echo $data_hadir['total'];
                    ?>,
                    <?php
                    $karyawan_tidak_hadir = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM tbl_karyawan WHERE status_absen='alfa' OR status_absen=''");
                    $data_tidak_hadir = mysqli_fetch_assoc($karyawan_tidak_hadir);
                    echo $data_tidak_hadir['total'];
                    ?>,
                    <?php
                    $karyawan_sakit = mysqli_query($koneksi , "SELECT COUNT(*) as total FROM view_absen WHERE status_absen='sakit'");
                    $data_sakit = mysqli_fetch_assoc($karyawan_sakit);
                    echo $data_sakit['total'];
                    ?>,
                    <?php
                    $karyawan_izin = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM view_absen WHERE status_absen='izin'");
                    $data_izin = mysqli_fetch_assoc($karyawan_izin);
                    echo $data_izin['total'];
                    ?>,
                    <?php
                    $karyawan_cuti = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM view_absen WHERE status_absen='cuti'");
                    $data_cuti = mysqli_fetch_assoc($karyawan_cuti);
                    echo $data_cuti['total'];
                    ?>
                ],
                backgroundColor: [
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

<?php
require 'template/footer.php';
?>