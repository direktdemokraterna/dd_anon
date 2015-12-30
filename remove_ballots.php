<?php

require("init.inc");
$data = get_signed_data();
if(isset($data['user_id'])){
	$user_codes = db_anon::get_all_user_codes($data['user_id']);
	$reply = curl_to_main_server("remove_ballots.php", $user_codes);
	echo $reply == "success" 
		? "success" 
		: "failed - reply from remove_ballots: " . $reply;
}
else echo "user_id was not posted";

?>