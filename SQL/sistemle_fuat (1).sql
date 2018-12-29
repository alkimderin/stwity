-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 08 Nis 2014, 21:56:39
-- Sunucu sürümü: 5.5.36-cll
-- PHP Sürümü: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `sistemle_fuat`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE IF NOT EXISTS `ayarlar` (
  `title` varchar(5000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `header` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `footer` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `goldUyeKredi` int(11) NOT NULL DEFAULT '200',
  `goldUyeSureHafta` int(11) NOT NULL,
  `goldUyeUcret` int(11) NOT NULL,
  `paypalEmail` varchar(5000) NOT NULL,
  `paypalUyeAktif` int(1) NOT NULL DEFAULT '1',
  `gunlukKredi` int(11) NOT NULL,
  `otomatikTweet` int(1) NOT NULL DEFAULT '1',
  `tweetIcerik` varchar(500) NOT NULL,
  `otomatikTakip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`title`, `header`, `footer`, `goldUyeKredi`, `goldUyeSureHafta`, `goldUyeUcret`, `paypalEmail`, `paypalUyeAktif`, `gunlukKredi`, `otomatikTweet`, `tweetIcerik`, `otomatikTakip`) VALUES
('Twitter Sisteminiz', 'Twitter Sisteminiz', '© Twitter Sisteminiz 2014 ', 500, 3, 20, 'mehmetgurses@hotmail.com', 1, 75, 1, '200 Twitter takipci kazan ücretsiz !==> http://bit.ly/1coldWX #twittersisteminiz #sınavgeldiçattı #sınavgeldiçattı VPN', 'ftekk');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odemeler`
--

CREATE TABLE IF NOT EXISTS `odemeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tID` int(11) NOT NULL,
  `aciklama` varchar(5000) NOT NULL,
  `netTutar` int(11) NOT NULL,
  `tutar` int(11) NOT NULL,
  `uyePayPalMail` varchar(1000) NOT NULL,
  `tarih` varchar(100) NOT NULL,
  `gDurum` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE IF NOT EXISTS `uyeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appID` int(11) NOT NULL,
  `tID` varchar(100) NOT NULL,
  `tUserName` varchar(500) NOT NULL,
  `tProfileImage` varchar(750) NOT NULL,
  `tTakipciToplam` int(11) NOT NULL,
  `oauthToken` varchar(1000) NOT NULL,
  `oauthScreet` varchar(1000) NOT NULL,
  `gunlukKredi` int(11) NOT NULL DEFAULT '0',
  `uyelikTur` int(11) NOT NULL DEFAULT '0',
  `uyelikBitisTarih` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5443 ;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `appID`, `tID`, `tUserName`, `tProfileImage`, `tTakipciToplam`, `oauthToken`, `oauthScreet`, `gunlukKredi`, `uyelikTur`, `uyelikBitisTarih`) VALUES
(5240, 4, '626515731', 'daaaonyedi', 'http://pbs.twimg.com/profile_images/440540566947127296/n31DbEkR_normal.jpeg', 2167, '626515731-UjkGs5tgfSDVzlgXw2dJ5XoWvMZ0AlaVw2mUJN7J', 'SdjS5Pg90fLPCSVfQHoggfI43fniWnieph5S5zPjPXIwr', 69, 0, ''),
(5243, 4, '2402023790', 'dumandu23124942', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png', 49, '2402023790-QrSYFRt6yRwO1NMAAAfU6EmnLiR5Yf6FhmASea2', 'dBGnuFq0plpMs4ePIVu0aBeAZ7RnoHknRNtsGXKGzzqlo', 61, 0, ''),
(5244, 4, '2365608719', 'enes_aggul', 'http://pbs.twimg.com/profile_images/447013193618313217/iBR7q-0P_normal.jpeg', 1564, '2365608719-YyyIqd5Fz2gjjGtwd114feyP65IQAX4anYM89Of', 'FnDMQWOOnEy2ct2hIzRZgi4uebyG8YS7e28eBIVaIaZex', 3, 0, ''),
(5245, 4, '2361369984', '7_poyrazz', 'http://pbs.twimg.com/profile_images/438357192802959360/uZqqXpAE_normal.jpeg', 1254, '2361369984-B27KiUZ8WOia0QLglwqnSr53nT1polRRoyRvAnC', 'lP9ChBK3sRpTyLTisbKj3OFnLuqSU3lJjcn1EsT6xT2ag', 0, 0, ''),
(5255, 4, '380510310', 'Tugbeck', 'http://pbs.twimg.com/profile_images/442633196879220737/u9Xd7Q6V_normal.jpeg', 1232, '380510310-7yYrL0vax1diEl7P0yQBC6Y6LapzA2NJ4LIpsc61', 'ioHdtwiC7Sgi0J4h8KuhiLRoHHCSPnwc2q1YMARgUoUdD', 63, 0, ''),
(5264, 4, '2403071443', 'EnsarYanik', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png', 0, '2403071443-5RKMcLjXfP0pwmZqbxw3J9nAPspIniM09VJNEss', '347zjdQtBFOi5wNVgpJJkjtI2KDjo6oOwvKyPkQHgFchd', 75, 0, ''),
(5271, 4, '2402943818', 'Yiit12699235', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png', 5, '2402943818-s8jeFhOYcCEiSJMF9oJG1phe88D4Me8VtvT9y8H', 'ZTUhHnnr9x7KH1ieuSINS9zJkXdnWmcoBYb6AuyYfmtxL', 65, 0, ''),
(5275, 4, '2353804225', 'Deccal3gen', 'http://pbs.twimg.com/profile_images/442340472648773632/FXodsrh5_normal.jpeg', 95, '2353804225-CaJTRKJL6C6ImutvjP2XCcKLhpeRbLWr7S7onPs', 'gzvxBzdaud8VQEFDo7X3x7saVeMsz50txvUnU60YpPsVn', 18, 0, ''),
(5298, 4, '2415641652', 'hukukcuahmet', 'http://pbs.twimg.com/profile_images/449478733359886336/E-Eb7g-U_normal.jpeg', 1, '2415641652-WDd492cOrjF2nZ85hIlgWKGHZr8rGsY99zdX7Ol', 'jr9067r23jkMB4fgWS8ghYhAANO0VGeJcijYTpYz16c6v', 49, 0, ''),
(5300, 4, '1382410884', 'maliynss', 'http://pbs.twimg.com/profile_images/449277142849695744/2EgP5xUs_normal.jpeg', 52, '1382410884-ATDAYvFPzjxRTjI2wG3GIGcAsAPC3ZZBCJWuLeQ', 'lpSQD7VavUvBy7FjvXrPpB12QqHvrHt3f706BclE1M4OH', 36, 0, ''),
(5303, 4, '2238471657', 'mehmetcantopal3', 'http://pbs.twimg.com/profile_images/446675844715393024/wv875Xw5_normal.jpeg', 59, '2238471657-YJ7pqvNhmTS2WaFqJC8Bih3OPEhjBLutI5qf6Zs', 'eCfCvhOX7MEQQDV9eXQ7rvMOCbETLVI9vsycbBDAgzs7H', 16, 0, ''),
(5330, 4, '629499511', 'homosapienn', 'http://pbs.twimg.com/profile_images/440953395684585472/SLRm9har_normal.jpeg', 489, '629499511-NSOGlSZRly9wVw1KcYSsAgbCGYG2sXSbtEggRoAt', 'JvLd6kZWRG1aS2EWED56zEaqWCEAgXpiW5luSjNDKM0sA', 0, 0, ''),
(5331, 4, '488376537', 'Mr_Nobodyies', 'http://pbs.twimg.com/profile_images/3525640982/17c002a66c5dd5d50015c341ea3590b9_normal.jpeg', 590, '488376537-aSJJCra2qZLxeEClnuhWtMk8YDfdAI6ZjJQ42P8b', 'SnUTyDjAMCTTlNy397iPdZZ1n52dO20b0rxDcpMlvmXhh', 36, 0, ''),
(5342, 4, '2174146759', 'umtoztrkmn', 'http://pbs.twimg.com/profile_images/450277998118195200/8N48fpGq_normal.jpeg', 133, '2174146759-rlpzhkrisASyTXG6MPO57gaddzlJ6MHkd2o2QgP', 'tYlyukrxBqJtWeEpcjeU2gbwx6vMij5SaB772TFbPIBsb', 2, 0, ''),
(5352, 4, '2374872846', 'bessuzbuldum', 'http://pbs.twimg.com/profile_images/449423162841636864/JvyK7n-V_normal.jpeg', 1002, '2374872846-HA81ubIzmkv1dH0PYXtW9pouHS2kciHeyZjEbC4', 'TKZqte3SYiCqqfetZcQUyZ60A0ivypz984HUt9HUU6dRj', 0, 0, ''),
(5355, 4, '2420481997', 'BlackStarAvrilm', 'http://pbs.twimg.com/profile_images/450612392804618240/ExpBu5Bd_normal.jpeg', 155, '2420481997-MU3thwtWgTd7B31UDtaQpwG1GKILyFcTvbIz8KJ', 'n4Jk5G6ObwRBJqiefmofixBidBUoCq4Cx3X9T2jFUaYoO', 0, 0, ''),
(5358, 4, '1917372134', 'berkayakbas1', 'http://pbs.twimg.com/profile_images/424954164699873280/5eBkyNXo_normal.jpeg', 51, '1917372134-1Rmr0TPYLGzrEzo94tFNZuBCEvvyPwqXdQXoGdC', 'sSwYwtkz1VXDMIforG1rPVNWcPFa8ykp7s3B80QHh4Wci', 53, 0, ''),
(5359, 4, '468564234', 'ceMMari', 'http://pbs.twimg.com/profile_images/447330558490603520/woAZJ7Jn_normal.jpeg', 52, '468564234-n2LbuwvCPLPC4MLY4h9uLrCzcvAw6ojwVL9XCimO', 'Z1z62IJpNqDCX4Q7gKQR88lE45OyG2jgx20d1viZNGUIc', 44, 0, ''),
(5361, 4, '2356134517', 'bugrahicsonmez1', 'http://pbs.twimg.com/profile_images/439922984862482433/cRGHTbSs_normal.jpeg', 49, '2356134517-jqDd5tvx0oYqXJYQ6PHIOMPjCDWyAFidsn0vhZg', 'rNu9yAIEtWBzIMTwWvJ2ZjBkNB7Eq9B7s0NWHsOvk3Rsq', 50, 0, ''),
(5362, 4, '171026435', 'iekici', 'http://pbs.twimg.com/profile_images/3157861095/716be051da9a8c690e31c1432f0f59b3_normal.jpeg', 60, '171026435-vOoJz1VUFoOaAMcKrGpAh30rHRtnG2CdcF8O2cuU', 'xF2avUhdvKQLtsvUhkQx56nul5pGdwNpKvsXq0HZZDAh2', 75, 0, ''),
(5364, 4, '1367199217', 'Teknik_Traktor', 'http://pbs.twimg.com/profile_images/3551185155/f3b93638f2026fc14ea750671f967542_normal.jpeg', 54, '1367199217-hQKJ29QP8XAHX0Z1jxCTuGreoPft6191H0Lf2DA', 'wEa4mHhGDT0FpGj2c7dtoXCLsTmONS2fLit4S3h6qNqr7', 47, 0, ''),
(5366, 4, '618070291', 'blgn_beyza', 'http://pbs.twimg.com/profile_images/378800000613235530/d33291ac1c1552ceeb237763afe50ddc_normal.jpeg', 45, '618070291-KbwtlrIl5g2qvA2NTlOu2KU8SwagSrjgjluI92YG', 'Brq8h253xHr9zl3a1Q4HfH66bYqxfxu7IseswIDHBxNVg', 46, 0, ''),
(5370, 4, '1374582992', 'NetBurc', 'http://pbs.twimg.com/profile_images/3564399694/6b115efc4debae8bfc112042f2c02169_normal.jpeg', 32, '1374582992-D48OaMj80zjxOy9P9CtERSo3tUrXs1NflGOztHs', 'rW2w544p88Pj4AVfRcqqu3UBH1uEGVrnTm8S6a7vNhkyw', 75, 0, ''),
(5375, 4, '2356088526', 'gizemesm', 'http://pbs.twimg.com/profile_images/437159457684860928/GaBUNHHy_normal.jpeg', 0, '2356088526-2Fz7mtHFepX2UxL98Sv7PuBKDOY9WuhC2wX2fLy', 'QFC5zegR4TQeKlO1bdDQDgVg7zgXT02J4dBUSxbKbrVqK', 75, 0, ''),
(5376, 4, '1039564903', 'LeventLoredal', 'http://pbs.twimg.com/profile_images/3028203547/64c9f2a3a09aa9285e1778da484fa97f_normal.jpeg', 18, '1039564903-0G2bkQBkyHadcXCkesfRxBxT54geNczPj6qhX4o', 'sOrjTnD7gkEkUCmUaMM08FUJoeHXezJuP5CNDdSG1QLk1', 75, 0, ''),
(5377, 4, '1926929774', 'HdDndar', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png', 4, '1926929774-aBKsEEU33vCMTBpLCozvMe37YQmpUfQYlu3C5rv', 'HBCT5lYCKUifwEAUBQrprbtgngGBAmVj34Ja4zQHwsbl0', 75, 0, ''),
(5378, 4, '1630390909', 'Mesutcorekli01', 'http://pbs.twimg.com/profile_images/378800000281529365/306f6852ed44c6c72420e2fd2a10934d_normal.jpeg', 70, '1630390909-31xsl817rxYVsTzHpsUXDjaIAVpyLFHzL6u6orf', 'djhzhxrQZa8GbIu9p3ryHFG6fkGqCQsvOwAmJRPIsXvlX', 75, 0, ''),
(5387, 4, '337979100', 'llmusicmanll', 'http://pbs.twimg.com/profile_images/378800000052458800/f172ecabb633a2f2c34895cfdbd288c8_normal.jpeg', 123, '337979100-KgpSwgjXdow3twvkQ40Wtn3iHcq3052hsaczivWC', '2W09pzYxLb7Ud97ramfqDYbMFGt5tNbXBpInHwdag2aV0', 75, 0, ''),
(5388, 4, '392100125', 'fthsglk', 'http://pbs.twimg.com/profile_images/444518581465006081/QXIpiX9n_normal.jpeg', 694, '392100125-TUD4SXYaJqTPb7V6YXAV2MmsDTAfFIfYhg49LSPG', 'W5nTmA7bL3c5OoM13EAAWIO95Q9v3875c9KtkyJldjzCG', 75, 0, ''),
(5389, 4, '1560461934', 'delibucocukayol', 'http://pbs.twimg.com/profile_images/378800000073143912/e2c86ab8a0af0454b558622e34d64d4e_normal.jpeg', 4, '1560461934-oNXKvAzrvakfMwdgCjEmZBpJnN4LvvdsrkFcI9y', 'bxXVzrYFSAd3935QLJWTgCm8I1hjmaDL7O5ERapdyvmWv', 75, 0, ''),
(5391, 4, '1715441521', 'mertdemirr1907', 'http://pbs.twimg.com/profile_images/378800000455908548/efd62a1b3a05791288ebc0bea48a7303_normal.jpeg', 4, '1715441521-LdyXTB7t32GtThjwqkG4nuRCL09SNxxwvRv0NCv', 'ArYvEIPUfF3xUYS9DltFFr7329GtrL1cRwcNjLhyK1uWP', 75, 0, ''),
(5394, 4, '910598203', 'SerkanYilmaz90', 'http://pbs.twimg.com/profile_images/2932559133/2184b55c90d62e0235e7302462d20d98_normal.png', 7, '910598203-5xN4btOgvQamt6YIkTP2Tcctc2dYKMEFcZBL3IjU', 'VES6ONXqBMPLoUqV0xM0KFxdNj8YUUxktnRECOmN4y3f9', 75, 0, ''),
(5395, 4, '2353655772', 'KaypakS', 'http://pbs.twimg.com/profile_images/436576802404708352/M71m765d_normal.jpeg', 0, '2353655772-DqjkR4oipzS0BrDcxWibnuFwYmIOA0J0kVSQ3O2', 'C6mYBlGkyD9p4lxmy8oFzpBihnKRiyakwRPG3OOuytU01', 75, 0, ''),
(5397, 4, '99087603', 'urvali37', 'http://pbs.twimg.com/profile_images/1693387227/Fidan_Emin1531_normal.jpg', 165, '99087603-dUoDG7qO2t77gZId0PMNzQRnUfCcp08ChRddX4VtP', 'QeMcfuMrQT6W8yeyDisbnG3IbW0R6SImaWlH9Mm3XnSPa', 75, 0, ''),
(5398, 4, '1959555876', 'fatihkaramert1', 'http://pbs.twimg.com/profile_images/378800000592638932/c4b17c34688fcf4e9a8b0ee4bc9322a0_normal.jpeg', 52, '1959555876-9KHzyQtUqZd2OK0r8e0XrM1eMV42ZuQQulBULGS', 'uUooihoAjTniUuBaciRMsuertyqgZ01ODrpnfT90TAt6G', 75, 0, ''),
(5399, 4, '998175302', 'KorayTkman', 'http://pbs.twimg.com/profile_images/2949996363/4a38d693da9cf64bfd93e6e237b56cd3_normal.jpeg', 66, '998175302-kLLAxCFY3zWS9FqSAS4aBp64ZPIU72fD3P0ZhHrk', 'mUPMXcx9TH1TFdfJ4F7ADwynydmevL7OhpiXyXBgJzlPh', 18, 0, ''),
(5403, 4, '1356607296', 'ANNEMIN_HATASI', 'http://pbs.twimg.com/profile_images/430845206854762499/0qRbI6F4_normal.jpeg', 212, '1356607296-WsnUDXNvHAqfA3BvCqM734pqk6txqF28sKYECI0', 'lb6RY6EODDZarkjygJLWL0dl7t0oVzFpTMrpTk9oeqALq', 15, 0, ''),
(5404, 4, '2349297875', 'BMingir', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', 6, '2349297875-dzfdBONehJiWa1uHM4XPVjplruYZNtJFslIP9uY', '9u2AfdEcWuvH39dLxXdlPqhNrqeS3tGMeqs16TWJ3nWQX', 1, 0, ''),
(5405, 4, '1044646706', 'likavurma', 'http://pbs.twimg.com/profile_images/378800000203606975/b46ab978ba15ba8adc5fb1f7639564c1_normal.jpeg', 0, '1044646706-hRPKldiOAZMcBYim7QDOgZqbkktM3VNLUXgyAoz', 'lNBTgHhkIpMgjOJAouAzgk8ywbR453zKqnUY7zIfqwdfy', 75, 0, ''),
(5406, 4, '1635529844', 'tavsanonur', 'http://pbs.twimg.com/profile_images/378800000219975847/b57642b63c8301b2d1fc1b72fea980cc_normal.jpeg', 1, '1635529844-5ibMNasE4K4ZBAM12Ka1F3RSek15OWgw4KweSNt', 'r26dq1Epqtz5uFhI6ZF3jBFH8GFzzx22a6xhCru6HUiQp', 75, 0, ''),
(5407, 4, '2420619476', 'simal_efendiler', 'http://pbs.twimg.com/profile_images/450645566435774464/GNPbowzM_normal.jpeg', 2, '2420619476-uBsPopWozK8s14alpO7tCaq4qVrQOsbIuLG55i2', 'L1tAfAKduIgsIwFoDAtPYWO6xvIU2epApZjMS6Gccli8G', 75, 0, ''),
(5423, 4, '2425850598', 'MuraTMarLeyJr2', 'http://pbs.twimg.com/profile_images/451757183013638144/EoJ5E0m9_normal.jpeg', 99, '2425850598-F1ke2LPpaxQ4ojV0ygWDfiOkcgRXgtpQn81Kcwu', 'gvO1P5iPeNYCIS8XZnYiCwQhjpaAnh8VnfwwB5RMkk0OZ', 35, 0, ''),
(5424, 4, '1185874657', 'hildakrgz', 'http://pbs.twimg.com/profile_images/3260948286/6897afe588f38b46c7745325ebf06842_normal.jpeg', 815, '1185874657-263vreyGDXoxLTgqyJZaSzm9abCr2FlRTlldRQw', 'INb2C1H0AZ4rjoCkWx4ooAAQ6qU7mzd2ZzdD2qgK5nv8Q', 0, 0, ''),
(5425, 4, '2367372316', 'kristalpizza', 'http://pbs.twimg.com/profile_images/439475729814659072/BWEU1xox_normal.jpeg', 88, '2367372316-4X7CFQwgY29dZLbGHySTTOJ58537fPzA7fN6E5k', 'fe7AKHUjMKxNbD5PT0k8RHcEAtWIofPGQLjnNn5HPoLPF', 33, 0, ''),
(5426, 4, '2416336906', 'kulu_erol', 'http://pbs.twimg.com/profile_images/445509610821005312/6Rk-H2B5_normal.jpeg', 1028, '2416336906-Yy5zpyu1LByinl5WdFNkRDSchu5VKspBn3a29pE', 'XJH7Oxp7Ih9S4KWc3WwaUAlU61xOA9rRl3LkrcT9v3Zjb', 0, 0, ''),
(5427, 4, '2215481274', 'beyinyiyencool', 'http://pbs.twimg.com/profile_images/378800000792619979/0b2bb4bfb23b6b3118da5d5b01b5408b_normal.jpeg', 993, '2215481274-t4WfyntKf3TJltklDKDhTPHJHnQderRUVwStsZT', 'xYqzFI5NhWERdAYgqS76rmfTXbFdsuTzHdKTmisbwOkBD', 0, 0, ''),
(5428, 4, '2370716628', 'cago1907fb', 'http://pbs.twimg.com/profile_images/444444135173279745/UUQYcDxq_normal.jpeg', 2157, '2370716628-nsd5gzlpxycvR8N9A7Cyr02KHbEngAcHCNqtufg', 'X7BxebAfym7qsYtC2CQ9EE20fTHrXgQ60yAhubLIZYadT', 0, 0, ''),
(5429, 4, '1030080540', 'BeyzaKarakose', 'http://pbs.twimg.com/profile_images/451776308306264064/RTw3Hszo_normal.jpeg', 227, '1030080540-Bl6mdojcMnqnItRPkAeYdp5VXneUWScZ4kV4WJm', 'jTmeUGzztbq55I7Nhd0DSZw60CmHBB5SlRVEJTpqGZ5Ui', 29, 0, ''),
(5430, 4, '2402177786', 'yusufengl13', 'http://pbs.twimg.com/profile_images/447132411164237824/-xwyARVh_normal.jpeg', 19, '2402177786-cluEYYBfl60kN4bIRWFoZu2Q8xRGjoDChAPcwSt', 't0gDcfBUkQuP7qsHxC7c5vRAQQNtMs8hXbCzNGm4RSLR1', 0, 0, ''),
(5431, 4, '611519159', 'bosver_gulumse', 'http://pbs.twimg.com/profile_images/451395064288133120/L4BlOp73_normal.jpeg', 4387, '611519159-ieroXh8QioPDFBnF97X8wcZ1iKoOUuMrebtE1fFC', 'AHg2i8ltFqb3MA9CGDFPZ5SyeZZuKZaXjPJWN0JD4vUeO', 0, 0, ''),
(5432, 4, '2201155688', 'DeniYldz', 'http://pbs.twimg.com/profile_images/441498213036478464/NuzFYxhg_normal.jpeg', 554, '2201155688-qxzxUSTmZN6qjDBPstRhkQV0nRIYluZEDKR28Rw', 'yU8g2kLByNygQ92TxGiQ5fYSUvzBJM66chYsQ6owtguJ5', 2, 0, ''),
(5433, 4, '2284168652', 'YunusYalcnkaya5', 'http://pbs.twimg.com/profile_images/446348297381220352/0axoBipY_normal.jpeg', 2116, '2284168652-w4nu75KBq5BWeZeDu0X9KzZieixG1I9bQl3lhdY', 'cAQSqRRtq9bHWeMtahf0AdkYlC9YRckr0SfdwHlUhVzFY', 1, 0, ''),
(5434, 4, '2426028104', 'viishnevotka', 'http://pbs.twimg.com/profile_images/452816542359887872/Rq4VP_0s_normal.jpeg', 266, '2426028104-gVjsFJDnM2fM77UZ18UBEFDdoaX0AYcqpAi7qAS', 'hjthUNqAwOEchy3dXpva0ZGeraIbkJ8SVeBD4oPaRgAwY', 0, 0, ''),
(5435, 4, '2198261764', 'SelinHaamburg', 'http://pbs.twimg.com/profile_images/453468854828945408/IVdxCD-K_normal.jpeg', 430, '2198261764-Fgg6HlDDQvyQugc48Sb0Sr2amuFJV1xXarrAYf7', 'C3onYwGW3UVcOj025Ry3OFCzA9X1opIkcAoazCjujWgni', 26, 0, ''),
(5436, 4, '1591953817', 'ErturulDeniz5', 'http://pbs.twimg.com/profile_images/422876861526339587/wpboL5KE_normal.jpeg', 6931, '1591953817-Wc3WF9vmO0d4hFG6MUwW7LspyfhiLChWj9AaO8f', 'wgQdlCjRAeq2WZqI7ix176J8OiNZCELCduZbVLMT9rmef', 0, 0, ''),
(5437, 4, '2355996381', 'YasarErcannn', 'http://pbs.twimg.com/profile_images/436869355473629184/5suGWHtP_normal.jpeg', 307, '2355996381-O9j6nsTX2Ldk9bZ0YZNi1n8yC9kLYNvkfONZnpl', 't3W9wpynrGQmOaLyB9mY5kj9gmMRQBXKwBA6KMhwxJZLN', 1, 0, ''),
(5438, 4, '2361573127', 'AntoIojist', 'http://pbs.twimg.com/profile_images/438403389534138368/RNbWIiSu_normal.jpeg', 8724, '2361573127-dbspELKtxnelWhdRPgtd8DU4P3pmYy7IhtGLFrc', '9BsloiTbbnMzHbskfWVMfblCExc1e8fPGKgx24UzTPWIx', 0, 0, ''),
(5439, 4, '1048390387', 'OkanNanis', 'http://pbs.twimg.com/profile_images/378800000520212597/ba1febbc7c6bbc955f4c858a217edd6e_normal.jpeg', 315, '1048390387-J5XUT9rBFNJJdDK4nvYEg4bbv82aDt4nFMLfkjY', '', 0, 0, ''),
(5440, 4, '2193496125', 'tlgbzdg', 'http://pbs.twimg.com/profile_images/449969583039193089/OP5FyfCc_normal.jpeg', 85, '2193496125-igpiPvRZcQkUQBhdyAt29MRZs8wHPx5iXsKCerP', '8Y02o7R3Ty8ZjaxTeHhEFYvu3zZbJX24TzG1I469lSNcl', 26, 0, ''),
(5441, 4, '1715261700', 'MadaFucK1903', 'http://pbs.twimg.com/profile_images/418764849452044288/45_qPF3f_normal.jpeg', 67, '1715261700-JzxqGx3ZvaNep45cJpm2aVIauQjsYOtyQ86UW9i', 'JJAqEvSVBGtBKg1Ak2Hfb5VBrzGdC4F9iZcFAvawYXcq2', 74, 0, ''),
(5442, 4, '1958999952', 'Yaman53200', 'http://pbs.twimg.com/profile_images/449072248960208896/t9JUwNRU_normal.jpeg', 4550, '1958999952-3gra2a6gPwzz1zd2Cn3RCKgWQwQm6BD1p5U3bKk', 'mOAUoGAB7BYTAKRfddPZEAApGg1ii1TROlngW35C3BSwp', 1, 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uygulamalar`
--

CREATE TABLE IF NOT EXISTS `uygulamalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appBaslik` varchar(1000) NOT NULL,
  `consumerKey` varchar(3000) NOT NULL,
  `consumerScreet` varchar(3000) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `uygulamalar`
--

INSERT INTO `uygulamalar` (`id`, `appBaslik`, `consumerKey`, `consumerScreet`, `aktif`) VALUES
(4, 'Zafer Kabalak', 'nYD5gmrNflx5eQAi71Sw', '7saSKb0OOpm26ZRbQFMTqiq91eXfYpBcg2bwpf2stk4', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yasaklilar`
--

CREATE TABLE IF NOT EXISTS `yasaklilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tID` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `appID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3997 ;

--
-- Tablo döküm verisi `yasaklilar`
--

INSERT INTO `yasaklilar` (`id`, `tID`, `appID`) VALUES
(3929, '916925700', 4),
(3930, '306853697', 4),
(3931, '2385809978', 4),
(3932, '1880010686', 4),
(3933, '2315846522', 4),
(3934, '2253173811', 4),
(3935, '2296394988', 4),
(3936, '2329315584', 4),
(3937, '1940699371', 4),
(3938, '93163811', 4),
(3939, '1852487803', 4),
(3940, '2435139838', 4),
(3941, '2377464895', 4),
(3942, '421291979', 4),
(3943, '2212773876', 4),
(3944, '1544289019', 4),
(3945, '2293476760', 4),
(3946, '479699142', 4),
(3947, '2385809978', 4),
(3948, '1452369798', 4),
(3949, '2346673430', 4),
(3950, '264990415', 4),
(3951, '610812200', 4),
(3952, '482068826', 4),
(3953, '360056982', 4),
(3954, '583245454', 4),
(3955, '2420521358', 4),
(3956, '1890460194', 4),
(3957, '587779480', 4),
(3958, '825818730', 4),
(3959, '476852137', 4),
(3960, '2416455578', 4),
(3961, '1635673514', 4),
(3962, '916925700', 4),
(3963, '1033339351', 4),
(3964, '331148856', 4),
(3965, '1852487803', 4),
(3966, '1234605978', 4),
(3967, '1351522609', 4),
(3968, '2421691682', 4),
(3969, '290571753', 4),
(3970, '400821172', 4),
(3971, '316870456', 4),
(3972, '310898036', 4),
(3973, '925876381', 4),
(3974, '264990415', 4),
(3975, '342079963', 4),
(3976, '479699142', 4),
(3977, '612620973', 4),
(3978, '316501057', 4),
(3979, '2324466108', 4),
(3980, '2259900180', 4),
(3981, '229975422', 4),
(3982, '1452369798', 4),
(3983, '573931973', 4),
(3984, '1630337288', 4),
(3985, '2385809978', 4),
(3986, '496976963', 4),
(3987, '1890460194', 4),
(3988, '1662919891', 4),
(3989, '428163103', 4),
(3990, '1690879537', 4),
(3991, '427749252', 4),
(3992, '2414553366', 4),
(3993, '205891254', 4),
(3994, '776500566', 4),
(3995, '602192524', 4),
(3996, '1456349239', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE IF NOT EXISTS `yoneticiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yBaslik` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  `yEmail` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  `ySifre` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=24 ;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `yBaslik`, `yEmail`, `ySifre`) VALUES
(1, 'Zafer Kabalak', 'zafer', '09ff14f16293f3757051694bab4ad3d2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
