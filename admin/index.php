<?php
  include('model/session.php');

  if(!$session->exist('is_login')){
    header('Location: login.php');
  }

  $menu = 'beranda';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>POLISURVEI - Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
   
  <?php include_once('layouts/header.php'); ?>
  <!-- /.navbar -->
  


  <!-- Main Sidebar Container -->
  <?php include_once('layouts/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
     <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Beranda</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Beranda</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
        <!-- Main content here -->
        <style>
          .container {
            display: flex;
            flex-direction: column;
            min-height: 80vh;
            border-radius: 20px;
            background-color: #2f3b45;
        }

        header .logo {
            font-size: 1.5em;
            font-weight: bold;
        }

        header .foto {
            width: 30px;
        }

        header .tes {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        header .profile {
            display: flex;
            gap: 15px;
        }

        header .profile a,
        header .profile span {
            text-decoration: none;
            color: white;
            cursor: pointer;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }

        header .profile .active {
            background: #fff;
            color: black;
        }

        header .profile a:hover,
        header .profile span:hover {
            background: #1452a6;
            color: white;
        }

        main {
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 10px;
        background-color: rgba(250, 250, 250, 0.9);
        width: 80%; /* Adjust the width as needed */
        height: 80%; /* Adjust the height as needed */
        max-width: 700px; /* Optional: limit the maximum width */
        max-height: 400px; /* Optional: limit the maximum height */
        border-radius: 20px; /* Adjust the border-radius to make corners round */
        margin: auto; /* Center the element */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Optional: add a shadow effect */
        }


        .survey-section {
            background: rgba(250, 250, 250, 0.9); /* Semi-transparent background */
            padding: 8px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 75%;
            max-width: 920px;
            color: #1a3d7c;
        }

        .survey-header h2 {
            margin: 0 0 10px;
            font-size: 1.5em;
        }

        .survey-title {
            font-size: 2.5em;
            margin-bottom: 5px;            
            margin-top: -10px; /* Adjust the value as needed */
            text-align: center;
            font-weight: bold;
        }

        .survey-options {
            display: flex;
            justify-content: space-around;
            gap: 20px;
            flex-wrap: nowrap;
        }

        .survey-options .option {
            background: #f4f4f4;
            border: 1px solid #ccc;
            border-radius: 10px;
            text-decoration: none;
            padding: 20px;
            width: 200px;
            text-align: center;
            transition: background 0.3s, border-color 0.3s;
            flex-shrink: 0;
        }

        .survey-options .option:hover {
            background: #e0e0e0;
            border-color: #1452a6;
        }

        .survey-options .option img {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
            object-fit: contain; /* To ensure aspect ratio is maintained */
        }

        .survey-options .option .title {
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        .survey-options .option .button {
            background: #445B99;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            transition: background 0.3s;
        }

        .survey-options .option .button:hover {
            background: #1452a6;
        }

        </style>
        <div class="container">
            
            <main>
                <div class="survey-options">
                    <div class="option">
                        <img src="asset/mahasiswa.png" alt="mahasiswa">
                        <div class="title"></div>
                        <a href="mahasiswa.php" class="button">Mahasiswa</a>
                    </div>
                    <div class="option">
                        <img src="asset/dosen.png" alt="dosen">
                        <div class="title"></div>
                        <a href="dosen.php" class="button">Dosen</a>
                    </div>
                    <div class="option">
                        <img src="asset/tendik.png" alt="tendik">
                        <div class="title"></div>
                        <a href="tendik.php" class="button">Tenaga Kependidikan</a>
                    </div>
                </div>
                <br>
                <div class="survey-options">
                    <div class="option">
                        <img src="asset/alumni.png" alt="alumni">
                        <div class="title"></div>
                        <a href="alumni.php" class="button">Alumni</a>
                    </div>
                    <div class="option">
                        <img src="asset/ortu.png" alt="ortu">
                        <div class="title"></div>
                        <a href="ortu.php" class="button">Orang Tua/Wali</a>
                    </div>
                    <div class="option">
                        <img src="asset/industri.png" alt="industri">
                        <div class="title"></div>
                        <a href="industri.php" class="button">Industri</a>
                    </div>
                </div>
            </main>
          
        </div>
      </div>
      <?php include_once('layouts/footer.php'); ?>
    </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
