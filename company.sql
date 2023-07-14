-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 10:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`c_id`, `c_name`, `email`) VALUES
(1001, 'mohmed ahmed', 'mohmed32@gmail.com'),
(1002, 'ahmed mohmed', 'ahmed476@gmail.com'),
(1003, 'mohamed hamdy', 'mohamed25425@gmail.com'),
(1004, 'emad ', 'emad@gmail.com'),
(1005, 'mostafa ', 'mostafa@gmail.com'),
(1006, 'mohamed khaled', 'mohamed@gmail.com'),
(1007, 'adel mohmed', 'adel@gmail.com'),
(1008, 'islam', 'isalam@gmail.com'),
(1009, 'ali', 'ali@gmail.com'),
(1010, 'omar ahmed', 'omar424@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `salary`, `address`, `email`, `job`) VALUES
(301, 'baha', '8000', 'cairo', 'baha534@gmail.com', 'accountant'),
(302, 'abed el khalek', '7000', 'alex', 'abedelkhalek43@gmail.com', 'sellar'),
(303, 'abed el nasser', '9000', 'cairo', 'abedelnasser32@gmail.com', 'accountant'),
(304, 'mahmoud el cadi', '9000', 'al behera', 'mahmoud13@gmail.com', 'accountant'),
(305, 'mostafa', '8000', 'el monfia', 'mostafa654@gmail.com', 'engineer'),
(306, 'fahmy', '9000', 'cairo', 'fahmy@gmail.com', 'accountant'),
(307, 'mohamed khalf', '6000', 'cairo', 'mohmed234@gmail.com', 'data entry');

-- --------------------------------------------------------

--
-- Table structure for table `finish`
--

CREATE TABLE `finish` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finish`
--

INSERT INTO `finish` (`f_id`, `f_name`, `price`) VALUES
(401, 'polish', '50'),
(402, 'hond', '50'),
(403, 'tambule', '40'),
(404, 'brisheal', '25'),
(405, 'bushemer', '35'),
(406, 'acid', '25'),
(407, 'sund plust', '25');

-- --------------------------------------------------------

--
-- Table structure for table `manegers_of_orders`
--

CREATE TABLE `manegers_of_orders` (
  `mn_id` int(11) NOT NULL,
  `mn_name` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manegers_of_orders`
--

INSERT INTO `manegers_of_orders` (`mn_id`, `mn_name`, `salary`) VALUES
(601, 'reda', '4000'),
(602, 'nasr', '5000'),
(603, 'ahmed nady', '4000'),
(604, 'sayed', '5000'),
(605, 'ahmed salah', '4000'),
(606, 'mohamed', '5000'),
(607, 'hassn', '3000'),
(608, 'mostfa hamed', '5000'),
(609, 'atef', '3000'),
(610, 'aazer', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `m_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price_sq_M` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`m_id`, `name`, `price_sq_M`, `color`) VALUES
(201, 'galala', '9$', 'white'),
(202, 'sany mnia', '10$', 'yellow'),
(203, 'savia mnia', '10$', 'yellow'),
(204, 'sani fadl', '14$', 'yellow'),
(205, 'trista', '13$', 'beige'),
(206, 'trista gray', '14$', 'gray'),
(207, 'maly brown', '8$', 'brown'),
(208, 'maly gray', '9$', 'gray'),
(209, 'zafarana', '17$', 'red'),
(210, 'new halib', '16$', 'blue'),
(211, 'halib', '211', 'light blue');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `c_ids` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `m_ids` int(11) NOT NULL,
  `f_ids` int(11) NOT NULL,
  `amout_m_sq` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`c_ids`, `ord_id`, `m_ids`, `f_ids`, `amout_m_sq`, `size`, `address`) VALUES
(1001, 5001, 201, 405, '500', '60*120', 'USA'),
(1009, 5002, 208, 402, '700', '60*60', 'shanghai port_china'),
(1010, 5003, 209, 403, '700', '40*60', 'singapore'),
(1001, 5004, 209, 401, '600', '60*80', 'USA'),
(1007, 5005, 202, 404, '650', '70*140', 'roma'),
(1002, 5006, 211, 407, '800', '120*60', 'alex'),
(1003, 5007, 209, 407, '900', '60*50', 'el minia'),
(1002, 5008, 205, 403, '800', '60*70', 'alex'),
(1004, 5009, 207, 401, '300', '60*60', 'el soudia'),
(1006, 5010, 206, 402, '200', '40*60', 'Egypt_cairo_el maadi'),
(1008, 5011, 204, 405, '1000', '60*50', 'madred'),
(1004, 5012, 203, 407, '500', '70*80', 'el soudia'),
(1007, 5013, 210, 406, '300', '40*60', 'roma');

-- --------------------------------------------------------

--
-- Table structure for table `task_order`
--

CREATE TABLE `task_order` (
  `c_ids` int(11) NOT NULL,
  `mn_ids` int(11) NOT NULL,
  `deadline` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_order`
--

INSERT INTO `task_order` (`c_ids`, `mn_ids`, `deadline`) VALUES
(1001, 602, '2023-02-10'),
(1002, 601, '2023-03-10'),
(1003, 603, '2023-02-20'),
(1004, 604, '2023-03-15'),
(1004, 607, '2023-03-15'),
(1005, 605, '2023-03-20'),
(1006, 606, '2023-03-30'),
(1007, 607, '2023-03-25'),
(1008, 608, '2023-04-30'),
(1009, 609, '2023-04-30'),
(1010, 610, '2023-04-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `finish`
--
ALTER TABLE `finish`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `manegers_of_orders`
--
ALTER TABLE `manegers_of_orders`
  ADD PRIMARY KEY (`mn_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`,`m_ids`,`f_ids`),
  ADD KEY `no_of_m_id` (`m_ids`),
  ADD KEY `no_f_ids` (`f_ids`),
  ADD KEY `ordering` (`c_ids`);

--
-- Indexes for table `task_order`
--
ALTER TABLE `task_order`
  ADD PRIMARY KEY (`c_ids`,`mn_ids`),
  ADD KEY `mn_ids` (`mn_ids`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `no_f_ids` FOREIGN KEY (`f_ids`) REFERENCES `finish` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `no_of_m_id` FOREIGN KEY (`m_ids`) REFERENCES `material` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordering` FOREIGN KEY (`c_ids`) REFERENCES `clients` (`c_id`);

--
-- Constraints for table `task_order`
--
ALTER TABLE `task_order`
  ADD CONSTRAINT `task_order_ibfk_1` FOREIGN KEY (`c_ids`) REFERENCES `clients` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_order_ibfk_2` FOREIGN KEY (`mn_ids`) REFERENCES `manegers_of_orders` (`mn_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
