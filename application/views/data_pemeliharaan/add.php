<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Tambah Data Pemeliharaan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/users') ?>"><?php echo lang('users') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('new_user') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapemeliharaan/save', [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

          <div class="form-group">
          <label for="formClient-Role">Nama Barang</label>
            <select name="nama_barang" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Barang</option>
              <?php foreach ($this->data_pemeliharaan_model->getListpemeliharaanKosong() as $row): ?>
                <?php $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '' ?>
                <option value="<?php echo $row->nama_barang ?>" <?php echo $sel ?>><?php echo $row->nama_barang ?></option>
              <?php endforeach ?>
            </select>
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Kondisi</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="formClient-Status">Kondisi</label>
            <select name="kondisi" id="formClient-Status" class="form-control">
              <option value="baik" selected>Baik</option>
              <option value="rusak">Rusak</option>
              <option value="hilang">Hilang</option>
            </select>
          </div>
          </div>
        </div>
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">ruangan</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Role">ID Ruangan</label>
            <select name="id_ruangan" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Ruangan</option>
              <?php foreach ($this->data_ruangan_model->get() as $row): ?>
                <?php $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '' ?>
                <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->nama_ruangan ?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Jurusan</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="formClient-Status">Jurusan</label>
            <select name="jurusan" id="formClient-Status" class="form-control">
              <option value="RPL" selected>RPL</option>
              <option value="SIJA">SIJA</option>
              <option value="TEI">TEI</option>
            </select>
          </div>
          </div>
        </div>
      <!-- /.card -->
      
    </div>
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Tanggal</h3>
        </div>
        <div class="card-body">

          
        <div class="form-group">
            <label for="formClient-Email">Tanggal Pemeliharaan</label>
            <input type="date" class="form-control" name="tanggal_pemeliharaan" id="formClient-Email" required>
          </div>
          <div class="form-group">
            <label for="formClient-Address">Keterangan</label>
            <textarea type="text" class="form-control" name="keterangan" id="formClient-Address" placeholder="Keterangan" rows="3"></textarea>
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->
      <!-- /.card -->

    </div>
  </div>

  <!-- Default card -->
  <div class="card">
    <div class="card-footer">
      <div class="row">
        <div class="col"><a href="<?php echo url('datapemeliharaan') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
        <div class="col text-right"><button type="submit" class="btn btn-flat btn-primary"><?php echo lang('submit') ?></button></div>
      </div>
    </div>
    <!-- /.card-footer-->

  </div>
  <!-- /.card -->

<?php echo form_close(); ?>

</section>
<!-- /.content -->


<script>
  $(document).ready(function() {
    $('.form-validate').validate();

      //Initialize Select2 Elements
    $('.select2').select2()

  })

  function previewImage(input, previewDom) {

    if (input.files && input.files[0]) {

      $(previewDom).show();

      var reader = new FileReader();

      reader.onload = function(e) {
        $(previewDom).find('img').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }else{
      $(previewDom).hide();
    }

  }

  function createUsername(name) {
      return name.toLowerCase()
        .replace(/ /g,'_')
        .replace(/[^\w-]+/g,'')
        ;;
  }

</script>

<?php include viewPath('includes/footer'); ?>

