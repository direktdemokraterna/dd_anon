<?php
class db_anon 
{
	public static function update_user_temp_code ($user_id, $temp_code){
		$id = self::generate_user_code_for_new_user($user_id);
		if (!($id > 0)) 
			throw new Exception("Failed to generate user_codes for new user: " . $user_id);
		$query = "insert into user_temp_codes (temp_code, user_id, timestamp_created) values (?, ?, ?)";
		$values = Array($temp_code, $user_id, time());
		$id = db::insert($query, $values);
		if (!($id > 0)) 
			throw new Exception("Failed to generate temp_code for user: " . $user_id);
	}

	public static function check_temp_code_and_user_id ($temp_code, $user_id){
		$query = "select count(*) from user_temp_codes where temp_code = ? and user_id = ?";
		$values = Array($temp_code, $user_id);
		$result = db::select_single_value($query, $values);
		return $result > 0;
	}

	public static function add_user_id_to_temp_code ($user_id, $temp_code){
		$query = "update user_temp_codes set user_id = ? where temp_code = ?";
		$values = Array($user_id, $temp_code);
		return db::update($query, $values);
	}

	public static function request_user_code ($user_id, $temp_code){
		$query = "select user_code from user u 
					join user_temp_codes utc on u.user_id = utc.user_id
					where u.user_id = ? and utc.temp_code = ?";
		$values = Array($user_id, $temp_code);
		return db::select_single_row($query, $values);
	}

	public static function get_user_code ($user_id){
		$query = "select user_code from user
					where user_id = ?";
		$values = Array($user_id);
		return db::select_single_value($query, $values);
	}

	public static function update_last_login ($user_id){
		$query = "update user set timestamp_last_login = ? where user_id = ?";
		$values = Array(time(), $user_id);
		return db::update($query, $values);
	}

	public static function update_last_activity ($user_id){
		$query = "update user set timestamp_last_activity = ? where user_id = ?";
		$values = Array(time(), $user_id);
		return db::update($query, $values);
	}

	public static function delete_old_temp_codes (){
		$query = "delete from user_temp_codes where timestamp_created < ?";
		$values = Array(time() - ERASE_TEMP_CODES_AFTER_SECONDS);
		db::delete($query, $values);
		$query = "delete from temp_codes_constituencies where timestamp_created < ?";
		$values = Array(time() - ERASE_TEMP_CODES_AFTER_SECONDS);
		return db::delete($query, $values);
	}

	private static function generate_user_code_for_new_user ($user_id){
		$id = self::get_primary_key_of_user($user_id);
		return $id
			? $id 
			: self::generate_new_user_code($user_id); 
	}

	private static function get_primary_key_of_user ($user_id){
		$query = "select id from user where user_id = ?";
		$values = Array($user_id);
		return db::select_single_value($query, $values);
	}

	private static function generate_new_user_code ($user_id){
		$user_code = GenerateRandomString(20);
		$query = "insert into user (user_id, user_code) values (?, ?)";
		$values = Array($user_id, $user_code);
		return db::insert($query, $values);
	}
}
?>