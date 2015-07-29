<?php
require_once 'vendor/autoload.php';
require_once 'config.php';
require_once 'libs/WikinewsReport.php';

use Dibi\Dibi;
$db = new DibiConnection($database_configuration);

$language = isset($_GET['lang']) ? $_GET['lang'] : '';

$rows = $db -> fetchAll('SELECT url FROM Texts WHERE language="'.$language.'"');
$publishedUrls = array();
foreach ($rows as $row) {
  array_push($publishedUrls, $row['url']);
}

switch ($language) {
  case "en":
    $reports = simplexml_load_file("https://en.wikinews.org/wiki/Special:NewsFeed");
    foreach ($reports->url as $report_url) {
      $link = $report_url->loc;
      $report = new WikinewsReport($link, $publishedUrls);
      $extracted_report = $report->getTitleTextLevel();
      if (!$extracted_report['published']) {
        $db->query("INSERT INTO Texts (language,title,text,level,source,url,public) VALUES ('" . $language . "','" . $extracted_report['title'] . "','" . $extracted_report['text'] . "','" . $extracted_report['level'] . "','Wikinews','" . $link . "','1')");
      }
    }
    break;
  case "de":
    $reports = simplexml_load_file("https://de.wikinews.org/w/api.php?format=xml&action=query&prop=extracts&exchars=99999999&explaintext&exsectionformat=wiki&titles=Kategorie:Ver%C3%B6ffentlicht");
    $titles = $reports->query->pages->page->extract;
    $titles = trim($titles, " \n\t\r\0\x0B…");
    $links = preg_split("/[\n\r]+/", $titles);
    foreach ($links as &$link) {
      $link = substr($link, stripos($link, ": ")+2);
      $link = str_replace(" ", "_", $link);
      $link = urlencode($link);
      $link = "https://de.wikinews.org/wiki/".$link;
      $report = new WikinewsReport($link, $publishedUrls);
      $extracted_report = $report->getTitleTextLevel();
      if (!$extracted_report['published']) {
        $db->query("INSERT INTO Texts (language,title,text,level,source,url,public) VALUES ('" . $language . "','" . $extracted_report['title'] . "','" . $extracted_report['text'] . "','" . $extracted_report['level'] . "','Wikinews','" . $link . "','1')");
      }
    }
    break;
}
?>
