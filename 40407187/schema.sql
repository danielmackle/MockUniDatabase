-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 05:30 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmackle04`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `AvgWageFromBusinesses`
-- (See below for the actual view)
--
CREATE TABLE `AvgWageFromBusinesses` (
`Business_Name` varchar(30)
,`Average_Wage` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `Awarder`
--

CREATE TABLE `Awarder` (
  `AwarderID` int(11) NOT NULL,
  `AwarderName` varchar(50) NOT NULL,
  `AwarderDesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Awarder`
--

INSERT INTO `Awarder` (`AwarderID`, `AwarderName`, `AwarderDesc`) VALUES
(1, 'Queens University Belfast', 'Located in Belfast, Northern Ireland'),
(2, 'Ulster University Belfast', 'Located in Belfast, Northern Ireland'),
(3, 'Oxford University', 'Located in Oxford, England'),
(4, 'University of Cambridge', 'Located in Cambridge, England'),
(5, 'University of Edinburgh', 'Located in Edinburgh, Scotland'),
(6, 'University of Glasgow', 'Located in Glasgow, Scotland');

-- --------------------------------------------------------

--
-- Table structure for table `Business`
--

CREATE TABLE `Business` (
  `BusinessID` int(11) NOT NULL,
  `BusinessName` varchar(30) NOT NULL,
  `BusinessAddress1` varchar(40) NOT NULL,
  `BusinessAddress2` varchar(40) DEFAULT NULL,
  `BusinessPostcode` varchar(8) NOT NULL,
  `BusinessEmail` varchar(50) NOT NULL,
  `BusinessPhoneNumber` varchar(15) NOT NULL,
  `BusinessDescription` varchar(100) NOT NULL,
  `IndustryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Business`
--

INSERT INTO `Business` (`BusinessID`, `BusinessName`, `BusinessAddress1`, `BusinessAddress2`, `BusinessPostcode`, `BusinessEmail`, `BusinessPhoneNumber`, `BusinessDescription`, `IndustryID`) VALUES
(1, 'Google', '123 Silicon Valley', NULL, 'BT13 1AA', 'google@yahoo.com', '0123456789', 'A leading tech company specializing in software development.', 1),
(2, 'Money Inc', '456 Wall Street', 'Suite 100', 'BT23 2BB', 'money@wearerich.com', '0234567891', 'A large banking business.', 3),
(3, 'Queens University', 'University Road', NULL, 'BT73 1NN', 'qub@ads.qub.ac.uk', '0456789123', 'An education institution offering too much coursework.', 4),
(4, 'Energy Inc', '123 Tesla Street', NULL, 'BT10 10J', 'energyinc@yahoo.com', '2211334455', 'A leading energy company.', 8),
(5, 'Transport Co', '456 Doggo Avenue', 'Suite 200', 'BT11 11K', 'transportco@wemove.com', '3322445566', 'A large transportation business.', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Candidate`
--

