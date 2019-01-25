-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2015 at 01:21 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinevote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(22) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `work` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `experience` varchar(25) NOT NULL,
  `party_name` varchar(20) NOT NULL,
  `party_symbol` varchar(20) NOT NULL,
  `candidate_photo` varchar(40) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `u_id` (`u_id`),
  KEY `u_id_2` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`c_id`, `u_id`, `fname`, `mname`, `lname`, `sex`, `age`, `work`, `education`, `phone`, `email`, `experience`, `party_name`, `party_symbol`, `candidate_photo`, `username`, `password`) VALUES
(10, '456', 'habtamu', 'worku', 'messlu', 'male', 34, 'tech', 'diploma', '0919131933', 'habtamu18@gmail.c', '2 year', 'Egdapa', 'upload/p.jpg', 'upload/p.jpg', 'Egdapa', 'e10adc3949ba59abbe56e057f20f883e'),
(12, '456', 'habtamu', 'worku', 'meslu', 'male', 34, 'tech', 'certificate', '3453254353', 'adugnatess18@gmail.c', '2 year', 'Andente', 'upload/p.jpg', 'upload/p.jpg', 'Andente', 'e10adc3949ba59abbe56e057f20f883e'),
(13, '456', 'habtamu', 'worku', 'muslu', 'male', 32, 'teach', 'degree', '0912345676', 'habtamuworku', '2 years', 'semayaw', 'upload/p.jpg', 'upload/p.jpg', 'habtamu', 'e10adc3949ba59abbe56e057f20f883e'),
(15, '139', 'tamrat', 'belay', 'embaye', 'male', 23, 'instracter', 'diploma', '0912456812', 'tamm@gmaiil.com', '4 years ago', 'kenget', 'upload/p.jpg', 'upload/p.jpg', 'tom', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `c_id` int(22) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(200) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `u_id`, `name`, `email`, `content`, `date`, `status`) VALUES
(7, '456', 'hailysuse', 'habtamu@gmail.com', 'how i voting', '10/06/2015', 'read'),
(14, '111', 'tamerate', 'bely@gmail.com', 'fgdjdkyfygkf', '10/06/2015', 'read'),
(15, '111', 'birkutayte', 'biruktiroma@gmail.co', 'thanks for the service\r\n\r\n', '10/06/2015', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `election_date`
--

CREATE TABLE IF NOT EXISTS `election_date` (
  `date` date NOT NULL,
  `u_id` varchar(15) NOT NULL,
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election_date`
--

INSERT INTO `election_date` (`date`, `u_id`) VALUES
('2015-06-10', 'compr173');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `p_id` int(21) NOT NULL AUTO_INCREMENT,
  `c_id` int(22) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `posted_by` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `c_id` (`c_id`),
  KEY `c_id_2` (`c_id`),
  KEY `c_id_3` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`p_id`, `c_id`, `title`, `content`, `posted_by`, `date`) VALUES
(2, 10, 'for each ethiopian people', 'select me and truest me i never do any eviale activity ', 'habtamu', '10/06/2015'),
(3, 10, 'text', 'hi', 'habtamu', '10/06/2015'),
(4, 10, 'huer', 'this isanedepa', 'habtamu', '10/06/2015');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `vid` varchar(20) NOT NULL,
  `u_id` varchar(22) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `station` varchar(30) NOT NULL,
  `choice` varchar(20) NOT NULL,
  PRIMARY KEY (`vid`),
  KEY `vid` (`vid`),
  KEY `vid_2` (`vid`),
  KEY `u_id` (`u_id`),
  KEY `u_id_2` (`u_id`),
  KEY `u_id_3` (`u_id`),
  KEY `u_id_4` (`u_id`),
  KEY `u_id_5` (`u_id`),
  KEY `u_id_6` (`u_id`),
  KEY `u_id_7` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`vid`, `u_id`, `fname`, `mname`, `station`, `choice`) VALUES
('108', '108', 'nur', 'man', 'waka', 'Egdapa'),
('12', '12', 'abebe', 'kebede', 'kality', 'semayaw'),
('164', '', '', '', '', 'Egdapa'),
('56925', '56925', 'adugnaw', 'abatie', 'fana', 'Egdapa'),
('56930', '56930', 'asmamaw', 'as', 'deberberhi', 'Egdapa'),
('56931', '56931', 'asmamaw', 'habtmau', 'deberberhi', 'Andente'),
('56932', '56932', 'birkutayte', 'roma', 'kality', 'Andente'),
('56933', '56933', 'birkutayte', 'roma', 'akaka', 'Egdapa'),
('56934', '56934', 'tamerate', 'bely', 'kality', 'Andente');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `psid` int(20) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(20) NOT NULL,
  `psname` varchar(25) NOT NULL,
  `kebele` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY (`psid`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`psid`, `u_id`, `psname`, `kebele`, `city`) VALUES
(6, '456', 'deberberhi', '07', 'deberberhin'),
(7, '456', 'fana', '09', 'deberberhin'),
(8, '456', 'waka', '09', 'adiss'),
(9, '456', 'akaka', '06', 'addis'),
(10, '456', 'kality', '02', 'lemamo'),
(11, '456', 'bolla', '03', 'addis'),
(12, '456', 'bole', '09', 'addis'),
(13, '456', 'dbu', '09', 'db');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `station` varchar(25) NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `mname`, `lname`, `u_id`, `sex`, `age`, `phone`, `email`, `role`, `username`, `password`, `status`, `station`) VALUES
('biruktayit', 'roma', 'keribe', '111', 'female', '21', '0918539283', 'biruktiroma@gmail.com', 'admin', 'birkty', '41933e60e9c19b866b3d68864727afe7', 0, ''),
('nur', 'remedan', 'iders', '138', 'male', '23', '0918539283', 'nur123@gmail.com', 'registrar', 'mama', 'e10adc3949ba59abbe56e057f20f883e', 1, 'waka'),
('nure', 'remedan', 'ahmed', '139', 'male', '34', '0913791700', 'nur123@gmail.com', 'officer', 'nure', 'e10adc3949ba59abbe56e057f20f883e', 1, ''),
('asmamaw', 'getaneh', 'desalew', '158', 'male', '23', '0918200179', 'asmat@gmail.com', 'admin', 'asmat', 'e10adc3949ba59abbe56e057f20f883e', 1, ''),
('biruktawit', 'roma', 'temesgen', '164', 'female', '23', '0917231608', 'bklt@gmail.com', 'registrar', 'bkt', 'e10adc3949ba59abbe56e057f20f883e', 1, 'deberberhi'),
('HABTAMU', 'worku', 'kebede', '456', 'male', '12', '0914562389', 'abebe@gmail.com', 'officer', 'habtamu', 'e10adc3949ba59abbe56e057f20f883e', 1, ''),
('asmamaw', 'getanh', 'mola', 'compr/158', 'male', '23', '0919131933', 'habtamu@gmail.com', 'registrar', 'bely', 'e10adc3949ba59abbe56e057f20f883e', 1, 'deberberhi'),
('habtamu', 'worku', 'meslu', 'compr173', 'male', '23', '3453254353', 'habtamu18@gmail.com', 'admin', 'egdapa', 'e10adc3949ba59abbe56e057f20f883e', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(30) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `work` varchar(23) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `station` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`vid`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=666668 ;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`vid`, `u_id`, `fname`, `mname`, `lname`, `age`, `sex`, `work`, `phone`, `email`, `station`, `username`, `password`, `status`) VALUES
(110, '164', 'arya', 'mamo', 'mola', 23, 'male', 'student', '0918539283', 'areaya@gmail.com', 'waka', '', 'e10adc3949ba59abbe56e057f20f883e', '0'),
(142, '164', 'tama', 'belay', 'ebmw', 23, 'male', 'self', '0919998715', 'tomi@gmail.com', 'deberberhi', '', 'e10adc3949ba59abbe56e057f20f883e', '0'),
(56934, 'compr/158', 'tamerate', 'bely', 'ashinify', 32, 'male', 'self', '0912345676', 'tamerat@gmail.com', 'kality', '', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(56935, 'compr/158', 'samuale', 'bekele', 'agige', 19, 'male', 'student', '0912456812', 'habtamu@gmail.com', 'bolla', '', 'e10adc3949ba59abbe56e057f20f883e', '0'),
(56936, 'compr/158', 'abebe', 'roma', 'yisemw', 63, 'male', 'unemployed', '0918539274', 'biruktiroma@gmail.com', 'deberberhi', '', 'e10adc3949ba59abbe56e057f20f883e', '0'),
(666666, 'compr/158', 'haily', 'abita', 'yismw', 22, 'male', 'student', '0918539283', 'habtamuworku2@gmail.com', 'fana', 'seb', 'd8ba569e424c8607b2148c600058e7e0', '0'),
(666667, 'compr/158', 'adugw', 'love', 'gembera', 56, 'male', 'student', '0918539283', '', 'kality', 'adu', 'e10adc3949ba59abbe56e057f20f883e', '0');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `election_date`
--
ALTER TABLE `election_date`
  ADD CONSTRAINT `election_date_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `voter`
--
ALTER TABLE `voter`
  ADD CONSTRAINT `voter_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
