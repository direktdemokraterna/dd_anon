<?php

require("init.inc");
$data = get_signed_data();

if(isset($data['user_id']) && isset($data['user_constituencies']) && isset($data['ballot'])){
	$user_code = db_anon::get_user_code($data['user_id']);
	$ballot_decoded = decrypt_ballot($data['ballot']);
	if($user_code == $ballot_decoded['user_code']){
		if($ballot_decoded['user_id'] == $data['user_id']){
			$post_vars = Array("user_code" => $user_code, "user_constituencies" => $data['user_constituencies'], "rsa" => $ballot_decoded['rsa'], "aes" => $ballot_decoded['aes']);
			$reply = curl_to_main_server("receive_delegation_ballot.php", $post_vars);
			echo  $reply == "success"
				? "success"
				: "failed - reply from receive_ballot: " . $reply;
		}
		else echo "failed - user_id mismatch";
	}
	else echo "failed - user code error";
}