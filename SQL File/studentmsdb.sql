-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 08:41 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sturecdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, '10', 'A', '2023-11-13 10:42:14'),
(2, '10', 'B', '2023-11-13 10:42:35'),
(3, '10', 'C', '2023-11-13 10:42:41'),
(4, '11', 'A', '2023-11-13 10:42:47'),
(5, '11', 'B', '2023-11-13 10:42:52'),
(6, '11', 'C', '2023-11-13 10:42:57'),
(7, '11', 'D', '2023-11-13 10:43:04'),
(8, '12', 'A', '2023-11-13 10:43:10'),
(9, '12', 'C', '2023-11-13 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2023-11-14 06:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2023-11-14 06:35:58'),
(4, 'Test', 3, 'Your test schedule will soon be given', '2023-11-14 18:17:03'),
(5, 'Test', 8, 'Your test schedule will soon be given', '2023-11-14 19:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblfile`
--

CREATE TABLE `tblfile` (
  `ID` int(5) NOT NULL,
  `Title` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `File` LONGBLOB DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">Hello. This prototype is from a student of Techno Main Salt Lake on Online Student Information Management System. It will showcase only a few functional requirements of a real Student Management System like adding student or class or giving public notice, etc. Hope you enjoy this simple prototype.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Techno India, TECHNO INDIA: EM-4/1, Sector V, Bidhannagar, Kolkata, West Bengal 700091', 'technomain1234@gmail.com', 9324653220, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'School will re-open', 'Consult your class teacher.', '2023-11-14 09:11:57'),
(2, 'Odd Semester Exam', 'Exams will be starting from 8th of December\r\n', '2023-11-14 19:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'Karam Das', 'karam@gmail.com', '4', 'Male', '2003-01-13', '2113059200', 'Hari Das', 'Madhumita Das', 5465454645, 4646546565, 'J-908, Hariram Nagra Kolkata', 'karam', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2023-11-13 14:09:04'),
(2, 'Kishore Sharma', 'kishore@gmail.com', '3', 'Male', '2004-01-05', '2113059201', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'kishore', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2023-11-10 06:23:33'),
(3, 'Ananti Majumder', 'ananti@gmali.com', '2', 'Female', '1999-01-05', '2113059202', 'Parthib Majumder', 'Sharmistha Majumder', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'ananti', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2023-11-11 15:24:52'),
(4, 'Jina Dey', 'jina@gmail.com', '1', 'Female', '2002-02-10', '2113059203', 'Anuj Dey', 'Garima Dey', 1234698741, 1234567890, 'Mumbai', 'jina', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2023-11-02 18:19:45'),
(5, 'Anuj kumar Singh', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '2113059204', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'anuj', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2023-11-14 18:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `TeacherName` varchar(200) DEFAULT NULL,
  `TeacherEmail` varchar(200) DEFAULT NULL,
  `TeacherClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `TeachID` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofJoining` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `TeacherName`, `TeacherEmail`, `TeacherClass`, `Gender`, `DOB`, `TeachID`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofJoining`) VALUES
(1, 'Shreyashi Dasgupta', 'shreyashi@gmail.com', '4', 'Female', '1989-07-13', '1001132', 5465458645, 4646546565, 'Chennai', 'shreyashi', '1202cb962ac59075b964b07152d234b70', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2023-11-13 14:09:04'),
(2, 'Christopher Mclain', 'kishore@gmail.com', '3', 'Male', '1994-03-05', '1001133', 7879879879, 7987979879, 'Kolkata', 'christopher', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2023-11-16 06:23:33'),
(3, 'Mouha Das', 'anshul@gmali.com', '2', 'Female', '1986-01-20', '1001134', 4646546546, 6546598798, 'Kolkata', 'mouha', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2023-11-10 15:24:52');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);
  
--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  
--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
