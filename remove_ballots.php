<?php

require("init.inc");

//TODO: Add signature for web-server so anon-server can verify the sender of the request
if(isset($_POST['user_id'])){
	$user_codes = db_anon::get_all_user_codes($_POST['user_id']);
	$reply = curl_to_main_server("remove_ballots.php", $user_codes);
	echo $reply == "success" 
		? "success" 
		: "failed - reply from remove_ballots: " . $reply;
}
else echo "user_id was not posted";

?>