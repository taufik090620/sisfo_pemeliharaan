<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataLaporkanKerusakan extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Laporkan Kerusakan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datalaporkankerusakan';
		$this->load->model(data_laporkan_kerusakan_model);
	}

	public function index()
    {
		ifPermissions('laporkan_kerusakan_list');
		$this->page_data['data_laporkan_kerusakan'] = $this->data_laporkan_kerusakan_model->getLaporkanKerusakanJoin();
        
		$this->load->view('data_laporkan_kerusakan/list', $this->page_data);
    }

	
	public function add()
	{
		ifPermissions('laporkan_kerusakan_add');
		$this->load->view('data_laporkan_kerusakan/add', $this->page_data);
	}

	public function save()
	{
		ifPermissions('laporkan_kerusakan_add');
		postAllowed();

		$id = $this->data_laporkan_kerusakan_model->create([
			'id_pengguna' => logged('id'),
			'nama_barang' => post('nama_barang'),
			'tingkat_kerusakan' => post('tingkat_kerusakan'),
			'keterangan' => post('keterangan'),
			'status' => 'Menunggu Di Cek Oleh Teknisi'
		]);


		$this->activity_model->add('Data Laporan Kerusakan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-tyPe', 'success');
		$this->session->set_flashdata('alert', 'Data Laporan Kerusakan Created Successfully');

		redirect('datalaporkankerusakan');
	}

	public function delete($id)
	{

		ifPermissions('laporkan_kerusakan_delete');

		$id = $this->data_laporkan_kerusakan_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Laporkan Kerusakan has been Deleted Successfully');
		
		redirect('datalaporkankerusakan');

	}
	
	public function edit($id)
	{

		ifPermissions('laporkan_kerusakan_edit');

		$this->page_data['data_laporkan_kerusakan'] = $this->data_laporkan_kerusakan_model->getById($id);
		$this->load->view('data_laporkan_kerusakan/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('laporkan_kerusakan_view');

		$this->page_data['data_laporkan_kerusakan'] = $this->data_laporkan_kerusakan_model->getById($id);
		$this->load->view('data_laporkan_kerusakan/view', $this->page_data);

	}
	
	public function update($id)
	{

		postAllowed();

		ifPermissions('laporkan_kerusakan_edit');

		$data = [
			'id_pengguna' => logged('id'),
			'nama_barang' =>  $this->input->post('nama_barang'),
			'tingkat_kerusakan' =>  $this->input->post('tingkat_kerusakan'),
			'keterangan' =>  $this->input->post('keterangan'),
			'status' => 'Menunggu Di Cek Oleh Teknisi'
		];

		$permission = $this->data_laporkan_kerusakan_model->update($id, $data);

		$this->activity_model->add("Data Laporkan Kerusakan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'laporan kerusakan has been Updated Successfully');

		redirect('datalaporkankerusakan');
	}
	public function konfirmasi ($id) {
		ifPermissions('kerusakan_confirmation');

		$data = [
			'status' => 'Alat Sudah Di Cek Oleh Teknisi'
			
		];
		


		$id = $this->data_laporkan_kerusakan_model->update($id, $data);

		$this->activity_model->add("Data Lapor Kerusakan #$id Dikonfirmasi Oleh Teknisi :".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Teknisi menngkonfirmasi laporan kerusakan');
		
		redirect('datalaporkankerusakan');
	}

}