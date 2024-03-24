<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
	{
	        parent::__construct();
	        error_reporting(E_ALL);
	        $this->load->database();
	        $this->load->model('Model_functions','model');
	        $this->load->helper(array('form', 'url'));
	        $this->load->library(array('session','firebase_lib'));
	}

	/**
	*

		@HATH NA LAIE

	*
	*/
	public function template($page = '', $data = '')
	{
		if (isset($_SESSION['admin']))
		{
			$data['admin'] = unserialize($_SESSION['admin']);
			$data['login'] = true;
		}
		else
		{
			$data['login'] = false;
		}
		$this->load->view('admin/header',$data);
		$this->load->view($page,$data);
		$this->load->view('admin/footer',$data);
	}
	public function login_template($page = '', $data = '')
	{
		if (isset($_SESSION['admin']))
		{
			$data['admin'] = unserialize($_SESSION['admin']);
			$data['login'] = true;
		}
		else
		{
			$data['login'] = false;
		}
		$this->load->view('admin/new_login_header',$data);
		$this->load->view($page,$data);
		$this->load->view('admin/new_login_footer',$data);

	}




	/**
	
	@Login Randi-Rona

	*/
	
	public function login()
	{
		if (isset($_SESSION['admin']))
		{
			redirect('admin/index');
			return;
		}
		$data['title'] = 'Login';
		$this->login_template('admin/signin', $data);
	}
	public function check_login()
	{
		if(isset($_SESSION['admin']) && $_SESSION['admin']!= "")
		{
			$user = unserialize($_SESSION['admin']);
			$username = $user['username'];
			$password = $user['password'];
			$resp = $this->model->get_row("SELECT * FROM `admin` WHERE `username` = '$username'  AND `password` =  '$password'");
			if ($resp)
			{
				return $user;
			}
			else
			{
				redirect('admin/login');
			}
		}
		else 
		{
			redirect('admin/login');
		}
	}
	public function change_password()
	{
		$user = $this->check_login();
		$data['signin'] = FALSE;
		$username = $user['username'];
		if (isset($_POST['password']) && strlen($_POST['password']) > 0 && isset($_POST['re_password']) && strlen($_POST['re_password']) > 0) 
		{
			$password = md5($_POST['password']);
			$re_password = md5($_POST['re_password']);
			if ($password === $re_password) 
			{
				if ($this->db->update('admin', array("password"=>$password), array("username"=>$username))) 
				{
					redirect("admin/logout");
				}
			}
			else
			{
				redirect("admin/change_password?error=1&msg='Your Provided Passwords are not matched, please try with correct password'");
			}
		}
		$data['username'] = $username;
		$this->template("admin/change_password", $data);
	}

	public function logout()
	{
		unset($_SESSION['admin']);
		redirect("admin/login");
	}
	/**
	@Login Ajax
	*/
	public function process_login()
	{
		if ($_POST)
		{
			$username = $_POST['username'];
			$password = md5($_POST['password']);

			$resp = $this->model->get_row("SELECT * FROM `admin` WHERE `username` = '$username'  AND `password` =  '$password';");
			if ($resp)
			{
				$_SESSION['admin'] = serialize($resp);
				redirect('admin/index');
				return;
			}
			else
			{
				redirect('admin/login');
				return;
			}
		}
		else
		{
			redirect('admin');
		}
	}
	

	/***************************************
	*	callling main index function here 
	****************************************/
	public function dashboard()
	{
		$this->index('all');
	}
	public function events($status = 'all')
	{
		$this->index($status);
	}
	public function index($status = 'all')
	{
		$user = $this->check_login();
		$data['title'] = "Admin Panel";
		if ($status == 'all') {
			$data['page_title'] = 'All Events';
			$data['menu'] = 'all_events';
		}
		else if ($status == '1') {
			$data['page_title'] = 'All Events Inside Village';
			$data['menu'] = 'inside_events';
		}
		else if ($status == '0') {
			$data['page_title'] = 'All Events Outside Village';
			$data['menu'] = 'outside_events';
		}
		$data['events'] = $this->model->events($status);
		$this->template('admin/events', $data);
	}
	public function offers($status = 'all')
	{
		$user = $this->check_login();
		$data['page_title'] = $status.' Offers';
		$data['menu'] = $status.'_offers';
		$data['offers'] = $this->model->offers($status);
		$this->template('admin/offers', $data);
	}
	public function users($status = 'all')
	{
		$user = $this->check_login();
		$data['page_title'] = $status.' users';
		$data['menu'] = $status.'_users';
		$data['users'] = $this->model->users($status);
		$this->template('admin/users', $data);
	}
	/**********************************************
	*	starting Add functions from here for:
	*	company, News&Events, Home, Collection, Albums And Photo
	***********************************************/
	public function add_event()
	{
		$user = $this->check_login();
		$data['page_title'] = 'Add Event';
		$data['menu'] = 'add_event';
		$this->template('admin/add_event', $data);
	}
	public function add_offer()
	{
		$user = $this->check_login();
		$data['page_title'] = 'Add Offer';
		$data['menu'] = 'add_offer';
		$this->template('admin/add_offer', $data);
	}
	/**********************************************
	*	starting insert functions from here for:
	*	company, News&Events, Home, Collection, Albums And Photo
	************************************************/
	public function post_event()
	{
		$user = $this->check_login();
		$resp = $this->db->insert("event", $_POST);
		$msg = "New Event! Join us for the spectacular '".$_POST['title']."', at the '".$_POST['address']."'! Don't miss out!";
		$this->send_firebase_notifications($msg,'New Event');
		redirect("admin/events/".$_POST['in_village']."/?msg=Event Added!");
	}
	public function post_offer()
	{
		$user = $this->check_login();
		$resp = $this->db->insert("offer", $_POST);
		$msg = "Unwrap the excitement! Our '".$_POST['title']."' offer kicks off at ".$_POST['address'].". Don't miss out!";
		$this->send_firebase_notifications($msg,'New Offer');
		redirect("admin/offers/all/?msg=Offer Added!");
	}

	/**********************************************
	*	starting edit functions from here for:
	*	company, News&Events, Home, Collection, Albums And Photo
	************************************************/
	public function edit_event()
	{
		$user = $this->check_login();
		$new_id = isset($_GET['id']) ? $_GET['id'] : 0;
		if($new_id < 1) 
		{
			echo json_encode("Wrong Event ID has been passed");
		}
		else 
		{
			$data['q'] = $this->model->get_event_byid($new_id);
			$data['page_title'] = "Edit: Event";
			$data['mode'] = "edit";
			$data['menu'] = 'all_events';
			$this->template('admin/add_event', $data);
		}
	}
	public function edit_offer()
	{
		$user = $this->check_login();
		$new_id = isset($_GET['id']) ? $_GET['id'] : 0;
		if($new_id < 1) 
		{
			echo json_encode("Wrong offer ID has been passed");
		}
		else 
		{
			$data['q'] = $this->model->get_offer_byid($new_id);
			$data['page_title'] = "Edit: Offer";
			$data['mode'] = "edit";
			$data['menu'] = 'all_offers';
			$this->template('admin/add_offer', $data);
		}
	}
	
	/**********************************************
	*	starting update functions from here for:
	*	company, News&Events, Home, Collection, Albums And Photo
	************************************************/
	public function update_event()
	{
		$user = $this->check_login();
		$aid = $_POST['aid'];
		unset($_POST['aid'], $_POST['mode'], $_POST['security']);
		$this->db->where("event_id",$aid);
		$data = $this->db->update("event", $_POST);
		if($data)
		{
			redirect("admin/events/".$_POST['in_village']."/?msg=Edited Event");
		}
		else
		{
			redirect("admin/events/".$_POST['in_village']."/?error=1&msg=Error occured while Editing Event");
		}
	}
	public function update_offer()
	{
		$user = $this->check_login();
		$aid = $_POST['aid'];
		unset($_POST['aid'], $_POST['mode'], $_POST['security']);
		$this->db->where("offer_id",$aid);
		$data = $this->db->update("offer", $_POST);
		if($data)
		{
			redirect("admin/offers/".$_POST['status']."/?msg=Edited Offer");
		}
		else
		{
			redirect("admin/offers/".$_POST['status']."/?error=1&msg=Error occured while Editing Offer");
		}
	}
	/**********************************************
	*	starting delete functions from here for:
	*	company, News&Events, Home, Collection, Albums And Photo 	
	************************************************/
	
	public function delete_event()
	{
		$user = $this->check_login();
		$image = $this->model->get_row("SELECT `image` FROM `event` WHERE `event_id` = '".$_GET['id']."';");
		$this->db->where('event_id', $_GET['id']);
		$resp = $this->db->delete('event');
		if($resp)
		{
			unlink('uploads/'.$image['image']);
			redirect("admin/events/all/?msg=Event has Deleted");
		}
		else
		{
			redirect("admin/events/all/?error=1&msg=Event has failed to delete. Try Again!");
		}
	}
	public function delete_offer()
	{
		$user = $this->check_login();
		$image = $this->model->get_row("SELECT `image` FROM `offer` WHERE `offer_id` = '".$_GET['id']."';");
		$this->db->where('offer_id', $_GET['id']);
		$resp = $this->db->delete('offer');
		if($resp)
		{
			unlink('uploads/'.$image['image']);
			redirect("admin/offers/all/?msg=Offer has Deleted");
		}
		else
		{
			redirect("admin/offers/all/?error=1&msg=Offer has failed to delete. Try Again!");
		}
	}
	public function delete_user()
	{
		$user = $this->check_login();
		$this->db->where('user_id', $_GET['id']);
		$resp = $this->db->delete('user');
		if($resp)
		{
			redirect("admin/users/all/?msg=User has Deleted");
		}
		else
		{
			redirect("admin/users/all/?error=1&msg=User has failed to delete. Try Again!");
		}
	}
	/**
	*

	@AJAX PHOTO
		
	*
	*/
	public function post_photo_ajax()
	{
		$user = $this->check_login();
		if ($_FILES){
			$config['upload_path'] = 'uploads/';
        	$config['allowed_types'] = 'gif|jpeg|jpg|png|PNG|JPEG|JPG|GIF';
        	$config['encrypt_name'] = TRUE;
        	$ext = pathinfo($_FILES['img']['name'], PATHINFO_EXTENSION);
			$new_name = md5(time().$_FILES['img']['name']).'.'.$ext;
			$config['file_name'] = $new_name;
			$this->load->library('upload', $config);
        	if ($this->upload->do_upload('img'))
        	{
	        	$img = $this->upload->data()['file_name'];
	        	echo json_encode(array("status"=>true,"data"=>$img));
        	}
        	else{
        		#error
	        	echo json_encode(array("status"=>false));
        	}

		}
		else{
			redirect('admin/logout');
		}
	}
	/**
	*

	@AJAX
		
	*
	*/
	public function change_user_status()
	{	
		$user = $this->check_login();
		$this->db
		->where('user_id',$_POST['id'])
		->set('status',$_POST['status'])
		->update('user');
		echo json_encode(array("status"=>true,"msg"=>"Status changed."));
	}
	/**
	*

	@AJAX
		
	*
	*/
	private function send_firebase_notifications($body,$title)
	{
		$user = $this->model->get_results("SELECT `token`,`user_id` FROM `user` WHERE `token` != '';");
		if ($user) {
			foreach ($user as $key => $q) {
		        //push notifications
		        $deviceToken = $q['token'];
		        $this->firebase_lib->sendNotification($title, $body, $deviceToken);
		        //save in db
		        $insert['user_id'];
		        $insert['msg'] = $body;
		        $this->db->insert('notification',$insert);
			}
		}
        return true;
	}
}
