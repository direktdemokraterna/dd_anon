<?php

//echo "<meta content=\"application/javascript\">";

require("init.inc");

if(isset($_GET['user_id']) && isset($_GET['temp_code'])){

	$user_codes = db_anon::get_user_codes($_GET['user_id'], $_GET['temp_code']);

	if(!empty($user_codes)){
		$output = Array("active_user_code" => $user_codes['active_user_code'], "passive_user_code1" => $user_codes['passive_user_code1'], "passive_user_code2" => $user_codes['passive_user_code2'], "passive_user_code3" => $user_codes['passive_user_code3']);
		$output_encoded = json_encode($output);
		echo "JSONP(" . $output_encoded . ")";
	}
	else{
		echo "";
	}

}

?>