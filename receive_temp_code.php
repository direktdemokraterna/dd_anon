<?php
require("init.inc");
if(isset($_POST['user_id']) && isset($_POST['temp_code'])){
	try {
		db_anon::update_user_temp_code($_POST['user_id'], $_POST['temp_code']);
		echo "success";
	}
	catch (Exception $e) {
		echo "fail: " . $e;		
	}
}