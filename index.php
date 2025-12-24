<?php
    session_start();
    $title = "Absensi Karyawan | Login";
    require 'template/header.php';
    error_reporting(0);
    if ($_SESSION['status'] == "online") {
        header("location:dashboard.php");
    }
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>

    <!-- Tambahkan Bootstrap & FontAwesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    
    <style>
        /* Navbar styling */
        .navbar {
            background: #4CAF50;
            color: white;
            padding: 15px;
            border-bottom: 5px solid #fdb606;
        }

        .navbar h3 {
            margin: 0;
            font-size: 22px;
            font-weight: bold;
        }

        /* Card styling */
        .card {
            border: none;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            padding: 20px;
        }

        /* Form styling */
        .form-control {
            border-radius: 5px;
            padding-left: 40px;
        }

        .input-group .input-group-text {
            background-color: #fff;
            border-right: 0;
            color: #4CAF50;
        }

        .input-group input:focus {
            box-shadow: none;
            border-color: #4CAF50;
        }

        .btn-primary {
            background-color: #4CAF50;
            border: none;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #45a049;
        }

        /* Container */
        .container {
            margin-top: 70px;
        }

        /* Centering login box */
        .signin-box {
            max-width: 400px;
            margin: auto;
        }

        .signin-box h4 {
            font-size: 24px;
            font-weight: bold;
        }

        .signin-box hr {
            border-top: 2px solid #ddd;
        }

    </style>
</head>
<body>

<nav class="navbar text-white">
    <h3>Queensha Media Group</h3>
</nav>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card signin-box text-center">
                <div class="text-center">
                    <img src="img/user.png" alt="User Icon" width="60">
                    <h4 class="mt-2">Sign In</h4>
                </div>
                <div id="data"></div>
                <hr>
                <form action="proses/cek_login.php" method="POST">
                    <div class="form-group mb-3">
                        <label class="float-start fw-bold">Username</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                            <input type="text" name="username" class="form-control" placeholder="Username Anda" required>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label class="float-start fw-bold">Password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                            <input type="password" name="password" class="form-control" placeholder="Password Anda" required>
                        </div>
                    </div>
                    <hr>
                    <?php require 'alert.php'; ?>
                    <button type="submit" name="login" class="btn btn-primary w-100">Masuk</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php require 'template/footer.php'; ?>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        setInterval(function(){
            $("#data").load('get_otomatis.php')
        }, 1000);  // pembacaan file get_otomatis.php tiap 1 detik
    });
</script>

</body>
</html>
