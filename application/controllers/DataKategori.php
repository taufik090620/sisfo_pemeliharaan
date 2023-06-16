<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataKategori extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Kategori';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datakategori';
    }
                                     
    public function index()
    {
		ifPermissions('kategori_list');
		$this->page_data['kategori'] = $this->kategori_inventaris_model->get();
		$this->load->view('data_kategori/list', $this->page_data);
    }
    
    public function add()
	{
		ifPermissions('kategori_add');
		$this->load->view('data_kategori/add', $this->page_data);
	}
    
    public function save()
	{
		ifPermissions('kategori_add');
		postAllowed();

		$id = $this->kategori_inventaris_model->create([
			'jenis_barang' => post('jenis_barang'),
			'keterangan' => post('keterangan')
		
		]);


		$this->activity_model->add('Data Kategori Ditambahkan '.$id.' Created by User:'.logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Kategori Created Successfully');
		
		redirect('datakategori');

	}

    public function delete($id)
	{

		
		ifPermissions('kategori_delete');

		$id = $this->kategori_inventaris_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		
		redirect('datakategori');

	}
	
	public function edit($id)
	{

		ifPermissions('kategori_edit');

		$this->page_data['data_kategori'] = $this->kategori_inventaris_model->getById($id);
		$this->load->view('data_kategori/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('kategori_view');

		$this->page_data['data_kategori'] = $this->kategori_inventaris_model->getById($id);
		$this->load->view('data_kategori/view', $this->page_data);

	}

	public function update($id)
	{

		ifPermissions('kategori_edit');
		
		postAllowed();

		$data = [
			'jenis_barang' => post('jenis_barang'),
			'keterangan' => post('keterangan')
		];

		$id = $this->kategori_inventaris_model->update($id, $data);

		$this->activity_model->add("Data Kategori #$id Updated by User:".logged('name'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Client Profile has been Updated Successfully');
		
		redirect('datakategori');
	}
};