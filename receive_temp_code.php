<?php
require("init.inc");
$data = get_signed_data();
if(isset($data['user_id']) && isset($data['temp_code'])){
	try {
		db_anon::update_user_temp_code($data['user_id'], $data['temp_code']);
		echo "success";
	}
	catch (Exception $e) {
		echo "fail: " . $e;		
	}
}
?>