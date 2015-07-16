-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 16. Jul 2015 um 12:20
-- Server Version: 5.6.24-0ubuntu2
-- PHP-Version: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `text2test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ExternalCodes`
--

CREATE TABLE IF NOT EXISTS `ExternalCodes` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `relative_url` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ExternalCodes`
--

INSERT INTO `ExternalCodes` (`id`, `name`, `type`, `description`, `src`, `relative_url`) VALUES
(1, 'jQuery', 'js', '', 'vendor/components/jquery/jquery.min.js', 1),
(2, 'Chosen', 'js', 'jQuery library for making long, unwieldy select boxes more user friendly.', 'vendor/drmonty/chosen/js/chosen.jquery.min.js', 1),
(3, 'Chosen', 'css', '', 'vendor/drmonty/chosen/css/chosen.min.css', 1),
(4, 'jQuery UI', 'js', '', 'vendor/components/jqueryui/jquery-ui.min.js', 1),
(5, 'jQuery UI', 'css', '', 'vendor/components/jqueryui/themes/smoothness/jquery-ui.css', 1),
(6, 'Functions', 'js', '', 'templates/default/js/functions.min.js', 1),
(7, 'jQuery UI Touch Punch', 'js', 'A small hack that enables the use of touch events on sites using the jQuery UI user interface library.', 'templates/default/js/jquery.ui.touch-punch.min.js', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Languages`
--

