-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2016 at 01:47 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";  


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;  
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gradingsystem`
--

-- ---------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE IF NOT EXISTS `class_list` ( 
  `class_id` varchar(15) NOT NULL,
  `teacher_id` varchar(15) DEFAULT NULL,
  `school_year` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_list`
--

 INSERT INTO `class_list` (`class_id`, `teacher_id`, `school_year`, `grade`, `section`) VALUES
('568fd776849c0', 'T-001', '2015-2016', 'One', '1');

------------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

CREATE TABLE IF NOT EXISTS `criteria_list` (
  `idcriteria_list` varchar(45) NOT NULL,
  `subject_teacher_id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `quarter` varchar(45) NOT NULL,
  `hps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria_list`
--

INSERT INTO `criteria_list` (`idcriteria_list`, `subject_teacher_id`, `category`, `quarter`, `hps`) VALUES
('568feb11da9d9', 2, 'WW', '1st', 100),
('568feb173ee94', 2, 'PT', '1st', 90),
('568feb1e0cfdd', 2, 'QA', '1st', 80),
('568feb22e148f', 2, 'WW', '1st', 50);

-- -------------------------------------------------------

--
-- Table structure for table `enrolled_list`
--

CREATE TABLE IF NOT EXISTS `enrolled_list` (
  `class_id` varchar(45) NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `school_year` varchar(45) NOT NULL,
  `en_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled_list`
--

INSERT INTO `enrolled_list` (`class_id`, `student_id`, `school_year`, `en_id`) VALUES
('568fd776849c0', 'S-001', '', 8),
('568fd776849c0', 'S-002', '', 9),
('568fd776849c0', 'S-003', '', 10),
('568fd776849c0', 'S-004', '', 11),
('568fd776849c0', 'S-006', '', 12),
('568fd776849c0', 'S-005', '', 13);

---------------------------------------------------------------

--
-- Table structure for table `results_list`
--

CREATE TABLE IF NOT EXISTS `results_list` (
  `results_id` varchar(44) NOT NULL,
  `student_id` varchar(45) DEFAULT NULL,
  `criteria_id` varchar(45) DEFAULT NULL,
  `score` decimal(6,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results_list`
--

INSERT INTO `results_list` (`results_id`, `student_id`, `criteria_id`, `score`) VALUES
('568feb16c6904', 'S-001', '568feb11da9d9', '10'),
('568feb16d911b', 'S-002', '568feb11da9d9', '0'),
('568feb16e743a', 'S-003', '568feb11da9d9', '0'),
('568feb171dc2b', 'S-004', '568feb11da9d9', '0'),
('568feb172bf1e', 'S-006', '568feb11da9d9', '0'),
('568feb17337e9', 'S-005', '568feb11da9d9', '0'),
('568feb1dc115a', 'S-001', '568feb173ee94', '0'),
('568feb1dd178a', 'S-002', '568feb173ee94', '0'),
('568feb1dde81f', 'S-003', '568feb173ee94', '0'),
('568feb1de73b8', 'S-004', '568feb173ee94', '0'),
('568feb1deebe1', 'S-006', '568feb173ee94', '0'),
('568feb1e035b1', 'S-005', '568feb173ee94', '0'),
('568feb2295f31', 'S-001', '568feb1e0cfdd', '0'),
('568feb22a5a1d', 'S-002', '568feb1e0cfdd', '0'),
('568feb22b67e0', 'S-003', '568feb1e0cfdd', '0'),
('568feb22c633c', 'S-004', '568feb1e0cfdd', '0'),
('568feb22cedea', 'S-006', '568feb1e0cfdd', '0'),
('568feb22d6756', 'S-005', '568feb1e0cfdd', '0'),
('568feb298abad', 'S-001', '568feb22e148f', '0'),
('568feb2993638', 'S-002', '568feb22e148f', '0'),
('568feb299af22', 'S-003', '568feb22e148f', '0'),
('568feb29abd04', 'S-004', '568feb22e148f', '0'),
('568feb29b3657', 'S-006', '568feb22e148f', '0'),
('568feb29bc205', 'S-005', '568feb22e148f', '0');

-- -----------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE IF NOT EXISTS `student_list` (
  `student_id` varchar(15) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`student_id`, `fname`, `mname`, `lname`, `gender`) VALUES
('S-001', 'Mary Jane', 'Legaspi', 'Recii', 'Female'),
('S-002', 'George', 'Gorrondo', 'Lasala', 'Male'),
('S-003', 'Leslie', 'Poe', 'Marianito', 'Female'),
('S-004', 'Emmanuel', 'F', 'Alindongan', 'Male'),
('S-005', 'Paul Henry', 'Latoga', 'Jazmin', 'Male'),
('S-006', 'Paul Andrew ', 'Short', 'Bercasio', 'Male');

-- ---------------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE IF NOT EXISTS `subject_list` (
  `subject_id` varchar(45) NOT NULL,
  `grade` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `subject_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`subject_id`, `grade`, `subject`, `subject_code`) VALUES
('S-001', 'One', 'Filipino 1', 'Filipino'),
('S-002', 'Two', 'Filipino 2', 'Filipino'),
('S-003', 'Three', 'Filipino 3', 'Filipino'),
('S-004', 'Four', 'Filipino 4', 'Filipino'),
('S-005', 'Five', 'Filipino 5', 'Filipino'),
('S-006', 'Six', 'Filipino 6', 'Filipino'),
('S-007', 'One', 'Mother Tongue 1', 'Mother Tongue'),
('S-008', 'Two', 'Mother Tongue 2', 'Mother Tongue'),
('S-009', 'Three', 'Mother Tongue 3', 'Mother Tongue'),
('S-010', 'Four', 'English 4', 'English'),
('S-011', 'Five', 'English 5', 'English'),
('S-012', 'Six', 'English 6', 'English'),
('S-013', 'One', 'Math 1', 'Mathematics'),
('S-014', 'Two', 'Math 2', 'Mathematics'),
('S-015', 'Three', 'Math 3', 'Mathematics'),
('S-016', 'Four', 'Math 4', 'Mathematics'),
('S-017', 'Five', 'Math 5', 'Mathematics'),
('S-018', 'Six', 'Math 6', 'Mathematics'),
('S-019', 'One', 'EsP 1', 'Edukasyon sa Pagpapakatao'),
('S-020', 'Two', 'EsP 2', 'Edukasyon sa Pagpapakatao'),
('S-021', 'Three', 'EsP 3', 'Edukasyon sa Pagpapakatao'),
('S-022', 'Four', 'EsP 4', 'Edukasyon sa Pagpapakatao'),
('S-023', 'Five', 'EsP 5', 'Edukasyon sa Pagpapakatao'),
('S-024', 'Six', 'EsP 6', 'Edukasyon sa Pagpapakatao'),
('S-025', 'One', 'AP 1', 'Araling Panlipunan'),
('S-026', 'Two', 'AP 2', 'Araling Panlipunan'),
('S-027', 'Three', 'AP 3', 'Araling Panlipunan'),
('S-028', 'Four', 'AP 4', 'Araling Panlipunan'),
('S-029', 'Five', 'AP 5', 'Araling Panlipunan'),
('S-030', 'Six', 'AP 6', 'Araling Panlipunan'),
('S-031', 'One', 'MSEP 1', 'MSEP'),
('S-032', 'Two', 'MSEP 2', 'MSEP'),
('S-033', 'Three', 'MSEP 3', 'MSEP'),
('S-034', 'Four', 'MSEP 4', 'MSEP'),
('S-035', 'Five', 'MSEP 5', 'MSEP'),
('S-036', 'Six', 'MSEP 6', 'MSEP');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher_list`
--

CREATE TABLE IF NOT EXISTS `subject_teacher_list` (
  `subject_teacher_pri` int(11) NOT NULL,
  `class_id` varchar(45) NOT NULL,
  `subject_id` varchar(45) NOT NULL,
  `subject_teacher_id` varchar(45) NOT NULL,
  `teacher_id` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_teacher_list`
--

INSERT INTO `subject_teacher_list` (`subject_teacher_pri`, `class_id`, `subject_id`, `subject_teacher_id`, `teacher_id`) VALUES
(2, '568fd776849c0', 'S-01', 'T-001', '568fd776849c0'),
(3, '568fd776849c0', 'S-007', 'T-001', '568fd776849c0'),
(4, '568fd776849c0', 'S-013', 'T-001', '568fd776849c0'),
(5, '568fd776849c0', 'S-019', 'T-001', '568fd776849c0'),
(6, '568fd776849c0', 'S-025', 'T-001', '568fd776849c0'),
(7, '568fd776849c0', 'S-031', 'T-001', '568fd776849c0');

-- --------------------------------------------------------

--
-- Stand-in structure for view `teacher_subjects`
--
CREATE TABLE IF NOT EXISTS `teacher_subjects` (
`Name` varchar(135)
,`Subject_id` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `user_list Input`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `user_id` varchar(15) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `fname`, `mname`, `lname`, `uname`, `password`, `type`) VALUES
('A-001', 'Paul Bryan', 'Seva', 'Dy', 'admin', 'admin', 'Administrator'),
('T-001', 'Grace', 'Cunanan', 'Valenzuela', 'grace', 'grace', 'Teacher'),
('T-002', 'Mike', 'Dollesin', 'Brogada', 'mike', 'mike', 'Teacher');

-- --------------------------------------------------------

--
-- Structure for view `teacher_subjects`
--
DROP TABLE IF EXISTS `teacher_subjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teacher_subjects` AS select concat(`user_list`.`fname`,`user_list`.`mname`,`user_list`.`lname`) AS `Name`,`subject_teacher_list`.`subject_id` AS `Subject_id` from (`subject_teacher_list` join `user_list` on((`user_list`.`user_id` = `subject_teacher_list`.`subject_teacher_id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`class_id`), ADD KEY `f_teacher_id_idx` (`teacher_id`);

--
-- Indexes for table `criteria_list`
--
ALTER TABLE `criteria_list`
  ADD PRIMARY KEY (`idcriteria_list`), ADD KEY `subject_teacher_id` (`subject_teacher_id`);

--
-- Indexes for table `enrolled_list`
--
ALTER TABLE `enrolled_list`
  ADD PRIMARY KEY (`en_id`), ADD KEY `class_id` (`class_id`), ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `results_list`
--
ALTER TABLE `results_list`
  ADD PRIMARY KEY (`results_id`), ADD KEY `student_result_fk_idx` (`student_id`), ADD KEY `criteria_result_fk_idx` (`criteria_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_teacher_list`
--
ALTER TABLE `subject_teacher_list`
  ADD PRIMARY KEY (`subject_teacher_pri`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrolled_list`
--
ALTER TABLE `enrolled_list`
  MODIFY `en_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subject_teacher_list`
--
ALTER TABLE `subject_teacher_list`
  MODIFY `subject_teacher_pri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_list`
--
ALTER TABLE `class_list`
ADD CONSTRAINT `f_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `user_list` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `criteria_list`
--
 ALTER TABLE `criteria_list`
ADD CONSTRAINT `subject_teacher_id` FOREIGN KEY (`subject_teacher_id`) REFERENCES `subject_teacher_list` (`subject_teacher_pri`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolled_list`
--
ALTER TABLE `enrolled_list`
ADD CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class_list` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results_list`
--
ALTER TABLE `results_list`
ADD CONSTRAINT `criteria_result_fk` FOREIGN KEY (`criteria_id`) REFERENCES `criteria_list` (`idcriteria_list`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `student_result_fk` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
