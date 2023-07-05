<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_inventaris') ?></h1>
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
                  <!-- buttons -->
                    <a href="<?= base_url('datainventaris/print') ?>" class="btn btn-info btnsm"><i class="fas fa-print"></i>Print</a>
                    <?php if (hasPermissions('users_add')): ?>
                      <a href="<?php echo url('datainventaris/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Inventaris</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Kode Barang</th>
                    <th>Nama Barang</th>
                    <th>Merek</th>
                    <th>Jurusan</th>
                    <th>Asal Usul</th>
                    <th>Tahun Peredaran</th>
                    <th>Harga Barang</th>
                    <th>Masa Hidup Alat</th>
                    <th>Kategori</th>
                    <th>Kondisi</th>
                    <th>Keterangan</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($inventaris as $row): ?>
                    <tr>
                      <td width="60"><?php echo $row->kode_barang ?></td>
                      <td width="50" class="text-center">
                         <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                        <?php echo $row->merek ?>
                      </td>
                      <td><?php echo $row->jurusan ?></td>
                      <td><?php echo $row->asal_usul ?></td>
                      <td><?php echo $row->tahun_peredaran ?></td>
                      <td><?php echo $row->harga_barang ?></td>
                      <td><?php echo $row->masa_hidup_alat ?></td>
                      <td><?php echo $row->kategori ?></td>
                      <td><?php echo $row->kondisi ?></td>
                      <td><?php echo $row->keterangan ?></td>
                      <td>
                        <?php if (hasPermissions('users_edit')): ?>
                          <a href="<?php echo url('datainventaris/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_user') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('users_view')): ?>
                          <a href="<?php echo url('datainventaris/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_user') ?>" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('users_delete')): ?>
                          <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                            <a href="<?php echo url('datainventaris/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_user') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
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