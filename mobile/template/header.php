<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- /*Chrome*/ -->
    <meta name='theme-color' content='#343a40' />
    <!-- /*Windows Phone*/ -->
    <meta name="msapplication-navbutton-color" content='#343a40' />
    <!-- /*Safari iOS*/ -->
    <meta content='yes' name='apple-mobile-web-app-capable'/>
    <meta name="apple-mobile-web-app-status-bar-style" content='#343a40' />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
    <title>Absensi Karyawan | Mobile</title>
  </head>
<style>
  body{
            background-color:rgb(153, 224, 170);
        }
    .card{
        border : 0;
        /* box-shadow: 3px 3px 10px -5px; */
        border-radius: 15px;
    }
    .shadow{
      box-shadow: 3px 3px 10px -5px;
    }
</style>
  <script>
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition, showError);
        } else {
            alert("Geolocation tidak didukung di browser ini.");
        }
    }

    function showPosition(position) {
        document.getElementById("latitude").value = position.coords.latitude;
        document.getElementById("longitude").value = position.coords.longitude;
    }

    function showError(error) {
        switch(error.code) {
            case error.PERMISSION_DENIED:
                alert("Pengguna menolak permintaan Geolocation.");
                break;
            case error.POSITION_UNAVAILABLE:
                alert("Informasi lokasi tidak tersedia.");
                break;
            case error.TIMEOUT:
                alert("Permintaan lokasi terlalu lama.");
                break;
            case error.UNKNOWN_ERROR:
                alert("Terjadi kesalahan yang tidak diketahui.");
                break;
        }
    }
</script>
