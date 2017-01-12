<?php

ini_set('display_errors', 1);
require_once 'vendor/autoload.php';
require_once 'config.php';

dibi::connect($database_configuration);

if (isset($_COOKIE['language'])) {
    $locale = dibi::fetchSingle('SELECT locale FROM [Languages] WHERE [code] = %i', $_COOKIE['language']);
    putenv("LC_ALL=$locale");
    setlocale(LC_ALL, $locale);
    bindtextdomain($text_domain, $base_dir . "/i18n");
    textdomain($text_domain);
}

switch (isset($_GET['q']) ? $_GET['q'] : '') {
    case "selectlanguage":
        $rows = dibi::query("SELECT code, name FROM [Languages] WHERE [supported] = %i", 1);
        echo "<option value='' selected></option>";
        foreach ($rows as $row) {
            echo "<option value='" . $row['code'] . "'>" . $row['name'] . "</option>";
        }
        break;
    case "savetext":
        $text_arr = [
            'language' => isset($_POST['language']) ? $_POST['language'] : '', // It will be possible to use Null Coalesce Operator in PHP 7, see: https://wiki.php.net/rfc/isset_ternary
            'title' => isset($_POST['title']) ? $_POST['title'] : '',
            'text' => isset($_POST['text']) ? $_POST['text'] : '',
            'level' => isset($_POST['level']) ? $_POST['level'] : '',
            'source' => isset($_POST['source']) ? $_POST['source'] : '',
            'url' => isset($_POST['url']) ? $_POST['url'] : '',
            'public' => isset($_POST['pub']) ? $_POST['pub'] : '',
        ];

        try {
            dibi::query("INSERT INTO [Texts]", $text_arr);
            echo $db->getInsertId();
        } catch (DibiException $ex) {
            echo get_class($e), ': ', $e->getMessage(), "\n";
        }

        break;
    case "savetest":
        $test_arr = [
            'secret' => uniqid(),
            'language' => isset($_POST['language']) ? $_POST['language'] : '', // It will be possible to use Null Coalesce Operator in PHP 7, see: https://wiki.php.net/rfc/isset_ternary
            'text' => isset($_POST['text']) ? $_POST['text'] : '',
            'testtype' => isset($_POST['testtype']) ? $_POST['testtype'] : '',
            'test' => isset($_POST['test']) ? $_POST['test'] : '',
            'solution' => isset($_POST['solution']) ? $_POST['solution'] : '',
        ];

        try {
            dibi::query("INSERT INTO [Tests]", $test_arr);
            echo $test_arr['secret'];
        } catch (DibiException $ex) {
            echo get_class($e), ': ', $e->getMessage(), "\n";
        }

        break;
    case "sendtest":
        $test_arr = [
            'secret' => isset($_POST['secretId']) ? $_POST['secretId'] : '',
            'level' => isset($_POST['level']) ? $_POST['level'] : '',
            'public' => isset($_POST['pub']) ? $_POST['pub'] : '',
        ];
        dibi::query("UPDATE `Tests` SET ", $test_arr, " WHERE `secret` = %i", $test_arr['secret']);
        echo _("You can find the test on the URL") . ": <a href='" . $base_url . $test_arr['secret'] . "/'>" . $base_url . $test_arr['secret'] . "/</a>";
        break;
    case "selecttext":
        $language = isset($_GET['la']) ? $_GET['la'] : $default_language;
        $level = isset($_GET['le']) ? $_GET['le'] : $default_level;

        $res = dibi::query('SELECT * FROM [Texts] WHERE %and', [
                    'language' => $language,
                    'level' => $level,
        ]);
        echo dibi::$sql;
        $pairs = $res->fetchPairs('id', 'title');
        echo "<option value='' class='optionTexts' selected></option>";
        foreach ($pairs as $id => $title) {
            echo "<option value='$id' class='optionTexts'>$title</option>";
        }
        break;
    case "selecttesttype":
        $language = isset($_GET['la']) ? $_GET['la'] : $default_language;

        $res = dibi::query('SELECT * FROM [TestTypes] WHERE %and', [
                    'language' => $language,
                    'public' => 1,
        ]);
        $pairs = $res->fetchPairs('id', 'title');
        echo "<option value='' class='optionTestTypes' selected></option>";
        foreach ($pairs as $id => $title) {
            echo "<option value='$id' class='optionTestTypes'>$title</option>";
        }
        break;
    case "inserttext":
        $id = isset($_GET['id']) ? $_GET['id'] : '0';
        $text = dibi::fetchSingle('SELECT text FROM [Texts] WHERE id = %i', $id);
        echo $text;
        break;
    case "gettesttype":
        $id = isset($_GET['id']) ? $_GET['id'] : '0';
        $row = dibi::fetch('SELECT * FROM [TestTypes] WHERE [id] = %i', $id);
        $terms = $row->terms;
        $function = $row->function;
        $json = array('terms' => $terms, 'functionName' => $function);
        header("Content-Type: application/json", true);
        echo json_encode($json);
    case "":
        break;
}
?>
