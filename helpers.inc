<?php

function get_signed_data() {
	$serial_data = $_POST['data'];
	$signature = $_POST['sign'];
	verify($signature, $serial_data);
	$data = unserialize($serial_data);
	return $data;
}

function verify($signature, $plaintext) {
	include_once('Crypt/RSA.php');
	$computed_hash = hash('sha256', $plaintext);
	$rsa = new Crypt_RSA();
	$rsa->loadKey(DD_PUBLIC_KEY);
	$rsa->setEncryptionMode(CRYPT_RSA_ENCRYPTION_PKCS1);
	$hash = $rsa->decrypt($signature);
	if ($hash != $computed_hash)
		throw new \Exception('Invalid message: ' . $plaintext 
			. '. Hash missmatch, provided: ' . $hash 
			. ', computed: ' . $computed_hash);
}

function GenerateRandomString ($length)
{
	$Allowed_Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	$random_string = "";
	for($i=0; $i<$length; $i++)
	{
		$offset = mt_rand(0,61);
		if ($offset >= strlen($Allowed_Chars))
			throw new Exception('Tried to generate string from invalid char at offset: ' . $offset);
    	$random_string .= $Allowed_Chars[$offset];
	}
	return $random_string;
}

function curl_to_main_server ($main_server_script, $post_vars = null)
{
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, MAIN_SERVER_URL . $main_server_script);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$signed_data = sign($post_vars);
	$post_data = http_build_query($signed_data);
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);			
	$reply = curl_exec($ch);
	curl_close($ch);
	return $reply;
}

function sign($post_vars) {
	include_once('Crypt/RSA.php');
	if (!$post_vars)
		$post_vars = array();
	$post_vars['salt'] = GenerateRandomString(20);
	$serial_data = serialize($post_vars);
	$hash = hash('sha256', $serial_data);
	$rsa = new Crypt_RSA();
	$rsa->loadKey(DD_ANON_PRIVATE_KEY);
	$rsa->setEncryptionMode(CRYPT_RSA_ENCRYPTION_PKCS1);
	$signature = $rsa->encrypt($hash);
	$post_vars = array('sign' => $signature, 'data' => $serial_data);
	return $post_vars;
}

function decrypt_ballot ($ballot)
{
	// Ballot consist of RSA and AES part
	$ballot_decoded = json_decode($ballot, true);
	// decryption using phplibsec RSA library
	include_once('Crypt/RSA.php');
	$rsa = new Crypt_RSA();
	$rsa->loadKey(DD_ANON_PRIVATE_KEY);
	$rsa->setEncryptionMode(CRYPT_RSA_ENCRYPTION_PKCS1);
	$ballot_rsa_decrypted = $rsa->decrypt(base64_decode($ballot_decoded['rsa']));
	$ballot_rsa_decrypted_decoded = json_decode($ballot_rsa_decrypted, true);
	// decryption using Giberish AES library
	include('Crypt/GibberishAES.php');
	$ballot_aes_decrypted = GibberishAES::dec($ballot_decoded['aes'], $ballot_rsa_decrypted_decoded['password']);
	$ballot_aes_decrypted_decoded = json_decode($ballot_aes_decrypted, true);
	return $ballot_aes_decrypted_decoded;
}

?>