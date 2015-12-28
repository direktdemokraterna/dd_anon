<?php

require("init.inc");

//TODO: Add signature for web-server so anon-server can verify the sender of the request
if(isset($_POST['user_id'])){
	$active_user_code = db_anon::get_active_user_code($_POST['user_id']);
	$post_vars = Array("user_code" => $active_user_code);
	$reply = curl_to_main_server("remove_prop_ballots.php", $post_vars);
	echo $reply == "success" 
		? "success" 
		: "failed - reply from remove_prop_ballots: " . $reply;
}
else echo "user_id was not posted";

?>