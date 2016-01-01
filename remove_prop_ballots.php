<?php

require("init.inc");
$data = get_signed_data();
if(isset($data['user_id']) && isset($data['constituency_id'])){
	$post_vars = db_anon::get_all_user_codes($data['user_id']);
	$post_vars['constituency_id'] = $data['constituency_id'];
	$reply = curl_to_main_server("remove_prop_ballots.php", $post_vars);
	echo $reply == "success" 
		? "success" 
		: "failed - reply from remove_prop_ballots: " . $reply;
}
else echo "user_id or constituency_id was not posted";

?>