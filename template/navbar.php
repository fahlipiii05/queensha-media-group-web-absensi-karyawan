<?php
session_start();
error_reporting(0);
if ($_SESSION['status'] == "") {
    header("location:index.php");
}
?>
<style>
    .navbar {
        padding: 10px 20px;
        background: linear-gradient(to right, #2e7d32, #66bb6a);
        border-bottom: 5px solid #fdb606;
    }

    .navbar-brand h3 {
        margin: 0;
        color: white;
    }

    .navbar-brand small {
        display: block;
        color: white;
        font-size: 14px;
    }

    .nav-link {
        color: white !important;
        margin: 0 10px;
    }

    .nav-link:hover {
        text-decoration: underline;
    }

    .card {
        border: 0;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .lingkaran1 {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        border: 2px solid #fdb606;
    }
</style>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <h3>Queensha Media Group</h3>
            <small>Aplikasi Absensi Karyawan Berbasis WEB</small>
            </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="dashboard.php"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="monitoring.php"><i class="fa-solid fa-desktop"></i> Monitoring</a></li>
                <li class="nav-item"><a class="nav-link" href="absensi.php"><i class="fa-solid fa-clipboard-user"></i> Absensi</a></li>
                <li class="nav-item"><a class="nav-link" href="data_karyawan.php"><i class="fa-solid fa-users"></i> Data Karyawan</a></li>
                <li class="nav-item"><a class="nav-link" href="data_history.php"><i class="fa-solid fa-file-waveform"></i> Data History</a></li>
                <li class="nav-item"><a class="nav-link" href="jam_kerja.php"><i class="fa-solid fa-business-time"></i> Jam Kerja</a></li>
                <li class="nav-item"><a class="nav-link" href="setting.php"><i class="fa-solid fa-gears"></i> Pengaturan</a></li>
                <li class="nav-item"><a class="nav-link" href="proses/logout.php"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
  
