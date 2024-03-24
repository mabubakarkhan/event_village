<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends CI_Controller {

	public function __construct()
	{
        parent::__construct();
        error_reporting(0);
        $this->load->database();
        $this->load->model('Model_functions','model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('session');
	}
	public function delete_account()
	{
		if ($_REQUEST) {
			$this->db
			->where('user_id',$_REQUEST['id'])
			->delete('user');
			if ($resp) {
				echo json_encode(array("status"=>true,"msg"=>'deleted.'));
			}
			else{
				echo json_encode(array("status"=>false,"msg"=>"not deleted."));
			}
		}
		else{
			echo json_encode(array("status"=>false,"msg"=>"Invalid API call!"));
		}
	}
	public function login()
	{
		if ($_REQUEST) {
			$email = $_REQUEST['email'];
			$password = md5($_REQUEST['password']);
			$resp = $this->model->get_row("SELECT `user_id`,`email`,`password` FROM `user` WHERE `email` = '$email' AND `password` = '$password';");
			if ($resp) {
				
				echo json_encode(array("status"=>true,"data"=>$resp));
			}
			else{
				echo json_encode(array("status"=>false,"msg"=>"Email/passeord is not correct."));
			}
		}
		else{
			echo json_encode(array("status"=>false,"msg"=>"Invalid API call!"));
		}
	}
	public function signup()
	{
		if ($_REQUEST) {
			$email = $_REQUEST['email'];
			$password = md5($_REQUEST['password']);
			$resp = $this->model->get_row("SELECT `user_id`,`email`,`password` FROM `user` WHERE `email` = '$email';");
			if ($resp) {
				echo json_encode(array("status"=>false,"msg"=>"This email address already in use, please different email address."));
			}
			else{
				$insert['password_text'] = $_REQUEST['password'];
				$insert['password'] = md5($_REQUEST['password']);
				$insert['email'] = $_REQUEST['email'];
				$insert['token'] = $_REQUEST['token'];
				$this->db->insert('user',$insert);
				$userID = $this->db->insert_id();
				$resp = $resp = $this->model->get_row("SELECT `user_id`,`email`,`password` FROM `user` WHERE `user_id` = '$userId';");
				echo json_encode(array("status"=>true,"data"=>$resp));
			}
		}
		else{
			echo json_encode(array("status"=>false,"msg"=>"invalid API call!"));
		}
	}
	public function forgot_password()
	{
		if ($_REQUEST) {
			$email = $_REQUEST['email'];
			$resp = $this->model->get_row("SELECT `email`,`password_text` FROM `user` WHERE `email` = '$email';");
			if ($resp) {

				$message = 'your password is "'.$resp['password_text'].'"';
				$headers = '';
			    $headers .= "From: test@domain.com" ."\r\n" .
				$headers .= "MIME-Version: 1.0\r\n";
				$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
				$headers .= "X-Priority: 3\r\n";
				$headers .= "X-Mailer: PHP". phpversion() ."\r\n" ;
				mail($email, 'Your passeord', $message, $headers);
				echo json_encode(array("status"=>true,"msg"=>"Email sent."));
			}
			else{
				echo json_encode(array("status"=>false,"msg"=>"This email is not registered."));
			}
		}
		else{
			echo json_encode(array("status"=>false,"msg"=>"invalid API call!"));
		}
	}
	public function events($status = 'all')
	{
		$events = $this->model->events($status);
		$ids = $this->model->get_all_whislist_ids($_REQUEST['user_id']);
		echo json_encode(array("status"=>true,"data"=>$events,"whisListIds"=>$ids));
	}
	public function event($id)
	{
		$event = $this->model->get_event_byid($id);
		echo json_encode(array("status"=>true,"data"=>$event));
	}
	public function event_wishlist()
	{
		$id = $_REQUEST['user_id'];
		$resp = $this->model->get_results("
			SELECT ue.user_id, e.* 
			FROM `user_event` AS ue 
			INNER JOIN `event` AS e ON ue.event_id = e.event_id 
			WHERE ue.user_id = '$id' 
			ORDER BY e.event_at DESC
		;");
		echo json_encode(array("status"=>true,"data"=>$resp));
	}
	public function create_event_wishlist()
	{
		$this->db->insert('user_event',$_REQUEST);
		echo json_encode(array("status"=>true));
	}
	public function remove_event_wishlist()
	{
		$this->db
		->where('user_id',$_REQUEST['user_id'])
		->where('event_id',$_REQUEST['event_id'])
		->delete('user_event');
		echo json_encode(array("status"=>true));
	}
	public function offers($status = 'all')
	{
		$offers = $this->model->offers($status);
		echo json_encode(array("status"=>true,"data"=>$offers));
	}
	public function offer($id)
	{
		$offer = $this->model->get_offer_byid($id);
		echo json_encode(array("status"=>true,"data"=>$offer));
	}
	public function notifications($id)
	{
		$data = $this->model->get_user_notifications($id);
		echo json_encode(array("status"=>true,"data"=>$data));
	}
	public function notification_status($id)
	{
		$this->db
		->where('notification_id',$id)
		->set('status','seen')
		->update('notification');
		echo json_encode(array("status"=>true));
	}
	public function token_update($id)
	{
		$this->db
		->where('user_id',$id)
		->set('token',$_REQUEST['token'])
		->update('user');
		echo json_encode(array("status"=>true));
	}
}