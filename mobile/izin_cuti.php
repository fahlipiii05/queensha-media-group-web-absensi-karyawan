<?php
session_start();
error_reporting(0);

// Redirect if session status is empty
if ($_SESSION['status'] == "") {
    header("location:index.php");
    exit();
}

// Redirect if nik is not set
if (!isset($_SESSION['nik'])) {
    header("Location: login.php"); // Redirect ke halaman login jika belum login
    exit();
}

$title = "Karyawan | Izin, Sakit, dan Cuti";
require 'template/header.php';
?>

<style>
    .jumbotron {
        padding: 15vh;
        margin-top: -5vh;
    }
    .card-top {
        margin-top: -25vh;
        padding: 1vh;
    }
    .size {
        font-size: 25px;
    }
    .custom-select {
        border: 0;
        background: none;
        color: white;
    }
    .batas {
        margin-top: 10vh;
    }
</style>

<div class="jumbotron jumbotron-fluid bg-success"></div>
<div class="col-md-12">
    <div class="card shadow card-top">
        <div class="card-body">
            <div class="container mt-5">
                <?php
                include '../db/koneksi.php';
                $no_kartu = $_SESSION['no_kartu'];
                $karyawan = mysqli_query($koneksi, "SELECT * FROM tbl_karyawan WHERE no_kartu='$no_kartu'");
                $row = mysqli_fetch_assoc($karyawan);
                ?>
                
                <?php if ($row['status_absen'] == '') { ?>
                    <form action="proses/proses_izin_cuti.php" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="tanggal">Tanggal:</label>
                            <input type="date" class="form-control" id="tanggal" name="tanggal" required>
                        </div>
                        <div class="form-group">
                            <label for="jenis_izin">Jenis Izin:</label>
                            <select class="form-control" id="jenis_izin" name="jenis_izin" required>
                                <option value="">Pilih Jenis Izin</option>
                                <option value="IZIN">Izin</option>
                                <option value="SAKIT">Sakit</option>
                                <option value="CUTI">Cuti</option>
                            </select>
                        </div>
                        <button type="submit" name="simpan" class="btn btn-success btn-block">Simpan</button>
                    </form>    
                <?php } else if ($row['status_absen'] == 'sakit') { ?>
                    <center>
                    <h5>Sakit</h5>   
                    </center>
                <?php } else if ($row['status_absen'] == 'izin') { ?>
                    <center>
                        <h5>Izin</h5>
                    </center>
                <?php } else if ($row['status_absen'] == 'alfa') { ?>
                    <center>
                        <h5>Alfa</h5>
                    </center>
                <?php } else { ?>
                    <center>
                        <h5>Absen Selesai</h5>
                    </center>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<?php
if ($row['status_absen'] != '') {
    $absen_keluar = mysqli_query($koneksi, "SELECT * FROM view_absen WHERE no_kartu='$no_kartu'");
    $data = mysqli_fetch_assoc($absen_keluar);
    ?>
    <div class="container mt-4">
        <form action="proses/proses_absen.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
<?php } ?>
<script type="text/javascript">
    $(document).ready(function(){
        setInterval(function(){
            $("#data").load('get_absen.php');
        }, 1000);  // Pembacaan file get_absen.php setiap 1 detik
    });
</script>
</div>
</div>

<?php
require 'template/footer.php';
require 'template/navbar.php';
?>