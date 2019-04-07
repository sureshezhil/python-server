-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2019 at 10:42 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SmartProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhardb_table`
--

CREATE TABLE `aadhardb_table` (
  `id` bigint(200) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `photo` text,
  `father_name` text NOT NULL,
  `dob` date NOT NULL,
  `gender` text,
  `unique_id` bigint(200) DEFAULT NULL,
  `address` text NOT NULL,
  `district` text NOT NULL,
  `thaluk` text,
  `state` text NOT NULL,
  `pin_code` int(30) NOT NULL,
  `phone` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aadhardb_table`
--

INSERT INTO `aadhardb_table` (`id`, `first_name`, `last_name`, `photo`, `father_name`, `dob`, `gender`, `unique_id`, `address`, `district`, `thaluk`, `state`, `pin_code`, `phone`) VALUES
(21, 'suresh', 'R', 'aadhar_sureshr_Rajendhiran.jpg', 'Rajendhiran', '1995-12-04', 'Male', 764392950021, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(22, 'Chitra', 'R', 'aadhar_Chitrar_Rajendhiran.jpg', 'Rajendhiran', '9999-12-04', 'Female', 943540270022, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(23, 'lakshmi', 'B', 'aadhar_lakshmiB_Boobalan.jpg', 'Boobalan', '1992-09-08', 'Female', 903272950023, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(24, 'Poovarasan', 'B', 'aadhar_PoovarasanB_Boobalan.jpg', 'Boobalan', '1992-09-08', 'Male', 196804360024, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(25, 'Kanthan', 'B', 'aadhar_KanthanB_Boobalan.jpg', 'Boobalan', '1999-09-08', 'Male', 176077510025, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 89409000),
(26, 'MohanRaj', 'M', 'aadhar_MohanRajM_malayalathan.jpg', 'malayalathan', '1999-09-08', 'Male', 950734460026, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88888888),
(27, 'Maha', 'M', 'aadhar_MahaM_malayalathan.jpg', 'malayalathan', '1999-09-08', 'Female', 280266050027, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88888888),
(28, 'Manikandan', 'M', 'aadhar_ManikandanM_malayalathan.jpg', 'malayalathan', '1999-09-08', 'Female', 825406840028, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88888888),
(29, 'Jayakumar', 'J', 'aadhar_JayakumarJ_Jaganathan.jpg', 'Jaganathan', '1999-09-08', 'Male', 504744270029, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88888777),
(30, 'sugupathy', 'K', 'aadhar_sugupathyK_Kaththavarayan.jpg', 'Kaththavarayan', '1999-09-08', 'Male', 286990830030, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 888445555),
(31, 'raj', 'K', 'aadhar_rajK_Kaththavarayan.jpg', 'Kaththavarayan', '1999-09-08', 'Male', 641942270031, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 888445555),
(32, 'Siva', 'K', 'aadhar_SivaK_raj.jpg', 'raj', '1999-09-08', 'Male', 747870010032, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 888445555),
(33, 'Selva', 'K', 'aadhar_SelvaK_kumar.jpg', 'kumar', '1999-09-08', 'Male', 395453550033, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 888445555),
(34, 'Selvakumar', 'K', 'aadhar_SelvakumarK_kumaran.jpg', 'kumaran', '1999-09-08', 'Male', 642068120034, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88844333),
(35, 'ramya', 'K', 'aadhar_ramyaK_kumaran.jpg', 'kumaran', '1999-09-08', 'Male', 203020210035, 'mariyamm koil street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88844333),
(36, 'priya', 'K', 'aadhar_priyaK_kumaran.jpg', 'kumaran', '1999-09-08', 'Male', 787640160036, 'A2 street', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 88844333),
(37, 'pradeep', 'r', 'aadhar_pradeepr_Ramkumar.jpg', 'Ramkumar', '0999-09-08', 'Male', 587211760037, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(38, 'praveen', 'r', 'aadhar_praveenr_Ramkumar.jpg', 'Ramkumar', '0999-09-08', 'Male', 718427750038, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(39, 'rajkumar', 'r', 'aadhar_rajkumarr_Ramkumar.jpg', 'Ramkumar', '0999-09-08', 'Male', 827584600039, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(40, 'ravi', 'r', 'aadhar_ravir_ramachanthar.jpg', 'ramachanthar', '0999-09-08', 'Male', 785695460040, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902),
(41, 'ramachanthar', 'g', 'aadhar_ramachantharg_Ganapathy.jpg', 'Ganapathy', '0999-09-08', 'Male', 986310590041, 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 894090088);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_list`
--

CREATE TABLE `candidate_list` (
  `id` bigint(200) NOT NULL,
  `name` text NOT NULL,
  `photo` text,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `symbol_name` text NOT NULL,
  `symbol_logo` text NOT NULL,
  `party_name` text NOT NULL,
  `address` text NOT NULL,
  `district` text NOT NULL,
  `thaluk` text NOT NULL,
  `state` text NOT NULL,
  `pin_no` int(30) NOT NULL,
  `phone` bigint(200) NOT NULL,
  `fathername` text NOT NULL,
  `post` text NOT NULL,
  `acnumber` int(200) NOT NULL,
  `voter_id` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_list`
--

INSERT INTO `candidate_list` (`id`, `name`, `photo`, `dob`, `gender`, `symbol_name`, `symbol_logo`, `party_name`, `address`, `district`, `thaluk`, `state`, `pin_no`, `phone`, `fathername`, `post`, `acnumber`, `voter_id`, `time`) VALUES
(27, 'suresh R', 'C_ABC0082_c.jpg', '1995-12-04', 'Male', 'Mango', 'S_ABC0082_s.jpg', 'P.Q.R.S', 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902, 'Rajendhiran', 'Naraiyur', 74, 'ABC0082', '2019-04-07 16:53:48'),
(29, 'pradeep r', 'C_ABC0077_c.jpg', '0999-09-08', 'Male', 'HOME', 'S_ABC0077_s.jpg', 'Autonomy', 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902, 'Ramkumar', 'Naraiyur', 74, 'ABC0077', '2019-04-07 16:59:46'),
(30, 'Chitra R', 'C_ABC0081_c.jpg', '9999-12-04', 'Female', 'Sun rise', 'S_ABC0081_s.jpg', 'A.B.C', 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 894090333, 'Rajendhiran', 'Naraiyur', 74, 'ABC0081', '2019-04-07 17:02:51'),
(31, 'priya K', 'C_ABC0083_c.jpg', '1999-09-08', 'Male', 'Mango', 'S_ABC0083_s.jpg', 'P.Q.R.S', 'A2 street', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 894090333, 'kumaran', 'kilinjikuppam', 155, 'ABC0083', '2019-04-07 17:04:08'),
(32, 'Jayakumar J', 'C_ABC0090_c.jpg', '1999-09-08', 'Male', 'two leafs', 'S_ABC0090_s.jpg', 'X.Y.Z', 'mariyamm koil street', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 894090333, 'Jaganathan', 'kilinjikuppam', 155, 'ABC0090', '2019-04-07 17:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `ECdb_table`
--

CREATE TABLE `ECdb_table` (
  `id` bigint(200) NOT NULL,
  `name` text NOT NULL,
  `photo` text,
  `father_name` text NOT NULL,
  `gender` text NOT NULL,
  `voter_id` text,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `pin_code` bigint(30) NOT NULL,
  `post` text,
  `Assembly_constituency` int(11) NOT NULL,
  `district` text NOT NULL,
  `thaluk` text NOT NULL,
  `state` text NOT NULL,
  `phone` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ECdb_table`
--

INSERT INTO `ECdb_table` (`id`, `name`, `photo`, `father_name`, `gender`, `voter_id`, `dob`, `address`, `pin_code`, `post`, `Assembly_constituency`, `district`, `thaluk`, `state`, `phone`) VALUES
(73, 'ramachanthar g', 'voter_ramachantharg_Ganapathy_A2 streat_.jpg', 'Ganapathy', 'Male', 'ABC0073', '0999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 894090088),
(74, 'ravi r', 'voter_ravir_ramachanthar_villupuram_.jpg', 'ramachanthar', 'Male', 'ABC0074', '0999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(75, 'rajkumar r', 'voter_rajkumarr_Ramkumar_villupuram_.jpg', 'Ramkumar', 'Male', 'ABC0075', '0999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(76, 'praveen r', 'voter_praveenr_Ramkumar_villupuram_.jpg', 'Ramkumar', 'Male', 'ABC0076', '0999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(77, 'pradeep r', 'voter_pradeepr_Ramkumar_villupuram_.jpg', 'Ramkumar', 'Male', 'ABC0077', '0999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(78, 'Kanthan B', 'voter_KanthanB_Boobalan_villupuram_.jpg', 'Boobalan', 'Male', 'ABC0078', '1999-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 89409000),
(79, 'Poovarasan B', 'voter_PoovarasanB_Boobalan_villupuram_.jpg', 'Boobalan', 'Male', 'ABC0079', '1992-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(80, 'lakshmi B', 'voter_lakshmiB_Boobalan_villupuram_.jpg', 'Boobalan', 'Female', 'ABC0080', '1992-09-08', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(81, 'Chitra R', 'voter_ChitraR_Rajendhiran_villupuram_.jpg', 'Rajendhiran', 'Female', 'ABC0081', '9999-12-04', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(82, 'suresh R', 'voter_sureshR_Rajendhiran_villupuram_.jpg', 'Rajendhiran', 'Male', 'ABC0082', '1995-12-04', 'A2 streat', 605108, 'Naraiyur', 74, 'villupuram', 'villupuram', 'Tamil Nadu', 8940900902),
(83, 'priya K', 'voter_priyaK_kumaran_Cuddalore_.jpg', 'kumaran', 'Male', 'ABC0083', '1999-09-08', 'A2 street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88844333),
(84, 'ramya K', 'voter_ramyaK_kumaran_Cuddalore_.jpg', 'kumaran', 'Male', 'ABC0084', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88844333),
(85, 'Selvakumar K', 'voter_SelvakumarK_kumaran_Cuddalore_.jpg', 'kumaran', 'Male', 'ABC0085', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88844333),
(86, 'Selva K', 'voter_SelvaK_kumar_Cuddalore_.jpg', 'kumar', 'Male', 'ABC0086', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 888445555),
(87, 'Siva K', 'voter_SivaK_raj_Cuddalore_.jpg', 'raj', 'Male', 'ABC0087', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 888445555),
(88, 'raj K', 'voter_rajK_Kaththavarayan_Cuddalore_.jpg', 'Kaththavarayan', 'Male', 'ABC0088', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 888445555),
(89, 'sugupathy K', 'voter_sugupathyK_Kaththavarayan_Cuddalore_.jpg', 'Kaththavarayan', 'Male', 'ABC0089', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 888445555),
(90, 'Jayakumar J', 'voter_JayakumarJ_Jaganathan_Cuddalore_.jpg', 'Jaganathan', 'Male', 'ABC0090', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88888777),
(91, 'Manikandan M', 'voter_ManikandanM_malayalathan_Cuddalore_.jpg', 'malayalathan', 'Male', 'ABC0091', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88888888),
(92, 'Maha M', 'voter_MahaM_malayalathan_Cuddalore_.jpg', 'malayalathan', 'Female', 'ABC0092', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88888888),
(93, 'MohanRaj M', 'voter_MohanRajM_malayalathan_Cuddalore_.jpg', 'malayalathan', 'Male', 'ABC0093', '1999-09-08', 'mariyamm koil street', 607004, 'kilinjikuppam', 155, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 88888888);

-- --------------------------------------------------------

--
-- Table structure for table `votesdb_table`
--

CREATE TABLE `votesdb_table` (
  `id` bigint(200) NOT NULL,
  `candidate_id` bigint(200) NOT NULL,
  `people_id` text NOT NULL,
  `acnumber` int(200) NOT NULL,
  `Symbol_name` text NOT NULL,
  `party_name` text NOT NULL,
  `district` text NOT NULL,
  `thaluk` text NOT NULL,
  `state` text NOT NULL,
  `pin_code` bigint(110) NOT NULL,
  `post` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhardb_table`
--
ALTER TABLE `aadhardb_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_list`
--
ALTER TABLE `candidate_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ECdb_table`
--
ALTER TABLE `ECdb_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votesdb_table`
--
ALTER TABLE `votesdb_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aadhardb_table`
--
ALTER TABLE `aadhardb_table`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `candidate_list`
--
ALTER TABLE `candidate_list`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ECdb_table`
--
ALTER TABLE `ECdb_table`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `votesdb_table`
--
ALTER TABLE `votesdb_table`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
