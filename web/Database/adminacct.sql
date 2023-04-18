-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 05:28 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminacct`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `branchID` int(10) NOT NULL,
  `branchName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `branchNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`branchID`, `branchName`, `address`, `password`, `branchNo`) VALUES
(13, 'KUALA LUMPUR ZBA2178', '7 Uoa Ii Jln Pinang', 'reherh', '032166-3810'),
(14, 'KUALA TERENGGANU QVA6734', '2nd Floor Seri Duta 1 Jalan Gallagher', 'weref', '(603) 20939695'),
(15, 'KUALA LUMPUR PQY3190', 'Unit 29-11 Wisma UOA II 21 Jalan Pinang', 'erherh', '(603) 20939695'),
(17, 'efgewfg', 'fewfgewfew', '43543523', 'gergwerg'),
(18, ' 4eryeryg', 'ergergerg', '235325', 'dvewfwe'),
(20, 'Kuala Terengganu 05', 'Jln Tunku Abdul Razak, 21300 Kuala Terengganu', '1234', '0963332454'),
(21, 'Kuala Terengganu 05', 'Jln Tunku Abdul Razak, 21300 Kuala Terengganu', '1234', '0963332454'),
(22, 'akaun baru', 'kampung tengah kota, pasir emas, kelantan', '21222', '3243241234'),
(23, '', '', '', ''),
(24, '', '', '', ''),
(26, 'KUALA LANGSAR 12', 'Jln Ubi Kayu, Kuala Lumpur', '!234eqwdqewAQ', '56345235235');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empID` int(10) NOT NULL,
  `empName` varchar(200) NOT NULL,
  `empIcno` varchar(10) NOT NULL,
  `empDOB` varchar(20) NOT NULL,
  `empAddress` varchar(250) NOT NULL,
  `empGender` varchar(10) NOT NULL,
  `empEmail` varchar(20) NOT NULL,
  `empPass` varchar(20) NOT NULL,
  `empPhoneNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empID`, `empName`, `empIcno`, `empDOB`, `empAddress`, `empGender`, `empEmail`, `empPass`, `empPhoneNo`) VALUES
(1, 'Ziana Zain', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(2, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(3, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(4, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(5, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(6, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(7, 'fgwe', 'ewgweg', 'gewgweg', 'erty45gher', 'rgreg', 'email@gmail.com', '1234', '4643t4t'),
(10, 'ahmad', '253235235', '1996-01-24', 'wefwegwegerg', 'Male', 'ahmad@example.com', '435435235235', '3251235412542');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `repeat_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `email`, `password`, `repeat_pass`) VALUES
(2, 'Muhammad Haziq', 'haziq3321@gmail.com', '1234', '1234'),
(3, 'Muhammad Fakirullah', 'muhammadfakirullah1111@gmail.com', '1234', '1234'),
(4, 'Ahmad Faisal', 'faisal@gmail.com', '3321', '3321'),
(5, 'arman', 'arman@gmail.com', '1234', '1234'),
(6, 'test1', 'contoh@gmail.com', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `branchID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
