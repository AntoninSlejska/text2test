<?php
require_once 'config.php';

if ($minimise_code) {
  $main_css = "templates/".$template_name."/css/main.min.css";
  $menu_css = "templates/".$template_name."/css/menu.min.css";
  $main_js = "templates/".$template_name."/js/main.min.js";
  $functions_js = "templates/".$template_name."/js/functions.min.js";
} else {
  $main_css = "templates/".$template_name."/css/main.css";
  $menu_css = "templates/".$template_name."/css/menu.css";
  $main_js = "templates/".$template_name."/js/main.js";
  $functions_js = "templates/".$template_name."/js/functions.js";
}

echo '<!DOCTYPE html>
<html>
  <head>
   <title>'.$website_title.'</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="'.$main_css.'">
    <link rel="stylesheet" type="text/css" href="'.$menu_css.'">
    <link rel="stylesheet" type="text/css" href="vendor/drmonty/chosen/css/chosen.min.css">
    <link rel="stylesheet" type="text/css" href="vendor/components/font-awesome/css/font-awesome.min.css">
    <link rel="shortcut icon" href="templates/'.$template_name.'/favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="vendor/components/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="vendor/drmonty/chosen/js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="'.$base_url.'i18n/main.js.php"></script>
    <script type="text/javascript" src="'.$main_js.'"></script>
    <script type="text/javascript" src="'.$functions_js.'"></script>
    <!--[if IE]> <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  </head>
  <body>
    <header>
      <a href="'.$base_url.'" id="site-title">'.$website_title.'</a>
      <nav>
        <i class="fa fa-bars fa-2x"></i>
        <ul>
          <li><i class="fa fa-language fa-2x"></i></li>
        </ul>
      </nav>
    </header>
    <application>
      <div id="messages"></div>
      <div id="form">
        <div id="mainColumn"></div>
        <div id="minorColumn"></div>
      </div>
    </application>
    <footer></footer>'.$tracking_code.'
  </body>
</html>';
