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
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.jurusan, pemeliharaan.keterangan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan');    
        $this->db->from('pemeliharaan');
        $this->db->join('ruangan', 'pemeliharaan.id_ruangan = ruangan.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPemeliharaanJoinByID($id)
	{
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.jurusan, pemeliharaan.keterangan, data_inventaris.nama_barang, data_inventaris.nama_barang, ');    
        $this->db->from('pemeliharaan');
        $this->db->join('ruangan', 'pemeliharaan.id_ruangan = ruangan.id');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.nama_barang');
        $this->db->where("pemeliharaan.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListPemeliharaanKosong()
    {
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.jurusan, pemeliharaan.keterangan, data_inventaris.nama_barang, data_inventaris.nama_barang, data_inventaris.kondisi as inventaris_kondisi');    
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.nama_barang', 'left');
        $this->db->where("data_inventaris.nama_barang NOT IN (SELECT nama_barang FROM pemeliharaan)", null, false);
        $this->db->set('pemeliharaan.kondisi', 'data_inventaris.kondisi', false);
        $query = $this->db->get();
        return $query->result();
    }
    
    
    public function getListPemeliharaanEdit()
    {
        $this->db->select('pemeliharaan.id, data_inventaris.nama_barang, pemeliharaan.kondisi, pemeliharaan.tanggal_pemeliharaan,  pemeliharaan.jurusan, pemeliharaan.keterangan');
        $this->db->from('pemeliharaan');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.nama_barang', 'left');
        $this->db->where('pemeliharaan.nama_barang IS NOT NULL');
        $query = $this->db->get();
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