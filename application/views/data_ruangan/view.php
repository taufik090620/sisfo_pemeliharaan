<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
    
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_ruangan') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_ruangan') ?></li>
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
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Kode Barang</th>
                    <th>Nama Barang</th>
                    <th>Merek</th>
                    <th>Asal Usul</th>
                    <th>Kondisi</th>
                    <th>Keterangan</th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_ruangan as $row): ?>
                    <tr>
                    <td width="60"><?php echo $row->kode_barang ?></td>
                      <td width="50" class="text-center">
                         <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                        <?php echo $row->merek ?>
                      </td>
                      <td><?php echo $row->asal_usul ?></td>
                      <td><?php echo $row->kondisi ?></td>
                      <td><?php echo $row->keterangan ?></td>
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
    <!-- /.content -->
 
 
 
<?php include viewPath('includes/footer'); ?>