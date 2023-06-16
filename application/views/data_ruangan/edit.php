<?php
defined('BASEPATH') or exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Edit Data Ruangan</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="<?php echo url('/dataruangan') ?>"><?php echo lang('data_ruangan') ?></a></li>
          <li class="breadcrumb-item active"><?php echo lang('new_user') ?></li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>
<!-- Main content -->

<section class="content">

  <?php echo form_open_multipart('dataruangan/update/'.$ruangan->id, ['class' => 'form-validate', 'autocomplete' => 'off']); ?>


  <div class="row">
    <div class="col">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label>Nama Ruangan</label>
            <input type="text" class="form-control" name="nama_ruangan" required placeholder="nama ruangan" value="<?php echo $ruangan->nama_ruangan ?>"/>
          </div>

          <div class="form-group">
            <label>kapasitas ruangan</label>
            <input type="text" class="form-control" name="kapasitas_ruangan" placeholder="kapasitas ruangan" value="<?php echo $ruangan->kapasitas_ruangan ?>"/>
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

    </div>
  </div>

  <!-- Default card -->
  <div class="card">
    <div class="card-footer">
      <div class="row">
        <div class="col"><a href="<?php echo url('/dataruangan') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
        <div class="col text-right"><button type="submit" class="btn btn-flat btn-primary"><?php echo lang('submit') ?></button></div>
      </div>
    </div>
    <!-- /.card-footer-->

  </div>
  <!-- /.card -->

  <?php echo form_close(); ?>

</section>
<!-- /.content -->

<?php include viewPath('includes/footer'); ?>