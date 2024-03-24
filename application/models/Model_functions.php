<?php
class Model_functions extends CI_Model {

	public function get_results($sql){
		$res = $this->db->query($sql);
		if ($res->num_rows() > 0)
		{
			return $res->result_array();
		}
		else
		{
			return false;
		}
	}
	public function get_row($sql){
		$res = $this->db->query($sql);
		if ($res->num_rows() > 0)
		{
			$resp = $res->result_array();
			return $resp[0];
		}
		else
		{
			return false;
		}
	}
	public function login($username, $password, $check = FALSE)
	{
		$username = $this->db->escape(strtolower($username));
		if(!$check){$password = md5($this->db->escape($password));}
		return $this->db->get_row("SELECT * FROM `user` WHERE `username` = \"$username\" AND `password` = \"$password\";");
	}

	/**
	*
	*
	*	@CATEGORIES
	*
	*
	*/
	public function events($status)
	{
		if ($status == 'all') {
			return $this->get_results("SELECT * FROM  `event` ORDER BY `event_id` DESC;");
		}
		else{
			return $this->get_results("SELECT * FROM  `event` WHERE `in_village` = '$status' ORDER BY `event_id` DESC;");
		}
	}
	public function get_events($status)
	{
		$todayDate = date("Y-m-d");
		if ($status == 'all') {
			return $this->get_results("SELECT * FROM  `event` WHERE DATE(`event_at`) >= '$todayDate' ORDER BY `event_at` DESC;");
		}
		else{
			return $this->get_results("SELECT * FROM  `event` WHERE DATE(`event_at`) >= '$todayDate' AND `in_village` = '$status' ORDER BY `event_at` DESC;");
		}
	}
	public function get_event_byid($id)
	{
		return $this->get_row("SELECT * FROM  `event` WHERE `event_id` = '$id';");
	}
	public function get_all_whislist_ids($user)
	{
		return $this->get_results("SELECT `event_id` FROM `user_event` WHERE `user_id` = '$user';");
	}
	public function offers($status)
	{
		if ($status == 'all') {
			return $this->get_results("SELECT * FROM  `offer` ORDER BY `offer_id` ASC;");
		}
		else{
			return $this->get_results("SELECT * FROM  `offer` WHERE `status` = '$status' ORDER BY `offer_id` DESC");
		}
	}
	public function get_offer_byid($id)
	{
		return $this->get_row("SELECT * FROM  `offer` WHERE `offer_id` = '$id';");
	}
	public function users($status)
	{
		if ($status == 'all') {
			return $this->get_results("SELECT * FROM  `user`;");
		}
		else{
			return $this->get_results("SELECT * FROM  `user` WHERE `status` = '$status';");
		}
	}
	public function get_user_byid($id)
	{
		return $this->get_row("SELECT * FROM  `user` WHERE `user_id` = '$id';");
	}
	public function get_user_notifications($user)
	{
		return $this->get_results("SELECT * FROM  `notification` WHERE `user_id` = '$user' AND `status` = 'new' ORDER BY `notification_id` DESC;");
	}
}