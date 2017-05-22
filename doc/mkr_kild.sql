-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 09, 2017 kell 07:02 PL
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
-- Tabeli struktuur tabelile `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Autocreated',
  `product_name` varchar(50) NOT NULL COMMENT 'Autocreated',
  `product_type_id` tinyint(4) NOT NULL DEFAULT '1',
  `product_image` varchar(191) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_qty` int(11) DEFAULT '0',
  `product_details` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_type_id`, `product_image`, `product_price`, `product_qty`, `product_details`) VALUES
(2, 'furniture #2', 1, 'laud.jpg', '123.00', 8, 'teine asi'),
(3, 'Mingi asi', 1, 'Riiul1.jpg', '1231.00', 4, 'kolmas käib kah'),
(5, 'Araablane', 2, 'voodi.jpg', '9.99', 970, 'Osta kohe saad 10 tasuta'),
(8, 'Pls work', 1, 'kapp2.jpg', '45.00', 5, 'I beg pls work'),
(9, 'Viiuldav Riiul', 2, 'laud.jpg', '12.99', 2, 'Laulab sulle laulu'),
(10, 'ORMiga sisestatud asi', 3, '', '39.99', 3, 'Tore asi');

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
(1, 'kapp2.jpg', 2),
(2, 'Riiul1.jpg', 2);

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
(1, 'admin', 1, '$2y$10$3iPUP7nRWBdoT8jcHSg06eEIOxmQihcr5WGOGOBCbDwr1DCzvt16a', 'admin@example.com', 0);

--
-- Indeksid tõmmistatud tabelitele
--

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
-- AUTO_INCREMENT tabelile `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Autocreated', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT tabelile `productthumb`
--
ALTER TABLE `productthumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
