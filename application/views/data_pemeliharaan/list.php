<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_pemeliharaan') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_pemeliharaan') ?></li>
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
                <h3 class="card-title p-3"><?php echo lang('data_pemeliharaan') ?></h3>
                <div class="ml-auto p-2">
                  <!-- buttons -->
                    <a href="<?= base_url('datapemeliharaan/print') ?>" class="btn btn-info btnsm"><i class="fas fa-print"></i>Print</a>
                    <?php if (hasPermissions('users_add')): ?>
                      <a href="<?php echo url('datapemeliharaan/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Pemeliharaan</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Nama Barang</th>
                    <th>Ruangan</th>
                    <th>Jurusan</th>
                    <th>Kondisi</th>
                    <th>Tanggal pemeliharaan</th>
                    <th>Keterangan</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_pemeliharaan as $row): ?>
                    <tr>
                      <td>
                      <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                      <?php echo $row->nama_ruangan ?>
                      </td>
                      <td>
                      <?php echo $row->jurusan ?>
                      </td>
                      <td>
                      <?php echo $row->kondisi ?>
                      </td>
                      <td><?php echo $row->tanggal_pemeliharaan ?></td>
                      <td>
                      <?php echo $row->keterangan ?>
                      </td>
                      <td>
                        <?php if (hasPermissions('users_edit')): ?>
                          <a href="<?php echo url('datapemeliharaan/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_user') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('users_delete')): ?>
                          <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                            <a href="<?php echo url('datapemeliharaan/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_user') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                          <?php else: ?>
                            <a href="#" class="btn btn-sm btn-danger" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                          <?php endif ?>
                        <?php endif ?>
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