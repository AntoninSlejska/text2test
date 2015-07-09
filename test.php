<?php
require_once 'vendor/autoload.php';
require_once 'config.php';

use Dibi\Dibi;
$db = new DibiConnection($database_configuration);

$secret = isset($_GET['secret']) ? $_GET['secret'] : '';

if ($minimise_code) {
	$minimise = ".min";
} else {
	$minimise = "";
}

$row = $db->fetch('SELECT * FROM Tests WHERE secret="'.$secret.'" LIMIT 1');
$language	= $row->language;
$textId 	= (int) $row->text;
$testTypeId	= (int) $row->testtype;
$testText = $row->test;
$solution	= $row->solution;
$level		= $row->level;
$save		= (boolean) $row->save;
$public		= (boolean) $row->public;

if (strlen($language) == 2) {
  setcookie('language', $language);
  $locale = $db->fetchSingle('SELECT locale FROM Languages WHERE code="'.$language.'"');
} else {
  $language = $default_language;
  if (isset($_COOKIE['language'])) {
    $locale = $db->fetchSingle('SELECT locale FROM Languages WHERE code="'.$_COOKIE['language'].'"');
  } else {
    setcookie('language', $default_language);
    $locale = $db->fetchSingle('SELECT locale FROM Languages WHERE code="'.$default_language.'"');
  }
}

if ($language != "en") {
  putenv("LC_ALL=$locale");
  setlocale(LC_ALL, $locale);
  bindtextdomain($text_domain,$base_dir."/i18n");
  textdomain($text_domain);
}

if ($textId > 0) {
	$row = $db->fetch('SELECT * FROM Texts WHERE id="'.$textId.'" LIMIT 1');
	$textTitle	= '<div id="title">'.$row->title.'</div>';
	$textOrigin	= $row->text;
	$textSource	= '<div id="source">'._("Source").': <a href="'.$row->url.'">'.$row->source.'</a></div>';
} else {
	$textTitle	= '';
	$textOrigin	= '';
	$textSource	= '';
}

$row = $db->fetch('SELECT * FROM TestTypes WHERE id="'.$testTypeId.'" LIMIT 1');
$testTitle			= $row->title;
$testDescription	= $row->description;
$testTerms			= $row->terms;
$testScript			= $row->script;
if ($row->css == "") {
	$ownStyle	= "";
} else {
	$ownStyle	= "\n    <link rel='stylesheet' type='text/css' href='".$base_url."scripts/".$row->css.$minimise.".css'>";
}

$externalCodes = "";
$rows = $db -> query("SELECT ec.type, ec.src, ec.relative_url FROM ExternalCodes ec INNER JOIN TestTypes2ExternalCodes tt2ec ON ec.id = tt2ec.external_code_id WHERE tt2ec.test_type_id = $testTypeId ORDER BY ec.type, ec.id ASC");
foreach ($rows as $row) {
	if ($row['relative_url'] == 1) {
		$extCodeSrc = $base_url . $row['src'];
	} else {
		$extCodeSrc = $row['src'];
	}
	switch ($row['type']) {
		case "js":
			$externalCodes .= "\n    <script type='text/javascript' src='$extCodeSrc'></script>";
			break;
		case "css":
			$externalCodes .= "\n    <link rel='stylesheet' type='text/css' href='$extCodeSrc'>";
			break;
		}
}

echo '<!DOCTYPE html>
<html>
  <head>
   <title>'.$website_title.'</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="'.$base_url.'templates/'.$template_name.'/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="'.$base_url.'templates/'.$template_name.'/css/test'.$minimise.'.css">'.$ownStyle.$externalCodes.'
    <script type="text/javascript" src="'.$base_url.'i18n/main.js.php"></script>
    <script type="text/javascript" src="'.$base_url.'scripts/'.$testScript.$minimise.'.js"></script>
  </head>
	<body>
		<div id="header">
			<h1>'.$testTitle.'</h1>
			<div id="description">'.$testDescription.'</div>
			<div id="messages"></div>
		</div>
		<div id="mainColumn">
			'.$textTitle.'
			<div id="text">'.$testText.'</div>
			<div id="origin"></div>
			'.$textSource.'
		</div>
		<div id="control"></div>
		<div id="solution">'.$solution.'</div>
	</body>
</html>';
