-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 29. 05 2017 kl. 20:02:08
-- Serverversion: 10.1.10-MariaDB
-- PHP-version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gogreen`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `butik`
--

CREATE TABLE `butik` (
  `id` int(11) NOT NULL,
  `navn` varchar(50) NOT NULL,
  `info` varchar(250) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `butik`
--

INSERT INTO `butik` (`id`, `navn`, `info`, `lat`, `lng`, `kategori`) VALUES
(1, 'LØS market', 'Saxogade 77, 1662 København V', 55.6683619, 12.5492031, 1),
(2, 'Organic hair by Zenz', 'Rosenborggade 8, København V', 55.6683569, 12.5162811, 2),
(3, 'Gourmandiet', ' Rosenvængets Allé 7A, 2100 København Ø', 55.6989681, 12.5772287, 3),
(4, 'Restaurant Bæst', ' Guldbergsgade 29, 2200 København N', 55.6922215, 12.5537262, 3),
(5, 'Yogamii', 'Tranevej 16, København NV', 55.5924416, 12.3413323, 4),
(6, 'Ecouture', 'Læderstræde 5, 1201 København K', 55.6784821, 12.5768306, 4),
(7, 'Babyfabrikken', 'Parmagade 14, 2300 København S', 55.6527113, 12.6109716, 5),
(8, 'Merkur Cooperative Bank', ' Vesterbrogade 40, 1620 København V', 55.6725121, 12.553629, 5),
(9, 'Scandic Copenhagen', 'Vester Søgade 6, 1601 København V', 55.6749498, 12.5574213, 6),
(10, 'Ibsens Hotel', 'Vendersgade 23, 1363 København K', 55.6846973, 12.563967, 6),
(11, 'LETSGO delebilfond', 'Nørre Farimagsgade 11, 1364 København K', 55.680977, 12.5620823, 7),
(12, 'Blæk & print', 'Store Kongensgade 54, 1264 København K', 55.6834186, 12.5849916, 7);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `virksomhedstype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `kategori`
--

INSERT INTO `kategori` (`id`, `virksomhedstype`) VALUES
(1, 'daglivarer'),
(2, 'wellness'),
(3, 'mad & drikke'),
(4, 'retail'),
(5, 'aktivitet'),
(6, 'overnatning'),
(7, 'service');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `butik`
--
ALTER TABLE `butik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `butik`
--
ALTER TABLE `butik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
