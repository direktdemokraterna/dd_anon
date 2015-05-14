<?php
include('Crypt/RSA.php');

$rsa = new Crypt_RSA(); 
define('CRYPT_RSA_EXPONENT', 65537); 
$keypair = $rsa->createKey(4096); 

echo $keypair['privatekey']; 

echo "<br><br>";

echo $keypair['publickey']; 

?>