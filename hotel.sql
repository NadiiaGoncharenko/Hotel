-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Jan 2022 um 22:37
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `hotel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `newspost`
--

CREATE TABLE `newspost` (
  `newsPostID` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `newspost`
--

INSERT INTO `newspost` (`newsPostID`, `timestamp`, `title`, `text`, `img`) VALUES
(6, '2022-01-12 15:57:11', 'New Decoration!', 'Checkout our newly decorated hallway!', 'uploads/news/thumbnail-Hotel-lobby.jpg'),
(7, '2022-01-13 16:53:23', 'New: Tent Room', 'Exciting news, our new tent room are ready!From the 14.01.2022 it is possible to sleep directly at the beach without having to forego comfort!Find more information at ', 'uploads/news/thumbnail-tent.jpg'),
(8, '2022-01-16 07:12:29', 'Open Air bed!', 'With today 20 new open air beds are avariable! \r\nSee for yourself how calming the sea breeze can be.', 'uploads/news/thumbnail-open-air-bed.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ticket`
--

CREATE TABLE `ticket` (
  `ticketID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `statusID` int(11) NOT NULL DEFAULT 1,
  `creatorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ticket`
--

INSERT INTO `ticket` (`ticketID`, `title`, `comment`, `text`, `img`, `timestamp`, `statusID`, `creatorID`) VALUES
(7, 'This is my complain!', NULL, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'uploads/user/thumbnail-ticket.png', '2022-01-19 20:39:57', 1, 77);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ticketstatus`
--

CREATE TABLE `ticketstatus` (
  `statusID` int(11) NOT NULL,
  `tstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ticketstatus`
--

INSERT INTO `ticketstatus` (`statusID`, `tstatus`) VALUES
(1, 'open'),
(2, 'closed.success'),
(3, 'closed.failed');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `roleID` int(11) DEFAULT 3,
  `ticketId` int(11) DEFAULT NULL,
  `newsPostID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`userID`, `salutation`, `fname`, `lname`, `username`, `email`, `password`, `active`, `roleID`, `ticketId`, `newsPostID`) VALUES
(62, 'Dr.', 'Fiona', 'Kumhofer', 'fio', 'wi20b061@technikum-wien.at', '$2y$10$n7hxKHvbLuufT5RPS1hHq.0GviL8PziT8hqYi5hHa52fe/P126O7u', 1, 1, NULL, NULL),
(63, 'Dr.', 'John', 'Snow', 'JS', 'got@gmail.com', '$2y$10$5VRV1EWSszqsqyd7VtfKlO.oUyh.GmivWHxmcwQxpP2IO3MZLPD36', 1, 2, NULL, NULL),
(77, 'Mrs.', 'Katharina', 'Pam', 'kathi', 'kpam@yahoo.com', '$2y$10$D.fyQWTl50cNA715kor7Y.15WvX8VF01EdkJzLNBbVrvsnGx2bcCW', 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userrole`
--

CREATE TABLE `userrole` (
  `roleID` int(50) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `userrole`
--

INSERT INTO `userrole` (`roleID`, `role`) VALUES
(1, 'admin'),
(2, 'tech'),
(3, 'user');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `newspost`
--
ALTER TABLE `newspost`
  ADD PRIMARY KEY (`newsPostID`);

--
-- Indizes für die Tabelle `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `fk_ticketstatusID` (`statusID`),
  ADD KEY `fk_creatorID` (`creatorID`);

--
-- Indizes für die Tabelle `ticketstatus`
--
ALTER TABLE `ticketstatus`
  ADD PRIMARY KEY (`statusID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `fk_ticketID` (`ticketId`),
  ADD KEY `fk_newsPostID` (`newsPostID`),
  ADD KEY `fk_userroleID` (`roleID`);

--
-- Indizes für die Tabelle `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`roleID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `newspost`
--
ALTER TABLE `newspost`
  MODIFY `newsPostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `ticketstatus`
--
ALTER TABLE `ticketstatus`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT für Tabelle `userrole`
--
ALTER TABLE `userrole`
  MODIFY `roleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_creatorID` FOREIGN KEY (`creatorID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `fk_ticketstatusID` FOREIGN KEY (`statusID`) REFERENCES `ticketstatus` (`statusID`);

--
-- Constraints der Tabelle `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_newsPostID` FOREIGN KEY (`newsPostID`) REFERENCES `newspost` (`newsPostID`),
  ADD CONSTRAINT `fk_ticketID` FOREIGN KEY (`ticketId`) REFERENCES `ticket` (`ticketID`),
  ADD CONSTRAINT `fk_userroleID` FOREIGN KEY (`roleID`) REFERENCES `userrole` (`roleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
