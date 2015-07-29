<?php

/**
 * Result plain text, title and (language) level of the report
 *
 * @author     Antonín Slejška
 * @package    text2test
 */
class WikinewsReport {
  public $url;
  public $publishedUrls;
  private $published = false;
  private $xml_report_url;
  private $xml_report;
  private $report_title;
  private $report_text;
  private $report_text_length;
  private $report_level;

  function __construct($url, $publishedUrls) {
    $this->url            = $url;
    $this->publishedUrls  = $publishedUrls;
  }

  function getTitleTextLevel() {
    foreach ($this->publishedUrls as $publishedUrl) {
      if ($publishedUrl == $this->url) {
        $this->published = true;
        break;
      }
    }
    if (!$this->published) {
      $this->xml_report_url = str_replace("/wiki/","/w/api.php?format=xml&action=query&prop=extracts&exchars=99999999&explaintext&exsectionformat=wiki&titles=",$this->url);
      $this->xml_report = simplexml_load_file($this->xml_report_url);
      $this->report_title = $this->xml_report->query->pages->page['title'];
      $this->report_title = htmlspecialchars($this->report_title, ENT_QUOTES);
      $this->report_title = mysql_real_escape_string($this->report_title);
      $this->report_text = $this->xml_report->query->pages->page->extract;
      $this->report_text = substr($this->report_text, 0, stripos($this->report_text, "\n\n=="));
      $this->report_text = trim($this->report_text, " \n\t\r\0\x0B");
      $this->report_text = htmlspecialchars($this->report_text, ENT_QUOTES);
      $this->report_text = mysql_real_escape_string($this->report_text);
      $this->report_text_length = strlen($this->report_text);
      switch (true) {
        case ($this->report_text_length <= 1000): $this->report_level = "b1"; break;
        case ($this->report_text_length > 1000 && $this->report_text_length <= 1500): $this->report_level = "b2"; break;
        case ($this->report_text_length > 1500 && $this->report_text_length <= 2500): $this->report_level = "c1"; break;
        case ($this->report_text_length > 2500): $this->report_level = "c2"; break;
      }
    }
    return array("published"=>$this->published, "title"=>$this->report_title, "text"=>$this->report_text, "level"=>$this->report_level);
  }
}
