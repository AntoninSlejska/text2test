<?php
require_once '../vendor/autoload.php';
require_once '../config.php';

use Dibi\Dibi;
$db = new DibiConnection($database_configuration);

$language = isset($_GET['lang']) ? $_GET['lang'] : '';

switch ($language) {
  case "en":
    $rows = $db -> fetchAll("SELECT url FROM Texts");
    $reports = simplexml_load_file("https://".$language.".wikinews.org/wiki/Special:NewsFeed");

    foreach ($reports->url as $report) {
      $published = false;
      foreach ($rows as $row) {
        if ($row['url'] == $report->loc) {
          $published = true;
          break;
        }
      }
      if (!$published) {
        $report_url = $report->loc;
        $xml_report_url = str_replace("/wiki/","/w/api.php?format=xml&action=query&prop=extracts&exchars=99999999&explaintext&exsectionformat=wiki&titles=",$report_url);
        $xml_report = simplexml_load_file($xml_report_url);
        $report_title = $xml_report->query->pages->page['title'];
        $report_title = htmlspecialchars($report_title, ENT_QUOTES);
        $report_title = mysql_real_escape_string($report_title);
        $report_text = $xml_report->query->pages->page->extract;
        $report_text = substr($report_text, 0, stripos($report_text, "\n\n=="));
        $report_text = trim($report_text, " \n\t\r\0\x0B");
        $report_text = htmlspecialchars($report_text, ENT_QUOTES);
        $report_text = mysql_real_escape_string($report_text);
        $report_text_length = strlen($report_text);
        switch (true) {
          case ($report_text_length <= 1000): $report_level = "b1"; break;
          case ($report_text_length > 1000 && $report_text_length <= 1500): $report_level = "b2"; break;
          case ($report_text_length > 1500 && $report_text_length <= 2500): $report_level = "c1"; break;
          case ($report_text_length > 2500): $report_level = "c2"; break;
        }
        $db->query("INSERT INTO Texts (language,title,text,level,source,url,public) VALUES ('" . $language . "','" . $report_title . "','" . $report_text . "','" . $report_level . "','Wikinews','" . $report_url . "','1')");
      }
    }
    break;
  case "de":
    break;
}
?>
