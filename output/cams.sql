-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 01:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cams`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `login_id` varchar(50) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `lab_number` int(10) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`login_id`, `dept_name`, `start_time`, `end_time`, `date`, `subject_name`, `lab_number`, `class_name`) VALUES
('mca2201', 'Information Technology', '19:59:56', '19:59:56', '2022-12-01', 'Advanced Java', 1, 'MCA_2223'),
('mca2202', 'Information Technology', '20:00:24', '20:00:24', '2022-12-01', 'Advanced Java', 1, 'MCA_2223'),
('mca2202', 'Information Technology', '10:17:55', '10:42:14', '2022-12-02', 'Advanced Database Management System', 2, 'MCA_2223'),
('mca2203', 'Information Technology', '10:42:42', '10:42:48', '2022-12-02', 'Advanced Database Management System', 2, 'MCA_2223'),
('pgdm2203', 'Management', '21:48:19', '22:33:49', '2022-12-03', 'Managerial Economics (Micro)', 3, 'PGDM_2223'),
('pgdm2202', 'Management', '21:51:38', '22:33:50', '2022-12-03', 'Managerial Economics (Micro)', 3, 'PGDM_2223'),
('mca2204', 'Information Technology', '09:31:24', '10:59:57', '2022-12-04', 'Data Structure Lab', 4, 'MCA_2223'),
('mca2205', 'Information Technology', '09:32:12', '10:59:57', '2022-12-04', 'Data Structure Lab', 4, 'MCA_2223'),
('mca2201', 'Information Technology', '09:32:29', '10:59:59', '2022-12-04', 'Data Structure Lab', 4, 'MCA_2223'),
('pgdm2204', 'Management', '17:16:53', '18:03:05', '2022-12-09', 'Managerial Economics (Micro)', 5, 'PGDM_2223'),
('pgdm2205', 'Management', '17:17:10', '18:03:10', '2022-12-09', 'Managerial Economics (Micro)', 5, 'PGDM_2223'),
('pgdm2202', 'Management', '17:17:30', '18:03:15', '2022-12-09', 'Managerial Economics (Micro)', 5, 'PGDM_2223'),
('mca2204', 'Information Technology', '17:18:10', '18:03:16', '2022-12-09', 'Web Technologies', 6, 'MCA_2223'),
('mca2205', 'Information Technology', '17:18:26', '18:03:15', '2022-12-09', 'Web Technologies', 6, 'MCA_2223'),
('mca2201', 'Information Technology', '17:18:58', '18:03:16', '2022-12-09', 'Web Technologies', 6, 'MCA_2223'),
('pgdm2201', 'Management', '09:45:00', '09:56:42', '2022-12-10', 'Management Research Methods (OR & RM)', 8, 'PGDM_2223'),
('pgdm2202', 'Management', '09:45:14', '09:56:44', '2022-12-10', 'Management Research Methods (OR & RM)', 8, 'PGDM_2223'),
('mca2201', 'Information Technology', '09:45:34', '09:56:46', '2022-12-10', 'Web Technologies', 7, 'MCA_2223'),
('mca2202', 'Information Technology', '09:45:47', '09:56:47', '2022-12-10', 'Web Technologies', 7, 'MCA_2223');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_name` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_name`, `class_name`, `subject`) VALUES
('Management', 'PGDM_2223', 'Managerial Economics (Micro)'),
('Management', 'PGDM_2223', 'Financial Reporting, Statement & Analysis'),
('Management', 'PGDM_2223', 'Mathematics & Statistics for Management'),
('Management', 'PGDM_2223', 'Management Research Methods (OR & RM)'),
('Management', 'PGDM_2223', 'Organizational Behaviour & Organizational Design'),
('Management', 'PGDM_2223', 'Design Thinking & Decision Making - I	'),
('Management', 'PGDM_2223', 'Human Resources Management'),
('Management', 'PGDM_2223', 'Marketing Management'),
('Management', 'PGDM_2223', 'Financial & Cost Management'),
('Management', 'PGDM_2223', 'Operations Management'),
('Management', 'PGDM_2223', 'Information Technology Management	'),
('Management', 'PGDM_2223', 'FinTech Management'),
('Management', 'PGDM_2223', 'Healthcare Management'),
('Management', 'PGDM_2223', 'Social Enterprise Management'),
('Management', 'PGDM_2223', 'Digital Media Marketing Communication'),
('Management', 'PGP_SBA_2223', 'Introduction to Accounts'),
('Management', 'PGP_SBA_2223', 'Introduction to Business Maths'),
('Management', 'PGP_SBA_2223', 'Digital technology tools in Management'),
('Management', 'PGP_SBA_2223', 'Business Communication'),
('Management', 'PGP_SBA_2223', 'Perspective in Management'),
('Information Technology', 'MCA_2223', 'Mathematical Foundation for Computer Science 1'),
('Information Technology', 'MCA_2223', 'Advanced Java'),
('Information Technology', 'MCA_2223', 'Advanced Database Management System'),
('Information Technology', 'MCA_2223', 'Software Project Management'),
('Information Technology', 'MCA_2223', 'Data Structure Lab'),
('Information Technology', 'MCA_2223', 'Advanced Java LAB'),
('Information Technology', 'MCA_2223', 'Advanced Database Management System LAB'),
('Information Technology', 'MCA_2223', 'Web Technologies'),
('Information Technology', 'MCA_2223', 'Mini Project – 1 A'),
('Information Technology', 'MCA_2324', 'Big Data Analytics and Visualization'),
('Information Technology', 'MCA_2324', 'Distributed System and Cloud Computing'),
('Information Technology', 'MCA_2324', 'Blockchain'),
('Information Technology', 'MCA_2324', 'Cyber Security and Digital Forensics'),
('Information Technology', 'MCA_2324', 'Big Data Analytics and Visualization Lab'),
('Information Technology', 'MCA_2324', 'Distributed System and Cloud Computing Lab'),
('Information Technology', 'MCA_2324', 'Mobile Computing Lab'),
('Information Technology', 'MCA_2324', 'Software Testing Quality Assurance Lab'),
('Information Technology', 'MCA_2324', 'Mini Project: 2 A'),
('Information Technology', 'PGP_2223', 'Foundations of Statistics'),
('Information Technology', 'PGP_2223', 'Programming Fundamentals'),
('Information Technology', 'PGP_2223', 'Advanced Excel'),
('Information Technology', 'PGP_2223', 'General Concepts of Data Science'),
('Information Technology', 'PGP_2223', 'Python for Data Science'),
('Information Technology', 'PGP_2223', 'R for Data Science'),
('Information Technology', 'PGP_2223', 'Machine Learning Basics'),
('Information Technology', 'PGP_2223', 'Machine Learning Advanced'),
('Information Technology', 'PGP_2223', 'Project');

-- --------------------------------------------------------

--
-- Table structure for table `login_client`
--

CREATE TABLE `login_client` (
  `login_id` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `degree_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_client`
--

INSERT INTO `login_client` (`login_id`, `passwd`, `dept_name`, `name`, `degree_name`) VALUES
('mca2201', 'mca2201', 'Information Technology', 'Klein', 'MCA_2223'),
('mca2202', 'mca2202', 'Information Technology', 'Lopez', 'MCA_2223'),
('mca2203', 'mca2203', 'Information Technology', 'Mason', 'MCA_2223'),
('mca2204', 'mca2204', 'Information Technology', 'Nalty', 'MCA_2223'),
('mca2205', 'mca2205', 'Information Technology', 'Ochoa', 'MCA_2223'),
('mca2301', 'mca2301', 'Information Technology', 'Trott', 'MCA_2324'),
('mca2302', 'mca2302', 'Information Technology', 'Usman', 'MCA_2324'),
('mca2303', 'mca2303', 'Information Technology', 'Valdo', 'MCA_2324'),
('mca2304', 'mca2304', 'Information Technology', 'White', 'MCA_2324'),
('mca2305', 'mca2305', 'Information Technology', 'Xiang', 'MCA_2324'),
('pgdm2201', 'pgdm2201', 'Management', 'Adams', 'PGDM_2223'),
('pgdm2202', 'pgdm2202', 'Management', 'Baker', 'PGDM_2223'),
('pgdm2203', 'pgdm2203', 'Management', 'Clark', 'PGDM_2223'),
('pgdm2204', 'pgdm2204', 'Management', 'Davis', 'PGDM_2223'),
('pgdm2205', 'pgdm2205', 'Management', 'Evans', 'PGDM_2223'),
('pgp2201', 'pgp2201', 'Information Technology', 'Patel', 'PGP_2223'),
('pgp2202', 'pgp2202', 'Information Technology', 'Quinn', 'PGP_2223'),
('pgp2203', 'pgp2203', 'Information Technology', 'Reily', 'PGP_2223'),
('pgp2204', 'pgp2204', 'Information Technology', 'Smith', 'PGP_2223'),
('pgp2205', 'pgp2205', 'Information Technology', 'Trott', 'PGP_2223'),
('pgp_sba_2201', 'pgp_sba_2201', 'Management', 'Frank', 'PGP_SBA_2223'),
('pgp_sba_2202', 'pgp_sba_2202', 'Management', 'Ghosh', 'PGP_SBA_2223'),
('pgp_sba_2203', 'pgp_sba_2203', 'Management', 'Hills', 'PGP_SBA_2223'),
('pgp_sba_2204', 'pgp_sba_2204', 'Management', 'Irwin', 'PGP_SBA_2223'),
('pgp_sba_2205', 'pgp_sba_2205', 'Management', 'Jones', 'PGP_SBA_2223');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `lab_number` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `total_time` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`lab_number`, `start_time`, `total_time`, `dept_name`, `subject_name`, `class_name`) VALUES
(1, '07:30:00', 120, 'Information Technology', 'Advanced Java', 'MCA_2223'),
(2, '10:10:00', 60, 'Information Technology', 'Advanced Database Management System', 'MCA_2223'),
(3, '21:47:23', 120, 'Management', 'Managerial Economics (Micro)', 'PGDM_2223'),
(4, '09:30:25', 60, 'Information Technology', 'Data Structure Lab', 'MCA_2223'),
(5, '17:16:20', 120, 'Management', 'Managerial Economics (Micro)', 'PGDM_2223'),
(6, '17:17:34', 120, 'Information Technology', 'Web Technologies', 'MCA_2223'),
(7, '09:44:02', 120, 'Information Technology', 'Web Technologies', 'MCA_2223'),
(8, '09:44:33', 120, 'Management', 'Management Research Methods (OR & RM)', 'PGDM_2223'),
(9, '17:23:10', 120, 'Information Technology', 'Mini Project ‚Äď 1 A', 'MCA_2223');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_client`
--
ALTER TABLE `login_client`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`lab_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
