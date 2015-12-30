<?php

//echo "<meta content=\"application/javascript\">";

require("init.inc");
$data = get_signed_data();
if(isset($data['user_id']))
	echo db_anon::get_active_user_code($data['user_id']);

?>