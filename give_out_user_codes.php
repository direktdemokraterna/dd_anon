<?php
if(isset($_GET['user_id']) && isset($_GET['temp_code'])
	&& (!isset($_GET['ignore']) || !$_GET['ignore'])) {
	require("init.inc");
	$user_codes = db_anon::get_user_codes($_GET['user_id'], $_GET['temp_code']);
	if($user_codes){
		$user_codes_encoded = json_encode($user_codes);
		echo "set_user_codes($user_codes_encoded)";
	}
	else
		echo "failed_to_set_user_codes()";
}
?>