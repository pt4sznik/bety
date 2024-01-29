-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Sty 2024, 23:01
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bety`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bety`
--

CREATE TABLE `bety` (
  `IDbety` int(11) NOT NULL,
  `kogo` text NOT NULL,
  `kwota` tinyint(5) NOT NULL,
  `wygrana` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `bety`
--

INSERT INTO `bety` (`IDbety`, `kogo`, `kwota`, `wygrana`, `data`) VALUES
(1, 'ptasznik', 50, '123,86', '2024-01-28'),
(2, 'ptasznik', 2, '15,18', '2024-01-29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `portfel`
--

CREATE TABLE `portfel` (
  `id` int(11) NOT NULL,
  `ptasznik` text NOT NULL,
  `damper` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `portfel`
--

INSERT INTO `portfel` (`id`, `ptasznik`, `damper`) VALUES
(1, '31,88\r\n', '12,92');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bety`
--
ALTER TABLE `bety`
  ADD PRIMARY KEY (`IDbety`);

--
-- Indeksy dla tabeli `portfel`
--
ALTER TABLE `portfel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `bety`
--
ALTER TABLE `bety`
  MODIFY `IDbety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `portfel`
--
ALTER TABLE `portfel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
