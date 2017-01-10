<?php
ini_set('display_errors', 1);
require_once 'vendor/autoload.php';
require_once 'config.php';

use Dibi\Dibi;
$db = new DibiConnection($database_configuration);

if (isset($_COOKIE['language'])) {
  $locale = $db->fetchSingle('SELECT locale FROM Languages WHERE code="'.$_COOKIE['language'].'"');
  putenv("LC_ALL=$locale");
  setlocale(LC_ALL, $locale);
  bindtextdomain($text_domain,$base_dir."/i18n");
  textdomain($text_domain);
}

switch (isset($_GET['q']) ? $_GET['q'] : '') {
  case "selectlanguage":
    $rows = $db -> query("SELECT code, name FROM Languages WHERE supported = 1");
    echo "<option value='' selected></option>";
    foreach ($rows as $row) {
      echo "<option value='".$row['code']."'>".$row['name']."</option>";
    }
    break;
  case "savetext":
    $language	= isset($_POST['language']) ? $_POST['language'] : ''; // It will be possible to use Null Coalesce Operator in PHP 7, see: https://wiki.php.net/rfc/isset_ternary
	  $title		= isset($_POST['title']) ? $_POST['title'] : '';
		$text		= isset($_POST['text']) ? $_POST['text'] : '';
		$level		= isset($_POST['level']) ? $_POST['level'] : '';
		$source		= isset($_POST['source']) ? $_POST['source'] : '';
		$url		= isset($_POST['url']) ? $_POST['url'] : '';
		$public		= isset($_POST['pub']) ? $_POST['pub'] : '';

		$db->query("INSERT INTO Texts (language,title,text,level,source,url,public) VALUES ('" . $language . "','" . $title . "','" . $text . "','" . $level . "','" . $source . "','" . $url . "','" . $public . "')");
        echo $db->getInsertId();;
        break;
  case "savetest":
		$secret		= uniqid();
    $language	= isset($_POST['language']) ? $_POST['language'] : '';
		$text		= isset($_POST['text']) ? $_POST['text'] : '';
		$testtype	= isset($_POST['testtype']) ? $_POST['testtype'] : '';
		$test		= isset($_POST['test']) ? $_POST['test'] : '';
		$solution	= isset($_POST['solution']) ? $_POST['solution'] : '';

		$db->query("INSERT INTO Tests (secret,language,text,testtype,test,solution) VALUES ('" . $secret . "','" . $language . "','" . $text . "','" . $testtype . "','" . $test . "','" . $solution . "')");
    echo $secret;
    break;
  case "sendtest":
      $secret     = isset($_POST['secretId']) ? $_POST['secretId'] : '';
      $level      = isset($_POST['level']) ? $_POST['level'] : '';
      $public     = isset($_POST['pub']) ? $_POST['pub'] : '';

      $db->query("UPDATE Tests SET level='".$level."', save='1', public='".$public."' WHERE secret='".$secret."'");
      echo _("You can find the test on the URL").": <a href='".$base_url . $secret."/'>".$base_url . $secret."/</a>";
      break;
  case "selecttext":
  	$language = isset($_GET['la']) ? $_GET['la'] : $default_language;
  	$level = isset($_GET['le']) ? $_GET['le'] : $default_level;

  	$res = $db->query('SELECT * FROM Texts WHERE language="'.$language.'" AND level="'.$level.'"');
		$pairs = $res->fetchPairs('id', 'title');
		echo "<option value='' class='optionTexts' selected></option>";
		foreach ($pairs as $id => $title) {
			echo "<option value='$id' class='optionTexts'>$title</option>";
		}
    break;
  case "selecttesttype":
  	$language = isset($_GET['la']) ? $_GET['la'] : $default_language;

  	$res = $db->query('SELECT * FROM TestTypes WHERE language="'.$language.'" AND public=1');
		$pairs = $res->fetchPairs('id', 'title');
		echo "<option value='' class='optionTestTypes' selected></option>";
		foreach ($pairs as $id => $title) {
			echo "<option value='$id' class='optionTestTypes'>$title</option>";
		}
        break;
    case "inserttext":
    	$id = isset($_GET['id']) ? $_GET['id'] : '0';
    	$text = $db->fetchSingle('SELECT text FROM Texts WHERE id="'.$id.'"');
		echo $text;
        break;
    case "gettesttype":
    	$id = isset($_GET['id']) ? $_GET['id'] : '0';
    	$row = $db->fetch('SELECT * FROM TestTypes WHERE id="'.$id.'" LIMIT 1');
    	$terms		= $row->terms;
    	$function	= $row->function;
    	$json		= array('terms' => $terms, 'functionName' => $function);
    	header("Content-Type: application/json", true);
    	echo json_encode($json);
    case "":
        break;
}

?>
