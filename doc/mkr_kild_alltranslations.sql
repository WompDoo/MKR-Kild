-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 28, 2017 kell 01:21 PL
-- Serveri versioon: 10.1.21-MariaDB
-- PHP versioon: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `mkr_kild`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `heading` varchar(191) NOT NULL,
  `text` text NOT NULL,
  `picture` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `about`
--

INSERT INTO `about` (`about_id`, `heading`, `text`, `picture`) VALUES
(4, 'Who are we?', 'Hello there!\r\nWe are Geili and Jevgeni. We have both studied carpentry and after school we found that we share our professional visions and decided to become a unified team.\r\nWe consider ourselves as people of nature and all we build, we try to make from natural materials. Generally full timber.\r\nIn addition to decor elements, practical products can be found from our creations.', 'happy.jpg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `description`, `picture`) VALUES
(1, 'Doggo Doggo', 'More teamwork', 'X.png'),
(2, 'Doggo', 'Such elp, much teamwork', 'happy-doggo-57b1df2fb27db.jpeg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `description`
--

INSERT INTO `description` (`id`, `description`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `homebackground`
--

CREATE TABLE `homebackground` (
  `home_id` int(11) NOT NULL,
  `background` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `homebackground`
--

INSERT INTO `homebackground` (`home_id`, `background`) VALUES
(1, 'uploads/background/kausid1.jpg'),
(2, 'uploads/background/kandik2.jpg'),
(3, 'uploads/background/asi2.jpg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `order`
--

CREATE TABLE `order` (
  `id` int(9) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delivery` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `order`
--

INSERT INTO `order` (`id`, `name`, `email`, `phone`, `address`, `delivery`, `comments`, `total`) VALUES
(2, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'Omniva', '', 1526.98),
(3, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 242.97),
(4, 'kala', 'kala@hot.ee', '5315262', 'kala', 'errand-boy', 'kala', 132.99),
(5, 'no', 'no@no.com', '8748237857823785', 'no', 'smartpost', 'ok', 172.98),
(6, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', 'tere', 132.99),
(7, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', 'ok', 129.99),
(8, 'Rete-Keyt labidas', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', 'ok', 132.99),
(9, 'Rete-Keyt on tobu', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', 'oki', 49.98),
(10, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', '', '', 247.98),
(11, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 408.99),
(12, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 202.98),
(13, 'Rete-Keyt Uibo', 'rete-keyt.uibo@khk.ee', '+37256811269', 'J. Kärneri, 32', 'pick it up', 'oki', 285.99),
(14, 'Rete-Keyt olen', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', '', 152.97),
(15, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', 'tere', 152.97),
(16, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'smartpost', '', 152.97),
(17, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', 'kala', 152.97),
(18, 'Rete-Keyt Test', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', 'oki', 152.97),
(19, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', '', 'tere', 202.98),
(20, 'tank', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 89.97),
(21, 'Tervitus', 'retekeyt@gmail.com', '3050201', 'testing, testing', 'errand-boy', '', 202.98),
(22, 'Roolipea', 'retekeyt@gmail.com', '765456789', 'testing, testing', 'pick it up', 'tere', 246),
(23, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', '', 285.99),
(24, 'Kapsas', 'retekeyt@gmail.com', '43292949', 'testing, testing', 'post office', '', 246),
(25, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 285.99),
(26, 'kala', 'retekeyt@gmail.com', '35352362', 'testing, testing', 'pick it up', '', 378.99),
(27, 'kala', 'retekeyt@gmail.com', '567890', 'testing, testing', 'pick it up', '', 246),
(28, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'pick it up', '', 369),
(29, 'kalapea', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', '', 282.96),
(30, 'Kala', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'Omniva', '', 282.96),
(31, 'Koobas', 'retekeyt@gmail.com', '346346262', 'testing, testing', 'errand-boy', 'ok', 282.96),
(32, 'Maria Tulp', 'retekeyt@gmail.com', '623858358', 'testing, testing', 'errand-boy', '', 402.93),
(33, 'Ratta Pea', 'retekeyt@gmail.com', '684839292', 'testing, testing', 'post office', '', 142.98),
(34, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'post office', 'ok', 448.95),
(35, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'Omniva', '', 123),
(36, 'Lihtsalt et', 'Kontrollida@kas.ee', '562010194', 'arve tuleb läbi', 'pick it up', 'oki', 135.99),
(37, 'Rete-Keyt Uibo', 'rete-keyt.uibo@khk.ee', '+37256811269', 'J. Kärneri, 32', 'post office', 'jou', 123),
(38, 'Rete-Keyt Uibo', 'rete-keyt.uibo@khk.ee', '+37256811269', 'J. Kärneri, 32', 'Omniva', '', 135.99),
(39, 'Tellija Olen', 'retekeyt@gmail.com', '+37256811161', 'testing, testing', 'pick it up', 'Testing', 214.54);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(9) NOT NULL,
  `order_id` int(9) NOT NULL,
  `product_id` int(9) NOT NULL,
  `nitem` int(9) NOT NULL,
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Andmete tõmmistamine tabelile `orderitem`
--

INSERT INTO `orderitem` (`id`, `order_id`, `product_id`, `nitem`, `total`) VALUES
(1, 1, 3, 11, 13541),
(2, 1, 10, 2, 79.98),
(3, 2, 2, 2, 246),
(4, 2, 3, 1, 1231),
(5, 2, 10, 1, 39.99),
(6, 2, 5, 1, 9.99),
(7, 3, 2, 1, 123),
(8, 3, 10, 3, 119.97),
(9, 4, 2, 1, 123),
(10, 4, 5, 1, 9.99),
(11, 5, 2, 1, 123),
(12, 5, 5, 1, 9.99),
(13, 5, 10, 1, 39.99),
(14, 6, 2, 1, 123),
(15, 6, 5, 1, 9.99),
(16, 7, 10, 1, 39.99),
(17, 7, 8, 2, 90),
(18, 8, 2, 1, 123),
(19, 8, 5, 1, 9.99),
(20, 9, 10, 1, 39.99),
(21, 9, 5, 1, 9.99),
(22, 10, 2, 1, 123),
(23, 10, 10, 2, 79.98),
(24, 10, 8, 1, 45),
(25, 11, 2, 3, 369),
(26, 11, 10, 1, 39.99),
(27, 12, 10, 2, 79.98),
(28, 12, 2, 1, 123),
(29, 13, 2, 2, 246),
(30, 13, 10, 1, 39.99),
(31, 14, 2, 1, 123),
(32, 15, 2, 1, 123),
(33, 16, 2, 1, 123),
(34, 17, 2, 1, 123),
(35, 18, 2, 1, 123),
(36, 18, 5, 3, 29.97),
(37, 19, 2, 1, 123),
(38, 19, 10, 2, 79.98),
(39, 20, 5, 1, 9.99),
(40, 20, 10, 2, 79.98),
(41, 21, 2, 1, 123),
(42, 21, 10, 2, 79.98),
(43, 22, 2, 2, 246),
(44, 23, 2, 2, 246),
(45, 23, 10, 1, 39.99),
(46, 24, 2, 2, 246),
(47, 25, 2, 2, 246),
(48, 25, 10, 1, 39.99),
(49, 26, 2, 3, 369),
(50, 26, 5, 1, 9.99),
(51, 27, 2, 2, 246),
(52, 28, 2, 3, 369),
(53, 29, 2, 1, 123),
(54, 29, 10, 4, 159.96),
(55, 30, 2, 1, 123),
(56, 30, 10, 4, 159.96),
(57, 31, 2, 1, 123),
(58, 31, 10, 4, 159.96),
(59, 32, 2, 1, 123),
(60, 32, 10, 7, 279.93),
(61, 33, 2, 1, 123),
(62, 33, 5, 2, 19.98),
(63, 34, 2, 2, 246),
(64, 34, 5, 1, 9.99),
(65, 34, 10, 1, 39.99),
(66, 34, 8, 2, 90),
(67, 34, 9, 1, 12.99),
(68, 34, 5, 1, 9.99),
(69, 34, 10, 1, 39.99),
(70, 35, 2, 1, 123),
(71, 36, 2, 1, 123),
(72, 36, 9, 1, 12.99),
(73, 37, 2, 1, 123),
(74, 38, 2, 1, 123),
(75, 38, 9, 1, 12.99),
(76, 39, 2, 1, 194.55),
(77, 39, 14, 1, 19.99),
(78, 40, 1, 2, 159.98),
(79, 40, 17, 1, 55.99),
(80, 41, 1, 1, 79.99),
(81, 42, 2, 1, 194.55),
(82, 42, 13, 1, 15.99);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Autocreated',
  `product_name` varchar(50) NOT NULL COMMENT 'Autocreated',
  `product_type_id` tinyint(4) NOT NULL DEFAULT '1',
  `product_image` varchar(191) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_qty` int(11) DEFAULT '0',
  `product_details` varchar(191) DEFAULT NULL,
  `product_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_type_id`, `product_image`, `product_price`, `product_qty`, `product_details`, `product_code`) VALUES
(1, 'Classic Wooden Cupboard', 1, 'kapike1.jpg', '79.99', 11, 'This high quality cute capacious cupboard is very suitable for your bedroom and living room. ', 'CB001'),
(2, 'Bookcase \"Twist\"', 1, 'keerdkapp.jpg', '194.55', 2, 'Want something different? Want your friends to be jealous? Then this bookcase is exactly what you\'re looking for!', 'TW01'),
(3, 'Coffee Table \"Paulig\"', 1, 'kolmaslaud3.jpg', '80.00', 6, 'This high quality coffee table is very suitable for your living room. It doesn\'t take much space and is easily cleanable.', 'CT001'),
(4, 'Coffee Table \"Curvy\"', 1, 'laud1.jpg', '86.99', 12, 'This beautiful coffee table is made for people who want something different in their life.', 'CT002'),
(5, 'Coffee Table \"Light\"', 1, 'teinelaud1.jpg', '86.00', 1, 'This simple coffee table suits in every living room!', 'CT003'),
(6, 'Toy Box', 1, 'mänguasjakast.jpg', '45.00', 10, 'Unique and comfortable home for your children\'s toys.', 'TB001'),
(8, 'TV Table', 1, 'tvalus1.jpg', '100.00', 1, 'This practical TV table is a perfect product for you if you like ceeping all your things in one place.', 'TT001'),
(9, 'Bathroom Cupboard', 1, 'kapp.jpg', '124.55', 1, 'This high quality bathroom cupboard can fit all your towels!', 'BC001'),
(10, 'Chidlbed \"Crib\"', 1, 'babybed.jpg', '79.00', 4, 'In this childbed, your child can invite all the stuffed toys to check out his/her crib!', 'CC001'),
(11, 'Bed \"Natural\"', 1, 'bigbigbed.jpg', '300.00', 2, 'In this bed, you will never have any bad dreams!', 'HB001'),
(12, 'Plate \"Wave\"', 2, 'alus2.jpg', '26.00', 20, 'This little plate is a perfect place for your light snacks, e.g peanuts, raisins, etc.', 'PP001'),
(13, 'Plate \"Round\"', 2, 'alus.jpg', '15.99', 15, 'If you want your peanut plate to differ from your friends\', this is what we recommend!', 'PL001'),
(14, 'Egg Cup \"Tiny\"', 2, 'asi.jpg', '19.99', 21, 'This egg cup may seem tiny, but it is never too tiny for your egg!', 'EC001'),
(15, 'Egg Cup \"Thin\"', 2, 'asi2.jpg', '24.99', 12, 'This thin egg cup will never let your egg down.', 'EC002'),
(16, 'Plate \"Special\"', 2, 'auguga2.jpg', '34.99', 1, 'This unique plate is hard to find, but you just found it!', 'UP001'),
(17, 'Bat \"Dunner\"', 2, 'dunner.jpg', '55.99', 3, 'This unique bat it perfect to scare away all the bad things in life. You might not want to play tennis with it..', 'TD001'),
(18, 'Cup \"Dreamy\"', 2, 'vaas1.jpg', '15.99', 3, 'This wooden cup is small, but not too small. And very lovely.', 'WC001'),
(19, 'Logbook', 3, 'markmik1.jpg', '49.99', 19, 'Logbook to sauna. Made of birch bark and oak.\r\nDimensions: 215x235 mm.', 'LB001'),
(20, 'Sketchbook \"Etch-a-Sketch\"', 3, 'markmik01.jpg', '35.00', 5, 'Perfect unique sketchbook to carry around with you.', 'SK001'),
(21, 'Sketchbook \"Stripe\"', 3, 'markmik04.jpg', '35.99', 6, 'Unique sketcbook for writers, artists and people who like to keep notes. ', 'SK002'),
(22, 'TV Cupboard', 1, 'tvtable.jpg', '155.55', 1, 'Did anyone ever tell you there is no need for a table under the TV? Why use a table when you can use this simple stylish cupboard!', 'TV001');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `productthumb`
--

CREATE TABLE `productthumb` (
  `id` int(11) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `productthumb`
--

INSERT INTO `productthumb` (`id`, `image_path`, `product_id`) VALUES
(1, 'kapike2.jpg', 1),
(2, 'kapike3.jpg', 1),
(3, 'keerdkapp.jpg', 2),
(4, 'kolmaslaud1.jpg', 3),
(5, 'kolmaslaud2.jpg', 3),
(6, 'laud2.jpg', 4),
(7, 'laud3.jpg', 4),
(8, 'teinelaud2.jpg', 5),
(9, 'teinelaud3.jpg', 5),
(10, 'mänguasjakast1.jpg', 6),
(12, 'tvalus2.jpg', 8),
(13, 'tvalus3.jpg', 8),
(14, 'vannitoakapp.jpg', 9),
(15, 'babybed1.jpg', 10),
(16, 'babybed2.jpg', 10),
(17, 'bigbed.jpg', 11),
(18, 'alus3.jpg', 12),
(19, 'alus.jpg', 13),
(20, 'asi.jpg', 14),
(21, 'asi2.jpg', 15),
(22, 'auguga.jpg', 16),
(23, 'auguga2.jpg', 16),
(24, 'dunner.jpg', 17),
(25, 'vaas1.jpg', 18),
(26, 'vaas2.jpg', 18),
(27, 'markmik1.jpg', 19),
(28, 'markmik2.jpg', 19),
(29, 'markmik3.jpg', 19),
(30, 'markmik4.jpg', 19),
(31, 'markmik01.jpg', 20),
(32, 'markmik04.jpg', 21),
(33, 'kapike1.jpg', 1),
(34, 'kapid.jpg', 2),
(35, 'kolmaslaud3.jpg', 3),
(36, 'laud1.jpg', 4),
(37, 'teinelaud1.jpg', 5),
(38, 'mänguasjakast.jpg', 6),
(40, 'tvalus1.jpg', 8),
(41, 'kapp.jpg', 9),
(42, 'babybed.jpg', 10),
(43, 'bigbigbed.jpg', 11),
(45, 'alus2.jpg', 12),
(46, 'tvtable.jpg', 22),
(47, 'tvtable2.jpg', 22);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `producttype`
--

CREATE TABLE `producttype` (
  `product_type_id` tinyint(4) NOT NULL,
  `product_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `producttype`
--

INSERT INTO `producttype` (`product_type_id`, `product_type`) VALUES
(1, 'Furniture'),
(2, 'Woodturning'),
(3, 'Sketchbooks');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `translations`
--

CREATE TABLE `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` text,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Andmete tõmmistamine tabelile `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
(1, 'Action', 'et', 'Tegevus', 'global', 'global'),
(2, 'Home', 'et', 'Avaleht', 'global', 'global'),
(3, 'Furniture', 'et', 'Mööbel', 'global', 'global'),
(4, 'Woodturning', 'et', 'Treimistööd', 'global', 'global'),
(5, 'Sketchbooks', 'et', 'Märkmikud', 'global', 'global'),
(6, 'About', 'et', 'Meist', 'global', 'global'),
(7, 'Contact', 'et', 'Kontakt', 'global', 'global'),
(8, 'Classic Wooden Cupboard', 'et', 'Klassikaline kummut', 'global', 'global'),
(9, 'Bookcase \"Twist\"', 'et', 'Raamaturiiul \"Twist\"', 'global', 'global'),
(20, 'Please sign in', 'et', 'Palun logige sisse', 'global', 'global'),
(21, 'Username', 'et', 'Kasutajanimi', 'global', 'global'),
(22, 'Password', 'et', 'Parool', 'global', 'global'),
(23, 'Sign in', 'et', 'Logi sisse', 'global', 'global'),
(24, 'Coffee Table \"Paulig\"', 'et', 'Kohvilaud \"Paulig\"', 'global', 'global'),
(25, 'Coffee Table \"Curvy\"', 'et', 'Kohvilaud \"Curvy\"', 'global', 'global'),
(26, 'Coffee Table \"Light\"', 'et', 'Kohvilaud \"Light\"', 'global', 'global'),
(27, 'Toy Box', 'et', 'Mänguasjakast', 'global', 'global'),
(28, 'TV Table', 'et', 'Telerilaud', 'global', 'global'),
(29, 'Bathroom Cupboard', 'et', 'Vannitoakapp', 'global', 'global'),
(30, 'Chidlbed \"Crib\"', 'et', 'Aiavoodi \"Crib\"', 'global', 'global'),
(31, 'Bed \"Natural\"', 'et', 'Voodi \"Natural\"', 'global', 'global'),
(32, 'TV Cupboard', 'et', 'Telerikapp', 'global', 'global'),
(56, 'Plate \"Wave\"', 'et', 'Taldrik \"Wave\"', 'global', 'global'),
(57, 'Plate \"Round\"', 'et', 'Taldrik \"Round\"', 'global', 'global'),
(58, 'Egg Cup \"Tiny\"', 'et', 'Munatops \"Tiny\"', 'global', 'global'),
(59, 'Egg Cup \"Thin\"', 'et', 'Munatops \"Thin\"', 'global', 'global'),
(60, 'Plate \"Special\"', 'et', 'Taldrik \"Special\"', 'global', 'global'),
(61, 'Bat \"Dunner\"', 'et', 'Kurikas \"Dunner\"', 'global', 'global'),
(62, 'Cup \"Dreamy\"', 'et', 'Tops \"Dreamy\"', 'global', 'global'),
(63, 'Logbook', 'et', 'Logiraamat', 'global', 'global'),
(64, 'Sketchbook \"Etch-a-Sketch\"', 'et', 'Märkmik \"Etch-a-Sketch\"', 'global', 'global'),
(65, 'Sketchbook \"Stripe\"', 'et', 'Märkmik \"Stripe\"', 'global', 'global'),
(66, 'This high quality cute capacious cupboard is very suitable for your bedroom and living room. ', 'et', 'See armas kvaliteetne ning mahukas kummut on igati sobilik nii Sinu magamis- kui ka elutuppa.', 'global', 'global'),
(67, 'items left in stock', 'et', 'toodet laos', 'global', 'global'),
(68, 'Add to cart', 'et', 'Lisa korvi', 'global', 'global'),
(69, 'Want something different? Want your friends to be jealous? Then this bookcase is exactly what you\'re looking for!', 'et', 'Tahad midagi teistsugust? Midagi, mis sõbrad kadedaks ajaks? Sel juhul on see riiul just Sinule tehtud!', 'global', 'global'),
(70, 'This egg cup may seem tiny, but it is never too tiny for your egg!', 'et', 'See munatops võib tunduda tilluke, kuid pole kunagi liiga tilluke Sinu muna jaoks!', 'global', 'global'),
(71, 'This little plate is a perfect place for your light snacks, e.g peanuts, raisins, etc.', 'et', 'See väike alus on täiuslik Sinu väikeste snäkkide jaoks nagu rosinad, pähklid jms.', 'global', 'global'),
(72, 'This high quality coffee table is very suitable for your living room. It doesn\'t take much space and is easily cleanable.', 'et', 'Kvaliteetne kohvilaud, mis sobib ideaalselt Sinu elutuppa. See ei nõua palju ruumi ning seda on väga lihtne puhastada.', 'global', 'global'),
(73, 'This beautiful coffee table is made for people who want something different in their life.', 'et', 'See ilus kohvilaud on loodud inimestele, kes tahavad enda ellu midagi teistsugust.', 'global', 'global'),
(74, 'This simple coffee table suits in every living room!', 'et', 'Selline lihtne kohvilaud sobib igasse elutuppa!', 'global', 'global'),
(75, 'Unique and comfortable home for your children\'s toys.', 'et', 'Unikaalne ning mugav kodu Sinu laste mänguasjadele.', 'global', 'global'),
(76, 'This practical TV table is a perfect product for you if you like ceeping all your things in one place.', 'et', 'Praktiline telerilaud, mis on Sinu jaoks täiuslik, kui Sulle meeldib, et kõik sinu asjad on ühes kohas.', 'global', 'global'),
(77, 'This high quality bathroom cupboard can fit all your towels!', 'et', 'See kvaliteetne vannitoakapp suudab ära mahutada kõik Sinu rätikud!', 'global', 'global'),
(78, 'In this childbed, your child can invite all the stuffed toys to check out his/her crib!', 'et', 'Sellesse aiavoodisse mahuvad ka Sinu lapse lemmikmänguasjad!', 'global', 'global'),
(79, 'In this bed, you will never have any bad dreams!', 'et', 'Selles voodis ei kimbuta Sind enam kunagi halvad unenäod!', 'global', 'global'),
(80, 'If you want your peanut plate to differ from your friends\', this is what we recommend!', 'et', 'Kui Sa soovid, et Sinu pähklialus erineks sõprade omast, siis soovitame Sulle just seda.', 'global', 'global'),
(81, 'This thin egg cup will never let your egg down.', 'et', 'See õhuke munatops ei lase Su munal iial kukkuda.', 'global', 'global'),
(82, 'This unique plate is hard to find, but you just found it!', 'et', 'Sellist unikaalset kausikest on raske leida, aga Sa just leidsid!', 'global', 'global'),
(83, 'This unique bat it perfect to scare away all the bad things in life. You might not want to play tennis with it..', 'et', 'See kurikas on ideaalne, et hirmutada ära kõik halvad asjad Sinu elus. Tennist sellega igaks juhuks ei mängiks..', 'global', 'global'),
(84, 'This wooden cup is small, but not too small. And very lovely.', 'et', 'See puidust tops on väike, kuid mitte liiga väike. Ja igati armas.', 'global', 'global'),
(85, 'Logbook to sauna. Made of birch bark and oak.\r\nDimensions: 215x235 mm.', 'et', 'Logiraamat sauna. Tehtud kasetohust ja männipuidust. Mõõdud: 215x235 mm.', 'global', 'global'),
(86, 'Perfect unique sketchbook to carry around with you.', 'et', 'Täiuslik unikaalne märkmik, mida endaga igal pool kaasas kanda.', 'global', 'global'),
(87, 'Unique sketcbook for writers, artists and people who like to keep notes. ', 'et', 'Omapärane märkmik kirjutajatele, joonistajatele ning inimestele, kellele meeldib märkmeid teha.', 'global', 'global'),
(88, 'Did anyone ever tell you there is no need for a table under the TV? Why use a table when you can use this simple stylish cupboard!', 'et', 'Kas oled kunagi kuulnud, et teleri all ei pea laud olema? Milleks kasutada lauda, kui võid kasutada seda lihtsalt stiilset kappi!', 'global', 'global'),
(89, 'Name', 'et', 'Nimi', 'global', 'global'),
(90, 'Quantity', 'et', 'Kogus', 'global', 'global'),
(91, 'Price', 'et', 'Hind', 'global', 'global'),
(92, '1', 'et', '{untranslated}', 'global', 'global'),
(95, 'Total:', 'et', 'Kogusumma:', 'global', 'global'),
(96, 'Review Cart and Check Out', 'et', 'Vaata ostukorv üle ja jätka', 'global', 'global'),
(97, 'Checkout', 'et', 'Jätka', 'global', 'global'),
(98, 'Shopping Cart', 'et', 'Ostukorv', 'global', 'global'),
(99, 'Empty Cart', 'et', 'Tühjenda korv', 'global', 'global'),
(100, 'Remove Item', 'et', 'Eemalda toode', 'global', 'global'),
(103, 'My name is', 'et', 'Minu nimi on', 'global', 'global'),
(104, 'My email is', 'et', 'Minu e-mail on', 'global', 'global'),
(105, 'My number is', 'et', 'Minu telefoninumber on', 'global', 'global'),
(106, 'Send package to', 'et', 'Saada pakk (kuhu?)', 'global', 'global'),
(107, 'Pay shipping on package arrival', 'et', 'Postikulu makstakse paki kätesaamisel', 'global', 'global'),
(108, 'Send to Smartpost', 'et', 'Saada Smartpostiga', 'global', 'global'),
(109, 'List of Smartpost package machines', 'et', 'Nimekiri Smartposti automaatidest', 'global', 'global'),
(110, 'Send to Omniva', 'et', 'Saada Omnivaga', 'global', 'global'),
(111, 'List of Omniva package machines', 'et', 'Nimekiri Omniva automaatidest', 'global', 'global'),
(112, 'Send with errand-boy', 'et', 'Saada kulleriga', 'global', 'global'),
(113, 'Send to post office', 'et', 'Saada postkontorisse', 'global', 'global'),
(114, 'I\'ll pick it up myself', 'et', 'Tulen ise järele', 'global', 'global'),
(115, 'Free shipping!', 'et', 'Postikulu ei lisanud', 'global', 'global'),
(116, 'Submit', 'et', 'Kinnita', 'global', 'global'),
(117, 'Additional Information', 'et', 'Lisainfo/kommentaarid', 'global', 'global'),
(118, 'My full name is', 'et', 'Minu täispikk nimi on', 'global', 'global'),
(119, 'My question is', 'et', 'Minu küsimus on', 'global', 'global'),
(120, 'Send', 'et', 'Saada', 'global', 'global'),
(121, 'Doggo', 'et', '{untranslated}', 'global', 'global'),
(122, 'Such elp, much teamwork', 'et', '{untranslated}', 'global', 'global'),
(123, 'Doggo Doggo', 'et', '{untranslated}', 'global', 'global'),
(124, 'More teamwork', 'et', '{untranslated}', 'global', 'global'),
(125, 'Home', 'ru', 'домой', 'global', 'global'),
(126, 'Furniture', 'ru', 'мебель', 'global', 'global'),
(127, 'Woodturning', 'ru', 'Токарные', 'global', 'global'),
(128, 'Sketchbooks', 'ru', 'альбомы для зарисовок\r\n', 'global', 'global'),
(129, 'About', 'ru', 'о компании', 'global', 'global'),
(130, 'Contact', 'ru', 'контакты', 'global', 'global'),
(137, 'Please sign in', 'ru', 'пожалуйста, войдите в аккаунт', 'global', 'global'),
(138, 'Username', 'ru', 'имя пользователя', 'global', 'global'),
(139, 'Password', 'ru', 'пароль', 'global', 'global'),
(140, 'Sign in', 'ru', 'войти', 'global', 'global'),
(141, 'Classic Wooden Cupboard', 'ru', 'классический деревянный стеллаж', 'global', 'global'),
(142, 'Bookcase \"Twist\"', 'ru', 'книжный шкаф \"Твист\"\r\n', 'global', 'global'),
(143, 'Coffee Table \"Paulig\"', 'ru', 'кофейный столик \"паулиг\"\r\n', 'global', 'global'),
(144, 'Coffee Table \"Curvy\"', 'ru', 'кофейный столик \"изогнутый\"\r\n', 'global', 'global'),
(145, 'Coffee Table \"Light\"', 'ru', 'кофейный столик \"легкий/светлый\"\r\n', 'global', 'global'),
(146, 'Toy Box', 'ru', 'коробка для игрушек', 'global', 'global'),
(147, 'TV Table', 'ru', 'стол для телевизора\r\n', 'global', 'global'),
(148, 'Bathroom Cupboard', 'ru', 'стеллаж для ванной\r\n', 'global', 'global'),
(149, 'Chidlbed \"Crib\"', 'ru', 'детская кроватка \"криб\"\r\n', 'global', 'global'),
(150, 'Bed \"Natural\"', 'ru', 'кровать \"натуральная\"\r\n', 'global', 'global'),
(151, 'TV Cupboard', 'ru', 'стеллаж для телевизора', 'global', 'global'),
(152, 'This high quality cute capacious cupboard is very suitable for your bedroom and living room. ', 'ru', 'Это высококачественный стеллаж, великолепно подходящий для вашей спальни и гостиной', 'global', 'global'),
(153, 'items left in stock', 'ru', 'осталось на складе', 'global', 'global'),
(154, 'Add to cart', 'ru', 'в корзину', 'global', 'global'),
(155, 'Want something different? Want your friends to be jealous? Then this bookcase is exactly what you\'re looking for!', 'ru', ' Хотите чего-то необычного? Хотите, чтобы ваши друзья вам завидовали? Этот кнмжный шкаф именно то, что вы искали.\r\n', 'global', 'global'),
(156, 'This high quality coffee table is very suitable for your living room. It doesn\'t take much space and is easily cleanable.', 'ru', 'Этот высококачественный кофейный столик замечательно подходит для вашей спальни\r\n', 'global', 'global'),
(157, 'This beautiful coffee table is made for people who want something different in their life.', 'ru', 'Этот чудесный кофейный столик сделан для тех, кто хочет чего-то необычного\r\n', 'global', 'global'),
(158, 'This simple coffee table suits in every living room!', 'ru', 'Этот простой кофейный стллик подойдет к любой гостиной\r\n', 'global', 'global'),
(159, 'Unique and comfortable home for your children\'s toys.', 'ru', 'Уникальный и комфортный дом для игрушек вашего ребенка', 'global', 'global'),
(160, 'This practical TV table is a perfect product for you if you like ceeping all your things in one place.', 'ru', 'Этот практичный столик для телевизора идеально вам подойдет, если вы любите хранить вещи в одном месте\r\n', 'global', 'global'),
(161, 'This high quality bathroom cupboard can fit all your towels!', 'ru', 'Этот высококачественный стеллаж для ванной сможет вместить все ваши полотенца\r\n', 'global', 'global'),
(162, 'In this childbed, your child can invite all the stuffed toys to check out his/her crib!', 'ru', 'В эту детскую кроватку ребенок смодет пригласить все свои мягкие игрушки\r\n', 'global', 'global'),
(163, 'In this bed, you will never have any bad dreams!', 'ru', 'В этой коовати у вас будут только хорошие сны\r\n', 'global', 'global'),
(164, 'Plate \"Wave\"', 'ru', 'блюдо \"волна\"\r\n', 'global', 'global'),
(165, 'This little plate is a perfect place for your light snacks, e.g peanuts, raisins, etc.', 'ru', 'Это блюдо является прекрасным местом для ваших легких закусок, таких как арахис или изюм.\r\n', 'global', 'global'),
(166, 'Plate \"Round\"', 'ru', 'блюдо \"круглое\"\r\n', 'global', 'global'),
(167, 'If you want your peanut plate to differ from your friends\', this is what we recommend!', 'ru', ' Если вы хотите, чтобы блюдо для вашего арахиса было не таким, как у ваших друзей - мы реклмендуем это-э.\r\n', 'global', 'global'),
(168, 'Egg Cup \"Tiny\"', 'ru', 'подставка для яиц \"маленькая\"\r\n', 'global', 'global'),
(169, 'This egg cup may seem tiny, but it is never too tiny for your egg!', 'ru', 'Эта подставка для яиц может показаться маленькой, но она никогда не окажется слишком маленькой для ваших яиц.\r\n', 'global', 'global'),
(170, 'Egg Cup \"Thin\"', 'ru', 'подставка для яиц \"тонкая\"\r\n', 'global', 'global'),
(171, 'This thin egg cup will never let your egg down.', 'ru', 'Эта тонкая подставка ддя яиц никогда вас не подведет\r\n', 'global', 'global'),
(172, 'Plate \"Special\"', 'ru', 'тарелка \"специальная\"\r\n', 'global', 'global'),
(173, 'This unique plate is hard to find, but you just found it!', 'ru', 'Эту уникальную тарелку сложно найти, но вам только что удалось!\r\n', 'global', 'global'),
(174, 'Bat \"Dunner\"', 'ru', 'бейсбольная бита \"обеденная\"\r\n', 'global', 'global'),
(175, 'This unique bat it perfect to scare away all the bad things in life. You might not want to play tennis with it..', 'ru', 'эта уникальная бита идеальна для отпугивания всех плохих вещей. Возможно, не стоит играть ею в теннис\r\n', 'global', 'global'),
(176, 'Cup \"Dreamy\"', 'ru', 'чашка \"мечтательная\"\r\n', 'global', 'global'),
(177, 'This wooden cup is small, but not too small. And very lovely.', 'ru', 'Эта деревянная чашка маленькая. Но не слишком. И очень славная.\r\n', 'global', 'global'),
(178, 'Logbook', 'ru', 'журнал\r\n', 'global', 'global'),
(179, 'Logbook to sauna. Made of birch bark and oak.\r\nDimensions: 215x235 mm.', 'ru', 'Журнал для сауны из бересты и дуба\r\nРазмеры: 215x235 мм', 'global', 'global'),
(180, 'Sketchbook \"Etch-a-Sketch\"', 'ru', 'Альбом для зарисовок \"Етч-а-Скетч\"', 'global', 'global'),
(181, 'Perfect unique sketchbook to carry around with you.', 'ru', 'Идеальный уникальный альбом для зарисовок, который всегда с вами.\r\n', 'global', 'global'),
(182, 'Sketchbook \"Stripe\"', 'ru', 'альбом для зарисовок \"полоса\"\r\n', 'global', 'global'),
(183, 'Unique sketcbook for writers, artists and people who like to keep notes. ', 'ru', 'Уникальный альбом для писателей, художников и всех, кто любит делать заметки.\r\n', 'global', 'global'),
(184, 'Did anyone ever tell you there is no need for a table under the TV? Why use a table when you can use this simple stylish cupboard!', 'ru', 'Вам никто не говорил, что стол под телевизором не обязателен? Зачем использовать стол, когда можно воспользоваться этим стильным стеллажом.\r\n', 'global', 'global'),
(185, 'My full name is', 'ru', 'мое имя\r\n', 'global', 'global'),
(186, 'My email is', 'ru', 'мой адрес электроноой почты', 'global', 'global'),
(187, 'My question is', 'ru', 'мой вопрос', 'global', 'global'),
(188, 'Send', 'ru', 'отправить\r\n', 'global', 'global'),
(189, 'Doggo', 'ru', '{untranslated}', 'global', 'global'),
(190, 'Such elp, much teamwork', 'ru', '{untranslated}', 'global', 'global'),
(191, 'Doggo Doggo', 'ru', '{untranslated}', 'global', 'global'),
(192, 'More teamwork', 'ru', '{untranslated}', 'global', 'global'),
(193, 'Shopping Cart', 'ru', 'корзина\r\n', 'global', 'global'),
(194, 'Empty Cart', 'ru', 'корзина пуста', 'global', 'global'),
(195, 'Name', 'ru', 'имя', 'global', 'global'),
(196, 'Quantity', 'ru', 'количество\r\n', 'global', 'global'),
(197, 'Price', 'ru', 'стоимость', 'global', 'global'),
(198, 'Action', 'ru', 'действие', 'global', 'global'),
(199, '1', 'ru', '{untranslated}', 'global', 'global'),
(200, 'Remove Item', 'ru', 'Item удалить \r\n', 'global', 'global'),
(205, 'Total:', 'ru', 'всего', 'global', 'global'),
(206, 'Review Cart and Check Out', 'ru', 'просмотреть корзину и оплатить\r\n', 'global', 'global'),
(207, 'Checkout', 'ru', 'оплата\r\n', 'global', 'global'),
(208, 'My name is', 'ru', 'мое имя\r\n', 'global', 'global'),
(209, 'My number is', 'ru', 'мой номер', 'global', 'global'),
(210, 'Send package to', 'ru', 'адрес доставки', 'global', 'global'),
(211, 'Pay shipping on package arrival', 'ru', 'оплатить доставку при получении\r\n', 'global', 'global'),
(212, 'Send to Smartpost', 'ru', 'отправить смартпостом\r\n', 'global', 'global'),
(213, 'List of Smartpost package machines', 'ru', 'точки получения смартпост', 'global', 'global'),
(214, 'Send to Omniva', 'ru', 'отправить Омнивией\r\n', 'global', 'global'),
(215, 'List of Omniva package machines', 'ru', 'точки получения Омнивии\r\n', 'global', 'global'),
(216, 'Send with errand-boy', 'ru', 'отправить курьером\r\n', 'global', 'global'),
(217, 'Send to post office', 'ru', 'доставка до почтового отделения\r\n', 'global', 'global'),
(218, 'I\'ll pick it up myself', 'ru', 'заберу самостоятельно\r\n', 'global', 'global'),
(219, 'Free shipping!', 'ru', 'Бесплатная доставка\r\n', 'global', 'global'),
(220, 'Additional Information', 'ru', 'дополнительная информация\r\n', 'global', 'global'),
(221, 'Submit', 'ru', 'отправить', 'global', 'global'),
(223, 'Who are we?', 'et', 'Kes me oleme?', 'global', 'global'),
(224, 'We are three friends who share a common passion, making things out of wood. We can make almost anything out of it, starting from small details and ending with furniture. If you have an idea f', 'et', 'Hei!\r\nOleme Geili ja Jevgeni. Mõlemad oleme tisleriks õppinud ning pärast kooli leidsime, et meie erialased visioonid ühtivad ja nii saigi meist ühtne tiim. \r\nPeame ennast looduslähedasteks inimesteks ja kõik mida teeme, üritame teha võimalikult naturaalsetest materjalidest. Enamasti kasutame selleks täispuitu.\r\nMeie loomingust leiate lisaks meie disainitud dekoorelementidele ka praktilist toodangut.', 'global', 'global'),
(226, 'Who are we?', 'ru', 'Кто мы?', 'global', 'global'),
(227, 'We are three friends who share a common passion, making things out of wood. We can make almost anything out of it, starting from small details and ending with furniture. If you have an idea f', 'ru', 'Привет! Нас зовут Гейли и Женя. Так сложилось, что мы вместе учились по специальности – столяр и уже во время учебы поняли, что наши взгляды совпадают. Так из нас вышла отличная команда. По своему образу жизни, мы очень близки к природе и все что мы создаем, стараемся делать из натуральных материалов. В большинстве своем мы используем древесину. В нашем творчестве вы можете найти лично придуманные элементы декора а также и весма практичные вещи.', 'global', 'global'),
(228, 'In addition to decor elements, practical products can be found from our creations.', 'et', 'Meie loomingust leiate lisaks meie disainitud dekoorelementidele ka praktilist toodangut.', 'global', 'global'),
(230, 'We consider ourselves as people of nature and all we build, we try to make from natural materials. Generally full timber.\r\n', 'et', 'Peame ennast looduslähedasteks inimesteks ja kõik mida teeme, üritame teha võimalikult naturaalsetest materjalidest. Enamasti kasutame selleks täispuitu.', 'global', 'global'),
(231, 'Hello there!\r\nWe are Geili and Jevgeni. We have both studied carpentry and after school we found that we share our professional visions and decided to become a unified team.', 'et', 'Hei!\r\nOleme Geili ja Jevgeni. Mõlemad oleme tisleriks õppinud ning pärast kooli leidsime, et meie erialased visioonid ühtivad ja nii saigi meist ühtne tiim. ', 'global', 'global'),
(234, 'Hello there!\r\nWe are Geili and Jevgeni. We have both studied carpentry and after school we found that we share our professional visions and decided to become a unified team.', 'ru', '{untranslated}', 'global', 'global'),
(239, 'We consider ourselves as people of nature and all we build, we try to make from natural materials. Generally full timber.\r\n', 'ru', NULL, 'global', 'global'),
(240, 'In addition to decor elements, practical products can be found from our creations.', 'ru', NULL, 'global', 'global'),
(245, '', 'et', '{untranslated}', 'global', 'global'),
(246, 'Hello there!\r\nWe are Geili and Jevgeni. We have both studied carpentry and after school we found that we share our professional visions and decided to become a unified team.\r\nWe consider ours', 'et', '{untranslated}', 'global', 'global'),
(250, '', 'ru', '{untranslated}', 'global', 'global'),
(251, 'Hello there!\r\nWe are Geili and Jevgeni. We have both studied carpentry and after school we found that we share our professional visions and decided to become a unified team.\r\nWe consider ours', 'ru', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Andmete tõmmistamine tabelile `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `is_admin`, `password`, `email`, `deleted`) VALUES
(1, 'admin', 0, '$2y$10$GmSv3E.lKipCLuI2TDCdSOE3uJ5TFzfX1H9j8NtW5A6nBtcbz1BRm', 'admin@example.com', 0);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indeksid tabelile `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeksid tabelile `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `homebackground`
--
ALTER TABLE `homebackground`
  ADD PRIMARY KEY (`home_id`);

--
-- Indeksid tabelile `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `productthumb`
--
ALTER TABLE `productthumb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_thumbs_products_product_id_fk` (`product_id`);

--
-- Indeksid tabelile `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indeksid tabelile `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`translation_id`),
  ADD UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`);

--
-- Indeksid tabelile `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UNIQUE` (`user_name`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT tabelile `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabelile `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `homebackground`
--
ALTER TABLE `homebackground`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT tabelile `order`
--
ALTER TABLE `order`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT tabelile `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT tabelile `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Autocreated', AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT tabelile `productthumb`
--
ALTER TABLE `productthumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT tabelile `producttype`
--
ALTER TABLE `producttype`
  MODIFY `product_type_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT tabelile `translations`
--
ALTER TABLE `translations`
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT tabelile `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `productthumb`
--
ALTER TABLE `productthumb`
  ADD CONSTRAINT `product_thumbs_products_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
