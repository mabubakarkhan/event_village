<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Hildes extends CI_Controller {

	public function __construct()
	{
	        parent::__construct();
	        error_reporting(0);
	        $this->load->database();
	        $this->load->helper(array('form', 'url'));
	        $this->load->library('session');
	}
	public function index()
	{
		redirect('admin/index');
	}
}