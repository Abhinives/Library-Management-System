-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 04:43 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(30) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `bookauthor` varchar(50) NOT NULL,
  `Copies` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `bookname`, `bookauthor`, `Copies`) VALUES
(1, 'Alice in Wonderland', 'Adventures of Tom Sawyer: Mark Twain', 10),
(2, 'Ancient Mariner', 'Agni Veena: Kazi Nasrul Islam', 9),
(3, 'Arms and the Man', 'Animal Farm: George Orwell', 10),
(4, 'Around the World in eighty days', 'Ben Hur: Lewis Wallace', 10),
(5, 'Anna Karenina: Leo Tolstoy', 'Baburnama: Babur', 10),
(6, 'Pride and Prejudice', 'Arthashastra: Kautilya', 10);

-- --------------------------------------------------------

--
-- Table structure for table `currentuser`
--

CREATE TABLE `currentuser` (
  `mailid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currentuser`
--

INSERT INTO `currentuser` (`mailid`) VALUES
('ara.kmu.2002@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `getbooks`
--

CREATE TABLE `getbooks` (
  `pid` int(11) NOT NULL,
  `bid` int(20) NOT NULL,
  `copies` int(20) NOT NULL,
  `get` varchar(30) NOT NULL,
  `due` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getbooks`
--

INSERT INTO `getbooks` (`pid`, `bid`, `copies`, `get`, `due`) VALUES
(32, 2, 1, '2022-05-28', '2022-06-07'),
(33, 12, 1, '2022-05-29', '2022-06-08'),
(34, 4, 1, '2022-05-29', '2022-06-08'),
(35, 12, 1, '2022-05-30', '2022-06-09'),
(36, 12, 1, '2022-05-30', '2022-06-09'),
(37, 7, 1, '2022-06-05', '2022-06-15'),
(38, 2, 1, '2022-06-19', '2022-06-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `getbooks`
--
ALTER TABLE `getbooks`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `getbooks`
--
ALTER TABLE `getbooks`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
