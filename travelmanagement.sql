-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 02:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `busid` int(11) NOT NULL,
  `busname` varchar(40) NOT NULL,
  `noofseats` int(11) NOT NULL,
  `noofbooked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busid`, `busname`, `noofseats`, `noofbooked`) VALUES
(1, 'Vishal', 50, 3),
(2, 'Jayashree', 45, 15),
(3, 'Avemaria', 50, 15),
(4, 'Rajalakshmi', 45, 15),
(5, 'Rishikesh', 55, 5),
(6, 'Elite', 50, 4);

-- --------------------------------------------------------

--
-- Table structure for table `busdetails`
--

CREATE TABLE `busdetails` (
  `bdid` int(11) NOT NULL,
  `start` varchar(30) NOT NULL,
  `end` varchar(30) NOT NULL,
  `busname` varchar(30) NOT NULL,
  `day` varchar(10) NOT NULL,
  `num` text NOT NULL,
  `price` float NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busdetails`
--

INSERT INTO `busdetails` (`bdid`, `start`, `end`, `busname`, `day`, `num`, `price`, `uid`) VALUES
(87, 'Ladyhill', 'Kudremukh', 'Rajalakshmi', '01/01/2022', '3', 90, 1),
(88, 'Ladyhill', 'Mulki', 'Rajalakshmi', '12/27/2021', '4', 240, 1),
(89, 'Ladyhill', 'Surathkal', 'Rajalakshmi', '01/08/2022', '2', 100, 2),
(90, 'Ladyhill', 'Mulki', 'Avemaria', '01/05/2022', '3', 180, 2),
(91, 'Ladyhill', 'Karkala', 'Avemaria', '01/06/2022', '2', 200, 2),
(93, 'Kudremukh', 'Mangalore', 'Avemaria', '12/29/2021', '2', 0, 6),
(95, 'Surathkal', 'Nitte', 'Rishikesh', '01/05/2022', '2', 80, 8),
(96, 'Kulur', 'Surathkal', 'Jayashree', '12/29/2021', '3', 90, 2),
(97, 'Karkala', 'Surathkal', 'Avemaria', '01/08/2022', '5', 250, 2),
(98, 'Belman', 'Panambur', 'Elite', '01/06/2022', '4', 160, 2),
(99, 'Nitte', 'Mangalore', 'Avemaria', '01/18/2022', '3', 300, 2),
(100, 'Ladyhill', 'Kulur', 'Rishikesh', '02/03/2022', '2', 40, 2),
(101, 'Panambur', 'Mangalore', 'Vishal', '01/06/2022', '3', 150, 2),
(104, 'Surathkal', 'Panambur', 'Rajalakshmi', '12/31/2021', '6', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `busplace`
--

CREATE TABLE `busplace` (
  `pid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `btime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busplace`
--

INSERT INTO `busplace` (`pid`, `bid`, `btime`) VALUES
(1, 1, '10:00:00'),
(1, 2, '13:00:00'),
(1, 3, '16:00:00'),
(1, 4, '18:30:00'),
(1, 5, '20:30:00'),
(1, 6, '04:00:00'),
(2, 1, '08:00:00'),
(2, 2, '11:30:00'),
(2, 3, '14:00:00'),
(2, 4, '17:00:00'),
(2, 5, '19:30:00'),
(2, 6, '03:00:00'),
(3, 1, '09:00:00'),
(3, 2, '12:30:00'),
(3, 3, '15:00:00'),
(3, 4, '17:30:00'),
(3, 5, '19:00:00'),
(3, 6, '05:00:00'),
(4, 1, '06:00:00'),
(4, 2, '06:30:00'),
(4, 3, '07:00:00'),
(4, 4, '07:30:00'),
(4, 5, '08:00:00'),
(4, 6, '08:30:00'),
(5, 1, '09:00:00'),
(5, 2, '09:30:00'),
(5, 3, '10:00:00'),
(5, 4, '10:30:00'),
(5, 5, '11:00:00'),
(5, 6, '11:30:00'),
(6, 1, '12:00:00'),
(6, 2, '01:00:00'),
(6, 3, '13:00:00'),
(6, 4, '14:00:00'),
(6, 5, '15:00:00'),
(6, 6, '16:00:00'),
(7, 1, '16:00:00'),
(7, 2, '16:00:00'),
(7, 3, '16:00:00'),
(7, 4, '16:00:00'),
(7, 5, '16:00:00'),
(7, 6, '16:00:00'),
(8, 1, '17:00:00'),
(8, 2, '18:00:00'),
(8, 3, '19:00:00'),
(8, 4, '20:00:00'),
(8, 5, '21:00:00'),
(8, 6, '22:00:00'),
(9, 1, '23:00:00'),
(9, 2, '01:00:00'),
(9, 3, '02:00:00'),
(9, 4, '03:30:00'),
(9, 5, '04:30:00'),
(9, 6, '05:30:00'),
(10, 1, '06:30:00'),
(10, 2, '07:30:00'),
(10, 3, '08:30:00'),
(10, 4, '09:30:00'),
(10, 5, '10:30:00'),
(10, 6, '11:30:00'),
(11, 1, '12:30:00'),
(11, 2, '16:00:00'),
(11, 3, '16:00:00'),
(11, 4, '16:00:00'),
(11, 5, '16:00:00'),
(11, 6, '16:00:00'),
(12, 1, '16:00:00'),
(12, 2, '16:00:00'),
(12, 3, '16:00:00'),
(12, 4, '16:00:00'),
(12, 5, '16:00:00'),
(12, 6, '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `busprice`
--

CREATE TABLE `busprice` (
  `bpid` int(11) NOT NULL,
  `pfrom` varchar(50) NOT NULL,
  `pto` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busprice`
--

INSERT INTO `busprice` (`bpid`, `pfrom`, `pto`, `price`) VALUES
(1, 'Mangalore', 'Ladyhill', 10),
(2, 'Mangalore', 'Urwastore', 20),
(3, 'Mangalore', 'Kulur', 30),
(4, 'Mangalore', 'Kudremukh', 40),
(5, 'Mangalore', 'Panambur', 50),
(6, 'Mangalore', 'Surathkal', 60),
(7, 'Mangalore', 'Mulki', 70),
(8, 'Mangalore', 'Padubidri', 80),
(9, 'Mangalore', 'Belman', 90),
(10, 'Mangalore', 'Nitte', 100),
(11, 'Mangalore', 'Karkala', 110),
(12, 'Ladyhill', 'Mangalore', 10),
(13, 'Ladyhill', 'Urwastore', 10),
(14, 'Ladyhill', 'Kulur', 20),
(15, 'Ladyhill', 'Kudremukh', 30),
(16, 'Ladyhill', 'Panambur', 40),
(17, 'Ladyhill', 'Surathkal', 50),
(18, 'Ladyhill', 'Mulki', 60),
(19, 'Ladyhill', 'Padubidri', 70),
(20, 'Ladyhill', 'Belman', 80),
(21, 'Ladyhill', 'Nitte', 90),
(22, 'Ladyhill', 'Karkala', 100),
(24, 'Urwastore', 'Mangalore', 20),
(25, 'Urwastore', 'Ladyhill', 10),
(26, 'Urwastore', 'Kulur', 10),
(27, 'Urwastore', 'Kudremukh', 20),
(28, 'Urwastore', 'Panambur', 30),
(29, 'Urwastore', 'Surathkal', 40),
(30, 'Urwastore', 'Mulki', 50),
(31, 'Urwastore', 'Padubidri', 60),
(32, 'Urwastore', 'Belman', 70),
(33, 'Urwastore', 'Nitte', 80),
(34, 'Urwastore', 'Karkala', 90),
(35, 'Kulur', 'Mangalore', 30),
(36, 'Kulur', 'Ladyhill', 20),
(37, 'Kulur', 'Urwastore', 10),
(38, 'Kulur', 'Kudremukh', 10),
(39, 'Kulur', 'Panambur', 20),
(40, 'Kulur', 'Surathkal', 30),
(41, 'Kulur', 'Mulki', 40),
(42, 'Kulur', 'Padubidri', 50),
(43, 'Kulur', 'Belman', 60),
(44, 'Kulur', 'Nitte', 70),
(45, 'Kulur', 'Karkala', 80),
(46, 'Kudremukh', 'Mangalore', 40),
(47, 'Kudremukh', 'Ladyhill', 30),
(48, 'Kudremukh', 'Urwastore', 20),
(49, 'Kudremukh', 'Kulur', 10),
(50, 'Kudremukh', 'Panambur', 10),
(51, 'Kudremukh', 'Surathkal', 20),
(52, 'Kudremukh', 'Mulki', 30),
(53, 'Kudremukh', 'Padubidri', 40),
(54, 'Kudremukh', 'Belman', 50),
(55, 'Kudremukh', 'Nitte', 60),
(56, 'Kudremukh', 'Karkala', 70),
(57, 'Panambur', 'Mangalore', 50),
(58, 'Panambur', 'Ladyhill', 40),
(59, 'Panambur', 'Urwastore', 30),
(60, 'Panambur', 'Kulur', 20),
(61, 'Panambur', 'Kudremukh', 10),
(62, 'Panambur', 'Surathkal', 10),
(63, 'Panambur', 'Mulki', 20),
(64, 'Panambur', 'Padubidri', 30),
(65, 'Panambur', 'Belman', 40),
(66, 'Panambur', 'Nitte', 50),
(67, 'Panambur', 'Karkala', 60),
(68, 'Surathkal', 'Mangalore', 60),
(69, 'Surathkal', 'Ladyhill', 50),
(70, 'Surathkal', 'Urwastore', 40),
(71, 'Surathkal', 'Kulur', 30),
(72, 'Surathkal', 'Kudremukh', 20),
(73, 'Surathkal', 'Surathkal', 10),
(74, 'Surathkal', 'Mulki', 10),
(75, 'Surathkal', 'Padubidri', 20),
(76, 'Surathkal', 'Belman', 30),
(77, 'Surathkal', 'Nitte', 40),
(78, 'Surathkal', 'Karkala', 50),
(79, 'Mulki', 'Mangalore', 70),
(80, 'Mulki', 'Ladyhill', 60),
(81, 'Mulki', 'Urwastore', 50),
(82, 'Mulki', 'Kulur', 40),
(83, 'Mulki', 'Kudremukh', 30),
(84, 'Mulki', 'Panambur', 20),
(85, 'Mulki', 'Surathkal', 10),
(86, 'Mulki', 'Padubidri', 10),
(87, 'Mulki', 'Belman', 20),
(88, 'Mulki', 'Nitte', 30),
(89, 'Mulki', 'Karkala', 40),
(90, 'Padubidri', 'Mangalore', 80),
(91, 'Padubidri', 'Ladyhill', 70),
(92, 'Padubidri', 'Urwastore', 60),
(93, 'Padubidri', 'Kulur', 50),
(94, 'Padubidri', 'Kudremukh', 40),
(95, 'Padubidri', 'Panambur', 30),
(96, 'Padubidri', 'Surathkal', 20),
(97, 'Padubidri', 'Mulki', 10),
(98, 'Padubidri', 'Belman', 10),
(99, 'Padubidri', 'Nitte', 20),
(100, 'Padubidri', 'Karkala', 30),
(101, 'Belman', 'Mangalore', 90),
(102, 'Belman', 'Ladyhill', 80),
(103, 'Belman', 'Urwastore', 70),
(104, 'Belman', 'Kulur', 60),
(105, 'Belman', 'Kudremukh', 50),
(106, 'Belman', 'Panambur', 40),
(107, 'Belman', 'Surathkal', 30),
(108, 'Belman', 'Mulki', 20),
(109, 'Belman', 'Padubidri', 10),
(110, 'Belman', 'Nitte', 10),
(111, 'Belman', 'Karkala', 20),
(112, 'Nitte', 'Mangalore', 100),
(113, 'Nitte', 'Ladyhill', 90),
(114, 'Nitte', 'Urwastore', 80),
(115, 'Nitte', 'Kulur', 70),
(116, 'Nitte', 'Kudremukh', 60),
(117, 'Nitte', 'Panambur', 50),
(118, 'Nitte', 'Surathkal', 40),
(119, 'Nitte', 'Mulki', 30),
(120, 'Nitte', 'Padubidri', 20),
(121, 'Nitte', 'Belman', 10),
(122, 'Nitte', 'Karkala', 10),
(123, 'Karkala', 'Mangalore', 110),
(124, 'Karkala', 'Ladyhill', 100),
(125, 'Karkala', 'Urwastore', 90),
(126, 'Karkala', 'Kulur', 80),
(127, 'Karkala', 'Kudremukh', 70),
(128, 'Karkala', 'Panambur', 60),
(129, 'Karkala', 'Surathkal', 50),
(130, 'Karkala', 'Mulki', 40),
(131, 'Karkala', 'Padubidri', 30),
(132, 'Karkala', 'Belman', 20),
(133, 'Karkala', 'Nitte', 10);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `upassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uid`, `uname`, `uemail`, `upassword`) VALUES
(1, 'theja', 'theja@gmail.com', '2828'),
(2, 'Thejalakshmi', 'thejalakshmi001@gmail.com', '2828'),
(6, 'Thejalaks', '4nm19cs204@nmamit.in', '2828'),
(7, 'Thejalaksh', '4nm19cs204@nmamit.i', '2828'),
(8, 'vaish', '4nm19cs212@nmamit.in', '2828'),
(9, 'teju', 'teju@hh.com', '2828'),
(10, 'Thejaswini', 'th@gmail.com', '2828'),
(15, 'pp', 'hy@gmail.com', '2828');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`) VALUES
(1, 'Mangalore'),
(2, 'Ladyhill'),
(3, 'Urwastore'),
(4, 'Kulur'),
(5, 'Kudremukh'),
(6, 'Panambur'),
(7, 'Surathkal'),
(8, 'Mulki'),
(9, 'Padubidri'),
(10, 'Belman'),
(11, 'Nitte'),
(12, 'Karkala');

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `pid` int(11) NOT NULL,
  `vname1` varchar(30) NOT NULL,
  `vname2` varchar(30) NOT NULL,
  `vname3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`pid`, `vname1`, `vname2`, `vname3`) VALUES
(1, 'Kudroli Temple', 'Sultan Bathery', 'St Aloysius Chapel'),
(2, 'Lady Hill Church', 'Mangala Stadium', 'Shree Sai Baba Temple'),
(3, 'Urwa store market', 'Shreemathi Memorial Museum', 'Tannirubhavi Beach'),
(4, 'Kadri Manjunath Temple', 'Kadri Hill Park', 'Lobos River View'),
(5, 'Kudremukh National Park', 'Hanuman Falls', 'Kalasa'),
(6, 'Panambur Beach', 'Nandaneshwar Temple', 'NMPT'),
(7, 'National Institute of Tech.', 'NITK BEACH', 'Surathkal Market'),
(8, 'Durgaparameshwari Temple', 'Venkatramana Temple', 'Kayak Boating'),
(9, 'Big Mishras', 'Padubidri Beach', 'Sasihitlu'),
(10, 'Belam Church', 'Durga Parameshwari Temple', 'Belman Bus stop'),
(11, 'Nitte engineering College', 'Paparadi Falls', 'Sanmathi Garden'),
(12, 'Bahubali Monolithic Church', 'Chaturmukha Basadi', 'Karkala Bus stop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busid`);

--
-- Indexes for table `busdetails`
--
ALTER TABLE `busdetails`
  ADD PRIMARY KEY (`bdid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `busplace`
--
ALTER TABLE `busplace`
  ADD PRIMARY KEY (`pid`,`bid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `busprice`
--
ALTER TABLE `busprice`
  ADD PRIMARY KEY (`bpid`),
  ADD KEY `bpid` (`bpid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uemail` (`uemail`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `busid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `busdetails`
--
ALTER TABLE `busdetails`
  MODIFY `bdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `busprice`
--
ALTER TABLE `busprice`
  MODIFY `bpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `busdetails`
--
ALTER TABLE `busdetails`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`uid`) REFERENCES `login` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `busplace`
--
ALTER TABLE `busplace`
  ADD CONSTRAINT `busplace_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `places` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `busplace_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `bus` (`busid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
