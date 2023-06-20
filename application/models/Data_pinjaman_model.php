<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pinjaman_model extends MY_Model {
 
    public $table = 'alat_sedang_dipakais';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPinjamanJoin()
	{
        $this->db->select('alat_sedang_dipakais.id, alat_sedang_dipakais.status, alat_sedang_dipakais.kode_barang, alat_sedang_dipakais.tanggal_terpakai,alat_sedang_dipakais.kode_ruangan,alat_sedang_dipakais.kelas, ruangan.nama_ruangan, ruangan.kapasitas_ruangan, users.name, users.email');    
        $this->db->from('alat_sedang_dipakais');
        $this->db->join('ruangan', 'alat_sedang_dipakais.id_ruangan = ruangan.id');
        $this->db->join('users', 'alat_sedang_dipakais.id_pengguna = users.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPinjamanJoinByID($id)
	{
        $this->db->select('alat_sedang_dipakais.id, alat_sedang_dipakais.kode_barang,alat_sedang_dipakais.kelas, alat_sedang_dipakais.tanggal_terpakai,alat_sedang_dipakais.kode_ruangan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan, users.name, users.email, data_inventaris.tahun_peredaran    ');    
        $this->db->from('alat_sedang_dipakais');
        $this->db->join('ruangan', 'alat_sedang_dipakais.id_ruangan = ruangan.id');
        $this->db->join('users', 'alat_sedang_dipakais.id_pengguna = users.id');
        $this->db->join('data_inventaris', 'alat_sedang_dipakais.kode_barang = data_inventaris.kode_barang');
        $this->db->where("alat_sedang_dipakais.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListPinjamanKosong()
	{
        $this->db->select('alat_sedang_dipakais.id, alat_sedang_dipakais.kode_barang, alat_sedang_dipakais.tanggal_terpakai,alat_sedang_dipakais.kode_ruangan, data_inventaris.kode_barang, data_inventaris.nama_barang');    
        $this->db->from('data_inventaris');
        $this->db->join('alat_sedang_dipakais', 'alat_sedang_dipakais.kode_barang = data_inventaris.kode_barang', 'left');
        $this->db->where("data_inventaris.kode_barang NOT IN (select kode_barang from alat_sedang_dipakais )", null, false );
        $query = $this->db->get();
		return $query->result();
	}

    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

}