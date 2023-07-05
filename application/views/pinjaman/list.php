<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_pinjaman') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_pinjaman') ?></li>
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
                <h3 class="card-title p-3"><?php echo lang('data_pinjaman') ?></h3>
                <div class="ml-auto p-2">
<!-- buttons -->
                    <?php if (hasPermissions('pinjaman_add')): ?>
                      <a href="<?php echo url('datapinjaman/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Pinjaman</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Kode Barang</th>
                    <th>Nama Ruangan</th>
                    <th>Tanggal Terpakai</th>
                    <th>Pengguna</th>
                    <th>Email</th>
                    <th>Kelas</th>
                    <th>Status</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_pinjaman as $row): ?>
                    <tr>
                      <td width="60"><?php echo $row->kode_barang ?></td>
                      <td width="50" class="text-center">
                         <?php echo $row->nama_ruangan ?>
                      </td>
                      <td>
                        <?php echo $row->tanggal_terpakai ?>
                      </td>
                      <td><?php echo $row->name ?></td>
                      <td><?php echo $row->email ?></td>
                      <td><?php echo $row->kelas ?></td>
                      <td><?php echo $row->status ?></td>
                      <td>
                        <?php if (hasPermissions('pinjaman_edit')): ?>
                          <a href="<?php echo url('datapinjaman/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_user') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('pinjaman_delete')): ?>
                          <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                            <a href="<?php echo url('datapinjaman/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_user') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                          <?php else: ?>
                            <a href="#" class="btn btn-sm btn-danger" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                          <?php endif ?>
                        <?php endif ?>
                        <?php if (hasPermissions('pinjaman_confirmation')): ?>
                            <?php echo form_open_multipart('datapinjaman/konfirmasi/'.$row->id); ?>
                              <button type="submit" class="btn btn-flat btn-success"><i class="fas fa-check"></i>Konfirmasi</button>
                            <?php echo form_close(); ?>
                        <?php endif ?>
                        
                        <?php if (hasPermissions('pengembalian_add')): ?>
                          <a href="<?php echo url('datapinjaman/pengembalian/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_user') ?>" data-toggle="tooltip"><i class="fas fa-undo"></i> Pengembalian</a>
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