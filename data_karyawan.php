<?php
$title = "Absensi Karyawan | Data Karyawan";
require 'template/header.php';
require 'template/navbar.php';
?>
<style>
    .img-linkar {
        width: 40px;
        height: 40px;
        border-radius: 100%;
    }
</style>

<div class="col-md-12 mt-4">
    <div class="card">
        <div class="card-header" style="background-color: #28a745;">
            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal">&plus;</button>
            <span class="text-white">Data Karyawan</span>
        </div>
        <div class="card-body">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Foto</th>
                        <th>NIK</th>
                        <th>Nama Karyawan</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>Jabatan</th>
                        <th>Departemen</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    include 'db/koneksi.php';
                    $no = 1;
                    $karyawan = mysqli_query($koneksi, "SELECT * FROM tbl_karyawan");
                    while ($row = mysqli_fetch_assoc($karyawan)) {
                    ?>
                    <tr>
                        <td><?= $no; ?></td>
                        <td><center><img src="img/<?= $row['foto_karyawan']; ?>" alt="..." class="img-linkar"></center></td>
                        <td><?= $row['nik']; ?></td>
                        <td><?= $row['nama_karyawan']; ?></td>
                        <td><?= $row['tanggal_lahir']; ?></td>
                        <td><?= $row['alamat']; ?></td>
                        <td><?= $row['jabatan']; ?></td>
                        <td><?= $row['departemen']; ?></td>
                        <td><?= $row['email']; ?></td>
                        <td>
                            <button name="edit" data-toggle="modal" data-target="#edit_karyawan<?= $row['nik']; ?>" class="btn btn-warning btn-sm">
                                <i class="fa-solid fa-user-pen"></i>
                            </button> ||
                            <form action="proses/proses_karyawan.php" method="post" style="display:inline;">
                                <input type="hidden" name="nik" value="<?= $row['nik']; ?>">
                                <button type="submit" name="hapus_karyawan" class="btn btn-danger btn-sm" 
                                        onclick="return confirmDelete('<?= $row['nama_karyawan']; ?>');">
                                    <i class="fa-solid fa-delete-left"></i>
                                </button>
                            </form>
                        </td>
                    </tr>

                    <!-- Modal Edit Karyawan -->
                    <div class="modal fade" id="edit_karyawan<?= $row['nik']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Ubah Karyawan</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="proses/proses_karyawan.php" method="POST">
                                        <input type="hidden" class="form-control" name="nik" value="<?= $row['nik']; ?>" required> 
                                        <div class="form-group">
                                            <label for="nama_karyawan">Nama Karyawan :</label>
                                            <input type="text" class="form-control" name="nama_karyawan" value="<?= $row['nama_karyawan']; ?>" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="tanggal_lahir">Tanggal Lahir :</label>
                                            <input type="date" class="form-control" name="tanggal_lahir" value="<?= $row['tanggal_lahir']; ?>" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="jabatan">Jabatan :</label>
                                            <input type="text" class="form-control" name="jabatan" value="<?= $row['jabatan']; ?>" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="departemen">Departemen :</label>
                                            <input type="text" class="form-control" name="departemen" value="<?= $row['departemen']; ?>" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email :</label>
                                            <input type="email" class="form-control" name="email" value="<?= $row['email']; ?>" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password :</label>
                                            <input type="password" class="form-control" name="password" placeholder="Masukkan Password" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="jk">Jenis Kelamin :</label>
                                            <select name="jk" class="form-control">
                                                <option value="<?= $row['jk']; ?>" selected>
                                                    <?= $row['jk'] == 'L' ? 'Laki - Laki' : 'Perempuan'; ?>
                                                </option>
                                                <option value="L">Laki - Laki</option>
                                                <option value="P">Perempuan</option>
                                            </select> 
                                        </div>
                                        <div class="form-group">
                                            <label for="alamat">Alamat :</label>
                                            <textarea class="form-control" name="alamat" cols="10" rows="3"><?= $row['alamat']; ?></textarea>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" name="ubah_karyawan" class="btn btn-primary">Submit</button>
                                        </div>
                                    </form>  
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php $no++; } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal Input Karyawan -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Input Karyawan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="proses/proses_karyawan.php" method="POST">
                    <div class="form-group">
                        <label for="no_kartu">Nomor Kartu :</label>
                        <input type="text" class="form-control" name="no_kartu" placeholder="Masukkan No Kartu Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="nik">Nomor Induk Kependudukan :</label>
                        <input type="text" class="form-control" name="nik" placeholder="Masukkan NIK Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="nama_karyawan">Nama Karyawan :</label>
                        <input type="text" class="form-control" name="nama_karyawan" placeholder="Masukkan Nama Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="tanggal_lahir">Tanggal Lahir :</label>
                        <input type="date" class="form-control" name="tanggal_lahir" required> 
                    </div>
                    <div class="form-group">
                        <label for="jabatan">Jabatan :</label>
                        <input type="text" class="form-control" name="jabatan" placeholder="Masukkan Jabatan Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="departemen">Departemen :</label>
                        <input type="text" class="form-control" name="departemen" placeholder="Masukkan Departemen Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="email">Email :</label>
                        <input type="email" class="form-control" name="email" placeholder="Masukkan Email Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="password">Password :</label>
                        <input type="password" class="form-control" name="password" placeholder="Masukkan Password Anda" required> 
                    </div>
                    <div class="form-group">
                        <label for="jk">Jenis Kelamin :</label>
                        <select name="jk" class="form-control" required>
                            <option disabled selected>:: Jenis Kelamin ::</option>
                            <option value="L">Laki - Laki</option>
                            <option value="P">Perempuan</option>
                        </select> 
                    </div>
                    <div class="form-group">
                        <label for="alamat">Alamat :</label>
                        <textarea class="form-control" name="alamat" placeholder="Masukkan Alamat :" cols="10" rows="3" required></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" name="input_karyawan" class="btn btn-primary">Submit</button>
                    </div>
                </form>  
            </div>
        </div>
    </div>
</div>

<script>
    function confirmDelete(namaKaryawan) {
        return confirm('Apakah Anda yakin ingin menghapus data karyawan ' + namaKaryawan + '?');
    }
</script>

<?php
require 'template/footer.php';
?>