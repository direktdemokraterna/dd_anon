<?php
if(isset($_GET['user_id']) && isset($_GET['temp_code']) && (!isset($_GET['ignore']) || !$_GET['ignore']))
{
	require("init.inc");
	$user_code = db_anon::request_user_code($_GET['user_id'], $_GET['temp_code']);
	if($user_code) {
		$user_code_encoded = json_encode($user_code);
		echo "set_user_code($user_code_encoded)";
	}
	else
 		echo "failed_to_set_user_code()";
}
?>