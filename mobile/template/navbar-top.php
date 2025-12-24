<style>
    .navbar-toggler {
        border: none;
    }
    .img-linkar {
        width: 40px;
        height: 40px;
        border-radius: 100%;
    }
    .navbar {
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2); /* Tambahkan shadow */
    }
</style>
<nav class="navbar navbar-dark bg-success">
  <a class="navbar-brand" href="profil.php">
    <img src="../img/<?= $_SESSION['foto_karyawan']; ?>" alt="..." class="img-linkar">
  </a>
  <a href="" class="navbar-brand"><?= $title; ?></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <br>
      <a class="nav-item btn btn-primary" href="proses/logout.php">Logout</a>
    </div>
  </div>
</nav>
