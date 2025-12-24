<?php
    session_start();
    error_reporting(0);
    if ($_SESSION['status'] == "online") {
        header("location:beranda.php");
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Theme Colors -->
    <meta name='theme-color' content='#343a40' />
    <meta name="msapplication-navbutton-color" content='#343a40' />
    <meta content='yes' name='apple-mobile-web-app-capable'/>
    <meta name="apple-mobile-web-app-status-bar-style" content='#343a40' />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Absensi Karyawan | Mobile</title>
    
    <style>
        body {
            background: linear-gradient(to right, #2E8B57, #228B22);
            font-family: Arial, sans-serif;
        }
        
        .container {
            margin-top: 10vh;
        }

        .card {
            border: 0;
            box-shadow: 3px 3px 10px -5px rgba(0, 0, 0, 0.2);
            border-radius: 20px;
            padding: 20px;
        }

        .form-control {
            border: none;
            border-bottom: 1px solid darkgray;
            border-radius: 0;
            background: transparent;
        }

        .form-control:focus {
            box-shadow: none;
            border-bottom: 2px solid #007bff;
        }

        h1 {
            margin-top: 10vh;
            color: white;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        /* Styling tombol agar lebih rapi */
        .button-container {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
        }
    </style>
  </head>

  <body>
    <div class="container">
        <div class="col-md-12">
            <center>
                <h1>Login Sistem Absensi Karyawan</h1>
            </center>
            <hr>
            <div class="card">
                <div class="card-body">
                    <form action="proses/cek_login.php" method="POST">
                        <div class="form-group">
                            <label><i class="fa-solid fa-envelope"></i> E-mail :</label>
                            <input type="email" name="email" placeholder="E-mail Anda" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label><i class="fa-solid fa-lock"></i> Password :</label>
                            <input type="password" name="password" class="form-control" placeholder="Kata Sandi Anda" required>
                        </div>
                        
                        <div class="button-container">
                            <button name="login_karyawan" type="submit" class="btn btn-primary btn-block"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
                            <button type="button" id="login-admin" class="btn btn-secondary"><i class="fas fa-user-shield"></i> Login Admin</button>
                        </div>

                        <center>
                            <small>
                                <a href="#">Lupa Password?</a>
                            </small>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-dark bg-white navbar-expand d-md-none d-lg-none d-xl-none fixed-bottom">
    <button name="login_karyawan" type="submit" class="btn btn-primary btn-block"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
    </form>
</nav>

    <!-- JavaScript -->
    <script src="https://kit.fontawesome.com/8d6eb64095.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Script untuk Mengarahkan ke Login Admin -->
    <script>
        document.getElementById("login-admin").addEventListener("click", function() {
            window.location.href = "/Absensi_Karyawan/Absensi_Karyawan/index.php";  // Mengarahkan ke halaman login admin
        });
    </script>

  </body>
</html>

<?php
if (isset($_GET['gagal'])) {
    if ($_GET['gagal'] == "password") {
        echo "<script>alert('Login gagal! Password yang Anda masukkan salah.');</script>";
    } elseif ($_GET['gagal'] == "email") {
        echo "<script>alert('Login gagal! Email tidak terdaftar.');</script>";
    }
}
?>
