-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 20. Jul 2015 um 14:14
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
(7, 'jQuery UI Touch Punch', 'js', 'A small hack that enables the use of touch events on sites using the jQuery UI user interface library.', 'templates/default/js/jquery.ui.touch-punch.min.js', 1),
(8, 'Font Awesome', 'css', 'The iconic font designed for use with Twitter Bootstrap.', '/vendor/components/font-awesome/css/font-awesome.min.css', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Languages`
--

CREATE TABLE IF NOT EXISTS `Languages` (
  `code` char(2) NOT NULL,
  `locale` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `supported` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Languages`
--

INSERT INTO `Languages` (`code`, `locale`, `name`, `supported`) VALUES
('aa', 'aa.utf8', 'Afar', 0),
('ab', 'ab.utf8', 'Abkhaz', 0),
('ae', 'ae.utf8', 'Avestan', 0),
('af', 'af_ZA.utf8', 'Afrikaans', 0),
('ak', 'ak.utf8', 'Akan', 0),
('am', 'am_ET.utf8', 'Amharic', 0),
('an', 'an.utf8', 'Aragonese', 0),
('ar', 'ar_AE.utf8', 'Arabic', 0),
('as', 'as_IN.utf8', 'Assamese', 0),
('av', 'av.utf8', 'Avaric', 0),
('ay', 'ay.utf8', 'Aymara', 0),
('az', 'az_AZ.utf8', 'Azerbaijani', 0),
('ba', 'ba_RU.utf8', 'Bashkir', 0),
('be', 'be_BY.utf8', 'Belarusian', 0),
('bg', 'bg_BG.utf8', 'Bulgarian', 0),
('bh', 'bh.utf8', 'Bihari', 0),
('bi', 'bi.utf8', 'Bislama', 0),
('bm', 'bm.utf8', 'Bambara', 0),
('bn', 'bn_BD.utf8', 'Bengali', 0),
('bo', 'bo_CN.utf8', 'Tibetan', 0),
('br', 'br_FR.utf8', 'Breton', 0),
('bs', 'bs_BA.utf8', 'Bosnian', 0),
('ca', 'ca_ES.utf8', 'Catalan, Valencian', 0),
('ce', 'ce.utf8', 'Chechen', 0),
('ch', 'ch.utf8', 'Chamorro', 0),
('co', 'co_FR.utf8', 'Corsican', 0),
('cr', 'cr.utf8', 'Cree', 0),
('cs', 'cs_CZ.utf8', 'Czech', 0),
('cu', 'cu.utf8', 'Old Church Slavonic,', 0),
('cv', 'cv.utf8', 'Chuvash', 0),
('cy', 'cy_GB.utf8', 'Welsh', 0),
('da', 'da_DK.utf8', 'Danish', 0),
('de', 'de_DE.utf8', 'German', 1),
('dv', 'dv_MV.utf8', 'Divehi, Dhivehi, Mal', 0),
('dz', 'dz.utf8', 'Dzongkha', 0),
('ee', 'ee.utf8', 'Ewe', 0),
('el', 'el_GR.utf8', 'Greek', 0),
('en', 'en_US.utf8', 'English', 1),
('eo', 'eo.utf8', 'Esperanto', 0),
('es', 'es_ES.utf8', 'Spanish', 0),
('et', 'et_EE.utf8', 'Estonian', 0),
('eu', 'eu_ES.utf8', 'Basque', 0),
('fa', 'fa_IR.utf8', 'Persian (Farsi)', 0),
('ff', 'ff.utf8', 'Fula, Fulah, Pulaar', 0),
('fi', 'fi_FI.utf8', 'Finnish', 0),
('fj', 'fj.utf8', 'Fijian', 0),
('fo', 'fo_FO.utf8', 'Faroese', 0),
('fr', 'fr_FR.utf8', 'French', 0),
('fy', 'fy_NL.utf8', 'Western Frisian', 0),
('ga', 'ga_IE.utf8', 'Irish', 0),
('gd', 'gd_GB.utf8', 'Scottish Gaelic', 0),
('gl', 'gl_ES.utf8', 'Galician', 0),
('gn', 'gn.utf8', 'Guaraní', 0),
('gu', 'gu_IN.utf8', 'Gujarati', 0),
('gv', 'gv.utf8', 'Manx', 0),
('ha', 'ha_NG.utf8', 'Hausa', 0),
('he', 'he_IL.utf8', 'Hebrew', 0),
('hi', 'hi_IN.utf8', 'Hindi', 0),
('ho', 'ho.utf8', 'Hiri Motu', 0),
('hr', 'hr_HR.utf8', 'Croatian', 0),
('ht', 'ht.utf8', 'Haitian, Haitian Cre', 0),
('hu', 'hu_HU.utf8', 'Hungarian', 0),
('hy', 'hy_AM.utf8', 'Armenian', 0),
('hz', 'hz.utf8', 'Herero', 0),
('ia', 'ia.utf8', 'Interlingua', 0),
('id', 'id_ID.utf8', 'Indonesian', 0),
('ie', 'ie.utf8', 'Interlingue', 0),
('ig', 'ig_NG.utf8', 'Igbo', 0),
('ii', 'ii_CN.utf8', 'Nuosu', 0),
('ik', 'ik.utf8', 'Inupiaq', 0),
('io', 'io.utf8', 'Ido', 0),
('is', 'is_IS.utf8', 'Icelandic', 0),
('it', 'it_IT.utf8', 'Italian', 0),
('iu', 'iu_CA.utf8', 'Inuktitut', 0),
('ja', 'ja_JP.utf8', 'Japanese', 0),
('jv', 'jv.utf8', 'Javanese', 0),
('ka', 'ka_GE.utf8', 'Georgian', 0),
('kg', 'kg.utf8', 'Kongo', 0),
('ki', 'ki.utf8', 'Kikuyu, Gikuyu', 0),
('kj', 'kj.utf8', 'Kwanyama, Kuanyama', 0),
('kk', 'kk_KZ.utf8', 'Kazakh', 0),
('kl', 'kl_GL.utf8', 'Kalaallisut', 0),
('km', 'km_KH.utf8', 'Khmer', 0),
('kn', 'kn_IN.utf8', 'Kannada', 0),
('ko', 'ko_KR.utf8', 'Korean', 0),
('kr', 'kr.utf8', 'Kanuri', 0),
('ks', 'ks.utf8', 'Kashmiri', 0),
('ku', 'ku.utf8', 'Kurdish', 0),
('kv', 'kv.utf8', 'Komi', 0),
('kw', 'kw.utf8', 'Cornish', 0),
('ky', 'ky_KG.utf8', 'Kyrgyz', 0),
('la', 'la.utf8', 'Latin', 0),
('lb', 'lb_LU.utf8', 'Luxembourgish, Letze', 0),
('lg', 'lg.utf8', 'Ganda', 0),
('li', 'li.utf8', 'Limburgish, Limburga', 0),
('ln', 'ln.utf8', 'Lingala', 0),
('lo', 'lo_LA.utf8', 'Lao', 0),
('lt', 'lt_LT.utf8', 'Lithuanian', 0),
('lu', 'lu.utf8', 'Luba-Katanga', 0),
('lv', 'lv_LV.utf8', 'Latvian', 0),
('mg', 'mg.utf8', 'Malagasy', 0),
('mh', 'mh.utf8', 'Marshallese', 0),
('mi', 'mi_NZ.utf8', 'Māori', 0),
('mk', 'mk_MK.utf8', 'Macedonian', 0),
('ml', 'ml_IN.utf8', 'Malayalam', 0),
('mn', 'mn_MN.utf8', 'Mongolian', 0),
('mr', 'mr_IN.utf8', 'Marathi (Marāṭhī)', 0),
('ms', 'ms_MY.utf8', 'Malay', 0),
('mt', 'mt_MT.utf8', 'Maltese', 0),
('my', 'my.utf8', 'Burmese', 0),
('na', 'na.utf8', 'Nauru', 0),
('nb', 'nb_NO.utf8', 'Norwegian Bokmål', 0),
('nd', 'nd.utf8', 'Northern Ndebele', 0),
('ne', 'ne_NP.utf8', 'Nepali', 0),
('ng', 'ng.utf8', 'Ndonga', 0),
('nl', 'nl_NL.utf8', 'Dutch', 0),
('nn', 'nn_NO.utf8', 'Norwegian Nynorsk', 0),
('no', 'no.utf8', 'Norwegian', 0),
('nr', 'nr.utf8', 'Southern Ndebele', 0),
('nv', 'nv.utf8', 'Navajo, Navaho', 0),
('ny', 'ny.utf8', 'Chichewa, Chewa, Nya', 0),
('oc', 'oc_FR.utf8', 'Occitan', 0),
('oj', 'oj.utf8', 'Ojibwe, Ojibwa', 0),
('om', 'om.utf8', 'Oromo', 0),
('or', 'or_IN.utf8', 'Oriya', 0),
('os', 'os.utf8', 'Ossetian, Ossetic', 0),
('pa', 'pa_IN.utf8', 'Panjabi, Punjabi', 0),
('pi', 'pi.utf8', 'Pāli', 0),
('pl', 'pl_PL.utf8', 'Polish', 0),
('ps', 'ps_AF.utf8', 'Pashto, Pushto', 0),
('pt', 'pt_PT.utf8', 'Portuguese', 0),
('qu', 'qu.utf8', 'Quechua', 0),
('rm', 'rm_CH.utf8', 'Romansh', 0),
('rn', 'rn.utf8', 'Kirundi', 0),
('ro', 'ro_RO.utf8', 'Romanian', 0),
('ru', 'ru_RU.utf8', 'Russian', 0),
('rw', 'rw.utf8', 'Kinyarwanda', 0),
('sa', 'sa_IN.utf8', 'Sanskrit (Saṁskṛta)', 0),
('sc', 'sc.utf8', 'Sardinian', 0),
('sd', 'sd.utf8', 'Sindhi', 0),
('se', 'se_SE.utf8', 'Northern Sami', 0),
('sg', 'sg.utf8', 'Sango', 0),
('si', 'si_LK.utf8', 'Sinhala, Sinhalese', 0),
('sk', 'sk_SK.utf8', 'Slovak', 0),
('sl', 'sl_SI.utf8', 'Slovene', 0),
('sm', 'sm.utf8', 'Samoan', 0),
('sn', 'sn.utf8', 'Shona', 0),
('so', 'so.utf8', 'Somali', 0),
('sq', 'sq_AL.utf8', 'Albanian', 0),
('sr', 'sr_RS.utf8', 'Serbian', 0),
('ss', 'ss.utf8', 'Swati', 0),
('st', 'st.utf8', 'Southern Sotho', 0),
('su', 'su.utf8', 'Sundanese', 0),
('sv', 'sv_SE.utf8', 'Swedish', 0),
('sw', 'sw_KE.utf8', 'Swahili', 0),
('ta', 'ta_IN.utf8', 'Tamil', 0),
('te', 'te_IN.utf8', 'Telugu', 0),
('tg', 'tg_TJ.utf8', 'Tajik', 0),
('th', 'th_TH.utf8', 'Thai', 0),
('ti', 'ti.utf8', 'Tigrinya', 0),
('tk', 'tk_TM.utf8', 'Turkmen', 0),
('tl', 'tl.utf8', 'Tagalog', 0),
('tn', 'tn_ZA.utf8', 'Tswana', 0),
('to', 'to.utf8', 'Tonga', 0),
('tr', 'tr_TR.utf8', 'Turkish', 0),
('ts', 'ts.utf8', 'Tsonga', 0),
('tt', 'tt_RU.utf8', 'Tatar', 0),
('tw', 'tw.utf8', 'Twi', 0),
('ty', 'ty.utf8', 'Tahitian', 0),
('ug', 'ug_CN.utf8', 'Uyghur, Uighur', 0),
('uk', 'uk_UA.utf8', 'Ukrainian', 0),
('ur', 'ur_PK.utf8', 'Urdu', 0),
('uz', 'uz_UZ.utf8', 'Uzbek', 0),
('ve', 've.utf8', 'Venda', 0),
('vi', 'vi_VN.utf8', 'Vietnamese', 0),
('vo', 'vo.utf8', 'Volapük', 0),
('wa', 'wa.utf8', 'Walloon', 0),
('wo', 'wo_SN.utf8', 'Wolof', 0),
('xh', 'xh_ZA.utf8', 'Xhosa', 0),
('yi', 'yi.utf8', 'Yiddish', 0),
('yo', 'yo_NG.utf8', 'Yoruba', 0),
('za', 'za.utf8', 'Zhuang, Chuang', 0),
('zh', 'zh_CN.utf8', 'Chinese', 0),
('zu', 'zu_ZA.utf8', 'Zulu', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `TestTypes`
--

INSERT INTO `TestTypes` (`id`, `language`, `title`, `description`, `terms`, `function`, `script`, `css`, `public`) VALUES
(1, 'de', 'Artikel einsetzen', 'Setzen Sie die richtigen Formen des unbestimmten Artikels ein.', 'das\\\\dem\\\\den\\\\der\\\\des\\\\die\\\\ein\\\\eine\\\\einem\\\\einen\\\\einer\\\\eines\\\\Das\\\\Dem\\\\Den\\\\Der\\\\Des\\\\Die\\\\Ein\\\\Eine\\\\Einem\\\\Einen\\\\Einer\\\\Eines', 'replaceTerms', 'terms.write.instant', '', 1),
(2, 'de', 'Präpositionen einsetzen', 'Setzen Sie die fehlenden Präpositionen ein.', 'à\\\\À\\\\ab\\\\Ab\\\\abgesehen\\\\Abgesehen\\\\abseits\\\\Abseits\\\\abzüglich\\\\Abzüglich\\\\ähnlich\\\\Ähnlich\\\\als\\\\Als\\\\am\\\\Am\\\\an\\\\An\\\\anfangs\\\\Anfangs\\\\angelegentlich\\\\Angelegentlich\\\\angesichts\\\\Angesichts\\\\anhand\\\\Anhand\\\\anlässlich\\\\Anlässlich\\\\ans\\\\Ans\\\\anstatt\\\\Anstatt\\\\anstelle\\\\Anstelle\\\\auf\\\\Auf\\\\aufgrund\\\\Aufgrund\\\\aufs\\\\Aufs\\\\aufseiten\\\\Aufseiten\\\\aus\\\\Aus\\\\ausgangs\\\\Ausgangs\\\\ausgenommen\\\\Ausgenommen\\\\ausschließlich\\\\Ausschließlich\\\\außer\\\\Außer\\\\außerhalb\\\\Außerhalb\\\\ausweislich\\\\Ausweislich\\\\bar\\\\Bar\\\\behufs\\\\Behufs\\\\bei\\\\Bei\\\\beiderseits\\\\Beiderseits\\\\beidseits\\\\Beidseits\\\\beim\\\\Beim\\\\betreffs\\\\Betreffs\\\\bezüglich\\\\Bezüglich\\\\binnen\\\\Binnen\\\\bis\\\\Bis\\\\bis auf\\\\Bis Auf\\\\contra\\\\Contra\\\\dank\\\\Dank\\\\diesseits\\\\Diesseits\\\\durch\\\\Durch\\\\einbezüglich\\\\Einbezüglich\\\\eingangs\\\\Eingangs\\\\eingedenk\\\\Eingedenk\\\\einschließlich\\\\Einschließlich\\\\entgegen\\\\Entgegen\\\\entlang\\\\Entlang\\\\entsprechend\\\\Entsprechend\\\\exklusive\\\\Exklusive\\\\fern\\\\Fern\\\\fernab\\\\Fernab\\\\frei\\\\Frei\\\\für\\\\Für\\\\fürs\\\\Fürs\\\\gegen\\\\Gegen\\\\gegenüber\\\\Gegenüber\\\\gelegentlich\\\\Gelegentlich\\\\gemäß\\\\Gemäß\\\\gen\\\\Gen\\\\getreu\\\\Getreu\\\\gleich\\\\Gleich\\\\halber\\\\Halber\\\\hinsichtlich\\\\Hinsichtlich\\\\hinter\\\\Hinter\\\\hinterm\\\\Hinterm\\\\hinters\\\\Hinters\\\\im\\\\Im\\\\in\\\\In\\\\in puncto\\\\In Puncto\\\\infolge\\\\Infolge\\\\inklusive\\\\Inklusive\\\\inmitten\\\\Inmitten\\\\innerhalb\\\\Innerhalb\\\\innert\\\\Innert\\\\ins\\\\Ins\\\\je\\\\Je\\\\jenseits\\\\Jenseits\\\\kontra\\\\Kontra\\\\kraft\\\\Kraft\\\\lang\\\\Lang\\\\längs\\\\Längs\\\\längsseits\\\\Längsseits\\\\laut\\\\Laut\\\\links\\\\Links\\\\mangels\\\\Mangels\\\\minus\\\\Minus\\\\mit\\\\Mit\\\\mithilfe\\\\Mithilfe\\\\mitsamt\\\\Mitsamt\\\\mittels\\\\Mittels\\\\nach\\\\Nach\\\\nächst\\\\Nächst\\\\nah\\\\Nah\\\\nahe\\\\Nahe\\\\namens\\\\Namens\\\\neben\\\\Neben\\\\nebst\\\\Nebst\\\\nördlich\\\\Nördlich\\\\nordöstlich\\\\Nordöstlich\\\\nordwestlich\\\\Nordwestlich\\\\ob\\\\Ob\\\\oberhalb\\\\Oberhalb\\\\ohne\\\\Ohne\\\\östlich\\\\Östlich\\\\per\\\\Per\\\\plus\\\\Plus\\\\pro\\\\Pro\\\\quer\\\\Quer\\\\rechts\\\\Rechts\\\\rücksichtlich\\\\Rücksichtlich\\\\samt\\\\Samt\\\\seit\\\\Seit\\\\seitab\\\\Seitab\\\\seitens\\\\Seitens\\\\seitlich\\\\Seitlich\\\\seitwärts\\\\Seitwärts\\\\sonder\\\\Sonder\\\\statt\\\\Statt\\\\südlich\\\\Südlich\\\\südöstlich\\\\Südöstlich\\\\südwestlich\\\\Südwestlich\\\\trotz\\\\Trotz\\\\über\\\\Über\\\\überm\\\\Überm\\\\übern\\\\Übern\\\\übers\\\\Übers\\\\um\\\\Um\\\\ums\\\\Ums\\\\unbeschadet\\\\Unbeschadet\\\\unerachtet\\\\Unerachtet\\\\unfern\\\\Unfern\\\\ungeachtet\\\\Ungeachtet\\\\unter\\\\Unter\\\\unterhalb\\\\Unterhalb\\\\unterm\\\\Unterm\\\\untern\\\\Untern\\\\unters\\\\Unters\\\\unweit\\\\Unweit\\\\vermittels\\\\Vermittels\\\\vermittelst\\\\Vermittelst\\\\vermöge\\\\Vermöge\\\\via\\\\Via\\\\vis-à-vis\\\\Vis-À-Vis\\\\voll\\\\Voll\\\\vom\\\\Vom\\\\von\\\\Von\\\\vonseiten\\\\Vonseiten\\\\vor\\\\Vor\\\\vorbehaltlich\\\\Vorbehaltlich\\\\während\\\\Während\\\\wegen\\\\Wegen\\\\weniger\\\\Weniger\\\\westlich\\\\Westlich\\\\wider\\\\Wider\\\\wie\\\\Wie\\\\willen\\\\Willen\\\\zeit\\\\Zeit\\\\zu\\\\Zu\\\\zufolge\\\\Zufolge\\\\zugunsten\\\\Zugunsten\\\\zulasten\\\\Zulasten\\\\zulieb\\\\Zulieb\\\\zuliebe\\\\Zuliebe\\\\zum\\\\Zum\\\\zur\\\\Zur\\\\zusätzlich\\\\Zusätzlich\\\\zuungunsten\\\\Zuungunsten\\\\zuwider\\\\Zuwider\\\\zuzuglich\\\\Zuzuglich\\\\zuzüglich\\\\Zuzüglich\\\\zwecks\\\\Zwecks\\\\zwischen\\\\Zwischen', 'replaceTerms', 'terms.write.instant', '', 1),
(3, 'de', 'Abschnitte ordnen', 'Ordnen Sie die durcheinander gebrachten Abschnitte so, dass ein zusammenhängender Text ensteht.', '', 'disorderParagraphs', 'paragraphs.order.onrequest', 'paragraphs.order', 1),
(4, 'de', 'Sätze vervollständigen', 'Ziehen Sie die passenden Wörter in die Lücken.', '', 'replaceRandomTerms', 'terms.draganddrop.instant', 'terms.draganddrop', 1),
(5, 'de', 'Wörter ordnen', 'Ordnen Sie die Wörter in der richtigen Reihenfolge an.', '', 'replaceAllWords', 'randomizedwords.draganddrop.instant', 'randomizedwords.draganddrop', 1),
(6, 'en', 'Article Gap Fill', 'For each space, fill an article. Use "the", "a" or "an".', 'the\\\\The\\\\a\\\\A\\\\an\\\\An', 'replaceTerms', 'terms.write.instant', '', 1),
(7, 'en', 'Preposition Gap Fill', 'For each space, fill a preposition.', 'aboard\\\\Aboard\\\\about\\\\About\\\\above\\\\Above\\\\absent\\\\Absent\\\\according\\\\According\\\\across\\\\Across\\\\after\\\\After\\\\against\\\\Against\\\\ahead\\\\Ahead\\\\along\\\\Along\\\\alongside\\\\Alongside\\\\amid\\\\Amid\\\\amidst\\\\Amidst\\\\among\\\\Among\\\\anti\\\\Anti\\\\apart\\\\Apart\\\\around\\\\Around\\\\as\\\\As\\\\aside\\\\Aside\\\\at\\\\At\\\\atop\\\\Atop\\\\bar\\\\Bar\\\\barring\\\\Barring\\\\because\\\\Because\\\\before\\\\Before\\\\behind\\\\Behind\\\\below\\\\Below\\\\beneath\\\\Beneath\\\\beside\\\\Beside\\\\besides\\\\Besides\\\\between\\\\Between\\\\beyond\\\\Beyond\\\\but\\\\But\\\\by\\\\By\\\\circa\\\\Circa\\\\concerning\\\\Concerning\\\\considering\\\\Considering\\\\counting\\\\Counting\\\\despite\\\\Despite\\\\down\\\\Down\\\\during\\\\During\\\\except\\\\Except\\\\exceptą\\\\Exceptą\\\\excepting\\\\Excepting\\\\excluding\\\\Excluding\\\\following\\\\Following\\\\for\\\\For\\\\from\\\\From\\\\front\\\\Front\\\\given\\\\Given\\\\gone\\\\Gone\\\\in\\\\In\\\\inside\\\\Inside\\\\instead\\\\Instead\\\\into\\\\Into\\\\less\\\\Less\\\\like\\\\Like\\\\mid\\\\Mid\\\\minus\\\\Minus\\\\near\\\\Near\\\\nearby\\\\Nearby\\\\next\\\\Next\\\\of\\\\Of\\\\off\\\\Off\\\\on\\\\On\\\\onto\\\\Onto\\\\opposite\\\\Opposite\\\\out\\\\Out\\\\outside\\\\Outside\\\\over\\\\Over\\\\owing\\\\Owing\\\\past\\\\Past\\\\pending\\\\Pending\\\\per\\\\Per\\\\plus\\\\Plus\\\\prior\\\\Prior\\\\pro\\\\Pro\\\\regarding\\\\Regarding\\\\round\\\\Round\\\\save\\\\Save\\\\saving\\\\Saving\\\\since\\\\Since\\\\than\\\\Than\\\\through\\\\Through\\\\throughout\\\\Throughout\\\\till\\\\Till\\\\times\\\\Times\\\\to\\\\To\\\\toward\\\\Toward\\\\towards\\\\Towards\\\\under\\\\Under\\\\underneath\\\\Underneath\\\\unlike\\\\Unlike\\\\until\\\\Until\\\\unto\\\\Unto\\\\up\\\\Up\\\\upon\\\\Upon\\\\versus\\\\Versus\\\\via\\\\Via\\\\with\\\\With\\\\within\\\\Within\\\\without\\\\Without\\\\worth\\\\Worth', 'replaceTerms', 'terms.write.instant', '', 1),
(8, 'en', 'Paragraph sequence', 'Arrange the paragraphs in the correct order.', '', 'disorderParagraphs', 'paragraphs.order.onrequest', 'paragraphs.order', 1),
(9, 'en', 'Missing words', 'Drag the words onto the matching gaps.', '', 'replaceRandomTerms', 'terms.draganddrop.instant', 'terms.draganddrop', 1),
(10, 'en', 'Word order', 'Drag the words onto the matching gaps.', '', 'replaceAllWords', 'randomizedwords.draganddrop.instant', 'randomizedwords.draganddrop', 1);

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
(5, 7),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(8, 5),
(8, 7),
(9, 1),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 1),
(10, 4),
(10, 5),
(10, 6),
(10, 7);

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

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
(23, 'de', 'Es war einmal ein schlimmer Husten', 'Es war einmal ein schlimmer Husten,\\nDer hörte gar nicht auf zu pusten.\\nZwar kroch er hinter eine Hand,\\nWas jedermann manierlich fand.\\nUnd doch hat ihn der Doktor Lieben\\nMit Liebens Malzbonbon vertrieben.', 'a2', 'Wikisource', 'https://de.wikisource.org/wiki/Es_war_einmal_ein_schlimmer_Husten', 1),
(24, 'en', 'NASA&#39;s New Horizons space probe performs first close planetary flyby of Pluto', 'On Tuesday, NASA&#39;s space probe New Horizons reached near Pluto. It was launched about nine-and-a-half years ago on January 19, 2006 to collect data about the dwarf planet, amongst other targets. With its flyby on Tuesday it became the first spacecraft to explore Pluto closely.\\n\\nNASA collected data regarding the geology of the planet. The space probe had seven scientific instruments and massed about 450 kilograms (about 1000 lb). The probe has Pluto and the Kuiper Belt as its highest priorities. Scientists released images from the flyby on Wednesday. Mission scientist John Spencer said, &quot;We have not found a single impact crater on this image. This means it must be a very young surface&quot;. He put the age of the current surface at no more than 100 million years.\\n\\nThe images also did not show craters on its natural satellite, Charon. NASA said mountains on the planet may be made of water-ice.\\n\\nIn February 2007 the space probe flew by Jupiter. The future mission is to explore the Kuiper Belt.', 'b1', 'Wikinews', 'https://en.wikinews.org/wiki/NASA%27s_New_Horizons_space_probe_performs_first_close_planetary_flyby_of_Pluto?dpl_id=2309166', 1),
(25, 'en', 'University of Utah study finds suicide may be linked to air pollution Saturday, February 14, 2015', 'A University of Utah study published on Tuesday in The American Journal of Epidemiology suggests air pollution may increase suicide rates.\\n\\nThe team analysed suicide records for over 1,500 people from Salt Lake County, Utah from 2000 through 2010. Comparing to air pollution exposure in the three days prior to death the scientists noticed an increase of 20% for deaths amongst those exposed to high nitrogen dioxide.\\n\\nHigh exposure to fine particulates in the three days prior to death led to a 5% increase. For men, the rates when exposed to nitrogen dioxide were 25% higher than average. Middle-aged men were particularly affected.\\n\\nThe scientists believe air pollution combines with other factors to increase suicides, rather than triggering them itself. Doctor Amanda Bakian, one of the researchers, said &quot;As suicide risk was found to differ by age and gender, this suggests that vulnerability to suicide following air pollution exposure is not uniform across Salt Lake County residents and that some Salt Lake County residents are more vulnerable than others.&quot;\\n\\nBakian said research to identify what made individuals susceptible to increased suicide risk after air pollution exposure is planned.', 'b2', 'Wikinews', 'https://en.wikinews.org/wiki/University_of_Utah_study_finds_suicide_may_be_linked_to_air_pollution', 1),
(26, 'en', 'Power outage at Fukushima poses radioactive risk', 'A power outage at Japan&#39;s Fukushima 1 nuclear plant on Tuesday has seen eight water transfer pumps shut down, hindering efforts to collect leaked radioactive water before it can reach the sea.\\n\\nTokyo Electric Power Company (TEPCO), which runs the plant, said the affected pumps pull radioactive water out of a drainage channel, sending it through another channel to an enclosed artificial bay. This transfer began on April 17, following an official report released in February by TEPCO, revealing high concentration of radioactive materials found in the plant&#39;s drainage water.\\n\\nThis latest news from the nuclear plant, which sits on the eastern edge of the island nation, alongside the North Pacific Ocean, comes four years after the Fukushima Daiichi nuclear disaster, on March 12, 2011. This disaster saw the nuclear plant subjected to the combined force of an earthquake and tsunami, which caused an explosion at the plant. Since then, the site has remained unstable.\\n\\nThe Woods Hole Oceanographic Institution found small amounts of radioactive caesium isotopes along the coast of North America, reported early this month. Along with these caesium substances, TEPCO reports indicate up to 10 trillion becquerels of strontium-90 and 40 trillion becquerels of tritium have contaminated sea water as a result of, and in the aftermath of, the 2011 disaster.', 'b2', 'Wikinews', 'https://en.wikinews.org/wiki/Power_outage_at_Fukushima_poses_radioactive_risk', 1),
(27, 'en', 'United Nations analyzes oil spill in Sundarbans, Bangladesh', 'A United Nations (UN) team assessed the damage from an early December oil spill in Sundarbans, Bangladesh, to the world&#39;s largest mangrove forest. Team leader Emilia Wahlstrom yesterday presented preliminary assessment results at a press conference in the capital, Dhaka.\\n\\nThe 25-member UN team arrived in Bangladesh on December 18 and visited the Sundarbans from December 22 to December 27.\\n\\nAt the press conference, Wahlstrom said the pollution was spread 40 kilometers up and downstream, but no impact on the mangrove forest floor was observed. She said the Pashur and Shela rivers contributed by washing some of the oil. She also suggested a ban on water traffic in the area, saying &quot;regular monitoring and stopping traffic through the Sundarbans are needed to tackle the long-term impact.&quot;\\n\\nAnwar Hossain Manju, Minister for Forest and Environmental Affairs of Bangladesh, acknowledged that vessel traffic in Sundarbans was suspended. He also said &quot;alternative options&quot; were &quot;being explored&quot;.\\n\\nWahlstrom also commented cleanup by local villagers removed about a fifth of the oil spill.\\n\\nOn December 9, the OT Southern Star 7 tanker sank in an accident with another vessel. Reportedly visibility was poor due to thick fog. OT Southern Star 7 was carrying about 350,000 L of fuel oil.', 'b2', 'Wikinews', 'https://en.wikinews.org/wiki/United_Nations_analyzes_oil_spill_in_Sundarbans,_Bangladesh', 1),
(28, 'en', 'Australian–US team of scientists finds Atlantic warming causes Pacific climate trends', 'A team of scientists from Australia and US has found a solution for a challenging problem in climate research. Climate models predicted more greenhouse gases would weaken the equatorial Pacific trade winds. However, over the past two decades, observations showed this Walker circulation was getting stronger, accelerating sea level rise in the western Pacific, and consequent changes in global climate. The researcher team reports, &quot;The answer to the puzzle is that recent rapid Atlantic Ocean warming has affected climate in the Pacific&quot;. Their study, &quot;Recent Walker circulation strengthening and Pacific cooling amplified by Atlantic warming&quot;, was published on Sunday in Nature Climate Change.\\n\\nWhile previous research supposed natural variability alone accounted for cooling in the eastern Pacific, this study highlights a previously overlooked climate feedback: as the Atlantic warms, it alters the winds over the Pacific, depressing the ocean temperature there. As coauthor Shayne McGregor of the University of New South Wales explains, &quot;the main cause of the Pacific wind, temperature, and sea level trends over the past 20 years lies in the Atlantic Ocean We saw that the rapid Atlantic surface warming observed since the early 1990s, induced partly by greenhouse gases, has generated unusually low sea level pressure over the tropical Atlantic. This, in turn, produces an upward motion of the overlying air parcels. These parcels move westward aloft and then sink again in the eastern equatorial Pacific, where their sinking creates a high pressure system. The resulting Atlantic–Pacific pressure difference strengthens the Pacific trade winds.&quot;\\n\\nCoauthor Malte Stuecker of the University of Hawaii Meteorology Department reports that &quot;Our study documents that some of the largest tropical and subtropical climate trends of the past 20 years are all linked: Strengthening of the Pacific trade winds, acceleration of sea level rise [three times faster than the global average] in the western Pacific, eastern Pacific surface cooling, the global warming hiatus, and even the massive droughts in California&quot;. His colleague cauthor Fei-Fei Jin adds, &quot;We are just starting to grasp the scope of the impacts of this global atmospheric reorganization and of the out-of phase temperature trends in the Atlantic and Pacific regions&quot;. Work earlier this year by coauthor Matthew England, University of New South Wales, showed the stronger winds have churned up the waters of the Western Pacific Ocean, so more heat flows from the winds into the water. This appears to explain why global surface temperatures have recently risen more slowly.\\n\\nCoauthor Axel Timmermann of the University of Hawaii notes a further amplifying effect: &quot;Stronger trade winds in the equatorial Pacific also increase the upwelling of cold waters to the surface. The resulting near-surface cooling in the eastern Pacific amplifies the Atlantic–Pacific pressure seesaw, thus further intensifying the trade winds. It turns out that the current generation of climate models underestimates the extent of the Atlantic–Pacific coupling, which means that they cannot properly capture the observed eastern Pacific cooling, which has contributed significantly to the leveling off, or the hiatus, in global warming.&quot; As Professor England said, &quot;It will be difficult to predict when the Pacific cooling trend and its contribution to the global hiatus in surface temperatures will come to an end. However, a large El Niño event is one candidate that has the potential to drive the system back to a more synchronized Atlantic/Pacific warming situation.&quot;', 'c2', 'Wikinews', 'https://en.wikinews.org/wiki/Australian%E2%80%93US_team_of_scientists_finds_Atlantic_warming_causes_Pacific_climate_trends', 1),
(29, 'en', 'International team of scientists reports on Antarctic lead pollution', 'Researchers from Australia, Denmark, Germany, Norway, United Kingdom, and the United States conducted lead concentration measurements of sixteen ice core samples, and found that industrial air pollution has persisted Antarctica since its arrival there in 1889 and remains significant in the current century. Their study was published in Scientific Reports on July 28, and covered in Nevada&#39;s Review journal this Saturday.\\n\\nLead was chosen to trace the industrial pollution of atmosphere because of its low natural concentrations in ecosystems, as well as unique &#39;fingerprints&#39; of different sources. Each lead ore deposit has its own distinct mixture of lead isotopes. Analysis of such characteristic isotopic signatures traced Broken Hill, Australia as the pioneering source of lead pollution in Antarctica, and even today its contribution remains significant. Coauthor Paul Vallelonga detailed, &quot;Lead is a toxic heavy metal with strong potential to harm ecosystems. While concentrations measured in Antarctic ice cores are very low, the records show that atmospheric concentrations and deposition rates increased approximately six-fold in the late 1880s, coincident with the start of mining at Broken Hill in southern Australia and smelting at nearby Port Pirie&quot;. Lead author Joe McConnell noted, in Review journal, &quot;A single industrial complex was enough to contaminate the entire continent of Antarctica thousands of kilometers away. We&#39;re still polluting Antarctica today&quot;.\\n\\nMcConnell said in getting the cores he traveled to Antarctica &quot;four or five&quot; times. Each of the drilled samples is about 4 inches (10 cm) across and 100–500 feet (30–150 m) long. They were cut for storage in boxes, six three-foot sections per box weighing over 100 pounds (450 kg). A single ice core can be used by researchers in many experiments during the next several years.\\n\\nConcentrations of lead on the Antarctic continent have declined after the 1990s, but remain around three times higher than before industrialization, despite banning of leaded petrol and similar emissions regulations. As McConnell said, &quot;Our measurements indicate that approximately 660 tonnes [1.5 million pounds] of industrial lead have been deposited on the snow-covered surface of Antarctic during the past 130 years. While recent contamination levels are lower, clearly detectable industrial contamination of the Antarctic continent persists today, so we still have a ways to go.&quot;\\n\\nSupport for the study came from, amongst others, the U.S. National Science Foundation Division of Polar Programs, WAIS Divide Science Coordination Office, Ice Drilling and Design and Operations, the National Ice Core Laboratory, Raytheon Polar Services, and the 109th New York Air National Guard.', 'c1', 'Wikinews', 'https://en.wikinews.org/wiki/International_team_of_scientists_reports_on_Antarctic_lead_pollution', 1),
(30, 'en', 'Scientists analyse effects of global warming, atmospheric ozone on crops', 'A research team from the Massachusetts Institute of Technology and Colorado State University of the US and the University of Sheffield of the UK has analysed effects of global warming and ozone pollution over 2000–2050 on the worldwide production of wheat, rice, maize and soybean. The study was published in journal Nature Climate Change yesterday.\\n\\nThe scientists found reduction of crop yields by 2050 exceeded 10% of 2000 levels, substantially decreasing food security, in all cases examined. Several scenarios were considered because of uncertainty of future levels of ozone pollution. They estimated by 2050, increasing population and changing diet would increase world food needs by 50 percent. As coauthor Colette Heald told The Huffington Post, &quot;The climate projections are quite consistent, the future of ozone pollution is very different. leading to either offsetting or reinforcing effects [of climate change] on crops&quot;. By 2050, undernourishment would increase by either 49 percent or by 27 percent, depending on the scenario.\\n\\nThe study focuses on ozone–temperature covariation: ground-level ozone increases with temperatures. Heald said although temperature and ozone are separately known to impact crop yields, &quot;nobody has looked at these together&quot;. Depending on region and crops, the yields may be primarily sensitive to ozone —in the case of wheat— or heat —in the case of maize— alone, providing a local estimation of relative benefits of climate change adaptation versus ozone regulation.\\n\\nThe U.S. Department of Agriculture notes, &quot;Ground-level ozone causes more damage to plants than all other air pollutants combined&quot;, highlighting the importance of air quality for agriculture. Results of NCLAN studies, published in a paper by AS Heagle in 1989, show dicot species, such as soybean, cotton, and peanut, lose more yield from ozone than do monocot species such as sorghum, field corn, and winter wheat. The researchers found that ozone pollution caused 46 percent of previously heat-attributed damage to soybean crops.\\n\\nThe model does not include the effect of rising carbon dioxide concentration, which has complex and potentially offsetting impacts on global food supply. The U.S. Environmental Protection Agency says some crops may have higher yields with increased levels of carbon dioxide. However, global warming also increases probability of extreme crops-damaging weather events such as floods, droughts, and extreme temperatures. Climate change affects distribution of weeds, pests, and diseases. Heald noted the findings show pollution reduction is also important. &quot;An air-quality cleanup would improve crop yields. Ozone is something that we understand the causes of, and the steps that need to be taken to improve air quality.&quot;\\n\\nAs Heald told The Huffington Post, US surface ozone has dropped partly due to the Clean Air Act. &quot;Despite an increase in vehicle miles driven and energy consumption, surface ozone has declined by 25 percent on average across the U.S. from 1980 to 2012. However, the future of ozone air quality in the U.S. and around the world will depend on local emissions, the use of pollution control technology, regulations, and air quality policy.&quot;', 'c2', 'Wikinews', 'https://en.wikinews.org/wiki/Scientists_analyse_effects_of_global_warming,_atmospheric_ozone_on_crops', 1),
(31, 'en', 'Annual Japanese whaling campaign kills 30 minke whales', 'Japanese officials announced on Friday the country&#39;s annual whaling expedition to the north-west Pacific Ocean has captured and killed 30 minke whales. This comes after the International Court of Justice (ICJ) banned Japan from continuing its Antarctic scientific whale hunting programmes in March this year.\\n\\nThe Australian and New Zealand governments had brought the Antarctic whaling issue to the attention of the ICJ earlier this year. The JARPA II whaling programme had been officially classified as scientific research, however when the programme had been investigated at the ICJ, the court decided there wasn&#39;t enough science involved to justify it. They ordered Japan to stop whaling in the Antarctic, but this ruling only mentioned JARPA II — not the annual Pacific whaling hunts.\\n\\nThis has allowed whaling to continue in the north-west Pacific Ocean. Even after the court had ordered the termination of JARPA II, sixty per cent of Japanese citizens still believed scientific whaling should go on, as measured in a poll conducted by the Asahi Shimbun newspaper in April 2014.\\n\\nThis sentiment was echoed by Japanese Prime Minister Shinzo Abe, who recently stated he intended &quot;the resumption of commercial whaling by conducting whaling research in order to obtain scientific data indispensable for the management of whale resources.&quot;\\n\\nThe International Fund for Animal Welfare says up to 200 minke whales can be hunted during the North Pacific expedition. Japan has maintained scientific whaling programmes intend to understand the global whale populations, with the research programmes aiming to prove the global whale population is sustainable, allowing commercial whale hunting to resume.\\n\\nJapan&#39;s Ministry of Agriculture, Forestry and Fisheries had also planned to petition the International Whaling Commission next year with a new Antarctic whaling proposal.', 'b2', 'Wikinews', 'https://en.wikinews.org/wiki/Annual_Japanese_whaling_campaign_kills_30_minke_whales', 1),
(32, 'en', 'Major haemorrhage linked to alcoholism announced as cause of Charles Kennedy&#39;s death', 'Charles Kennedy, former UK Liberal Democrats leader, died of a major haemorrhage linked to his alcohol addiction, his family announced in a statement yesterday. Kennedy, a Scottish former Member of Parliament, died unexpectedly on Monday at the age of 55.\\n\\nHis family said in the statement, &quot;Charles&#39;s death was caused by a major haemorrhage and the report makes clear this was a consequence of his battle with alcoholism. We are grateful to the many friends and also medical experts who sought to help down the years but ultimately this was an illness Charles could not conquer despite all the efforts he and others made.&quot;\\n\\nThey also spoke of the tributes that had been paid to the politician saying &quot;It has become all too apparent to us how much Charles meant to so many people and how many lives he touched. We were grateful that his young son Donald was able to attend the Commons session where so many MPs spoke so warmly about his father. The words and images of that day, and of so many other tributes, will be there for us to look back on with pride in Charles, and Donald will always know what a special father he had.&quot;\\n\\nOn Wednesday, Members of Parliament from various political parties paid tribute to Kennedy. His ex-wife Sarah and 10-year-old son were in attendance to hear the tributes.\\n\\nDespite a successful tenure as leader of the Liberal Democrats, Kennedy had to resign in 2006 as party leader due to his alcoholism. He was a Member of Parliament for 32 years until he lost his seat in last month&#39;s General Election.', 'b2', 'Wikinews', 'https://en.wikinews.org/wiki/Major_haemorrhage_linked_to_alcoholism_announced_as_cause_of_Charles_Kennedy%27s_death', 1),
(34, 'en', 'A Reflection', 'Some people are born with a vital and responsive energy. It not only enables them to keep abreast of the times; it qualifies them to furnish in their own personality a good bit of the motive power to the mad pace. They are fortunate beings. They do not need to apprehend the significance of things. They do not grow weary nor miss step, nor do they fall out of rank and sink by the wayside to be left contemplating the moving procession.\\nAh! that moving procession that has left me by the road-side! Its fantastic colors are more brilliant and beautiful than the sun on the undulating waters. What matter if souls and bodies are failing beneath the feet of the ever-pressing multitude! It moves with the majestic rhythm of the spheres. Its discordant clashes sweep upward in one harmonious tone that blends with the music of other worlds—to complete God&#39;s orchestra.\\nIt is greater than the stars—that moving procession of human energy; greater than the palpitating earth and the things growing thereon. Oh! I could weep at being left by the wayside; left with the grass and the clouds and a few dumb animals. True, I feel at home in the society of these symbols of life&#39;s immutability. In the procession I should feel the crushing feet, the clashing discords, the ruthless hands and stifling breath. I could not hear the rhythm of the march.\\nSalve! ye dumb hearts. Let us be still and wait by the roadside.', 'c1', 'Kate Chopin: Gutenberg Project', 'http://www.gutenberg.org/ebooks/160', 1);
INSERT INTO `Texts` (`id`, `language`, `title`, `text`, `level`, `source`, `url`, `public`) VALUES
(35, 'en', 'Edgar Allan Poe: Shadow - A parable', 'Ye who read are still among the living; but I who write shall have long since gone my way into the region of shadows. For indeed strange things shall happen, and secret things be known, and many centuries shall pass away, ere these memorials be seen of men. And, when seen, there will be some to disbelieve, and some to doubt, and yet a few who will find much to ponder upon in the characters here graven with a stylus of iron.\\nThe year had been a year of terror, and of feelings more intense than terror for which there is no name upon the earth. For many prodigies and signs had taken place, and far and wide, over sea and land, the black wings of the Pestilence were spread abroad. To those, nevertheless, cunning in the stars, it was not unknown that the heavens wore an aspect of ill; and to me, the Greek Oinos, among others, it was evident that now had arrived the alternation of that seven hundred and ninety-fourth year when, at the entrance of Aries, the planet Jupiter is conjoined with the red ring of the terrible Saturnus. The peculiar spirit of the skies, if I mistake not greatly, made itself manifest, not only in the physical orb of the earth, but in the souls, imaginations, and meditations of mankind.\\nOver some flasks of the red Chian wine, within the walls of a noble hall, in a dim city called Ptolemais, we sat, at night, a company of seven. And to our chamber there was no entrance save by a lofty door of brass: and the door was fashioned by the artisan Corinnos, and, being of rare workmanship, was fastened from within. Black draperies, likewise, in the gloomy room, shut out from our view the moon, the lurid stars, and the peopleless streets—but the boding and the memory of Evil they would not be so excluded. There were things around us and about of which I can render no distinct account—things material and spiritual—heaviness in the atmosphere—a sense of suffocation—anxiety—and, above all, that terrible state of existence which the nervous experience when the senses are keenly living and awake, and meanwhile the powers of thought lie dormant. A dead weight hung upon us. It hung upon our limbs—upon the household furniture—upon the goblets from which we drank; and all things were depressed, and borne down thereby—all things save only the flames of the seven lamps which illumined our revel. Uprearing themselves in tall slender lines of light, they thus remained burning all pallid and motionless; and in the mirror which their lustre formed upon the round table of ebony at which we sat, each of us there assembled beheld the pallor of his own countenance, and the unquiet glare in the downcast eyes of his companions. Yet we laughed and were merry in our proper way—which was hysterical; and sang the songs of Anacreon—which are madness; and drank deeply—although the purple wine reminded us of blood. For there was yet another tenant of our chamber in the person of young Zoilus. Dead, and at full length he lay, enshrouded; the genius and the demon of the scene. Alas! he bore no portion in our mirth, save that his countenance, distorted with the plague, and his eyes, in which Death had but half extinguished the fire of the pestilence, seemed to take such interest in our merriment as the dead may haply take in the merriment of those who are to die. But although I, Oinos, felt that the eyes of the departed were upon me, still I forced myself not to perceive the bitterness of their expression, and gazing down steadily into the depths of the ebony mirror, sang with a loud and sonorous voice the songs of the son of Teios. But gradually my songs they ceased, and their echoes, rolling afar off among the sable draperies of the chamber, became weak, and undistinguishable, and so faded away. And lo! from among those sable draperies where the sounds of the song departed, there came forth a dark and undefined shadow—a shadow such as the moon, when low in heaven, might fashion from the figure of a man: but it was the shadow neither of man nor of God, nor of any familiar thing. And quivering awhile among the draperies of the room, it at length rested in full view upon the surface of the door of brass. But the shadow was vague, and formless, and indefinite, and was the shadow neither of man nor of God—neither God of Greece, nor God of Chaldaea, nor any Egyptian God. And the shadow rested upon the brazen doorway, and under the arch of the entablature of the door, and moved not, nor spoke any word, but there became stationary and remained. And the door whereupon the shadow rested was, if I remember aright, over against the feet of the young Zoilus enshrouded. But we, the seven there assembled, having seen the shadow as it came out from among the draperies, dared not steadily behold it, but cast down our eyes, and gazed continually into the depths of the mirror of ebony. And at length I, Oinos, speaking some low words, demanded of the shadow its dwelling and its appellation. And the shadow answered, &quot;I am SHADOW, and my dwelling is near to the Catacombs of Ptolemais, and hard by those dim plains of Helusion which border upon the foul Charonian canal.&quot; And then did we, the seven, start from our seats in horror, and stand trembling, and shuddering, and aghast, for the tones in the voice of the shadow were not the tones of any one being, but of a multitude of beings, and, varying in their cadences from syllable to syllable fell duskly upon our ears in the well-remembered and familiar accents of many thousand departed friends.', 'c2', 'Project Gutenberg', 'http://www.gutenberg.org/ebooks/2150', 1),
(36, 'en', 'Jennie Hall: The baby', 'King Halfdan lived in Norway long ago. One morning his queen said to him:\\n\\n&quot;I had a strange dream last night. I thought that I stood in the grass before my bower. I pulled a thorn from my dress. As I held it in my fingers, it grew into a tall tree. The trunk was thick and red as blood, but the lower limbs were fair and green, and the highest ones were white. I thought that the branches of this great tree spread so far that they covered all Norway and even more.&quot;\\n\\n&quot;A strange dream,&quot; said King Halfdan. &quot;Dreams are the messengers of the gods. I wonder what they would tell us,&quot; and he stroked his beard in thought.\\n\\nSome time after that a serving-woman came into the feast hall where King Halfdan was. She carried a little white bundle in her arms.[16]\\n\\n&quot;My lord,&quot; she said, &quot;a little son is just born to you.&quot;\\n\\n&quot;Ha!&quot; cried the king, and he jumped up from the high seat and hastened forward until he stood before the woman.\\n\\n&quot;Show him to me!&quot; he shouted, and there was joy in his voice.\\n\\nThe serving-woman put down her bundle on the ground and turned back the cloth. There was a little naked baby. The king looked at it carefully.\\n\\n&quot;It is a goodly youngster,&quot; he said, and smiled. &quot;Bring Ivar and Thorstein.&quot;\\n\\nThey were captains of the king&#39;s soldiers. Soon they came.\\n\\n&quot;Stand as witnesses,&quot; Halfdan said.\\n\\nThen he lifted the baby in his arms, while the old serving-woman brought a silver bowl of water. The king dipped his hand into it and sprinkled the baby, saying:\\n\\n&quot;I own this baby for my son. He shall be called Harald. My naming gift to him is ten pounds of gold.&quot;\\n\\nThen the woman carried the baby back to the queen&#39;s room.\\n\\n&quot;I own this baby for my son. He shall be called Harald&quot;\\n\\n&quot;My lord owns him for his son,&quot; she said. &quot;And no wonder! He is perfect in every limb.&quot;\\n\\nThe queen looked at him and smiled and remembered her dream and thought:\\n\\n&quot;That great tree! Can it be this little baby of mine?&quot;', 'b1', 'Project Gutenberg', 'http://www.gutenberg.org/ebooks/24811', 1),
(37, 'en', 'Brutality', 'Two ladies in a car disputed concerning the window, and at last called the conductor as referee.\\n\\n&quot;If this window is open,&quot; one declared, &quot;I shall catch cold, and will probably die.&quot;\\n\\n&quot;If the window is shut,&quot; the other announced, &quot;I shall certainly suffocate.&quot; The two glared at each other.\\n\\nThe conductor was at a loss, but he welcomed the words of a man with a red nose who sat near. These were:\\n\\n&quot;First, open the window, conductor. That will kill one. Next, shut it. That will kill the other. Then we can have peace.&quot;', 'a2', 'Project Gutenberg', 'https://www.gutenberg.org/ebooks/21084', 1),
(38, 'en', 'Burglary', 'A young couple that had received many valuable wedding presents established their home in a suburb. One[Pg 51] morning they received in the mail two tickets for a popular show in the city, with a single line:\\n\\n&quot;Guess who sent them.&quot;\\n\\nThe pair had much amusement in trying to identify the donor, but failed in the effort. They duly attended the theatre, and had a delightful time. On their return home late at night, still trying to guess the identity of the unknown host, they found the house stripped of every article of value. And on the bare table in the dining-room was a piece of paper on which was written in the same hand as the enclosure with the tickets:\\n\\n&quot;Now you know!&quot;', 'a2', 'Source of the text', 'https://www.gutenberg.org/ebooks/21084', 1),
(39, 'en', 'The Princess on the Pea', 'There was once a prince who wanted to marry a princess; but she was to be a real princess. So he travelled about, all through the world, to find a real one, but everywhere there was something in the way. There were princesses enough, but whether they were real princesses he could not quite make out: there was always something that did not seem quite right. So he came home again, and was quite sad: for he wished so much to have a real princess. One evening a terrible storm came on. It lightened and thundered, the rain streamed down; it was quite fearful! Then there was a knocking at the town gate, and the old king went out to open it.\\n\\nIt was a princess who stood outside the gate. But, mercy! how she looked, from the rain and the rough weather! The water ran down from her hair and her clothes; it ran in at the points of her shoes, and out at the heels; and yet she declared that she was a real princess.\\n\\n&quot;Yes, we will soon find that out,&quot; thought the old queen. But she said nothing, only went into the bedchamber, took all the bedding off, and put a pea on the flooring of the bedstead; then she took twenty mattresses and laid them upon the pea, and then twenty eider-down beds upon the mattresses. On this the princess had to lie all night. In the morning she was asked how she had slept.\\n\\n&quot;Oh, miserably!&quot; said the princess. &quot;I scarcely closed my eyes all night long. Goodness knows what was in my bed. I lay upon something hard, so that I am black and blue all over. It is quite dreadful!&quot;\\n\\nNow they saw that she was a real princess, for through the twenty mattresses and the twenty eider-down beds she had felt the pea. No one but a real princess could be so delicate.\\n\\nSo the prince took her for his wife, for now he knew that he had a true princess; and the pea was put in the museum, and it is there now, unless somebody has carried it off.\\n\\nLook you, this is a true story.', 'a2', 'Project Gutenberg', 'https://www.gutenberg.org/ebooks/14916', 1),
(40, 'en', 'The Sprightly Tailor', 'A sprightly tailor was employed by the great Macdonald, in his castle at Saddell, in order to make the laird a pair of trews, used in olden time. And trews being the vest and breeches united in one piece, and ornamented with fringes, were very comfortable, and suitable to be worn in walking or dancing. And Macdonald had said to the tailor, that if he would make the trews by night in the church, he would get a handsome reward. For it was thought that the old ruined church was haunted, and that fearsome things were to be seen there at night.\\n\\nThe tailor was well aware of this; but he was a sprightly man, and when the laird dared him to make the trews by night in the church, the tailor was not to be daunted, but took it in hand to gain the prize. So, when night came, away he went up the glen, about half a mile distance from the castle, till he came to the old church. Then he chose him a nice gravestone for a seat and he lighted his candle, and put on his thimble, and set to work at the trews; plying his needle nimbly, and thinking about the hire that the laird would have to give him.\\n\\nFor some time he got on pretty well, until he felt the floor all of a tremble under his feet; and looking about him, but keeping his fingers at work, he saw the appearance of a great human head rising up through the stone pavement of the church. And when the head had risen above the surface, there came from it a great, great voice. And the voice said: &quot;Do you see this great head of mine?&quot;\\n\\n&quot;I see that, but I&#39;ll sew this!&quot; replied the sprightly tailor; and he stitched away at the trews.\\n\\nThen the head rose higher up through the pavement, until its neck appeared. And when its neck was shown, the thundering voice came again and said: &quot;Do you see this great neck of mine?&quot;\\n\\n&quot;I see that, but I&#39;ll sew this!&quot; said the sprightly tailor; and he stitched away at his trews.\\n\\nThen the head and neck rose higher still, until the great shoulders and chest were shown above the ground. And again the mighty voice thundered: &quot;Do you see this great chest of mine?&quot;\\n\\nAnd again the sprightly tailor replied: &quot;I see that, but I&#39;ll sew this!&quot; and stitched away at his trews.\\n\\nAnd still it kept rising through the pavement, until it shook a great pair of arms in the tailor&#39;s face, and said: &quot;Do you see these great arms of mine?&quot;\\n\\n&quot;I see those, but I&#39;ll sew this!&quot; answered the tailor; and he stitched hard at his trews, for he knew that he had no time to lose.\\n\\nThe sprightly tailor was taking the long stitches, when he saw it gradually rising and rising through the floor, until it lifted out a great leg, and stamping with it upon the pavement, said in a roaring voice: &quot;Do you see this great leg of mine?&quot;\\n\\n&quot;Aye, aye: I see that, but I&#39;ll sew this!&quot; cried the tailor; and his fingers flew with the needle, and he took such long stitches, that he was just come to the end of the trews, when it was taking up its other leg. But before it could pull it out of the pavement, the sprightly tailor had finished his task; and, blowing out his candle, and springing from off his gravestone, he buckled up, and ran out of the church with the trews under his arm. Then the fearsome thing gave a loud roar, and stamped with both his feet upon the pavement, and out of the church he went after the sprightly tailor.\\n\\nDown the glen they ran, faster than the stream when the flood rides it; but the tailor had got the start and a nimble pair of legs, and he did not choose to lose the laird&#39;s reward. And though the thing roared to him to stop, yet the sprightly tailor was not the man to be beholden to a monster. So he held his trews tight, and let no darkness grow under his feet, until he had reached Saddell Castle. He had no sooner got inside the gate, and shut it, than the apparition came up to it; and, enraged at losing his prize, struck the wall above the gate, and left there the mark of his five great fingers. Ye may see them plainly to this day, if ye&#39;ll only peer close enough.\\n\\nBut the sprightly tailor gained his reward: for Macdonald paid him handsomely for the trews, and never discovered that a few of the stitches were somewhat long.', 'b1', 'Project Gutengerg', 'https://www.gutenberg.org/ebooks/7885', 1),
(41, 'en', 'England defeats Germany 1-0 in FIFA Women&#39;s World Cup 2015', 'On Saturday, England defeated two-time world champion Germany by 1–0 in the third place playoff in the 2015 FIFA Women&#39;s World Cup, which was held in Commonwealth Stadium in Edmonton, Alberta in Canada, and won the bronze medal.\\n\\nGermany had a greater possession of the ball against England in the match. Three English players were yellow carded in the match with 30 fouls committed. Nobody scored in either half of the match. Katie Chapman, Karen Bardsley, and Laura Bassett of the English team were booked in the 77th, 83rd, and 90+2nd minutes respectively.\\n\\nAs the scores were 0–0 at the end of 90 minutes of game play, the match proceeded in extra time. In the 108th minute, England won a penalty kick. Fara Williams netted the penalty which gave a lead to The three lionesses. The German team tried even in the dying moments but English goalkeeper Karen Bardsley denied the Germans to claim the bronze medal.', 'a1', 'Wikinews', 'https://en.wikinews.org/wiki/England_defeats_Germany_1-0_in_FIFA_Women%27s_World_Cup_2015_third_place_playoff', 1);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `Tests`
--
ALTER TABLE `Tests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `TestTypes`
--
ALTER TABLE `TestTypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `Texts`
--
ALTER TABLE `Texts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
