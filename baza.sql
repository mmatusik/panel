-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 08 Sie 2014, 07:32
-- Wersja serwera: 5.5.34
-- Wersja PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `rabat`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresses_offers`
--

CREATE TABLE IF NOT EXISTS `adresses_offers` (
  `id_offer` int(11) NOT NULL,
  `id_adress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `id_city` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `region` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `id_admin` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `disc` text COLLATE utf8_polish_ci NOT NULL,
  `how` text COLLATE utf8_polish_ci NOT NULL,
  `worth` text COLLATE utf8_polish_ci NOT NULL,
  `old_price` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `new_price` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `add_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `id_category` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=8 ;

--
-- Zrzut danych tabeli `offers`
--

INSERT INTO `offers` (`id`, `name`, `disc`, `how`, `worth`, `old_price`, `new_price`, `add_time`, `end_time`, `active`, `id_category`, `link`) VALUES
(1, 'Test', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(2, 'Test1', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(3, 'Test2', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(4, 'Test3', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(5, 'Test4', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(6, 'Test5', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, ''),
(7, 'Test6', 'opis', 'jak', 'warty', '250', '150', 1234566663, 1456777744, 1, 1, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_city`
--

CREATE TABLE IF NOT EXISTS `offers_city` (
  `id_city` int(11) NOT NULL,
  `id_offer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE IF NOT EXISTS `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `warto` text COLLATE utf8_polish_ci NOT NULL,
  `jak` text COLLATE utf8_polish_ci NOT NULL,
  `data_dodania` int(11) NOT NULL,
  `data_koniec` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `cena_old` int(11) NOT NULL,
  `kupiono` int(11) NOT NULL,
  `adres` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `kategoria_id` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `polec` int(11) NOT NULL,
  `procent` int(11) NOT NULL,
  `zdj_glowne` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `slowa` tinytext COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nick_owner` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ilosc` int(11) NOT NULL,
  `www` varchar(1000) COLLATE utf8_polish_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `ai` int(11) NOT NULL AUTO_INCREMENT,
  `18` int(11) NOT NULL,
  `slowa2` text COLLATE utf8_polish_ci NOT NULL,
  `kody_down` int(11) NOT NULL,
  `id_ct` int(11) NOT NULL,
  `typ` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`ai`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=112 ;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `opis`, `warto`, `jak`, `data_dodania`, `data_koniec`, `cena`, `cena_old`, `kupiono`, `adres`, `tel`, `kategoria_id`, `polec`, `procent`, `zdj_glowne`, `slowa`, `email`, `nick_owner`, `ilosc`, `www`, `u_id`, `ai`, `18`, `slowa2`, `kody_down`, `id_ct`, `typ`, `link`) VALUES
