-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 03:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `industry`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `D_ID` varchar(2) NOT NULL,
  `D_NAME` varchar(13) DEFAULT NULL,
  `LATITUDE` varchar(10) DEFAULT NULL,
  `LONGITUDE` varchar(10) DEFAULT NULL,
  `S_ID` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`D_ID`, `D_NAME`, `LATITUDE`, `LONGITUDE`, `S_ID`) VALUES
('1', 'VISHAKAPATNAM', '17.8988341', '82.5652767', '1'),
('2', 'GUNTUR', '16.2672626', '80.1810654', '1');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `Industry_id` int(11) NOT NULL,
  `INDUSTRY_NAME` varchar(30) DEFAULT NULL,
  `LATITUDE` float(30,10) DEFAULT NULL,
  `LONGITUDE` float(30,10) DEFAULT NULL,
  `ANNUAL_LIMIT` int(30) DEFAULT NULL,
  `ANNUAL_CONSUMPTION` bigint(30) DEFAULT NULL,
  `ANNUAL_RECHARGE` int(30) DEFAULT NULL,
  `GROUNDWATER_LEVEL_1` int(11) DEFAULT NULL,
  `GROUNDWATER_LEVEL_2` int(11) DEFAULT NULL,
  `TOKENS` int(30) DEFAULT NULL,
  `Z_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`Industry_id`, `INDUSTRY_NAME`, `LATITUDE`, `LONGITUDE`, `ANNUAL_LIMIT`, `ANNUAL_CONSUMPTION`, `ANNUAL_RECHARGE`, `GROUNDWATER_LEVEL_1`, `GROUNDWATER_LEVEL_2`, `TOKENS`, `Z_ID`) VALUES
(1, 'pappaya palem', 17.7642707825, 83.0368728638, 26, 30, 40, 12, 18, 0, 1),
(2, 'vooderu', 17.7484874725, 82.9778137207, 38, 34, 46, 10, 12, 0, 1),
(3, 'Kondupalem', 17.7598209381, 83.0511703491, 50, 38, 52, 12, 11, 0, 1),
(4, 'Pisinikada', 17.6853580475, 82.9720916748, 62, 78, 58, 9, 8, 0, 1),
(5, 'Mungerlapalem', 17.7348060608, 82.5746307373, 74, 46, 64, 6, 12, 0, 2),
(6, 'Seethakandi', 17.7348804474, 82.5587615967, 86, 50, 70, 4, 9, 0, 2),
(7, 'Kothapalem-8', 17.7006397247, 82.4726715088, 98, 54, 76, 17, 13, 0, 2),
(8, 'Pappusettipalem', 17.6917304993, 82.5082550049, 110, 58, 82, 11, 16, 0, 2),
(9, 'Vantarlapalem', 17.8871116638, 82.8617477417, 122, 62, 88, 14, 10, 0, 3),
(10, 'Yerukuvada', 17.8694381714, 82.8612213135, 134, 66, 94, 7, 15, 0, 3),
(11, 'Mukundapuram-5', 17.8622474670, 82.8554687500, 146, 200, 100, 13, 12, 0, 3),
(12, 'Kaspa JagannadhaPuram', 17.8903541565, 82.8391876221, 158, 74, 106, 12, 17, 0, 3),
(13, 'Chuchikonda', 17.6004505157, 82.9198150635, 170, 78, 112, 2, 5, 0, 4),
(14, 'Purushotthampuram', 17.6198577881, 82.9465332031, 182, 82, 118, 3, 8, 0, 4),
(15, 'Ganaparti', 17.6076717377, 82.9177551270, 194, 86, 124, 4, 7, 0, 4),
(16, 'Gangaparthi', 17.5986328125, 82.9113769531, 206, 90, 130, 6, 3, 0, 4),
(17, 'Munugodu', 16.5772647858, 80.2356338501, 218, 94, 136, 7, 2, 0, 5),
(18, 'Didugu', 16.5767879486, 80.3001861572, 230, 98, 142, 8, 3, 0, 5),
(19, 'Pondugala', 16.5924510956, 80.2627182007, 242, 102, 148, 9, 4, 0, 5),
(20, 'Dharanikota', 16.5732002258, 80.3320159912, 254, 106, 154, 1, 3, 0, 5),
(21, 'Ayyannapalem', 16.3621196747, 79.6246337891, 266, 110, 160, 2, 5, 0, 6),
(22, 'Mellavagu', 16.3526973724, 79.7354660034, 278, 114, 166, 3, 6, 0, 6),
(23, 'Pathareddipalem', 16.1866970062, 80.5125350952, 290, 118, 172, 4, 7, 0, 6),
(24, 'Sekuru', 16.2696609497, 80.5762252808, 302, 122, 178, 5, 8, 0, 6),
(25, 'Darivemula', 16.4638881683, 79.5510559082, 314, 400, 184, 6, 9, 0, 7),
(26, 'Adigoppula', 16.4356975555, 79.6125640869, 326, 130, 190, 7, 4, 0, 7),
(27, 'Obulesunipalle', 16.3989257812, 79.5637893677, 338, 134, 196, 8, 5, 0, 7),
(28, 'Kolagutla', 16.3868141174, 79.5131301880, 350, 450, 202, 9, 6, 0, 7),
(29, 'Solasa', 16.2306919098, 80.2222290039, 362, 142, 208, 1, 6, 0, 8),
(30, 'Mydavolu', 16.1902351379, 80.2192306519, 374, 146, 214, 2, 7, 0, 8),
(31, 'Unnava', 16.1737346649, 80.2773437500, 386, 150, 220, 3, 8, 0, 8),
(32, 'Karuchola', 16.1457786560, 80.2606048584, 398, 154, 226, 4, 1, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `pump_id` int(11) NOT NULL,
  `pump_name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ext_month` int(11) NOT NULL,
  `ext_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pump_id`, `pump_name`, `email`, `ext_month`, `ext_limit`) VALUES
(1, 'pump-1', 'msaiprerana@gmail.com', 7000, 6000),
(2, 'pump-2', 'chakribuzzlightyear123@gmail.c', 4000, 4500),
(3, 'pump-3', 'schakradhar129@gmail.com', 5000, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `draft` int(11) NOT NULL,
  `level_pre_mon` int(11) NOT NULL,
  `level_post_mon` int(11) NOT NULL,
  `leve_rise` int(11) NOT NULL,
  `level_fall` int(11) NOT NULL,
  `action_sugg` varchar(1000) NOT NULL,
  `year` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `draft`, `level_pre_mon`, `level_post_mon`, `leve_rise`, `level_fall`, `action_sugg`, `year`, `level`) VALUES
(1, 'pappaya palem', 'chakri', 'chakribuzzlightyear123@gmail.com', 6000, 12, 18, 0, 6, 'To be shifted to another source of water', '10,35,22,100,541,632,541,231,200,542,555,121', '3,6,9,5,7'),
(2, 'vooderu', 'ravi', 'adharsh.darapaneni@gmail.com', 18000, 10, 12, 0, 2, 'To be regulated in ground water consumption(Implement artificial recharge)', '100,350,220,140,581,332,641,291,210,542,555,621', '4,6,8,6,7'),
(3, 'Kondupalem', 'charitha', 'shivasai123435@gmail.com', 20000, 18, 16, 0, 2, 'You need to try to consume less ground water', '102,250,226,170,541,332,641,531,740,442,645,110', '7,10,11,6,9'),
(4, 'Pisinikada', 'praneeth', 'schakradhar129@gmail.com', 4000, 15, 18, 3, 0, 'Nice Utilisation Of Water', '410,395,422,400,841,632,541,231,200,542,555,621', '9,10,13,11,12'),
(5, 'Mungerlapalem', 'prerana', 'msaiprerana@gmail.com', 8000, 20, 12, 0, 8, 'You need to relocate the industry', '390,497,322,700,441,532,541,631,700,742,555,821', '8,12,14,11,13'),
(6, 'Seethakandi', 'prerna', 'varma2094psv@gmail.com', 15000, 22, 20, 0, 2, 'You need to consume less water', '400,650,420,740,581,332,641,291,210,542,555,621', '13,10,14,8,14'),
(7, 'Kothapalem-8', 'mohan', 'mohan@gmail.com', 6000, 16, 20, 4, 0, 'Nice utilisation of Water', '830,490,620,440,581,632,441,691,710,642,855,721', '9,12,10,11,15'),
(8, 'pappusettipalem', 'rithesh', 'schakradhar129@gmail.com', 8500, 24, 16, 0, 8, 'You need to relocate Industry', '1200,750,1220,840,781,532,841,891,510,742,755,721', '11,8,9,11,15'),
(9, 'chakri', 'chakri', 'chakribuzzlightyear123@gmail.com', 8500, 14, 17, 0, 3, 'Try to consume less water', '1130,940,720,740,781,832,941,1091,710,842,855,821', '13,10,11,14,17'),
(10, 'yaji', 'yaji', 'msaiprerana@gmail.com', 12000, 8, 12, 0, 4, 'You need to do artificial recharge', '1130,940,720,740,781,832,941,1091,710,842,855,932', '10,8,9,8,12');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `Z_ID` varchar(2) NOT NULL,
  `Z_NAME` varchar(12) DEFAULT NULL,
  `LATITUDE` varchar(10) DEFAULT NULL,
  `LONGITUDE` varchar(10) DEFAULT NULL,
  `EXTRACTION` varchar(10) DEFAULT NULL,
  `RECHARGE` varchar(8) DEFAULT NULL,
  `RATIO` varchar(5) DEFAULT NULL,
  `D_ID` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`Z_ID`, `Z_NAME`, `LATITUDE`, `LONGITUDE`, `EXTRACTION`, `RECHARGE`, `RATIO`, `D_ID`) VALUES
('1', 'ANAKAPALLE', '17.7157173', '82.9975357', '300000', '1000000', '30', '1'),
('2', 'GOLUGONDA', '17.6732517', '82.4682977', '1200000', '2000000', '75', '1'),
('3', 'MADUGULA', '17.8917869', '82.7795242', '1600000', '2000000', '95', '1'),
('4', 'ARAKU VALLEY', '18.3110027', '82.9141769', '1900000', '2000000', '120', '1'),
('5', 'BAPATLA', '15.9059381', '80.4535522', '300000', '1000000', '30', '2'),
('6', 'CHEBROLE', '16.2254562', '80.5224227', '1200000', '2000000', '82', '2'),
('7', 'KAREMPUDI', '16.4513950', '79.7037506', '1600000', '2000000', '93', '2'),
('8', 'MACHERLA', '16.5055961', '79.3675537', '1900000', '2000000', '150', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`Industry_id`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`pump_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`Z_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `pump_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
