<?php
// Mulai session jika diperlukan
// session_start();

// Hubungkan ke database
include '../db/koneksi.php';
date_default_timezone_set("Asia/Makassar");

// Query untuk mendapatkan data dari tabel view_absen
$query = mysqli_query($koneksi, "SELECT * FROM view_absen");

// Periksa apakah query berhasil dan mengembalikan hasil
if ($query && mysqli_num_rows($query) > 0) {
    $data = mysqli_fetch_assoc($query);
    
    // Ambil tanggal dan waktu saat ini
    $tanggal = date("Y-m-d");
    $waktu = date("H:i:s");
    
    // Cek apakah tanggal di database sama dengan hari ini
    if (isset($data['tanggal']) && $data['tanggal'] == $tanggal) { 
        echo "$tanggal / $waktu";
    } else {
        echo "$tanggal / $waktu";
    }
} else {
    // Tampilkan pesan jika tidak ada data yang ditemukan
    echo "Data absen tidak ditemukan.";
}
?>