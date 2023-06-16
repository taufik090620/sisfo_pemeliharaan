<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_ruangan_model extends MY_Model {
 
    public $table = 'ruangan';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getListInventarisRuangan($id)
	{
        $this->db->select('data_inventaris.id, data_inventaris.kode_barang, data_inventaris.nama_barang, data_inventaris.merek, data_inventaris.asal_usul, data_inventaris.ruangan, data_inventaris.kondisi, data_inventaris.keterangan');    
        $this->db->from('data_inventaris');
        $this->db->join('ruangan', 'data_inventaris.ruangan = ruangan.id');
        $this->db->where("data_inventaris.ruangan", $id );
        $query = $this->db->get();
        
		return $query->result();
	}
}