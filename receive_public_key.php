<?php
if(isset($_POST['key'])) {
	$pk_filename = 'dd_public_key.txt';
	if (file_put_contents($pk_filename, $_POST['key']))
		echo "success";
	else 
		echo "Could not write public key to file $pk_filename";
}
?>