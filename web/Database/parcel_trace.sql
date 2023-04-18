-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 05:29 AM
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
-- Database: `parcel_trace`
--

-- --------------------------------------------------------

--
-- Table structure for table `parcel`
--

CREATE TABLE `parcel` (
  `id` int(11) NOT NULL,
  `trackingNo` varchar(45) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcel`
--

INSERT INTO `parcel` (`id`, `trackingNo`, `date`, `status`) VALUES
(1, '1234455', 'Wed Jul 07 2021 01:52:34 GMT+0800 (Malaysia Time)', '[PQA31249]Parcel is in Kuala Selangor K.SEL21892'),
(2, '123456768909', 'Wed Jul 07 2021 00:48:28 GMT+0800 (Malay Peninsula Standard Time)', '[CE TRG_GATEWAY]Parcel has been picked up by Courier Express SJ3614'),
(3, '213214325432532', 'Wed Jul 07 2021 08:02:38 GMT+0800 (Malaysia Time)', '[QYTPA8890]Parcel is in Storage Hub Pahang [PHG2198]'),
(4, '56451243535', 'Mon May 17 2021 08:55:53 GMT+0800 (Malay Peninsula Standard Time)', '[PQA31249]Parcel is in Kuala Selangor K.SEL21892'),
(5, '624896590158', 'Tue May 11 2021 05:55:44 GMT+0800 (Malay Peninsula Standard Time)', '[CE TRG_GATEWAY]Parcel has departed to hub TRG302'),
(17, '323423525', 'Wed Jul 07 2021 00:55:32 GMT+0800 (Malaysia Time)', '[CE TRG_GATEWAY]Parcel has departed to hub TRG302'),
(19, '93678475663947', 'Wed Jul 07 2021 02:15:08 GMT+0800 (Malaysia Time)', '[PQA31249]Parcel is in Kuala Selangor K.SEL21892');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parcel`
--
ALTER TABLE `parcel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parcel`
--
ALTER TABLE `parcel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
