<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataFasilitas extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Fasilitas';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datafasilitas';
	}

	public function index()
	{
		ifPermissions('fasilitas_list');
		$this->page_data['fasilitas'] = $this->data_fasilitas_model->get();
		$this->load->view('data_fasilitas/list', $this->page_data);
	}

	public function add()
	{
		ifPermissions('fasilitas_add');
		$this->load->view('data_fasilitas/add', $this->page_data);
	}

	public function save()
	{
		ifPermissions('fasilitas_add');
		postAllowed();

		$id = $this->data_fasilitas_model->create([
			'nama_fasilitas' => post('nama_fasilitas'),
			'jenis_fasilitas' => post('jenis_fasilitas'),
		]);


		$this->activity_model->add('Data Fasilitas Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Fasilitas Created Successfully');

		redirect('datafasilitas');
	}

	public function edit($id)
	{

		ifPermissions('fasilitas_edit');

		$this->page_data['fasilitas'] = $this->data_fasilitas_model->getById($id);
		$this->load->view('data_fasilitas/edit', $this->page_data);
	}

	public function delete($id)
	{
		ifPermissions('fasilitas_delete');

		$id = $this->data_fasilitas_model->delete($id);

		$this->activity_model->add("Data Inventaris #$id Deleted by User:" . logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('datafasilitas');
	}
}
