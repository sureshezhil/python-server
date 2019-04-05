-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2019 at 09:38 PM
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
(1, 'suresh', 'r', 'sureshrA2_streatrajendhiran.jpg', 'rajendhiran', '1995-12-05', 'Male', 746126330001, 'A2 streat', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 8940900902),
(2, 'Ezhil', 'R', 'EzhilR#3641,mariyamman koil stRam.jpg', 'Ram', '1994-12-08', 'Male', 192115840002, '#364/1,mariyamman koil st', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 8940900903),
(3, 'Ragini', 'R', 'RaginiR#3641,mariyamman koil st,thansingupalaymrajendhiran.jpg', 'rajendhiran', '1994-12-08', 'Female', 325467390003, '#364/1,mariyamman koil st,thansingupalaym', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 8940900905),
(4, 'Chitra', 'R', 'ChitraR#3641,mariyamman koil st,thansingupalaymrajendhiran.jpg', 'rajendhiran', '1977-12-08', 'Female', 388722330004, '#364/1,mariyamman koil st,thansingupalaym', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 8940900904),
(6, 'Rajendhiran', 'R', 'RajendhiranR#3641,mariyamman koil st,thansingupalaymRam.jpg', 'Ram', '1967-12-08', 'Male', 561197700061, '#364/1,mariyamman koil st,thansingupalaym', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 89409009046),
(7, 'Ram', 'S', 'RamS#364,mariyamman koil st,thansingupalaymSelva.jpg', 'Selva', '1967-03-10', 'Male', 726537310007, '#364,mariyamman koil st,thansingupalaym', 'Villupuram', 'Villupuram', 'Tamil Nadu', 605108, 8940900893),
(8, 'Mohan', 'M', 'MohanM#364,mariyamman koil st,pudupuncholaikuppamMalai.jpg', 'Malai', '1998-03-10', 'Male', 409728850008, '#364,mariyamman koil st,pudupuncholaikuppam', 'cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 8940900893),
(9, 'Manikandan', 'M', 'ManikandanM#364,mariyamman koil st,pudupuncholaikuppamMalai.jpg', 'Malai', '1998-03-10', 'Male', 162688200091, '#364,mariyamman koil st,pudupuncholaikuppam', 'cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 8940900893),
(10, 'jayakumar', 'J', 'jayakumarJ#364,mariyamman koil st,pudupuncholaikuppamJaganathan.jpg', 'Jaganathan', '1998-03-10', 'Male', 300674530010, '#364,mariyamman koil st,pudupuncholaikuppam', 'cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 894090089),
(11, 'Sugupathy', 'K', 'SugupathyK#364,mariyamman koil st,pudupuncholaikuppamKathavarayan.jpg', 'Kathavarayan', '1995-03-10', 'Male', 106098890011, '#364,mariyamman koil st,pudupuncholaikuppam', 'cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 894090089),
(12, 'maha', 'M', 'mahaM#364,mariyamman koil st,pudupuncholaikuppamMalai.jpg', 'Malai', '1995-03-10', 'Female', 106589340012, '#364,mariyamman koil st,pudupuncholaikuppam', 'cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 894090089),
(13, 'Mohanraj', 'M', 'MohanrajMA2 streatmalayalathan.jpg', 'malayalathan', '1999-06-19', 'Male', 490505260013, 'A2 streat', 'Cuddalore', 'cuddalore', 'Tamil Nadu', 605108, 8940900902),
(14, 'RajaSima', 'P', 'RajaSimaPmariyamman koil streetParthipan.jpg', 'Parthipan', '1998-11-30', 'Male', 567418370014, 'mariyamman koil street', 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 605102, 89509009000),
(15, 'rajmohan', 'm', 'rajmohanmmt streetjevva.jpg', 'jevva', '1984-03-03', 'Male', 628807420015, 'mt street', 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 605102, 9998988999),
(16, 'kutty', 'm', 'kuttymmtstrrranjith.jpg', 'ranjith', '1992-02-03', 'Male', 592484270016, 'mtstrr', 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 605102, 9798785859);

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
(21, 'suresh r', 'C_ABC0056_c.jpg', '1995-12-05', 'Male', 'Home', 'S_ABC0056_s.jpg', 'A.B.C', 'A2 streat', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 8940900902, 'rajendhiran', 'Naraiyur', 74, 'ABC0056', '2019-04-05 03:06:41'),
(23, 'Ragini R', 'C_ABC0058_c.jpg', '1994-12-08', 'Female', 'Sun rise', 'S_ABC0058_s.jpg', 'Autonomy', '#364/1,mariyamman koil st,thansingupalaym', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 999999999, 'rajendhiran', 'Naraiyur', 74, 'ABC0058', '2019-04-05 03:12:12'),
(25, 'Mohanraj M', 'C_ABC0068_c.jpg', '1999-06-19', 'Male', 'ladder', 'S_ABC0068_s.jpg', 'Autonomy', 'A2 streat', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 9999999, 'malayalathan', 'kilinjikuppam', 155, 'ABC0068', '2019-04-05 04:45:14'),
(26, 'RajaSima P', 'C_ABC0069_c.jpg', '1998-11-30', 'Male', 'Mango', 'S_ABC0069_s.jpg', 'P.Q.R.S', 'mariyamman koil street', 'Villupuram', 'Vikaravandi', 'Tamil nadu', 605102, 98948434333, 'Parthipan', 'T.M.kuppam', 75, 'ABC0069', '2019-04-05 06:16:54');

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
(54, 'Chitra R', 'voter_ChitraR_rajendhiran_#364/1,mariyamman koil st,thansingupalaym_undefined.jpg', 'rajendhiran', 'Female', 'ABC0054', '1977-12-08', '#364/1,mariyamman koil st,thansingupalaym', 605108, 'Naraiyur', 74, 'Villupuram', 'Villupuram', 'Tamil Nadu', 8940900904),
(56, 'suresh r', 'voter_sureshr_rajendhiran_A2 streat_undefined.jpg', 'rajendhiran', 'Male', 'ABC0056', '1995-12-05', 'A2 streat', 605108, 'Naraiyur', 74, 'Villupuram', 'Villupuram', 'Tamil Nadu', 8940900902),
(57, 'Ezhil R', 'voter_EzhilR_Ram_#364/1,mariyamman koil st_undefined.jpg', 'Ram', 'Male', 'ABC0057', '1994-12-08', '#364/1,mariyamman koil st', 605108, 'Naraiyur', 74, 'Villupuram', 'Villupuram', 'Tamil Nadu', 8940900903),
(58, 'Ragini R', 'voter_RaginiR_rajendhiran_#364/1,mariyamman koil st,thansingupalaym_undefined.jpg', 'rajendhiran', 'Female', 'ABC0058', '1994-12-08', '#364/1,mariyamman koil st,thansingupalaym', 605108, 'Naraiyur', 74, 'Villupuram', 'Villupuram', 'Tamil Nadu', 8940900905),
(59, 'Rajendhiran R', 'voter_RajendhiranR_Ram_#364/1,mariyamman koil st,thansingupalaym_undefined.jpg', 'Ram', 'Male', 'ABC0059', '1967-12-08', '#364/1,mariyamman koil st,thansingupalaym', 605108, 'Naraiyur', 74, 'Villupuram', 'Villupuram', 'Tamil Nadu', 89409009046),
(60, 'maha M', 'voter_mahaM_Malai_#364,mariyamman koil st,pudupuncholaikuppam_undefined.jpg', 'Malai', 'Female', 'ABC0060', '1995-03-10', '#364,mariyamman koil st,pudupuncholaikuppam', 607004, 'kilinjikuppam', 155, 'cuddalore', 'Cuddalore', 'Tamil Nadu', 894090089),
(62, 'jayakumar J', 'voter_jayakumarJ_Jaganathan_#364,mariyamman koil st,pudupuncholaikuppam_undefined.jpg', 'Jaganathan', 'Male', 'ABC0062', '1998-03-10', '#364,mariyamman koil st,pudupuncholaikuppam', 607004, 'kilinjikuppam', 155, 'cuddalore', 'Cuddalore', 'Tamil Nadu', 894090089),
(63, 'Sugupathy K', 'voter_SugupathyK_Kathavarayan_#364,mariyamman koil st,pudupuncholaikuppam_undefined.jpg', 'Kathavarayan', 'Male', 'ABC0063', '1995-03-10', '#364,mariyamman koil st,pudupuncholaikuppam', 607004, 'kilinjikuppam', 155, 'cuddalore', 'Cuddalore', 'Tamil Nadu', 894090089),
(68, 'Mohanraj M', 'voter_MohanrajM_malayalathan_A2 streat_.jpg', 'malayalathan', 'Male', 'ABC0068', '1999-06-19', 'A2 streat', 605108, 'Kilinjikuppam', 155, 'Cuddalore', 'cuddalore', 'Tamil Nadu', 8940900902),
(69, 'RajaSima P', 'voter_RajaSimaP_Parthipan_mariyamman koil street_.jpg', 'Parthipan', 'Male', 'ABC0069', '1998-11-30', 'mariyamman koil street', 605102, 'T.M.kuppam', 75, 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 89509009000),
(70, 'rajmohan m', 'voter_rajmohanm_jevva_mt street_.jpg', 'jevva', 'Male', 'ABC0070', '1984-03-03', 'mt street', 605102, 'T.M.kuppam', 75, 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 9998988999),
(71, 'kutty m', 'voter_kuttym_ranjith_mtstrr_.jpg', 'ranjith', 'Male', 'ABC0071', '1992-02-03', 'mtstrr', 605102, 'T.M.kuppam', 75, 'Villupuram', 'Vikaravandi', 'Tamil Nadu', 9798785859);

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
-- Dumping data for table `votesdb_table`
--

INSERT INTO `votesdb_table` (`id`, `candidate_id`, `people_id`, `acnumber`, `Symbol_name`, `party_name`, `district`, `thaluk`, `state`, `pin_code`, `post`, `time`) VALUES
(14, 21, 'Abc0054', 74, 'Home', 'A.B.C', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 'Naraiyur', '2019-04-05 03:48:06'),
(16, 23, 'ABC0056', 74, 'Sun rise', 'Autonomy', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 'Naraiyur', '2019-04-05 05:38:07'),
(17, 25, 'Abc0060', 155, 'ladder', 'Autonomy', 'Cuddalore', 'Cuddalore', 'Tamil Nadu', 607004, 'kilinjikuppam', '2019-04-05 05:53:32'),
(18, 23, 'ABC0058', 74, 'Sun rise', 'Autonomy', 'villupuram', 'villupuram', 'Tamil Nadu', 605108, 'Naraiyur', '2019-04-05 06:05:37');

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
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `candidate_list`
--
ALTER TABLE `candidate_list`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ECdb_table`
--
ALTER TABLE `ECdb_table`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `votesdb_table`
--
ALTER TABLE `votesdb_table`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
