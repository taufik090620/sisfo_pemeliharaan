<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Tambah Data Inventaris</h1>
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

<?php echo form_open_multipart('datainventaris/save', [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Name">Nama Barang</label>
            <input type="text" class="form-control" name="nama_barang" id="formClient-Name" required placeholder="nama barang" />
          </div>

          <div class="form-group">
            <label for="formClient-Contact">Kode Barang</label>
            <input type="text" class="form-control" name="kode_barang" id="formClient-Contact" placeholder="" />
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Detail Asal Barang</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Email">Merek</label>
            <input type="text" class="form-control" name="merek" id="formClient-Email" required placeholder="Enter email">
          </div>

          <div class="form-group">
            <label for="formClient-Username">Asal Usul</label>
            <input type="text" class="form-control" name="asal_usul" id="formClient-Username" required placeholder="Asal Usul" />
          </div>

          <div class="form-group">
            <label for="formClient-Password">Tahun Peredaran</label>
            <input type="text" class="form-control" name="tahun_peredaran" minlength="6" id="formClient-Password" required placeholder="2019-01-20">
          </div>

          <div class="form-group">
            <label for="formClient-Password">Ukuran</label>
            <input type="text" class="form-control" name="ukuran" id="formClient-Password" required placeholder="20 m2">
          </div>

          <div class="form-group">
            <label for="formClient-Status">Satuan</label>
            <select name="satuan" id="formClient-Status" class="form-control">
              <option value="m2" selected>m2</option>
              <option value="unit">unit</option>
              <option value="buah">buah</option>
              <option value="set">set</option>
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
          <h3 class="card-title">Keterangan Lain</h3>
        </div>
        <div class="card-body">

          
        <div class="form-group">
            <label for="formClient-Status">Kondisi</label>
            <select name="kondisi" id="formClient-Status" class="form-control">
              <option value="baik" selected>Baik</option>
              <option value="rusak">Rusak</option>
            </select>
          </div>
          <div class="form-group">
            <label for="formClient-Status">Masa Hidup Alat</label>
            <select name="masa_hidup_alat" id="formClient-Status" class="form-control">
              <option value="1 Tahun" selected>1 Tahun</option>
              <option value="2 Tahun">2 Tahun</option>
              <option value="3 Tahun">3 Tahun</option>
              <option value="4 Tahun">4 Tahun</option>
              <option value="5 Tahun">5 Tahun</option>
              <option value="6 Tahun">6 Tahun</option>
              <option value="7 Tahun">7 Tahun</option>
              <option value="8 Tahun">8 Tahun</option>
              <option value="9 Tahun">9 Tahun</option>
              <option value="10 Tahun">10 Tahun</option>
              <option value="10+ Tahun">10+ Tahun</option>
            </select>
          </div>
          <div class="form-group">
            <label for="formClient-ConfirmPassword">Harga Barang</label>
            <input type="number" class="form-control" name="harga_barang" placeholder="5000">
          </div>

          <div class="form-group">
            <label for="formClient-Role">Kategori</label>
            <select name="role" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Kategori</option>
              <?php foreach ($this->kategori_inventaris_model->get() as $row): ?>
                <?php $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '' ?>
                <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->jenis_barang ?></option>
              <?php endforeach ?>
            </select>
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
        <div class="col"><a href="<?php echo url('/datainventaris') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

