<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1>Data Riwayat</h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_inventaris') ?></li>
        </ol>
        </div>
    </div>
    </div><!-- /.container-fluid -->
</section>
 
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
        <div class="row">
            <div class="col-12">
            <div class="card">
                <div class="card-header d-flex p-0">
                <h3 class="card-title p-3"><?php echo lang('data_inventaris') ?></h3>
                <div class="ml-auto p-2">
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Kode Barang</th>
                    <th>Tahun</th>
                    <th>Keterangan</th>
                    <th>Tanggal Masuk</th>
                    <th>Tanggal Keluar</th>
                    <th>Status</th>
                    <th>Nama Pemindah</th>
                    <th>Kondisi Barang</th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($history as $row): ?>
                    <tr>
                      <td><?php echo $row->kode_barang ?></td>
                      <td class="text-center">
                         <?php echo $row->tahun ?>
                      </td>
                      <td class="text-center">
                         <?php echo $row->keterangan ?>
                      </td>
                      <td class="text-center">
                         <?php echo $row->tanggal_masuk ?>
                      </td>
                      <td class="text-center">
                         <?php echo $row->tanggal_keluar ?>
                      </td>
                      
                      <td class="text-center">
                         <?php echo $row->keterangan ?>
                      </td>
                      
                      <td class="text-center">
                         <?php echo $row->nama_pemindah_barang ?>
                      </td>
                      
                      <td class="text-center">
                         <?php echo $row->kondisi_barang ?>
                      </td>
                    </tr>
                  <?php endforeach ?>
                  </tbody>
                </table>
 
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
 
 
 
<?php include viewPath('includes/footer'); ?>