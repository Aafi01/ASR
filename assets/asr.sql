-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 01:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asr`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `alumni_name` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `alumni_name`, `cid`) VALUES
(1, 'Raj Malhotra', 6),
(2, 'Ram Jha', 37),
(3, 'Sam Patra', 18),
(4, 'Namita Kalra', 27),
(5, 'Kim Young', 19),
(6, 'David Dsa', 15),
(7, 'Sagar Rao', 33),
(8, 'Sanjana Sharma', 39),
(9, 'Ria Somani', 26),
(10, 'Parul Gupta', 28);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `exam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `rank`, `country`, `exam`) VALUES
(4, 'Massachusetts Institute of Technology', 1, 'USA', 'GRE'),
(5, 'Stanford University', 2, 'USA', 'GRE'),
(6, 'California Institute of Technology', 3, 'USA', 'GRE'),
(7, 'University of California - Berkeley', 4, 'USA', 'GRE'),
(8, 'Carnegie Mellon University', 5, 'USA', 'GRE'),
(9, 'Princeton University', 6, 'USA', 'GRE'),
(10, 'University of Texas - Austin', 7, 'USA', 'GRE'),
(11, 'Harvard University', 8, 'USA', 'GRE'),
(12, 'Texas A & M University - College Station', 9, 'USA', 'GRE'),
(13, 'University of Michigan - Ann Arbor', 10, 'USA', 'GRE'),
(14, 'University of Illinois - Urbana Champaign', 11, 'USA', 'GRE'),
(15, 'Harvard Business School', 1, 'USA', 'GMAT'),
(16, 'Stanford University GSB', 2, 'USA', 'GMAT'),
(17, 'IMD Switzerland', 3, 'Switzerland', 'GMAT'),
(18, 'Honk Kong UST (HKUST)', 4, 'China', 'GMAT'),
(19, 'IE Business School', 5, 'Spain', 'GMAT'),
(20, 'University of Virginia - Darden', 6, 'USA', 'GMAT'),
(21, 'University of Pennysylvania - Wharton', 7, 'USA', 'GMAT'),
(22, 'London Business School', 8, 'UK', 'GMAT'),
(23, 'MIT Sloan School of Management', 9, 'USA', 'GMAT'),
(24, 'University of California at Berkeley', 10, 'USA', 'GMAT'),
(25, 'Vanderbilt University', 11, 'USA', 'GMAT'),
(26, 'City University - Cass London', 12, 'UK', 'GMAT'),
(27, 'IISc Bangalore', 1, 'India', 'GATE'),
(28, 'IIT Bombay', 2, 'India', 'GATE'),
(29, 'IIT Guwahati', 3, 'India', 'GATE'),
(30, 'IIT Kanpur', 4, 'India', 'GATE'),
(31, 'IIT Kharagpur', 5, 'India', 'GATE'),
(32, 'IIT Madras', 6, 'India', 'GATE'),
(33, 'IIT Delhi', 7, 'India', 'GATE'),
(34, 'IIT Roorkee', 8, 'India', 'GATE'),
(35, 'NIT Trichy', 9, 'India', 'GATE'),
(36, 'NIT Warangal', 10, 'India', 'GATE'),
(37, 'BITS Pillani', 11, 'India', 'GATE'),
(38, 'National University of Singapore', 12, 'Singapore', 'GATE'),
(39, 'Nanyang Technological University', 13, 'Singapore', 'GATE'),
(40, 'Technical University of Germany', 14, 'Germany', 'GATE'),
(41, 'RWTH ACHEN', 15, 'Germany', 'GATE'),
(42, 'BITS Dubai', 16, 'UAE', 'GATE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `colleges` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
