<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class Historys extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Riwayat';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datariwayat';
    }
                                     
    public function index()
    {
		ifPermissions('history_list');
		$this->page_data['history'] = $this->historys_model->get();
		$this->load->view('history/list', $this->page_data);
    }
    
};