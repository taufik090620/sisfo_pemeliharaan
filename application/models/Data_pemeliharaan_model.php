<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pemeliharaan_model extends MY_Model {
 
    public $table = 'pemeliharaan';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPemeliharaanJoin()
	{
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, fasilitas.nama_fasilitas, fasilitas.jenis_fasilitas');    
        $this->db->from('pemeliharaan');
        $this->db->join('fasilitas', 'pemeliharaan.id_fasilitas = fasilitas.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPemeliharaanJoinByID($id)
	{
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, data_inventaris.nama_barang, data_inventaris.nama_barang, ');    
        $this->db->from('pemeliharaan');
        $this->db->join('fasilitas', 'pemeliharaan.id_fasilitas = fasilitas.id');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.nama_barang');
        $this->db->where("pemeliharaan.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListPemeliharaanKosong()
    {
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, data_inventaris.nama_barang, data_inventaris.nama_barang, data_inventaris.kondisi as inventaris_kondisi');    
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.nama_barang', 'left');
        $this->db->where("data_inventaris.nama_barang NOT IN (SELECT nama_barang FROM pemeliharaan)", null, false);
        $this->db->set('pemeliharaan.kondisi', 'data_inventaris.kondisi', false);
        $query = $this->db->get();
        return $query->result();
    }
    
    
    public function getListPemeliharaanEdit()
    {
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan');
        $this->db->from('pemeliharaan');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.nama_barang', 'left');
        $query = $this->db->get();
    
        // Update kondisi di tabel data_inventaris jika ada kondisi baru
        foreach ($query->result() as $row) {
            $data = array(
                'kondisi' => $row->kondisi
            );
            $this->db->where('nama_barang', $row->nama_barang);
            $this->db->update('data_inventaris', $data);
        }
    
        return $query->result();
    }
    
    
    public function get_print() {
        $query = $this->db->get('data_pemeliharaan');
        return $query->result();
    }
    
    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

}