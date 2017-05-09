-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 08, 2017 kell 09:07 AM
-- Serveri versioon: 10.1.16-MariaDB
-- PHP versioon: 5.6.24

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
-- Tabeli struktuur tabelile `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Autocreated',
  `product_name` varchar(50) NOT NULL COMMENT 'Autocreated',
  `product_type_id` tinyint(4) NOT NULL DEFAULT '1',
  `product_image` varchar(191) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_qty` int(11) DEFAULT '0',
  `product_details` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `products`
--

INSERT INTO product (id, `product_name`, `product_type_id`, `product_image`, `product_price`, `product_qty`, `product_details`) VALUES
(1, 'C', 1, 'kapid.jpg', '212.00', 19, 'Ilus asi'),
(2, 'furniture #2', 2, 'laud.jpg', '123.00', 8, 'teine asi'),
(3, 'Mingi asi', 3, 'Riiul1.jpg', '1231.00', 4, 'kolmas käib kah'),
(5, 'Araablane', 2, 'voodi.jpg', '9.99', 970, 'Osta kohe saad 10 tasuta'),
(8, 'Pls work', 3, 'kapp2.jpg', '45.00', 5, 'I beg pls work'),
(9, 'Viiuldav Riiul', 2, 'laud.jpg', '12.99', 2, 'Laulab sulle laulu');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` tinyint(4) NOT NULL,
  `product_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `product_types`
--

INSERT INTO producttype (`product_type_id`, `product_type`) VALUES
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
-- Indeksid tabelile `products`
--
ALTER TABLE product
  ADD PRIMARY KEY (id);

--
-- Indeksid tabelile `product_types`
--
ALTER TABLE producttype
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
-- AUTO_INCREMENT tabelile `products`
--
ALTER TABLE product
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Autocreated', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT tabelile `product_types`
--
ALTER TABLE producttype
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
