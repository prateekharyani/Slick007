-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2020 at 05:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slickdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('admin@gmail.com', '3313e');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answerDesc` varchar(1000) NOT NULL,
  `postedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `questionID` int(11) NOT NULL,
  `expertID` varchar(40) NOT NULL,
  `customerID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `answerDesc`, `postedDate`, `questionID`, `expertID`, `customerID`) VALUES
(7, 'zzzzzzzzzzzzzzzzzz', '2020-03-31 02:13:13', 14, 'exp1@gmail.com', NULL),
(8, 'cccccccccccccccccccccccccc', '2020-04-03 02:39:02', 18, 'exp1@gmail.com', NULL),
(9, 'dddddddddd1', '2020-04-03 03:07:35', 19, 'exp1@gmail.com', NULL),
(10, 'ddddddddd2', '2020-04-03 03:07:41', 20, 'exp1@gmail.com', NULL),
(11, 'ddddddddd2', '2020-04-03 03:07:57', 20, 'exp1@gmail.com', NULL),
(12, 'ddddddddd2', '2020-04-03 03:09:59', 20, 'exp1@gmail.com', NULL),
(13, 'ddddddddd2', '2020-04-03 03:11:16', 20, 'exp1@gmail.com', NULL),
(14, 'ffffffffffffffffffffffffffffffffffffffffff', '2020-04-03 06:15:09', 22, 'expert1@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `mobileNumber` varchar(10) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `blocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `password`, `firstName`, `lastName`, `mobileNumber`, `verified`, `blocked`) VALUES
('haryaniprateek8@gmail.com', '80', 'Prateek', 'Haryani', '8962162898', 1, 0),
('prateekharyani2000@gmail.com', '2000', 'Prateek', 'Haryani', '8962162898', 1, 0),
('prateekharyani2018@gmail.com', '2018', 'Prateek', 'Haryani', '8962162898', 1, 0),
('prateekharyani810@gmail.com', '12345', 'Prateek', 'Haryani', '8962162898', 1, 0),
('prateekharyani896@gmail.com', '123', 'Prateek', 'Haryani', '8962162898', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `id` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `blocked` tinyint(1) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `subCategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`id`, `password`, `blocked`, `categoryID`, `subCategoryID`) VALUES
('exp1@gmail.com', 'fad65', 0, 43, 77),
('exp2@gmail.com', '8a06a', 0, 43, 78),
('exp3@gmail.com', '7ee5f', 0, 43, 79),
('exp4@gmail.com', '1d96a', 0, 43, 80),
('exp5@gmail.com', 'a3548', 0, 43, 82),
('expert1@gmail.com', '302d7', 0, 44, 81),
('expert2@gmail.com', 'f5ada', 0, 44, 83),
('expert3@gmail.com', '26ea0', 0, 44, 84),
('expert4@gmail.com', 'a7ad8', 0, 45, 85);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `questionTitle` varchar(50) NOT NULL,
  `questionDesc` varchar(200) NOT NULL,
  `postedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `subCategoryID` int(11) NOT NULL,
  `customerID` varchar(40) NOT NULL,
  `expertID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `questionTitle`, `questionDesc`, `postedDate`, `status`, `visibility`, `categoryID`, `subCategoryID`, `customerID`, `expertID`) VALUES
(14, 'aaaaaaa', 'bbbbbbbbbbbbb', '2020-03-31 02:13:13', 1, 1, 43, 77, 'prateekharyani810@gmail.com', 'exp1@gmail.com'),
(15, 'cccccccc', 'dddddddddddd', '2020-03-31 02:10:45', 0, 1, 43, 78, 'prateekharyani810@gmail.com', 'exp2@gmail.com'),
(16, 'eeeeeeeeeeeeeeee', 'fffffffffffffffff', '2020-03-31 02:11:36', 0, 1, 44, 81, 'prateekharyani810@gmail.com', 'expert1@gmail.com'),
(17, 'ggggggggggggg', 'hhhhhhhhhhhhhhhhhh', '2020-03-31 02:56:40', 0, 1, 44, 83, 'prateekharyani2000@gmail.com', 'expert2@gmail.com'),
(18, 'aaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbb', '2020-04-03 02:39:02', 1, 1, 43, 77, 'haryaniprateek8@gmail.com', 'exp1@gmail.com'),
(19, 'aaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbb', '2020-04-03 03:07:35', 1, 1, 43, 77, 'haryaniprateek8@gmail.com', 'exp1@gmail.com'),
(20, 'aaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbb', '2020-04-03 03:07:41', 1, 1, 43, 77, 'haryaniprateek8@gmail.com', 'exp1@gmail.com'),
(21, 'aaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbb', '2020-04-03 02:44:16', 0, 1, 43, 77, 'haryaniprateek8@gmail.com', 'exp1@gmail.com'),
(22, 'ddddddddddddddddd', 'eeeeeeeeeeeeeeeeeee', '2020-04-03 06:15:09', 1, 1, 44, 81, 'prateekharyani896@gmail.com', 'expert1@gmail.com'),
(23, 'hhhhhhhhhhhhhhhhhhhh', 'iiiiiiiiiiiiiiiiiii', '2020-04-03 06:16:33', 0, 1, 44, 81, 'prateekharyani896@gmail.com', 'expert1@gmail.com'),
(24, 'Sport', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnn', '2020-04-03 06:31:57', 0, 1, 45, 85, 'haryaniprateek8@gmail.com', 'expert4@gmail.com'),
(25, 'jjjjjjjjjjjjjjjjjjjjjjjjjjj', 'hhhhhhhhhhhhhhhhhhhhhhhh', '2020-04-03 06:51:38', 0, 1, 43, 77, 'prateekharyani896@gmail.com', 'exp1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `questioncategory`
--

CREATE TABLE `questioncategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questioncategory`
--

INSERT INTO `questioncategory` (`id`, `categoryName`) VALUES
(43, 'Stomach Ache'),
(44, 'Cold,Cough & Flu'),
(45, 'General Body Ache and Fever'),
(46, 'Skin & Hair '),
(47, 'Bones And Joint'),
(48, 'Women Health'),
(49, 'Dental Issues');

-- --------------------------------------------------------

--
-- Table structure for table `questionsubcategory`
--

CREATE TABLE `questionsubcategory` (
  `id` int(11) NOT NULL,
  `subCategoryName` varchar(60) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `occupied` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionsubcategory`
--

INSERT INTO `questionsubcategory` (`id`, `subCategoryName`, `categoryID`, `occupied`) VALUES
(77, 'Acidity', 43, 1),
(78, 'Abdominal Cramping', 43, 1),
(79, 'Bloating', 43, 1),
(80, 'Nausea or vomitting', 43, 1),
(81, 'Sneezing', 44, 1),
(82, 'Sore Throat ', 43, 1),
(83, 'Stuffy Nose ', 44, 1),
(84, 'Coughing', 44, 1),
(85, 'Pain ', 45, 1),
(86, 'Weakness', 45, 0),
(87, 'Fatigue', 45, 0),
(88, 'Cold', 45, 0),
(89, 'Dark Circles', 46, 0),
(90, 'Acne/Pimples', 46, 0),
(91, 'Hairfall', 46, 0),
(92, 'Dark Patches on Skin', 46, 0),
(93, 'Fungal Infection', 46, 0),
(94, 'Scars', 46, 0),
(95, 'Burns', 46, 0),
(96, 'Unwanted Hair', 46, 0),
(97, 'Dry Skin ', 46, 0),
(98, 'Skin Redness', 46, 0),
(99, 'Dandruff', 46, 0),
(100, 'Spots On Skin', 46, 0),
(101, 'Diificulty In Walking', 47, 0),
(102, 'Shoulder Pain', 47, 0),
(103, 'Elbow Pain', 47, 0),
(104, 'Wrist Pain', 47, 0),
(105, 'Hand Pain', 47, 0),
(106, 'Arm Pain', 47, 0),
(107, 'Forearm Pain', 47, 0),
(108, 'Hip Pain', 47, 0),
(109, 'Knee Pain', 47, 0),
(110, 'Ankle Pain', 47, 0),
(111, 'Foot Pain', 47, 0),
(112, 'Leg Pain', 47, 0),
(113, 'Kneck Pain', 47, 0),
(114, 'Upper Back Pain', 47, 0),
(115, 'Lower Back Pain', 47, 0),
(116, 'Injuries', 47, 0),
(117, 'Irregular Periods', 48, 0),
(118, 'Late Period', 48, 0),
(119, 'Heavy Menstural Bleeding ', 48, 0),
(120, 'Period Pain', 48, 0),
(121, 'Birth Control Advice', 48, 0),
(122, 'Diificulty In Getting Pregant', 48, 0),
(123, 'Tooth Pain', 49, 0),
(124, 'Swelling Of Gum ', 49, 0),
(125, 'Mouth Sores', 49, 0),
(126, 'Bleeding Gums', 49, 0),
(127, 'Bad Breathe', 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reportedincidentsbycustomers`
--

CREATE TABLE `reportedincidentsbycustomers` (
  `id` int(11) NOT NULL,
  `incDesc` varchar(200) NOT NULL,
  `postedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expertID` varchar(40) NOT NULL,
  `customerID` varchar(40) NOT NULL,
  `questionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportedincidentsbycustomers`
--

INSERT INTO `reportedincidentsbycustomers` (`id`, `incDesc`, `postedDate`, `expertID`, `customerID`, `questionID`) VALUES
(7, 'xxxxxxxxxxxxxxx', '2020-03-31 03:02:39', 'exp1@gmail.com', 'prateekharyani810@gmail.com', 14),
(8, 'dddddddddd', '2020-04-03 02:48:43', 'exp1@gmail.com', 'haryaniprateek8@gmail.com', 18),
(9, 'ggggggggggggggggggg', '2020-04-03 06:15:54', 'expert1@gmail.com', 'prateekharyani896@gmail.com', 22),
(10, 'cccccccccccccc', '2020-04-03 06:31:29', 'exp1@gmail.com', 'haryaniprateek8@gmail.com', 19);

-- --------------------------------------------------------

--
-- Table structure for table `reportedincidentsbyexperts`
--

CREATE TABLE `reportedincidentsbyexperts` (
  `id` int(11) NOT NULL,
  `incDesc` varchar(200) NOT NULL,
  `expertID` varchar(40) NOT NULL,
  `customerID` varchar(40) NOT NULL,
  `questionID` int(11) NOT NULL,
  `postedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportedincidentsbyexperts`
--

INSERT INTO `reportedincidentsbyexperts` (`id`, `incDesc`, `expertID`, `customerID`, `questionID`, `postedDate`) VALUES
(5, 'eeeeeeeeeeee', 'exp2@gmail.com', 'prateekharyani810@gmail.com', 15, '2020-03-31 02:52:24'),
(6, 'iiiiiiiiiiiii', 'expert2@gmail.com', 'prateekharyani2000@gmail.com', 17, '2020-03-31 02:57:35'),
(7, 'dddddddddddd3', 'exp1@gmail.com', 'haryaniprateek8@gmail.com', 21, '2020-04-03 03:07:49'),
(8, 'hhhhhhhhhhhhhhhhhhhhh', 'expert1@gmail.com', 'prateekharyani810@gmail.com', 16, '2020-04-03 06:14:59'),
(9, 'jjjjjjjjjjjjjjjjjjjjj', 'expert1@gmail.com', 'prateekharyani896@gmail.com', 23, '2020-04-03 06:17:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionID` (`questionID`),
  ADD KEY `expertID` (`expertID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `subCategoryID` (`subCategoryID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `subCategoryID` (`subCategoryID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `expertID` (`expertID`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `questioncategory`
--
ALTER TABLE `questioncategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionsubcategory`
--
ALTER TABLE `questionsubcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `reportedincidentsbycustomers`
--
ALTER TABLE `reportedincidentsbycustomers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expertID` (`expertID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `fk_grade_id` (`questionID`);

--
-- Indexes for table `reportedincidentsbyexperts`
--
ALTER TABLE `reportedincidentsbyexperts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expertID` (`expertID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `questionID` (`questionID`),
  ADD KEY `questionID_2` (`questionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `questioncategory`
--
ALTER TABLE `questioncategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `questionsubcategory`
--
ALTER TABLE `questionsubcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `reportedincidentsbycustomers`
--
ALTER TABLE `reportedincidentsbycustomers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reportedincidentsbyexperts`
--
ALTER TABLE `reportedincidentsbyexperts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`expertID`) REFERENCES `expert` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expert`
--
ALTER TABLE `expert`
  ADD CONSTRAINT `expert_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `questioncategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expert_ibfk_2` FOREIGN KEY (`subCategoryID`) REFERENCES `questionsubcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `questioncategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`subCategoryID`) REFERENCES `questionsubcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_4` FOREIGN KEY (`expertID`) REFERENCES `expert` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionsubcategory`
--
ALTER TABLE `questionsubcategory`
  ADD CONSTRAINT `questionsubcategory_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `questioncategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reportedincidentsbycustomers`
--
ALTER TABLE `reportedincidentsbycustomers`
  ADD CONSTRAINT `ReportedIncidentsByCustomers_ibfk_1` FOREIGN KEY (`expertID`) REFERENCES `expert` (`id`),
  ADD CONSTRAINT `ReportedIncidentsByCustomers_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_grade_id` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`);

--
-- Constraints for table `reportedincidentsbyexperts`
--
ALTER TABLE `reportedincidentsbyexperts`
  ADD CONSTRAINT `ReportedIncidentsByExperts_ibfk_1` FOREIGN KEY (`expertID`) REFERENCES `expert` (`id`),
  ADD CONSTRAINT `ReportedIncidentsByExperts_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_qstn_id` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
