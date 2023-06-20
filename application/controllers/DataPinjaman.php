<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPinjaman extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pinjaman';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datapinjaman';
		$this->load->model(data_pinjaman_model);
    }
                                     
    public function index()
    {
		ifPermissions('pinjaman_list');
		$this->page_data['data_pinjaman'] = $this->data_pinjaman_model->getPinjamanJoin();
        
		$this->load->view('pinjaman/list', $this->page_data);
    }
    
    public function add()
	{
		ifPermissions('pinjaman_add');
		$this->load->view('pinjaman/add', $this->page_data);
	}
    
    public function save()
	{
		ifPermissions('pinjaman_add');
		postAllowed();

		$id = $this->data_pinjaman_model->create([
			'kode_barang' => post('kode_barang'),
			'id_ruangan' => post('id_ruangan'),
			'tanggal_terpakai' => post('tanggal_terpakai'),
			'id_pengguna' => post('id_pengguna'),
			'kelas' => post('kelas'),
			'status' => 'Menunggu Konfirmasi'
		]);


		$this->activity_model->add('Data Pinjaman Ditambahkan '.$id.' Created by User:'.logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pinjaman Created Successfully');
		
		redirect('datapinjaman');

	}
	public function savepengembalian ($id) {
		ifPermissions('pengembalian_add');
		postAllowed();

		$this->historys_model->create([
			'kode_barang' => post('kode_barang'),
			'tahun' => post('tahun_peredaran'),
			'id_ruangan' => post('id_ruangan'),
			'keterangan' => post('keterangan'),
			'tanggal_masuk' => post('tanggal_masuk'),
			'tanggal_keluar' => post('tanggal_keluar'),
			'nama_pemindah_barang' => post('nama_pemindah_barang'),
			'total_waktu_pemakaian' => post('total_waktu_pemakaian'),
			'kondisi_barang' => post('kondisi_barang'),
			
		]);

		$data = [
			'status' => 'Sudah Dikembalikan'
		];


		$this->data_pinjaman_model->update($id, $data);
		$this->activity_model->add('Data Pinjaman Dikembalikan '.$id.' Created by User:'.logged('name'), logged('id'));
		$this->data_pinjaman_model->delete($id);
		
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris Dikembalikan');
		
		redirect('datapinjaman');
	}

    public function delete($id)
	{

		
		ifPermissions('pinjaman_delete');

		$id = $this->data_pinjaman_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		
		redirect('datapinjaman');

	}
	

	public function edit($id)
	{

		ifPermissions('pinjaman_edit');

		$this->page_data['datapinjaman'] = $this->data_pinjaman_model->getById($id);
		$this->load->view('pinjaman/edit', $this->page_data);

	}
	public function pengembalian ($id) {
		ifPermissions('pengembalian_add');
		
		$this->page_Data['user_login'] = logged('name');
		$this->page_data['Pinjam'] = $this->data_pinjaman_model->getPinjamanJoinByID($id);
    	$this->load->view('pengembalian/add', $this->page_data);
	} 

	public function konfirmasi ($id) {
		ifPermissions('pinjaman_confirmation');

		$data = [
			'status' => 'Dikonfirmasi - Belum Dikembalikan'
			
		];
		


		$id = $this->data_pinjaman_model->update($id, $data);

		$this->activity_model->add("Data Pinjaman Inventaris #$id Dikonfirmasi Oleh Operator :".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Operator menngkonfirmasi peminjaman barang inventaris');
		
		redirect('datapinjaman');
	}

	public function update($id)
	{

		postAllowed();

		ifPermissions('pinjaman_edit');

		$data = [
			'kode_barang' => $this->input->post('kode_barang'),
			'id_ruangan' => $this->input->post('id_ruangan'),
			'tanggal_terpakai' => $this->input->post('tanggal_terpakai'),
			'id_pengguna' => $this->input->post('id_pengguna'),
			'kelas' => $this->input->post('kelas'),
			'status' => 'Menunggu Konfirmasi'
		];

		$permission = $this->data_pinjaman_model->update($id, $data);

		$this->activity_model->add("Data Pinjaman #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pinjaman has been Updated Successfully');

		redirect('datapinjaman');
	}
};