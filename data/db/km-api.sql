-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2014 at 03:27 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `k9koordinator`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `status_id`, `v`) VALUES
(1, 1, 'Alba Iulia');

-- --------------------------------------------------------

--
-- Table structure for table `civilities`
--

CREATE TABLE IF NOT EXISTS `civilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `civilities`
--

INSERT INTO `civilities` (`id`, `status_id`, `v`) VALUES
(1, 1, 'Mr.'),
(2, 1, 'Miss'),
(3, 1, 'Ms.'),
(4, 1, 'Mrs.'),
(5, 1, 'Rev.'),
(6, 1, 'Dr.');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `civility_id` int(11) NOT NULL DEFAULT '1',
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `second_owner` varchar(120) DEFAULT NULL,
  `contact_phone` varchar(120) DEFAULT NULL,
  `contact_cell` varchar(120) DEFAULT NULL,
  `emergency_name` varchar(120) DEFAULT NULL,
  `emergency_cell` varchar(120) DEFAULT NULL,
  `emergency_phone` varchar(120) DEFAULT NULL,
  `address_street` varchar(255) DEFAULT NULL,
  `address_city_id` int(11) DEFAULT NULL,
  `address_state_id` int(11) DEFAULT NULL,
  `address_zip_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `civility_id` (`civility_id`),
  KEY `address_city_id` (`address_city_id`),
  KEY `address_state_id` (`address_state_id`),
  KEY `address_zip_id` (`address_zip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `status_id`, `civility_id`, `first_name`, `last_name`, `second_owner`, `contact_phone`, `contact_cell`, `emergency_name`, `emergency_cell`, `emergency_phone`, `address_street`, `address_city_id`, `address_state_id`, `address_zip_id`, `email`) VALUES
(3, 1, 1, 'Todorescu', 'Tudor', NULL, '+40740815174', '+40358103134', NULL, NULL, NULL, 'str. Tudor Vladimirescu nr. 62', 1, 1, 1, 'todorescu.tudor@kmtel.ro');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `v`) VALUES
(1, 'web'),
(2, 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `path_thumb` varchar(255) DEFAULT NULL,
  `source` blob,
  `source_thumb` blob,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width_thumb` int(11) DEFAULT NULL,
  `height_thumb` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_type` enum('static','facebook') NOT NULL DEFAULT 'static',
  `delete_code` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `files`
--

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `v`) VALUES
(1, 'admin'),
(2, 'client');

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `n` tinytext NOT NULL,
  `v` tinytext NOT NULL,
  `t` tinytext NOT NULL,
  `j` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `status_id`, `n`, `v`, `t`, `j`) VALUES
(1, 1, 'layout_topbar_bg_color', '#306aa4', 'text', ''),
(2, 1, 'layout_button_bg_color', '#008CBA', 'text', ''),
(3, 1, 'layout_title', 'KMTEL - API', 'text', ''),
(4, 1, 'layout_alt_title', 'KM', 'text', ''),
(5, 1, 'layout_sidebar_bg_color', '#48668D', 'text', ''),
(6, 1, 'image_logo', '1', 'array', 'files');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `status_id`, `v`) VALUES
(1, 1, 'Alba');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `v`) VALUES
(1, 'active'),
(2, 'inactive'),
(3, 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL DEFAULT '1',
  `token` varchar(255) NOT NULL,
  `date_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_logout` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL DEFAULT '2',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `status_id`, `role_id`, `username`, `password`, `date_created`) VALUES
(1, 1, 1, 'admin', '14e1b600b1fd579f47433b88e8d85291', '2014-03-14 11:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `zips`
--

CREATE TABLE IF NOT EXISTS `zips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `zips`
--

INSERT INTO `zips` (`id`, `status_id`, `v`) VALUES
(1, 1, '510167');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`civility_id`) REFERENCES `civilities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`address_city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`address_state_id`) REFERENCES `states` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clients_ibfk_4` FOREIGN KEY (`address_zip_id`) REFERENCES `zips` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