CREATE TABLE `Candidate` (
  `CandidateNationalInsuranceNumber` varchar(9) NOT NULL,
  `CandidateForename` varchar(30) NOT NULL,
  `CandidateSurname` varchar(30) NOT NULL,
  `CandidateTitle` varchar(10) NOT NULL,
  `CandidateGender` varchar(20) NOT NULL,
  `CandidateAddress1` varchar(50) NOT NULL,
  `CandidateAddress2` varchar(50) DEFAULT NULL,
  `CandidatePostCode` varchar(8) NOT NULL,
  `CandidateEmail` varchar(50) NOT NULL,
  `CandidatePhoneNumber` varchar(15) NOT NULL,
  `CandidateRightToWork` tinyint(1) NOT NULL,
  `CandidateDisabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Candidate`
--

INSERT INTO `Candidate` (`CandidateNationalInsuranceNumber`, `CandidateForename`, `CandidateSurname`, `CandidateTitle`, `CandidateGender`, `CandidateAddress1`, `CandidateAddress2`, `CandidatePostCode`, `CandidateEmail`, `CandidatePhoneNumber`, `CandidateRightToWork`, `CandidateDisabled`) VALUES
('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0),
('NI123456A', 'John', 'Doe', 'Mr', 'Male', '123 Blah Street', 'Apt 4B', 'BT31 1AA', 'johndoe@gmail.com', '0123456789', 1, 0),
('NI123457B', 'Jane', 'Smith', 'Ms', 'Female', '456 Blah Avenue', NULL, 'BT32 2BB', 'janesmith@gmail.com', '9876543210', 1, 0),
('NI123458C', 'Bob', 'Johnson', 'Mr', 'Male', '789 Silly Lane', 'Unit 2', 'BT33 3CC', 'bobjohnson@gmail.com', '1122334455', 1, 1),
('NI123459D', 'Alice', 'Williams', 'Ms', 'Female', '321 Random Boulevard', NULL, 'BT34 4DD', 'alicewilliams@gmail.com', '6677889900', 1, 0),
('NI123460E', 'Charlie', 'Brown', 'Mr', 'Male', '654 Bingus Drive', 'Suite 3', 'BT35 5EE', 'charliebrown@gmail.com', '3344556677', 1, 0),
('NI123461F', 'Emma', 'Jones', 'Ms', 'Female', '987 Babba Street', NULL, 'BT63 6FF', 'emmajones@gmail.com', '7788990011', 1, 0),
('NI123462G', 'Noah', 'Davis', 'Mr', 'Male', '654 Babbo Avenue', 'Apt 5C', 'BT73 7GG', 'noahdavis@gmail.com', '8899001122', 1, 1),
('NI123463H', 'Sophia', 'Miller', 'Ms', 'Female', '321 Blah Road', NULL, 'BT38 8HH', 'sophiamiller@gmail.com', '9900112233', 1, 0),
('NI123464I', 'Liam', 'Wilson', 'Mr', 'Male', '987 Roaddddd', 'Unit 6D', 'BT93 9II', 'liamwilson@gmail.com', '1100223344', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CandidateJob_Experience`
--

CREATE TABLE `CandidateJob_Experience` (
  `NationalInsuranceNumber` varchar(9) NOT NULL,
  `Job_ExperienceID` int(11) NOT NULL,
  `CandidateJob_ExperienceDateBegin` date NOT NULL,
  `CandidateJob_ExperienceDateEnd` date NOT NULL,
  `CandidateJob_ExperienceReasonForLeaving` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CandidateJob_Experience`
--

INSERT INTO `CandidateJob_Experience` (`NationalInsuranceNumber`, `Job_ExperienceID`, `CandidateJob_ExperienceDateBegin`, `CandidateJob_ExperienceDateEnd`, `CandidateJob_ExperienceReasonForLeaving`) VALUES
('NI123456A', 1, '2020-03-01', '2024-03-01', 'Had to move house'),
('NI123459D', 3, '2020-03-01', '2024-01-01', 'Pay not high enough'),
('NI123459D', 4, '2018-03-01', '2024-01-16', 'Began University'),
('NI123461F', 6, '2019-04-01', '2024-04-01', 'Wanted a change'),
('NI123462G', 7, '2018-04-01', '2024-02-16', 'Started University'),
('NI123463H', 6, '2020-04-01', '2024-02-01', 'Pay not high enough');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ContactInformationOfFemaleCandidates`
-- (See below for the actual view)
--
CREATE TABLE `ContactInformationOfFemaleCandidates` (
`Full_Name` varchar(73)
,`Phone_Number` varchar(15)
,`Email` varchar(50)
,`Address_Line_One` varchar(50)
,`Address_Line_Two` varchar(50)
,`Post_Code` varchar(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `Industry`
--

CREATE TABLE `Industry` (
  `IndustryID` int(11) NOT NULL,
  `IndustryName` varchar(30) NOT NULL,
  `IndustryDesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Industry`
--

INSERT INTO `Industry` (`IndustryID`, `IndustryName`, `IndustryDesc`) VALUES
(1, 'Information Technology', 'Industry involved in the development of computer systems.'),
(2, 'Healthcare', 'Industry involved in the provision of healthcare.'),
(3, 'Finance', 'Industry involved in the management of money.'),
(4, 'Education', 'Industry involved in the provision of training.'),
(5, 'Manufacturing', 'Industry involved in the production of goods.'),
(6, 'Retail', 'Industry involved in the sale of goods.'),
(7, 'Construction', 'Industry involved in the construction of buildings.'),
(8, 'Energy', 'Industry involved in the production and sale of energy.'),
(9, 'Transportation', 'Industry involved in the movement of goods and people.');

-- --------------------------------------------------------

--
-- Table structure for table `Interview`
--

CREATE TABLE `Interview` (
  `NationalInsuranceNumber` varchar(9) NOT NULL,
  `RecruiterID` int(11) NOT NULL,
  `InterviewRoom` varchar(5) NOT NULL,
  `InterviewDate` date NOT NULL,
  `InterviewTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Interview`
--

INSERT INTO `Interview` (`NationalInsuranceNumber`, `RecruiterID`, `InterviewRoom`, `InterviewDate`, `InterviewTime`) VALUES
('NI123456A', 1, 'A101', '2024-03-01', '09:00:00'),
('NI123456A', 3, 'C303', '2024-03-03', '11:00:00'),
('NI123457B', 2, 'B202', '2024-03-02', '10:00:00'),
('NI123457B', 3, 'D404', '2024-03-04', '12:00:00'),
('NI123460E', 5, 'E505', '2024-03-05', '13:00:00'),
('NI123461F', 6, 'B101', '2024-04-01', '14:00:00'),
('NI123462G', 7, 'C202', '2024-04-02', '15:00:00'),
('NI123463H', 6, 'D303', '2024-04-03', '16:00:00'),
('NI123464I', 7, 'E404', '2024-04-04', '17:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `InterviewInfo`
-- (See below for the actual view)
--
CREATE TABLE `InterviewInfo` (
`Candidate_Name` varchar(61)
,`Interview_Room` varchar(5)
,`Interview_Date` date
,`Interview_Time` time
,`Business_Name` varchar(30)
,`Recruiter_Name` varchar(61)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `InterviewsInCompanyTimeframe`
-- (See below for the actual view)
--
CREATE TABLE `InterviewsInCompanyTimeframe` (
`Candidate_Name` varchar(61)
,`Interview_Date` date
,`Interview_Time` time
,`Recruiter_Name` varchar(61)
,`Business_Name` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `JobBusiness`
--

CREATE TABLE `JobBusiness` (
  `BusinessID` int(11) NOT NULL,
  `Job_ExperienceID` int(11) NOT NULL,
  `JobBusinessSalary` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobBusiness`
--

INSERT INTO `JobBusiness` (`BusinessID`, `Job_ExperienceID`, `JobBusinessSalary`) VALUES
(1, 1, 50000),
(2, 5, 100000),
(3, 5, 30000),
(4, 6, 60000),
(5, 7, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `Job_Experience`
--

CREATE TABLE `Job_Experience` (
  `Job_ExperienceID` int(11) NOT NULL,
  `Job_ExperienceName` varchar(20) NOT NULL,
  `Job_ExperienceAvgSalary` decimal(10,0) NOT NULL,
  `JobAvgHours` decimal(10,0) NOT NULL,
  `IndustryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job_Experience`
--

INSERT INTO `Job_Experience` (`Job_ExperienceID`, `Job_ExperienceName`, `Job_ExperienceAvgSalary`, `JobAvgHours`, `IndustryID`) VALUES
(1, 'Software Engineer', 60000, 40, 1),
(2, 'Data Analyst', 55000, 38, 1),
(3, 'Marketing Manager', 70000, 42, 3),
(4, 'Sales Executive', 50000, 37, 3),
(5, 'HR Specialist', 52000, 40, 5),
(6, 'Chemist', 70000, 40, 8),
(7, 'Mechanical Engineer', 75000, 40, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Qualification`
--

CREATE TABLE `Qualification` (
  `QualificationID` int(11) NOT NULL,
  `QualificationName` varchar(50) NOT NULL,
  `AwarderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Qualification`
--

INSERT INTO `Qualification` (`QualificationID`, `QualificationName`, `AwarderID`) VALUES
(1, 'Bachelor of Science in Physics', 1),
(2, 'Master of Science in Physics', 1),
(3, 'Bachelor of Engineering in Civil Engineering', 2),
(4, 'Master of Engineering in Civil Engineering', 3),
(5, 'Bachelor of Mathematics in Mathematics', 3),
(6, 'Bachelor of Engineering in Electrical Engineering', 4),
(7, 'Master of Mathematics in Calculus', 4),
(8, 'Bachelor of Science in Chemistry', 5),
(9, 'Master of Science in Chemistry', 5),
(10, 'Bachelor of Engineering in Mechanical Engineering', 6),
(11, 'Master of Engineering in Mechanical Engineering', 6);

-- --------------------------------------------------------

--
-- Table structure for table `QualificationCandidate`
--

CREATE TABLE `QualificationCandidate` (
  `NationalInsuranceNumber` varchar(9) NOT NULL,
  `QualificationID` int(11) NOT NULL,
  `QualificationCandidateGrade` varchar(3) NOT NULL,
  `QualificationCandidateDateOfCompletion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `QualificationCandidate`
--

INSERT INTO `QualificationCandidate` (`NationalInsuranceNumber`, `QualificationID`, `QualificationCandidateGrade`, `QualificationCandidateDateOfCompletion`) VALUES
('NI123456A', 1, '1', '2022-05-01'),
('NI123457B', 3, '2-1', '2020-05-03'),
('NI123458C', 4, '3', '2021-05-04'),
('NI123458C', 5, '2-1', '2023-05-05'),
('NI123460E', 2, '2-2', '2022-05-02'),
('NI123461F', 8, '2-1', '2023-06-01'),
('NI123462G', 9, '1', '2023-06-02'),
('NI123463H', 10, '3', '2022-06-03'),
('NI123464I', 11, '2-2', '2022-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `Recruiter`
--

CREATE TABLE `Recruiter` (
  `RecruiterID` int(11) NOT NULL,
  `RecruiterForename` varchar(30) NOT NULL,
  `RecruiterSurname` varchar(30) NOT NULL,
  `RecruiterTitle` varchar(10) NOT NULL,
  `RecruiterGender` varchar(20) NOT NULL,
  `RecruiterAddress1` varchar(50) NOT NULL,
  `RecruiterAddress2` varchar(50) DEFAULT NULL,
  `RecruiterPostCode` varchar(8) NOT NULL,
  `RecruiterEmail` varchar(50) NOT NULL,
  `RecruiterPhoneNumber` varchar(15) NOT NULL,
  `BusinessID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Recruiter`
--

INSERT INTO `Recruiter` (`RecruiterID`, `RecruiterForename`, `RecruiterSurname`, `RecruiterTitle`, `RecruiterGender`, `RecruiterAddress1`, `RecruiterAddress2`, `RecruiterPostCode`, `RecruiterEmail`, `RecruiterPhoneNumber`, `BusinessID`) VALUES
(1, 'Oliver', 'Taylor', 'Mr.', 'Male', '123 High Street', NULL, 'BT31 1AA', 'olivertaylor@email.com', '0123456789', 1),
(2, 'Amelia', 'Johnson', 'Ms.', 'Female', '456 Low Street', 'Apt 100', 'BT33 2BB', 'ameliajohnson@email.com', '0234567891', 2),
(3, 'Harry', 'Robinson', 'Mr.', 'Male', '789 Sesame Street', NULL, 'BT33 3CC', 'harryrobinson@email.com', '0345678912', 3),
(4, 'Isla', 'Walker', 'Ms.', 'Female', '321 Baba Street', 'Building B', 'BT43 4DD', 'islawalker@email.com', '0456789123', 3),
(5, 'Jack', 'Thompson', 'Mr.', 'Male', '654 Meh Drive', NULL, 'BT53 5EE', 'jackthompson@email.com', '0567891234', 2),
(6, 'Ava', 'Thomas', 'Ms.', 'Female', '123 Main Street', NULL, 'BT12 12L', 'avathomas@email.com', '4433556677', 4),
(7, 'George', 'White', 'Mr.', 'Male', '456 Side Street', 'Apt 200', 'BT13 13M', 'georgewhite@email.com', '5544667788', 5);

-- --------------------------------------------------------

--
-- Structure for view `AvgWageFromBusinesses`
--
DROP TABLE IF EXISTS `AvgWageFromBusinesses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dmackle04`@`localhost` SQL SECURITY DEFINER VIEW `AvgWageFromBusinesses`  AS SELECT `b`.`BusinessName` AS `Business_Name`, round(avg(`jb`.`JobBusinessSalary`),2) AS `Average_Wage` FROM (`JobBusiness` `jb` join `Business` `b` on(`jb`.`BusinessID` = `b`.`BusinessID`)) GROUP BY `b`.`BusinessName` ORDER BY round(avg(`jb`.`JobBusinessSalary`),2) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `ContactInformationOfFemaleCandidates`
--
DROP TABLE IF EXISTS `ContactInformationOfFemaleCandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dmackle04`@`localhost` SQL SECURITY DEFINER VIEW `ContactInformationOfFemaleCandidates`  AS SELECT concat(`c`.`CandidateTitle`,' ',`c`.`CandidateForename`,' ',`c`.`CandidateSurname`,' ') AS `Full_Name`, `c`.`CandidatePhoneNumber` AS `Phone_Number`, `c`.`CandidateEmail` AS `Email`, `c`.`CandidateAddress1` AS `Address_Line_One`, `c`.`CandidateAddress2` AS `Address_Line_Two`, `c`.`CandidatePostCode` AS `Post_Code` FROM `Candidate` AS `c` WHERE `c`.`CandidateGender` = 'Female' ;

-- --------------------------------------------------------

--
-- Structure for view `InterviewInfo`
--
DROP TABLE IF EXISTS `InterviewInfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dmackle04`@`localhost` SQL SECURITY DEFINER VIEW `InterviewInfo`  AS SELECT concat(`c`.`CandidateForename`,' ',`c`.`CandidateSurname`) AS `Candidate_Name`, `i`.`InterviewRoom` AS `Interview_Room`, `i`.`InterviewDate` AS `Interview_Date`, `i`.`InterviewTime` AS `Interview_Time`, `b`.`BusinessName` AS `Business_Name`, concat(`r`.`RecruiterForename`,' ',`r`.`RecruiterSurname`) AS `Recruiter_Name` FROM (((`Candidate` `c` join `Interview` `i` on(`c`.`CandidateNationalInsuranceNumber` = `i`.`NationalInsuranceNumber`)) join `Recruiter` `r` on(`i`.`RecruiterID` = `r`.`RecruiterID`)) join `Business` `b` on(`r`.`BusinessID` = `b`.`BusinessID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `InterviewsInCompanyTimeframe`
--
DROP TABLE IF EXISTS `InterviewsInCompanyTimeframe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dmackle04`@`localhost` SQL SECURITY DEFINER VIEW `InterviewsInCompanyTimeframe`  AS SELECT concat(`c`.`CandidateForename`,' ',`c`.`CandidateSurname`) AS `Candidate_Name`, `i`.`InterviewDate` AS `Interview_Date`, `i`.`InterviewTime` AS `Interview_Time`, concat(`r`.`RecruiterForename`,' ',`r`.`RecruiterSurname`) AS `Recruiter_Name`, `b`.`BusinessName` AS `Business_Name` FROM (((`Interview` `i` join `Candidate` `c` on(`i`.`NationalInsuranceNumber` = `c`.`CandidateNationalInsuranceNumber`)) join `Recruiter` `r` on(`i`.`RecruiterID` = `r`.`RecruiterID`)) join `Business` `b` on(`r`.`BusinessID` = `b`.`BusinessID`)) WHERE `b`.`BusinessName` = 'Google' AND `i`.`InterviewDate` between '2024-03-01' and '2024-03-31' ORDER BY `i`.`InterviewDate` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Awarder`
--
ALTER TABLE `Awarder`
  ADD PRIMARY KEY (`AwarderID`),
  ADD KEY `AwarderName` (`AwarderName`);

--
-- Indexes for table `Business`
--
ALTER TABLE `Business`
  ADD PRIMARY KEY (`BusinessID`),
  ADD UNIQUE KEY `BusinessEmail` (`BusinessEmail`),
  ADD KEY `BusinessIndustryFK` (`IndustryID`),
  ADD KEY `BusinessName` (`BusinessName`);

--
-- Indexes for table `Candidate`
--
ALTER TABLE `Candidate`
  ADD PRIMARY KEY (`CandidateNationalInsuranceNumber`),
  ADD UNIQUE KEY `CandidateEmail` (`CandidateEmail`);

--
-- Indexes for table `CandidateJob_Experience`
--
ALTER TABLE `CandidateJob_Experience`
  ADD PRIMARY KEY (`NationalInsuranceNumber`,`Job_ExperienceID`),
  ADD KEY `CandidateJob_ExperienceJobFK` (`Job_ExperienceID`);

--
-- Indexes for table `Industry`
--
ALTER TABLE `Industry`
  ADD PRIMARY KEY (`IndustryID`),
  ADD KEY `IndustryName` (`IndustryName`);

--
-- Indexes for table `Interview`
--
ALTER TABLE `Interview`
  ADD PRIMARY KEY (`NationalInsuranceNumber`,`RecruiterID`),
  ADD KEY `InterviewRecruiterFK` (`RecruiterID`);

--
-- Indexes for table `JobBusiness`
--
ALTER TABLE `JobBusiness`
  ADD PRIMARY KEY (`BusinessID`,`Job_ExperienceID`),
  ADD KEY `JobBusinessBusinessFK` (`Job_ExperienceID`);

--
-- Indexes for table `Job_Experience`
--
ALTER TABLE `Job_Experience`
  ADD PRIMARY KEY (`Job_ExperienceID`),
  ADD KEY `Job_ExperienceIndustryFK` (`IndustryID`),
  ADD KEY `Job_ExperienceName` (`Job_ExperienceName`);

--
-- Indexes for table `Qualification`
--
ALTER TABLE `Qualification`
  ADD PRIMARY KEY (`QualificationID`),
  ADD KEY `QualificationAwarderFK` (`AwarderID`),
  ADD KEY `QualificationName` (`QualificationName`);

--
-- Indexes for table `QualificationCandidate`
--
ALTER TABLE `QualificationCandidate`
  ADD PRIMARY KEY (`NationalInsuranceNumber`,`QualificationID`),
  ADD KEY `QualificationCandidateQualificationFK` (`QualificationID`),
  ADD KEY `QualificationCandidateGrade` (`QualificationCandidateGrade`);

--
-- Indexes for table `Recruiter`
--
ALTER TABLE `Recruiter`
  ADD PRIMARY KEY (`RecruiterID`),
  ADD UNIQUE KEY `RecruiterEmail` (`RecruiterEmail`),
  ADD KEY `RecruiterBusinessFK` (`BusinessID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Business`
--
ALTER TABLE `Business`
  ADD CONSTRAINT `BusinessIndustryFK` FOREIGN KEY (`IndustryID`) REFERENCES `Industry` (`IndustryID`);

--
-- Constraints for table `CandidateJob_Experience`
--
ALTER TABLE `CandidateJob_Experience`
  ADD CONSTRAINT `CandidateJob_ExperienceCandidateFK` FOREIGN KEY (`NationalInsuranceNumber`) REFERENCES `Candidate` (`CandidateNationalInsuranceNumber`),
  ADD CONSTRAINT `CandidateJob_ExperienceJobFK` FOREIGN KEY (`Job_ExperienceID`) REFERENCES `Job_Experience` (`Job_ExperienceID`);

--
-- Constraints for table `Interview`
--
ALTER TABLE `Interview`
  ADD CONSTRAINT `InterviewCandidateFK` FOREIGN KEY (`NationalInsuranceNumber`) REFERENCES `Candidate` (`CandidateNationalInsuranceNumber`),
  ADD CONSTRAINT `InterviewRecruiterFK` FOREIGN KEY (`RecruiterID`) REFERENCES `Recruiter` (`RecruiterID`);

--
-- Constraints for table `JobBusiness`
--
ALTER TABLE `JobBusiness`
  ADD CONSTRAINT `JobBusinessBusinessFK` FOREIGN KEY (`Job_ExperienceID`) REFERENCES `Job_Experience` (`Job_ExperienceID`),
  ADD CONSTRAINT `JobBusinessJobFK` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`BusinessID`);

--
-- Constraints for table `Job_Experience`
--
ALTER TABLE `Job_Experience`
  ADD CONSTRAINT `Job_ExperienceIndustryFK` FOREIGN KEY (`IndustryID`) REFERENCES `Industry` (`IndustryID`);

--
-- Constraints for table `Qualification`
--
ALTER TABLE `Qualification`
  ADD CONSTRAINT `QualificationAwarderFK` FOREIGN KEY (`AwarderID`) REFERENCES `Awarder` (`AwarderID`);

--
-- Constraints for table `QualificationCandidate`
--
ALTER TABLE `QualificationCandidate`
  ADD CONSTRAINT `QualificationCandidateCandidateFK` FOREIGN KEY (`NationalInsuranceNumber`) REFERENCES `Candidate` (`CandidateNationalInsuranceNumber`),
  ADD CONSTRAINT `QualificationCandidateQualificationFK` FOREIGN KEY (`QualificationID`) REFERENCES `Qualification` (`QualificationID`);

--
-- Constraints for table `Recruiter`
--
ALTER TABLE `Recruiter`
  ADD CONSTRAINT `RecruiterBusinessFK` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`BusinessID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
