<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pinjaman_model extends MY_Model {
 
    public $table = 'data_pinjam';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPinjamanJoin()
	{
        $this->db->select('data_pinjam.id, data_pinjam.status, data_pinjam.kode_barang, data_pinjam.tanggal_terpakai, data_pinjam.kelas, ruangan.nama_ruangan, ruangan.kapasitas_ruangan, users.name, users.email');    
        $this->db->from('data_pinjam');
        $this->db->join('ruangan', 'data_pinjam.id_ruangan = ruangan.id');
        $this->db->join('users', 'data_pinjam.id_pengguna = users.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPinjamanJoinByID($id)
	{
        $this->db->select('data_pinjam.id, data_pinjam.kode_barang, data_pinjam.tanggal_terpakai, ruangan.nama_ruangan, ruangan.kapasitas_ruangan, users.name, users.email, data_inventaris.tahun_peredaran    ');    
        $this->db->from('data_pinjam');
        $this->db->join('ruangan', 'data_pinjam.id_ruangan = ruangan.id');
        $this->db->join('users', 'data_pinjam.id_pengguna = users.id');
        $this->db->join('data_inventaris', 'data_pinjam.kode_barang = data_inventaris.kode_barang');
        $this->db->where("data_pinjam.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListPinjamanKosong()
	{
        $this->db->select('data_pinjam.id, data_pinjam.kode_barang, data_pinjam.tanggal_terpakai, data_inventaris.kode_barang, data_inventaris.nama_barang');    
        $this->db->from('data_inventaris');
        $this->db->join('data_pinjam', 'data_pinjam.kode_barang = data_inventaris.kode_barang', 'left');
        $this->db->where("data_inventaris.kode_barang NOT IN (select kode_barang from data_pinjam )", null, false );
        $query = $this->db->get();
		return $query->result();
	}

    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

}