(1392914136, 'Catering Dietetyczny taniej 10 % !!!', 'Liczymy za Ciebie kalorie, zadzwoń i zamów dietę, a zdrowie przyjdzie do Ciebie :)', 'Zdrowa dieta to klucz do sukcesu i super wyglądu. \r\nPoczuj się lekko, zdrowo i skorzystaj z \r\ncateringu dietetycznego. <br>Proponujemy|:<br>- zdrową codzienną dietę z dostawą do domu kurierem<br>- zbilansowane 5 posiłków o pełnej wartości odżywczej<br>- stawiamy na zdrowe odżywianie, lub zdrowe i efektywne chudnięcie.<br><br>Zadzwoń i zamów dietę, a zdrowie przyjdzie po Ciebie :)<br><br>Więcej informacji o dietach i produktach znajdziecie na stronach:<br>www.dietering.com<br>www.sklep.dietering.com/<br><br>', 'Aby zrealizować zniżkę pobierz kupon, następnie zadzwoń, podaj nr kodu i zamów dietę. Zniżka obowiązuje do 20 marca, do tego terminu trzeba zgłosić się z kuponem, aby uzyskać dodatkowe 10 % rabatu.  UWAGA !!! Kupon łączy się z innymi promocjami !!!<br>', 1392914136, 1409479200, 27, 30, 5, 'ul. Lwowska 57', '537 444 030', 'Uroda i zdrowie', 1, 10, '216a3b3522270e178c6602aec7104d22e.jpg', 'Catering Dietetyczny najlepszy w Nowym Sączu, z serwisem rabatnowysacz.pl wszytsko taniej 10 %', 'biuro@dietering.com', '', 50, 'www.dietering.com', 0, 77, 0, 'Catering-Dietetyczny-najlepszy-w-Nowym-Saczu-z-serwisem-rabatnowysacz-pl-wszytsko-taniej-10', 5, 1, 0, ''),
(1397229452, '47 % zniżki na Gokarty z Power Max', '<p>gfe</p>', '<p>asd</p>', '<p>asdf</p>', 1397229452, 1406203200, 150, 500, 3, 'AASD', '467 895 765', '4', 1, 70, '0r1.png', 'slowa klucz, slowa klucz, google, test', 'biuro@dietering.com', '', 0, 'www.google.pl', 0, 92, 0, 'slowa-klucz-slowa-klucz-google-test', 2, 1, 0, ''),
(1397295835, 'Meble Orion Taniej 15 %', '<p>gggtregtrgtrgtrgtrgtrgtr</p>\r\n<p>hhhhhhhhh</p>\r\n<p>hhhhhhhhh</p>', '<p>egrgr</p>', '<p>gdfgdfgdfgdf</p>', 1397295835, 1409479200, 90, 500, 0, 'Żółki', '606 567 234', '4', 0, 82, '1complementary_color_swatchesii_by_digitalphenom.jpg', 'ggdfgdfgdfgdfgdf,kkk', 'example@dietering.com', '', 0, 'www.www.pl', 0, 96, 0, 'ggdfgdfgdfgdfgdf-kkk', 1, 1, 0, ''),
(1403178344, '5powiatów', '<p>f</p>', '<p>f</p>', '<p>f</p>', 1403178344, 1405684800, 10, 20, 2, 'Barska 9', '998 552 153', '6', 1, 50, '0s5_logo.png', 'oferta, testowa, nr 2, testy kodyfff', 'biuro@dietering.com', '', 0, '', 0, 102, 0, 'oferta-testowa-nr-2-testy-kodyfff', 99, 1, 0, ''),
(1403701718, 'Kurs Tańca dla Gości Weselnych', '<p>SAdasdas</p>', '', '', 1403701718, 1409479200, 0, 0, 0, '', '18 441 56 78', 'Wybierz', 1, 0, '0szybkie1.jpg', 'asd,ddddd', 'example@dietering.com', '', 0, 'www.google.pl', 0, 103, 0, 'asd-ddddd', 0, 1, 1, ''),
(1403802933, 'Kurs Tańca dla Narzeczonych 21 % taniej ', '<p>xcvd</p>', '', '', 1403802933, 1409479200, 0, 0, 0, '', '507 144 265', '4', 2, 0, '0s5_logo.png', 'asdasd,gdfgdf', 'mmatusikpl@gmail.com', '', 0, 'www.google.pl', 0, 104, 0, 'asdasd-gdfgdf', 0, 1, 1, ''),
(1404989926, 'KROSS Level A2 1499 zamiast 1899 !', '<p>asd</p>', '', '', 1404989926, 1406289600, 0, 0, 0, '', '537 444 030', 'Wybierz', 2, 0, '0r2.png', 'asdasdasdasd', 'example@dietering.com', '', 0, 'asd', 0, 105, 0, 'asdasdasdasd', 0, 0, 1, ''),
(1405427126, 'Usługi w Zajeździe Sądeckim taniej 15 %', '<p>asdtttest</p>', '<p>Test</p>', '<p>asdtest</p>', 1405427126, 1405857600, 25, 34, 0, 'lwowska 100', '18 449 99 33', '4', 0, 26, '0pl-500.png', 'slowa, klucz, zapis, test', 'mmatusikpl@gmail.com', '', 0, 'www.google.pl', 0, 106, 0, 'slowa-klucz-zapis-test', 1, 1, 0, ''),
(1405429049, 'Tylko 79 zamiast 99 zł przegląd klimatyzacji ', '<p><em><strong>asdasd</strong></em></p>', '<p><em><strong>sda</strong></em></p>', '<p>asdasd</p>', 1405429049, 1405598400, 12, 15, 7, 'wwwwwww', '18 449 99 33', '4', 1, 20, '0bez-nazwy-2.jpg', 'asdasdasdasd1dfasdasd4', 'mmatusikpl@gmail.com', '', 0, 'www.google.com', 0, 107, 0, 'asdasdasdasd1dfasdasd4', 99, 1, 0, ''),
(1405432133, 'Pizza 40cm w cenie 20cm', '<p>asddas</p>', '', '', 1405432133, 1406030400, 0, 0, 0, '', '687 534 789', '4', 1, 0, '0bann.png', 'asdasdasdasd1df2', 'test@rabatem.pl', '', 0, 'www.google.pl', 0, 108, 0, 'asdasdasdasd1df2', 0, 1, 1, ''),
(1405432383, 'Ulotki 250szt. 85x55', '<p>3</p>', '<p>1</p>', '<p>2</p>', 1405432383, 1406808000, 12, 55, 0, 'asd', '18 449 99 33', '4', 0, 78, '01a.jpg', 'afsdsdfs', 'sss@gmail.com', '', 0, 'www.google.com', 0, 109, 0, 'afsdsdfs', 1, 1, 0, ''),
(1405432457, 'Strony internetowe 30% taniej', '<p>TY</p>', '', '', 1405432457, 1406808000, 0, 0, 0, '', '607 994 076', '4', 2, 0, '', 'asdasdasdasd1df45', 'example@dietering.com', '', 0, 'www.google.com', 0, 110, 0, 'asdasdasdasd1df45', 0, 1, 1, ''),
(1405515822, 'Pole Dance za darmo dla nowych osób w Fitnation', '<p>qwdqwd</p>', '<p>asdasda</p>', '<p>wdqaqwd</p>', 1405515822, 1406116800, 10, 55, 2, 'wwwwwww', '809 876 592', '12', 1, 82, '0bez-nazwy-2.jpg', 'test,oferta,new,miasta', 'sss@gmail.com', '', 0, 'www.google.com', 0, 111, 0, 'test-oferta-new-miasta', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `session` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=83 ;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`id`, `username`, `session`, `ip`) VALUES
(79, 'admin', 'a166aee2279d562f579f8d2ae4e54042', '127.0.0.1'),
(82, 'ry', '68a6bc766016011a9837cf0108d43d70', '127.0.0.1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `auth` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `pass`, `auth`) VALUES
(1, 'mmatusikpl@gmail.com', 'ry', '202cb962ac59075b964b07152d234b70', 99),
(2, 'michaljanus83@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70', 1),
(9, 'mmatusikpl@gmail.com', '1373187401', '4a2d6618727fab74559f18ee84a977f4', 2),
(10, 'mmatusikpl@gmail.com', '1377627838', '4a2d6618727fab74559f18ee84a977f4', 2),
(11, 'weselnetaxi@gmail.com', '1377849410', '14dc4b067a691a844a45b8baf886da4f', 2),
(12, 'sss', '1377849905', '88bf8e091f4ac3570fa0a09c0d3dd9e2', 2),
(13, 'nj@gn.pl', '1380706374', '361a833dad027e4b9ce52e365163baec', 2),
(14, 'xry99x@gmail.com', 'Michał Matusik', NULL, 0),
(15, 'majkash@o2.pl', 'majkash', '0eb074dcc1bfd7761e1de6772d2baf14', 0),
(16, 'asik1987@op.pl', 'asik1987@op.pl', '053a6ae9eef12779a9f8fd4d4b9942ea', 0),
(17, 'asik1987@op.pl', 'asik19', '1742a19fbb9e9613976951e3523df0b7', 0),
(18, 'k.zurowicz@gmail.com', 'katrinek', 'b3395ef1f7ff9f39b7253a5f7103f906', 0),
(19, 'katrinek@poczta.onet.pl', 'katrinek@poczta.onet.pl', 'f878bba49cfaf402831adfbb8a4b4394', 0),
(20, 'krystian.dziopa@gmail.com', 'Krystian Dziopa', NULL, 0),
(21, 'lesteer@gazeta.pl', 'lesteer@gazeta.pl', 'd7ca234fc4d1aa0d9a68c95440cba1d0', 0),
(22, '88riza88@gmail.com', 'iziabeja', '6a67f555a2dfe6e238efbb41840593ad', 0),
(23, 'paola_ns@poczta.fm', 'paola_ns@poczta.fm', 'fd9ad82d0a32a31f6c824e234d74d0ef', 0),
(24, 'paola_ns@poczta.fm', 'paola_ns@poczta.fm', 'fd9ad82d0a32a31f6c824e234d74d0ef', 0),
(25, 'restauracja@poczekalnians.pl', '1385674959', '386474016050a2f2b617fb7ae9bd4208', 2),
(26, 'nessyie@ymail.com', 'KingaSz', '69bcb04cd4396e44d4b8b87f8ea4121f', 0),
(27, 'nessyie@ymail.com', 'KingaSz', '69bcb04cd4396e44d4b8b87f8ea4121f', 0),
(28, 'vaguechicken825@hotmail.com', 'kamilkaox', 'd17b9a0779a342545984e0330194e284', 0),
(29, 'etherealvacation355@hotmail.com', 'stefekows', 'd17b9a0779a342545984e0330194e284', 0),
(30, 'etherealvacation355@hotmail.com', 'stefekows', 'd17b9a0779a342545984e0330194e284', 0),
(31, 'finleyym3aqr@live.com', 'michaloxe', 'd17b9a0779a342545984e0330194e284', 0),
(32, 'arrogantvacation018@hotmail.com', 'michaloxe', 'd17b9a0779a342545984e0330194e284', 0),
(33, 'nosytouch186@hotmail.com', 'sabinakolavip', 'eb9980139b04cbf10475f3caf03e8d86', 0),
(34, 'ribbtimisqui1985@interia.pl', 'zawieruchakamico', '1a51b424ff2ed7909b0ed8e31ed8a802', 0),
(35, 'ribbtimisqui1985@interia.pl', 'zawieruchakamico', '1a51b424ff2ed7909b0ed8e31ed8a802', 0),
(36, 'atworsoftsquar1978@interia.pl', 'natiole', 'bdd0aa280f18ac7f566cc39069088eaf', 0),
(37, 'quokneelsubmi1975@interia.pl', 'oediox', 'eba5e0332996b480a26bc46ddf60022b', 0),
(38, 'atworsoftsquar1978@interia.pl', 'natiole', 'bdd0aa280f18ac7f566cc39069088eaf', 0),
(39, 'raupropbionces1970@interia.pl', 'Sandralifs', '23e836709418982d90e8894bdef958ad', 0),
(40, 'slqk17@gmail.com', 'SławekC', 'b7c23d3155ea7d2908480e65ed148409', 0),
(41, 'atworsoftsquar1978@interia.pl', 'natiole', 'bdd0aa280f18ac7f566cc39069088eaf', 0),
(42, 'tavenviva1983@interia.pl', 'Kamilaolszew', '754b30a3f4e3cbad88f2d7d4af47f9e6', 0),
(43, 'gladysz.g95@gmail.com', 'lukasz_g95', '95f69c08d31c2a2fd530702e8ff98bd7', 0),
(44, 'gladysz.g95@gmail.com', 'lukasz_g95', '95f69c08d31c2a2fd530702e8ff98bd7', 0),
(45, 'r7ozsrodkowa12ny@interia.pl', 'michalzups', '4bd3175b6436e5c6a06e3a43a8540d15', 0),
(46, 'fantasticwater776@hotmail.com', 'Glummameemy', '0af156e14615aea9a5592518fbb6c12f', 0),
(47, 'urszula.gromala@onet.pl', 'Ula Gromala', NULL, 0),
(48, 'dak86@o2.pl', 'dak860', '8032eea2e3a3cd87d1eca83f4fe079e5', 0),
(49, 'asia_0707@o2.pl', 'asia_0707@o2.pl', 'd77815d11d93227458a7dd4a83bc1153', 0),
(50, 'asia_0707@o2.pl', 'asia_0707@o2.pl', 'd77815d11d93227458a7dd4a83bc1153', 0),
(51, 'r7ozsrodkowa12ny@interia.pl', 'michalzups', '4bd3175b6436e5c6a06e3a43a8540d15', 0),
(52, 'r7ozsrodkowa12ny@interia.pl', 'michalzups', '4bd3175b6436e5c6a06e3a43a8540d15', 0),
(53, 'najemnik3@vp.pl', 'ptaryk8708', 'b80de700656ee3a0462744b027978d40', 0),
(54, 'Arbocns@gmail.com', 'Arbocns', '0005f9b13a92cecab7ee4a2eb0fd25cc', 0),
(55, 'Arbocns@gmail.com', 'Arbocns', '0005f9b13a92cecab7ee4a2eb0fd25cc', 0),
(56, 'Arbocns@gmail.com', 'Arbocns', '0005f9b13a92cecab7ee4a2eb0fd25cc', 0),
(57, 'krzysztofmordarski@gmail.com', 'Kizior Em', NULL, 0),
(58, 'lukashns@gmail.com', 'lukashns', '11d3d6027d5040d05b97395391cbcd01', 0),
(59, 'lukashns@gmail.com', 'lukashns', '11d3d6027d5040d05b97395391cbcd01', 0),
(60, 'administrator@aerodisk.com', 'Buyviagraonline', '47e332089b15f918215a2abae55d19c1', 0),
(61, 'bmotak@interia.pl', 'Barbarabacha5', 'c15387b4f317a7db9b9b6633ca5ca256', 0),
(62, 'beataporeba@wp.pl', 'Becia77', '81c1de0ac70e8ef7c56c49bbd967887a', 0),
(63, 'beataporeba@wp.pl', 'beataporeba@wp.pl', 'ec202d02db7e043cdf13dcd0172106f6', 0),
(64, 'wiolawielgus@interia.pl', 'wiola1', '2e15618f45af321a101a1da2fdb0be6c', 0),
(65, 'skutery.szewczyk@tlen.pl', 'Romet12', '716d281e5e1b24a82fa0c7e2f8c6f7b6', 0),
(66, 'mmmmmmmmmmmmmm@ggmail.com', 'mmmmmmmmmmmm', 'bb719731f733173656b3d1e43723487d', 0),
(67, 'mmatusikpl@gmail.com', '1395752012', 'e85950a0b3db9dc170606b286cbba6db', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
