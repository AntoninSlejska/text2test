<?php
require_once 'config.php';

if ($minimise_code) {
  $main_css = "templates/".$template_name."/css/main.min.css";
  $main_js = "templates/".$template_name."/js/main.min.js";
  $functions_js = "templates/".$template_name."/js/functions.min.js";
} else {
  $main_css = "templates/".$template_name."/css/main.css";
  $main_js = "templates/".$template_name."/js/main.js";
  $functions_js = "templates/".$template_name."/js/functions.js";
}

echo '<!DOCTYPE html>
<html>
  <head>
   <title>'.$website_title.'</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="'.$main_css.'">
    <link rel="stylesheet" type="text/css" href="vendor/drmonty/chosen/css/chosen.min.css">
    <link rel="shortcut icon" href="templates/'.$template_name.'/favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="vendor/components/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/drmonty/chosen/js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="'.$base_url.'i18n/main.js.php"></script>
    <script type="text/javascript" src="'.$main_js.'"></script>
    <script type="text/javascript" src="'.$functions_js.'"></script>
  </head>
  <body>
    <div id="header">
      <h1>text2test</h1>
      <div id="messages"></div>
    </div>
    <div id="form">
      <div id="mainColumn"></div>
      <div id="minorColumn"></div>
    </div>
    <div id="footer"></div>'.$tracking_code.'
  </body>
</html>';
