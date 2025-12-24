<?php
// session_start();
include 'db/koneksi.php';
date_default_timezone_set("Asia/Makassar");

// Fetch data from the view
$query = mysqli_query($koneksi, "SELECT * FROM view_absen");

// Check if query was successful
if (!$query) {
    die("Query failed: " . mysqli_error($koneksi));
}

// Fetch data as associative array
$data = mysqli_fetch_assoc($query);
$tanggal = date("Y-m-d");
$waktu = date("H:i:s");

// Check if $data is not null before accessing its keys
if ($data && isset($data['tanggal'])) {
    if ($data['tanggal'] == $tanggal) { 
        echo "$tanggal / $waktu";
    } else {
        echo "$tanggal / $waktu";
        // Delete all entries from tbl_absen
        $query_hapus = mysqli_query($koneksi, "DELETE FROM tbl_absen");
        if (!$query_hapus) {
            die("Error deleting records: " . mysqli_error($koneksi));
        }
        // Reset status_absen for all karyawan
        $query_a = mysqli_query($koneksi, "UPDATE tbl_karyawan SET status_absen='' WHERE status_absen IN ('hadir', 'sakit', 'izin', 'alfa')");
        if (!$query_a) {
            die("Error updating status: " . mysqli_error($koneksi));
        }
    }
} else {
    echo "No data found / $tanggal / $waktu";
}
?>