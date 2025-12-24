<?php
$title = "Absensi Karyawan | Pengaturan";
require 'template/header.php';
require 'template/navbar.php'; 
?>

<style>
    .lingkaran {
        width: 200px;
        height: 200px;
        border-radius: 100%;
    }
</style>

<div class="container-fluid">
    <div class="row">
        <!-- Data Akun -->
        <div class="col-md-6 mt-4">
            <div class="card">
                <div class="card-header bg-success text-white">
                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal">&plus;</button>
                    Data Akun
                </div>
                <div class="card-body">
                    <table class="table table-sm table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Admin</th>
                                <th>Username</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            include 'db/koneksi.php';
                            $admin = mysqli_query($koneksi, "SELECT * FROM tbl_admin");
                            while ($row = mysqli_fetch_assoc($admin)) {
                            ?>
                            <tr>
                                <td><?= $row['nama_admin']; ?></td>
                                <td><?= $row['username']; ?></td>
                                <td class="text-center">
                                    <?php
                                    if ($row['status'] == 'online') {
                                        echo '<span class="badge badge-success">Online</span>';
                                    } else {
                                        echo '<span class="badge badge-danger">Offline</span>';
                                    }
                                    ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Profil Admin -->
        <div class="col-md-6 mt-4">
            <div class="card">
                <div class="card-header bg-success text-white">
                    Profil Admin
                </div>
                <div class="card-body">
                    <form action="proses/proses_admin.php" method="post" enctype="multipart/form-data">
                        <?php
                        include 'db/koneksi.php';
                        $id = $_SESSION['id'];
                        $qury = mysqli_query($koneksi, "SELECT * FROM tbl_admin WHERE id='$id'");
                        while ($data = mysqli_fetch_assoc($qury)) {
                        ?>  
                        <div class="form-group">
                            <input type="hidden" name="id" class="form-control" value="<?= $data['id']; ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="">Nama Admin</label>
                            <input type="text" name="nama_admin" class="form-control" value="<?= $data['nama_admin']; ?>" required>
                        </div>
                        <?php } ?>
                        <br>
                        <button type="submit" name="ubah_admin" class="btn btn-success btn-block">Simpan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Input Data Admin -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Input Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="proses/proses_admin.php" method="POST">
                    <div class="form-group">
                        <label for="">Nama Lengkap :</label>
                        <input type="text" name="nama_admin" class="form-control" placeholder="Masukkan nama lengkap anda" required>
                    </div>
                    <div class="form-group">
                        <label for="">Username :</label>
                        <input type="text" name="username" class="form-control" placeholder="Masukkan username anda" required>
                    </div>
                    <div class="form-group">
                        <label for="">Password :</label>
                        <input type="password" name="password" class="form-control" placeholder="Masukkan password anda" required>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" name="input_admin" class="btn btn-success">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
require 'template/footer.php';
?>
