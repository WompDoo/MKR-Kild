-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 26, 2017 kell 03:48 EL
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
-- Tabeli struktuur tabelile `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Rete-Keyt Uibo', 'retekeyt@gmail.com', '+37256811269', 'J. Kärneri, 32', 'errand-boy', '', 13621),
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
(77, 39, 14, 1, 19.99);

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
(1, 'Classic Wooden Cupboard', 1, 'kapike1.jpg', '79.99', 4, 'This high quality cute capacious cupboard is very suitable for your bedroom and living room. ', 'CB001'),
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
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Andmete tõmmistamine tabelile `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
(1, 'Action', 'ee', '{untranslated}', 'global', 'global');

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
(1, 'admin', 0, '$2y$10$MY/DmfN2mf19qMDW6ydOiuHO67JEmzrL5wEyaoGo1U4laBtmW0v72', 'admin@example.com', 0);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT tabelile `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabelile `order`
--
ALTER TABLE `order`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT tabelile `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
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
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
