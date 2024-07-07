-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 10:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewall8`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(11) NOT NULL,
  `recieverID` int(11) DEFAULT NULL,
  `senderID` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `receiverFullName` varchar(255) DEFAULT NULL,
  `senderFullName` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Ammount` float DEFAULT NULL,
  `transactionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`ID`, `recieverID`, `senderID`, `type`, `receiverFullName`, `senderFullName`, `Date`, `Ammount`, `transactionID`) VALUES
(40, 8, 9, 'send', 'Steven N/A Estrera', 'Catherine S. Alendao', '2024-07-06', 200, 1720286866),
(41, 9, 8, 'send', 'Catherine S. Alendao', 'Steven N/A Estrera', '2024-07-06', 1000, 1720311100),
(42, 8, 9, 'send', 'Steven N/A Estrera', 'Catherine S. Alendao', '2024-07-06', 200, 1720270616),
(43, 9, 8, 'send', 'Catherine S. Alendao', 'Steven N/A Estrera', '2024-07-07', 200, 1720390201),
(44, 9, 8, 'send', 'Catherine S. Alendao', 'Steven N/A Estrera', '2024-07-08', 100, 1720395313);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `Mname` varchar(255) DEFAULT NULL,
  `Balance` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `Fname`, `Lname`, `Mname`, `Balance`) VALUES
(8, 'steve', 'steve22', 'Steven', 'Estrera', 'N/A', 8177),
(9, 'Kath', 'Catherine', 'Catherine', 'Alendao', 'S.', 1823);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `transactionID` (`transactionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
