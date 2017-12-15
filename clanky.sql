-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1:3306
-- Vytvořeno: Stř 13. pro 2017, 16:31
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
-- Struktura tabulky `clanky`
--

DROP TABLE IF EXISTS `clanky`;
CREATE TABLE IF NOT EXISTS `clanky` (
  `ID_clanky` int(4) NOT NULL AUTO_INCREMENT,
  `nazev` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `anotace` varchar(500) COLLATE utf8_czech_ci NOT NULL,
  `URL` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `vlozil` int(3) NOT NULL,
  `rencenzovano` int(1) NOT NULL,
  `recenzoval` int(4) NOT NULL,
  PRIMARY KEY (`ID_clanky`),
  KEY `index` (`ID_clanky`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `clanky`
--

INSERT INTO `clanky` (`ID_clanky`, `nazev`, `anotace`, `URL`, `vlozil`, `rencenzovano`, `recenzoval`) VALUES
(1, 'NÃ¡zev', 'anotace', 'upload/Faktura vystavenÃ¡_176873_11122017.pdf', 5, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
