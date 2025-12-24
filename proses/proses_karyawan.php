<?php
include '../db/koneksi.php';

// Menangani input karyawan
if (isset($_POST['input_karyawan'])) {
    $no_kartu = $_POST['no_kartu'];
    $nik = $_POST['nik'];
    $nama_karyawan = $_POST['nama_karyawan'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $email = $_POST['email'];
    $jabatan = $_POST['jabatan'];
    $departemen = $_POST['departemen'];
    $password = md5($_POST['password']);
    $alamat = $_POST['alamat'];
    $jk = $_POST['jk'];

    // Cek apakah NIK sudah ada di database
    $check_query = mysqli_query($koneksi, "SELECT * FROM tbl_karyawan WHERE nik='$nik'");
    
    if (mysqli_num_rows($check_query) > 0) {
        echo "<script>alert('NIK sudah ada. Silakan gunakan NIK yang berbeda.'); document.location='../data_karyawan.php';</script>";
    } else {
        // Pastikan untuk menyebutkan nama kolom
        $query = mysqli_query($koneksi, "INSERT INTO tbl_karyawan (nik, no_kartu, nama_karyawan, tanggal_lahir, jk, alamat, email, password, jabatan, departemen, foto_karyawan, status, status_absen) VALUES ('$nik', '$no_kartu', '$nama_karyawan', '$tanggal_lahir', '$jk', '$alamat', '$email', '$password', '$jabatan', '$departemen', 'user.png', 'offline', 'alfa')");

        if ($query) {
            echo "<script>alert('DATA BERHASIL DI INPUT'); document.location='../data_karyawan.php';</script>";
        } else {
            echo "<script>alert('DATA GAGAL DI INPUT: " . mysqli_error($koneksi) . "'); document.location='../data_karyawan.php';</script>";
        }
    }
}

// Menangani update karyawan
if (isset($_POST['ubah_karyawan'])) {
    $nik = $_POST['nik'];
    $no_kartu = $_POST['no_kartu'];
    $nama_karyawan = $_POST['nama_karyawan'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $alamat = $_POST['alamat'];
    $jk = $_POST['jk'];
    $jabatan = $_POST['jabatan'];
    $departemen = $_POST['departemen'];

    // Update data karyawan
    $query = mysqli_query($koneksi, "UPDATE tbl_karyawan SET no_kartu='$no_kartu', nama_karyawan='$nama_karyawan', tanggal_lahir='$tanggal_lahir', jk='$jk', email='$email', password='$password', alamat='$alamat', jabatan='$jabatan', departemen='$departemen' WHERE nik='$nik'");

    if ($query) {
        echo "<script>alert('DATA BERHASIL DI UBAH'); document.location='../data_karyawan.php';</script>";
    } else {
        echo "<script>alert('DATA GAGAL DI UBAH: " . mysqli_error($koneksi) . "'); document.location='../data_karyawan.php';</script>";
    }
}

// Menangani penghapusan karyawan
if (isset($_POST['hapus_karyawan'])) {
    $nik = $_POST['nik']; // Ambil NIK dari form

    // Cek apakah NIK ada di database
    $check_query = mysqli_query($koneksi, "SELECT * FROM tbl_karyawan WHERE nik='$nik'");
    
    if (mysqli_num_rows($check_query) == 0) {
        echo "<script>alert('Karyawan dengan NIK $nik tidak ditemukan.'); window.location.href='../data_karyawan.php';</script>";
    } else {
        // Lakukan penghapusan
        $delete_query = mysqli_query($koneksi, "DELETE FROM tbl_karyawan WHERE nik='$nik'");
        
        if ($delete_query) {
            echo "<script>alert('DATA KARYAWAN BERHASIL DIHAPUS'); window.location.href='../data_karyawan.php';</script>";
        } else {
            echo "<script>alert('DATA GAGAL DIHAPUS: " . mysqli_error($koneksi) . "'); window.location.href='../data_karyawan.php';</script>";
        }
    }
} else {
    header("location:../data_karyawan.php");
}
?>