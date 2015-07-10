#text2test
The application is intended for educational organisations, as a supplementary tool for language courses, which can be used for individual learning, homeworks, tests, etc. The text2test is programmed in PHP and JavaScript/jQuery, so it should be possible to install the app on any server. It is [open source](https://github.com/AntoninSlejska/text2test/blob/master/LICENCE), so you can use free of charge and without any restrictions.

##Installation
1. Make sure you have Apache, PHP, MySQL, gettext and Composer installed
1. Clone the repo to a folder on your server
1. Import the file "install/text2test.sql" to your MySQL
1. Edit _config.php and rename it to config.php
1. Run ```composer install``` on application's root folder to install dependences
