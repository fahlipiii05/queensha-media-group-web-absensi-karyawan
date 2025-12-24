<?php
session_start();
include $_SERVER['DOCUMENT_ROOT'] . '/absen_karyawan-RFID-main/db/koneksi.php'; // Menggunakan jalur absolut

if (!$koneksi) {
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $no_kartu = $_SESSION['no_kartu']; // Ambil no_kartu dari session

    // Ambil NIK dari tabel karyawan berdasarkan no_kartu
    $query_nik = mysqli_query($koneksi, "SELECT nik FROM tbl_karyawan WHERE no_kartu='$no_kartu'");
    $row_nik = mysqli_fetch_assoc($query_nik);

    // Cek apakah NIK ditemukan
    if (!$row_nik) {
        echo "NIK tidak ditemukan.";
        exit();
    }

    $nik = $row_nik['nik']; // Ambil NIK dari hasil query
    $tanggal = $_POST['tanggal'];
    $jenis_izin = $_POST['jenis_izin']; // Ambil jenis izin dari form
    $alasan = $_POST['alasan']; // Ambil alasan dari form
    $waktu = date("H:i:s");

    // Simpan data izin ke dalam tabel absen
    $query_absen = "INSERT INTO tbl_absen (no_kartu, tanggal, jam_masuk, jam_keluar, history_absen) 
                    VALUES ('$no_kartu', '$tanggal', NULL, NULL, '$jenis_izin')";

    // Cek apakah query berhasil
    if (mysqli_query($koneksi, $query_absen)) {
        // Jika berhasil, update status karyawan
        $query_update_karyawan = "UPDATE tbl_karyawan SET status_absen='$jenis_izin' WHERE no_kartu='$no_kartu'";
        mysqli_query($koneksi, $query_update_karyawan);

        // Simpan ke tabel history
        $query_history = "INSERT INTO tbl_history (tanggal_history, nik, jam_masuk, jam_keluar, methode_absen, status_karyawan) 
                          VALUES ('$tanggal', '$nik', NULL, NULL, 'aplikasi', '$jenis_izin')";
        
        if (mysqli_query($koneksi, $query_history)) {
            // Redirect atau tampilkan pesan sukses
            header("location:../izin_cuti.php?status=sukses");
            exit();
        } else {
            echo "Error: " . mysqli_error($koneksi);
        }
    } else {
        echo "Error: " . mysqli_error($koneksi);
    }
}
?>