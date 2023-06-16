<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataInventaris extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Inventaris';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datainventaris';
		$this->load->model(data_inventaris_model);
    }
                                     
    public function index()
    {
		ifPermissions('inventaris_list');
		$this->page_data['inventaris'] = $this->data_inventaris_model->get();
		$data['inventaris'] = $this->data_inventaris_model->get();
		$this->load->view('data_inventaris/list', $this->page_data);
    }
    
    public function add()
	{
		ifPermissions('inventaris_add');
		$this->load->view('data_inventaris/add', $this->page_data);
	}
    
    public function save()
	{
		ifPermissions('inventaris_add');
		postAllowed();

		$id = $this->data_inventaris_model->create([
			'nama_barang' => post('nama_barang'),
			'kode_barang' => post('kode_barang'),
			'merek' => post('merek'),
			'asal_usul' => post('asal_usul'),
			'tahun_peredaran' => post('tahun_peredaran'),
			'harga_barang' => (int) post('harga_barang'),
			'masa_hidup_alat' => post('masa_hidup_alat'),
			'keterangan' => post('keterangan'),
			'kategori' => post('kategori'),
			'kondisi' => post('kondisi')
		]);


		$this->activity_model->add('Data Inventaris Ditambahkan '.$id.' Created by User:'.logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris Created Successfully');
		
		redirect('datainventaris');

	}

    public function delete($id)
	{

		
		ifPermissions('inventaris_delete');

		$id = $this->data_inventaris_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		
		redirect('datainventaris');

	}
	
	public function edit($id)
	{

		ifPermissions('inventaris_edit');

		$this->page_data['data_inventaris'] = $this->data_inventaris_model->getById($id);
		$this->load->view('data_inventaris/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('inventaris_view');

		$this->page_data['data_inventaris'] = $this->data_inventaris_model->getById($id);
		$this->load->view('data_inventaris/view', $this->page_data);

	}
	
	public function update($id)
	{

		postAllowed();

		ifPermissions('inventaris_edit');

		$data = [
			'nama_barang' => $this->input->post('nama_barang'),
			'kode_barang' => $this->input->post('kode_barang'),
			'merek' => $this->input->post('merek'),
			'asal_usul' => $this->input->post('asal_usul'),
			'tahun_peredaran' => $this->input->post('tahun_peredaran'),
			'harga_barang' => $this->input->post('harga_barang'),
			'masa_hidup_alat' => $this->input->post('masa_hidup_alat'),
			'keterangan' => $this->input->post('keterangan'),
			'kategori' => $this->input->post('kategori'),
			'kondisi' => $this->input->post('kondisi')
		];

		$permission = $this->data_inventaris_model->update($id, $data);

		$this->activity_model->add("Data Inventaris #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Inventaris has been Updated Successfully');

		redirect('datainventaris');
	}
	public function print()
	{
		$data['inventaris'] = $this->data_inventaris_model->get();
		$this->load->view('print_inventaris', $data);
	}
	
};