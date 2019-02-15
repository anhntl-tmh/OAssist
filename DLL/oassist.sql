-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 15, 2019 at 09:57 AM
-- Server version: 5.1.73
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `OAssist`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'N1', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 'N2', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(3, 'N3', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE IF NOT EXISTS `contracts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `salary` int(11) NOT NULL,
  `job_type_id` tinyint(1) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `detail_url` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `salary`, `job_type_id`, `date_start`, `date_end`, `detail_url`, `created_at`, `updated_at`) VALUES
(1, 100000, 1, '2019-02-15 00:00:00', '2019-06-15 00:00:00', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 200000, 2, '2019-02-15 00:00:00', '2019-05-17 00:00:00', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE IF NOT EXISTS `job_types` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'FullTime', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 'PartTime', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(3, 'Thực Tập', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin HR', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 'Engineer', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(3, 'Phien dich', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(4, 'Tester', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 'Nhân Viên', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tạm Ngừng', '2019-02-15 00:00:00', '2019-02-15 00:00:00'),
(2, 'Đang làm Việc', '2019-02-15 00:00:00', '2019-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `img-profile` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instargram` text NOT NULL,
  `phone` text NOT NULL,
  `status_id` tinyint(1) NOT NULL,
  `position_id` tinyint(1) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `contract_id` tinyint(1) NOT NULL,
  `certificate_id` tinyint(1) NOT NULL,
  `flg_pdf` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_uid` int(11) NOT NULL,
  `updated_uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `bio`, `img-profile`, `facebook`, `twitter`, `instargram`, `phone`, `status_id`, `position_id`, `role_id`, `contract_id`, `certificate_id`, `flg_pdf`, `created_at`, `updated_at`, `created_uid`, `updated_uid`) VALUES
(1, 'Phạm Văn Tâm', 'tampv@tmh-techlab.vn', '12345', 'Toi tên là Tâm', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', '0973870336', 1, 1, 1, 1, 1, 1, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 1, 1),
(2, 'Quang Minh', 'minhtq@tmh-techlab.vn', '12345', 'Đây là Trưởng nhóm :D', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', '09xxxxxx', 2, 2, 2, 2, 2, 1, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 0, 0),
(6, 'Nguyễn Văn Long', 'longnv@tmh-techlab.vn', '12345', 'Đây là thành viên đẹp trai nhất ', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', '09xxxxx', 2, 1, 2, 5, 3, 0, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 0, 0),
(5, 'Lan Anh', 'lannt@tmh-techlab.vn', '12345', 'Đây là thành viên gái duy nhất', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', '09xxxxxxx', 3, 3, 2, 3, 3, 0, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 0, 0),
(10, 'Tên A', 'ant@tmh-techlab.vn', '12345', 'Đây là test', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', 'https://tribalmedi.backlog.jp/git/TMH_TECHLAB_FOR_NEW_STAFF/HangDT/tree/107686f20dd1b4b63c2107fa851731960d7c6f9f/app/Console', '09xxxx', 2, 3, 2, 3, 3, 0, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 0, 0),
(9, 'Trinh bá Huy', 'huytb@tmh-techlab.vn', '12345', 'Đây là thành viên trẻ nhất nhóm ', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', 'https://pbs.twimg.com/media/DZmzgzSVQAALfiC.jpg', '09xxxxxxx', 3, 2, 12, 6, 2, 0, '2019-02-15 00:00:00', '2019-02-15 00:00:00', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
