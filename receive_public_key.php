<?php
if(isset($_POST['key'])) {
	$pk_foreign_key_path = 'keys/dd/';
	$pk_filename = $pk_foreign_key_path . 'dd_public_key.txt';
	if (!file_exists($pk_foreign_key_path))
    	mkdir($pk_foreign_key_path, 0777, true);
	if (file_put_contents($pk_filename, $_POST['key']))
		echo "success";
	else 
		echo "Could not write public key to file $pk_filename";
}
?>