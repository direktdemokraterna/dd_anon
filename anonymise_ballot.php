<?php

require("init.inc");

if(isset($_POST['user_id']) && isset($_POST['vote_id']) && isset($_POST['ballot'])){
	$active_user_code = db_anon::get_active_user_code($_POST['user_id']);
	$ballot_decoded = decrypt_ballot($_POST['ballot']);
	if($active_user_code == $ballot_decoded['user_code']){
		if($ballot_decoded['user_id'] == $_POST['user_id']){
			$post_vars = Array("user_code" => $active_user_code, "vote_id" => $_POST['vote_id'], "rsa" => $ballot_decoded['rsa'], "aes" => $ballot_decoded['aes']);
			$reply = curl_to_main_server("receive_ballot.php", $post_vars);
			echo $reply == "success"
				? "success"
				: "failed - reply from receive_ballot: " . $reply;
		}
		else echo "failed - user_id mismatch";
	}
	else echo "failed - user code error";
}