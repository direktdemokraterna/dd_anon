<?php

require("init.inc");

//if(isset($_POST['user_id']) && isset($_POST['temp_code']) && isset($_POST['constituencies'])){
if(isset($_POST['user_id']) && isset($_POST['temp_code'])){

//	$constituencies_array = json_decode($_POST['constituencies'])

//	$ok = db_anon::insert_temp_code_and_constituencies($_POST['temp_code'], $_POST['user_id'], $constituencies_array);

	$ok = db_anon::insert_user_id_and_temp_code($_POST['user_id'], $_POST['temp_code']);

	if($ok){
		echo "success";
	}
	else{
		echo "failed";
	}

}