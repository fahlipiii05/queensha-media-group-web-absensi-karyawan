<?php
session_start();
error_reporting(0);
if ($_SESSION['status'] != "admin") {
    header("location:index.php");
}
$title = "Admin | Persetujuan Izin dan Cuti";
require 'template/header.php';
include '../db/koneksi.php';

$query = "SELECT * FROM tbl_izin_cuti WHERE status IS NULL ORDER BY tanggal DESC";
$result = mysqli_query($koneksi, $query);
?>

<div class="container mt-5">
    <h2>Persetujuan Izin dan Cuti</h2>
    <table class="table">
        <thead>
            <tr>
                <th>NIK</th>
                <th>Tanggal</th>
                <th>Jenis Izin</th>
                <th>Alasan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                            <td>{$row['nik']}</td>
                            <td>{$row['tanggal']}</td>
                            <td>{$row['jenis_izin']}</td>
                            <td>{$row['alasan']}</td>
                            <td>
                                <a href='setujui.php?id={$row['id']}' class='btn btn-success'>Setujui</a>
                                <a href='tolak.php?id={$row['id']}' class='btn btn-danger'>Tolak</a>
                            </td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='5'>Tidak ada pengajuan yang menunggu persetujuan.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<?php
require 'template/footer.php';
?>