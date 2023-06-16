<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>


<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>View Data Inventaris</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datainventaris') ?>">Data Inventaris</a></li>
              <li class="breadcrumb-item active"><?php echo $User->id ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->
<!-- Main content -->
<section class="content">

<div class="row">
          <div class="col-12">
            <!-- Custom Tabs -->
            <div class="card">
              <div class="card-header d-flex p-0">
                <h3 class="card-title p-3">View Data Inventaris</h3>
                <ul class="nav nav-pills ml-auto p-2">

					<li class="nav-item active"><a class="nav-link active" href="#tab_1" data-toggle="tab"><?php echo lang('overview') ?></a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
				  <div class="row">
      		<div class="col-sm-10" style="padding-left: 50px;">
      			<table class="table table-bordered table-striped">
      				<tbody>
      					<tr>
      						<td width="160"><strong>Nama Barang</strong>:</td>
      						<td><?php echo $data_inventaris->nama_barang ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Kode Barang</strong>:</td>
      						<td><?php echo $data_inventaris->kode_barang ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Merek</strong>:</td>
      						<td><?php echo $data_inventaris->merek ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Asal Usul</strong>:</td>
      						<td><?php echo $data_inventaris->asal_usul ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Tahun Peredaran</strong>:</td>
      						<td><?php echo $data_inventaris->tahun_peredaran ?></td>
      					</tr>
                          
      					<tr>
      						<td width="160"><strong>Kondisi</strong>:</td>
      						<td><?php echo $data_inventaris->kondisi ?></td>
      					</tr>
                          
      					<tr>
      						<td width="160"><strong>Harga Barang</strong>:</td>
      						<td><?php echo $data_inventaris->harga_barang ?></td>
      					</tr>
                          
      					<tr>
      						<td width="160"><strong>Keterangan</strong>:</td>
      						<td><?php echo $data_inventaris->keterangan ?></td>
      					</tr>
                          
      					<tr>
      						<td width="160"><strong>Masa Hidup Alat</strong>:</td>
      						<td><?php echo $data_inventaris->masa_hidup_alat ?></td>
      					</tr>
      				</tbody>
      			</table>
      		</div>
      	</div>
                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="tab_2">
				  <table id="dataTable1" class="table table-bordered table-striped">
					<thead>
					<tr>
						<th><?php echo lang('id') ?></th>
						<th><?php echo lang('activity_ip_address') ?></th>
						<th><?php echo lang('activity_message') ?></th>
						<th><?php echo lang('activity_datetime') ?></th>
						<th><?php echo lang('action') ?></th>
					</tr>
					</thead>
					<tbody>

					<?php foreach ($User->activity as $row): ?>
						<tr>
						<td width="60"><?php echo $row->id ?></td>
						<td><?php echo !empty($row->ip_address)?'<a href="'.url('activity_logs/index?ip='.urlencode($row->ip_address)).'">'.$row->ip_address.'</a>':'N.A' ?></td>
						<td>
							<a href="<?php echo url('activity_logs/view/'.$row->id) ?>"><?php echo $row->title ?></a>
						</td>
						<td><?php echo date('d M, Y', strtotime($row->created_at)) ?></td>
						<td>
							<a href="<?php echo url('activity_logs/view/'.$row->id) ?>" class="btn btn-sm btn-default" title="View Activity" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
						</td>
						</tr>
					<?php endforeach ?>

					</tbody>
				</table>
                  </div>
				  
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- ./card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- END CUSTOM TABS -->

</section>

<?php include viewPath('includes/footer'); ?>

<script>
	$('#dataTable1').DataTable({
    "order": []
  });
</script>
