<?php

// Includes files
include("config.inc");
include("helpers.inc");
include("db.inc");
include("db_anon.inc");

// Defines constants
define("ERASE_TEMP_CODES_AFTER_SECONDS", 24*60*60);

define("MAIN_SERVER_URL", "http://localhost/dd/helpers/receiver_scripts_from_anon_server/");

define("RSA_PRIVATE_KEY", file_get_contents("dd_anon_priv_key.txt"));

?>