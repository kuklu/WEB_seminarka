-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1:3306
-- Vytvořeno: Stř 13. pro 2017, 16:27
-- Verze serveru: 5.7.19
-- Verze PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `konference`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID_user` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `heslo` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `jmeno` varchar(25) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `funkce` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `prava` int(3) NOT NULL,
  `schvalen` int(3) NOT NULL,
  PRIMARY KEY (`ID_user`),
  KEY `index` (`ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`ID_user`, `email`, `heslo`, `jmeno`, `prijmeni`, `funkce`, `prava`, `schvalen`) VALUES
(1, 'petr.racek@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 'Petr', 'Ráček', 'admin', 4, 1),
(2, 'jerabkovalucka@seznam.cz', '0cc175b9c0f1b6a831c399e269772661', 'Lucie', 'Jeřábková', 'admin', 4, 0),
(3, 'recenze@konference.cz', '0cc175b9c0f1b6a831c399e269772661', 'Jan', 'Recenze', 'recenzent', 3, 0),
(4, 'admin@konference.cz', '0cc175b9c0f1b6a831c399e269772661', 'Jose', 'Admin', 'admin', 1, 0),
(5, 'ucastnik@konference.cz', '0cc175b9c0f1b6a831c399e269772661', 'Lucie', 'Admin', 'ucastnik', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
