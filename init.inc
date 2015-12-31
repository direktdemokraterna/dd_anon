<?php

// Includes files
include("config.inc");
include("helpers.inc");
include("db.inc");
include("db_anon.inc");

// Defines constants
define("ERASE_TEMP_CODES_AFTER_SECONDS", 24*60*60);

define("DD_ANON_PRIVATE_KEY", file_get_contents(__DIR__ . "/keys/dd_anon_private_key.txt"));
define("DD_ANON_PUBLIC_KEY", file_get_contents(__DIR__ . "/keys/dd_anon_public_key.txt"));
define("DD_PUBLIC_KEY", file_get_contents(__DIR__ . "/keys/dd/dd_public_key.txt"));

?>