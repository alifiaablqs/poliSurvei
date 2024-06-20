<?php 
  $menu = 'form'; 

  include_once('model/form_soal_model.php');
  
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Form Soal</title>

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
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Form Soal</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Form Soal</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Soal Survey</h3>

          <div class="card-tools">
           <a href="soal_form.php?act=tambah" class="btn btn-sm btn-primary">Tambah Soal</a>
          </div>
        </div>
        <div class="card-body">
          <table class="table table-sm table-bordered">
            <thead>
              <tr>
                <th>No</th>
                <th>ID Survey</th>
                <th>Jenis</th>
                <th>Nama Soal</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>

              <?php 
                $soal = new Soal();

                // Paginasi
                $limit = 25;
                $page = isset($_GET['page']) ? $_GET['page'] : 1;
                $offset = ($page - 1) * $limit;
                $data = $soal->getDataWithLimit($offset, $limit);

                $i = 1 + $offset;
                while($row = $data->fetch_assoc()){
                    echo '<tr>
                      <td>'.$i.'</td>
                      <td>'.$row['survey_id'].'</td>
                      <td>'.$row['soal_jenis'].'</td>
                      <td>'.$row['soal_nama'].'</td>
                      <td>
                        <a onclick="return confirm(\'Apakah anda yakin menghapus data ini?\')" title="Hapus Data" href="soal_action.php?act=delete&id='.$row['soal_id'].'" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                    </td>
                    </tr>';
                    $i++;
                }
              ?>
            </tbody>
          </table>
          
        <div>
          <!-- Pagination -->
          <?php
            $total_records = $soal->countAllData();
            $total_pages = ceil($total_records / $limit);
          ?>

          <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
              <?php if ($page > 1): ?>
                <li class="page-item"><a class="page-link" href="?page=<?php echo ($page-1); ?>">Previous</a></li>
              <?php endif; ?>
              <?php for($i = 1; $i <= $total_pages; $i++): ?>
                <li class="page-item <?php if($page == $i) echo 'active'; ?>"><a class="page-link" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
              <?php endfor; ?>
              <?php if ($page < $total_pages): ?>
                <li class="page-item"><a class="page-link" href="?page=<?php echo ($page+1); ?>">Next</a></li>
              <?php endif; ?>
            </ul>
          </nav>
          <!-- End Pagination -->
        </div>

        </div>
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php include_once('layouts/footer.php'); ?>
  
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<script src="plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="plugins/jquery-validation/additional-methods.min.js"></script>

</body>
</html>
