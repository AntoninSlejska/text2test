<?php
require_once '../vendor/autoload.php';
require_once '../config.php';

use Dibi\Dibi;
$db = new DibiConnection($database_configuration);

if (isset($_COOKIE['language'])) {
  $currentLanguage = $_COOKIE['language'];
} else {
  $currentLanguage = $default_language;
}
$locale = $db->fetchSingle('SELECT locale FROM Languages WHERE code="'.$currentLanguage.'"');

putenv("LC_ALL=$locale");
setlocale(LC_ALL, $locale);
bindtextdomain($text_domain,$base_dir."/i18n");
textdomain($text_domain);

echo 'var currentLanguageI18n = "' . $currentLanguage . '",';
echo 'showSolutionI18n = "' . _('Show the solution') . '",';
echo 'showOriginI18n = "' . _('Show the original text') . '",';
echo 'showTestI18n = "' . _('Show the test') . '",';
echo 'checkTestI18n = "' . _('Check the test') . '",';
echo 'textIsPerfectI18n = "' . _('The text is perfect now.') . '",';
echo 'textIsNotCorrectI18n = "' . _('The text is not quite correct yet.') . '",';
echo 'selectLanguageI18n = "' . _('Choose your language') . '",';
echo 'selectLevelI18n = "' . _('Choose your language level') . '",';
echo 'levelI18n = "' . _('Language level') . '",';
echo 'selectTextI18n = "' . _('Choose a text') . '",';
echo 'selectTestTypeI18n = "' . _('Choose a test type') . '",';
echo 'formTextI18n = "' . _('or insert a text here.') . '",';
echo 'formTitleInfoTextI18n = "' . _('Would you like to save the text to the database?') . '",';
echo 'formTitleInfoTestI18n = "' . _('Would you like to save the test to the database?') . '",';
echo 'titleI18n = "' . _('Title') . '",';
echo 'formSourceI18n = "' . _('Source of the text') . '",';
echo 'formLevelInfoI18n = "' . _('Select a language level') . '",';
echo 'formPublicI18n = "' . _('Make it publicly available') . '",';
echo 'saveI18n = "' . _('Save') . '",';
echo 'textSentOkI18n = "' . _('The text was successfully saved.') . '",';
echo 'textSentErI18n = "' . _('The text was not saved. The error message:') . '",';
echo 'testCreatedOkI18n = "' . _('The test was successfully created.') . '",';
echo 'testCreatedErI18n = "' . _('The test was not created. The error message:') . '",';
echo 'testSentOkI18n = "' . _('The test was successfully saved.') . '",';
echo 'testSentErI18n = "' . _('The test was not saved. The error message:') . '",';
echo 'incorrectFormI18n = "' . _('Check the highlighted fields and try to save the form again.') . '",';
echo 'sourceCodeOnGitHubI18n = "' . _('The code is on GitHub.') . '",';
// echo 'I18n = "' . _('') . '",';
echo 'i18n = "' . _('internationalisation') . '";';
?>
