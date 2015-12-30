<?php

require("init.inc");
$data = get_signed_data();
if(isset($data['user_codes'])){
	$user_codes_array = unserialize($data['user_codes']);
	$return_array = Array();
	foreach($user_codes_array as $row){
		$active_user_code = $row['user_code'];
		$passive_user_code = db_anon::get_passive_user_code_for_user($active_user_code);
		$return_array[$active_user_code] = $passive_user_code;
	}
	$return_array_serialized = serialize($return_array);
	echo $return_array_serialized;
}