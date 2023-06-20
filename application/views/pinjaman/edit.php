<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Data Peminjam</h1>
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

<?php echo form_open_multipart('datapinjaman/update/'.$alat_sedang_dipakais->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

          <div class="form-group">
          <label for="formClient-Role">Kode Barang</label>
            <select name="kode_barang" id="formClient-Role" class="form-control select2" required>
              <option value="<?php echo $data_pinjaman->id ?>"><?php echo $data_pinjaman->id ?></option>
              <?php foreach ($this->data_inventaris_model->get() as $row): ?>
                <?php $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '' ?>
                <option value="<?php echo $row->kode_barang ?>" <?php echo $sel ?>><?php echo $row->nama_barang ?></option>
              <?php endforeach ?>
            </select>
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

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
            <label for="formClient-Email">Tanggal Terpakai</label>
            <input type="date" class="form-control" name="tanggal_terpakai" id="formClient-Email" required>
          </div>

          <div class="form-group">
            <label for="formClient-Role">Pengguna</label>
            <select name="id_pengguna" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Users</option>
              <?php foreach ($this->users_model->get() as $row): ?>
                <?php $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '' ?>
                <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->name ?></option>
              <?php endforeach ?>
            </select>
          </div>

          <div class="form-group">
            <label for="formClient-Status">Kelas</label>
            <select name="kelas" id="formClient-Status" class="form-control">
              <option value="x-a" selected>X-A</option>
              <option value="x-b">X-B</option>
              <option value="xi-a">XI-A</option>
              <option value="xi-b">XI-B</option>
              <option value="xii-a">XII-A</option>
              <option value="xii-a">XII-B</option>
            </select>
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
        <div class="col"><a href="<?php echo url('/datapinjaman') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

