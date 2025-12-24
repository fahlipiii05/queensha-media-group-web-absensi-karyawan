<?php
session_start();
include '../db/koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nik = $_SESSION['nik']; // Ambil NIK karyawan dari session
    $tanggal = $_POST['tanggal'];
    $jenis_izin = $_POST['jenis_izin'];
    $alasan = $_POST['alasan'];

    // Cek apakah sudah ada pengajuan izin/cuti pada tanggal yang sama
    $check_query = "SELECT * FROM tbl_izin_cuti WHERE nik='$nik' AND tanggal='$tanggal'";
    $check_result = mysqli_query($koneksi, $check_query);

    if (mysqli_num_rows($check_result) > 0) {
        echo "<script>alert('Anda sudah mengajukan izin/cuti pada tanggal ini.'); window.location.href='izin_cuti.php';</script>";
    } else {
        // Simpan data izin/cuti ke database
        $query = "INSERT INTO tbl_izin_cuti (nik, tanggal, jenis_izin, alasan) VALUES ('$nik', '$tanggal', '$jenis_izin', '$alasan')";
        if (mysqli_query($koneksi, $query)) {
            echo "<script>alert('Pengajuan izin/cuti berhasil!'); window.location.href='history.php';</script>";
        } else {
            echo "<script>alert('Error: " . mysqli_error($koneksi) . "'); window.location.href='izin_cuti.php'; </script>";
        }
    }
}
?>