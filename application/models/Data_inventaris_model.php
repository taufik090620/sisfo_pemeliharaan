<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_inventaris_model extends MY_Model {
 
    public $table = 'data_inventaris';
 
    public function __construct()
    {
        parent::__construct();
    }
    public function get_print() {
        $query = $this->db->get('data_inventaris');
        return $query->result();
    }
    

}