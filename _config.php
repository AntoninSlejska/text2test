<?php
$website_title = 'text2test';
$base_url = 'http://www.yourdomain.org/text2test/';
$base_dir = '/var/www/vhosts/yourdomain.org/text2test';
$text_domain = 'text2test';
$database_configuration = array(
    'driver'   => 'mysqli',
    'host'     => 'localhost',
    'database' => 'text2test',
    'username' => 'username',
    'password' => '***',
    'options' => [
        MYSQLI_OPT_CONNECT_TIMEOUT => 30,
    ],
    'flags' => MYSQLI_CLIENT_COMPRESS,
);
$template_name = "default";
$default_language = "de";
$default_level = "b1";
$minimise_code = true; // true: minimises the JavasSript und CSS codes; false: is used for development
$tracking_code = ""; // e.g. Google Analytics Tracking Code
?>
