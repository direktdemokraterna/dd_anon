<?php

require("init.inc");

if(isset($_POST['user_id'])){

	$active_user_code = GenerateRandomString(20);
	$passive_user_code1 = GenerateRandomString(20);
	$passive_user_code2 = GenerateRandomString(20);
	$passive_user_code3 = GenerateRandomString(20);

	$ok = db_anon::insert_new_user($_POST['user_id'], $active_user_code, $passive_user_code1, $passive_user_code2, $passive_user_code3);

	if($ok){
		echo "success";
	}
	else{
		echo "failed";
	}

}