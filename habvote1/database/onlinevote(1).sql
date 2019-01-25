-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2015 at 07:32 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


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
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`c_id`, `fname`, `mname`, `lname`, `sex`, `age`, `work`, `education`, `phone`, `email`, `experience`, `party_name`, `party_symbol`, `candidate_photo`, `username`, `password`) VALUES
(8, 'tesfay', 'haile', 'kebede', 'male', 62, 'teacher', 'certificate', '0914562389', 'temeseganwalelign@gm', '2', '&#4770;&#4613;&#4768', 'upload/p.jpg', 'upload/p.jpg', 'abebe', '123456'),
(9, 'Abrham', 'haile', 'abrha', 'male', 23, 'teacher', 'master', '0912793209', 'temesegan@gmail.com', '2', 'semayawi', 'upload/p.jpg', 'upload/p.jpg', 'abebe', 'helen');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `c_id` int(60) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(25) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `name`, `email`, `content`, `date`, `status`) VALUES
(2, 'temesegan', 'temeseganwalelign@gmail.c', 'kdfhdkhgdkjhkdfgjh\r\nkdfhdkhgdkjhkdfgjh\r\nkdfhdkhgdkjhkdfgjh\r\nkdfhdkhgdkjhkdfgjh\r\nkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjhkdfhdkhgdkjhkdfgjh', '2031-05-15', 'read'),
(7, 'mikias', 'temeseganwalelign@gmail.c', 'fsdhflksdjfdkl\r\nfsdhflksdjfdklfsdhflksdjfdkl', '11/06/2015', 'read'),
(8, 'dsjhgdsjh', 'jahsdgsdj@yahoo.com', 'dkfdlfdjfdf', '11/06/2015', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `p_id` int(21) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `posted_by` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`p_id`, `title`, `content`, `posted_by`, `date`) VALUES
(1, 'Bid', 'sdhdskjhsdksd', 'Abrham', '11/06/2015');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `vid` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `station` varchar(30) NOT NULL,
  `choice` varchar(20) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`vid`, `fname`, `mname`, `station`, `choice`) VALUES
('25633', 'temesegan', 'walelign', 'fana', 'semayawi'),
('56923', 'asmamaw', 'abebe', 'warka', 'semayawi');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `psid` int(20) NOT NULL AUTO_INCREMENT,
  `psname` varchar(25) NOT NULL,
  `kebele` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY (`psid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`psid`, `psname`, `kebele`, `city`) VALUES
(4, 'fana', 'fana', 'jimma'),
(5, 'warka', 'fana', 'wolaita sodo');

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
  `password` varchar(25) NOT NULL,
  `status` int(1) NOT NULL,
  `station` varchar(25) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `mname`, `lname`, `u_id`, `sex`, `age`, `phone`, `email`, `role`, `username`, `password`, `status`, `station`) VALUES
('Abebe', 'abebe', 'abrha', '089', 'Female', '24', '0912793209', 'temeseganwalelign@gmail.com', 'registrar', 'abeie', '123456', 1, ''),
('HABTAMU', 'worku', 'kebede', '456', 'male', '12', '0914562389', 'abebe@gmail.com', 'officer', 'habtamu', '123456', 1, ''),
('Muktie', 'getachew', 'eshete', 'temu', 'male', '10', '0914562389', 'hdkjghdfkj', 'admin', 'eyouel', '123456', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `work` varchar(23) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `station` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56924 ;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`vid`, `fname`, `mname`, `lname`, `age`, `sex`, `work`, `phone`, `email`, `station`, `password`, `status`) VALUES
(25633, 'temesegan', 'walelign', 'ayele', 55, 'male', 'student', '66565', 'hdkjghdfkj', 'fana', '12345', '1'),
(56923, 'asmamaw', 'abebe', 'kebede', 24, 'male', 'student', '0912451232', 'temeseganwalelign@gmail.c', 'warka', '123456', '1');
