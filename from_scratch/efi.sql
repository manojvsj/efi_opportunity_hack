-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 11, 2014 at 08:48 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `efi`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47);

-- --------------------------------------------------------

--
-- Table structure for table `user_uploads`
--

CREATE TABLE IF NOT EXISTS `user_uploads` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `highlight` varchar(500) NOT NULL,
  `created` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_uploads`
--

INSERT INTO `user_uploads` (`id`, `title`, `description`, `img`, `tags`, `highlight`, `created`, `status`) VALUES
(3, 'sgdhcjgsdc', 'hcvjhsvckvsdkvck', 'uploads/efi_44_1413052531.jpg', 'vjcvdkjsvkjcvsk', 'vkcvkjcvcvk', 1413052531, 1),
(4, 'img', 'da ds ds', 'uploads/efi_45_1413052554.jpg', 'vjkvvhjvk', 'jvjkjvkj', 1413052553, 1),
(5, 'Lion', 'lion is a king', 'uploads/efi_46_1413052811.JPG', 'animal', 'an animal', 1413052811, 1),
(6, 'Lion', 'lion is a king', 'uploads/efi_47_1413053063.JPG', 'animal', 'an animal', 1413053063, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
