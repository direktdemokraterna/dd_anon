<?php

require("init.inc");

if(isset($_POST['user_id']) && isset($_POST['user_constituencies']) && isset($_POST['ballot'])){

	$active_user_code = db_anon::get_active_user_code($_POST['user_id']);

	$ballot_decoded = decrypt_ballot($_POST['ballot']);

	if($active_user_code == $ballot_decoded['user_code']){

		if($ballot_decoded['user_id'] == $_POST['user_id']){
			$post_vars = Array("user_code" => $active_user_code, "user_constituencies" => $_POST['user_constituencies'], "rsa" => $ballot_decoded['rsa'], "aes" => $ballot_decoded['aes']);

			$reply = curl_to_main_server("receive_delegation_ballot.php", $post_vars);

			if($reply == "success"){
				echo "success";
			}
			else{
				echo "failed - reply from receive_ballot: " . $reply;
			}
		}
		else{
			echo "failed - user_id mismatch";
		}

	}
	else{
		echo "failed - user code error";
	}

}