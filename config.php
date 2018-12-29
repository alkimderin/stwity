<?php
# slcQ
# mail@selcuk.at
# selcuk.at

error_reporting(0);

# Lisans Kodu
define('lisansKodu', '2a82.8ee4.edb8.5a10');

# PDO & Fonk
include "config/function.selco.php";
include "config/db.selco.php";

# Database ayarlari
define("MYSQL_HOST", "mysql.hostinger.web.tr");
define("MYSQL_USER", "u100639900_uye");
define("MYSQL_PASS", "cenkcenkcenk");
define("MYSQL_DB", "u100639900_uye");
define("CHARSET", "UTF8");

# # APP Ayarlari
$appAyar = DB::getRow("SELECT * FROM uygulamalar WHERE aktif = '1'");
define('appID', $appAyar->id);
define('CONSUMER_KEY', $appAyar->consumerKey);
define('CONSUMER_SECRET', $appAyar->consumerScreet);
define('OAUTH_CALLBACK', 'http://'.$_SERVER['HTTP_HOST'].'/callback');

/* 
Callback URL http://site.com/callback olarak ayarlanmistir.
Uygulamaya bu sekil girilmelidir.
*/

# XML Üyeler Dosya Adi
define('uyelerXML', 'users.xml');

# Tweetler Dosya Adi
define('tweetTXT', 'tweet.txt');
?>