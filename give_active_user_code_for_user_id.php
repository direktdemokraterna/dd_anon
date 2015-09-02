<?php

//echo "<meta content=\"application/javascript\">";

require("init.inc");

if(isset($_POST['user_id'])){

	echo db_anon::get_active_user_code($_POST['user_id']);

}

?>