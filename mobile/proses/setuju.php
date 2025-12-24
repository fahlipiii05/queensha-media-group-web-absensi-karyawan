<?php
session_start();
include '../db/koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "UPDATE tbl_izin_cuti SET status='Disetujui' WHERE id='$id'";
    mysqli_query($koneksi, $query);
    header("location:persetujuan.php");
}
?>