CREATE TABLE IF NOT EXISTS `Languages` (
  `code` char(2) NOT NULL,
  `locale` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `supported` tinyint(1) NOT NULL,
  `important` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Languages`
--

INSERT INTO `Languages` (`code`, `locale`, `name`, `supported`, `important`) VALUES
('aa', '', 'Afar', 0, 0),
('ab', '', 'Abkhaz', 0, 0),
('ae', '', 'Avestan', 0, 0),
('af', '', 'Afrikaans', 0, 0),
('ak', '', 'Akan', 0, 0),
('am', '', 'Amharic', 0, 0),
('an', '', 'Aragonese', 0, 0),
('ar', '', 'Arabic', 0, 0),
('as', '', 'Assamese', 0, 0),
('av', '', 'Avaric', 0, 0),
('ay', '', 'Aymara', 0, 0),
('az', '', 'Azerbaijani', 0, 0),
('ba', '', 'Bashkir', 0, 0),
('be', '', 'Belarusian', 0, 0),
('bg', '', 'Bulgarian', 0, 0),
('bh', '', 'Bihari', 0, 0),
('bi', '', 'Bislama', 0, 0),
('bm', '', 'Bambara', 0, 0),
('bn', '', 'Bengali, Bangla', 0, 0),
('bo', '', 'Tibetan Standard, Ti', 0, 0),
('br', '', 'Breton', 0, 0),
('bs', '', 'Bosnian', 0, 0),
('ca', '', 'Catalan, Valencian', 0, 0),
('ce', '', 'Chechen', 0, 0),
('ch', '', 'Chamorro', 0, 0),
('co', '', 'Corsican', 0, 0),
('cr', '', 'Cree', 0, 0),
('cs', 'cs_CZ.utf8', 'Czech', 0, 0),
('cu', '', 'Old Church Slavonic,', 0, 0),
('cv', '', 'Chuvash', 0, 0),
('cy', '', 'Welsh', 0, 0),
('da', '', 'Danish', 0, 0),
('de', 'de_DE.utf8', 'German', 1, 1),
('dv', '', 'Divehi, Dhivehi, Mal', 0, 0),
('dz', '', 'Dzongkha', 0, 0),
('ee', '', 'Ewe', 0, 0),
('el', '', 'Greek', 0, 0),
('en', 'en_US.utf8', 'English', 0, 1),
('eo', '', 'Esperanto', 0, 0),
('es', '', 'Spanish, Castilian', 0, 1),
('et', '', 'Estonian', 0, 0),
('eu', '', 'Basque', 0, 0),
('fa', '', 'Persian (Farsi)', 0, 0),
('ff', '', 'Fula, Fulah, Pulaar', 0, 0),
('fi', '', 'Finnish', 0, 0),
('fj', '', 'Fijian', 0, 0),
('fo', '', 'Faroese', 0, 0),
('fr', '', 'French', 0, 1),
('fy', '', 'Western Frisian', 0, 0),
('ga', '', 'Irish', 0, 0),
('gd', '', 'Scottish Gaelic, Gae', 0, 0),
('gl', '', 'Galician', 0, 0),
('gn', '', 'Guaraní', 0, 0),
('gu', '', 'Gujarati', 0, 0),
('gv', '', 'Manx', 0, 0),
('ha', '', 'Hausa', 0, 0),
('he', '', 'Hebrew', 0, 0),
('hi', '', 'Hindi', 0, 0),
('ho', '', 'Hiri Motu', 0, 0),
('hr', '', 'Croatian', 0, 0),
('ht', '', 'Haitian, Haitian Cre', 0, 0),
('hu', '', 'Hungarian', 0, 0),
('hy', '', 'Armenian', 0, 0),
('hz', '', 'Herero', 0, 0),
('ia', '', 'Interlingua', 0, 0),
('id', '', 'Indonesian', 0, 0),
('ie', '', 'Interlingue', 0, 0),
('ig', '', 'Igbo', 0, 0),
('ii', '', 'Nuosu', 0, 0),
('ik', '', 'Inupiaq', 0, 0),
('io', '', 'Ido', 0, 0),
('is', '', 'Icelandic', 0, 0),
('it', '', 'Italian', 0, 0),
('iu', '', 'Inuktitut', 0, 0),
('ja', '', 'Japanese', 0, 0),
('jv', '', 'Javanese', 0, 0),
('ka', '', 'Georgian', 0, 0),
('kg', '', 'Kongo', 0, 0),
('ki', '', 'Kikuyu, Gikuyu', 0, 0),
('kj', '', 'Kwanyama, Kuanyama', 0, 0),
('kk', '', 'Kazakh', 0, 0),
('kl', '', 'Kalaallisut, Greenla', 0, 0),
('km', '', 'Khmer', 0, 0),
('kn', '', 'Kannada', 0, 0),
('ko', '', 'Korean', 0, 0),
('kr', '', 'Kanuri', 0, 0),
('ks', '', 'Kashmiri', 0, 0),
('ku', '', 'Kurdish', 0, 0),
('kv', '', 'Komi', 0, 0),
('kw', '', 'Cornish', 0, 0),
('ky', '', 'Kyrgyz', 0, 0),
('la', '', 'Latin', 0, 0),
('lb', '', 'Luxembourgish, Letze', 0, 0),
('lg', '', 'Ganda', 0, 0),
('li', '', 'Limburgish, Limburga', 0, 0),
('ln', '', 'Lingala', 0, 0),
('lo', '', 'Lao', 0, 0),
('lt', '', 'Lithuanian', 0, 0),
('lu', '', 'Luba-Katanga', 0, 0),
('lv', '', 'Latvian', 0, 0),
('mg', '', 'Malagasy', 0, 0),
('mh', '', 'Marshallese', 0, 0),
('mi', '', 'Māori', 0, 0),
('mk', '', 'Macedonian', 0, 0),
('ml', '', 'Malayalam', 0, 0),
('mn', '', 'Mongolian', 0, 0),
('mr', '', 'Marathi (Marāṭhī)', 0, 0),
('ms', '', 'Malay', 0, 0),
('mt', '', 'Maltese', 0, 0),
('my', '', 'Burmese', 0, 0),
('na', '', 'Nauru', 0, 0),
('nb', '', 'Norwegian Bokmål', 0, 0),
('nd', '', 'Northern Ndebele', 0, 0),
('ne', '', 'Nepali', 0, 0),
('ng', '', 'Ndonga', 0, 0),
('nl', '', 'Dutch', 0, 0),
('nn', '', 'Norwegian Nynorsk', 0, 0),
('no', '', 'Norwegian', 0, 0),
('nr', '', 'Southern Ndebele', 0, 0),
('nv', '', 'Navajo, Navaho', 0, 0),
('ny', '', 'Chichewa, Chewa, Nya', 0, 0),
('oc', '', 'Occitan', 0, 0),
('oj', '', 'Ojibwe, Ojibwa', 0, 0),
('om', '', 'Oromo', 0, 0),
('or', '', 'Oriya', 0, 0),
('os', '', 'Ossetian, Ossetic', 0, 0),
('pa', '', 'Panjabi, Punjabi', 0, 0),
('pi', '', 'Pāli', 0, 0),
('pl', '', 'Polish', 0, 0),
('ps', '', 'Pashto, Pushto', 0, 0),
('pt', '', 'Portuguese', 0, 0),
('qu', '', 'Quechua', 0, 0),
('rm', '', 'Romansh', 0, 0),
('rn', '', 'Kirundi', 0, 0),
('ro', '', 'Romanian', 0, 0),
('ru', '', 'Russian', 0, 0),
('rw', '', 'Kinyarwanda', 0, 0),
('sa', '', 'Sanskrit (Saṁskṛta)', 0, 0),
('sc', '', 'Sardinian', 0, 0),
('sd', '', 'Sindhi', 0, 0),
('se', '', 'Northern Sami', 0, 0),
('sg', '', 'Sango', 0, 0),
('si', '', 'Sinhala, Sinhalese', 0, 0),
('sk', '', 'Slovak', 0, 0),
('sl', '', 'Slovene', 0, 0),
('sm', '', 'Samoan', 0, 0),
('sn', '', 'Shona', 0, 0),
('so', '', 'Somali', 0, 0),
('sq', '', 'Albanian', 0, 0),
('sr', '', 'Serbian', 0, 0),
('ss', '', 'Swati', 0, 0),
('st', '', 'Southern Sotho', 0, 0),
('su', '', 'Sundanese', 0, 0),
('sv', '', 'Swedish', 0, 0),
('sw', '', 'Swahili', 0, 0),
('ta', '', 'Tamil', 0, 0),
('te', '', 'Telugu', 0, 0),
('tg', '', 'Tajik', 0, 0),
('th', '', 'Thai', 0, 0),
('ti', '', 'Tigrinya', 0, 0),
('tk', '', 'Turkmen', 0, 0),
('tl', '', 'Tagalog', 0, 0),
('tn', '', 'Tswana', 0, 0),
('to', '', 'Tonga', 0, 0),
('tr', '', 'Turkish', 0, 0),
('ts', '', 'Tsonga', 0, 0),
('tt', '', 'Tatar', 0, 0),
('tw', '', 'Twi', 0, 0),
('ty', '', 'Tahitian', 0, 0),
('ug', '', 'Uyghur, Uighur', 0, 0),
('uk', '', 'Ukrainian', 0, 0),
('ur', '', 'Urdu', 0, 0),
('uz', '', 'Uzbek', 0, 0),
('ve', '', 'Venda', 0, 0),
('vi', '', 'Vietnamese', 0, 0),
('vo', '', 'Volapük', 0, 0),
('wa', '', 'Walloon', 0, 0),
('wo', '', 'Wolof', 0, 0),
('xh', '', 'Xhosa', 0, 0),
('yi', '', 'Yiddish', 0, 0),
('yo', '', 'Yoruba', 0, 0),
('za', '', 'Zhuang, Chuang', 0, 0),
('zh', '', 'Chinese', 0, 0),
('zu', '', 'Zulu', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Tests`
--

CREATE TABLE IF NOT EXISTS `Tests` (
`id` int(11) NOT NULL,
  `secret` char(13) NOT NULL,
  `language` char(2) NOT NULL,
  `text` int(11) NOT NULL,
  `testtype` int(11) NOT NULL,
  `test` text NOT NULL,
  `solution` text NOT NULL,
  `level` char(2) NOT NULL,
  `save` tinyint(1) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `TestTypes`
--

CREATE TABLE IF NOT EXISTS `TestTypes` (
`id` int(11) NOT NULL,
  `language` char(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `terms` longtext NOT NULL,
  `function` varchar(100) NOT NULL,
  `script` varchar(100) NOT NULL,
  `css` varchar(100) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `TestTypes`
--

INSERT INTO `TestTypes` (`id`, `language`, `title`, `description`, `terms`, `function`, `script`, `css`, `public`) VALUES
(1, 'de', 'Artikel einsetzen', 'Setzen Sie die richtigen Formen des unbestimmten Artikels ein.', 'das\\\\dem\\\\den\\\\der\\\\des\\\\die\\\\ein\\\\eine\\\\einem\\\\einen\\\\einer\\\\eines\\\\Das\\\\Dem\\\\Den\\\\Der\\\\Des\\\\Die\\\\Ein\\\\Eine\\\\Einem\\\\Einen\\\\Einer\\\\Eines', 'replaceTerms', 'terms.write.instant', '', 1),
(2, 'de', 'Präpositionen einsetzen', 'Setzen Sie die fehlenden Präpositionen ein.', 'à\\\\À\\\\ab\\\\Ab\\\\abgesehen\\\\Abgesehen\\\\abseits\\\\Abseits\\\\abzüglich\\\\Abzüglich\\\\ähnlich\\\\Ähnlich\\\\als\\\\Als\\\\am\\\\Am\\\\an\\\\An\\\\anfangs\\\\Anfangs\\\\angelegentlich\\\\Angelegentlich\\\\angesichts\\\\Angesichts\\\\anhand\\\\Anhand\\\\anlässlich\\\\Anlässlich\\\\ans\\\\Ans\\\\anstatt\\\\Anstatt\\\\anstelle\\\\Anstelle\\\\auf\\\\Auf\\\\aufgrund\\\\Aufgrund\\\\aufs\\\\Aufs\\\\aufseiten\\\\Aufseiten\\\\aus\\\\Aus\\\\ausgangs\\\\Ausgangs\\\\ausgenommen\\\\Ausgenommen\\\\ausschließlich\\\\Ausschließlich\\\\außer\\\\Außer\\\\außerhalb\\\\Außerhalb\\\\ausweislich\\\\Ausweislich\\\\bar\\\\Bar\\\\behufs\\\\Behufs\\\\bei\\\\Bei\\\\beiderseits\\\\Beiderseits\\\\beidseits\\\\Beidseits\\\\beim\\\\Beim\\\\betreffs\\\\Betreffs\\\\bezüglich\\\\Bezüglich\\\\binnen\\\\Binnen\\\\bis\\\\Bis\\\\bis auf\\\\Bis Auf\\\\contra\\\\Contra\\\\dank\\\\Dank\\\\diesseits\\\\Diesseits\\\\durch\\\\Durch\\\\einbezüglich\\\\Einbezüglich\\\\eingangs\\\\Eingangs\\\\eingedenk\\\\Eingedenk\\\\einschließlich\\\\Einschließlich\\\\entgegen\\\\Entgegen\\\\entlang\\\\Entlang\\\\entsprechend\\\\Entsprechend\\\\exklusive\\\\Exklusive\\\\fern\\\\Fern\\\\fernab\\\\Fernab\\\\frei\\\\Frei\\\\für\\\\Für\\\\fürs\\\\Fürs\\\\gegen\\\\Gegen\\\\gegenüber\\\\Gegenüber\\\\gelegentlich\\\\Gelegentlich\\\\gemäß\\\\Gemäß\\\\gen\\\\Gen\\\\getreu\\\\Getreu\\\\gleich\\\\Gleich\\\\halber\\\\Halber\\\\hinsichtlich\\\\Hinsichtlich\\\\hinter\\\\Hinter\\\\hinterm\\\\Hinterm\\\\hinters\\\\Hinters\\\\im\\\\Im\\\\in\\\\In\\\\in puncto\\\\In Puncto\\\\infolge\\\\Infolge\\\\inklusive\\\\Inklusive\\\\inmitten\\\\Inmitten\\\\innerhalb\\\\Innerhalb\\\\innert\\\\Innert\\\\ins\\\\Ins\\\\je\\\\Je\\\\jenseits\\\\Jenseits\\\\kontra\\\\Kontra\\\\kraft\\\\Kraft\\\\lang\\\\Lang\\\\längs\\\\Längs\\\\längsseits\\\\Längsseits\\\\laut\\\\Laut\\\\links\\\\Links\\\\mangels\\\\Mangels\\\\minus\\\\Minus\\\\mit\\\\Mit\\\\mithilfe\\\\Mithilfe\\\\mitsamt\\\\Mitsamt\\\\mittels\\\\Mittels\\\\nach\\\\Nach\\\\nächst\\\\Nächst\\\\nah\\\\Nah\\\\nahe\\\\Nahe\\\\namens\\\\Namens\\\\neben\\\\Neben\\\\nebst\\\\Nebst\\\\nördlich\\\\Nördlich\\\\nordöstlich\\\\Nordöstlich\\\\nordwestlich\\\\Nordwestlich\\\\ob\\\\Ob\\\\oberhalb\\\\Oberhalb\\\\ohne\\\\Ohne\\\\östlich\\\\Östlich\\\\per\\\\Per\\\\plus\\\\Plus\\\\pro\\\\Pro\\\\quer\\\\Quer\\\\rechts\\\\Rechts\\\\rücksichtlich\\\\Rücksichtlich\\\\samt\\\\Samt\\\\seit\\\\Seit\\\\seitab\\\\Seitab\\\\seitens\\\\Seitens\\\\seitlich\\\\Seitlich\\\\seitwärts\\\\Seitwärts\\\\sonder\\\\Sonder\\\\statt\\\\Statt\\\\südlich\\\\Südlich\\\\südöstlich\\\\Südöstlich\\\\südwestlich\\\\Südwestlich\\\\trotz\\\\Trotz\\\\über\\\\Über\\\\überm\\\\Überm\\\\übern\\\\Übern\\\\übers\\\\Übers\\\\um\\\\Um\\\\ums\\\\Ums\\\\unbeschadet\\\\Unbeschadet\\\\unerachtet\\\\Unerachtet\\\\unfern\\\\Unfern\\\\ungeachtet\\\\Ungeachtet\\\\unter\\\\Unter\\\\unterhalb\\\\Unterhalb\\\\unterm\\\\Unterm\\\\untern\\\\Untern\\\\unters\\\\Unters\\\\unweit\\\\Unweit\\\\vermittels\\\\Vermittels\\\\vermittelst\\\\Vermittelst\\\\vermöge\\\\Vermöge\\\\via\\\\Via\\\\vis-à-vis\\\\Vis-À-Vis\\\\voll\\\\Voll\\\\vom\\\\Vom\\\\von\\\\Von\\\\vonseiten\\\\Vonseiten\\\\vor\\\\Vor\\\\vorbehaltlich\\\\Vorbehaltlich\\\\während\\\\Während\\\\wegen\\\\Wegen\\\\weniger\\\\Weniger\\\\westlich\\\\Westlich\\\\wider\\\\Wider\\\\wie\\\\Wie\\\\willen\\\\Willen\\\\zeit\\\\Zeit\\\\zu\\\\Zu\\\\zufolge\\\\Zufolge\\\\zugunsten\\\\Zugunsten\\\\zulasten\\\\Zulasten\\\\zulieb\\\\Zulieb\\\\zuliebe\\\\Zuliebe\\\\zum\\\\Zum\\\\zur\\\\Zur\\\\zusätzlich\\\\Zusätzlich\\\\zuungunsten\\\\Zuungunsten\\\\zuwider\\\\Zuwider\\\\zuzuglich\\\\Zuzuglich\\\\zuzüglich\\\\Zuzüglich\\\\zwecks\\\\Zwecks\\\\zwischen\\\\Zwischen', 'replaceTerms', 'terms.write.instant', '', 1),
(3, 'de', 'Abschnitte ordnen', 'Ordnen Sie die durcheinander gebrachten Abschnitte so, dass ein zusammenhängender Text ensteht.', '', 'disorderParagraphs', 'paragraphs.order.onrequest', 'paragraphs.order', 1),
(4, 'de', 'Sätze vervollständigen', 'Ziehen Sie die passenden Wörter in die Lücken.', '', 'replaceRandomTerms', 'terms.draganddrop.instant', 'terms.draganddrop', 1),
(5, 'de', 'Wörter ordnen', 'Ordnen Sie die Wörter in der richtigen Reihenfolge an.', '', 'replaceAllWords', 'randomizedwords.draganddrop.instant', 'terms.draganddrop', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `TestTypes2ExternalCodes`
--

CREATE TABLE IF NOT EXISTS `TestTypes2ExternalCodes` (
  `test_type_id` int(11) NOT NULL,
  `external_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `TestTypes2ExternalCodes`
--

INSERT INTO `TestTypes2ExternalCodes` (`test_type_id`, `external_code_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 4),
(3, 5),
(3, 7),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 4),
(5, 5),
(5, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Texts`
--

CREATE TABLE IF NOT EXISTS `Texts` (
`id` int(11) NOT NULL,
  `language` char(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `level` char(2) NOT NULL,
  `source` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Texts`
--

INSERT INTO `Texts` (`id`, `language`, `title`, `text`, `level`, `source`, `url`, `public`) VALUES
(1, 'de', 'EU-Kommission droht Sri Lanka mit Fischimportverbot', 'Brüssel (EU), 21.10.2014 – Die für Fischerei und maritime Angelegenheiten zuständige EU-Kommissarin Maria Damanaki hat ein Importverbot von Fisch aus dem asiatischen Land Sri Lanka vorgeschlagen, da Sri Lanka illegale Fischerei nach Auffassung der EU-Kommission nicht genug bekämpft. Hauptsächlich bemängelt wird die Missachtung internationaler Regelungen, das Fehlen von angemessenen Überwachungsmechanismen für Fischereischiffe und die zu geringe Abschreckung. Darüber hinaus sollen Maßnahmen ergriffen werden, die verhindern, dass Bestände weiter dezimiert, Lebensräume zerstört und der legalen Fischerei Schaden zugefügt wird.\r\n\r\nDie EU-Kommission hat Sri Lanka bereits im Jahr 2012 förmlich verwarnt, diese Missstände zu beheben, daneben wurden damals auch Belize, die Fidschis, Panama, Togo und Vanuatu verwarnt, diese Staaten haben aber bereits die notwendigen Maßnahmen ergriffen. Deshalb wird die Kommission die schon bestehenden Einfuhrhemnisse für Fisch aus Belize wieder aufheben.\r\n\r\nIm Jahr 2013 wurde Fisch im Wert von ca. 74 Millionen Euro aus Sri Lanka in die EU eingeführt, dies soll ab Januar 2015 nicht mehr möglich sein.\r\n\r\nIn der Europäischen Union gelten bereits seit 2010 harte Vorschriften, die den Verkauf von illegal gefangenem Fisch verbieten. Um dies zu verhindern werden Schiffe untersucht, bei welchen der Verdacht auf illegale Fischerei besteht, bestimmte Einfuhren in die EU abgelehnt. Dabei wird auch mit Ländern außerhalb der EU zusammengearbeitet. Fischereiprodukte welche in die EU eingeführt werden müssen entsprechend nach Ursprung und Rechtmäßigkeit beurkundet sein.', 'c1', 'Wikinews', 'http://de.wikinews.org/wiki/EU-Kommission_droht_Sri_Lanka_mit_Fischimportverbot', 1),
(2, 'de', 'Diskussion um Sterbehilfe in Deutschland', 'Bremen (Deutschland), 11.10.2014 – Als Justizministerin hatte Sabine Leutheuser Schnarrenberger (FDP) in der vergangenen Legislaturperiode (2009-2013) einen Gesetzentwurf zur Sterbehilfe vorgelegt, um die gewerbsmäßige Hilfe zur Selbsttötung unter Strafe zu stellen. In der gegenwärtigen Legislaturperiode legte Gesundheitsminister Hermann Gröhe (CDU) keinen neuen Entwurf vor. Stattdessen sollen die Bundestagsabgeordneten ein Gesetz vorschlagen.\r\n\r\nIm Frühjahr diesen Jahres hatte ein „Bundesweiter Arbeitskreis Säkulare Grüne“ von Bündnis 90 / GRÜNE zur offenen Auseinandersetzung mit dem Thema aufgerufen. In Bremen veranstaltete die Partei dazu am 2. Oktober ein Fachforum in der Stadtbibliothek, an dem Prof. Ulrich Bonk vom Deutschen Hospiz- und Palliativ-Verband und Prof. Dieter Birnbacher von der Deutschen Gesellschaft für Humanes Sterben teilnahmen. Moderiert wurde die Veranstaltung von Kirsten Kappert-Gonther, Abgeordnete in der Bremischen Bürgerschaft mit den Schwerpunkten Gesundheitspolitik und Religionspolitik. Im Vordergrund stand die Frage, ob und was an den geltenden Gesetzen in Deutschland zu ändern sei. So wurde die Regelung in der Schweiz von Professor Birnbacher als ein mögliches Modell genannt, während die Liberalisierung etwa in Belgien und den Niederlanden als Gefahr gesehen wurde. Professor Bonk betonte, durch die negativen Erfahrungen in Deutschland mit der Euthanasie in der Zeit des Nationalsozialismus sei eine sachliche Auseinandersetzung oft schwierig. Zur Diskussion konnten auch betroffene Angehörige aus dem Publikum inhaltlich beitragen. Seitens der Religionsgemeinschaften war ein Pastor unter den Zuhörern, der nur einen Kommentar abgeben wollte und zwar, dass ihn der "Begriff Menschenwürde" stört.\r\n\r\nIn der benachbarten Kreisstadt Osterholz-Scharmbeck hatte die SPD-Bundestagsfraktion zu einer Diskussionsveranstaltung mit gleicher Thematik eingeladen. Gäste waren die Osterholzer Superintendentin Jutta Rühlemann und der Chefarzt des Kreiskrankenhauses, Dr. Christian Remke. Die Bundestagsabgeordnete Christina Jantz erklärte dazu: „Wir möchten, dass eine möglichst breite gesellschaftliche Debatte über den Umgang mit diesem existenziellen Thema geführt wird.“ Es herrschte Einmütigkeit darüber, dass bei einer Gesetzesänderung in Deutschland eine Tötung auf Verlangen nicht ermöglicht werden dürfe. Entwicklungen wie in Belgien, wo aktive Sterbehilfe auch bei Kindern und Jugendlichen zulässig ist, werden hierzulande mit großer Sorge betrachtet,', 'c1', 'Wikinews', 'http://de.wikinews.org/wiki/Diskussion_um_Sterbehilfe_in_Deutschland', 1),
(3, 'de', 'Bundesfamilienministerin Schwesig (SPD) will E-Zigaretten-Verkauf an Kinder und Jugendliche verbieten', 'Familienministerin Manuela Schwesig will den Verkauf von E-Zigaretten an Kinder und Jugendlichen verbieten. Erwachsenen ist es erlaubt, damit ihre Gesundheit zu ruinieren, wenn nicht andere Menschen damit hineingezogen werden. Passivrauchen ist deshalb gesetzlich geregelt. Das gilt aber nur für Tabakerzeugnisse. Die Flüssigkeit, die von E-Zigaretten verdampft wird, kann auch Nikotin enthalten. Eine umfassendere rechtliche Handhabe zum Schutz der Gesundheit von Minderjährigen fehlt jedoch bisher.\\n\\nNach derzeit geltendem Recht fallen die elektrischen Glimmstängel auch nicht unter das Nichtraucherschutzgesetz. Inzwischen fordern daher Forscher, Ärzte und Verbände eine entsprechende gesetzliche Regelung. Ob sich die Anwendung von E-Zigaretten bei Jugendlichen durch ein Verbot verringern wird, bleibt abzuwarten. Zu groß ist die Vorbildfunktion der Erwachsenen.', 'b2', 'Wikinews', 'https://de.wikinews.org/wiki/Bundesfamilienministerin_Schwesig_(SPD)_will_E-Zigaretten-Verkauf_an_Kinder_und_Jugendliche_verbieten', 1),
(4, 'de', 'Finnische Regierung wurde vereinigt', 'Die neue finnische Regierung wurde in Helsinki vereinigt. Diese wird von Ministerpräsident Juha Sipilä, dem Vorsitzenden der Zentrumspartei, geleitet. Neben der liberalen Zentrumspartei sind auch die konservative und proeuropäische Nationale Koalition und die rechts-populistischen „Wahren Finnen“ an der Regierung beteiligt.\\n\\nDer ehemalige finnische Ministerpräsident Stubb, von der Nationalen Koalition, wird Finanzminister und der Vorsitzende der „Wahren Finnen“ Soini neuer Außenminister des skandinavischen Landes. Außenminister Soini will auch in Zukunft dafür einstehen, das Finnland ein blockfreier und neutraler Staat bleibt, aber es soll auch eine strategische Partnerschaft mit der NATO unterhalten werden.\\n\\nDer ehemalige EU-Wirtschafts- und Währungskommissar Olli Rehn wird neuer Wirtschaftsminister. In seiner ersten Pressemitteilung als Wirtschaftsminister sagte er, die beiden Hauptaufgaben der finnischen Regierung liegen in der Ausgleichung des Haushaltsdefizites und der Erreichung eines nachhaltigen Wachstums.', 'b2', 'Wikinews', 'https://de.wikinews.org/wiki/Finnische_Regierung_wurde_vereinigt', 1),
(6, 'de', 'Parlamentswahl in der Türkei: AKP verliert absolute Mehrheit', 'Ankara (Türkei), 08.06.2015 – Bei der Wahl am 7. Juni hat die bisher regierende islamisch-konservative Partei AKP von Präsident Erdoğan nach 13 Jahren die absolute Mehrheit verloren. Sie war mit zuletzt 312 von 535 Abgeordneten stärkste Fraktion im Parlament, das wörtlich übersetzt „Große Nationalversammlung der Türkei“ heißt. Dieses Mal erhielt die AKP nur noch 256 Sitze von 550. Sie verfehlte ihr Ziel mehr Mandate als 2011 zu erreichen, so dass die geplante Verfassungsänderung wohl nicht stattfinden kann. Politische Gegner der AKP fürchteten im Falle einer Verfassungsänderung eine weitere Machtkonzentration in den Händen Erdoğans und sprachen von einer „möglichen Diktatur“. Außerdem wurde das Verhalten von Erdoğan gegenüber den Oppositionsparteien im Wahlkampf kritisiert.\\n\\n2011 hatte die AKP bereits rein rechnerisch mit 49,8 Prozent die absolute Mehrheit verfehlt, aber aufgrund des Systems der Sitzverteilung fast 60 Prozent der Plätze bekommen. Seitdem hatte es Aus- und Übertritte von AKP-Abgeordneten gegeben. Durch die Sperrklausel von 10 Prozent haben viele kleine und neue Parteien geringe Chancen. Im Jahre 2012 entstand die neue „Demokratische Partei der Völker“ (HDP), der sich mehrere prominente Abgeordnete anschlossen. Sie erreichte jetzt einen Achtungserfolg aus dem Stand heraus mit 13 Prozent. Auch die stark rechtsgerichtete „Partei der Nationalistischen Bewegung“ (MHP) konnte Zugewinne verzeichnen und bekam rund 16 Prozent. Zweitstärkste Kraft blieb die „Republikanische Volkspartei“ (CHP), sie erhielt 25 Prozent.\\n\\nZwölf Abgeordnete waren bisher fraktionslos. Ihre Zahl hatte sich seit 2011 verdoppelt. Die bisherige Anzahl an weiblichen Abgeordneten belief sich auf 77. Die türkische Verfassung sieht vor, dass nach dem Wahltermin innerhalb von 45 Tagen eine neue Regierung gebildet werden muss. Hierfür gibt es verschiedene Optionen. Zudem kann sich die Zusammensetzung der Fraktionen im Laufe der Zeit durch Aus- und Übertritte verändern.', 'c1', 'Wikinews', 'http://de.wikinews.org/wiki/Parlamentswahl_in_der_T%C3%BCrkei:_AKP_verliert_absolute_Mehrheit', 1),
(7, 'de', 'Leiharbeit in Deutschland: Der zweite Arbeitsmarkt wächst', 'Leipzig (Deutschland), 14.06.2015 – Leipzig hat die höchste Leiharbeitsquote aller deutschen Großstädte. Nach einer Untersuchung des Instituts der deutschen Wirtschaft (IW) ist der prozentuale Anteile von Frauen in Vollzeit im Saarland und in Nordrhein-Westfalen am geringsten.\\n\\nNach Angaben der Internationalen Arbeitsorganisation (ILO) waren 2014 in Deutschland rund 7,5 Millionen Menschen in sogenannten Minijobs tätig. Etwa 20 Prozent der Erwerbstätige hatten einen 450-Euro-Job und waren damit nur teilweise sozialversichert.', 'b1', 'Wikinews', 'https://de.wikinews.org/wiki/Leiharbeit_in_Deutschland:_Der_zweite_Arbeitsmarkt_w%C3%A4chst', 1),
(8, 'de', 'Dresden wählt neuen Oberbürgermeister', 'Dresden (Deutschland), 08.06.2015 – Seit Einführung der Süddeutschen Ratsverfassung in Sachsen wird der Oberbürgermeister der Landeshauptstadt vom Volk gewählt und ist zugleich Vorsitzender des Stadtrates. Wählbar sind Personen, die am Wahltag das 18. Lebensjahr, aber noch nicht das 65. vollendet haben. Gewählt wurde am 7. Juni 2015, wobei keiner der Bewerber mehr als die Hälfte der gültigen Stimmen erhielt. Somit findet am 5. Juli eine Stichwahl statt.\\n\\nAussichtsreichste Kandidaten waren Markus Ulbig von der CDU, Eva-Maria Stange von der SPD und Dirk Hilbert von der FDP. Tatjana Festerling tritt für die unter dem Namen PEGIDA bekanntgewordene Bewegung als Kandidatin an; sie war bisher in Hamburg für die AfD aktiv. Ulbig ist seit September 2009 Sächsischer Staatsminister des Innern, Stange seit November 2014 Staatsministerin für Wissenschaft und Kunst.\\n\\nEva-Maria Stange hat sich als Kandidatin der Wählerinitiative „Gemeinsam für Dresden“ präsentiert und wird von den Grünen und der Linken unterstützt. Sie erhielt 36 Prozent. Dirk Hilber trat als unabhängiger Kandidat für den &quot;Verein unabhängige Bürger von Dresden&quot; an und bekam 31,7 Prozent. Der CDU-Kandidat Markus Ulbig kam nur auf 15,4 Prozent. Tatjana Festerling blieb unter zehn Prozent, zumal die Alternative für Deutschland (AfD) mit einem eigenen Kandidaten angetreten war.', 'b2', 'Wikinews', 'https://de.wikinews.org/wiki/Dresden_w%C3%A4hlt_neuen_Oberb%C3%BCrgermeister', 1),
(10, 'de', 'Goethe: Abschied', 'Zu lieblich ists, ein Wort zu brechen,\\nZu schwer die wohlerkannte Pflicht,\\nUnd leider kann man nichts versprechen\\nWas unserm Herzen widerspricht.\\n\\nDu übst die alten Zauberlieder,\\nDu lockst ihn, der kaum ruhig war,\\nZum Schaukelkahn der süßen Thorheit wieder\\nErneust, verdoppelst die Gefahr.\\n\\nWas suchst du mir dich zu verstecken\\nSey offen, flieh nicht meinen Blick!\\nFrüh oder spät mußt ichs entdecken,\\nUnd hier hast du dein Wort zurück.\\n\\nWas ich gesollt, hab ich vollendet,\\nDurch mich sey dir von nun an nichts verwehrt,\\nAllein verzeih dem Freund der sich nun von dir wendet,\\nUnd still in sich zurücke kehrt.', 'c2', 'Wikisource', 'https://de.wikisource.org/wiki/Abschied_(Goethe)', 1),
(11, 'de', 'Franz Kafka: Auf der Galerie', 'Wenn irgendeine hinfällige, lungensüchtige Kunstreiterin in der Manege auf schwankendem Pferd vor einem unermüdlichen Publikum vom peitschenschwingenden erbarmungslosen Chef monatelang ohne Unterbrechung im Kreise rundum getrieben würde, auf dem Pferde schwirrend, Küsse werfend, in der Taille sich wiegend, und wenn dieses Spiel unter dem nichtaussetzenden Brausen des Orchesters und der Ventilatoren in die immerfort weiter sich öffnende graue Zukunft sich fortsetzte, begleitet vom vergehenden und neu anschwellenden Beifallsklatschen der Hände, die eigentlich Dampfhämmer sind - vielleicht eilte dann ein junger Galeriebesucher die lange Treppe durch alle Ränge hinab, stürzte in die Manege, rief das - Halt! durch die Fanfaren des immer sich anpassenden Orchesters.\\n\\nDa es aber nicht so ist; eine schöne Dame, weiß und rot, hereinfliegt, zwischen den Vorhängen, welche die stolzen Livrierten vor ihr öffnen; der Direktor, hingebungsvoll ihre Augen suchend, in Tierhaltung ihr entgegenatmet; vorsorglich sie auf den Apfelschimmel hebt, als wäre sie seine über alles geliebte Enkelin, die sich auf gefährliche Fahrt begibt; sich nicht entschließen kann, das Peitschenzeichen zu geben; schließlich in Selbstüberwindung es knallend gibt; neben dem Pferde mit offenem Munde einherläuft; die Sprünge der Reiterin scharfen Blickes verfolgt; ihre Kunstfertigkeit kaum begreifen kann; mit englischen Ausrufen zu warnen versucht; die reifenhaltenden Reitknechte wütend zu peinlichster Achtsamkeit ermahnt; vor dem großen Salto mortale das Orchester mit aufgehobenen Händen beschwört, es möge schweigen; schließlich die Kleine vom zitternden Pferde hebt, auf beide Backen küßt und keine Huldigung des Publikums für genügend erachtet; während sie selbst, von ihm gestützt, hoch auf den Fußspitzen, vom Staub umweht, mit ausgebreiteten Armen, zurückgelehntem Köpfchen ihr Glück mit dem ganzen Zirkus teilen will - da dies so ist, legt der Galeriebesucher das Gesicht auf die Brüstung und, im Schlußmarsch wie in einem schweren Traum versinkend, weint er, ohne es zu wissen.', 'c2', 'literaturnetz.org', 'http://literaturnetz.org/8096', 1),
(12, 'de', 'Windenergiefirma PNE: Machtkampf im Aufsichtsrat', 'Cuxhaven (Deutschland), 19.06.2015 – Zur diesjährigen Hauptversammlung der norddeutschen Windenergiefirma PNE in Cuxhaven am 16. Juni bahnte sich bereits im Vorfeld ein Machtkampf im Aufsichtsrat an. Volker Friedrichsen, der 2014 neu in das Gremium gewählt wurde und früher Chef von Windkraft Nord AG (WKN) war, fühlt sich als Aktionär „oftmals schlecht informiert, manchmal gar benachteiligt“. Er besitzt rund 15 Prozent der Aktien. Außerdem kritisiert er die Vorgehensweise bei den Offshore-Projekten. Martin Billhardt, Vorstandsvorsitzender von PNE WIND AG wirft Friedrichsen eine falsche Bewertung der WKN AG vor, wodurch ein Schaden von 17 Millionen Euro entstanden sei. Der Aufsichtsrat ist gespalten, zwei seiner Mitglieder halten zu Friedrichsen, die anderen drei stehen auf Billhardts Seite.\\n\\nDie Hauptversammlung zog sich bis Mitternacht hin. Als Erfolg wurde der Verkauf des Projektgeschäfts in Großbritannien gefeiert. Nach Darstellung der Geschäftsleitung waren dann „umfangreiche Wortmeldungen und Geschäftsordnungsanträge von Aktionären“ die Ursache für die ungewöhnlich lange Dauer der Sitzung. Streitpunkt waren die Vergütung von Vorstand und Aufsichtsrat sowie die mögliche Abberufung von Aufsichtsräten. Bei einer Abstimmung kam es zu einem derartigen Aufruhr, dass der Vorstand die Sitzung abbrechen musste. Es wurden Zweifel an den Abstimmungsergebnissen laut, und schließlich wurden Polizei und Staatsanwaltschaft eingeschaltet. Jetzt wird wegen Verdachts der Urkundenunterdrückung ermittelt. Das Ergebnis wird erst in einigen Tagen vorliegen. Möglicherweise werden Abtimmungsvorgänge für ungültig erklärt. Zu den entsprechenden Tagesordnungspunkten müsste dann erneut eine Hauptversammlung einberufen werden. Das Aktiengesetz schreibt vor, dass die Abstimmungen von einem Notar überwacht werden müssen.', 'b2', 'Wikinews', 'https://de.wikinews.org/wiki/Windenergiefirma_PNE:_Machtkampf_im_Aufsichtsrat', 1),
(13, 'de', 'Johann Heinrich Pestalozzi: Alte Zeit, gute Zeit', '»Ich wollte aus einer solchen Eiche zwölf Ruhbänke machen, die ebenso dienen«, sagte Schaffner Christoph zu seinem Herrn, der eben auf einer Eiche saß, die sein Ahnherr zu einem Ruhbanke vor sein Schloß hatte legen lassen.\\n\\n»Nun, so nimm eine solche Eiche«, antwortete sein Herr, »und mache zwölf solche Ruhbänke daraus.«\\n\\nDer Schaffner tat es; aber die Ruhbänke sind schon alle wieder verfault, und des Großvaters Eiche liegt noch unversehrt da und wird in hundert Jahren bei späten Enkeln noch unversehrt daliegen.', 'c1', 'literaturnetz.org', 'http://literaturnetz.org/1142', 1),
(14, 'de', 'Aesop: Das Lamm und der Wolf', 'Ein Lämmchen löschte an einem Bache seinen Durst. Fern von ihm, aber näher der Quelle, tat ein Wolf das gleiche. Kaum erblickte er das Lämmchen, so schrie er:\\n\\n&quot;Warum trübst du mir das Wasser, das ich trinken will?&quot;\\n\\n&quot;Wie wäre das möglich&quot;, erwiderte schüchtern das Lämmchen, &quot;ich stehe hier unten und du so weit oben; das Wasser fließt ja von dir zu mir; glaube mir, es kam mir nie in den Sinn, dir etwas Böses zu tun!&quot;\\n\\n&quot;Ei, sieh doch! Du machst es gerade, wie dein Vater vor sechs Monaten; ich erinnere mich noch sehr wohl, daß auch du dabei warst, aber glücklich entkamst, als ich ihm für sein Schmähen das Fell abzog!&quot;\\n\\n&quot;Ach, Herr!&quot; flehte das zitternde Lämmchen, &quot;ich bin ja erst vier Wochen alt und kannte meinen Vater gar nicht, so lange ist er schon tot; wie soll ich denn für ihn büßen.&quot;\\n\\n&quot;Du Unverschämter!&quot; so endigt der Wolf mit erheuchelter Wut, indem er die Zähne fletschte. &quot;Tot oder nicht tot, weiß ich doch, daß euer ganzes Geschlecht mich hasset, und dafür muß ich mich rächen.&quot;\\n\\nOhne weitere Umstände zu machen, zerriß er das Lämmchen und verschlang es.\\n\\nDas Gewissen regt sich selbst bei dem größten Bösewichte; er sucht doch nach Vorwand, um dasselbe damit bei Begehung seiner Schlechtigkeiten zu beschwichtigen.', 'b1', 'literaturnetz.org', 'http://literaturnetz.org/1028', 1),
(15, 'de', 'Johann Heinrich Pestalozzi: Der Elefant motiviert sein Urteil über die Regierungsunfähigkeit der Tiere', 'Ein Mensch, der diese Elefantenäußerung hörte, sagte zu ihm: »Ich wünschte zu wissen, wie du dein Urteil über die Regierungsunfähigkeit der Tiere gegen sie einzeln begründen könntest.« Der Elefant erwiderte: »Beim Löwen sind, außer seinem in Blutsachen allen Verstand tötenden Rachegefühle, noch seine allgemeine Verachtung der Tiere, sein stolzer Anspruch an ungestörte Ruhe und seine den Mord wie ein Nichts vollbringende Organisation ein ewiges Hindernis der Teilnahme, ohne die keine Regierungsfähigkeit stattfindet. Daß auch die Esel gerne regieren möchten, ist sehr natürlich, indem ihnen kein anderes Mittel übrigbleibt, sich einem elenden Leben zu entziehen. Aber ewig lebt unter einem abgeriebenen Fell die Beruhigung nicht, ohne die ebenfalls keine wahre Regierungsfähigkeit statthat. Auch ein Stier wird am Pfluge zu müde, als daß er sich zu einer ruhigen, von Selbstsucht freien Gemeinnützigkeit emporheben könnte. Der Hund ist zum Knechte geboren. Lecken und Bellen in einem Munde gehört ewig an die Kette. Der Fuchs vereinigt, neben der Mordlust des Löwen, die ängstliche Besorgnis, selbst gefressen oder zu Tod geprügelt zu werden. Hieraus entspringt eine Gemütsstimmung, die die Teilnahme und die Zuverlässigkeit zugleich ausschließt. Die Schlange ist nichts anderes als ein Fuchs ohne Beine mit noch tausendmal stillerer Mordkraft. Der Rehbock kommt durch die Eitelkeit, die neben seiner Gutmütigkeit unter seinem Horn und hinter seiner Nase sitzt, alle Augenblicke in Gefahr, in seinem Einfluß auf die friedlichen Tiere ein Spiel der Fleischfressenden zu werden.«', 'b2', 'literaturnetz.org', 'http://literaturnetz.org/1151', 1),
(16, 'de', 'Gotthold Ephraim Lessing: Der Esel mit dem Löwen', 'Als der Esel mit dem Löwen des Äsopus, der ihn statt seines Jägerhorns brauchte, nach dem Walde ging, begegnete ihm ein anderer Esel von seiner Bekanntschaft und rief ihm zu: &quot;Guten Tag, mein Bruder!&quot; -\\n\\n&quot;Unverschämter!&quot; war die Antwort. -\\n\\n&quot;Und warum das?&quot; fuhr jener Esel fort. &quot;Bist du deswegen, weil du mit einem Löwen gehst, besser als ich, mehr als ein Esel?&quot;', 'b1', 'literaturnetz.org', 'http://literaturnetz.org/1087', 1),
(17, 'de', 'Jean de La Fontaine: Der Fuchs und der Hahn', 'Ein Hahn saß auf einem hohen Gartenzaun und kündete mit lautem Krähen den neuen Tag an. Ein Fuchs schlich um den Zaun herum und blickte verlangend zu dem fetten Hahn empor.\\n\\n&quot;Einen schönen guten Morgen&quot;, grüßte der Fuchs freundlich, &quot;welch ein herrlicher Tag ist heute!&quot;\\n\\nDer Hahn erschrak, als er seinen Todfeind erblickte, und klammerte sich ängstlich fest.\\n\\n&quot;Brüderchen, warum bist du böse mit mir? Laß uns doch endlich Frieden schließen und unseren Streit begraben.&quot; Der Hahn schwieg noch immer. &quot;Weißt du denn nicht&quot;, säuselte der Fuchs mit sanfter Stimme, &quot;daß der König der Tiere den Frieden ausgerufen hat? Er hat mich als seinen Boten ins Land geschickt. Komm schnell zu mir herunter, wir wollen unsere Versöhnung mit einem Bruderkuß besiegeln. Aber beeile dich, ich habe noch vielen anderen diese freudige Nachricht zu bringen.&quot;\\n\\nDer Hahn schluckte seine Furcht hinunter und sagte sich: &quot;Diesem verlogenen Gauner komme ich nur mit seinen eigenen Waffen bei.&quot; Und mit gespielter Freude rief er: &quot;Mein lieber Freund, ich bin tief gerührt, daß auch du des Königs Friedensbotschaft verbreitest. Ja, laß uns Frieden schließen. Es trifft sich gut, denn gerade sehe ich zwei andere Boten auf uns zueilen. Wir wollen auf sie warten und gemeinsam das glückliche Fest feiern. Du kennst sie recht gut, es sind die Wachhunde des Gutsherrn.&quot;\\n\\nKaum hatte der Fuchs diese Kunde vernommen, war er aufgesprungen und eiligst davongerannt.\\n\\n&quot;He, warte doch!&quot; krähte der Hahn hinter ihm her. &quot;Ich habe noch sehr viel zu tun&quot;, keuchte der Fuchs aus der Ferne, &quot;ich hole mir den Friedenskuß ein andermal von dir. Du kannst dich darauf verlassen.&quot; Der Hahn freute sich, daß ihm die List gelungen war.\\n\\nDer Fuchs aber war verärgert. Er hatte alles so klug eingefädelt, und just in diesem Augenblick mußten seine ärgsten Feinde auftauchen und alles verderben.\\n\\nAber, wo blieben sie denn?\\n\\nDer Fuchs verlangsamte seine Schritte und blickte sich um. Niemand folgte ihm, auch hatte er kein Bellen gehört. Sollte dieser alte Hahn ihn reingelegt haben? Ausgerechnet so ein aufgeplusterter, dummer Hahn?', 'b1', 'literaturnetz.org', 'http://literaturnetz.org/1062', 1),
(18, 'de', 'Johann Heinrich Pestalozzi: Zwei Schäfer', 'Der eine hütete die Schafe mit einem Hunde, der ohne Not keinen Laut gab, aber stark war und Wolf und Fuchs bis in ihre Höhlen verfolgte.\\n\\nDer andere hütete sie mit einem, der, wenn sein Meister flötete, ihm tanzte, und wenn er schlief, unter der Herde herumsprang und die Zucht und Unzucht aller ihrer Ecken und Winkel auskundschaftete. Das war freilich für die Kurzweile und die Trägheit des Schäfers gut ausgedacht; aber die Herde hielt diesen Hund für ihren Teufel, und Fuchs und Wolf sagten untereinander: »Wir haben auf hundert Stunden weit keinen bessern Freund als diesen Hund.«', 'b1', 'literaturnetz.org', 'http://literaturnetz.org/1138', 1),
(19, 'de', 'Gotthold Ephraim Lessing: Das Geschenk der Feien', 'Zu der Wiege eines jungen Prinzen, der in der Folge einer der größten Regenten seines Landes ward, traten zwei wohltätige Feien.\\n\\n&quot;Ich schenke diesem meinem Lieblinge&quot;, sagte die eine, &quot;den scharfsichtigen Blick des Adlers, dem in seinem weiten Reiche auch die kleinste Mücke nicht entgeht.&quot;\\n\\n&quot;Das Geschenk ist schön&quot;, unterbrach sie die zweite Feie. &quot;Der Prinz wird ein einsichtsvoller Monarch werden. Aber der Adler besitzt nicht allein Scharfsichtigkeit, die kleinsten Mücken zu bemerken, er besitzt auch eine edle Verachtung, ihnen nicht nachzujagen. Und diese nehme der Prinz von mir zum Geschenk!&quot;\\n\\n&quot;Ich danke dir, Schwester, für diese weise Einschränkung&quot;, versetzte die erste Feie. &quot;Es ist wahr; viele würden weit größere Könige gewesen sein, wenn sie sich weniger mit ihrem durchdringenden Verstande bis zu den kleinsten Angelegenheiten hätten erniedrigen wollen.&quot;', 'b1', 'literaturnetz.org', 'http://literaturnetz.org/1091', 1),
(20, 'de', 'Es war ein faules Krokodil', 'Es war ein faules Krokodil,\\nDas lag zwei Monate ganz still.\\nDann schlief es sieben Jahre ein\\nUnd schließlich schien es tot zu sein.', 'a1', 'Wikisource', 'https://de.wikisource.org/wiki/Es_war_ein_faules_Krokodil', 1),
(21, 'de', 'Spuk mit Rümmel mit Kum', 'Der fliegende Holländer\\nVerlor seine Strumpfbänder.\\nEin Fischer hat dem zugesehn;\\nDer konnte nicht mehr gerade stehn.', 'a2', 'Wikisource', 'https://de.wikisource.org/wiki/Spuk_mit_R%C3%BCmmel_mit_Kum', 1),
(22, 'de', 'Ruhe ist viel wert', 'Ruhe ist viel wert,\\nSagte das Nilpferd\\nUnd setzte sich auf was Weiches.\\nDer Elefant tat ein Gleiches.', 'a1', 'Wikisource', 'https://de.wikisource.org/wiki/%E2%80%9ERuhe_ist_viel_wert%E2%80%9C', 1),
(23, 'de', 'Es war einmal ein schlimmer Husten', 'Es war einmal ein schlimmer Husten,\\nDer hörte gar nicht auf zu pusten.\\nZwar kroch er hinter eine Hand,\\nWas jedermann manierlich fand.\\nUnd doch hat ihn der Doktor Lieben\\nMit Liebens Malzbonbon vertrieben.', 'a2', 'Wikisource', 'https://de.wikisource.org/wiki/Es_war_einmal_ein_schlimmer_Husten', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ExternalCodes`
--
ALTER TABLE `ExternalCodes`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Languages`
--
ALTER TABLE `Languages`
 ADD PRIMARY KEY (`code`), ADD UNIQUE KEY `code` (`code`);

--
-- Indizes für die Tabelle `Tests`
--
ALTER TABLE `Tests`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `TestTypes`
--
ALTER TABLE `TestTypes`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `TestTypes2ExternalCodes`
--
ALTER TABLE `TestTypes2ExternalCodes`
 ADD PRIMARY KEY (`test_type_id`,`external_code_id`);

--
-- Indizes für die Tabelle `Texts`
--
ALTER TABLE `Texts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ExternalCodes`
--
ALTER TABLE `ExternalCodes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `Tests`
--
ALTER TABLE `Tests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `TestTypes`
--
ALTER TABLE `TestTypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `Texts`
--
ALTER TABLE `Texts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
