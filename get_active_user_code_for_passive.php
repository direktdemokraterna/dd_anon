<?php

require("init.inc");
$data = get_signed_data();
if(isset($data['user_codes'])){
	$user_codes_array = unserialize($data['user_codes']);
	$return_array = Array();
	foreach($user_codes_array as $row){
		$passive_user_code = $row['user_code'];
		$active_user_code = db_anon::get_active_user_code_from_passive($passive_user_code);
		$return_array[$passive_user_code] = $active_user_code;
	}
	$return_array_serialized = serialize($return_array);
	echo $return_array_serialized;
}