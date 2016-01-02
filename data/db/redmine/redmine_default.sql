-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2014 at 04:06 PM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `redmine_default`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) NOT NULL DEFAULT '0',
  `container_type` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `container_id`, `container_type`, `filename`, `disk_filename`, `filesize`, `content_type`, `digest`, `downloads`, `author_id`, `created_on`, `description`) VALUES
(1, 1, 'Project', 'users_diagram1.pdf', '140313114641_users_diagram1.pdf', 46181, 'application/pdf', 'fbe3952c0dfee41dabf73ab40a57fc4c', 4, 1, '2014-03-13 11:46:41', ''),
(3, 1, 'Project', 'users_diagram2.pdf', '140313114658_users_diagram2.pdf', 60272, 'application/pdf', '59bf854c35247a65b9bf46c165c35ddc', 1, 1, '2014-03-13 11:46:58', ''),
(4, 1, 'Project', 'webapp_login_api.pdf', '140313114715_webapp_login_api.pdf', 3644, 'application/pdf', 'bf22fb1f63c13a5e2c3bc1b2597da0f7', 1, 1, '2014-03-13 11:47:15', ''),
(5, 1, 'Project', 'k9koordinator.sql', '140313114815_k9koordinator.sql', 10588, 'application/x-sql', 'be1ae32e0567cad85b87ee3824bc2ee1', 0, 1, '2014-03-13 11:48:15', ''),
(6, 1, 'Project', '#1 -k9koordinator - CLIENTS.pdf', '140313114922_e8eb593eb170d05c92b142de2230215c.pdf', 71837, 'application/pdf', '23f9a5bf1babb5c9d5afa26a60d77ca9', 2, 1, '2014-03-13 11:49:22', ''),
(7, 1, 'Project', '#2 - k9koordinator - PETS.pdf', '140313114927_ab156958695ddb65ce9d9e200ac2e151.pdf', 82309, 'application/pdf', 'b4d01ae4e2e918f548415fe2858f8193', 1, 1, '2014-03-13 11:49:27', ''),
(8, 1, 'Project', '#3 - k9koordinator - RESERVATIONS.pdf', '140313114932_3453398fdb95595f115c714719a4231f.pdf', 79273, 'application/pdf', 'aaecb2374dfcca134c5e579987cdc27d', 1, 1, '2014-03-13 11:49:32', ''),
(9, 1, 'Project', 'UML - general software arhitecture.pdf', '140313115006_a6e286c8af4a672bc631cf775d8b4172.pdf', 4018, 'application/pdf', '49318ca80ef106f077491c42ef2666ff', 1, 1, '2014-03-13 11:50:06', ''),
(10, 2, 'Project', 'USBE_User_Guide_V1.5.pdf', '140313115438_USBE_User_Guide_V1.5.pdf', 3698062, 'application/pdf', '26df5bfaba30cb3cc42b4840f8f269dd', 0, 1, '2014-03-13 11:54:38', ''),
(11, 2, 'Project', 'webapp_login_api.pdf', '140313115447_webapp_login_api.pdf', 3644, 'application/pdf', 'bf22fb1f63c13a5e2c3bc1b2597da0f7', 0, 1, '2014-03-13 11:54:47', ''),
(12, 2, 'Project', '1.png', '140313115456_1.png', 157349, 'image/png', '84d2dd97cb00fd12d77c97079183e744', 0, 1, '2014-03-13 11:54:56', ''),
(13, 2, 'Project', '2.png', '140313115500_2.png', 161233, 'image/png', '10a359bca9559c8046d110091337f48f', 0, 1, '2014-03-13 11:55:00', ''),
(14, 2, 'Project', '3.png', '140313115504_3.png', 160238, 'image/png', '21a669be5dbf188fdc94f51d6a954041', 0, 1, '2014-03-13 11:55:04', ''),
(15, 2, 'Project', '4.png', '140313115508_4.png', 158838, 'image/png', '651ee018d9f54c0d0caf93d45407cb74', 0, 1, '2014-03-13 11:55:08', ''),
(16, 2, 'Project', '5.png', '140313115512_5.png', 160415, 'image/png', 'bf68c82973f73c6338a17d79f7a5a068', 0, 1, '2014-03-13 11:55:12', ''),
(17, 2, 'Project', '5.png', '140313115516_5.png', 160415, 'image/png', 'bf68c82973f73c6338a17d79f7a5a068', 0, 1, '2014-03-13 11:55:16', ''),
(18, 2, 'Project', '6.png', '140313115521_6.png', 164361, 'image/png', '2af9c057a43974a82dde034dcf543545', 0, 1, '2014-03-13 11:55:21', ''),
(19, 2, 'Project', '7.png', '140313115526_7.png', 169505, 'image/png', '9ebbc8eefbfd17301419be5929776764', 0, 1, '2014-03-13 11:55:26', ''),
(20, 1, 'Document', 'USBE_User_Guide_V1.5.pdf', '140313115557_USBE_User_Guide_V1.5.pdf', 3698062, 'application/pdf', '26df5bfaba30cb3cc42b4840f8f269dd', 0, 1, '2014-03-13 11:55:57', ''),
(21, 3, 'Project', 'cl44-kanoo.sql', '140313121311_cl44-kanoo.sql', 393404, 'application/x-sql', '942398b1349ca1b6c2d8e2ac021fc68e', 0, 1, '2014-03-13 12:13:11', ''),
(22, 3, 'Project', 'fx4_users.csv', '140313121319_fx4_users.csv', 161864, 'text/csv', '611430e5c4fcc4f52185c77c1fa9cb7e', 0, 1, '2014-03-13 12:13:19', ''),
(23, 3, 'Project', 'Fx4you - UML client_pages.pdf', '140313121534_7f0279ba4187c65720d9ac15013b7967.pdf', 5534, 'application/pdf', 'f84d89752f9d971472e515980c2c8c9f', 0, 1, '2014-03-13 12:15:34', ''),
(24, 3, 'Project', 'Fx4you - UML login.pdf', '140313121540_ea6dacbf4a2f3b1dbac0dd7e55d6fa85.pdf', 4681, 'application/pdf', '57bdc2d7088fcb43d875a12e492fea62', 0, 1, '2014-03-13 12:15:40', ''),
(25, 3, 'Project', 'fx4you_calculations_logic_uml.pdf', '140313121547_fx4you_calculations_logic_uml.pdf', 3122, 'application/pdf', 'b5e22e4313f50b8e894d663f0b91ce55', 0, 1, '2014-03-13 12:15:47', ''),
(26, 6, 'Issue', 'K-FX Content Page.jpg', '140313123631_a1fd048144797d158ac86b178f4a2c7a.jpg', 2475389, 'image/jpeg', '93bda631178c98cd0bcf3d1a7f46587c', 0, 1, '2014-03-13 12:36:31', ''),
(27, 6, 'Issue', 'K-FX website design Contact page.jpg', '140313123631_f74c28142dd0fab9b219943267820036.jpg', 1056971, 'image/jpeg', '340bd9de11b78bf0390d447b19c7cb25', 0, 1, '2014-03-13 12:36:31', ''),
(28, 6, 'Issue', 'K-FX website design order page.jpg', '140313123631_3e53bb2a6bc304acd39fb31d4a72cd97.jpg', 1727792, 'image/jpeg', 'dad0187fd37b19d7d039f9bf36c4e7df', 0, 1, '2014-03-13 12:36:31', ''),
(29, 6, 'Issue', 'K-FX website design.jpg', '140313123631_6e8d5095749637ffcb243f3b4b217f88.jpg', 1571775, 'image/jpeg', '91dc2e6375b5544bd59039e05ec70cd5', 0, 1, '2014-03-13 12:36:31', ''),
(30, 10, 'Issue', 'fx4you.png', '140313135634_fx4you.png', 143175, 'image/png', '6f842f54d74958d3bb0bb24561c76848', 0, 1, '2014-03-13 13:56:34', ''),
(31, 11, 'Issue', 'layout_1.png', '140313135851_layout_1.png', 121571, 'image/png', '0fdbbef069ba29d81c73b0772e03bf5d', 0, 1, '2014-03-13 13:58:51', ''),
(32, 11, 'Issue', 'layout_2.png', '140313135851_layout_2.png', 115097, 'image/png', 'ba66be2f2df8c0da490c98d2731fc9f7', 0, 1, '2014-03-13 13:58:51', ''),
(33, 11, 'Issue', 'layout_3.png', '140313135851_layout_3.png', 121741, 'image/png', 'c5550242d640a5518e667b57355fdf16', 0, 1, '2014-03-13 13:58:51', ''),
(34, 12, 'Issue', 'get-latest-rates.php', '140313135923_get-latest-rates.php', 7757, 'text/event-stream', 'bce40ec15ac194afb82a75506138f96d', 0, 1, '2014-03-13 13:59:23', ''),
(35, 13, 'Issue', 'fx4you_calculations_logic_uml.pdf', '140313140008_fx4you_calculations_logic_uml.pdf', 3122, 'application/pdf', 'b5e22e4313f50b8e894d663f0b91ce55', 0, 1, '2014-03-13 14:00:08', ''),
(36, 14, 'Issue', 'fx4you_login_uml.pdf', '140313140149_fx4you_login_uml.pdf', 4681, 'application/pdf', '57bdc2d7088fcb43d875a12e492fea62', 0, 1, '2014-03-13 14:01:49', ''),
(37, 15, 'Issue', 'fx4you_client_pages_uml.pdf', '140313140302_fx4you_client_pages_uml.pdf', 5534, 'application/pdf', 'f84d89752f9d971472e515980c2c8c9f', 0, 1, '2014-03-13 14:03:02', ''),
(38, 2403, 'Issue', 'uml - general software arhitecture.pdf', '140313162115_a2c43da140614a614b4acdd17f0e5adb.pdf', 4018, 'application/pdf', '49318ca80ef106f077491c42ef2666ff', 0, 3, '2014-03-13 16:21:15', ''),
(39, 2406, 'Issue', 'webapp_login_api_task4.pdf', '140313162154_webapp_login_api_task4.pdf', 3644, 'application/pdf', 'bf22fb1f63c13a5e2c3bc1b2597da0f7', 0, 3, '2014-03-13 16:21:54', ''),
(40, 2406, 'Issue', 'users_diagram2.pdf', '140313162217_users_diagram2.pdf', 60272, 'application/pdf', '59bf854c35247a65b9bf46c165c35ddc', 0, 3, '2014-03-13 16:22:17', ''),
(41, 2404, 'Issue', '#1 -k9koordinator - CLIENTS.pdf', '140313162344_e8eb593eb170d05c92b142de2230215c.pdf', 71837, 'application/pdf', '23f9a5bf1babb5c9d5afa26a60d77ca9', 0, 3, '2014-03-13 16:23:44', ''),
(42, 2404, 'Issue', '#2 - k9koordinator - PETS.pdf', '140313162344_ab156958695ddb65ce9d9e200ac2e151.pdf', 82309, 'application/pdf', 'b4d01ae4e2e918f548415fe2858f8193', 0, 3, '2014-03-13 16:23:44', ''),
(43, 2404, 'Issue', '#3 - k9koordinator - RESERVATIONS.pdf', '140313162344_3453398fdb95595f115c714719a4231f.pdf', 79273, 'application/pdf', 'aaecb2374dfcca134c5e579987cdc27d', 0, 3, '2014-03-13 16:23:44', ''),
(44, 2403, 'Issue', 'zf1_structure.png', '140314160407_zf1_structure.png', 208290, 'image/png', '40146b65c97dbb42a5ac504710857914', 0, 1, '2014-03-14 16:04:07', ''),
(45, 2405, 'Issue', 'ss1.png', '140314160759_ss1.png', 32878, 'image/png', 'd083fbd24350c6488159b1b4989ba09d', 0, 1, '2014-03-14 16:07:59', ''),
(46, 2405, 'Issue', 'ss2.png', '140314160759_ss2.png', 24210, 'image/png', '7c837e7b92804f9fae7eb1c24e31ab27', 0, 1, '2014-03-14 16:07:59', ''),
(47, 2405, 'Issue', 'ss3.png', '140314160759_ss3.png', 176814, 'image/png', '29ed2d8d684959a8c81ec002a139bc4e', 0, 1, '2014-03-14 16:07:59', ''),
(48, 2405, 'Issue', 'ss4.png', '140314160759_ss4.png', 17049, 'image/png', '3e7e007a710add7e42e7a0aeff665bb4', 0, 1, '2014-03-14 16:07:59', ''),
(49, 2415, 'Issue', 'K9pro.bmp', '140317143308_K9pro.bmp', 1977054, 'image/bmp', '31e5acad8298477e9880ff97b5ba8d86', 0, 1, '2014-03-17 14:33:08', ''),
(50, 2416, 'Issue', 'K9.zip', '140317154322_K9.zip', 2188147, 'application/octet-stream', '72a89be4361490d622a0511ed43128bc', 0, 3, '2014-03-17 15:43:22', ''),
(51, 2416, 'Issue', 'K9pro.bmp', '140317154322_K9pro.bmp', 1977054, 'image/bmp', '31e5acad8298477e9880ff97b5ba8d86', 0, 3, '2014-03-17 15:43:22', ''),
(52, 2417, 'Issue', 'client pet info screen.png', '140317154428_7a7d99b5807aa4e5e1aa245d44c7ecf4.png', 126726, 'image/png', 'f6892d93318891ba7887bc6695614d22', 0, 3, '2014-03-17 15:44:28', ''),
(53, 2418, 'Issue', 'client pet info screen.png', '140317154506_7a7d99b5807aa4e5e1aa245d44c7ecf4.png', 126726, 'image/png', 'f6892d93318891ba7887bc6695614d22', 0, 3, '2014-03-17 15:45:06', ''),
(54, 2421, 'Issue', 'approval_ss1.png', '140323133602_approval_ss1.png', 47378, 'image/png', '18faa50235e452ac42fbe72d49d5a589', 0, 1, '2014-03-23 13:36:02', ''),
(55, 2421, 'Issue', 'approval_ss2.png', '140323133602_approval_ss2.png', 97488, 'image/png', '4ca4cf185c23dc5406a9b9d759b8f441', 0, 1, '2014-03-23 13:36:02', ''),
(56, 2421, 'Issue', 'approval-ss3.png', '140323133602_approval-ss3.png', 29566, 'image/png', '9b1d25da843c51434bf0c0fe42becd76', 0, 1, '2014-03-23 13:36:02', ''),
(57, 2421, 'Issue', 'approval-ss4.png', '140323133602_approval-ss4.png', 39913, 'image/png', 'c5fd4bb566e4f2870d53f56364aca57c', 0, 1, '2014-03-23 13:36:02', ''),
(58, 2420, 'Issue', 'check.png', '140323134208_check.png', 52641, 'image/png', '32fbdcaccf0eca8cc9b803d23f688553', 0, 1, '2014-03-23 13:42:08', ''),
(59, 2425, 'Issue', 'clientpet.jpg', '140402220242_clientpet.jpg', 746055, 'image/jpeg', '62c2bb816c576b8c2b4bb2d47e8e2888', 0, 9, '2014-04-02 22:02:42', ''),
(60, 2427, 'Issue', 'get-latest-rates.php', '140403171534_get-latest-rates.php', 7757, 'text/plain', 'bce40ec15ac194afb82a75506138f96d', 0, 1, '2014-04-03 17:15:34', ''),
(61, 2427, 'Issue', 'image002.jpg', '140408083800_image002.jpg', 23875, 'image/jpeg', 'c936bdc882f981667d6fc9d7116a1b98', 0, 1, '2014-04-08 08:38:00', ''),
(62, 2433, 'Issue', 'Site nou.png', '140408194221_631e554b2c844ba0870b5d5357b13d4b.png', 1621246, 'image/png', 'a0480fe71e937f5be5c32d03eb34ea50', 0, 1, '2014-04-08 19:42:21', ''),
(63, 2433, 'Issue', 'logo.jpg', '140408194222_logo.jpg', 2665587, 'image/jpeg', '4074763fd3047730c0fb40d9c5420354', 0, 1, '2014-04-08 19:42:22', ''),
(64, 2436, 'Issue', 'my-account-feature.png', '140414131322_my-account-feature.png', 123452, 'image/png', '0f25c7d90652b4d8d35bb2956ddf5e07', 0, 1, '2014-04-14 13:13:22', ''),
(65, 2437, 'Issue', 'users-workflow-feature.png', '140414131536_users-workflow-feature.png', 107339, 'image/png', 'd28eb245e152c6b9dcc88502cfd0792c', 0, 1, '2014-04-14 13:15:36', ''),
(66, 2438, 'Issue', 'Enhanced Dolphin Accounting Methodology V5 Jun07.pdf', '140415125912_7db53fd96cebd2f5a19d551bbf1467b1.pdf', 408716, 'application/pdf', '6f70c73c07d0e80380a2cdfa175e6fff', 0, 1, '2014-04-15 12:59:12', ''),
(67, 2438, 'Issue', 'Document.7z', '140415125912_Document.7z', 1166702, 'application/x-7z-compressed', '40a01562c4d83b1309b55a454f326b3d', 0, 1, '2014-04-15 12:59:12', ''),
(68, 2438, 'Issue', 'REPORTS.7z', '140415125912_REPORTS.7z', 4273865, 'application/x-7z-compressed', '631b9315c731eb7c458356957429cc1a', 0, 1, '2014-04-15 12:59:12', ''),
(69, 2441, 'Issue', 'webapp_login_api_task4.pdf', '140415165510_webapp_login_api_task4.pdf', 3644, 'application/pdf', 'bf22fb1f63c13a5e2c3bc1b2597da0f7', 0, 1, '2014-04-15 16:55:10', ''),
(70, 2441, 'Issue', 'users_diagram2.pdf', '140415165510_users_diagram2.pdf', 60272, 'application/pdf', '59bf854c35247a65b9bf46c165c35ddc', 0, 1, '2014-04-15 16:55:10', ''),
(71, 2443, 'Issue', 'epos - clients.pdf', '140415170024_36c55d6de8ad65e2ea8135f38268426e.pdf', 71837, 'application/pdf', '23f9a5bf1babb5c9d5afa26a60d77ca9', 0, 1, '2014-04-15 17:00:24', ''),
(72, 2444, 'Issue', 'zf1_structure.png', '140415170203_zf1_structure.png', 208290, 'image/png', '40146b65c97dbb42a5ac504710857914', 0, 1, '2014-04-15 17:02:03', ''),
(73, 2444, 'Issue', 'uml - general software arhitecture.pdf', '140415170203_a2c43da140614a614b4acdd17f0e5adb.pdf', 4018, 'application/pdf', '49318ca80ef106f077491c42ef2666ff', 0, 1, '2014-04-15 17:02:03', ''),
(74, 2447, 'Issue', '1.png', '140416105053_1.png', 157349, 'image/png', '84d2dd97cb00fd12d77c97079183e744', 0, 1, '2014-04-16 10:50:53', ''),
(75, 2447, 'Issue', '2.png', '140416105053_2.png', 161233, 'image/png', '10a359bca9559c8046d110091337f48f', 0, 1, '2014-04-16 10:50:53', ''),
(76, 2447, 'Issue', '3.png', '140416105053_3.png', 160238, 'image/png', '21a669be5dbf188fdc94f51d6a954041', 0, 1, '2014-04-16 10:50:53', ''),
(77, 2447, 'Issue', '4.png', '140416105053_4.png', 158838, 'image/png', '651ee018d9f54c0d0caf93d45407cb74', 0, 1, '2014-04-16 10:50:53', ''),
(78, 2447, 'Issue', '5.png', '140416105053_5.png', 160415, 'image/png', 'bf68c82973f73c6338a17d79f7a5a068', 0, 1, '2014-04-16 10:50:53', ''),
(79, 2447, 'Issue', '6.png', '140416105053_6.png', 164361, 'image/png', '2af9c057a43974a82dde034dcf543545', 0, 1, '2014-04-16 10:50:53', ''),
(80, 2447, 'Issue', '7.png', '140416105053_7.png', 169505, 'image/png', '9ebbc8eefbfd17301419be5929776764', 0, 1, '2014-04-16 10:50:53', ''),
(81, 2442, 'Issue', 'Screen Shot 2014-04-04 at 14.39.39.png', '140416124248_55930f473e71982ac6da504e925f8a3e.png', 20910, 'image/png', '967793303b3f92f79b20a92c9a8293d3', 0, 1, '2014-04-16 12:42:48', ''),
(82, 2442, 'Issue', 'Screen Shot 2014-04-04 at 14.40.05.png', '140416124248_8ac646a5820bc4bf57c6d18130d8b4cb.png', 22630, 'image/png', 'e0df559e9cb8adba13ef4ed1d8976cc7', 0, 1, '2014-04-16 12:42:48', ''),
(83, 2442, 'Issue', 'Screen Shot 2014-04-04 at 14.40.18.png', '140416124248_781c30bded0fa8f0f95945c9bae2623d.png', 104229, 'image/png', 'c7097c78e6ce0d85da0c1158c395f990', 0, 1, '2014-04-16 12:42:48', ''),
(84, 2442, 'Issue', 'Screen Shot 2014-04-04 at 14.40.089.png', '140416124248_83ea153147d978db66bfa46959c8c081.png', 45630, 'image/png', 'da6545c5af21e0847e75e1d5d6590bb6', 0, 1, '2014-04-16 12:42:48', ''),
(85, 2448, 'Issue', 'K-FX SITE ADJUSTEMNTS.docx', '140423094819_9e8835e74065465f8a551dab7c130e7e.docx', 893230, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'dbdefa8d1d73fc8341636efa3cdc2f80', 0, 1, '2014-04-23 09:48:19', ''),
(86, 2452, 'Issue', 'PIONEER TV.COM.pdf', '140429111348_d20b99aebad4407567a8e18cc510d4a6.pdf', 96730, 'application/pdf', '1c126dc0360a9cc1ada0db59f845a8b2', 0, 1, '2014-04-29 11:13:48', ''),
(87, 2452, 'Issue', 'CHRISTIE MASON & WOODS.pdf', '140429111348_9d345b12d79dc0d7df98b2a81f659ec3.pdf', 64582, 'application/pdf', 'c60a15dee24f4300f61bfb0c29b6d584', 0, 1, '2014-04-29 11:13:48', ''),
(88, 2452, 'Issue', 'CICADA FILMS.pdf', '140429111348_fd8d753cd8eb7f4f4ef02b9b40abf102.pdf', 31772, 'application/pdf', '8bd777c14f20288be18c569a3929a281', 0, 1, '2014-04-29 11:13:48', ''),
(89, 2452, 'Issue', 'CTVC.pdf', '140429111348_CTVC.pdf', 64002, 'application/pdf', 'f4931f39a8abcd98b9622708f0457432', 0, 1, '2014-04-29 11:13:48', ''),
(90, 2452, 'Issue', 'EURO CAR PARTS.pdf', '140429111348_a693f810a0282d6716cf24c36bf1aecb.pdf', 31947, 'application/pdf', 'e02a086576b0d4e2bc71420f85c05127', 0, 1, '2014-04-29 11:13:48', ''),
(91, 2452, 'Issue', 'image001.jpg', '140429111348_image001.jpg', 2153, 'image/jpeg', '7160945f9792da378d3901fd1eddd4a3', 0, 1, '2014-04-29 11:13:48', ''),
(92, 2452, 'Issue', 'image001(1).jpg', '140429111348_2aee77130b417cc8af1bfc1153ecbf16.jpg', 2153, 'image/jpeg', '7160945f9792da378d3901fd1eddd4a3', 0, 1, '2014-04-29 11:13:48', ''),
(93, 2452, 'Issue', 'image002.jpg', '140429111348_image002.jpg', 5529, 'image/jpeg', '471a1ba82e1d3d3a758a56adebe68e41', 0, 1, '2014-04-29 11:13:48', ''),
(94, 2452, 'Issue', 'image002(1).jpg', '140429111348_fccea710ff4896664dc864b516cd1c0f.jpg', 5529, 'image/jpeg', '471a1ba82e1d3d3a758a56adebe68e41', 0, 1, '2014-04-29 11:13:48', ''),
(95, 2452, 'Issue', 'MILLER INSURANCE SERVICES LTD.pdf', '140429111348_c7f91af2a708ad8183dcb584e51121fd.pdf', 197711, 'application/pdf', 'f961bdfca1540c23221f86144e96eeaf', 0, 1, '2014-04-29 11:13:48', ''),
(96, 2458, 'Issue', 't.png', '140501110724_t.png', 4732, 'image/png', '4ce35ca47877d6cd3c361f7d10d1a3af', 0, 14, '2014-05-01 11:07:24', ''),
(97, 2425, 'Issue', 'clientpet.jpg', '140503140811_clientpet.jpg', 271301, 'image/jpeg', '5eef6981e986663854432747b3c2b0ca', 0, 9, '2014-05-03 14:08:11', ''),
(98, 2459, 'Issue', 'Delete.png', '140503141357_Delete.png', 3095130, 'image/png', 'a6d459846214f771baf724be0230900e', 0, 9, '2014-05-03 14:13:57', ''),
(99, 2460, 'Issue', 'phone.png', '140503142045_phone.png', 539263, 'image/png', '9f2e19ed9859c5446768b426e8e4139c', 0, 9, '2014-05-03 14:20:45', ''),
(100, 2461, 'Issue', 'homescreen.png', '140503144451_homescreen.png', 574992, 'image/png', '5e418aa8b8a0cbdd42f703ad683d4b79', 0, 9, '2014-05-03 14:44:51', ''),
(101, 2462, 'Issue', 'pets.png', '140503145342_pets.png', 266839, 'image/png', '9c1de220269832e8417511053bab9270', 0, 9, '2014-05-03 14:53:42', ''),
(102, 2433, 'Issue', 'Site nou - www.turbosuflanteok.ro.png', '140505203626_fb9695e4f3f404538703b57e0f93ca1e.png', 1440924, 'image/png', '392df35337f124f59e44e1c9d3f5f185', 0, 1, '2014-05-05 20:36:26', ''),
(103, 2433, 'Issue', 'cpanel.png', '140505203626_cpanel.png', 210399, 'image/png', 'dbe3b22fcfb4aaa894a195517bc303f1', 0, 1, '2014-05-05 20:36:26', ''),
(104, 2462, 'Issue', '02.png', '140505213020_02.png', 141737, 'image/png', '1c150c2511de70a01fafc1776321c105', 0, 1, '2014-05-05 21:30:20', ''),
(105, 2465, 'Issue', '26.png', '140505213325_26.png', 154574, 'image/png', 'bba26b3a22bbf9fafe588ebff18167d1', 0, 1, '2014-05-05 21:33:25', ''),
(106, 2466, 'Issue', 'clientpet.jpg', '140505213445_clientpet.jpg', 271301, 'image/jpeg', '5eef6981e986663854432747b3c2b0ca', 0, 1, '2014-05-05 21:34:45', ''),
(107, 2467, 'Issue', 'PtU23M6.png', '140506101343_PtU23M6.png', 138785, 'image/png', 'dbaf3896dc21b4eb51feb04f53fb3e32', 0, 14, '2014-05-06 10:13:43', ''),
(108, 2471, 'Issue', 'U.png', '140508082127_U.png', 12478, 'image/png', 'aa16d24a14f03b3edcc01a97759435c3', 0, 14, '2014-05-08 08:21:27', ''),
(109, 2472, 'Issue', 'U.png', '140508082403_U.png', 18563, 'image/png', '4cd5291dc77697360773953300f7493b', 0, 14, '2014-05-08 08:24:03', ''),
(110, 2474, 'Issue', 'KFX REVIEW 28 04.docx', '140509074550_8b65ca50d3f7e808776c460915aace99.docx', 998188, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'ffd2be9b58e4651ef5717abc85e95953', 0, 1, '2014-05-09 07:45:50', ''),
(111, 2475, 'Issue', 'Untitled.png', '140509164616_Untitled.png', 42876, 'image/png', 'c08218bf5b34303d020212c0c1e2f106', 0, 14, '2014-05-09 16:46:16', ''),
(112, 2460, 'Issue', '35.png', '140510113345_35.png', 19582, 'image/png', '696fb86cec1c5270a69d4e1b33b93c0a', 0, 1, '2014-05-10 11:33:45', ''),
(113, 2461, 'Issue', '31.png', '140510113541_31.png', 152437, 'image/png', 'f460fe536850fe27de09d9884bb071ae', 0, 1, '2014-05-10 11:35:41', ''),
(114, 2477, 'Issue', 'U.png', '140510163427_U.png', 13683, 'image/png', 'd9a3034d05e2be35e94b4ed6e6ea40b8', 0, 14, '2014-05-10 16:34:27', ''),
(115, 2478, 'Issue', 'U.png', '140511093122_U.png', 78393, 'image/png', '95a17fde1bf3f701b9013ab7791444b8', 0, 14, '2014-05-11 09:31:22', ''),
(116, 2482, 'Issue', 'camera2.png', '140514211658_camera2.png', 172460, 'image/png', 'e9b5c004adf912c3861b95f1a4a11602', 0, 9, '2014-05-14 21:16:58', ''),
(117, 2466, 'Issue', 'pet info page.png', '140514212853_056e04f6bf87c78b996bb6ee11638807.png', 314887, 'image/png', '80ae0735fd643c866c13566678b77d37', 0, 9, '2014-05-14 21:28:53', ''),
(118, 2484, 'Issue', 'viewpet.png', '140515194400_viewpet.png', 435887, 'image/png', '7c9d498487e8dff1ebf99f7a1b03599f', 0, 9, '2014-05-15 19:44:00', ''),
(119, 2485, 'Issue', 'Main Screen Spacing.png', '140515195318_41b9a14335d38e46176de67aa28a91c4.png', 500029, 'image/png', 'a77133017bc93d4f484cf9ea57f9608c', 0, 9, '2014-05-15 19:53:18', ''),
(120, 2486, 'Issue', 'Main Screen (Pet Birth).png', '140515195758_cf4e441e5730b2d135f890da84e4dbd3.png', 187930, 'image/png', '6c36450a51c2cc892090c7ed555bdfe9', 0, 9, '2014-05-15 19:57:58', ''),
(121, 2487, 'Issue', 'Client-Pet (select breed).png', '140515200205_b1147f8ed568610b53f01a7c478eff58.png', 216140, 'image/png', '02b0305604b0a18d869cb0578198ec88', 0, 9, '2014-05-15 20:02:05', ''),
(122, 2488, 'Issue', 'cliet-pet (title).png', '140515200659_b275abd7d59b38b1cc38383e33ed90f6.png', 210635, 'image/png', 'e0dffc022a897d334ccff504a128d6d9', 0, 9, '2014-05-15 20:06:59', ''),
(123, 2491, 'Issue', 'Reservations Grooming Calender 1a.png', '140515214325_a3f89ae5a382c607f81df7f0680eb450.png', 48428, 'image/png', '3afa3375ed854ecdbda860f59b00d139', 0, 9, '2014-05-15 21:43:25', ''),
(124, 2491, 'Issue', 'grooming_calendar 1b (Drill Down 1).png', '140515214325_57f757f8fb030cdeb4abc0868fd648d1.png', 223553, 'image/png', 'b57bdd57150b512d02277f35db7ba144', 0, 9, '2014-05-15 21:43:25', ''),
(125, 2491, 'Issue', 'Grooming Calendar Drill 1c (Drill down 2).jpg', '140515214325_d72844df3b230bfd8dc06f1e64ab4b7f.jpg', 57629, 'image/jpeg', 'd56dc160f0b6cd730cc76e87342ed3ed', 0, 9, '2014-05-15 21:43:25', ''),
(126, 2491, 'Issue', 'Reservations Grooming Calender 1d (all windows open).png', '140515214325_eaefd008e226e577ad79d90efb8167e1.png', 359633, 'image/png', 'c3caa712c121c5510fa0abbb201c87fd', 0, 9, '2014-05-15 21:43:25', ''),
(127, 2492, 'Issue', 'charges.png', '140516061417_charges.png', 18594, 'image/png', 'e524f2eeb60e3058a578a214396d442c', 0, 1, '2014-05-16 06:14:17', ''),
(128, 2493, 'Issue', 'charges.png', '140516150218_charges.png', 18594, 'image/png', 'e524f2eeb60e3058a578a214396d442c', 0, 1, '2014-05-16 15:02:18', ''),
(129, 2493, 'Issue', 'charges_done.png', '140516150218_charges_done.png', 127549, 'image/png', '26f7fd715ed0f399940f3af90b08a597', 0, 1, '2014-05-16 15:02:18', ''),
(130, 2493, 'Issue', 'setup-kennel_settings-General.png', '140516221928_setup-kennel_settings-General.png', 80125, 'image/png', 'db8cc4752fe82347ff83b7552603757c', 0, 9, '2014-05-16 22:19:28', ''),
(131, 2493, 'Issue', 'Run size type half day rate.png', '140516221928_c6a86aa89c8984511a08794019e7cd89.png', 257598, 'image/png', '2fd57b8e58d102ccfa3186d2edb4bdb2', 0, 9, '2014-05-16 22:19:28', ''),
(132, 2493, 'Issue', 'Modified.png', '140516221928_Modified.png', 83830, 'image/png', '333cb9df02b1744b8719aad23df6ff2a', 0, 9, '2014-05-16 22:19:28', ''),
(133, 2493, 'Issue', 'runtype saturday.png', '140521142201_461b1750dada230f34d1abc27dacab09.png', 130438, 'image/png', 'a8135f3015fdbd9c9d35bd7fb4210725', 0, 9, '2014-05-21 14:22:01', ''),
(134, 2493, 'Issue', 'change 2.png', '140521154317_2815e5cf37310ea5047dc28b9e4939f7.png', 136645, 'image/png', '64c4a9d106b33ae5278214ea9608d4a3', 0, 9, '2014-05-21 15:43:17', ''),
(135, 2493, 'Issue', 'Option 1.png', '140521155312_f7aa7a6844b5c2b0a164710664fa361c.png', 137442, 'image/png', 'b3705326df73051207e6496d8b814783', 0, 9, '2014-05-21 15:53:12', ''),
(136, 2493, 'Issue', 'Option 2.png', '140521155312_4cbfcfc2f3ca4f8a7d968524614be891.png', 128480, 'image/png', '17a2600d2f947b10cf9fe7b4f77caa1b', 0, 9, '2014-05-21 15:53:12', ''),
(137, 2493, 'Issue', 'option 3.png', '140521155312_ebabf4d1bdc575f5378aa4085c4e1820.png', 134433, 'image/png', '50c5d5b938b786a1f44a65e811ea4a92', 0, 9, '2014-05-21 15:53:12', ''),
(138, 2493, 'Issue', 'option 4.png', '140521155312_1192376c3ba0ab70739ec28b73fec6c0.png', 125243, 'image/png', '348b0ce026f976806561d762fdc0942a', 0, 9, '2014-05-21 15:53:12', ''),
(139, 2491, 'Issue', 'asdada.png', '140531141254_asdada.png', 127901, 'image/png', '6ccad50a34228a8d2c84af9096c4e898', 0, 1, '2014-05-31 14:12:54', ''),
(140, 2493, 'Issue', '07.png', '140531141533_07.png', 148419, 'image/png', 'edaaed8fbfdf8da27fc0ebad7639c1b3', 0, 1, '2014-05-31 14:15:33', ''),
(141, 2500, 'Issue', '00.png', '140603170549_00.png', 125236, 'image/png', '5928307e8aab8a52c9b5b50abdd71637', 0, 1, '2014-06-03 17:05:49', ''),
(142, 2500, 'Issue', '52.png', '140603170549_52.png', 95346, 'image/png', '396888f12f6acc1fa38c6efa57af074f', 0, 1, '2014-06-03 17:05:49', ''),
(143, 2500, 'Issue', '39.png', '140604124006_39.png', 198029, 'image/png', '3ace0266470602becd8a8a21dca34139', 0, 1, '2014-06-04 12:40:06', ''),
(144, 6, 'WikiPage', 'K9Koordinator.swf', '140605122128_K9Koordinator.swf', 1066515, 'application/x-shockwave-flash', '8ecb2d39d8cc3fc9efe87421dfc5d316', 0, 1, '2014-06-05 12:21:28', ''),
(145, 2501, 'Issue', '19.png', '140605124928_19.png', 51632, 'image/png', 'edc5bf78c1f66e5ff9c1f51de13ff094', 0, 1, '2014-06-05 12:49:28', ''),
(146, 2490, 'Issue', 'a.png', '140611133447_a.png', 232828, 'image/png', '34dade2b8644b0dd8cfd728da4233597', 0, 1, '2014-06-11 13:34:47', ''),
(147, 2490, 'Issue', 'b.png', '140611133447_b.png', 132819, 'image/png', '9f30b5b3c46d14dba890f33202004f18', 0, 1, '2014-06-11 13:34:47', ''),
(148, 2490, 'Issue', 'c.png', '140611133447_c.png', 88112, 'image/png', '9287b4bb0995ab35d7b575360857bebf', 0, 1, '2014-06-11 13:34:47', ''),
(149, 2506, 'Issue', '1.png', '140628161648_1.png', 216778, 'image/png', '958659271347bada50cce74cde109579', 0, 1, '2014-06-28 16:16:48', ''),
(150, 2506, 'Issue', '2.png', '140628161648_2.png', 41332, 'image/png', 'd4d7a7c7216ac622be3e95873180e3b1', 0, 1, '2014-06-28 16:16:48', ''),
(151, 2506, 'Issue', '3.png', '140628161648_3.png', 49136, 'image/png', '4c15c968c25c94f1e5a2a5d3b214ee3b', 0, 1, '2014-06-28 16:16:48', ''),
(152, 2507, 'Issue', '4.png', '140628161755_4.png', 114012, 'image/png', '7f0d6d889806cbd6456c2d2948164e6c', 0, 1, '2014-06-28 16:17:55', ''),
(153, 2508, 'Issue', '1.png', '140630155133_1.png', 110123, 'image/png', '137a2b51af81c64a315add07abcad50f', 0, 1, '2014-06-30 15:51:33', ''),
(154, 2509, 'Issue', '2.png', '140630155331_2.png', 42478, 'image/png', '10ab55b1f5e66419689a1d58e6d14d46', 0, 1, '2014-06-30 15:53:31', ''),
(155, 2509, 'Issue', '3.png', '140630155331_3.png', 36220, 'image/png', '0e7d06cd25c1e9688568862078be1c7e', 0, 1, '2014-06-30 15:53:31', ''),
(156, 2512, 'Issue', '4.png', '140630155828_4.png', 114583, 'image/png', 'bbe152c1e4c6ecf0df2c4f8eaef90377', 0, 1, '2014-06-30 15:58:28', ''),
(157, 2513, 'Issue', '5.png', '140630155927_5.png', 78740, 'image/png', 'a7c3207a2e72a060c7572d60b1a7726d', 0, 1, '2014-06-30 15:59:27', ''),
(158, 2514, 'Issue', '6.png', '140630160059_6.png', 83255, 'image/png', 'a73049f611794be93310e8484439de14', 0, 1, '2014-06-30 16:00:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_sources`
--

CREATE TABLE IF NOT EXISTS `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE IF NOT EXISTS `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `changesets`
--

CREATE TABLE IF NOT EXISTS `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `changesets_issues`
--

CREATE TABLE IF NOT EXISTS `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `changeset_parents`
--

CREATE TABLE IF NOT EXISTS `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_projects`
--

CREATE TABLE IF NOT EXISTS `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_trackers`
--

CREATE TABLE IF NOT EXISTS `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_values`
--

CREATE TABLE IF NOT EXISTS `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `project_id`, `category_id`, `title`, `description`, `created_on`) VALUES
(1, 2, 2, 'Existing system technical documentation', '', '2014-03-13 11:55:57'),
(2, 1, 1, 'Odesk original job posting', 'We are collecting bids to transform the desktop application located at the link below and create a web based application from it. The new application should utilize a mysql database. The current desktop application utilizes an Access database.\r\n\r\nThe password for owner user is: secret\r\n\r\nAdditionally we will need to have an estimate of how long it will take to transfer this application from desktop to web.\r\n\r\n*************************************************************\r\nhttp://www.pawsdogdaycare.com/8mm/Demo.exe\r\n\r\nThe password for owner user is: secret\r\n\r\n************************************************************\r\n\r\nPlease download and install the file, familiarize yourself with its features and respond with a)references b)a time frame c) price\r\n\r\nIgnore budget provided, Odesk will not allow an option for accepting bids. The Budget and contracted price will be adjusted when the correct developer is located. ', '2014-03-13 12:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `enabled_modules`
--

CREATE TABLE IF NOT EXISTS `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `enabled_modules`
--

INSERT INTO `enabled_modules` (`id`, `project_id`, `name`) VALUES
(1, 1, 'issue_tracking'),
(2, 1, 'time_tracking'),
(3, 1, 'files'),
(4, 1, 'wiki'),
(5, 1, 'repository'),
(6, 1, 'calendar'),
(7, 2, 'issue_tracking'),
(8, 2, 'time_tracking'),
(9, 2, 'documents'),
(10, 2, 'files'),
(11, 2, 'wiki'),
(12, 2, 'calendar'),
(13, 1, 'documents'),
(14, 3, 'issue_tracking'),
(15, 3, 'time_tracking'),
(16, 3, 'documents'),
(17, 3, 'files'),
(18, 3, 'wiki'),
(19, 3, 'repository'),
(20, 3, 'calendar'),
(21, 4, 'issue_tracking'),
(22, 4, 'time_tracking'),
(23, 4, 'documents'),
(24, 4, 'files'),
(25, 4, 'wiki'),
(26, 4, 'calendar'),
(27, 5, 'issue_tracking'),
(28, 5, 'time_tracking'),
(29, 5, 'news'),
(30, 5, 'documents'),
(31, 5, 'files'),
(32, 5, 'wiki'),
(33, 5, 'repository'),
(34, 5, 'boards'),
(35, 5, 'calendar'),
(36, 5, 'gantt'),
(37, 6, 'issue_tracking'),
(38, 6, 'time_tracking'),
(39, 6, 'news'),
(40, 6, 'documents'),
(41, 6, 'files'),
(42, 6, 'wiki'),
(43, 6, 'repository'),
(44, 6, 'boards'),
(45, 6, 'calendar'),
(46, 6, 'gantt'),
(47, 7, 'issue_tracking'),
(48, 7, 'time_tracking'),
(49, 7, 'news'),
(50, 7, 'documents'),
(51, 7, 'files'),
(52, 7, 'wiki'),
(53, 7, 'repository'),
(54, 7, 'boards'),
(55, 7, 'calendar'),
(56, 7, 'gantt'),
(57, 8, 'issue_tracking'),
(58, 8, 'time_tracking'),
(59, 8, 'news'),
(60, 8, 'documents'),
(61, 8, 'files'),
(62, 8, 'wiki'),
(63, 8, 'repository'),
(64, 8, 'boards'),
(65, 8, 'calendar'),
(66, 8, 'gantt'),
(67, 9, 'issue_tracking'),
(68, 9, 'time_tracking'),
(69, 9, 'news'),
(70, 9, 'documents'),
(71, 9, 'files'),
(72, 9, 'wiki'),
(73, 9, 'repository'),
(74, 9, 'boards'),
(75, 9, 'calendar'),
(76, 9, 'gantt'),
(77, 10, 'issue_tracking'),
(78, 10, 'time_tracking'),
(79, 10, 'news'),
(80, 10, 'documents'),
(81, 10, 'files'),
(82, 10, 'wiki'),
(83, 10, 'repository'),
(84, 10, 'boards'),
(85, 10, 'calendar'),
(86, 10, 'gantt');

-- --------------------------------------------------------

--
-- Table structure for table `enumerations`
--

CREATE TABLE IF NOT EXISTS `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `enumerations`
--

INSERT INTO `enumerations` (`id`, `name`, `position`, `is_default`, `type`, `active`, `project_id`, `parent_id`) VALUES
(1, 'User documentation', 1, 0, 'DocumentCategory', 1, NULL, NULL),
(2, 'Technical documentation', 2, 0, 'DocumentCategory', 1, NULL, NULL),
(3, 'Low', 1, 0, 'IssuePriority', 1, NULL, NULL),
(4, 'Normal', 2, 1, 'IssuePriority', 1, NULL, NULL),
(5, 'High', 3, 0, 'IssuePriority', 1, NULL, NULL),
(6, 'Urgent', 4, 0, 'IssuePriority', 1, NULL, NULL),
(7, 'Immediate', 5, 0, 'IssuePriority', 1, NULL, NULL),
(8, 'Design', 1, 0, 'TimeEntryActivity', 1, NULL, NULL),
(9, 'Development', 2, 0, 'TimeEntryActivity', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE IF NOT EXISTS `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(4, 1),
(4, 3),
(5, 6),
(5, 9),
(10, 8),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2515 ;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`) VALUES
(1, 2, 3, '29.01.2015 - Modifications', '1)  the first major thing is the rates that are displayed for the client login. Can we only display the end rate please, i.e. after all the percentage fees have been added on etc so that it tells them the final rate. we dont want to display any information about margins here at all\r\n\r\n1.1) -   When client is creating an order, client is able to see our margins as ‘Buy Cash Fee’.  We would like this not to be visible to clients. \r\n \r\n1.2) “When I enter the margins for individual rates, then press ctr F5 as your instructions, page refreshes okay. But what we want to see is that ‘buy rate’ and Sell Rate’ are altered according to the margins I input.  Instead what I see is a new column called ‘Total’ showing the rate after the margins added on. However I tried to place an order, I realised that  when client is creating an order,  they see the ‘Buy Rate’ not the total rate, so we are not applying the correct rates.  This needs to be switched around, so client gets the rate with the margins added on, which is the total rate.” - This is the feedback from the client regarding the rates.  \r\n\r\n2) In the margins menu we also would like the term ‘Buy Cash Fee’ and  ‘Sell Cash Fee ‘ changed to Buy Cash Margins and Sell Cash Margins instead\r\n\r\n\r\n3)Can we please add a “*” next to the rate for all buying and selling and have a disclaimer at the bottom that says *Rates are indicative only and subject to change\r\n\r\n\r\n4) There are only two processing centres that we will be using so if we can have the order confirmation emails sent to the specific processing centre after the customer associated with the account creates an order that would be good. \r\n\r\n5) The contact button on the top right for each customer should display information regarding their processing centre. As mentioned above there are only two processing centres at the moment so this will be one of two centres depending on who they are associated with -\r\n\r\nHolborn:\r\nholborn.uk@kanoofes.com\r\nTel: 0207 837 4416\r\nFax:0207 833 0356\r\n \r\nHaymarket:\r\nhaymarket.corporate@kanoofes.com\r\nTel: 0207 484 9607\r\nFax: 0207 484 9645\r\n\r\n\r\n7) Make administration panel for centers\r\n\r\nTudor: which users are which ? currently we don’t have field for processing center … to attribute procfessing center to user ...\r\n\r\nFarrukh: I will get that list now with the processing centre \r\n\r\nT: on processing centers, I will put a textarea to enter this data, and then it will be available on the contact above for each users login, I guess we will be needing a processing center type of user to deal with orders / buybacks, just like in staff, but a little limited, only on his users … right ? \r\n\r\nF: Yes exactly :) The staff account is more supervisory as staff at the centres will only use the processing centre accounts/ their own account which is associated with the processing centre so unable to view all orders. Only superadmin can view all the users/orders\r\n\r\nT: excelent.. \r\n\r\n', '2014-02-01', NULL, 5, 1, 4, NULL, 1, 3, '2014-03-13 12:18:11', '2014-03-13 12:22:08', '2014-01-29', 100, 5, NULL, 1, 1, 2, 0),
(2, 2, 3, '30.01.2014 - Modifications', '1) -Currency drop box to be alphabetical please with EUR, USD and TRY to be displayed at the top and the remaining currencies in alphabetical order\r\n\r\n2) The currency scraper to have more currencies added\r\n - INR - Indian Rupee, \r\n- MAD Moroccan Dirham,\r\n- KYD Caymanian Dollar, \r\n- FJD - Fijian Dollar, \r\n- COP - Columbian Peso, \r\n- BWP - Botswana Pula, \r\n- BMD - Bermudian Dollar, \r\n- BDT - Bangladeshi Taka. \r\n\r\nWe can add them from the rates page ourselves of course but we want to be able to automatically get the rate updates as we do for the other currencies so just need to add these currencies on to the scraper.\r\n\r\n3) Client is viewing the spot rate when ordering T/C’s - for example the rate when I am viewing is 1.21276 for Euros. If I click on Order Cash I see the rate for the Euros with the margin added on. Even though there is a margin on the Euros in the admin panel I see the live rate of 1.21276 and no margin added on top of this for Travellers Cheques even though the margin in the admin panel has been set at 4.8. \r\n\r\n4) Homepage is too big for the screen, the user has to scroll sideways to view the full screen - just need the same fix for the admin page that has been applied for the client page\r\n\r\n5) There seems to be a 70px margin at the top in element styles, could you please reduce this \r\n\r\n6) If it is not a lot of work then please can you change the date from the current format which is YYYYMMDD to DDMMYYYY - this is displayed on the client side when ordering\r\n\r\n7) a) when a user logins in successfully for the first time, they need to be prompted to change their password.\r\nb) needs to be a reset password functionality\r\n\r\n8) PROBLEM, with loading image in get-rates / staff controll panel\r\n', '2014-02-04', NULL, 5, 1, 4, NULL, 1, 1, '2014-03-13 12:23:11', '2014-03-13 12:23:25', '2014-01-30', 100, 5, NULL, 2, 1, 2, 0),
(3, 2, 3, '04.02.2014 - Modifications', 'ON CLIENT LOG IN:\r\n\r\n-Order of TC Tab, does not give the option to order GBP T/C’s\r\n    “ it gives with the term UK”\r\n\r\n-Orders and buy backs are NOT submitting\r\n    “ seems to be working on http://instantwebsitesolutions.co.uk/kanoo “\r\n\r\n-Date format is not consistent on all tabs, as it is still in US format on many Tabs.\r\n\r\n-Orders I have created tab, does not allow user to open & print for both sell and buy transactions\r\n \r\nADMIN LOG IN:\r\n\r\n-Date format is not consistent on all tabs, as it is still in US format on many Tabs\r\n\r\n-Processing centre tab, Does not display our Kanoo locations\r\n\r\n-Margins are not appearing\r\n    “ they must be added manually ”\r\n\r\n-User Maintenance tab, does not display all users\r\n\r\n-Unprocessed orders tab, add order option, demands for both GBP and FX values, which is impossible unless you have the exchange rates to hand\r\n', '2014-02-07', NULL, 5, 1, 4, NULL, 1, 1, '2014-03-13 12:24:14', '2014-03-13 12:24:26', '2014-02-04', 100, 3, NULL, 3, 1, 2, 0),
(4, 2, 3, '16.02.2014 - Modifications', '- Feature to order / buyback multiple currencies in client panel     [ est. 5h ]\r\n\r\n- Add company percentage fee to the final rate, minimum fee needs to clarified     [ est. 1.5h ]\r\n\r\n-  another layer of confirmation for companies, if set a company manager, then he can log in and see incoming orders / buybacks for users of his company, and he must approve or cancel given orders, only then they can apear in the processing center and only for certain companies this feature [ est. 2h ]\r\n\r\n- option to enter maximum of UK amount, and receive calculated amount for it   [ est. 1h ]', '2014-02-19', NULL, 5, 1, 4, NULL, 1, 1, '2014-03-13 12:25:42', '2014-03-13 12:25:54', '2014-02-16', 100, 5, NULL, 4, 1, 2, 0),
(5, 2, 3, '19.02.2014 - Modifications', '- They don''t want the rate minused from the percentage rate they just want another column which says fee, If it''s a percentage fee or a flat fee just display the fee in there\r\n\r\n- And the sterling amount or foreign amount is very important so need that done please.  I got a call saying that the pound sign seems to have gone on to the right hand side and that the number of digits on the exchange rate seems to have increased too\r\n\r\n \r\n- Client ordering Cash:  Rate box now contains 10 digits.  This should be consisted of 4 digits.\r\n\r\n· Commission charges disappeared.  Nomura clients should see a charge 1.5 % in commission line.\r\n\r\n- £ sign appears at the end of the totals rather than front.\r\n\r\n-COMMISSIONS TO BE ADDED CORRECTLY\r\n\r\n-DUAL CONTROL PROCESS, WHEREBY A CREATED ORDER CAN GO TO AN APPROVER (IF REQUIRED BY CLIENT)\r\n\r\n- Client can only put currency amount when placing an order.  They pointed out that they would like to have sterling equivalent option as well.\r\n', '2014-02-22', NULL, 5, 1, 4, NULL, 1, 1, '2014-03-13 12:26:32', '2014-03-13 12:26:41', '2014-02-19', 100, 5, NULL, 5, 1, 2, 0),
(6, 2, 4, 'Slice layout', 'Slice and convert PSD mockups to HTML / CSS / JS\r\nFiles are attached\r\nPSD on google drive', '2014-03-05', NULL, 5, 1, 6, NULL, 1, 3, '2014-03-13 12:36:31', '2014-03-13 12:40:41', '2014-03-05', 100, 8, NULL, 6, 1, 2, 0),
(7, 2, 4, 'Implement ajax amounts calculations', 'Implement ajax amounts calculations, on both ways, for foreign in UK, and for UK in foreign.\r\nAlso display latest rates with margins added.', '2014-03-06', NULL, 5, 1, 6, NULL, 1, 2, '2014-03-13 12:37:46', '2014-03-13 12:40:56', '2014-03-06', 100, 3, NULL, 7, 1, 2, 0),
(8, 2, 4, 'Link orders to CMS', 'Link orders to CMS db to be displayed in administration panel', '2014-03-06', NULL, 5, 1, 6, NULL, 1, 2, '2014-03-13 12:38:55', '2014-03-13 12:41:07', '2014-03-06', 100, 5, NULL, 8, 1, 2, 0),
(9, 2, 3, 'Create instance with ZF1', 'Create project using zend framework 1 with mysql database', '2014-01-19', NULL, 5, 1, 4, NULL, 1, 1, '2014-03-13 13:52:37', '2014-03-13 13:56:08', '2014-01-14', 100, 3, NULL, 9, 1, 2, 0),
(10, 2, 3, 'Design database', 'Design database tables and functionabilities such as create / edit / delete\r\n- centers\r\n- companies\r\n- customers\r\n- margins\r\n- orders\r\n- payments\r\n- rates\r\n- users', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 13:53:55', '2014-03-13 14:05:54', '2014-01-18', 0, 5, NULL, 10, 1, 2, 0),
(11, 2, 3, 'Implement fronted design', 'Implement frontend design using bootstrap framework and responsive design', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 13:54:28', '2014-03-13 14:05:48', '2014-01-17', 100, 4, NULL, 11, 1, 2, 0),
(12, 2, 3, 'Implement rates parser', 'Implement rates parser for getting latest rates', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 13:54:56', '2014-03-13 14:05:39', '2014-01-22', 100, 2, NULL, 12, 1, 2, 0),
(13, 2, 3, 'Client order / buyback', 'Create ordering and buyback functionability available for clients', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 13:55:50', '2014-03-13 14:05:30', '2014-01-20', 100, 5, NULL, 13, 1, 2, 0),
(14, 2, 3, 'Login logic', 'Create login for clients, admin and processing centers', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 14:01:24', '2014-03-13 14:05:23', '2014-01-21', 100, 3, NULL, 14, 1, 2, 0),
(15, 2, 3, 'Client panel', 'Create client panel with orders, latest rates, buybacks, daily limit', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-03-13 14:02:49', '2014-03-13 14:05:10', '2014-01-18', 100, 3, NULL, 15, 1, 2, 0),
(2402, 3, 1, 'Sprint 1 - Discussions and planning', 'initial planning', NULL, NULL, 5, 3, 4, 1, 3, 2, '2014-03-13 16:09:20', '2014-03-30 15:24:39', '2014-03-09', 0, NULL, NULL, 2402, 1, 2, 0),
(2403, 3, 1, 'Create basic structure with ZF1', 'Create basic structure and configuration on zend framework 1 with mysql database.\r\nTest linux enviroment, and basic modules', NULL, NULL, 5, 3, 4, 1, 3, 5, '2014-03-13 16:11:14', '2014-03-30 15:24:30', '2014-03-09', 100, 8, NULL, 2403, 1, 2, 0),
(2404, 3, 1, 'Database design ', '', NULL, NULL, 5, 3, 4, 1, 3, 5, '2014-03-13 15:12:08', '2014-03-30 15:24:05', '2014-03-11', 100, 7, NULL, 2404, 1, 2, 0),
(2405, 3, 1, 'basic layout design ', 'Design the basic startup layout with the following links to\r\n''login'',\r\n''logout'',\r\n''my_account'',\r\n''clients'',\r\n''pets'',\r\n''reservations''.\r\n\r\nThe design needs to be responsive and to look good on desktop / tablet and mobile.', NULL, NULL, 5, 3, 4, 1, 3, 3, '2014-03-13 16:15:50', '2014-03-30 15:23:03', '2014-03-12', 100, 9, NULL, 2405, 1, 2, 0),
(2406, 2, 1, 'Implement login feature', 'Implement the posiblity to login using client or administrator.\r\nShow certain control panels for each.\r\nChange account settings and logout functionability\r\n\r\nThe implementation must be made after the attached UML diagram', NULL, NULL, 5, 3, 4, 1, 3, 4, '2014-03-13 16:16:34', '2014-03-30 15:21:48', '2014-03-13', 100, 10, NULL, 2406, 1, 2, 0),
(2407, 2, 1, 'Clients view', 'Create design and functionability for clients to view, add, edit or delete them.', NULL, NULL, 5, 3, 4, 1, 3, 2, '2014-03-13 16:17:55', '2014-03-30 15:20:01', '2014-03-13', 100, 10, NULL, 2407, 1, 2, 0),
(2408, 1, 1, 'Sprint 1 - Testing and bugs', '', NULL, NULL, 5, 8, 4, 1, 3, 2, '2014-03-13 16:20:25', '2014-03-30 15:20:22', '2014-03-13', 0, NULL, NULL, 2408, 1, 2, 0),
(2409, 1, 1, 'Demo Site, Not Resolving.. 404 message', 'Address provided to client, does not resolve to an actual website. ', NULL, NULL, 5, 9, 4, NULL, 9, 2, '2014-03-14 20:24:08', '2014-04-03 17:36:14', '2014-03-14', 0, NULL, NULL, 2409, 1, 2, 0),
(2410, 1, 4, 'Homepage - Header', 'Can we please make it so Travel Money Online is all on one line\r\n\r\nWith competitive rates and a user friendly site, ordering foreign currency with K-FX is simple and easy. - Can we please make it so this column is not so ''squashed'' - the column for this section should be wider. ', NULL, NULL, 5, 6, 4, NULL, 6, 2, '2014-03-16 21:46:01', '2014-04-03 09:27:12', '2014-03-16', 100, NULL, NULL, 2410, 1, 2, 0),
(2411, 1, 4, 'Currency Calculator', 'Under the country selector in the currency selector, I think we need a dropdown menu called ''I want to'' - The options should be ''Buy Currency'' and ''Sell Currency'' - Please still show the Buy and Sell Rates. \r\n\r\nWhen it is Buy Currency, the calculator should work like so. The figure entered into You Spend, is multiplied by the rate that is associated with the SELL currency of that country and that produces the figure in You Receive. (This needs to also work by entering numbers into the You Receive Box - figured entered in to you receive / the rate). ( An example of a calculator can be seen at: www.coventgardenfx.com)\r\n\r\nWhen it is Sell Currency, the calculator should work like so. The figure entered into you spend, is divided by the currency buy rate and this populates the you receive field. (An example of how this works can be seen at: http://coventgardenfx.com/en/buy-back/10) \r\n\r\n', NULL, NULL, 5, 6, 4, NULL, 6, 2, '2014-03-16 21:54:08', '2014-04-03 09:27:08', '2014-03-16', 0, NULL, NULL, 2411, 1, 2, 0),
(2412, 1, 4, 'Checkout', 'Under checkout, under Payment details, there should be an option called Bank Transfer. If they select Bank Transfer, it gives instructions on how to pay using this service. Use Lorem Ipsum for this and I will populate the rest. ', NULL, NULL, 5, 6, 4, NULL, 6, 2, '2014-03-16 21:56:48', '2014-04-03 09:27:01', '2014-03-16', 100, NULL, NULL, 2412, 1, 2, 0),
(2413, 1, 4, 'Currency Calculator Part 2', 'Currency calculator is not working in Chrome.', NULL, NULL, 5, 6, 4, NULL, 6, 3, '2014-03-16 21:57:16', '2014-04-03 09:26:57', '2014-03-16', 100, NULL, NULL, 2413, 1, 2, 0),
(2414, 2, 3, '17.03.2014 - Modifications', '- multi currency order\r\n\r\n- the old system they had the ability to be able to go to a user and turn them on or off from being an approver for the company\r\n\r\n- and also there was one more issue with the limits', NULL, NULL, 5, 1, 4, NULL, 1, 1, '2014-03-17 10:05:59', '2014-04-03 09:26:20', '2014-03-17', 0, NULL, NULL, 2414, 1, 2, 1),
(2415, 2, 1, 'Details for sprint 2', 'That appears to be the basic framework of a cms, basically appears as a blank drupal install. From here is where it will get a bit more complicated as we begin to add features into the system, the order of which is crucial as well as where and how the information is presented.\r\n\r\nMy thoughts.\r\n\r\nIn order to move as smoothly as possible, I suggest that we build the following 3 items first.\r\n\r\n1) The main screen\r\n2) The Client information screen\r\n3) The pet information screen\r\n\r\nWe then populate the database with dummy clients and pets, so we can see how these items will interact with additional features as they are added.\r\n\r\nSee attachment, this is an extremely rough mock up that I produced using paint. But this is the direction that we are headed with the main interface. (Page 1).  What is important is a scrollable list of clients on the main screen as well as pet picture for now. (additional features on the main screen will be color coded by last visit for marketing, and type of client (grooming, boarding, daycare, combination).\r\n\r\nIn precedence the most important screens for smooth operation of the business are the main screen and the "all in one screens" that provide instant view of everything going on inside the facility.\r\n\r\nThoughts.\r\n', NULL, NULL, 5, NULL, 4, 2, 1, 2, '2014-03-17 14:33:08', '2014-04-03 17:36:01', '2014-03-17', 0, NULL, NULL, 2415, 1, 2, 1),
(2416, 2, 1, 'Main screen design', 'Main screen:\r\n\r\n-shortcuts (as in attached mockup):\r\n  -search by pet name, and/or search by owner nume / last name, phone\r\n  -display owner list for the pets with search string  in their name, or owners with that phone number\r\n  -display pet info for selected owner\r\n  -picture\r\n  -behavior info (green ok, red if not)\r\n  -expired vaccine info or other problems (red) \r\n  -DOB + weeks and days to anniversary\r\n  -breed\r\n  -sex\r\n  -size\r\n  -appointments (existing or passed)\r\n  -types boarding/daycare/groom', NULL, NULL, 5, 9, 4, 2, 3, 3, '2014-03-17 15:43:22', '2014-04-03 17:35:48', '2014-03-17', 80, NULL, NULL, 2416, 1, 2, 0),
(2417, 2, 1, 'Owner info screen', 'Client information: \r\npicture\r\ntitle, name, last name\r\nsecond owner? (name, last name)\r\nContact information:\r\nHome phone\r\nCell phone\r\nwork phone\r\nEmergency phone\r\nEmergency name\r\npreferred phone (1,2,3)\r\ne-mail\r\nstatus\r\nAddress (Street, City, State, Zip, \r\nContracts (signed  - check box)\r\nattached documents (link)\r\nsticky note (warnings)\r\ndisplay info about: no. visits, referrals, rewards, board no show, groom no show, cancellations no.\r\n', NULL, NULL, 5, 1, 4, 2, 3, 1, '2014-03-17 15:44:28', '2014-04-06 19:21:23', '2014-03-17', 0, NULL, NULL, 2417, 1, 2, 0),
(2418, 2, 1, 'Pet info screen', 'Pet info:\r\n\r\nname\r\ndate of file creation (pet added)\r\ntype (of animal) (dropdown list)\r\ncolor (dropdown list)\r\nsize(dropdown list)\r\nsex(dropdown list)\r\nbreed (dropdown list)\r\nweight\r\nDOB\r\npicture\r\nStatus\r\nvet and vaccines: \r\nvet name (multiple vets)\r\n3 types of vaccines with date (Rabies, FaLeuk, F/V/R/C/P )\r\nreservations:  Boarding, out groom, day care, training (0 or 1?)\\\r\nsticky note (warnings)\r\nPet options: \r\ncheck in', NULL, NULL, 5, 9, 4, 2, 3, 11, '2014-03-17 15:45:06', '2014-04-07 01:02:58', '2014-03-17', 100, NULL, NULL, 2418, 1, 2, 0),
(2420, 2, 3, 'Add multi currency orders and buybacks', 'The posibity to order more than one currency,\r\nalso available for buyback.', NULL, NULL, 5, 6, 4, NULL, 1, 4, '2014-03-23 13:22:58', '2014-04-03 09:26:11', '2014-03-23', 100, NULL, NULL, 2420, 1, 2, 0),
(2421, 2, 3, 'Approval systems on orders / buybacks for clients under certain company', 'Attached screenshots explaining the workflow', NULL, NULL, 5, 7, 4, NULL, 1, 2, '2014-03-23 13:36:01', '2014-04-03 09:25:53', '2014-03-23', 100, NULL, NULL, 2421, 1, 2, 0),
(2422, 2, 5, 'Implementare layout (template)', '', NULL, NULL, 5, 12, 4, NULL, 1, 5, '2014-03-25 18:35:47', '2014-04-03 09:28:00', '2014-03-25', 100, NULL, NULL, 2422, 1, 2, 0),
(2423, 2, 5, 'Adaugare proiect blaj', '', NULL, NULL, 5, 12, 4, NULL, 1, 4, '2014-03-25 18:36:35', '2014-04-03 09:27:55', '2014-03-25', 100, NULL, NULL, 2423, 1, 2, 0),
(2424, 1, 1, 'Main screen and features. ', 'It is some progress.\r\n\r\nWe need to remove the delete client option from the main screen. that should be an admin option and an option that is access restricted. Much as like drupal permissions.\r\n\r\nAdditionally we need to ad a closing red x in the upper corner of the view pets screen. At current the pop up is difficult to close. \r\n\r\nOn to the client and pet information screens. We need to tighten them up and lay them out a bit better at current the input fields are to large and require scrolling to see. If you could use your theme but lay it out as is the example program that would be excellent. \r\n\r\nAlso a scroll bar would be excellent on the main screen and a listing of at least 10 clients. Ajax calls should be used if possible to limit the search results as typed. \r\n\r\nThe client email address is not needed on the main page and should only be inside the client pet window.\r\n\r\nOn the front page should be Client name, pet name, phone. \r\n\r\nI also do not need the client image on the main screen. \r\n\r\nIn this business we know the pets more than we know the people so the pet image on the main screen is much more useful. So I would say remove the client thumbnail from the main screen and leave that in the client pet window.\r\n\r\nAlso on the version I viewed I cannot remove the view pet information tab to see what is under it.\r\n\r\nThe search feature should include, owner last name, owner first name, pet name, pet breed.. (we will expand this later to include phone and membership number) but for now those for are primary. \r\n\r\nAgain the "refresh" for search is tiresome. If you we could use ajax to querry the db and filter as typed that would probably be much better. ', NULL, NULL, 5, NULL, 4, NULL, 9, 1, '2014-04-01 22:05:16', '2014-04-03 17:34:59', '2014-04-01', 0, NULL, NULL, 2424, 1, 2, 0),
(2425, 1, 1, 'Client and Pet Screen', 'We need to leave the bottom open with a fairly decent row across the bottom as their will be feature buttons there..\r\nCheck In, Check Out, Edit Stay, Medications, \r\n\r\nAs to the client and pet image see the attached, it should be more like that.. I apologize I had to make it in paint.\r\n\r\nbut this leaves more room for action buttons and detail at bottom and in white space such as financial history, last bills, etc...', NULL, NULL, 5, 1, 4, 3, 9, 4, '2014-04-02 22:02:42', '2014-05-05 21:34:55', '2014-04-02', 100, NULL, NULL, 2425, 1, 2, 0),
(2427, 1, 3, 'Modifications on multiple orders [03.04.2014]', '·         Multiple currency orders tab is working now, but I’ve found a small glitch with some of the currencies, system changes the amount by itself.  For example when I enter Israeli Shekels for 150, it changes the amount to 149.989898.   Also we want the multiple currency tab directly under the order cash tab.\r\n\r\n·         Rates still don’t get updated automatically. We need to manually update them.\r\n\r\n·         When users place orders for delivery for another day, confirmation we receive shows today’s date, not the date they entered.', NULL, NULL, 5, 7, 4, NULL, 1, 3, '2014-04-03 09:25:37', '2014-04-08 12:45:23', '2014-04-03', 100, NULL, NULL, 2427, 1, 2, 0),
(2428, 2, 6, 'Adaptare la noua versiune cPanel a hostingului', '- probleme cu preturile pe prima pagina si pe administrator', NULL, NULL, 5, 1, 4, NULL, 1, 1, '2014-04-03 16:17:30', '2014-04-03 16:18:18', '2014-04-03', 100, NULL, NULL, 2428, 1, 2, 0),
(2429, 2, 6, 'New responsive design', '', NULL, NULL, 4, 13, 4, NULL, 1, 1, '2014-04-03 16:18:31', '2014-04-04 15:38:04', '2014-04-03', 100, NULL, NULL, 2429, 1, 2, 0),
(2430, 3, 1, 'Completed Database for Import and Bug Testing', 'Was unable to add a file, under the ''Files'' tab. But it was requested that I provide a complete (full) database of customers and pets to use as part of the development process. Please follow the link below I have shared a file on my drive.\r\n\r\nhttps://drive.google.com/file/d/0B9f1DctE8Q17OVNzaVBJVUJtMGs/edit?usp=sharing\r\n\r\nAlert me when downloading is complete so as I may remove it from my drive. \r\n\r\n', NULL, NULL, 1, NULL, 4, NULL, 9, 5, '2014-04-04 14:21:21', '2014-06-02 23:44:55', '2014-04-04', 0, NULL, NULL, 2430, 1, 2, 0),
(2431, 2, 1, 'Feature Requests. (for development planning)', 'The are features that we have documented that should be in the completed program. I figure it is best to add them now so as we can plan for their inclusion in the final product. These can be added as convenient and at such time as they are practical to add and will fit in with the overall design and development process. As we continue to utilize the software we will note more issues that will need inclusion or deletion. I am not sure if these should all have separate feature requests in here for ease of tracking, if so adjust accordingly. \r\n\r\n1) POS (Point of Sale) from any screen. \r\n\r\n  a) The reason being that often times with the current program we are forced to close windows in order to access the point of sale feature. If for example we are at the check out screen or the client screen and a customer walks in from the street we must close the current window in order to access the POS area and make a sale. Then we must re-open what we were previously working on and continue. Other issue include while adding a client if the same issue happens we must either ask the customer wanting to make a purchase to wait while we finish entering the file or close the window, lose and unsaved work to use the POS and then resume once the sale has been made.\r\n\r\n2)SMS (texting) ability. \r\n\r\n  a) I am unsure how to implement this feature, but it would be excellent if the program were capable of sending a text message to clients informing them of upcoming appointments or to confirm reservations etc. We may be able to accomplish this via the app for the client side once the main program is completed and functional. Additionally it would be useful in order to automatically contact clients that have not been present for x number of days etc.\r\n\r\n3)Better Marketing ability.\r\n\r\n  a) Currently the desktop version falls way short in its ability to market to clients. Or to say it better to provide the staff at the counter with the ability to see which customers need to be contacted based upon last visit. One idea which we have posited is color coding the client names or color coding a box around the client names on the main screen that is representative of when the client was last at that store. ie.. a client that has not been present in 14 days would get a green box, 45 days would get a yellow box, over 45 days a red box, this allows us to quickly determine which clients are stale and which ones need to be contacted again.\r\n\r\n  b)Additionally tied in with the feature and likely as a child window should be the ability to document the last contact with the customer. ie. Date, type of contact (LM [left message], TTO [Talked to Owner], CB [Call Back], Employee Name that make contact, Feedback (dissatisfied, out of town [set a date for a reminder call, email, text] etc.\r\n\r\n  c)Should be an advanced search in the file menu that allows to search by contact need\r\n\r\n  d)Customers should be able to have an assigned and editable group (Grooming Customer, Daycare Customer, Boarding Customer etc)\r\n\r\n  e) the current program does a very basic and wholly ineffective search by date under the "mailer feature" but it is pretty much useless. As it can not filter clients very well..\r\n\r\n4) Messaging system\r\n\r\n   a) this is an advanced feature that will tie in with the admin and client side as well as the app. It should give the customer the ability to use the app or the client side to message the staff at the desk, Not IM but more in the form of a memo or email. A notification that a message is pending should be clearly visible on the main screen. ie.. customer goes to app and messages that they will not be able to pick up fluffy until 5 p.m. or that their neighbor will be picking up the dog. Additionally this memo should be documented and go into a log that includes the name of the employee that handled the memo and a quick description of the action taken.. \r\n\r\n5) Schedule Back-ups\r\n\r\n   a) the program should basically have a cron feature that allows backups to be scheduled to run automatically and save to a backups directory on the server. The admin should then have the ability to "restore from that saved back-up".. The admin SHOULD NOT HAVE the ability to download the saved back-up but only to restore from it.\r\n\r\n6) Picture and image posting. \r\n\r\n   a) This will implement with the app and client section of the program. Many times during the course of our business we will take photographs and what not of pets in the play area to let owners see what they are doing and to know they are being taken care of. Previously we would either upload the photos to facebook or twiiter or email the client the photos directly. This is time consuming. Ideally we would like the staff in the play area to be able to take a photo and use the app to post that photo to a gallery in the client area associated with that pet. This way the client can log in using the app or the web to the client area and view a gallery that contains recent pet photos. \r\n\r\n7) Self Check-in / Out.\r\n\r\n   a) This is a "Wish" feature but one idea brought to me by a staff member was the idea of placing a tablet on the front counter that allows the clients to check in and out and process payments themselves for basic services. Since this software is in the cloud it should not be that difficult and we may be able to link the payment feature to paypal or to the credit card processor. T\r\n\r\n8) App Check in / Process Payment\r\n\r\n   a) Similar to the Paypal here app (google it) it would be nice if employees were able to process payments with their mobile device and if necessary have receipts emailed to customers. The scenario would be the business is busy, their is an employee at the front desk and others are waiting to check out and their is an employee free. Currently the free employee can not help because there is only one console. If the employee were able to use their mobile device and check out customers on the fly it would expedite the process.\r\n\r\n9) Grooming Module\r\n\r\n   a) I will cover this in detail in a separate feature request as it needs to be completely reworked as I believe the current way we deal with scheduling is ineffective as it is a time based method.\r\n\r\n   b) on this note and before I forget another "Wish" feature is the ability to have a monitor or computer in the grooming room that allows the groomers to view the grooming instruction cards and make notes to the clients grooming file. Additionally it should allow groomers to update the status on a dog on the fly, whereas a customer could log into the client side and view progress made on their dog. Think of package tracking by fed ex or UPS..\r\n\r\nthat is all for now.. just notes to be considered for future development. ', NULL, NULL, 1, NULL, 4, NULL, 9, 4, '2014-04-04 15:11:54', '2014-06-02 23:44:47', '2014-04-04', 0, NULL, NULL, 2431, 1, 2, 0),
(2432, 2, 1, 'Requests on search / loading more', 'Richard: \r\n\r\nSearch should be dynamic.. something I believe similar to http://blog.comperiosearch.com/blog/2012/06/27/make-an-instant-search-application-using-json-ajax-and-jquery/\r\n\r\nI have seen it done with another developer that I had hired for this project that ceased communication a year ago.\r\n\r\nExample.. Pets- Annie, Alex, Barnie, Bill, Casey, Candy, Cookie..\r\n\r\nInitially main screen shows results of last search or alphabetical listing of clients. As client searches pets. and types "A", then all A results should show, if client types (A,N) then only Annie should show.\r\n\r\nAlso DELETE CLIENT IS STILL ON MAIN SCREEN, IT NEEDS TO BE REMOVED and only used in a permission based environment for admins and only then with a warning letting the "admin" know that it will delete that clients entire history, to include financial information etc.\r\n\r\nAlso I LIKE HOW YOU HAVE THE PET IMAGES LARGE ON THE SIDE WITH THE BASIC PET INFO. That is excellent, let us keep it and do not change anything about it. Let us add a Small Thumb in the table of the pet image as well.\r\n\r\nThis saves time as the user does not need to click to see the image of the pet and could complete their search or find the correct pet from the thumb alone.\r\n\r\nAlso our phone layout is (123)456-7899\r\n\r\nAlso I forgot that Vaccination records should be on the client/pet screen, when they expire..\r\n', NULL, NULL, 5, 9, 4, 2, 1, 5, '2014-04-07 01:04:43', '2014-04-23 10:25:58', '2014-04-07', 100, NULL, NULL, 2432, 1, 2, 0),
(2433, 2, 6, 'New website specifications', 'See attached designs.\r\n\r\n* urmat designul cat mai intocmai, responsive pentru diverse deviceuri\r\n* cos de cumparaturi cu login asemanator cu emag\r\n* search lafel, un functie de categorie\r\n* imaginea de deasupra cu bacgkround sa poata fii schimbata din admin\r\n* produse dupa categorii puse in meniu, produse dupa producatori\r\n* contact - cu datele din anvelope-turbo.ro\r\n* promotiile saptamanii - editabil din admin\r\n* lichidari de stoc - editabil din admin\r\n* card cadou - aici sa primeasca vouchere de reducere\r\n* castiga noua samsung .. - promotie\r\n* promotiile lafel editabile din admin\r\n* backgroundul din dreapta cu imagini fix, daca se poate editabil\r\n* produse dupa vechiul template facut\r\n* la nou, sa apara ultimele 5 produse noi adaugate si sa se schimbe ele automat, sa poata fii navigate\r\n* istoricul de navigare. sa arate cele mai vizitate produse, lafel navigabil din admin\r\n* jos lista de producatori pe care poata da click si arata produsele\r\n* copyrightul de jos\r\n', NULL, NULL, 2, 1, 4, NULL, 1, 1, '2014-04-08 19:42:21', '2014-05-05 20:36:26', '2014-04-08', 0, NULL, NULL, 2433, 1, 2, 0),
(2434, 2, 1, 'CRUD on pet type / color / size / breed', 'Create and implement create, read, update, delete \r\nfeatures for the following pet attributes:\r\n* pet type\r\n* pet color\r\n* pet size\r\n* pet breed', NULL, NULL, 5, 9, 4, 3, 1, 4, '2014-04-08 23:54:53', '2014-04-23 10:26:12', '2014-04-08', 100, NULL, NULL, 2434, 1, 2, 0),
(2435, 2, 1, 'Dynamic settings, colors, texts and images', 'Please check the left option box with the settings', NULL, NULL, 5, 9, 4, 3, 1, 2, '2014-04-10 16:43:35', '2014-04-23 10:26:24', '2014-04-10', 100, NULL, NULL, 2435, 1, 2, 0),
(2436, 2, 1, 'My account development', 'In left-menu we have "my account" feature.\r\nNeeds to be implemented.\r\n\r\nSee screenshot:\r\n\r\n', NULL, NULL, 5, 9, 4, 3, 1, 2, '2014-04-14 13:13:22', '2014-04-23 10:26:31', '2014-04-14', 100, NULL, NULL, 2436, 1, 2, 0),
(2437, 2, 1, 'Users workflow', 'Implement the ability to create / edit / delete and set admin, client rights on users\r\nSee screenshot', NULL, NULL, 5, 9, 4, 3, 1, 3, '2014-04-14 13:15:36', '2014-04-23 10:26:43', '2014-04-14', 100, NULL, NULL, 2437, 1, 2, 0),
(2438, 2, 7, 'Specifications', '', NULL, NULL, 2, NULL, 4, NULL, 1, 0, '2014-04-15 12:59:12', '2014-04-15 12:59:12', '2014-04-15', 0, NULL, NULL, 2438, 1, 2, 0),
(2439, 1, 2, 'Testing and bugs', 'Verify the application for errors and bugs', NULL, NULL, 5, 6, 4, 4, 1, 4, '2014-04-15 16:53:53', '2014-04-30 11:31:18', '2014-04-15', 0, NULL, NULL, 2439, 1, 2, 0),
(2440, 2, 2, 'Clients view', 'Create design and functionability for clients to view, add, edit or delete them.', NULL, NULL, 5, 6, 4, 4, 1, 3, '2014-04-15 16:54:26', '2014-04-30 11:31:10', '2014-04-15', 100, NULL, NULL, 2440, 1, 2, 0),
(2441, 2, 2, 'Implement login feature', 'Implement the posiblity to login using client or administrator.\r\nShow certain control panels for each.\r\nChange account settings and logout functionability\r\n\r\nThe implementation must be made after the attached UML diagram\r\n', NULL, NULL, 5, 6, 4, 4, 1, 4, '2014-04-15 16:55:10', '2014-04-30 11:31:04', '2014-04-15', 100, NULL, NULL, 2441, 1, 2, 0),
(2442, 2, 2, 'basic layout design ', 'Design the basic startup layout with the following links to\r\n''login'',\r\n''logout'',\r\n''my_account'',\r\n''clients''\r\n\r\nThe design needs to be responsive and to look good on desktop / tablet and mobile.', NULL, NULL, 5, 6, 4, 4, 1, 4, '2014-04-15 16:57:48', '2014-04-30 11:30:25', '2014-04-15', 100, NULL, NULL, 2442, 1, 2, 0),
(2443, 2, 2, 'Database design ', '', NULL, NULL, 5, 6, 4, 4, 1, 3, '2014-04-15 17:00:24', '2014-04-30 11:30:18', '2014-04-15', 100, NULL, NULL, 2443, 1, 2, 0),
(2444, 2, 2, 'Create basic structure with ZF1', 'Create basic structure and configuration on zend framework 1 with mysql database.\r\nTest linux enviroment, and basic modules', NULL, NULL, 5, 6, 4, 4, 1, 3, '2014-04-15 17:02:03', '2014-04-30 11:30:13', '2014-04-15', 100, NULL, NULL, 2444, 1, 2, 0),
(2445, 2, 2, 'Discussions and planning', '', NULL, NULL, 2, 6, 4, 4, 1, 2, '2014-04-15 17:02:53', '2014-04-16 15:31:37', '2014-04-15', 100, NULL, NULL, 2445, 1, 2, 0),
(2446, 2, 3, 'Modifications - 16.04.2014', 'With regards to the approval process, please note that I have tested this process and found the following short falls:\r\n\r\n- The system does not allow multiple approvers, which would cause an issue if the sole approver is out of the office. We need multiple approvers function.\r\n- Jas set himself up as an approver for a company and when the user committed to the transaction, no message was sent to Jas’s email for a notification of approval.  Therefor this transaction will not be processed.\r\n- Furthermore today there were two exchange rate updates one around 8.30 and again second one around 11:30.  We require only one update at 08:30 please .\r\n \r\n\r\nThank you.', NULL, NULL, 5, 6, 4, NULL, 1, 2, '2014-04-16 09:35:47', '2014-04-29 07:43:03', '2014-04-16', 100, NULL, NULL, 2446, 1, 2, 0),
(2447, 2, 2, 'Add menus', '- add menus according to screenshots', NULL, NULL, 5, 6, 4, 4, 1, 4, '2014-04-16 10:50:53', '2014-04-30 11:29:46', '2014-04-16', 100, NULL, NULL, 2447, 1, 2, 0),
(2448, 2, 4, 'Modifications - 23.04.2014', 'Hi Tudor,\r\n\r\nPlease see additional feedback on KFX\r\n\r\nJust a couple of small points and some may be linked to my computer.\r\n\r\nComplaints procedure: - http://www.instantwebsitesolutions.co.uk/kfx/live/terms.php\r\n\r\nFor some reason the words click here appear to be opaque or cannot be seen easily. Please amend or make stand out more clearly.\r\n\r\nCould you please have a look at the ordering screen and specifically the input fields against You Spend You Receive?\r\n\r\nI must be doing something wrong but when having selected Euro and the rate appears, I typed in 600 as in I want to purchase €600 in the your receive field yet 688.1385 appears in the field above and vice versa if I put 600 in the you spend field as in I wanted to receive that currency amount? I get £523.1505 in the you receive.\r\n\r\nIt may just me being thick but am slightly worried that customers may get confused, so would appreciate some clarification or any suggestions how we can avoid anyone else being as easily confused!\r\n\r\nChange from 50 to 80 currencies as we discussed and hopefully we are rocking and rolling.\r\n\r\n-- \r\nMany thanks,\r\n\r\nLuke Deakin\r\n', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-04-23 09:48:19', '2014-05-09 07:45:11', '2014-04-23', 90, NULL, NULL, 2448, 1, 2, 0),
(2449, 2, 1, 'Add to database all pet types / colors / sizez / breeds', '', NULL, NULL, 5, 9, 4, 5, 1, 2, '2014-04-23 15:31:27', '2014-05-05 21:35:55', '2014-04-23', 100, NULL, NULL, 2449, 1, 2, 0),
(2450, 2, 1, 'Pet reservations', 'Reservations implemented for:\r\n\r\n- Daycare\r\n- Grooming\r\n- Training\r\n- Boarding', NULL, NULL, 5, 9, 4, 5, 1, 3, '2014-04-24 16:35:20', '2014-05-05 21:35:49', '2014-04-24', 100, NULL, NULL, 2450, 1, 2, 0),
(2451, 2, 6, 'Parse db', 'http://www.btnturbo.com/\r\n- with all parts according to manufacteurs / cars', NULL, NULL, 4, 13, 4, NULL, 1, 1, '2014-04-27 11:02:54', '2014-05-05 10:53:25', '2014-04-27', 100, NULL, NULL, 2451, 1, 2, 0),
(2452, 2, 3, 'Modifications - 28.04.2014', '> Good Morning Luke\r\n>\r\n>  \r\n>\r\n> Hope you are well.  I have been away on annual leave for the last couple of weeks.   I hope to clarify few things with you with regards to outstanding issues of order approval features in URFX. \r\n>\r\n>  \r\n>\r\n> Back in February we submitted copies of company approvers.  Please see attached documents. \r\n>\r\n> We were looking for following company profiles to support an approval feature for all orders.  We require that each company is set up with two approvers in case one person is away:\r\n>\r\n>  \r\n>\r\n> Reuters Foundation\r\n>\r\n> Thomson Reuters Foundation\r\n>\r\n> Pioneer TV\r\n>\r\n> Cicada  Films\r\n>\r\n> The Really Useful Group\r\n>\r\n> CTVC\r\n>\r\n> Content Films\r\n>\r\n> RDF\r\n>\r\n> Miller Insurance\r\n>\r\n> Euro Car Parts\r\n>\r\n> Christie Mason & Woods\r\n>\r\n>  \r\n>\r\n>  \r\n>\r\n> The approver feature is still not in effect.  I set myself up as an approver for Miller Insurance and I got an email to advise me that there is a pending order, but when I logged in to manage the order, I was not given with the option to approve.  We got few queries from clients with the same issues, not being able to approve a pending order.  What we would like to see is the following:\r\n>\r\n>  \r\n>\r\n> ·         Two approvers set up per company listed above\r\n>\r\n> ·         In admin site, we would like to see the list of approvers and ability to make amendments if necessary\r\n>\r\n> ·         Approver receives an email confirmation of a pending order after an order is created (this seems to be working  most of the time but it didn’t work on one of my test orders I created)\r\n>\r\n> ·         Client profiles should have  a new tab for  ORDERS TO APPROVE.  This was the case with FX4U.\r\n>\r\n> ·         An email confirmation for each approved order\r\n>\r\n>  \r\n>\r\n> Please feel free to give me a call today to discuss how we will go around these issues. \r\n>\r\n>  \r\n>\r\n>  \r\n>\r\n> Thanks\r\n>\r\n>  \r\n>\r\n> Regards\r\n\r\n>\r\n> Selvet Tufan | Sales Leader | Kanoo Travel Ltd. | 30-31 Haymarket | London | SW1Y 4EX | United Kingdom\r\n> Tel: 020 7484 9633 | Fax: 0207 484 9645 | Email: haymarket.uk@kanoofes.com | Web: www.kanoocurrency.co.uk\r\n>\r\n\r\n>\r\n> Independently owned and operated by Kanoo Travel.\r\n>\r\n> Kanoo Travel Ltd proudly supports Make-A-Wish Foundation® UK\r\n>\r\n> Make-A-Wish grants magical wishes to children and young people fighting life-threatening conditions\r\n>\r\n> From: Haymarket FES Office\r\n> Sent: 25 February 2014 10:50\r\n> To: luke@instantwebsitesolutions.co.uk\r\n> Cc: Selvet Tufan; Jas Manku; Haymarket Corporate FES\r\n> Subject: COMPANY APPROVER''S - KANOO\r\n>\r\n>  \r\n>\r\n> Hi Luke\r\n>\r\n>  \r\n>\r\n> Please find attached the relevant company approvers to be updated. There are 11 attachments in total.\r\n>\r\n>  \r\n>\r\n> Regards\r\n\r\n>\r\n> Anne Love | Cashier | Kanoo Travel Ltd. | 30-31 Haymarket | London | SW1Y 4EX | United Kingdom\r\n> Tel: 020 7484 9600 | Fax: 0207 484 9645 | Email: haymarket.uk@kanoofes.com | Web: www.kanoocurrency.co.uk\r\n>\r\n\r\n>\r\n> Independently owned and operated by Kanoo Travel.\r\n>\r\n> Kanoo Travel Ltd proudly supports Make-A-Wish Foundation® UK\r\n>\r\n> Make-A-Wish grants magical wishes to children and young people fighting life-threatening conditions\r\n>\r\n>\r\n> ---------------------------------------------------------------------\r\n> This message and any attachments are solely for the intended recipient and may contain confidential or privileged information. If you are not the intended recipient, any disclosure, copying, use, or distribution of the information included in this message and any attachments is prohibited. If you have received this communication in error, please notify us by reply e-mail and immediately and permanently delete this message and any attachments. Thank you.\r\n>\r\n> Kanoo Travel Limited a company incorporated and existing under the laws of England and Wales, with company number 5776787 and having its registered office at Lynton House (First Floor), 7-12 Tavistock Square, London WC1H 9LT.\r\n>\r\n> In order to comply with Payment Card Industry Data Security Standards (PCI DSS):\r\n> 1. Do not send any card details unencrypted via email to Kanoo Travel/Kanoo Foreign Exchange\r\n> 2. Provide passwords to known/verified recipient via the telephone only\r\n> 3. Any files containing card data sent to Kanoo Travel/Kanoo Foreign Exchange must be encrypted and password protected\r\n>\r\n>\r\n> ---------------------------------------------------------------------', NULL, NULL, 5, 6, 4, NULL, 1, 2, '2014-04-29 11:13:48', '2014-05-05 09:00:25', '2014-04-29', 100, NULL, NULL, 2452, 1, 2, 0),
(2453, 1, 8, 'Modifications - 28.04.2014', '\r\nPlease find below tasks to be completed. I will send further tasks once these are done. \r\n\r\n-          Please can we create an icon on the general orders page please (http://www.coventgardenfx.com/cms/orders.php?page=allorders) similar to the little green man, paid icon etc.. The icon needs to show when the Send MT Email box has been ticked in the order. The icon we would like is:\r\n-          Please can we automatically send the ‘Send MT Email’ – 24 hours after the order has been marked as completed.\r\n-          Please can you create an email that sends to ehayes@coventgardenfx.com, rhayes@coventgardenfx.com and luke@instantwebsitesolutions.co.uk – the email should send when an order has been changed type. For example if it is a postal order and is changed to a collection. Or a collection to Postal etc.. The email should say:\r\n\r\nHi Covent Garden FX\r\n\r\nOrder #1672354 has had its order type changed from X to Y.\r\n\r\n-          Please can you create an email that sends to ehayes@coventgardenfx.com, rhayes@coventgardenfx.com and luke@instantwebsitesolutions.co.uk – the email should send when an order has the exchange rate manually changed and the difference is greater or less than 3%. The email should say\r\n\r\nHi Covent Garden FX\r\n\r\nOrder #1672354 has had its exchange rate changed where the margin is greater or less than 3%.\r\n\r\n-          For users elandi@coventgardenfx.com and phealey@coventgardenfx.com – can we please remove the following titles from /orders.php – Postal. Order Money. Dispatch. RM Import. Import CSV', NULL, NULL, 1, 1, 4, NULL, 1, 0, '2014-04-29 11:37:38', '2014-04-29 11:37:38', '2014-04-29', 0, NULL, NULL, 2453, 1, 2, 0),
(2455, 1, 3, 'Security issue - create VHOST', 'Moved application, library, cronjob, data, tests outside public_html folder.\r\nThe config, credentials are set to not be public', NULL, NULL, 5, 6, 4, NULL, 1, 2, '2014-04-30 13:22:37', '2014-05-05 09:00:05', '2014-04-30', 100, NULL, NULL, 2455, 1, 2, 0),
(2456, 2, 1, 'Boarding, daycare, grooms, training centers', 'Add boarding, daycare, grooms, training centers,\r\nWith the posiblity of editing, adding, deleting\r\n\r\nThe posibility to select pet reservation with certain cetner.', NULL, NULL, 5, 9, 4, 5, 1, 2, '2014-04-30 16:44:05', '2014-05-05 21:35:38', '2014-04-30', 100, NULL, NULL, 2456, 1, 2, 0),
(2458, 2, 2, 'Change password functionality', 'Reminder to change password when the user is logged for the first time.', NULL, NULL, 4, 6, 4, 6, 14, 2, '2014-05-01 11:07:24', '2014-05-05 10:36:28', '2014-05-01', 100, NULL, NULL, 2458, 1, 2, 0),
(2459, 1, 1, 'Delete Client ', 'Remove this from the main screen. This should be an advanced option in another window, or likely a small icon on the client/pet page. This should not be in the main window.\r\n\r\nThis screen is the "home page" of the software and the one that employees will be using, so this option only crowds the page and provides unnecessary options and information. ', NULL, NULL, 5, 9, 4, 7, 9, 2, '2014-05-03 14:13:57', '2014-05-16 06:10:04', '2014-05-03', 100, NULL, NULL, 2459, 1, 2, 0),
(2460, 1, 1, 'Phone Number Format', 'The phone number format needs to be changed as provided in the image', NULL, NULL, 5, 9, 4, 7, 9, 2, '2014-05-03 14:20:45', '2014-05-16 06:10:11', '2014-05-03', 100, NULL, NULL, 2460, 1, 2, 0),
(2461, 1, 1, 'Home screen revamp', 'Is the attached possible.\r\n\r\nIt is one of our goals to reduce the number of "clicks" that a user must use in order to find a specific pet. Efficiency is one of the main goals with this software and in order for that to be a reality the software needs to be somewhat intuitive and provide plenty of the correct information quickly.\r\n\r\nIt needs to be understood that the attached is the main page. The page that employees will start at in order to search for a pet or perform other options. \r\n\r\nIs is possible to integrate the arrow keys so that an employee can search, then scroll and as they scroll the image is loaded dynamically on the right. This as opposed to have to click to view a pet which is an added step.\r\n\r\nAdditionally "edit" has been removed and replaced with view. In regards to allowing the user to view the client pet page.\r\n\r\nAdditionally breed has been added as a search option.\r\n\r\n', NULL, NULL, 5, 9, 4, 7, 9, 6, '2014-05-03 14:44:51', '2014-05-16 06:10:18', '2014-05-03', 100, NULL, NULL, 2461, 1, 2, 0);
INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`) VALUES
(2462, 2, 1, 'Pets? icon.. upper right', 'This is useless..\r\n\r\nIn its current location it serves no purpose. This should be a sub menu of setup or options and not part of the main screen. \r\nWe will have tabs across the top, similar to the demo program that will have options like kennel settings, setup, retail, reservations etc. with drop downs that apply. \r\n\r\nThe feature as it is presented is a set up feature that you would use to add different types, colors of pets to the database for tracking or assigning. This does not need to be on the main screen and is a setup option. ', NULL, NULL, 5, 9, 4, 7, 9, 3, '2014-05-03 14:53:42', '2014-05-16 06:10:34', '2014-05-03', 100, NULL, NULL, 2462, 1, 2, 0),
(2463, 2, 2, 'Implement validators on API request', 'Implement validators with backend validation on ajax.', NULL, NULL, 4, 6, 4, 6, 1, 1, '2014-05-04 11:28:42', '2014-05-05 10:35:54', '2014-05-04', 100, NULL, NULL, 2463, 1, 2, 0),
(2465, 2, 1, 'Added basic informations', 'Added basic informations on options.\r\nsee attachement', NULL, NULL, 5, 9, 4, 7, 1, 2, '2014-05-05 21:33:25', '2014-05-16 06:10:43', '2014-05-05', 100, NULL, NULL, 2465, 1, 2, 0),
(2466, 2, 1, 'Client pet informations rearange', 'This may seem like a small thing but we need to re arrange and re theme the client and pet info page. The way it is now.. http://54.72.97.34/km-api/clients does not work it is not user friendly and is too crowded. Make changes to bring it inline with the attached image.', NULL, NULL, 4, 9, 4, 10, 1, 9, '2014-05-05 21:34:45', '2014-06-14 10:00:22', '2014-05-05', 100, NULL, NULL, 2466, 1, 2, 0),
(2467, 2, 2, 'Create database tables for customers', 'Create db tables required for customers info :\r\n\r\n- create table customer \r\n- create table customer_personal\r\n- create table customer_address\r\n- create table customer_identity', NULL, NULL, 4, 6, 4, 6, 14, 3, '2014-05-06 09:24:41', '2014-05-06 12:48:34', '2014-05-06', 100, NULL, NULL, 2467, 1, 2, 0),
(2468, 2, 2, 'Implement multilanguage feature', '', NULL, NULL, 4, 6, 4, 6, 1, 2, '2014-05-06 12:05:35', '2014-05-16 17:18:24', '2014-05-06', 100, NULL, NULL, 2468, 1, 2, 0),
(2469, 2, 5, 'Specifications - 06.05.2014', '', NULL, NULL, 1, NULL, 4, NULL, 1, 2, '2014-05-06 14:46:12', '2014-05-23 16:26:41', '2014-05-06', 0, NULL, NULL, 2469, 1, 2, 0),
(2471, 2, 2, 'Create Customer Pop-up', 'In the Customer window there are four tabbed forms: ‘General’, ‘Personal’, ‘Address ID’ and\r\n‘Identity ID’. The ‘General’ tab is selected by default.', NULL, NULL, 4, 6, 4, 6, 14, 1, '2014-05-08 08:21:27', '2014-05-09 16:44:40', '2014-05-08', 100, NULL, NULL, 2471, 1, 2, 0),
(2472, 2, 2, 'Populate tables with data', 'For customer we need additional db tables to be populated.\r\n\r\nEX : address_type , country photo_type.\r\n\r\nThey will be used for the select boxes from customer form.', NULL, NULL, 4, 6, 4, 6, 14, 1, '2014-05-08 08:24:02', '2014-05-08 15:33:30', '2014-05-08', 100, NULL, NULL, 2472, 1, 2, 0),
(2474, 1, 4, 'Modifications 09.05.2014', '', NULL, NULL, 4, 6, 4, NULL, 1, 1, '2014-05-09 07:45:50', '2014-05-09 13:56:53', '2014-05-09', 100, NULL, NULL, 2474, 1, 2, 0),
(2475, 2, 2, 'Create Validation for Customer form', 'If you try to complete an order, or close the customer details dialogue before the mandatory fields\r\nhave been filled you will see the error message in Figure 13-8 indicating that some customer\r\ninformation is missing.', NULL, NULL, 4, 6, 4, 6, 14, 1, '2014-05-09 16:46:16', '2014-05-10 16:29:37', '2014-05-09', 100, NULL, NULL, 2475, 1, 2, 0),
(2476, 2, 2, 'CRUD for customers', 'view selected customer and update data', NULL, NULL, 4, 6, 4, 6, 14, 3, '2014-05-10 16:31:12', '2014-05-15 10:30:47', '2014-05-10', 0, NULL, NULL, 2476, 1, 2, 0),
(2477, 2, 2, 'Find Customer functionality', 'Create popup with filters.\r\nIf you leave all the fields blank the search will scan the entire customer database.', NULL, NULL, 4, 6, 4, 6, 14, 3, '2014-05-10 16:34:27', '2014-05-15 10:32:09', '2014-05-10', 0, NULL, NULL, 2477, 1, 2, 0),
(2478, 2, 2, 'Create customer/distribution information panel', 'The customer/distribution information panel on the lower left hand portion of the\r\nmain screen displays some of the key information.', NULL, NULL, 4, 6, 4, 6, 14, 1, '2014-05-11 09:31:22', '2014-05-13 07:16:51', '2014-05-11', 100, NULL, NULL, 2478, 1, 2, 0),
(2480, 2, 1, 'Pet atrributes, fine touches', 'Features:\r\n- performance API search\r\n- performance update on CRUD (create, read, update, delete)\r\n- ordering by ascendent, descendent', NULL, NULL, 5, 9, 4, 8, 1, 2, '2014-05-11 11:32:32', '2014-06-02 23:46:03', '2014-05-11', 100, NULL, NULL, 2480, 1, 2, 1),
(2481, 2, 5, 'Proiecte de adaugat', 'Proiect 1\r\n-------------------\r\nDenumire obiectiv: Reabilitarea si Extinderea Statiei de Epurare existente in Alba Iulia. \r\nSC DEKA DECOR SRL a luat parte la lucrari ca subantreprenor, realizand Decantoarele Secundare, Camera Gratarelor, Statia de Suflante, Sala Masinilor si Zona de Depozitare Namol.\r\nPentru cofrarea peretilor s-a utilizat sistemul de panouri metalice DOKA FRAMI, realizandu-se etanseizarea rosturilor de turnare prin folosirea unei benzi de PVC SIKA V20. \r\nPentru cofrarea planseelor la Sala Masinilor si Statia de Suflante s-au folosit esafodaje DOKA STAXO 40.', NULL, NULL, 5, 1, 4, NULL, 1, 2, '2014-05-11 18:46:39', '2014-05-23 16:26:25', '2014-05-11', 0, NULL, NULL, 2481, 1, 2, 0),
(2482, 2, 1, 'Feature Request for Pet Image', 'If you examine the tutorial or the example software provided. There is a feature for membership cards which is very important as these cards are printed, laminated and kept with the pet while in the facility to track them. The feature request is again to eliminate a step and make things easier for the employee user. We would like to know if it is possible to (from inside the client/pet screen) to have the ability to take a picture via integration with a standard webcam. This way instead of having to take a picture with a mobile device, or a web cam and save to a folder and then move to the client/pet image holder the user can select take picture directly from the software..\r\n\r\nSee example image  ', NULL, NULL, 5, 9, 4, 9, 9, 6, '2014-05-14 21:16:57', '2014-06-28 16:19:22', '2014-05-14', 40, NULL, NULL, 2482, 1, 2, 0),
(2483, 2, 1, 'Feature request for Grooming Reservations', 'As you examine the example software you will notice that the grooming schedule is time based meaning a certain amount of hours can be assigned to a dog so as that when it makes an appointment that amount of time is taken from the schedule. Check the grooming reservations, availability and scheduling screens, it should show a daily calendar with time on the left and overlap for the dog to be groomed. Time can be assigned by service or by dog. That is good I want to duplicate that…\r\n\r\nNow for the addition.. I would like to be able to assign a point value to each breed or an individual dog as well. Lets say a Poodle is 4 points and a Beagle is 2 points. I would like to be able to set a points available in the grooming settings. So for example if I have two groomers I have 24 points available, if I have 3 Groomers I can add more points to the available total. Now when a dog makes a grooming reservation the amount of available points is decreased by the number assigned to the breed or dog.\r\nSo if I have 10 points available I could make reservations for 2 Poodles and a Beagle, or I could make reservations for 5 Beagles but the system would warn the user if they are exceeding their point total. \r\n\r\nThis will help greatly when scheduling dogs and checking for available space to groom a dog. The problem now is that employees know that we groom a certain number of dogs per day but don’t consider that some dogs/breeds are more difficult to groom than others. The employee will look at the schedule and see that the number of dogs for a certain day is below the average and will make another reservation, but not consider that the lower number may mean that the dogs/breeds that day are more difficult and take more time. This results in over scheduling or slow turnaround times for customers.\r\n\r\nIf for example we normally groom 10 dogs in one day, but the schedule shows 8 reservations the employee will not consider that 3 of those reservations may be poodles which are difficult and take more time than a normal groom. If it were point based the employee would see that there are no points left available for that day and move on.. Or if there were two points available the employee would know that they could only schedule a Beagle or a dog/breed with a value of two points.\r\n', NULL, NULL, 1, NULL, 4, NULL, 9, 1, '2014-05-14 21:43:55', '2014-06-10 16:10:02', '2014-05-14', 0, NULL, NULL, 2483, 1, 2, 0),
(2484, 1, 1, 'Main Screen (View Pet Icon)', 'Remove the View Pet Icon.\r\n\r\n1) Lets make the pet open on the right the default. If the user wishes to make edits to the pet they can go to the client/pet screen.\r\n\r\n ', NULL, NULL, 5, 9, 4, 8, 9, 2, '2014-05-15 19:44:00', '2014-06-02 23:45:58', '2014-05-15', 0, NULL, NULL, 2484, 1, 2, 0),
(2485, 1, 1, 'Main Screen (Long Name Spacing)', 'Lets keep formatting in mind as we move along see attached image. On long breed names it is pushing it all together.. Removing the View Pet Icon may help with this, but perhaps also shrinking the "Pet Info" image holder on the right by 10% or so..', NULL, NULL, 5, 9, 4, 8, 9, 2, '2014-05-15 19:53:18', '2014-06-02 23:45:53', '2014-05-15', 100, NULL, NULL, 2485, 1, 2, 0),
(2486, 1, 1, 'Main Screen (Pet Birth)', 'The software is allowing for erroneous date entry. It should only allow for 12 months, and X days (depending upon the month) and the year. ie.. there cannot be a 2/31/14 as February only  has 28 days at most except on a leap year.\r\n see attached.. \r\n', NULL, NULL, 5, 9, 4, 8, 9, 2, '2014-05-15 19:57:58', '2014-06-02 23:45:48', '2014-05-15', 100, NULL, NULL, 2486, 1, 2, 0),
(2487, 1, 1, 'Client/Pet (Select Breed)', 'If you select "Add" from the main screen and go to the client/pet screen..\r\n\r\nIt will not allow you to select a breed, the drop down field is blank...\r\n\r\n\r\nSee attached', NULL, NULL, 5, 9, 4, 8, 9, 2, '2014-05-15 20:02:05', '2014-06-02 23:45:42', '2014-05-15', 0, NULL, NULL, 2487, 1, 2, 0),
(2488, 1, 1, 'Client/Pet (Title)', 'Let''s remove the title field (Dr. Mr. Mrs. Miss.) this is a bit dated and something that we never use.. It only takes up space...\r\n\r\nSee attached', NULL, NULL, 5, 9, 4, 8, 9, 2, '2014-05-15 20:06:59', '2014-06-02 23:45:34', '2014-05-15', 100, NULL, NULL, 2488, 1, 2, 0),
(2489, 2, 1, 'For Beta Versions (Future) (quick log in)', '1)Employee log in prompt.. Each employee should have to log in with a four digit pin to utilize the program.. This will allow the business to track what employee processed a transaction or made a reservation etc.\r\n\r\n2) Time Out.. The Administrator should be able to choose a time out time. That way if the software sits for more than x time, before it can be utilized the employee must enter their pin. This should be user friendly and occur in the form of a popup in the center of the screen that prompts a pin. \r\n\r\n3) The pin should be unique to each employee so an employee does not need to select their name and then enter a pin. They can just enter the pin and the software will log in the appropriate employee. \r\n\r\n4)The only issue here would be security, so I am curious if there is a way to tie "quick log in" -Pin Entry only to a specific IP address say the store computer. But if on a different device or at a different IP they would be prompted to enter their user name and password (5 Letters, One Symbol, 2 Numbers)', NULL, NULL, 1, NULL, 4, NULL, 9, 0, '2014-05-15 20:25:51', '2014-05-15 20:25:51', '2014-05-15', 0, NULL, NULL, 2489, 1, 2, 0),
(2490, 2, 1, 'Reservations (creating/editing)', 'First, edit reservations should be available from within the client pet screen (as it is with the demo software k9 bytes.. see tutorial or skype and I can show you) Basically with k9bytes you select (highlight) a pet from the main screen, then select reservations and it ties the selected pet to the reservation you wish to make (this is good).. Additionally if a pet has a reservation you can go to the client/pet screen, select the reservation, a calendar will appear and you can make edits (this is good)-- Both features should be included.\r\n\r\n\r\nHighlighted Pet on main screen should be tied to reservation when reservations icon is pressed.\r\nReservations should able to be edited changed from within the Client/Pet Screen.\r\n', NULL, NULL, 4, NULL, 4, 10, 9, 2, '2014-05-15 20:34:36', '2014-06-11 13:41:14', '2014-05-15', 100, NULL, NULL, 2490, 1, 2, 0),
(2491, 2, 1, 'Reservation Workflow', 'Currently the workflow for reservations is incorrect, but it has prompted an idea.\r\n\r\nAt current. From the Main Screen.. Reservations-->Select Pet->Make Reservation (Boarding, Grooming, Daycare, Training)..\r\n\r\nWhat we would like is (if NO pet is highlighted on main screen)\r\n\r\nReservations-->Calender (Appointment listed)-->Select Date-->Select Pet-->Make Reservation\r\n\r\nAlso a drill down like the attached would be great.. \r\n\r\nFor Boarding, Again a Calendar showing existing reservations total, drill down to see specific dogs, drill down to see notes about specific dogs\r\n\r\nFor Daycare, Again a Calendar showing reservation total, drill down to see specific dogs..\r\n\r\nFor Training, Again a Calender showing reservation total, drill down to see class type and specific dogs, drill down to see notes...\r\n\r\nFrom the first drill down which lists pets in all instances, should be able to search a pet and make a reservation..\r\n\r\n\r\n\r\n', NULL, NULL, 5, 9, 4, 9, 9, 8, '2014-05-15 21:43:24', '2014-06-28 16:19:15', '2014-05-15', 80, NULL, NULL, 2491, 1, 2, 0),
(2492, 2, 1, 'Charges by pet_size & run types', 'Implement similar charges for reservations,\r\nsee attachement\r\n', NULL, NULL, 5, 9, 4, 8, 1, 2, '2014-05-16 06:14:17', '2014-06-02 23:43:04', '2014-05-16', 0, NULL, NULL, 2492, 1, 2, 0),
(2493, 2, 1, 'Petsizes & runtypes charges', '- Implement the charges runtypes & petsizes\r\n', NULL, NULL, 5, 9, 4, 9, 1, 12, '2014-05-16 15:02:17', '2014-06-28 16:19:07', '2014-05-16', 100, NULL, NULL, 2493, 1, 2, 0),
(2494, 2, 1, 'Barcode feature', 'Feature to keep in mind\r\nhttp://www.petexec.net/barcode.php', NULL, NULL, 1, NULL, 4, NULL, 1, 0, '2014-05-17 15:02:04', '2014-05-17 15:02:04', '2014-05-17', 0, NULL, NULL, 2494, 1, 2, 0),
(2495, 2, 1, 'Catalog feature', 'Catalog feature from this\r\nhttps://play.google.com/store/apps/details?id=net.tapgroom \r\n', NULL, NULL, 1, NULL, 4, NULL, 1, 0, '2014-05-17 15:02:14', '2014-05-17 15:02:14', '2014-05-17', 0, NULL, NULL, 2495, 1, 2, 0),
(2496, 2, 1, 'Responsiveness redesign, server request loading', '- redesigned a bit the whole style to fit better on different resolutions and tablets.\r\n- loading image for the servers requests', NULL, NULL, 5, 9, 4, 8, 1, 2, '2014-05-19 21:08:02', '2014-06-02 23:45:29', '2014-05-19', 100, NULL, NULL, 2496, 1, 2, 0),
(2497, 2, 1, 'Resolution adaptation', 'Fixed current resolution problems, tested on 1280x1024, everything works smooth.\r\nWe are developing on fullHD 1920x1080 monitors, but we have testing ones for this sort of problems. ', NULL, NULL, 5, 9, 4, 9, 1, 3, '2014-06-02 23:25:08', '2014-06-28 16:19:01', '2014-06-02', 100, NULL, NULL, 2497, 1, 2, 0),
(2498, 2, 1, 'Add difficulties status on pets', 'Added status on pet edit.\r\n\r\n - Agressive\r\n - Bully\r\n - Good natured\r\n - Handle with care\r\n - Runner\r\n - Dominant\r\n - Whiner\r\n - Fear biter', NULL, NULL, 5, 9, 4, 9, 1, 4, '2014-06-02 23:29:18', '2014-06-28 16:18:55', '2014-06-02', 100, NULL, NULL, 2498, 1, 2, 0),
(2499, 1, 1, 'Performance improvements', 'This improvements can not be seen, \r\nbut are for better performance of code usage and running.\r\n\r\n - centers (boarding, daycare, grooms, training)\r\n - client / pet edit\r\n - searching for clients, pets\r\n - pet type, pet bred, pet color, pet size, pet status\r\n - reservations for boarding, daycare, grooms, training\r\n - charges', NULL, NULL, 5, 9, 4, 9, 1, 3, '2014-06-02 23:32:20', '2014-06-28 16:18:50', '2014-06-02', 100, NULL, NULL, 2499, 1, 2, 0),
(2500, 2, 1, 'Veterinary', 'Implemented veterinary module, add / edit / delete.\r\nNext we will implement on clients / pets page', NULL, NULL, 4, 9, 4, 10, 1, 2, '2014-06-03 17:04:26', '2014-06-04 12:40:06', '2014-06-03', 100, NULL, NULL, 2500, 1, 2, 0),
(2501, 2, 1, 'Login screen select username', 'Login screen select username to log in, instead of typing it', NULL, NULL, 5, 9, 4, 9, 1, 2, '2014-06-05 12:48:41', '2014-06-28 16:18:45', '2014-06-05', 100, NULL, NULL, 2501, 1, 2, 0),
(2502, 2, 1, 'Posibility to add multiple pets on single client', '- ', NULL, NULL, 4, 1, 4, NULL, 1, 2, '2014-06-05 14:37:08', '2014-06-06 13:47:34', '2014-06-05', 100, NULL, NULL, 2502, 1, 2, 0),
(2503, 2, 1, 'Delete searched text / date from input', '', NULL, NULL, 4, 1, 4, 10, 1, 1, '2014-06-11 16:01:57', '2014-06-11 16:02:41', '2014-06-11', 100, NULL, NULL, 2503, 1, 2, 0),
(2504, 2, 1, 'Crossplatform, crossite fixing and testing', 'Done on\r\nOperating systems:\r\n - Windows 7\r\n - Windows 8\r\n - Linux (Ubuntu)\r\n - MacOS\r\n - iPad\r\n - iPadmini\r\n\r\nBrowsers:\r\n - Google Chrome\r\n - Mozilla Firefox', NULL, NULL, 4, 9, 4, 10, 1, 2, '2014-06-11 16:29:34', '2014-06-12 13:11:00', '2014-06-11', 100, NULL, NULL, 2504, 1, 2, 0),
(2506, 2, 1, 'Boarding schedule services add / edit / delete', '', NULL, NULL, 4, 9, 4, 11, 1, 2, '2014-06-28 16:14:48', '2014-06-28 16:16:48', '2014-06-28', 100, NULL, NULL, 2506, 1, 2, 0),
(2507, 2, 1, 'Schedule services for boarding reservations', '', NULL, NULL, 4, 9, 4, 11, 1, 2, '2014-06-28 16:17:13', '2014-06-28 16:18:20', '2014-06-28', 100, NULL, NULL, 2507, 1, 2, 0),
(2508, 2, 1, 'Medication, diets, types and dosages', 'Enhanced medication, diets and dosages editing, adding and deleting.\r\nOrganised according tot top menu\r\n', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:51:10', '2014-06-30 15:51:33', '2014-06-30', 100, NULL, NULL, 2508, 1, 2, 0),
(2509, 2, 1, 'Medications adding , editing ,  delete and searching', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:52:01', '2014-06-30 15:53:31', '2014-06-30', 100, NULL, NULL, 2509, 1, 2, 0),
(2510, 2, 1, 'Diets, diets, types and dosages', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:54:56', '2014-06-30 15:55:26', '2014-06-30', 100, NULL, NULL, 2510, 1, 2, 0),
(2511, 2, 1, 'Medication, diets types and dosages', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:56:02', '2014-06-30 15:56:50', '2014-06-30', 100, NULL, NULL, 2511, 1, 2, 0),
(2512, 2, 1, 'Boarding checkin medications', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:57:31', '2014-06-30 15:58:28', '2014-06-30', 100, NULL, NULL, 2512, 1, 2, 0),
(2513, 2, 1, 'Boarding reservation diets', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 15:58:49', '2014-06-30 15:59:27', '2014-06-30', 100, NULL, NULL, 2513, 1, 2, 0),
(2514, 2, 1, 'Boarding luggae description', '', NULL, NULL, 4, 9, 4, 11, 1, 1, '2014-06-30 16:00:37', '2014-06-30 16:00:59', '2014-06-30', 100, NULL, NULL, 2514, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `issue_categories`
--

CREATE TABLE IF NOT EXISTS `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `issue_relations`
--

CREATE TABLE IF NOT EXISTS `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `issue_statuses`
--

CREATE TABLE IF NOT EXISTS `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `issue_statuses`
--

INSERT INTO `issue_statuses` (`id`, `name`, `is_closed`, `is_default`, `position`, `default_done_ratio`) VALUES
(1, 'New', 0, 1, 1, NULL),
(2, 'In Progress', 0, 0, 2, NULL),
(3, 'Resolved', 0, 0, 3, NULL),
(4, 'Feedback', 0, 0, 4, NULL),
(5, 'Closed', 1, 0, 5, NULL),
(6, 'Rejected', 1, 0, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`) VALUES
(1, 1, 'Issue', 1, 'done', '2014-03-13 12:18:45'),
(2, 1, 'Issue', 1, '', '2014-03-13 12:21:06'),
(3, 1, 'Issue', 1, '', '2014-03-13 12:22:08'),
(4, 2, 'Issue', 1, 'done', '2014-03-13 12:23:25'),
(5, 3, 'Issue', 1, 'done', '2014-03-13 12:24:26'),
(6, 4, 'Issue', 1, 'done', '2014-03-13 12:25:54'),
(7, 5, 'Issue', 1, 'done', '2014-03-13 12:26:41'),
(8, 6, 'Issue', 1, 'done', '2014-03-13 12:36:47'),
(9, 7, 'Issue', 1, 'done', '2014-03-13 12:37:59'),
(10, 8, 'Issue', 1, 'done', '2014-03-13 12:39:05'),
(11, 6, 'Issue', 1, '', '2014-03-13 12:40:34'),
(12, 6, 'Issue', 1, '', '2014-03-13 12:40:41'),
(13, 7, 'Issue', 1, '', '2014-03-13 12:40:56'),
(14, 8, 'Issue', 1, '', '2014-03-13 12:41:07'),
(15, 9, 'Issue', 1, 'done', '2014-03-13 13:56:08'),
(16, 10, 'Issue', 1, 'done', '2014-03-13 13:56:34'),
(17, 11, 'Issue', 1, 'done', '2014-03-13 13:58:51'),
(18, 12, 'Issue', 1, 'done', '2014-03-13 13:59:23'),
(19, 13, 'Issue', 1, 'done', '2014-03-13 14:00:08'),
(20, 14, 'Issue', 1, 'done', '2014-03-13 14:01:49'),
(21, 15, 'Issue', 1, 'done', '2014-03-13 14:03:02'),
(22, 15, 'Issue', 1, '', '2014-03-13 14:05:10'),
(23, 14, 'Issue', 1, '', '2014-03-13 14:05:23'),
(24, 13, 'Issue', 1, '', '2014-03-13 14:05:30'),
(25, 12, 'Issue', 1, '', '2014-03-13 14:05:39'),
(26, 11, 'Issue', 1, '', '2014-03-13 14:05:48'),
(27, 10, 'Issue', 1, '', '2014-03-13 14:05:54'),
(29, 2404, 'Issue', 3, 'Design mysql database tables and structure for clients, pets and reservations.\r\nCheck attached db models.\r\n', '2014-03-13 16:12:33'),
(30, 2404, 'Issue', 1, '', '2014-03-13 16:16:59'),
(31, 2403, 'Issue', 3, '', '2014-03-13 16:18:20'),
(32, 2402, 'Issue', 3, '', '2014-03-13 16:18:30'),
(33, 2403, 'Issue', 3, '', '2014-03-13 16:21:15'),
(34, 2406, 'Issue', 3, '', '2014-03-13 16:21:54'),
(35, 2406, 'Issue', 3, '', '2014-03-13 16:22:17'),
(36, 2404, 'Issue', 3, '', '2014-03-13 16:23:44'),
(37, 2403, 'Issue', 1, 'Done, made full structure of zend framework 1 with mysql database \r\nand integrated it in linux ubuntu server', '2014-03-14 16:04:07'),
(38, 2404, 'Issue', 1, 'Done, made structures, see attached document', '2014-03-14 16:05:51'),
(39, 2403, 'Issue', 1, '', '2014-03-14 16:06:15'),
(40, 2405, 'Issue', 1, 'Finished the layout, I have made it responsive, it adjust according to resolution, \r\nworks on mobile / tablet (iOS, Android), desktop', '2014-03-14 16:07:35'),
(41, 2405, 'Issue', 1, '', '2014-03-14 16:07:59'),
(42, 2406, 'Issue', 1, 'done, check http://demo.kmtel.ro/km-api/login', '2014-03-14 16:08:27'),
(43, 2407, 'Issue', 1, 'Done, check http://demo.kmtel.ro/km-api/clients', '2014-03-14 16:09:01'),
(44, 2408, 'Issue', 1, '', '2014-03-14 16:09:25'),
(45, 2409, 'Issue', 1, 'In case this is happening go directly to the URL, problems occur of the DNS servers.\r\n\r\nhere is the ip:\r\nhttp://54.72.97.34/km-api', '2014-03-17 16:09:03'),
(46, 2416, 'Issue', 1, 'Designed according to the archive the user interface, currently it dosen''t have functionabilities.\r\nOn development server: http://54.72.97.34/km-api', '2014-03-17 16:18:19'),
(47, 2415, 'Issue', 1, 'Voicu\r\n\r\npe langa butoane:\r\n\r\nsearch dupa nume pet si cu posibiliatea cautarii si dupa nume sau prenume stapan\r\n\r\nafisare lista owneri de pets care au in nume stringul cautat cu datele: Nume, prenume, area+phone no., nume pet\r\n\r\nafisare pet info pentru owner selectat\r\n\r\npoza\r\n\r\ninfo despre compertament (verde daca ok, rosu daca nu)\r\n\r\ninfo despre vaccinare expirata sau alte probleme (rosu)\r\n\r\ndata nastere + calcul in cate saptamani si zile are loc aniversarea\r\n\r\nrasa\r\n\r\nsex\r\n\r\ndimensiune\r\n\r\nnumar de programari (existente sau trecute?)\r\n\r\npe tipuri: Boarding/daycare/groom', '2014-03-17 19:32:25'),
(51, 2416, 'Issue', 1, 'Added some friendly fonts and a couple of styling,\r\ndid a bit of backend organizing the code.', '2014-03-19 14:32:08'),
(52, 2420, 'Issue', 1, 'Did the frontend panel and functionability, it is left for linking with the database and for the buyback\r\nuploaded it on our server:\r\n\r\nhttp://urfx.kmtel.ro\r\n\r\nuser: admin (staff)\r\npass: 123456\r\n\r\nuser: client (client)\r\npass: 123456\r\n\r\nuser: kmtel2@kmtel.ro (company)\r\npass: 123456\r\n\r\nAttached screen shot\r\n\r\n\r\n\r\n', '2014-03-23 13:42:08'),
(53, 2420, 'Issue', 1, 'Finished the feature. On dev server http://urfx.kmtel.ro', '2014-03-23 20:53:24'),
(54, 2413, 'Issue', 1, 'Fixed, tested on chrome, tablet and mobile, looks good', '2014-03-24 11:49:21'),
(55, 2413, 'Issue', 1, 'http://kfx.kmtel.ro - dev server', '2014-03-24 11:49:34'),
(56, 2410, 'Issue', 1, 'done', '2014-03-24 12:05:08'),
(57, 2412, 'Issue', 1, 'done', '2014-03-24 12:05:27'),
(58, 2411, 'Issue', 1, 'done, on dev http://kfx.kmtel.ro', '2014-03-24 12:05:46'),
(59, 2423, 'Issue', 1, 'https://www.wetransfer.com/downloads/01bd2fe63d6d3dc36fc4fefd33616fc820140325173424/fa809ae668d4006adf5be656806ddcf320140325173424/b0ea62', '2014-03-25 18:37:33'),
(60, 2422, 'Issue', 1, 'http://www.doka.com/ - forma si structura asemanatoare', '2014-03-25 18:53:58'),
(61, 2422, 'Issue', 1, 'Todorescu Tudor wrote:\r\n> http://www.doka.com/ - forma si structura asemanatoare\r\n\r\nverde o sa fie culoarea', '2014-03-25 18:56:00'),
(62, 2418, 'Issue', 1, 'Designed user interfaces for this, needs to be linked with the database. http://demo.kmtel.ro/km-api/clients', '2014-03-25 20:02:08'),
(63, 2418, 'Issue', 1, 'Implemented functionability for the "pet type" to be linked with the "pet breed", when a pet type is selected it generates the new list with the pet breeds', '2014-03-25 20:03:01'),
(64, 2418, 'Issue', 1, 'Made saving process on pets, next it will be made on clients', '2014-03-25 23:47:44'),
(65, 2423, 'Issue', 1, 'done,\nhttp://www.kmtel.ro/dekadecor', '2014-03-28 12:34:41'),
(66, 2422, 'Issue', 1, 'done,\nhttp://www.kmtel.ro/dekadecor', '2014-03-28 12:35:25'),
(67, 2407, 'Issue', 1, '', '2014-03-30 15:20:01'),
(68, 2408, 'Issue', 1, '', '2014-03-30 15:20:22'),
(69, 2406, 'Issue', 1, '', '2014-03-30 15:21:48'),
(70, 2405, 'Issue', 1, '', '2014-03-30 15:23:03'),
(71, 2404, 'Issue', 1, '', '2014-03-30 15:24:05'),
(72, 2403, 'Issue', 1, '', '2014-03-30 15:24:30'),
(73, 2402, 'Issue', 1, '', '2014-03-30 15:24:39'),
(74, 2422, 'Issue', 1, '* vreau sa schimbam ceva, si anume sa nu mai apara beneficiarul in descriere, ramane doar obiectul\r\n* deka decor sa fie scris in doua cuvinte separate\r\n* ordinea pozelor daca se poate pune dupa data ca sa se poata vedea exect cum a inaintal lucrarea\r\n\r\ndone', '2014-03-30 20:03:12'),
(75, 2418, 'Issue', 1, 'Added the pet option functionability', '2014-03-30 21:14:47'),
(76, 2418, 'Issue', 1, '* client / pet save and modify functionability\r\n* posibility to add / modify picture for pet and client\r\n* view pet on certain client\r\n* improved the design on layout', '2014-03-31 14:25:35'),
(77, 2418, 'Issue', 1, ' * designed layouts and inputs \r\n * added validations to inputs\r\n * add / edit / view / delete clients and pets\r\n * implemented posibility to add / modify picture for pet and client\r\n * zoom in and gallery on client / pet pictures on the main screen\r\n * view the pet for a certain client on the main screen\r\n * implemented for the "pet type" to be linked with the "pet breed",\r\n	when a pet type is selected it generates the new list with the pet breeds\r\n * date picker on pet date of birth\r\n * optimized speed of the application an response time,\r\n   very good if working with low bandwith and tablets\r\n * search for client / pet\r\n * refresh button to refresh the list of clients\r\n * right bottom button to navigate up', '2014-04-01 09:35:23'),
(78, 2418, 'Issue', 9, 'It is some progress.\r\n\r\nWe need to remove the delete client option from the main screen. that should be an admin option and an option that is access restricted. Much as like drupal permissions.\r\n\r\nAdditionally we need to ad a closing red x in the upper corner of the view pets screen. At current the pop up is difficult to close. \r\n\r\nOn to the client and pet information screens. We need to tighten them up and lay them out a bit better at current the input fields are to large and require scrolling to see. If you could use your theme but lay it out as is the example program that would be excellent. \r\n\r\nAlso a scroll bar would be excellent on the main screen and a listing of at least 10 clients. Ajax calls should be used if possible to limit the search results as typed. \r\n\r\nThe client email address is not needed on the main page and should only be inside the client pet window.\r\n\r\nOn the front page should be Client name, pet name, phone. \r\n\r\nI also do not need the client image on the main screen. \r\n\r\nIn this business we know the pets more than we know the people so the pet image on the main screen is much more useful. So I would say remove the client thumbnail from the main screen and leave that in the client pet window.\r\n\r\nAlso on the version I viewed I cannot remove the view pet information tab to see what is under it.\r\n\r\nThe search feature should include, owner last name, owner first name, pet name, pet breed.. (we will expand this later to include phone and membership number) but for now those for are primary. \r\n\r\nAgain the "refresh" for search is tiresome. If you we could use ajax to querry the db and filter as typed that would probably be much better. ', '2014-04-01 22:03:43'),
(79, 2420, 'Issue', 1, 'Luke: \r\nIn addition, following last week’s reminders, the multiple currency orders tab is still not functioning properly.\r\n I’ve just tried to place an order and it goes to a blank page.\r\n\r\nTudor: done', '2014-04-02 08:23:44'),
(81, 2418, 'Issue', 1, 'I finished all of the above modifications, except for this 2 which are under progress\r\n\r\n" Also a scroll bar would be excellent on the main screen and a listing of at least 10 clients. Ajax calls should be used if possible to limit the search results as typed.\r\n\r\n* The search feature should include, owner last name, owner first name, pet name, pet breed.. (we will expand this later to include phone and membership number) but for now those for are primary. "\r\n\r\nAlso added 2 new features,\r\n\r\n * validations inputs on client and pet\r\n * automatically resizable images for better performance.\r\n\r\nDemo Website:\r\nhttp://54.72.97.34/km-api\r\nuser: admin\r\npass: 123456\r\n - this is with the "delete option"\r\n\r\nuser: client\r\npass: 123456\r\n - without "delete option"\r\n\r\nRegarding task:\r\nhttp://54.72.97.34/issues/2418\r\nTommorow we will finish the other features.\r\nWe will keep you up-to-date.\r\n', '2014-04-02 17:43:14'),
(82, 2418, 'Issue', 9, 'Search should be dynamic.. something I believe similar to http://blog.comperiosearch.com/blog/2012/06/27/make-an-instant-search-application-using-json-ajax-and-jquery/\r\n\r\nI have seen it done with another developer that I had hired for this project that ceased communication a year ago. \r\n\r\nExample..  Pets- Annie, Alex, Barnie, Bill, Casey, Candy, Cookie..\r\n\r\nInitially main screen shows results of last search or alphabetical listing of clients. As client searches pets. and types "A", then all A results should show, if client types (A,N) then only Annie should show. \r\n\r\nAlso DELETE CLIENT IS STILL ON MAIN SCREEN, IT NEEDS TO BE REMOVED and only used in a permission based environment for admins and only then with a warning letting the "admin" know that it will delete that clients entire history, to include financial information etc.\r\n\r\nAlso I LIKE HOW YOU HAVE THE PET IMAGES LARGE ON THE SIDE WITH THE BASIC PET INFO. That is excellent, let us keep it and do not change anything about it. Let us add a Small Thumb in the table of the pet image as well.\r\n\r\nThis saves time as the user does not need to click to see the image of the pet and could complete their search or find the correct pet from the thumb alone.  \r\n\r\nAlso our phone layout is (123)456-7899', '2014-04-02 21:08:30'),
(83, 2421, 'Issue', 1, '', '2014-04-03 09:25:53'),
(84, 2420, 'Issue', 1, '', '2014-04-03 09:26:11'),
(85, 2414, 'Issue', 1, '', '2014-04-03 09:26:20'),
(86, 2413, 'Issue', 1, '', '2014-04-03 09:26:57'),
(87, 2412, 'Issue', 1, '', '2014-04-03 09:27:01'),
(88, 2411, 'Issue', 1, '', '2014-04-03 09:27:08'),
(89, 2410, 'Issue', 1, '', '2014-04-03 09:27:12'),
(90, 2423, 'Issue', 1, '', '2014-04-03 09:27:55'),
(91, 2422, 'Issue', 1, '', '2014-04-03 09:28:00'),
(92, 2428, 'Issue', 1, 'done', '2014-04-03 16:18:18'),
(93, 2427, 'Issue', 1, '#1 - done\r\n\r\n#2, #3 details:\r\n\r\n0 1 * * * php /var/www/urfx/cronjob/get-latest-rates.php\r\nif the path is /var/www/urfx\r\nbut if you give me credentials I can configure it\r\nbut I see you''re on mobile right now, when you have time :)\r\nand this comment as well "· When users place orders for delivery for another day, confirmation we receive shows today’s date, not the date they entered."\r\nit has 2 dates, the date the order has been created, and the date in which the delivery should be made, both are written in the email and view-order page.\r\nplease ask them if they need to receive orders with "date created" as the "date of delivery", because we need to make a cronjob for that as well', '2014-04-03 17:15:34'),
(94, 2424, 'Issue', 1, 'discussions regarding this task are here - http://pm.kmtel.ro/issues/2418', '2014-04-03 17:34:59'),
(95, 2416, 'Issue', 1, '', '2014-04-03 17:35:48'),
(96, 2415, 'Issue', 1, '', '2014-04-03 17:36:01'),
(97, 2409, 'Issue', 1, 'fixed', '2014-04-03 17:36:14'),
(98, 2418, 'Issue', 9, 'Also I forgot that Vaccination records should be on the client/pet screen, when they expire..', '2014-04-03 17:39:48'),
(99, 2429, 'Issue', 1, 'done\r\nhttp://54.72.97.34/anvelope-turbo', '2014-04-04 15:38:04'),
(100, 2431, 'Issue', 1, '', '2014-04-06 19:19:28'),
(101, 2430, 'Issue', 1, '', '2014-04-06 19:20:17'),
(102, 2425, 'Issue', 1, '', '2014-04-06 19:21:03'),
(103, 2417, 'Issue', 1, '', '2014-04-06 19:21:23'),
(104, 2418, 'Issue', 1, '', '2014-04-07 01:02:58'),
(105, 2432, 'Issue', 1, 'Did the above points;\r\n\r\n\r\n- the information box about the viewing of pet is set now to be showned only once to an user.\r\n- the scroll bar on clients works with ajax loader now\r\n- the search feature should includes, owner last name, owner first name, pet name, telephone\r\n\r\nhttp://54.72.97.34/km-api/clients\r\n', '2014-04-07 01:13:34'),
(106, 2432, 'Issue', 1, 'Also the delete button appears only for clients. Feel free to test usign different usernames:\r\n\r\nuser: admin (with delete option)\r\npass: 123456\r\n\r\nuser: client (without delete option)\r\npass: 123456', '2014-04-07 01:16:39'),
(107, 2432, 'Issue', 9, '? Feedback is unavailable as points were not completed.\r\n\r\n1) Search should be dynamic.. something I believe similar to http://blog.comperiosearch.com/blog/2012/06/27/make-an-instant-search-application-using-json-ajax-and-jquery/\r\n\r\nI have seen it done with another developer that I had hired for this project that ceased communication    a   year ago.\r\n\r\nExample.. Pets- Annie, Alex, Barnie, Bill, Casey, Candy, Cookie..\r\n\r\nInitially main screen shows results of last search or alphabetical listing of clients. As client searches pets. and types "A", then all A results should show, if client types (A,N) then only Annie should show.\r\n\r\n\r\n****Also I LIKE HOW YOU HAVE THE PET IMAGES LARGE ON THE SIDE WITH THE BASIC PET INFO. That is excellent, let us keep it and do not change anything about it. Let us add a Small Thumb in the table of the pet image as well.\r\n\r\nThis saves time as the user does not need to click to see the image of the pet and could complete their search or find the correct pet from the thumb alone.\r\n\r\n****Also our phone layout is (123)456-7899\r\n\r\n****Also I forgot that Vaccination records should be on the client/pet screen, when they expire..\r\n\r\n**** Search by breed should be an option\r\n\r\nI do not see the scroll bar in either application, \r\n\r\nThe search is not dynamic, the user must still select "search", I am trying to move away from that and have the program query the database as letters are entered in the search box. \r\n\r\nSomething like this http://ninetofive.me/data/tutorials/live-search/\r\n\r\nWhere the table is updated as the user types.', '2014-04-07 11:32:07'),
(108, 2427, 'Issue', 1, 'CLIENT:\r\n\r\nI have placed a dummy order earlier.  The issue of correct date of delivery still remains.  When I place an order, system lets me select the date of delivery but when Donna receives the order in unprocessed orders list, the printout doesn’t show the date I selected.  Date of delivery always comes up same as date of order.  See below screen shot.  I selected date of delivery as 10th April, but this is how it came through.\r\n\r\n\r\nMultiple currency order function is working fine, with exception of a small glitch when you type the amount of currency required, it sometimes  changes the amount.  For example I ordered ILS 150, system changes it to ILS 149.9988.   We also prefer if you could place the multiple orders tab under cash order tab.  \r\n\r\n \r\n\r\n', '2014-04-08 08:38:00'),
(109, 2427, 'Issue', 1, 'done', '2014-04-08 12:45:23'),
(110, 2434, 'Issue', 1, 'remaining pet type, breed and size\neg: http://54.72.97.34/km-api/pets', '2014-04-08 23:55:27'),
(111, 2425, 'Issue', 1, 'improved a little bit the client-pet UX (user experience)', '2014-04-08 23:56:26'),
(112, 2434, 'Issue', 1, 'done', '2014-04-10 16:34:57'),
(113, 2434, 'Issue', 1, '* added delete feature for admin\r\n* search feature on each type\r\n* improved single-app-page performance', '2014-04-10 16:37:58'),
(114, 2432, 'Issue', 1, 'done', '2014-04-10 16:42:23'),
(115, 2435, 'Issue', 1, 'done\r\n', '2014-04-10 16:43:44'),
(116, 2436, 'Issue', 1, '* Done', '2014-04-14 13:13:37'),
(117, 2437, 'Issue', 1, 'done', '2014-04-15 14:31:31'),
(118, 2437, 'Issue', 1, '', '2014-04-15 14:36:55'),
(119, 2441, 'Issue', 1, '', '2014-04-15 17:02:15'),
(120, 2442, 'Issue', 1, '', '2014-04-16 12:42:48'),
(121, 2447, 'Issue', 1, '', '2014-04-16 15:24:04'),
(122, 2445, 'Issue', 1, '', '2014-04-16 15:24:08'),
(123, 2444, 'Issue', 1, '', '2014-04-16 15:24:19'),
(124, 2443, 'Issue', 1, '', '2014-04-16 15:24:23'),
(125, 2442, 'Issue', 1, '', '2014-04-16 15:24:53'),
(126, 2441, 'Issue', 1, '', '2014-04-16 15:25:00'),
(127, 2440, 'Issue', 1, '', '2014-04-16 15:25:09'),
(128, 2439, 'Issue', 1, '', '2014-04-16 15:26:15'),
(129, 2439, 'Issue', 1, 'done', '2014-04-16 15:30:08'),
(130, 2440, 'Issue', 1, 'done\r\n', '2014-04-16 15:30:22'),
(131, 2441, 'Issue', 1, '', '2014-04-16 15:30:38'),
(132, 2442, 'Issue', 1, 'done', '2014-04-16 15:30:59'),
(133, 2443, 'Issue', 1, 'done', '2014-04-16 15:31:10'),
(134, 2444, 'Issue', 1, '', '2014-04-16 15:31:26'),
(135, 2445, 'Issue', 1, '', '2014-04-16 15:31:37'),
(136, 2447, 'Issue', 1, 'done', '2014-04-16 15:31:45'),
(137, 2446, 'Issue', 1, 'done', '2014-04-22 10:25:01'),
(138, 2432, 'Issue', 1, '', '2014-04-23 10:25:59'),
(139, 2434, 'Issue', 1, '', '2014-04-23 10:26:12'),
(140, 2435, 'Issue', 1, '', '2014-04-23 10:26:24'),
(141, 2436, 'Issue', 1, '', '2014-04-23 10:26:31'),
(142, 2437, 'Issue', 1, '', '2014-04-23 10:26:43'),
(143, 2430, 'Issue', 1, '', '2014-04-23 10:27:14'),
(144, 2431, 'Issue', 1, '', '2014-04-23 10:27:25'),
(145, 2448, 'Issue', 1, 'The confusing part I managed to fix by putting them in order.\r\n- Buy / Sell selection\r\n- Currency selection\r\n- Amount to buy / sell\r\n- UK Total to pay / receive\r\n\r\n\r\nWe have 3 points that needs clarification.\r\n\r\n- the email to be send after notifications, what  it should contain ? how it should look, and from what server should be send (gmail address for example)\r\n\r\n- "bank transfer" on checkout page\r\n"You are not able to select Bank Transfer Option , which should bring up our bank details etc. No option for collection.", here I don''t understand\r\n\r\n- the buyback page, I put the text from the document. On order page you can both buy or sell currency. It has role for both buying and selling and on two way calculation. How much pounds to receive for foreign currency, or how much foreign currency to receive for certain amount of pounds\r\n\r\n\r\n', '2014-04-23 13:07:48'),
(146, 2449, 'Issue', 1, 'done', '2014-04-23 15:31:44'),
(147, 2430, 'Issue', 1, 'Richard: It is not my software but I know the db password is k9bytesprioritymail\nOnce you open the db you can get the passwords from the table.\nAlso I sent you a complete db, with customers, dogs etc', '2014-04-25 07:40:53'),
(148, 2450, 'Issue', 1, 'Implemented the followings:\n\n - pet view to search for pet reservations\n - search for pet\n - edit reservations on pet from clients page\n - add / edit / delete with datepicker boarding\n\n', '2014-04-25 17:58:40'),
(149, 2446, 'Issue', 1, '', '2014-04-29 07:43:03'),
(150, 2452, 'Issue', 1, 'Did all this:\r\n\r\n- Added new logo on user interface and email\r\n- Added all the approvers (for companies) list on admin / approvers\r\n- Set option for login which includes (client, staff, center, company, approver)\r\n\r\n· Two approvers set up per company listed above\r\n· In admin site, we would like to see the list of approvers and ability to make amendments if necessary\r\n· Approver receives an email confirmation of a pending order after an order is created (this seems to be working most of the time but it didn’t work on one of my test orders I created)\r\n· Client profiles should have a new tab for ORDERS TO APPROVE. This was the case with FX4U.\r\n· An email confirmation for each approved order\r\n\r\n', '2014-04-30 11:19:14'),
(151, 2447, 'Issue', 1, '', '2014-04-30 11:29:46'),
(152, 2444, 'Issue', 1, '', '2014-04-30 11:30:13'),
(153, 2443, 'Issue', 1, '', '2014-04-30 11:30:18'),
(154, 2442, 'Issue', 1, '', '2014-04-30 11:30:25'),
(155, 2441, 'Issue', 1, '', '2014-04-30 11:31:04'),
(156, 2440, 'Issue', 1, '', '2014-04-30 11:31:10'),
(157, 2439, 'Issue', 1, '', '2014-04-30 11:31:18'),
(159, 2456, 'Issue', 1, 'done\r\n', '2014-04-30 16:44:21'),
(160, 2450, 'Issue', 1, 'done', '2014-04-30 16:45:35'),
(161, 2425, 'Issue', 9, 'This may seem like a small thing but we need to re arrange and re theme the client and pet info page. The way it is now.. http://54.72.97.34/km-api/clients does not work it is not user friendly and is too crowded. Make changes to bring it inline with the attached image. ', '2014-05-03 14:08:11'),
(162, 2455, 'Issue', 1, '', '2014-05-05 09:00:05'),
(163, 2452, 'Issue', 1, '', '2014-05-05 09:00:25'),
(164, 2463, 'Issue', 1, 'done, valiators on the API part of the server', '2014-05-05 10:35:54'),
(165, 2458, 'Issue', 1, 'done', '2014-05-05 10:36:15'),
(166, 2458, 'Issue', 1, '', '2014-05-05 10:36:28'),
(167, 2451, 'Issue', 1, 'done, check \r\n\r\nhttp://54.72.97.34/master/api?env=at&table=manufacturers_brands&method=map_all', '2014-05-05 10:53:25'),
(168, 2462, 'Issue', 1, '', '2014-05-05 18:53:06'),
(169, 2433, 'Issue', 1, '- Posibilitate de edit la toate (upgrade_turbosuflante.php) vezi cpanel.png', '2014-05-05 20:36:26'),
(170, 2462, 'Issue', 1, 'Done.\nMoved in options the "pet options", they can be edited from there. much more intuitive.\n_See attachement above._', '2014-05-05 21:30:20'),
(171, 2465, 'Issue', 1, 'done', '2014-05-05 21:33:40'),
(172, 2425, 'Issue', 1, '', '2014-05-05 21:34:55'),
(174, 2456, 'Issue', 1, '', '2014-05-05 21:35:38'),
(175, 2450, 'Issue', 1, '', '2014-05-05 21:35:49'),
(176, 2449, 'Issue', 1, '', '2014-05-05 21:35:55'),
(177, 2431, 'Issue', 1, '', '2014-05-05 21:36:11'),
(178, 2430, 'Issue', 1, '', '2014-05-05 21:36:23'),
(179, 2459, 'Issue', 1, 'done', '2014-05-05 21:40:59'),
(180, 2467, 'Issue', 14, '', '2014-05-06 09:32:54'),
(181, 2467, 'Issue', 14, '', '2014-05-06 10:13:43'),
(182, 2468, 'Issue', 14, 'Implemented the functionability, going to add some language file for demonstration, romanian and english.\r\n\r\nThe above languages -> (select language)', '2014-05-06 12:17:12'),
(183, 2467, 'Issue', 14, '', '2014-05-06 12:48:34'),
(184, 2469, 'Issue', 1, '\r\nSpecificatii noi dekadecor\r\n\r\n- titlu mare sa fie despartit Deka decor\r\n- sa nu mai scrie "Beneficiar"', '2014-05-06 14:46:17'),
(185, 2466, 'Issue', 1, 'Done', '2014-05-07 09:35:36'),
(186, 2466, 'Issue', 9, 'Looks the same nothing has changed that I can tell.. The pet image is still to low and it does not resemble the file I provided..\r\n\r\n', '2014-05-07 15:34:56'),
(187, 2472, 'Issue', 14, '', '2014-05-08 15:33:30'),
(188, 2448, 'Issue', 1, '', '2014-05-09 07:45:11'),
(189, 2474, 'Issue', 1, 'done', '2014-05-09 13:56:53'),
(190, 2471, 'Issue', 14, '', '2014-05-09 16:44:40'),
(191, 2460, 'Issue', 1, 'done, added validator for contact phone, must be by US format', '2014-05-10 11:33:45'),
(192, 2461, 'Issue', 1, 'Features added:\n\n- ability to search by pet_type and pet_breed\n- showned pet_breed on main screen\n- rearanged the design to have more space on the screen\n- users changed in to employees, and added on the top screen as well on left\n\nFeatures remaining:\n- ability to scroll and show pet on right', '2014-05-10 11:35:41'),
(193, 2466, 'Issue', 1, '', '2014-05-10 11:38:20'),
(194, 2466, 'Issue', 1, 'Check please - http://54.72.97.34/k9/ (the new instance)\r\n', '2014-05-10 11:39:10'),
(195, 2475, 'Issue', 14, '', '2014-05-10 16:29:37'),
(196, 2476, 'Issue', 14, '', '2014-05-11 09:29:02'),
(198, 2480, 'Issue', 1, 'done\r\n', '2014-05-11 11:32:42'),
(199, 2481, 'Issue', 1, 'Obiectiv: Statie epurare Blaj\r\nBeneficiar: Pomponio Constructii\r\nOras/Tara: Blaj, Romania\r\nStatus proiect: Finalizat\r\n \r\nStatia de epurare de la Blaj este situata la intrarea in oras pe strada Clujului langa calea ferata.\r\nSC DEKA DECOR SRL a lucrat ca subantreprenor si a realizat cele doua decantoare secundare aferente statiei de epurare.\r\nPentru cofrarea peretilor circulari ale decantoarelor s-au folosit cofraje circulare DOKA H20.\r\n \r\n \r\nObiectiv: Reabilitarea si Extinderea Statiei de Epurare existente in Alba Iulia.\r\nBeneficiar: Pomponio Constructii\r\nOras/Tara: Alba Iulia, Romania\r\nStatus proiect: Finalizat\r\n \r\n \r\nSC DEKA DECOR SRL a luat parte la lucrari ca subantreprenor, realizand Decantoarele Secundare, Camera Gratarelor, Statia de Suflante, Sala Masinilor si Zona de Depozitare Namol.\r\nPentru cofrarea peretilor s-a utilizat sistemul de panouri metalice DOKA FRAMI.\r\nPentru cofrarea planseelor la Sala Masinilor si Statia de Suflante s-au folosit esafodaje DOKA STAXO 40.', '2014-05-11 18:47:24'),
(200, 2461, 'Issue', 1, 'done,\r\nRemaining, the testing process', '2014-05-12 21:14:02'),
(201, 2478, 'Issue', 14, '', '2014-05-13 07:16:51'),
(202, 2477, 'Issue', 14, '', '2014-05-13 07:17:38'),
(203, 2461, 'Issue', 9, 'Looking much better,  In order to save on clicks, lets reformat the search box to be open by "Default" with the option to close. ', '2014-05-13 22:09:40'),
(204, 2461, 'Issue', 1, 'done, also implemented the delete feature inside the client / pet edit popup', '2014-05-14 08:33:03'),
(205, 2466, 'Issue', 9, '1) the image needs to auto fit the image holder, I uploaded a picture that was portrait (longer than wide) the software made it landscape so the image sits sideways.. see attached.\r\n\r\n\r\n2)Still need to tighten it up so it is more inline with the image I provided originally. There will be more buttons at the bottom, as well as there will be membership and credit information as there is in the example software. \r\n\r\n3) still need to add vaccination information block\r\n\r\n4) Under pet "Date of Birth" it should say "x years, x months" likely just a small highlight under the box so the employee does not have to do math to figure out how old the pet is. \r\n\r\n5) Lets move the contact information up. There is to much wasted space under the client (human) image holder. this may mean shrinking the last visit box a bit but that is ok.. \r\n\r\n', '2014-05-14 21:28:53'),
(206, 2476, 'Issue', 14, '', '2014-05-15 10:29:43'),
(207, 2476, 'Issue', 14, '', '2014-05-15 10:30:47'),
(208, 2477, 'Issue', 14, 'created functionality without filters working ', '2014-05-15 10:31:37'),
(209, 2477, 'Issue', 14, '', '2014-05-15 10:32:09'),
(210, 2487, 'Issue', 1, 'This issue occur because there are no pet_breeds for "pig", if you change the pet_type it will show', '2014-05-16 06:05:48'),
(211, 2459, 'Issue', 1, '', '2014-05-16 06:10:04'),
(212, 2460, 'Issue', 1, '', '2014-05-16 06:10:11'),
(213, 2461, 'Issue', 1, '', '2014-05-16 06:10:18'),
(214, 2462, 'Issue', 1, '', '2014-05-16 06:10:34'),
(215, 2465, 'Issue', 1, '', '2014-05-16 06:10:43'),
(216, 2466, 'Issue', 1, '', '2014-05-16 08:35:56'),
(217, 2493, 'Issue', 1, 'done', '2014-05-16 15:12:32'),
(218, 2492, 'Issue', 1, 'Please see - http://54.72.97.34/issues/2493', '2014-05-16 15:15:32'),
(219, 2468, 'Issue', 14, '', '2014-05-16 17:18:24'),
(220, 2493, 'Issue', 9, 'Screen shot looks great....\r\n\r\nIssues:\r\n\r\n1) I have no idea where in the software "charge by hour is located" or where the option to charge by hour is located.. If I go to "Setup->Kennel Basic Services-> Daycare" it is not there. The software (k9 bytes) is buggy... I know the purpose of this section is for giving the business two options to include daycare (day boarding) with boarding, or to charge extra for daycare (day boarding) in addition to regular boarding. \r\n\r\n2) The desktop software is not well thought out at all.. there are to many tabs and windows to do many small parts of one thing.. We should consolidate settings pages as much as possible. \r\n\r\nIf we go to setup-> Kennel Settings -> General \r\n\r\nThere is an options screen with more kennel (boarding) options that we should add to Pet Types and run charges page page in an effort to consolidate and cut down windows..\r\n\r\n3) See attached "Run size type half day rate.png" we need to include half day rates, additionally I reorganized the column layout to be more uniform.\r\n\r\n4  See Modified.png.. This is the proposed updated Pet Types and Run Charges Page that includes the options found on other tabs and windows in an effort to consolidate. Ignore the colors and font, I only have access to paint so I try to make it as clear as possible.. The layout should be similar.  \r\n\r\nI think we should keep the setting simple, one page for each "center"\r\n\r\nA boarding setup and pricing page, a daycare page, a grooming page, a training page..\r\n\r\nThe only complication is the kennel layout that goes with boarding but even doing boarding in two pages is better than the 5 or 6 that you must now sort through with the current software..\r\n\r\nThoughts...\r\n\r\n', '2014-05-16 22:19:28'),
(221, 2486, 'Issue', 1, 'Done, also added the calculations for pets from date of birth', '2014-05-18 18:57:23'),
(222, 2488, 'Issue', 1, 'done', '2014-05-18 18:58:45'),
(223, 2485, 'Issue', 1, 'done, please give feedback on how it looks now, we are working on 22" monitors', '2014-05-18 19:01:09'),
(224, 2484, 'Issue', 1, 'done', '2014-05-18 19:01:28'),
(225, 2491, 'Issue', 1, 'Features added\r\n\r\n - designed calendar\r\n - implemented availability on calendar\r\n - added available pets settings (boarding, daycare, grooms, training) for reservations\r\n - added pet info on selection of pet to add boarding reservation, than it can be viewed on "boarding calendar"\r\n - implemted different colors for available, not available, overcrowded, and closed on saturdays and sundays\r\n\r\nFeatures remaining\r\n\r\n - selecting availability for specific dates\r\n - set certain dates to closed\r\n - view available pets for certain week, day\r\n - edit reservation on pet according to drills\r\n', '2014-05-19 21:06:22'),
(226, 2496, 'Issue', 1, 'done', '2014-05-19 21:09:14'),
(227, 2482, 'Issue', 1, 'Implemented feature to take photo using tablet. We will try to find a way to take picture using laptop / PC webcamera', '2014-05-19 21:11:16'),
(228, 2482, 'Issue', 1, '', '2014-05-19 21:15:44'),
(229, 2482, 'Issue', 1, '', '2014-05-19 21:15:50'),
(230, 2493, 'Issue', 9, '', '2014-05-20 21:06:13'),
(231, 2491, 'Issue', 9, 'Also remember the ability to edit reservations from inside the client pet screen should be very easy, as it is with the demo software.. \r\n\r\nSelect existing reservation from inside the client/pet screen\r\n\r\nEdit or change date and time (without going to another screen)\r\n\r\nSelect save..\r\n\r\nCheck the demo software for example or email me if you have questions.', '2014-05-20 21:09:02'),
(232, 2491, 'Issue', 9, 'The available Pts at in the bottom of the calendar will only apply to grooming.. and it stands for \r\n\r\nAvailable Points\r\n\r\nThis will apply when we assign a specific point value to each breed or dog..\r\n\r\nEach grooming day will have so many points available.\r\n\r\nEach time a dog is scheduled for grooming its points will be subtracted from the total..\r\n\r\nThis is grooming option B (a points based grooming scheduling system)\r\n\r\nFor boarding calendar it should only show total reservations on first page.. then drill down and it will show a list of total reservations by run type ', '2014-05-20 21:13:11'),
(233, 2493, 'Issue', 1, '', '2014-05-21 06:43:04'),
(234, 2466, 'Issue', 1, '', '2014-05-21 06:45:11'),
(235, 2493, 'Issue', 1, 'done, \r\n- added for both runtypes and petsizes the full and half day options, "Run size type half day rate.png" picture\r\n- implemented all the options from "Modified.png" picture, \r\n', '2014-05-21 12:35:56'),
(236, 2493, 'Issue', 9, 'Check attached the Saturday option out of line. \r\n\r\n1) Also lets decrease the fonts and tighten it up a bit.. Right now everything is just a touch to big creating the need for a lot of scrolling..\r\n\r\n2) Lets adjust font.. and go with Baskerville throughout the site.\r\n\r\nOther than that looks excellent..\r\n\r\nSee Changes.. attached.. I added two things under the daycare section...\r\n\r\n3) We will also need gray outs, so that if one option is checked, a competing option is unavailable.. I will work on providing you with paint versions of those today..\r\n\r\n\r\n\r\n  \r\n\r\n\r\nInteresting article regarding font:\r\n\r\nhttp://theweek.com/article/index/245632/how-typeface-influences-the-way-we-read-and-think\r\n\r\n', '2014-05-21 14:22:01'),
(237, 2493, 'Issue', 9, 'Adjusted the Saturday, Sunday, Holiday so it is more user friendly..\r\n\r\nAdded Dollar ($) symbols in appropriate places.\r\n\r\n\r\nSee attached', '2014-05-21 15:43:17'),
(238, 2493, 'Issue', 9, 'Attached is what I believe would be the appropriate gray out options, \r\n\r\nTo prevent users from selecting services that are not compatible with each other...', '2014-05-21 15:53:12'),
(239, 2481, 'Issue', 1, '', '2014-05-23 16:26:25'),
(240, 2469, 'Issue', 1, 'Optiune 3 limbi\r\n - engleza\r\n - romana\r\n - germana\r\n \r\n- Typo pe prima pagina ( sa executam in serviciile "pe" care le prestam )\r\n \r\nPagina despre:\r\n\r\n - Firma sa infintat in anul 2011 avand ca obiect de activitate executie structuri constructii civile si industriale.\r\n\r\nPrimele proiecte care au fost realizate:\r\n\r\n - executie fundatie biserica ortodoxa din localitatea teleac judetul alba\r\n - fundatii uscator holz industrie schweigofer\r\n\r\nIn 2012 proiectul principal a fost executie strucutra de rezistenta LA HOTEl si restaurant: investitie grup corint domeniul schiabil sureanu\r\n\r\nIn 2013 executie de decantoare secundare blaj - bazine circulare 23 metrii diametru.\r\n\r\nAlba iulia statia de epurare:\r\n - decantor secundar\r\n - camera gratarelor\r\n - depozit namol\r\n\r\nIn prezent se lucreaza la statia de tratare apa sebesel si cugir\r\n\r\n\r\n-----\r\nDe agaugat undeva -\r\n Specialisti in executie betoane aparente\r\n\r\n-----\r\nPe "click aici" sa duca la despre\r\n\r\n\r\n-----\r\nPagina contact\r\n\r\n - deka.decor2011@gmail.com\r\n - office@dekadecor.com - sa fie gmail\r\n\r\n----\r\nPagina acasa\r\n\r\n - sa dispara datele de pe poze\r\n', '2014-05-23 16:26:41'),
(241, 2493, 'Issue', 1, 'done, please see attachement', '2014-05-31 09:40:51'),
(242, 2491, 'Issue', 1, 'Features implemented:\n\n- ability to edit reservations from inside the client pet screen\n- select existing reservation from inside the client/pet screen\n- edit or change date and time (without going to another screen)\n- all features for boarding, daycare, gromming and training\n\nPlease see attachement', '2014-05-31 14:06:22'),
(243, 2491, 'Issue', 1, '', '2014-05-31 14:12:54'),
(244, 2493, 'Issue', 1, '', '2014-05-31 14:15:33'),
(245, 2491, 'Issue', 9, 'What resolution is the program at? I am having issues seeing everything on the pages and many things do not line up correctly. I run 1366x768 which is the most common resolution for users and the one that we should be designed for. I am unsure what resolution you have now, but the new features are not on the page for me or are at the extreme bottom so they are not usable. \r\n\r\nSources:\r\nhttp://www.hobo-web.co.uk/best-screen-size/\r\nhttp://www.w3schools.com/browsers/browsers_display.asp', '2014-06-02 20:31:44'),
(246, 2497, 'Issue', 1, '', '2014-06-02 23:25:26'),
(247, 2498, 'Issue', 1, '', '2014-06-02 23:29:37'),
(248, 2498, 'Issue', 1, 'Also added posibility to add / edit / delete pet status\r\nCheck top menu, "Options" -> "Pet Options" -> "Pet status"', '2014-06-02 23:31:17'),
(249, 2499, 'Issue', 1, '', '2014-06-02 23:32:36'),
(250, 2498, 'Issue', 1, '', '2014-06-02 23:42:04'),
(251, 2497, 'Issue', 1, '', '2014-06-02 23:42:12'),
(252, 2499, 'Issue', 1, '', '2014-06-02 23:42:18'),
(253, 2493, 'Issue', 1, '', '2014-06-02 23:42:56'),
(254, 2492, 'Issue', 1, '', '2014-06-02 23:43:04'),
(255, 2491, 'Issue', 1, '', '2014-06-02 23:43:39'),
(256, 2482, 'Issue', 1, '', '2014-06-02 23:44:10'),
(257, 2466, 'Issue', 1, '', '2014-06-02 23:44:20'),
(258, 2482, 'Issue', 1, '', '2014-06-02 23:44:35'),
(259, 2431, 'Issue', 1, '', '2014-06-02 23:44:47'),
(260, 2430, 'Issue', 1, '', '2014-06-02 23:44:55'),
(261, 2496, 'Issue', 1, '', '2014-06-02 23:45:29'),
(262, 2488, 'Issue', 1, '', '2014-06-02 23:45:34'),
(263, 2487, 'Issue', 1, '', '2014-06-02 23:45:42'),
(264, 2486, 'Issue', 1, '', '2014-06-02 23:45:48'),
(265, 2485, 'Issue', 1, '', '2014-06-02 23:45:53'),
(266, 2484, 'Issue', 1, '', '2014-06-02 23:45:58'),
(267, 2480, 'Issue', 1, '', '2014-06-02 23:46:03'),
(268, 2500, 'Issue', 1, 'done,\r\nsee attachements', '2014-06-03 17:05:49'),
(269, 2500, 'Issue', 1, 'done\r\nplease see attachement', '2014-06-04 12:40:06'),
(270, 2501, 'Issue', 1, 'done', '2014-06-05 12:49:28'),
(271, 2502, 'Issue', 1, 'Features implemented to add / edit multiple pets on single client\r\nRemaining its the delete pet functionability', '2014-06-05 23:01:46'),
(272, 2502, 'Issue', 1, '- delete option for pet', '2014-06-06 13:47:34'),
(273, 2483, 'Issue', 1, 'The users will be the employees of the business. I intend on using this for my business as well so my employees will also be users.. we need to be able to set access rights per user per action...\r\n\r\nthe the password  k9bytesprioritymail   for admin  or owner...\r\n\r\nBut let us first design it to be useful to the business...\r\n\r\nThere should be no "points" for boarding.. boarding is based on space available.. not points... on grooming will have points and that will be an option to choose points or time based availability scheduling...\r\n\r\nRichard', '2014-06-10 16:10:02'),
(274, 2490, 'Issue', 1, 'Implemented boarding reservations,\r\n\r\n features:\r\n    - ability to select checked in / out pets\r\n    - ability to select certain date for a pet\r\n    - Show details of customer, pet, pet_breed\r\n    - multiple pet reservations from main screen\r\n    - set status of reservation, as in active, inactive\r\n    - set to a certain boarding centger\r\n    - select datepicker time\r\n    - select time pikcer time for both status as in  and out\r\n    - pick the stay reasons\r\n    - editable stay reasons\r\n    - deposit a charge \r\n    - set runtype or petsize according to "Options" -> "Charges"', '2014-06-11 13:34:47'),
(275, 2490, 'Issue', 1, 'Please see attachement', '2014-06-11 13:41:14'),
(276, 2503, 'Issue', 1, 'done', '2014-06-11 16:02:41'),
(277, 2504, 'Issue', 1, 'fixed most of the inconvieniences, on the following resolutions:\r\n\r\n1980x1220\r\n1600x1000\r\n1400x1000\r\n1200x1000\r\n\r\nWorks good on all operating systems and browsers', '2014-06-11 16:30:26'),
(278, 2504, 'Issue', 1, 'Moved on left the reservation / vets for resolutions that have under 1000 px height', '2014-06-12 13:11:00'),
(279, 2466, 'Issue', 1, '', '2014-06-14 10:00:23'),
(280, 2506, 'Issue', 1, 'done, please see attachements', '2014-06-28 16:16:34'),
(281, 2506, 'Issue', 1, '', '2014-06-28 16:16:48'),
(282, 2507, 'Issue', 1, 'done, please see attachements', '2014-06-28 16:17:55'),
(283, 2507, 'Issue', 1, '', '2014-06-28 16:18:20'),
(284, 2501, 'Issue', 1, '', '2014-06-28 16:18:45'),
(285, 2499, 'Issue', 1, '', '2014-06-28 16:18:50'),
(286, 2498, 'Issue', 1, '', '2014-06-28 16:18:55'),
(287, 2497, 'Issue', 1, '', '2014-06-28 16:19:01'),
(288, 2493, 'Issue', 1, '', '2014-06-28 16:19:07'),
(289, 2491, 'Issue', 1, '', '2014-06-28 16:19:15'),
(290, 2482, 'Issue', 1, '', '2014-06-28 16:19:22'),
(291, 2508, 'Issue', 1, 'done, please see attachement', '2014-06-30 15:51:33'),
(292, 2509, 'Issue', 1, 'done, please see attachements ', '2014-06-30 15:53:31'),
(293, 2510, 'Issue', 1, 'Similar, please see this task http://54.72.97.34/issues/2509', '2014-06-30 15:55:26'),
(294, 2511, 'Issue', 1, 'done, please see the menu on this task http://54.72.97.34/issues/2508', '2014-06-30 15:56:50'),
(295, 2512, 'Issue', 1, 'done, please see attachement', '2014-06-30 15:58:28'),
(296, 2513, 'Issue', 1, 'done, please see attachement', '2014-06-30 15:59:27'),
(297, 2514, 'Issue', 1, 'Done, please see attachement', '2014-06-30 16:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `journal_details`
--

CREATE TABLE IF NOT EXISTS `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=486 ;

--
-- Dumping data for table `journal_details`
--

INSERT INTO `journal_details` (`id`, `journal_id`, `property`, `prop_key`, `old_value`, `value`) VALUES
(1, 1, 'attr', 'description', '\r\n\r\n1)  the first major thing is the rates that are displayed for the client login. Can we only display the end rate please, i.e. after all the percentage fees have been added on etc so that it tells them the final rate. we dont want to display any information about margins here at all\r\n\r\n1.1) -   When client is creating an order, client is able to see our margins as ‘Buy Cash Fee’.  We would like this not to be visible to clients. \r\n \r\n1.2) “When I enter the margins for individual rates, then press ctr F5 as your instructions, page refreshes okay. But what we want to see is that ‘buy rate’ and Sell Rate’ are altered according to the margins I input.  Instead what I see is a new column called ‘Total’ showing the rate after the margins added on. However I tried to place an order, I realised that  when client is creating an order,  they see the ‘Buy Rate’ not the total rate, so we are not applying the correct rates.  This needs to be switched around, so client gets the rate with the margins added on, which is the total rate.” - This is the feedback from the client regarding the rates.  \r\n\r\n2) In the margins menu we also would like the term ‘Buy Cash Fee’ and  ‘Sell Cash Fee ‘ changed to Buy Cash Margins and Sell Cash Margins instead\r\n\r\n\r\n3)Can we please add a “*” next to the rate for all buying and selling and have a disclaimer at the bottom that says *Rates are indicative only and subject to change\r\n\r\n\r\n4) There are only two processing centres that we will be using so if we can have the order confirmation emails sent to the specific processing centre after the customer associated with the account creates an order that would be good. \r\n\r\n5) The contact button on the top right for each customer should display information regarding their processing centre. As mentioned above there are only two processing centres at the moment so this will be one of two centres depending on who they are associated with -\r\n\r\nHolborn:\r\nholborn.uk@kanoofes.com\r\nTel: 0207 837 4416\r\nFax:0207 833 0356\r\n \r\nHaymarket:\r\nhaymarket.corporate@kanoofes.com\r\nTel: 0207 484 9607\r\nFax: 0207 484 9645\r\n\r\n\r\n7) Make administration panel for centers\r\n\r\nTudor: which users are which ? currently we don’t have field for processing center … to attribute procfessing center to user ...\r\n\r\nFarrukh: I will get that list now with the processing centre \r\n\r\nT: on processing centers, I will put a textarea to enter this data, and then it will be available on the contact above for each users login, I guess we will be needing a processing center type of user to deal with orders / buybacks, just like in staff, but a little limited, only on his users … right ? \r\n\r\nF: Yes exactly :) The staff account is more supervisory as staff at the centres will only use the processing centre accounts/ their own account which is associated with the processing centre so unable to view all orders. Only superadmin can view all the users/orders\r\n\r\nT: excelent.. \r\n\r\n', '\r\n1)  the first major thing is the rates that are displayed for the client login. Can we only display the end rate please, i.e. after all the percentage fees have been added on etc so that it tells them the final rate. we dont want to display any information about margins here at all\r\n\r\n1.1) -   When client is creating an order, client is able to see our margins as ‘Buy Cash Fee’.  We would like this not to be visible to clients. \r\n \r\n1.2) “When I enter the margins for individual rates, then press ctr F5 as your instructions, page refreshes okay. But what we want to see is that ‘buy rate’ and Sell Rate’ are altered according to the margins I input.  Instead what I see is a new column called ‘Total’ showing the rate after the margins added on. However I tried to place an order, I realised that  when client is creating an order,  they see the ‘Buy Rate’ not the total rate, so we are not applying the correct rates.  This needs to be switched around, so client gets the rate with the margins added on, which is the total rate.” - This is the feedback from the client regarding the rates.  \r\n\r\n2) In the margins menu we also would like the term ‘Buy Cash Fee’ and  ‘Sell Cash Fee ‘ changed to Buy Cash Margins and Sell Cash Margins instead\r\n\r\n\r\n3)Can we please add a “*” next to the rate for all buying and selling and have a disclaimer at the bottom that says *Rates are indicative only and subject to change\r\n\r\n\r\n4) There are only two processing centres that we will be using so if we can have the order confirmation emails sent to the specific processing centre after the customer associated with the account creates an order that would be good. \r\n\r\n5) The contact button on the top right for each customer should display information regarding their processing centre. As mentioned above there are only two processing centres at the moment so this will be one of two centres depending on who they are associated with -\r\n\r\nHolborn:\r\nholborn.uk@kanoofes.com\r\nTel: 0207 837 4416\r\nFax:0207 833 0356\r\n \r\nHaymarket:\r\nhaymarket.corporate@kanoofes.com\r\nTel: 0207 484 9607\r\nFax: 0207 484 9645\r\n\r\n\r\n7) Make administration panel for centers\r\n\r\nTudor: which users are which ? currently we don’t have field for processing center … to attribute procfessing center to user ...\r\n\r\nFarrukh: I will get that list now with the processing centre \r\n\r\nT: on processing centers, I will put a textarea to enter this data, and then it will be available on the contact above for each users login, I guess we will be needing a processing center type of user to deal with orders / buybacks, just like in staff, but a little limited, only on his users … right ? \r\n\r\nF: Yes exactly :) The staff account is more supervisory as staff at the centres will only use the processing centre accounts/ their own account which is associated with the processing centre so unable to view all orders. Only superadmin can view all the users/orders\r\n\r\nT: excelent.. \r\n\r\n'),
(2, 2, 'attr', 'description', '\r\n1)  the first major thing is the rates that are displayed for the client login. Can we only display the end rate please, i.e. after all the percentage fees have been added on etc so that it tells them the final rate. we dont want to display any information about margins here at all\r\n\r\n1.1) -   When client is creating an order, client is able to see our margins as ‘Buy Cash Fee’.  We would like this not to be visible to clients. \r\n \r\n1.2) “When I enter the margins for individual rates, then press ctr F5 as your instructions, page refreshes okay. But what we want to see is that ‘buy rate’ and Sell Rate’ are altered according to the margins I input.  Instead what I see is a new column called ‘Total’ showing the rate after the margins added on. However I tried to place an order, I realised that  when client is creating an order,  they see the ‘Buy Rate’ not the total rate, so we are not applying the correct rates.  This needs to be switched around, so client gets the rate with the margins added on, which is the total rate.” - This is the feedback from the client regarding the rates.  \r\n\r\n2) In the margins menu we also would like the term ‘Buy Cash Fee’ and  ‘Sell Cash Fee ‘ changed to Buy Cash Margins and Sell Cash Margins instead\r\n\r\n\r\n3)Can we please add a “*” next to the rate for all buying and selling and have a disclaimer at the bottom that says *Rates are indicative only and subject to change\r\n\r\n\r\n4) There are only two processing centres that we will be using so if we can have the order confirmation emails sent to the specific processing centre after the customer associated with the account creates an order that would be good. \r\n\r\n5) The contact button on the top right for each customer should display information regarding their processing centre. As mentioned above there are only two processing centres at the moment so this will be one of two centres depending on who they are associated with -\r\n\r\nHolborn:\r\nholborn.uk@kanoofes.com\r\nTel: 0207 837 4416\r\nFax:0207 833 0356\r\n \r\nHaymarket:\r\nhaymarket.corporate@kanoofes.com\r\nTel: 0207 484 9607\r\nFax: 0207 484 9645\r\n\r\n\r\n7) Make administration panel for centers\r\n\r\nTudor: which users are which ? currently we don’t have field for processing center … to attribute procfessing center to user ...\r\n\r\nFarrukh: I will get that list now with the processing centre \r\n\r\nT: on processing centers, I will put a textarea to enter this data, and then it will be available on the contact above for each users login, I guess we will be needing a processing center type of user to deal with orders / buybacks, just like in staff, but a little limited, only on his users … right ? \r\n\r\nF: Yes exactly :) The staff account is more supervisory as staff at the centres will only use the processing centre accounts/ their own account which is associated with the processing centre so unable to view all orders. Only superadmin can view all the users/orders\r\n\r\nT: excelent.. \r\n\r\n', '1)  the first major thing is the rates that are displayed for the client login. Can we only display the end rate please, i.e. after all the percentage fees have been added on etc so that it tells them the final rate. we dont want to display any information about margins here at all\r\n\r\n1.1) -   When client is creating an order, client is able to see our margins as ‘Buy Cash Fee’.  We would like this not to be visible to clients. \r\n \r\n1.2) “When I enter the margins for individual rates, then press ctr F5 as your instructions, page refreshes okay. But what we want to see is that ‘buy rate’ and Sell Rate’ are altered according to the margins I input.  Instead what I see is a new column called ‘Total’ showing the rate after the margins added on. However I tried to place an order, I realised that  when client is creating an order,  they see the ‘Buy Rate’ not the total rate, so we are not applying the correct rates.  This needs to be switched around, so client gets the rate with the margins added on, which is the total rate.” - This is the feedback from the client regarding the rates.  \r\n\r\n2) In the margins menu we also would like the term ‘Buy Cash Fee’ and  ‘Sell Cash Fee ‘ changed to Buy Cash Margins and Sell Cash Margins instead\r\n\r\n\r\n3)Can we please add a “*” next to the rate for all buying and selling and have a disclaimer at the bottom that says *Rates are indicative only and subject to change\r\n\r\n\r\n4) There are only two processing centres that we will be using so if we can have the order confirmation emails sent to the specific processing centre after the customer associated with the account creates an order that would be good. \r\n\r\n5) The contact button on the top right for each customer should display information regarding their processing centre. As mentioned above there are only two processing centres at the moment so this will be one of two centres depending on who they are associated with -\r\n\r\nHolborn:\r\nholborn.uk@kanoofes.com\r\nTel: 0207 837 4416\r\nFax:0207 833 0356\r\n \r\nHaymarket:\r\nhaymarket.corporate@kanoofes.com\r\nTel: 0207 484 9607\r\nFax: 0207 484 9645\r\n\r\n\r\n7) Make administration panel for centers\r\n\r\nTudor: which users are which ? currently we don’t have field for processing center … to attribute procfessing center to user ...\r\n\r\nFarrukh: I will get that list now with the processing centre \r\n\r\nT: on processing centers, I will put a textarea to enter this data, and then it will be available on the contact above for each users login, I guess we will be needing a processing center type of user to deal with orders / buybacks, just like in staff, but a little limited, only on his users … right ? \r\n\r\nF: Yes exactly :) The staff account is more supervisory as staff at the centres will only use the processing centre accounts/ their own account which is associated with the processing centre so unable to view all orders. Only superadmin can view all the users/orders\r\n\r\nT: excelent.. \r\n\r\n'),
(3, 2, 'attr', 'status_id', '1', '5'),
(4, 3, 'attr', 'due_date', '2014-03-26', '2014-02-01'),
(5, 3, 'attr', 'start_date', '2014-02-24', '2014-01-29'),
(6, 5, 'attr', 'estimated_hours', NULL, '3.0'),
(7, 6, 'attr', 'estimated_hours', NULL, '5.0'),
(8, 7, 'attr', 'description', '\r\n- They don''t want the rate minused from the percentage rate they just want another column which says fee, If it''s a percentage fee or a flat fee just display the fee in there\r\n\r\n- And the sterling amount or foreign amount is very important so need that done please.  I got a call saying that the pound sign seems to have gone on to the right hand side and that the number of digits on the exchange rate seems to have increased too\r\n\r\n \r\n- Client ordering Cash:  Rate box now contains 10 digits.  This should be consisted of 4 digits.\r\n\r\n· Commission charges disappeared.  Nomura clients should see a charge 1.5 % in commission line.\r\n\r\n- £ sign appears at the end of the totals rather than front.\r\n\r\n-COMMISSIONS TO BE ADDED CORRECTLY\r\n\r\n-DUAL CONTROL PROCESS, WHEREBY A CREATED ORDER CAN GO TO AN APPROVER (IF REQUIRED BY CLIENT)\r\n\r\n- Client can only put currency amount when placing an order.  They pointed out that they would like to have sterling equivalent option as well.\r\n', '- They don''t want the rate minused from the percentage rate they just want another column which says fee, If it''s a percentage fee or a flat fee just display the fee in there\r\n\r\n- And the sterling amount or foreign amount is very important so need that done please.  I got a call saying that the pound sign seems to have gone on to the right hand side and that the number of digits on the exchange rate seems to have increased too\r\n\r\n \r\n- Client ordering Cash:  Rate box now contains 10 digits.  This should be consisted of 4 digits.\r\n\r\n· Commission charges disappeared.  Nomura clients should see a charge 1.5 % in commission line.\r\n\r\n- £ sign appears at the end of the totals rather than front.\r\n\r\n-COMMISSIONS TO BE ADDED CORRECTLY\r\n\r\n-DUAL CONTROL PROCESS, WHEREBY A CREATED ORDER CAN GO TO AN APPROVER (IF REQUIRED BY CLIENT)\r\n\r\n- Client can only put currency amount when placing an order.  They pointed out that they would like to have sterling equivalent option as well.\r\n'),
(9, 11, 'attr', 'due_date', NULL, '2014-03-05'),
(10, 11, 'attr', 'start_date', '2014-03-13', '2014-03-05'),
(11, 12, 'attr', 'priority_id', '4', '6'),
(12, 13, 'attr', 'due_date', NULL, '2014-03-06'),
(13, 13, 'attr', 'priority_id', '4', '6'),
(14, 13, 'attr', 'start_date', '2014-03-13', '2014-03-06'),
(15, 14, 'attr', 'due_date', NULL, '2014-03-06'),
(16, 14, 'attr', 'priority_id', '4', '6'),
(17, 14, 'attr', 'start_date', '2014-03-13', '2014-03-06'),
(18, 15, 'attr', 'status_id', '1', '5'),
(19, 16, 'attachment', '30', NULL, 'fx4you.png'),
(20, 16, 'attr', 'status_id', '1', '5'),
(21, 17, 'attachment', '31', NULL, 'layout_1.png'),
(22, 17, 'attachment', '32', NULL, 'layout_2.png'),
(23, 17, 'attachment', '33', NULL, 'layout_3.png'),
(24, 17, 'attr', 'status_id', '1', '5'),
(25, 18, 'attachment', '34', NULL, 'get-latest-rates.php'),
(26, 18, 'attr', 'status_id', '1', '5'),
(27, 19, 'attachment', '35', NULL, 'fx4you_calculations_logic_uml.pdf'),
(28, 19, 'attr', 'status_id', '1', '5'),
(29, 20, 'attachment', '36', NULL, 'fx4you_login_uml.pdf'),
(30, 20, 'attr', 'status_id', '1', '5'),
(31, 20, 'attr', 'estimated_hours', NULL, '3.0'),
(32, 21, 'attachment', '37', NULL, 'fx4you_client_pages_uml.pdf'),
(33, 21, 'attr', 'status_id', '1', '5'),
(34, 22, 'attr', 'start_date', '2014-03-13', '2014-01-18'),
(35, 23, 'attr', 'start_date', '2014-03-13', '2014-01-21'),
(36, 24, 'attr', 'start_date', '2014-03-13', '2014-01-20'),
(37, 25, 'attr', 'start_date', '2014-03-13', '2014-01-22'),
(38, 26, 'attr', 'start_date', '2014-03-13', '2014-01-17'),
(39, 27, 'attr', 'start_date', '2014-03-13', '2014-01-18'),
(41, 30, 'attr', 'done_ratio', '100', '0'),
(42, 31, 'attr', 'done_ratio', '100', '0'),
(43, 32, 'attr', 'done_ratio', '100', '0'),
(44, 33, 'attachment', '38', NULL, 'uml - general software arhitecture.pdf'),
(45, 34, 'attachment', '39', NULL, 'webapp_login_api_task4.pdf'),
(46, 35, 'attachment', '40', NULL, 'users_diagram2.pdf'),
(47, 36, 'attachment', '41', NULL, '#1 -k9koordinator - CLIENTS.pdf'),
(48, 36, 'attachment', '42', NULL, '#2 - k9koordinator - PETS.pdf'),
(49, 36, 'attachment', '43', NULL, '#3 - k9koordinator - RESERVATIONS.pdf'),
(50, 37, 'attachment', '44', NULL, 'zf1_structure.png'),
(51, 37, 'attr', 'done_ratio', '0', '100'),
(52, 38, 'attr', 'status_id', '1', '4'),
(53, 38, 'attr', 'assigned_to_id', '1', '3'),
(54, 38, 'attr', 'done_ratio', '0', '100'),
(55, 39, 'attr', 'status_id', '3', '4'),
(56, 39, 'attr', 'assigned_to_id', '1', '3'),
(57, 40, 'attr', 'status_id', '1', '4'),
(58, 40, 'attr', 'assigned_to_id', '1', '3'),
(59, 40, 'attr', 'done_ratio', '0', '100'),
(60, 41, 'attachment', '45', NULL, 'ss1.png'),
(61, 41, 'attachment', '46', NULL, 'ss2.png'),
(62, 41, 'attachment', '47', NULL, 'ss3.png'),
(63, 41, 'attachment', '48', NULL, 'ss4.png'),
(64, 42, 'attr', 'status_id', '1', '4'),
(65, 42, 'attr', 'assigned_to_id', '1', '3'),
(66, 42, 'attr', 'done_ratio', '0', '100'),
(67, 43, 'attr', 'status_id', '1', '4'),
(68, 43, 'attr', 'assigned_to_id', '1', '3'),
(69, 43, 'attr', 'done_ratio', '0', '100'),
(70, 44, 'attr', 'status_id', '1', '3'),
(71, 45, 'attr', 'status_id', '1', '4'),
(72, 45, 'attr', 'assigned_to_id', NULL, '9'),
(73, 46, 'attr', 'status_id', '1', '4'),
(74, 46, 'attr', 'assigned_to_id', '1', '9'),
(75, 46, 'attr', 'done_ratio', '0', '60'),
(77, 51, 'attr', 'done_ratio', '60', '80'),
(78, 52, 'attachment', '58', NULL, 'check.png'),
(79, 53, 'attr', 'status_id', '2', '4'),
(80, 53, 'attr', 'assigned_to_id', '1', '6'),
(81, 53, 'attr', 'done_ratio', '80', '100'),
(82, 54, 'attr', 'status_id', '1', '4'),
(83, 54, 'attr', 'assigned_to_id', NULL, '6'),
(84, 54, 'attr', 'done_ratio', '0', '100'),
(85, 56, 'attr', 'status_id', '1', '4'),
(86, 56, 'attr', 'assigned_to_id', NULL, '6'),
(87, 56, 'attr', 'done_ratio', '0', '100'),
(88, 57, 'attr', 'status_id', '1', '4'),
(89, 57, 'attr', 'assigned_to_id', NULL, '6'),
(90, 57, 'attr', 'done_ratio', '0', '100'),
(91, 58, 'attr', 'status_id', '1', '4'),
(92, 58, 'attr', 'assigned_to_id', NULL, '6'),
(93, 62, 'attr', 'status_id', '1', '2'),
(94, 62, 'attr', 'done_ratio', '0', '20'),
(95, 63, 'attr', 'done_ratio', '20', '40'),
(96, 64, 'attr', 'done_ratio', '40', '60'),
(97, 65, 'attr', 'status_id', '1', '4'),
(98, 65, 'attr', 'assigned_to_id', '1', '12'),
(99, 65, 'attr', 'done_ratio', '0', '100'),
(100, 66, 'attr', 'status_id', '1', '4'),
(101, 66, 'attr', 'assigned_to_id', '1', '12'),
(102, 66, 'attr', 'done_ratio', '0', '100'),
(103, 67, 'attr', 'status_id', '4', '5'),
(104, 68, 'attr', 'status_id', '3', '5'),
(105, 69, 'attr', 'status_id', '4', '5'),
(106, 70, 'attr', 'status_id', '4', '5'),
(107, 71, 'attr', 'status_id', '4', '5'),
(108, 72, 'attr', 'status_id', '4', '5'),
(109, 73, 'attr', 'status_id', '3', '5'),
(110, 76, 'attr', 'done_ratio', '60', '90'),
(111, 77, 'attr', 'status_id', '2', '4'),
(112, 77, 'attr', 'assigned_to_id', '1', '9'),
(113, 77, 'attr', 'done_ratio', '90', '100'),
(114, 81, 'attr', 'done_ratio', '100', '80'),
(115, 83, 'attr', 'status_id', '4', '5'),
(116, 84, 'attr', 'status_id', '4', '5'),
(117, 85, 'attr', 'status_id', '1', '5'),
(118, 86, 'attr', 'status_id', '4', '5'),
(119, 87, 'attr', 'status_id', '4', '5'),
(120, 88, 'attr', 'status_id', '4', '5'),
(121, 89, 'attr', 'status_id', '4', '5'),
(122, 90, 'attr', 'status_id', '4', '5'),
(123, 91, 'attr', 'status_id', '4', '5'),
(124, 92, 'attr', 'status_id', '1', '5'),
(125, 93, 'attachment', '60', NULL, 'get-latest-rates.php'),
(126, 93, 'attr', 'done_ratio', '0', '50'),
(127, 94, 'attr', 'status_id', '1', '5'),
(128, 95, 'attr', 'status_id', '4', '5'),
(129, 96, 'attr', 'status_id', '1', '5'),
(130, 97, 'attr', 'status_id', '4', '5'),
(131, 99, 'attr', 'status_id', '1', '4'),
(132, 99, 'attr', 'assigned_to_id', '1', '13'),
(133, 99, 'attr', 'done_ratio', '0', '100'),
(134, 100, 'attr', 'fixed_version_id', NULL, '3'),
(135, 101, 'attr', 'fixed_version_id', NULL, '3'),
(136, 102, 'attr', 'fixed_version_id', NULL, '3'),
(137, 103, 'attr', 'status_id', '1', '5'),
(138, 104, 'attr', 'status_id', '4', '5'),
(139, 104, 'attr', 'done_ratio', '80', '100'),
(140, 105, 'attr', 'status_id', '2', '4'),
(141, 105, 'attr', 'assigned_to_id', '1', '9'),
(142, 105, 'attr', 'done_ratio', '0', '100'),
(143, 108, 'attachment', '61', NULL, 'image002.jpg'),
(144, 109, 'attr', 'status_id', '2', '5'),
(145, 109, 'attr', 'assigned_to_id', '1', '7'),
(146, 109, 'attr', 'done_ratio', '50', '100'),
(147, 110, 'attr', 'status_id', '1', '2'),
(148, 110, 'attr', 'done_ratio', '0', '30'),
(149, 111, 'attr', 'status_id', '1', '2'),
(150, 111, 'attr', 'assigned_to_id', NULL, '1'),
(151, 111, 'attr', 'done_ratio', '0', '30'),
(152, 112, 'attr', 'status_id', '2', '4'),
(153, 112, 'attr', 'assigned_to_id', '1', '9'),
(154, 112, 'attr', 'done_ratio', '30', '100'),
(155, 116, 'attr', 'status_id', '2', '4'),
(156, 116, 'attr', 'assigned_to_id', '1', '9'),
(157, 116, 'attr', 'done_ratio', '0', '100'),
(158, 117, 'attr', 'status_id', '2', '4'),
(159, 117, 'attr', 'done_ratio', '0', '100'),
(160, 118, 'attr', 'assigned_to_id', '1', '9'),
(161, 119, 'attr', 'status_id', '1', '2'),
(162, 119, 'attr', 'assigned_to_id', NULL, '1'),
(163, 120, 'attachment', '81', NULL, 'Screen Shot 2014-04-04 at 14.39.39.png'),
(164, 120, 'attachment', '82', NULL, 'Screen Shot 2014-04-04 at 14.40.05.png'),
(165, 120, 'attachment', '83', NULL, 'Screen Shot 2014-04-04 at 14.40.18.png'),
(166, 120, 'attachment', '84', NULL, 'Screen Shot 2014-04-04 at 14.40.089.png'),
(167, 121, 'attr', 'fixed_version_id', NULL, '4'),
(168, 122, 'attr', 'fixed_version_id', NULL, '4'),
(169, 123, 'attr', 'fixed_version_id', NULL, '4'),
(170, 124, 'attr', 'fixed_version_id', NULL, '4'),
(171, 125, 'attr', 'fixed_version_id', NULL, '4'),
(172, 126, 'attr', 'fixed_version_id', NULL, '4'),
(173, 127, 'attr', 'fixed_version_id', NULL, '4'),
(174, 128, 'attr', 'fixed_version_id', NULL, '4'),
(175, 129, 'attr', 'status_id', '2', '4'),
(176, 129, 'attr', 'assigned_to_id', '1', '6'),
(177, 130, 'attr', 'status_id', '2', '4'),
(178, 130, 'attr', 'assigned_to_id', '1', '6'),
(179, 130, 'attr', 'done_ratio', '0', '100'),
(180, 131, 'attr', 'status_id', '2', '4'),
(181, 131, 'attr', 'assigned_to_id', '1', '6'),
(182, 131, 'attr', 'done_ratio', '0', '100'),
(183, 132, 'attr', 'status_id', '2', '4'),
(184, 132, 'attr', 'assigned_to_id', '1', '6'),
(185, 132, 'attr', 'done_ratio', '0', '100'),
(186, 133, 'attr', 'status_id', '2', '4'),
(187, 133, 'attr', 'assigned_to_id', '1', '6'),
(188, 133, 'attr', 'done_ratio', '0', '100'),
(189, 134, 'attr', 'status_id', '2', '4'),
(190, 134, 'attr', 'assigned_to_id', '1', '6'),
(191, 134, 'attr', 'done_ratio', '0', '100'),
(192, 135, 'attr', 'assigned_to_id', '1', '6'),
(193, 135, 'attr', 'done_ratio', '0', '100'),
(194, 136, 'attr', 'status_id', '2', '4'),
(195, 136, 'attr', 'assigned_to_id', '1', '6'),
(196, 136, 'attr', 'done_ratio', '0', '100'),
(197, 137, 'attr', 'status_id', '2', '4'),
(198, 137, 'attr', 'assigned_to_id', '1', '6'),
(199, 137, 'attr', 'done_ratio', '0', '100'),
(200, 138, 'attr', 'status_id', '4', '5'),
(201, 139, 'attr', 'status_id', '4', '5'),
(202, 140, 'attr', 'status_id', '4', '5'),
(203, 141, 'attr', 'status_id', '4', '5'),
(204, 142, 'attr', 'status_id', '4', '5'),
(205, 143, 'attr', 'fixed_version_id', '3', '5'),
(206, 144, 'attr', 'fixed_version_id', '3', '5'),
(207, 145, 'attr', 'done_ratio', '0', '90'),
(208, 146, 'attr', 'status_id', '2', '4'),
(209, 146, 'attr', 'assigned_to_id', '1', '9'),
(210, 146, 'attr', 'done_ratio', '0', '100'),
(211, 148, 'attr', 'done_ratio', '0', '60'),
(212, 149, 'attr', 'status_id', '4', '5'),
(213, 150, 'attr', 'status_id', '1', '4'),
(214, 150, 'attr', 'assigned_to_id', '1', '6'),
(215, 150, 'attr', 'done_ratio', '0', '100'),
(216, 151, 'attr', 'status_id', '4', '5'),
(217, 152, 'attr', 'status_id', '4', '5'),
(218, 153, 'attr', 'status_id', '4', '5'),
(219, 154, 'attr', 'status_id', '4', '5'),
(220, 155, 'attr', 'status_id', '4', '5'),
(221, 156, 'attr', 'status_id', '4', '5'),
(222, 157, 'attr', 'status_id', '4', '5'),
(223, 159, 'attr', 'status_id', '2', '4'),
(224, 159, 'attr', 'assigned_to_id', '1', '9'),
(225, 159, 'attr', 'done_ratio', '0', '100'),
(226, 160, 'attr', 'status_id', '2', '4'),
(227, 160, 'attr', 'assigned_to_id', '1', '9'),
(228, 160, 'attr', 'done_ratio', '60', '100'),
(229, 161, 'attachment', '97', NULL, 'clientpet.jpg'),
(230, 162, 'attr', 'status_id', '4', '5'),
(231, 163, 'attr', 'status_id', '4', '5'),
(232, 164, 'attr', 'status_id', '1', '4'),
(233, 164, 'attr', 'assigned_to_id', '14', '6'),
(234, 164, 'attr', 'done_ratio', '0', '100'),
(235, 165, 'attr', 'assigned_to_id', '14', '6'),
(236, 165, 'attr', 'done_ratio', '0', '100'),
(237, 166, 'attr', 'status_id', '1', '4'),
(238, 167, 'attr', 'status_id', '1', '4'),
(239, 167, 'attr', 'assigned_to_id', NULL, '13'),
(240, 167, 'attr', 'done_ratio', '0', '100'),
(241, 168, 'attr', 'fixed_version_id', NULL, '7'),
(242, 169, 'attachment', '102', NULL, 'Site nou - www.turbosuflanteok.ro.png'),
(243, 169, 'attachment', '103', NULL, 'cpanel.png'),
(244, 170, 'attachment', '104', NULL, '02.png'),
(245, 170, 'attr', 'status_id', '1', '4'),
(246, 170, 'attr', 'assigned_to_id', NULL, '9'),
(247, 170, 'attr', 'done_ratio', '0', '100'),
(248, 171, 'attr', 'status_id', '1', '4'),
(249, 171, 'attr', 'assigned_to_id', NULL, '9'),
(250, 171, 'attr', 'done_ratio', '0', '100'),
(251, 172, 'attr', 'status_id', '2', '5'),
(252, 172, 'attr', 'done_ratio', '30', '100'),
(254, 174, 'attr', 'status_id', '4', '5'),
(255, 175, 'attr', 'status_id', '4', '5'),
(256, 176, 'attr', 'status_id', '4', '5'),
(257, 177, 'attr', 'fixed_version_id', '5', '8'),
(258, 178, 'attr', 'fixed_version_id', '5', '8'),
(259, 179, 'attr', 'status_id', '1', '4'),
(260, 179, 'attr', 'assigned_to_id', NULL, '9'),
(261, 179, 'attr', 'fixed_version_id', NULL, '7'),
(262, 179, 'attr', 'done_ratio', '0', '100'),
(263, 180, 'attr', 'tracker_id', '1', '2'),
(264, 181, 'attachment', '107', NULL, 'PtU23M6.png'),
(265, 182, 'attr', 'status_id', '1', '2'),
(266, 182, 'attr', 'done_ratio', '0', '90'),
(267, 183, 'attr', 'status_id', '2', '4'),
(268, 183, 'attr', 'assigned_to_id', '14', '6'),
(269, 183, 'attr', 'done_ratio', '0', '100'),
(270, 185, 'attr', 'status_id', '1', '4'),
(271, 185, 'attr', 'assigned_to_id', '1', '9'),
(272, 185, 'attr', 'done_ratio', '0', '100'),
(273, 186, 'attr', 'done_ratio', '100', '0'),
(274, 187, 'attr', 'status_id', '2', '4'),
(275, 187, 'attr', 'assigned_to_id', '14', '6'),
(276, 187, 'attr', 'fixed_version_id', NULL, '6'),
(277, 187, 'attr', 'done_ratio', '0', '100'),
(278, 188, 'attr', 'status_id', '2', '5'),
(279, 189, 'attr', 'status_id', '2', '4'),
(280, 189, 'attr', 'assigned_to_id', '1', '6'),
(281, 189, 'attr', 'done_ratio', '0', '100'),
(282, 190, 'attr', 'status_id', '2', '4'),
(283, 190, 'attr', 'assigned_to_id', '14', '6'),
(284, 190, 'attr', 'done_ratio', '0', '100'),
(285, 191, 'attachment', '112', NULL, '35.png'),
(286, 191, 'attr', 'status_id', '1', '4'),
(287, 191, 'attr', 'assigned_to_id', NULL, '9'),
(288, 191, 'attr', 'fixed_version_id', NULL, '7'),
(289, 191, 'attr', 'done_ratio', '0', '100'),
(290, 192, 'attachment', '113', NULL, '31.png'),
(291, 192, 'attr', 'status_id', '1', '2'),
(292, 192, 'attr', 'assigned_to_id', NULL, '1'),
(293, 192, 'attr', 'fixed_version_id', NULL, '7'),
(294, 192, 'attr', 'done_ratio', '0', '70'),
(295, 193, 'attr', 'done_ratio', '0', '100'),
(296, 195, 'attr', 'status_id', '2', '4'),
(297, 195, 'attr', 'assigned_to_id', '14', '6'),
(298, 195, 'attr', 'done_ratio', '0', '100'),
(299, 196, 'attr', 'tracker_id', '1', '2'),
(301, 198, 'attr', 'done_ratio', '0', '100'),
(302, 200, 'attr', 'done_ratio', '70', '90'),
(303, 201, 'attr', 'status_id', '2', '4'),
(304, 201, 'attr', 'assigned_to_id', '14', '6'),
(305, 201, 'attr', 'done_ratio', '0', '100'),
(306, 202, 'attr', 'status_id', '1', '2'),
(307, 202, 'attr', 'fixed_version_id', NULL, '6'),
(308, 204, 'attr', 'status_id', '2', '4'),
(309, 204, 'attr', 'assigned_to_id', '1', '9'),
(310, 204, 'attr', 'done_ratio', '90', '100'),
(311, 205, 'attachment', '117', NULL, 'pet info page.png'),
(312, 206, 'attr', 'subject', 'CRUD for customers', 'Customer interface pop-up'),
(313, 206, 'attr', 'description', 'create the possibility to add , update and delete customers', 'view selected customer'),
(314, 206, 'attr', 'status_id', '2', '4'),
(315, 206, 'attr', 'assigned_to_id', '14', '6'),
(316, 207, 'attr', 'subject', 'Customer interface pop-up', 'CRUD for customers'),
(317, 207, 'attr', 'description', 'view selected customer', 'view selected customer and update data'),
(318, 209, 'attr', 'status_id', '2', '4'),
(319, 209, 'attr', 'assigned_to_id', '14', '6'),
(320, 210, 'attr', 'status_id', '1', '4'),
(321, 210, 'attr', 'assigned_to_id', NULL, '9'),
(322, 210, 'attr', 'fixed_version_id', NULL, '8'),
(323, 211, 'attr', 'status_id', '4', '5'),
(324, 212, 'attr', 'status_id', '4', '5'),
(325, 213, 'attr', 'status_id', '4', '5'),
(326, 214, 'attr', 'status_id', '4', '5'),
(327, 215, 'attr', 'status_id', '4', '5'),
(328, 216, 'attr', 'fixed_version_id', '7', '8'),
(329, 217, 'attr', 'status_id', '2', '4'),
(330, 217, 'attr', 'assigned_to_id', '1', '9'),
(331, 217, 'attr', 'done_ratio', '0', '100'),
(332, 218, 'attr', 'status_id', '1', '4'),
(333, 218, 'attr', 'assigned_to_id', NULL, '9'),
(334, 218, 'attr', 'fixed_version_id', NULL, '8'),
(335, 219, 'attr', 'status_id', '2', '4'),
(336, 219, 'attr', 'assigned_to_id', '14', '6'),
(337, 219, 'attr', 'done_ratio', '90', '100'),
(338, 220, 'attachment', '130', NULL, 'setup-kennel_settings-General.png'),
(339, 220, 'attachment', '131', NULL, 'Run size type half day rate.png'),
(340, 220, 'attachment', '132', NULL, 'Modified.png'),
(341, 221, 'attr', 'status_id', '1', '4'),
(342, 221, 'attr', 'assigned_to_id', NULL, '9'),
(343, 221, 'attr', 'fixed_version_id', NULL, '8'),
(344, 221, 'attr', 'done_ratio', '0', '100'),
(345, 222, 'attr', 'status_id', '1', '4'),
(346, 222, 'attr', 'assigned_to_id', NULL, '9'),
(347, 222, 'attr', 'fixed_version_id', NULL, '8'),
(348, 222, 'attr', 'done_ratio', '0', '100'),
(349, 223, 'attr', 'status_id', '1', '4'),
(350, 223, 'attr', 'assigned_to_id', NULL, '9'),
(351, 223, 'attr', 'fixed_version_id', NULL, '8'),
(352, 223, 'attr', 'done_ratio', '0', '100'),
(353, 224, 'attr', 'status_id', '1', '4'),
(354, 224, 'attr', 'assigned_to_id', NULL, '9'),
(355, 224, 'attr', 'fixed_version_id', NULL, '8'),
(356, 225, 'attr', 'status_id', '1', '2'),
(357, 225, 'attr', 'fixed_version_id', NULL, '8'),
(358, 225, 'attr', 'done_ratio', '0', '40'),
(359, 226, 'attr', 'status_id', '1', '4'),
(360, 226, 'attr', 'assigned_to_id', NULL, '9'),
(361, 226, 'attr', 'fixed_version_id', NULL, '8'),
(362, 226, 'attr', 'done_ratio', '0', '100'),
(363, 227, 'attr', 'done_ratio', '0', '40'),
(364, 228, 'attr', 'status_id', '1', '2'),
(365, 229, 'attr', 'fixed_version_id', NULL, '8'),
(366, 230, 'attr', 'assigned_to_id', '9', '1'),
(367, 230, 'attr', 'done_ratio', '100', '40'),
(368, 231, 'attr', 'assigned_to_id', NULL, '1'),
(369, 233, 'attr', 'status_id', '4', '2'),
(370, 234, 'attr', 'status_id', '4', '2'),
(371, 235, 'attr', 'status_id', '2', '4'),
(372, 235, 'attr', 'assigned_to_id', '1', '9'),
(373, 235, 'attr', 'done_ratio', '40', '100'),
(374, 236, 'attachment', '133', NULL, 'runtype saturday.png'),
(375, 236, 'attr', 'done_ratio', '100', '80'),
(376, 237, 'attachment', '134', NULL, 'change 2.png'),
(377, 238, 'attachment', '135', NULL, 'Option 1.png'),
(378, 238, 'attachment', '136', NULL, 'Option 2.png'),
(379, 238, 'attachment', '137', NULL, 'option 3.png'),
(380, 238, 'attachment', '138', NULL, 'option 4.png'),
(381, 239, 'attr', 'status_id', '1', '5'),
(382, 239, 'attr', 'assigned_to_id', NULL, '1'),
(383, 241, 'attr', 'done_ratio', '80', '100'),
(384, 242, 'attr', 'status_id', '2', '4'),
(385, 242, 'attr', 'assigned_to_id', '1', '9'),
(386, 242, 'attr', 'done_ratio', '40', '80'),
(387, 243, 'attachment', '139', NULL, 'asdada.png'),
(388, 244, 'attachment', '140', NULL, '07.png'),
(389, 246, 'attr', 'status_id', '1', '4'),
(390, 246, 'attr', 'assigned_to_id', NULL, '9'),
(391, 246, 'attr', 'fixed_version_id', NULL, '8'),
(392, 246, 'attr', 'done_ratio', '0', '100'),
(393, 247, 'attr', 'status_id', '1', '4'),
(394, 247, 'attr', 'assigned_to_id', NULL, '9'),
(395, 247, 'attr', 'fixed_version_id', NULL, '8'),
(396, 247, 'attr', 'done_ratio', '0', '100'),
(397, 249, 'attr', 'status_id', '1', '4'),
(398, 249, 'attr', 'assigned_to_id', NULL, '9'),
(399, 249, 'attr', 'fixed_version_id', NULL, '8'),
(400, 249, 'attr', 'done_ratio', '0', '100'),
(401, 250, 'attr', 'fixed_version_id', '8', '9'),
(402, 251, 'attr', 'fixed_version_id', '8', '9'),
(403, 252, 'attr', 'fixed_version_id', '8', '9'),
(404, 253, 'attr', 'fixed_version_id', '8', '9'),
(405, 254, 'attr', 'status_id', '4', '5'),
(406, 255, 'attr', 'fixed_version_id', '8', '9'),
(407, 256, 'attr', 'fixed_version_id', '8', '9'),
(408, 257, 'attr', 'fixed_version_id', '8', '10'),
(409, 258, 'attr', 'status_id', '2', '4'),
(410, 259, 'attr', 'fixed_version_id', '8', NULL),
(411, 260, 'attr', 'fixed_version_id', '8', NULL),
(412, 261, 'attr', 'status_id', '4', '5'),
(413, 262, 'attr', 'status_id', '4', '5'),
(414, 263, 'attr', 'status_id', '4', '5'),
(415, 264, 'attr', 'status_id', '4', '5'),
(416, 265, 'attr', 'status_id', '4', '5'),
(417, 266, 'attr', 'status_id', '4', '5'),
(418, 267, 'attr', 'status_id', '4', '5'),
(419, 268, 'attachment', '141', NULL, '00.png'),
(420, 268, 'attachment', '142', NULL, '52.png'),
(421, 268, 'attr', 'status_id', '1', '2'),
(422, 268, 'attr', 'assigned_to_id', NULL, '9'),
(423, 268, 'attr', 'fixed_version_id', NULL, '10'),
(424, 268, 'attr', 'done_ratio', '0', '70'),
(425, 269, 'attachment', '143', NULL, '39.png'),
(426, 269, 'attr', 'status_id', '2', '4'),
(427, 269, 'attr', 'done_ratio', '70', '100'),
(428, 270, 'attachment', '145', NULL, '19.png'),
(429, 270, 'attr', 'fixed_version_id', NULL, '9'),
(430, 271, 'attr', 'status_id', '1', '2'),
(431, 271, 'attr', 'done_ratio', '0', '80'),
(432, 272, 'attr', 'status_id', '2', '4'),
(433, 272, 'attr', 'done_ratio', '80', '100'),
(434, 274, 'attachment', '146', NULL, 'a.png'),
(435, 274, 'attachment', '147', NULL, 'b.png'),
(436, 274, 'attachment', '148', NULL, 'c.png'),
(437, 274, 'attr', 'status_id', '1', '4'),
(438, 274, 'attr', 'fixed_version_id', NULL, '10'),
(439, 274, 'attr', 'done_ratio', '0', '100'),
(440, 276, 'attr', 'status_id', '1', '4'),
(441, 276, 'attr', 'done_ratio', '0', '100'),
(442, 279, 'attr', 'status_id', '2', '4'),
(443, 281, 'attachment', '149', NULL, '1.png'),
(444, 281, 'attachment', '150', NULL, '2.png'),
(445, 281, 'attachment', '151', NULL, '3.png'),
(446, 282, 'attachment', '152', NULL, '4.png'),
(447, 283, 'attr', 'assigned_to_id', '1', '9'),
(448, 284, 'attr', 'status_id', '4', '5'),
(449, 285, 'attr', 'status_id', '4', '5'),
(450, 286, 'attr', 'status_id', '4', '5'),
(451, 287, 'attr', 'status_id', '4', '5'),
(452, 288, 'attr', 'status_id', '4', '5'),
(453, 289, 'attr', 'status_id', '4', '5'),
(454, 290, 'attr', 'status_id', '4', '5'),
(455, 290, 'attr', 'assigned_to_id', NULL, '9'),
(456, 291, 'attachment', '153', NULL, '1.png'),
(457, 291, 'attr', 'status_id', '1', '4'),
(458, 291, 'attr', 'assigned_to_id', NULL, '9'),
(459, 291, 'attr', 'fixed_version_id', NULL, '11'),
(460, 291, 'attr', 'done_ratio', '0', '100'),
(461, 292, 'attachment', '154', NULL, '2.png'),
(462, 292, 'attachment', '155', NULL, '3.png'),
(463, 292, 'attr', 'status_id', '1', '4'),
(464, 292, 'attr', 'assigned_to_id', NULL, '9'),
(465, 292, 'attr', 'fixed_version_id', NULL, '11'),
(466, 292, 'attr', 'done_ratio', '0', '100'),
(467, 293, 'attr', 'status_id', '1', '4'),
(468, 293, 'attr', 'assigned_to_id', NULL, '9'),
(469, 293, 'attr', 'fixed_version_id', NULL, '11'),
(470, 293, 'attr', 'done_ratio', '0', '100'),
(471, 294, 'attr', 'done_ratio', '0', '100'),
(472, 295, 'attachment', '156', NULL, '4.png'),
(473, 295, 'attr', 'assigned_to_id', NULL, '9'),
(474, 295, 'attr', 'fixed_version_id', NULL, '11'),
(475, 295, 'attr', 'done_ratio', '0', '100'),
(476, 296, 'attachment', '157', NULL, '5.png'),
(477, 296, 'attr', 'status_id', '1', '4'),
(478, 296, 'attr', 'assigned_to_id', NULL, '9'),
(479, 296, 'attr', 'fixed_version_id', NULL, '11'),
(480, 296, 'attr', 'done_ratio', '0', '100'),
(481, 297, 'attachment', '158', NULL, '6.png'),
(482, 297, 'attr', 'status_id', '1', '4'),
(483, 297, 'attr', 'assigned_to_id', NULL, '9'),
(484, 297, 'attr', 'fixed_version_id', NULL, '11'),
(485, 297, 'attr', 'done_ratio', '0', '100');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `project_id`, `created_on`, `mail_notification`) VALUES
(1, 1, 1, '2014-03-13 11:44:21', 0),
(2, 3, 1, '2014-03-13 11:44:21', 0),
(3, 1, 2, '2014-03-13 11:54:05', 0),
(4, 3, 2, '2014-03-13 11:54:12', 0),
(5, 1, 3, '2014-03-13 12:20:39', 0),
(6, 3, 3, '2014-03-13 12:20:52', 0),
(7, 1, 4, '2014-03-13 12:29:48', 0),
(8, 3, 4, '2014-03-13 12:29:50', 0),
(9, 7, 2, '2014-03-13 13:11:14', 0),
(10, 7, 4, '2014-03-13 13:11:21', 0),
(11, 7, 3, '2014-03-13 13:11:24', 0),
(12, 6, 2, '2014-03-13 13:11:59', 0),
(13, 6, 4, '2014-03-13 13:12:01', 0),
(14, 6, 3, '2014-03-13 13:12:03', 0),
(15, 8, 1, '2014-03-13 16:15:25', 0),
(16, 9, 1, '2014-03-13 16:16:29', 0),
(17, 11, 1, '2014-03-14 16:06:29', 0),
(18, 8, 2, '2014-03-17 20:17:34', 0),
(19, 1, 5, '2014-03-25 18:33:42', 0),
(20, 12, 5, '2014-03-25 18:35:16', 0),
(21, 1, 6, '2014-04-03 16:17:52', 0),
(22, 13, 6, '2014-04-03 16:17:59', 0),
(23, 6, 7, '2014-04-15 12:55:20', 0),
(24, 1, 7, '2014-04-15 12:55:23', 0),
(25, 14, 3, '2014-04-16 10:34:26', 0),
(26, 1, 8, '2014-04-29 11:38:06', 0),
(27, 6, 8, '2014-04-29 11:38:09', 0),
(28, 7, 8, '2014-04-29 11:38:11', 0),
(29, 14, 2, '2014-04-30 11:28:47', 0),
(30, 14, 8, '2014-05-01 09:35:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_roles`
--

CREATE TABLE IF NOT EXISTS `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `member_roles`
--

INSERT INTO `member_roles` (`id`, `member_id`, `role_id`, `inherited_from`) VALUES
(2, 1, 4, NULL),
(4, 2, 3, NULL),
(7, 3, 4, NULL),
(8, 4, 3, NULL),
(10, 5, 4, NULL),
(11, 6, 3, NULL),
(12, 7, 4, NULL),
(13, 8, 3, NULL),
(14, 9, 5, NULL),
(15, 10, 5, NULL),
(16, 11, 5, NULL),
(17, 12, 5, NULL),
(18, 13, 5, NULL),
(19, 14, 5, NULL),
(20, 15, 4, NULL),
(21, 16, 5, NULL),
(22, 17, 4, NULL),
(23, 18, 4, NULL),
(24, 19, 3, NULL),
(25, 19, 4, NULL),
(26, 20, 5, NULL),
(27, 21, 4, NULL),
(28, 22, 5, NULL),
(29, 21, 3, NULL),
(30, 21, 5, NULL),
(31, 23, 5, NULL),
(32, 24, 3, NULL),
(33, 24, 4, NULL),
(34, 25, 4, NULL),
(35, 26, 3, NULL),
(36, 26, 4, NULL),
(37, 26, 5, NULL),
(38, 27, 5, NULL),
(39, 28, 5, NULL),
(40, 29, 4, NULL),
(41, 30, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `open_id_authentication_associations`
--

CREATE TABLE IF NOT EXISTS `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `open_id_authentication_nonces`
--

CREATE TABLE IF NOT EXISTS `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `homepage`, `is_public`, `parent_id`, `created_on`, `updated_on`, `identifier`, `status`, `lft`, `rgt`) VALUES
(1, 'Paws - k9 koordinator', 'Desktop to web application for pets\r\nDEV: http://54.72.97.34/k9', '', 0, NULL, '2014-03-13 11:44:02', '2014-06-11 13:01:47', 'paws', 1, 19, 20),
(2, 'EPOS', 'Foreign exchange system\r\nhttp://54.72.97.34/epos - DEV', 'http://54.72.97.34/epos', 0, NULL, '2014-03-13 11:51:16', '2014-04-16 10:49:08', 'epos', 1, 11, 12),
(3, 'Kanoo URFX', 'Foreign exchange system in UK\r\nLIVE: http://www.kanoourfx.com\r\nDEV: http://urfx.kmtel.ro\r\n', 'http://www.kanoourfx.com', 0, NULL, '2014-03-13 12:01:59', '2014-04-03 17:46:05', 'urfx', 1, 15, 16),
(4, 'K-FX', 'My Hollyday Money\r\nDEV: http://instantwebsitesolutions.co.uk/kfx/live/\r\nDEV: http://kfx.kmtel.ro', '', 0, NULL, '2014-03-13 12:29:41', '2014-04-03 17:46:18', 'kfx', 1, 13, 14),
(5, 'Dekadecor', 'Construction website\r\nLive: http://www.dekadecor.ro\r\nDev: http://www.kmtel.ro/dekadecor', 'http://www.dekadecor.ro', 0, NULL, '2014-03-25 18:33:29', '2014-03-28 12:39:29', 'dekadecor', 1, 5, 6),
(6, 'Anvelope Turbo', 'LIVE: http://www.anvelope-turbo.ro\r\nDEMO: http://54.72.97.34/anvelope-turbo', '', 0, NULL, '2014-04-03 16:16:49', '2014-04-04 15:30:39', 'anvelope-turbo', 1, 1, 2),
(7, 'Doplhin', '', '', 0, NULL, '2014-04-15 12:53:46', '2014-04-15 12:53:46', 'doplhin', 1, 7, 8),
(8, 'Convent Garden', 'http://coventgardenfx.com/cms/', 'http://coventgardenfx.com/cms/', 0, NULL, '2014-04-29 11:37:11', '2014-04-29 11:37:11', 'convetgarden', 1, 3, 4),
(9, 'Opencommunity', 'Large social media app\r\nhttp://www.opencommunity.ro', '', 0, NULL, '2014-06-13 11:47:56', '2014-06-13 11:48:14', 'oc', 1, 17, 18),
(10, 'Electron records', 'Electron records - various music, project CMS', 'http://www.electronrecords.com', 0, NULL, '2014-06-17 16:34:26', '2014-06-17 16:34:26', 'electron-records', 1, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `projects_trackers`
--

CREATE TABLE IF NOT EXISTS `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_trackers`
--

INSERT INTO `projects_trackers` (`project_id`, `tracker_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE IF NOT EXISTS `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `repositories`
--

CREATE TABLE IF NOT EXISTS `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `position`, `assignable`, `builtin`, `permissions`, `issues_visibility`) VALUES
(1, 'Non member', 1, 1, 1, '--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default'),
(2, 'Anonymous', 2, 1, 2, '--- \n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default'),
(3, 'Manager', 3, 1, 0, '--- \n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_news\n- :comment_news\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_gantt\n', 'all'),
(4, 'Developer', 4, 1, 0, '--- \n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n', 'default'),
(5, 'Reporter', 5, 1, 0, '--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('1'),
('10'),
('100'),
('101'),
('102'),
('103'),
('104'),
('105'),
('106'),
('107'),
('108'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('2'),
('20'),
('20090214190337'),
('20090312172426'),
('20090312194159'),
('20090318181151'),
('20090323224724'),
('20090401221305'),
('20090401231134'),
('20090403001910'),
('20090406161854'),
('20090425161243'),
('20090503121501'),
('20090503121505'),
('20090503121510'),
('20090614091200'),
('20090704172350'),
('20090704172355'),
('20090704172358'),
('20091010093521'),
('20091017212227'),
('20091017212457'),
('20091017212644'),
('20091017212938'),
('20091017213027'),
('20091017213113'),
('20091017213151'),
('20091017213228'),
('20091017213257'),
('20091017213332'),
('20091017213444'),
('20091017213536'),
('20091017213642'),
('20091017213716'),
('20091017213757'),
('20091017213835'),
('20091017213910'),
('20091017214015'),
('20091017214107'),
('20091017214136'),
('20091017214236'),
('20091017214308'),
('20091017214336'),
('20091017214406'),
('20091017214440'),
('20091017214519'),
('20091017214611'),
('20091017214644'),
('20091017214720'),
('20091017214750'),
('20091025163651'),
('20091108092559'),
('20091114105931'),
('20091123212029'),
('20091205124427'),
('20091220183509'),
('20091220183727'),
('20091220184736'),
('20091225164732'),
('20091227112908'),
('20100129193402'),
('20100129193813'),
('20100221100219'),
('20100313132032'),
('20100313171051'),
('20100705164950'),
('20100819172912'),
('20101104182107'),
('20101107130441'),
('20101114115114'),
('20101114115359'),
('20110220160626'),
('20110223180944'),
('20110223180953'),
('20110224000000'),
('20110226120112'),
('20110226120132'),
('20110227125750'),
('20110228000000'),
('20110228000100'),
('20110401192910'),
('20110408103312'),
('20110412065600'),
('20110511000000'),
('20110902000000'),
('21'),
('22'),
('23'),
('24'),
('25'),
('26'),
('27'),
('28'),
('29'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('66'),
('67'),
('68'),
('69'),
('7'),
('70'),
('71'),
('72'),
('73'),
('74'),
('75'),
('76'),
('77'),
('78'),
('79'),
('8'),
('80'),
('81'),
('82'),
('83'),
('84'),
('85'),
('86'),
('87'),
('88'),
('89'),
('9'),
('90'),
('91'),
('92'),
('93'),
('94'),
('95'),
('96'),
('97'),
('98'),
('99');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `updated_on`) VALUES
(1, 'commit_logtime_enabled', '1', '2014-03-13 12:06:04'),
(2, 'sys_api_enabled', '1', '2014-03-13 12:06:04'),
(3, 'enabled_scm', '--- \n- Subversion\n- Darcs\n- Mercurial\n- Cvs\n- Bazaar\n- Git\n', '2014-03-13 12:06:04'),
(4, 'autofetch_changesets', '1', '2014-03-13 12:06:04'),
(5, 'sys_api_key', '', '2014-03-13 12:06:04'),
(6, 'commit_ref_keywords', 'refs,references,IssueID', '2014-03-13 12:06:04'),
(7, 'repository_log_display_limit', '100', '2014-03-13 12:06:04'),
(8, 'commit_fix_status_id', '0', '2014-03-13 12:06:04'),
(9, 'commit_logtime_activity_id', '0', '2014-03-13 12:06:04'),
(10, 'commit_fix_done_ratio', '100', '2014-03-13 12:06:04'),
(11, 'commit_fix_keywords', 'fixes,closes', '2014-03-13 12:06:04'),
(12, 'diff_max_lines_displayed', '1500', '2014-03-13 12:07:13'),
(13, 'wiki_compression', '', '2014-03-13 12:07:13'),
(14, 'file_max_size_displayed', '512', '2014-03-13 12:07:13'),
(15, 'attachment_max_size', '5120', '2014-03-13 12:07:13'),
(16, 'welcome_text', '!http://www.kmtel.ro/img/kmtel.jpg!', '2014-03-13 12:46:18'),
(17, 'per_page_options', '25,50,100', '2014-03-13 12:07:13'),
(18, 'text_formatting', 'textile', '2014-03-13 12:07:13'),
(19, 'activity_days_default', '30', '2014-03-13 12:07:13'),
(20, 'feeds_limit', '15', '2014-03-13 12:07:13'),
(21, 'repositories_encodings', '', '2014-03-13 12:07:13'),
(22, 'protocol', 'http', '2014-03-13 12:07:13'),
(23, 'cache_formatted_text', '0', '2014-03-13 12:07:13'),
(24, 'host_name', 'localhost:3000', '2014-03-13 12:07:13'),
(25, 'app_title', 'KM TEL - Project Management', '2014-03-13 12:08:22'),
(26, 'bcc_recipients', '1', '2014-03-17 20:20:16'),
(27, 'emails_header', '', '2014-03-17 20:20:16'),
(28, 'default_notification_option', 'all', '2014-03-17 20:20:16'),
(29, 'plain_text_mail', '0', '2014-03-17 20:20:16'),
(30, 'emails_footer', '\r\n-- \r\n\r\nKind regards,\r\n-----------------------------\r\nTodorescu Tudor\r\nWeb Developer - KMTEL Software\r\nhttp://www.kmtel.ro\r\nwhitejuly.art@gmail.com\r\nTel. +40740815174', '2014-04-02 08:36:47'),
(31, 'notified_events', '--- \n- issue_added\n- issue_updated\n- issue_note_added\n- issue_status_updated\n- issue_priority_updated\n- news_added\n- news_comment_added\n- document_added\n- file_added\n- message_posted\n- wiki_content_added\n- wiki_content_updated\n', '2014-04-02 08:36:46'),
(32, 'mail_from', 'redmine@example.net', '2014-03-17 20:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `time_entries`
--

CREATE TABLE IF NOT EXISTS `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `time_entries`
--

INSERT INTO `time_entries` (`id`, `project_id`, `user_id`, `issue_id`, `hours`, `comments`, `activity_id`, `spent_on`, `tyear`, `tmonth`, `tweek`, `created_on`, `updated_on`) VALUES
(1, 3, 1, 1, 5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:18:44', '2014-03-13 12:18:44'),
(2, 3, 1, 2, 5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:23:25', '2014-03-13 12:23:25'),
(3, 3, 1, 3, 3, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:24:26', '2014-03-13 12:24:26'),
(4, 3, 1, 4, 5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:25:54', '2014-03-13 12:25:54'),
(5, 3, 1, 5, 5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:26:41', '2014-03-13 12:26:41'),
(6, 4, 1, 6, 6, '', 8, '2014-03-13', 2014, 3, 11, '2014-03-13 12:36:47', '2014-03-13 12:36:47'),
(7, 4, 1, 7, 2, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:37:58', '2014-03-13 12:37:58'),
(8, 4, 1, 8, 3, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 12:39:05', '2014-03-13 12:39:05'),
(9, 3, 1, 9, 3, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 13:56:08', '2014-03-13 13:56:08'),
(10, 3, 1, 10, 4, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 13:56:34', '2014-03-13 13:56:34'),
(11, 3, 1, 11, 4.5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 13:58:51', '2014-03-13 13:58:51'),
(12, 3, 1, 12, 2, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 13:59:23', '2014-03-13 13:59:23'),
(13, 3, 1, 13, 6, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 14:00:08', '2014-03-13 14:00:08'),
(14, 3, 1, 14, 3, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 14:01:49', '2014-03-13 14:01:49'),
(15, 3, 1, 15, 5, '', 9, '2014-03-13', 2014, 3, 11, '2014-03-13 14:03:02', '2014-03-13 14:03:02'),
(16, 1, 1, 2403, 8.5, '', 9, '2014-03-14', 2014, 3, 11, '2014-03-14 16:04:07', '2014-03-14 16:04:07'),
(17, 1, 1, 2404, 6.5, '', 9, '2014-03-14', 2014, 3, 11, '2014-03-14 16:05:51', '2014-03-14 16:05:51'),
(18, 1, 1, 2405, 10, '', 9, '2014-03-14', 2014, 3, 11, '2014-03-14 16:07:35', '2014-03-14 16:07:35'),
(19, 1, 1, 2406, 10, '', 9, '2014-03-14', 2014, 3, 11, '2014-03-14 16:08:27', '2014-03-14 16:08:27'),
(20, 1, 1, 2407, 8, '', 9, '2014-03-14', 2014, 3, 11, '2014-03-14 16:09:01', '2014-03-14 16:09:01'),
(21, 1, 1, 2416, 8, '', 8, '2014-03-17', 2014, 3, 12, '2014-03-17 16:18:19', '2014-03-17 16:18:19'),
(22, 1, 1, 2416, 3, '', 8, '2014-03-19', 2014, 3, 12, '2014-03-19 14:32:08', '2014-03-19 14:32:08'),
(23, 3, 1, 2421, 3, '', 9, '2014-03-23', 2014, 3, 12, '2014-03-23 13:36:08', '2014-03-23 13:36:08'),
(24, 3, 1, 2420, 4, '', 9, '2014-03-23', 2014, 3, 12, '2014-03-23 13:42:08', '2014-03-23 13:42:08'),
(25, 3, 1, 2420, 3, '', 9, '2014-03-23', 2014, 3, 12, '2014-03-23 20:53:24', '2014-03-23 20:53:24'),
(26, 4, 1, 2413, 0.5, '', 9, '2014-03-24', 2014, 3, 13, '2014-03-24 11:49:21', '2014-03-24 11:49:21'),
(27, 4, 1, 2410, 0.25, '', 8, '2014-03-24', 2014, 3, 13, '2014-03-24 12:05:08', '2014-03-24 12:05:08'),
(28, 4, 1, 2412, 0.25, '', 8, '2014-03-24', 2014, 3, 13, '2014-03-24 12:05:27', '2014-03-24 12:05:27'),
(29, 4, 1, 2411, 2, '', 9, '2014-03-24', 2014, 3, 13, '2014-03-24 12:05:46', '2014-03-24 12:05:46'),
(30, 1, 1, 2418, 3, '', 9, '2014-03-25', 2014, 3, 13, '2014-03-25 20:02:08', '2014-03-25 20:02:08'),
(31, 1, 1, 2418, 2, '', 9, '2014-03-25', 2014, 3, 13, '2014-03-25 20:03:01', '2014-03-25 20:03:01'),
(32, 1, 1, 2418, 2, '', 9, '2014-03-26', 2014, 3, 13, '2014-03-25 23:47:43', '2014-03-25 23:47:43'),
(33, 5, 1, 2423, 2, '', 9, '2014-03-28', 2014, 3, 13, '2014-03-28 12:34:41', '2014-03-28 12:34:41'),
(34, 5, 1, 2422, 3.5, '', 9, '2014-03-28', 2014, 3, 13, '2014-03-28 12:35:25', '2014-03-28 12:35:25'),
(35, 5, 1, 2422, 0.5, '', 9, '2014-03-30', 2014, 3, 13, '2014-03-30 20:09:35', '2014-03-30 20:09:35'),
(36, 1, 1, 2418, 2, '', 9, '2014-03-31', 2014, 3, 14, '2014-03-30 21:14:47', '2014-03-30 21:14:47'),
(37, 1, 1, 2418, 6, '', 9, '2014-03-31', 2014, 3, 14, '2014-03-31 14:25:35', '2014-03-31 14:25:35'),
(38, 3, 1, 2420, 0.5, '', 9, '2014-04-02', 2014, 4, 14, '2014-04-02 08:23:44', '2014-04-02 08:23:44'),
(39, 1, 1, 2418, 7, '', 9, '2014-04-02', 2014, 4, 14, '2014-04-02 17:43:14', '2014-04-02 17:43:14'),
(40, 6, 1, 2428, 2, '', 9, '2014-04-03', 2014, 4, 14, '2014-04-03 16:18:18', '2014-04-03 16:18:18'),
(41, 3, 1, 2427, 1, '', 9, '2014-04-03', 2014, 4, 14, '2014-04-03 17:15:34', '2014-04-03 17:15:34'),
(42, 6, 1, 2429, 8, '', 9, '2014-04-04', 2014, 4, 14, '2014-04-04 15:38:04', '2014-04-04 15:38:04'),
(43, 1, 1, 2417, 4, '', 9, '2014-04-06', 2014, 4, 14, '2014-04-06 19:21:23', '2014-04-06 19:21:23'),
(44, 1, 1, 2418, 0.5, '', 9, '2014-04-07', 2014, 4, 15, '2014-04-07 01:02:58', '2014-04-07 01:02:58'),
(45, 1, 1, 2432, 5, '', 9, '2014-04-07', 2014, 4, 15, '2014-04-07 01:13:34', '2014-04-07 01:13:34'),
(46, 3, 1, 2427, 1, '', 9, '2014-04-08', 2014, 4, 15, '2014-04-08 12:45:23', '2014-04-08 12:45:23'),
(47, 1, 1, 2434, 3, '', 9, '2014-04-09', 2014, 4, 15, '2014-04-08 23:55:27', '2014-04-08 23:55:27'),
(48, 1, 1, 2425, 2, '', 8, '2014-04-09', 2014, 4, 15, '2014-04-08 23:56:26', '2014-04-08 23:56:26'),
(49, 1, 1, 2434, 7, '', 9, '2014-04-10', 2014, 4, 15, '2014-04-10 16:34:57', '2014-04-10 16:34:57'),
(50, 1, 1, 2432, 2, '', 9, '2014-04-10', 2014, 4, 15, '2014-04-10 16:42:23', '2014-04-10 16:42:23'),
(51, 1, 1, 2435, 6, '', 9, '2014-04-10', 2014, 4, 15, '2014-04-10 16:43:44', '2014-04-10 16:43:44'),
(52, 1, 1, 2436, 4.5, '', 9, '2014-04-14', 2014, 4, 16, '2014-04-14 13:13:37', '2014-04-14 13:13:37'),
(53, 1, 1, 2437, 5, '', 9, '2014-04-15', 2014, 4, 16, '2014-04-15 14:31:31', '2014-04-15 14:31:31'),
(54, 2, 1, 2439, 1.5, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:30:08', '2014-04-16 15:30:08'),
(55, 2, 1, 2440, 6, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:30:22', '2014-04-16 15:30:22'),
(56, 2, 1, 2441, 6, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:30:38', '2014-04-16 15:30:38'),
(57, 2, 1, 2442, 6, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:30:59', '2014-04-16 15:30:59'),
(58, 2, 1, 2443, 3, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:31:10', '2014-04-16 15:31:10'),
(59, 2, 1, 2444, 4, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:31:26', '2014-04-16 15:31:26'),
(60, 2, 1, 2445, 1, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:31:37', '2014-04-16 15:31:37'),
(61, 2, 1, 2447, 2, '', 9, '2014-04-16', 2014, 4, 16, '2014-04-16 15:31:45', '2014-04-16 15:31:45'),
(62, 3, 1, 2446, 2, '', 9, '2014-04-22', 2014, 4, 17, '2014-04-22 10:25:00', '2014-04-22 10:25:00'),
(63, 4, 1, 2448, 3, '', 9, '2014-04-23', 2014, 4, 17, '2014-04-23 13:07:48', '2014-04-23 13:07:48'),
(64, 1, 1, 2449, 1, '', 9, '2014-04-23', 2014, 4, 17, '2014-04-23 15:31:44', '2014-04-23 15:31:44'),
(65, 1, 1, 2450, 10, '', 9, '2014-04-25', 2014, 4, 17, '2014-04-25 17:58:40', '2014-04-25 17:58:40'),
(66, 3, 1, 2452, 5, '', 9, '2014-04-30', 2014, 4, 18, '2014-04-30 11:19:14', '2014-04-30 11:19:14'),
(67, 3, 1, 2455, 0.5, '', 9, '2014-04-30', 2014, 4, 18, '2014-04-30 13:29:17', '2014-04-30 13:29:17'),
(68, 1, 1, 2456, 8, '', 9, '2014-04-30', 2014, 4, 18, '2014-04-30 16:44:21', '2014-04-30 16:44:21'),
(69, 1, 1, 2450, 4, '', 9, '2014-04-30', 2014, 4, 18, '2014-04-30 16:45:35', '2014-04-30 16:45:35'),
(70, 2, 1, 2463, 4.5, '', 9, '2014-05-05', 2014, 5, 19, '2014-05-05 10:35:54', '2014-05-05 10:35:54'),
(71, 2, 1, 2458, 3, '', 9, '2014-05-05', 2014, 5, 19, '2014-05-05 10:36:15', '2014-05-05 10:36:15'),
(72, 6, 1, 2451, 32, '', 9, '2014-05-05', 2014, 5, 19, '2014-05-05 10:53:25', '2014-05-05 10:53:25'),
(73, 1, 1, 2462, 2, '', 9, '2014-05-06', 2014, 5, 19, '2014-05-05 21:30:20', '2014-05-05 21:30:20'),
(74, 1, 1, 2465, 2, '', 9, '2014-05-06', 2014, 5, 19, '2014-05-05 21:33:40', '2014-05-05 21:33:40'),
(75, 1, 1, 2459, 0.5, '', 9, '2014-05-06', 2014, 5, 19, '2014-05-05 21:40:59', '2014-05-05 21:40:59'),
(76, 2, 14, 2468, 5, '', 9, '2014-05-06', 2014, 5, 19, '2014-05-06 12:17:12', '2014-05-06 12:17:12'),
(77, 2, 14, 2467, 4, '', 9, '2014-05-06', 2014, 5, 19, '2014-05-06 12:48:34', '2014-05-06 12:48:34'),
(78, 1, 1, 2466, 3.5, '', 9, '2014-05-07', 2014, 5, 19, '2014-05-07 09:35:36', '2014-05-07 09:35:36'),
(79, 1, 9, 2466, 0.01, 'NOthing to review.', 9, '2014-05-07', 2014, 5, 19, '2014-05-07 15:34:56', '2014-05-07 15:34:56'),
(80, 2, 14, 2472, 2, '', 9, '2014-05-08', 2014, 5, 19, '2014-05-08 15:33:30', '2014-05-08 15:33:30'),
(81, 4, 1, 2474, 3.5, '', 9, '2014-05-09', 2014, 5, 19, '2014-05-09 13:56:53', '2014-05-09 13:56:53'),
(82, 2, 14, 2471, 4, '', 9, '2014-05-09', 2014, 5, 19, '2014-05-09 16:44:40', '2014-05-09 16:44:40'),
(83, 1, 1, 2460, 0.5, '', 9, '2014-05-10', 2014, 5, 19, '2014-05-10 11:33:45', '2014-05-10 11:33:45'),
(84, 1, 1, 2461, 4, '', 9, '2014-05-10', 2014, 5, 19, '2014-05-10 11:35:41', '2014-05-10 11:35:41'),
(85, 2, 14, 2475, 3, '', 9, '2014-05-10', 2014, 5, 19, '2014-05-10 16:29:37', '2014-05-10 16:29:37'),
(87, 1, 1, 2480, 6, '', 9, '2014-05-11', 2014, 5, 19, '2014-05-11 11:32:42', '2014-05-11 11:32:42'),
(88, 1, 1, 2461, 4, '', 9, '2014-05-13', 2014, 5, 20, '2014-05-12 21:14:02', '2014-05-12 21:14:02'),
(89, 1, 1, 2461, 2, '', 9, '2014-05-13', 2014, 5, 20, '2014-05-12 21:24:03', '2014-05-12 21:24:03'),
(90, 2, 14, 2478, 3, '', 9, '2014-05-13', 2014, 5, 20, '2014-05-13 07:16:51', '2014-05-13 07:16:51'),
(91, 1, 1, 2461, 1, '', 9, '2014-05-14', 2014, 5, 20, '2014-05-14 08:33:03', '2014-05-14 08:33:03'),
(92, 1, 9, 2466, 0.1, 'feedback', 8, '2014-05-14', 2014, 5, 20, '2014-05-14 21:28:53', '2014-05-14 21:28:53'),
(93, 2, 14, 2476, 3, '', 9, '2014-05-15', 2014, 5, 20, '2014-05-15 10:29:43', '2014-05-15 10:29:43'),
(94, 2, 14, 2477, 3, '', 9, '2014-05-15', 2014, 5, 20, '2014-05-15 10:31:37', '2014-05-15 10:31:37'),
(95, 1, 1, 2493, 12, '', 9, '2014-05-16', 2014, 5, 20, '2014-05-16 15:12:32', '2014-05-16 15:12:32'),
(96, 1, 1, 2486, 2, '', 9, '2014-05-18', 2014, 5, 20, '2014-05-18 18:57:23', '2014-05-18 18:57:23'),
(97, 1, 1, 2488, 0.5, '', 9, '2014-05-18', 2014, 5, 20, '2014-05-18 18:58:45', '2014-05-18 18:58:45'),
(98, 1, 1, 2485, 0.5, '', 9, '2014-05-18', 2014, 5, 20, '2014-05-18 19:01:09', '2014-05-18 19:01:09'),
(99, 1, 1, 2484, 0.5, '', 9, '2014-05-18', 2014, 5, 20, '2014-05-18 19:01:28', '2014-05-18 19:01:28'),
(100, 1, 1, 2491, 10, '', 9, '2014-05-20', 2014, 5, 21, '2014-05-19 21:06:20', '2014-05-19 21:06:20'),
(101, 1, 1, 2496, 3, '', 9, '2014-05-20', 2014, 5, 21, '2014-05-19 21:09:13', '2014-05-19 21:09:13'),
(102, 1, 1, 2482, 1.5, '', 9, '2014-05-20', 2014, 5, 21, '2014-05-19 21:11:16', '2014-05-19 21:11:16'),
(103, 1, 1, 2493, 8, '', 9, '2014-05-21', 2014, 5, 21, '2014-05-21 12:35:56', '2014-05-21 12:35:56'),
(104, 1, 1, 2493, 4, '', 9, '2014-05-31', 2014, 5, 22, '2014-05-31 09:40:51', '2014-05-31 09:40:51'),
(105, 1, 1, 2491, 10, '', 9, '2014-05-31', 2014, 5, 22, '2014-05-31 14:06:21', '2014-05-31 14:06:21'),
(106, 1, 1, 2497, 4, '', 9, '2014-06-03', 2014, 6, 23, '2014-06-02 23:25:26', '2014-06-02 23:25:26'),
(107, 1, 1, 2498, 2, '', 9, '2014-06-03', 2014, 6, 23, '2014-06-02 23:29:37', '2014-06-02 23:29:37'),
(108, 1, 1, 2498, 4, '', 9, '2014-06-03', 2014, 6, 23, '2014-06-02 23:31:17', '2014-06-02 23:31:17'),
(109, 1, 1, 2499, 10, '', 9, '2014-06-03', 2014, 6, 23, '2014-06-02 23:32:36', '2014-06-02 23:32:36'),
(110, 1, 1, 2500, 6, '', 9, '2014-06-03', 2014, 6, 23, '2014-06-03 17:05:48', '2014-06-03 17:05:48'),
(111, 1, 1, 2500, 4, '', 9, '2014-06-04', 2014, 6, 23, '2014-06-04 12:40:06', '2014-06-04 12:40:06'),
(112, 1, 1, 2501, 2, '', 9, '2014-06-05', 2014, 6, 23, '2014-06-05 12:49:28', '2014-06-05 12:49:28'),
(113, 1, 1, 2502, 6, '', 8, '2014-06-06', 2014, 6, 23, '2014-06-05 23:01:46', '2014-06-05 23:01:46'),
(114, 1, 1, 2502, 2, '', 9, '2014-06-06', 2014, 6, 23, '2014-06-06 13:47:34', '2014-06-06 13:47:34'),
(115, 1, 1, 2490, 20, '', 9, '2014-06-11', 2014, 6, 24, '2014-06-11 13:34:47', '2014-06-11 13:34:47'),
(116, 1, 1, 2503, 2, '', 9, '2014-06-11', 2014, 6, 24, '2014-06-11 16:02:41', '2014-06-11 16:02:41'),
(117, 1, 1, 2504, 8, '', 9, '2014-06-11', 2014, 6, 24, '2014-06-11 16:30:26', '2014-06-11 16:30:26'),
(118, 1, 1, 2504, 2, '', 9, '2014-06-12', 2014, 6, 24, '2014-06-12 13:11:00', '2014-06-12 13:11:00'),
(119, 1, 1, 2506, 3, '', 9, '2014-06-28', 2014, 6, 26, '2014-06-28 16:16:34', '2014-06-28 16:16:34'),
(120, 1, 1, 2507, 8, '', 9, '2014-06-28', 2014, 6, 26, '2014-06-28 16:17:55', '2014-06-28 16:17:55'),
(121, 1, 1, 2508, 2, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:51:33', '2014-06-30 15:51:33'),
(122, 1, 1, 2509, 3, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:53:31', '2014-06-30 15:53:31'),
(123, 1, 1, 2510, 2, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:55:26', '2014-06-30 15:55:26'),
(124, 1, 1, 2511, 8, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:56:50', '2014-06-30 15:56:50'),
(125, 1, 1, 2512, 10, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:58:28', '2014-06-30 15:58:28'),
(126, 1, 1, 2513, 8, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 15:59:27', '2014-06-30 15:59:27'),
(127, 1, 1, 2514, 0.5, '', 9, '2014-06-30', 2014, 6, 27, '2014-06-30 16:00:59', '2014-06-30 16:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `action`, `value`, `created_on`) VALUES
(2, 1, 'feeds', '00f43b4f11d79ea2e95b829fb42f2a0a0ac93c1c', '2014-03-13 11:39:35'),
(4, 3, 'feeds', '95e502db0c651e45be16abdfecea65871f660965', '2014-03-13 12:05:54'),
(6, 6, 'feeds', 'cb1ef124e875c35172356674bb525958c2e64a65', '2014-03-13 13:12:33'),
(8, 7, 'feeds', '0cd8675164cf975e8e1418261c38d03e1286690b', '2014-03-13 13:13:30'),
(11, 9, 'feeds', 'c9645b0d5355615e0317b4b162c3aad9176e4565', '2014-03-14 16:12:35'),
(13, 12, 'feeds', '000911bebed1d3d9cfff1707528f5be563939ed5', '2014-03-25 18:39:08'),
(15, 13, 'feeds', 'b89c13dbd0d092ca0cfbf07b4f9f981f714c8b25', '2014-04-08 19:43:53'),
(17, 14, 'feeds', '1ee6ecc3c1249c431f901fb14bd2f5a279c29178', '2014-04-16 10:35:09'),
(18, 14, 'recovery', 'c9de286dfa4482821323fb78dafac89046821a2a', '2014-05-06 09:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE IF NOT EXISTS `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`id`, `name`, `is_in_chlog`, `position`, `is_in_roadmap`) VALUES
(1, 'Bug', 1, 1, 0),
(2, 'Feature', 1, 2, 1),
(3, 'Support', 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(30) NOT NULL DEFAULT '',
  `mail` varchar(60) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `hashed_password`, `firstname`, `lastname`, `mail`, `admin`, `status`, `last_login_on`, `language`, `auth_source_id`, `created_on`, `updated_on`, `type`, `identity_url`, `mail_notification`, `salt`) VALUES
(1, 'admin', '8578fb04ad097d7632817de80cd56c0732b7aa2f', 'Todorescu', 'Tudor', 'whitejuly.art@gmail.com', 1, 1, '2014-06-30 11:49:41', 'en', NULL, '2014-03-13 11:33:51', '2014-06-30 11:49:41', 'User', NULL, 'all', '04138c6587deec76ea87a7c6a2fe1a9b'),
(2, '', '', '', 'Anonymous', '', 0, 0, NULL, '', NULL, '2014-03-13 11:38:03', '2014-03-13 11:38:03', 'AnonymousUser', NULL, 'only_my_events', NULL),
(3, 'voicu.radu', '88fbeb3eb88cf56df825f38b2c10a2eb1a4f53da', 'Voicu', 'Radu', 'gvoics@gmail.com', 1, 1, '2014-04-02 08:37:40', 'en', NULL, '2014-03-13 11:42:18', '2014-04-02 08:37:40', 'User', NULL, 'only_my_events', '7a772d092a7fe6c4a29dd7d23d774808'),
(4, '', '', '', 'Administrators', '', 0, 1, NULL, '', NULL, '2014-03-13 13:08:31', '2014-03-13 13:08:31', 'Group', NULL, '', NULL),
(5, '', '', '', 'Clients', '', 0, 1, NULL, '', NULL, '2014-03-13 13:08:41', '2014-03-13 13:08:41', 'Group', NULL, '', NULL),
(6, 'luke.deakin', '4c80169801f36437e4232dc0ed4f8d2d69879db6', 'Luke', 'Deakin', 'luke@instantwebsitesolutions.co.uk', 0, 1, '2014-04-29 11:23:01', 'en', NULL, '2014-03-13 13:10:01', '2014-04-29 11:23:01', 'User', NULL, 'only_my_events', '44bb33c4ff5ee709fdce2620b0562c33'),
(7, 'farrukh.choudhry', 'a93e5ebe71d180fe0125b6621a84a8c7d931fa1f', 'Farrukh', 'Choudhry', 'farrukh@instantwebsitesolutions.co.uk', 0, 1, '2014-05-07 21:00:31', 'en', NULL, '2014-03-13 13:11:07', '2014-05-07 21:00:31', 'User', NULL, 'only_my_events', '93b566275c4dede8bb27b43ce9be3eca'),
(8, 'rusan.alexandru', '6c7ce8f0e898a66cb68d7a868d09e3f9ab77d548', 'Rusan', 'Alexandru', 'rusan.alexandru@kmtel.ro', 0, 1, NULL, 'en', NULL, '2014-03-13 16:00:59', '2014-03-13 16:10:55', 'User', NULL, 'only_my_events', '922d0ed0faefc447ad1af0dca584df7b'),
(9, 'richard.witherill', '9008cae2fc0312f4d61f512b9cba207304899e22', 'Richard', 'Witherill', 'richard.witherill@kmtel.ro', 0, 1, '2014-06-27 11:29:39', 'en', NULL, '2014-03-13 16:02:12', '2014-06-27 11:29:39', 'User', NULL, 'only_my_events', '96cc5768d3e9bb4ae1431e69977ef254'),
(10, '', '', '', 'Developers', '', 0, 1, NULL, '', NULL, '2014-03-13 16:11:26', '2014-03-13 16:11:26', 'Group', NULL, '', NULL),
(11, 'dorian.bolca@kmtel.ro', 'bebf6b1bc87b346fd0473571c52756d6ef0847b2', 'Dorian', 'Bolca', 'dorian.bolca@kmtel.ro', 0, 1, NULL, 'en', NULL, '2014-03-13 16:14:51', '2014-03-13 16:14:51', 'User', NULL, 'only_my_events', '11789b6cb721799422de076789c1716b'),
(12, 'cosmin.cosma', '8c6584d69683c0a8ddb0100c6d6c15db57e3c3b2', 'Cosmin', 'Cosma', 'cosma_cosmin85@yahoo.com', 0, 1, '2014-03-25 18:39:07', 'ro', NULL, '2014-03-25 18:35:04', '2014-03-25 18:39:07', 'User', NULL, 'all', '68301cfdb8382900a22519800c4918f4'),
(13, 'dragos.mihaltan', '3d6daece1bcdf7f30f42029664336774e5bf4dfa', 'Dragos', 'Mihaltan', 'mihaltandragos@yahoo.com', 0, 1, '2014-04-08 19:43:52', 'en', NULL, '2014-04-03 16:15:49', '2014-04-08 19:43:52', 'User', NULL, 'all', 'e424d4c38dc66a81972f9a3e2aa93331'),
(14, 'igor.chiriac', 'c1532caa147bd315fa916154e145008ff6157f12', 'Igor', 'Chiriac', 'igorchiriac1991@gmail.com', 0, 1, '2014-05-16 19:16:33', 'en', NULL, '2014-04-16 10:34:13', '2014-05-16 19:16:33', 'User', NULL, 'all', '4165508a3ceddebdfeb8899a2bdf1f8c');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `others`, `hide_mail`, `time_zone`) VALUES
(1, 2, '--- {}\n\n', 0, NULL),
(2, 1, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(3, 3, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(4, 6, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(5, 7, '--- \n:comments_sorting: asc\n:no_self_notified: true\n:warn_on_leaving_unsaved: "1"\n', 0, 'London'),
(6, 8, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(7, 9, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'La Paz'),
(8, 11, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(9, 12, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(10, 13, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest'),
(11, 14, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Bucharest');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `project_id`, `name`, `description`, `effective_date`, `created_on`, `updated_on`, `wiki_page_title`, `status`, `sharing`) VALUES
(1, 1, 'Sprint 1', '', NULL, '2014-03-13 13:36:21', '2014-06-02 23:41:37', '', 'open', 'none'),
(2, 1, 'Sprint 2', '', NULL, '2014-03-17 14:31:46', '2014-06-02 23:41:45', '', 'open', 'none'),
(3, 1, 'Sprint 3', '', NULL, '2014-04-06 19:19:13', '2014-04-06 19:19:13', '', 'open', 'none'),
(4, 2, 'Sprint 1', '', NULL, '2014-04-16 15:23:56', '2014-04-16 15:23:56', '', 'open', 'none'),
(5, 1, 'Sprint 4', '', NULL, '2014-04-23 10:27:07', '2014-04-23 10:27:07', '', 'open', 'none'),
(6, 2, 'Sprint 2', '', NULL, '2014-04-30 11:29:10', '2014-04-30 11:29:10', NULL, 'open', 'none'),
(7, 1, 'Sprint 5', '', NULL, '2014-05-05 18:52:48', '2014-05-05 18:52:48', NULL, 'open', 'none'),
(8, 1, 'Sprint 6', '', NULL, '2014-05-05 21:36:09', '2014-05-05 21:36:09', NULL, 'open', 'none'),
(9, 1, 'Sprint 7', '', NULL, '2014-06-02 23:41:29', '2014-06-02 23:41:29', '', 'open', 'none'),
(10, 1, 'Sprint 8', '', NULL, '2014-06-02 23:43:56', '2014-06-02 23:43:56', '', 'open', 'none'),
(11, 1, 'Sprint 9', '', NULL, '2014-06-22 11:16:22', '2014-06-22 11:16:22', NULL, 'open', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `watchers`
--

CREATE TABLE IF NOT EXISTS `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `watchers`
--

INSERT INTO `watchers` (`id`, `watchable_type`, `watchable_id`, `user_id`) VALUES
(1, 'Issue', 9, 7),
(2, 'Issue', 9, 6),
(3, 'Issue', 9, 1),
(4, 'Issue', 9, 3),
(5, 'Issue', 10, 7),
(6, 'Issue', 10, 6),
(7, 'Issue', 10, 1),
(8, 'Issue', 10, 3),
(9, 'Issue', 11, 7),
(10, 'Issue', 11, 6),
(11, 'Issue', 11, 1),
(12, 'Issue', 11, 3),
(13, 'Issue', 12, 7),
(14, 'Issue', 12, 6),
(15, 'Issue', 12, 1),
(16, 'Issue', 12, 3),
(17, 'Issue', 13, 7),
(18, 'Issue', 13, 6),
(19, 'Issue', 13, 1),
(20, 'Issue', 13, 3),
(21, 'Issue', 14, 7),
(22, 'Issue', 14, 1),
(23, 'Issue', 14, 3),
(24, 'Issue', 15, 7),
(25, 'Issue', 15, 1),
(26, 'Issue', 15, 3),
(27, 'Issue', 2415, 3),
(28, 'Issue', 2415, 1),
(29, 'Issue', 2420, 7),
(30, 'Issue', 2420, 6),
(31, 'Issue', 2420, 1),
(32, 'Issue', 2421, 7),
(33, 'Issue', 2421, 6),
(34, 'Issue', 2421, 1),
(35, 'Issue', 2422, 12),
(36, 'Issue', 2422, 1),
(37, 'Issue', 2423, 1),
(38, 'Issue', 2427, 7),
(39, 'Issue', 2427, 6),
(40, 'Issue', 2427, 1),
(41, 'Issue', 2429, 13),
(42, 'Issue', 2429, 1),
(43, 'Issue', 2432, 9),
(44, 'Issue', 2432, 1),
(45, 'Issue', 2432, 3),
(46, 'Issue', 2433, 13),
(47, 'Issue', 2433, 1),
(48, 'Issue', 2434, 9),
(49, 'Issue', 2434, 1),
(50, 'Issue', 2435, 9),
(51, 'Issue', 2435, 1),
(52, 'Issue', 2436, 9),
(53, 'Issue', 2436, 1),
(54, 'Issue', 2437, 9),
(55, 'Issue', 2437, 1),
(56, 'Issue', 2439, 7),
(57, 'Issue', 2439, 6),
(58, 'Issue', 2439, 1),
(59, 'Issue', 2440, 7),
(60, 'Issue', 2440, 6),
(61, 'Issue', 2440, 1),
(62, 'Issue', 2441, 7),
(63, 'Issue', 2441, 6),
(64, 'Issue', 2441, 1),
(65, 'Issue', 2442, 7),
(66, 'Issue', 2442, 6),
(67, 'Issue', 2442, 1),
(68, 'Issue', 2443, 7),
(69, 'Issue', 2443, 6),
(70, 'Issue', 2443, 1),
(71, 'Issue', 2444, 7),
(72, 'Issue', 2444, 6),
(73, 'Issue', 2444, 1),
(74, 'Issue', 2445, 7),
(75, 'Issue', 2445, 6),
(76, 'Issue', 2445, 1),
(77, 'Issue', 2446, 7),
(78, 'Issue', 2446, 6),
(79, 'Issue', 2446, 1),
(80, 'Issue', 2447, 7),
(81, 'Issue', 2447, 6),
(82, 'Issue', 2447, 1),
(83, 'Issue', 2449, 9),
(84, 'Issue', 2449, 1),
(85, 'Issue', 2450, 9),
(86, 'Issue', 2450, 1),
(87, 'Issue', 2452, 7),
(88, 'Issue', 2452, 6),
(89, 'Issue', 2452, 1),
(92, 'Issue', 2455, 7),
(93, 'Issue', 2455, 6),
(94, 'Issue', 2455, 1),
(95, 'Issue', 2456, 9),
(98, 'Issue', 2463, 7),
(99, 'Issue', 2463, 6),
(100, 'Issue', 2463, 1),
(101, 'Issue', 2465, 9),
(102, 'Issue', 2465, 1),
(103, 'Issue', 2466, 9),
(104, 'Issue', 2466, 1),
(105, 'Issue', 2468, 7),
(106, 'Issue', 2468, 14),
(107, 'Issue', 2468, 6),
(108, 'Issue', 2468, 1),
(110, 'Issue', 2480, 1),
(111, 'Issue', 2492, 9),
(112, 'Issue', 2492, 1),
(113, 'Issue', 2493, 9),
(114, 'Issue', 2493, 1),
(115, 'Issue', 2497, 9),
(116, 'Issue', 2497, 1),
(117, 'Issue', 2498, 9),
(118, 'Issue', 2498, 1),
(119, 'Issue', 2499, 9),
(120, 'Issue', 2499, 1),
(121, 'Issue', 2500, 9),
(122, 'Issue', 2500, 1),
(123, 'Issue', 2501, 9),
(124, 'Issue', 2501, 1),
(125, 'Issue', 2502, 9),
(126, 'Issue', 2502, 1),
(127, 'Issue', 2503, 9),
(128, 'Issue', 2503, 1),
(129, 'Issue', 2504, 9),
(130, 'Issue', 2504, 1),
(133, 'Issue', 2506, 9),
(134, 'Issue', 2506, 1),
(135, 'Issue', 2507, 9),
(136, 'Issue', 2507, 1),
(137, 'Issue', 2508, 9),
(138, 'Issue', 2508, 1),
(139, 'Issue', 2509, 9),
(140, 'Issue', 2509, 1),
(141, 'Issue', 2510, 9),
(142, 'Issue', 2510, 1),
(143, 'Issue', 2511, 9),
(144, 'Issue', 2511, 1),
(145, 'Issue', 2512, 9),
(146, 'Issue', 2512, 1),
(147, 'Issue', 2513, 9),
(148, 'Issue', 2513, 1),
(149, 'Issue', 2514, 9),
(150, 'Issue', 2514, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wikis`
--

CREATE TABLE IF NOT EXISTS `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wikis`
--

INSERT INTO `wikis` (`id`, `project_id`, `start_page`, `status`) VALUES
(1, 1, 'Wiki', 1),
(2, 2, 'Wiki', 1),
(3, 3, 'Wiki', 1),
(4, 4, 'Wiki', 1),
(5, 5, 'Wiki', 1),
(6, 6, 'Wiki', 1),
(7, 7, 'Wiki', 1),
(8, 8, 'Wiki', 1),
(9, 9, 'Wiki', 1),
(10, 10, 'Wiki', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wiki_contents`
--

CREATE TABLE IF NOT EXISTS `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wiki_contents`
--

INSERT INTO `wiki_contents` (`id`, `page_id`, `author_id`, `text`, `comments`, `updated_on`, `version`) VALUES
(1, 1, 1, '*GIT*\r\ngit clone https://bitbucket.org/todorescutudor/epos.git\r\n\r\n\r\n*OLD SYSTEM*\r\nhttp://usbe.ultrapos.net\r\nUserID - ZMTRIAL\r\nPassword - friday2 \r\nLocation - USBE001-1\r\n', '', '2014-03-13 11:58:53', 3),
(2, 2, 1, '*Website*\r\nhttp://www.kanoourfx.com\r\n\r\n*GIT*\r\ngit clone https://bitbucket.org/todorescutudor/fx4you.git\r\n\r\nLIVE SERVER\r\n----------------------------\r\n\r\nFTO\r\nftp.kanoourfx.com\r\nkanoourfx.com\r\n4JygVx/G3\r\n\r\nSQL\r\nhttp://176.32.230.2/phpmyadmin/index.php?token=d5aca82ad57ba40fa7fcc040bda6edcc&old_usr=cl44-kanoo\r\ncl44-kanoo - db name\r\ncl44-kanoo - db user\r\ncocacola123* - pass\r\n\r\n        \r\nDEV CREDENTIALS\r\n-------------------------\r\n\r\nHere are the server details:\r\n\r\nFTP\r\nHOST - ftp.instantwebsitesolutions.co.uk\r\nUSER - kanoo@instantwebsitesolutions.co.uk\r\nPASS -  Wg.fwfxBX\r\n\r\nSQL\r\nDB NAME - cl39-kanoo\r\nDB USER - cl39-kanoo\r\nPASSWORD - cocacola\r\nHOST - 79.170.44.83\r\nhttp://79.170.44.83/phpmyadmin/index.php?token=abcc48323783ff884fe60abc3c77c2dc&old_usr=cl39-kanoo\r\n\r\n\r\nOLD CREDENTIALS\r\n-------------\r\nhttps://www.fx4you.com/kanoo/default.cfm\r\n\r\nStaff - \r\n donna02\r\n don002\r\n \r\nClient -\r\n farrukhc\r\n qwerty123\r\n \r\n\r\n \r\n ', '', '2014-03-13 12:30:40', 4),
(3, 3, 1, '* Website\r\nhttp://instantwebsitesolutions.co.uk/kfx/live/\r\n\r\n* Git\r\ngit clone https://todorescutudor@bitbucket.org/todorescutudor/k-fx-frontend.git\r\n\r\n* CMS\r\n* http://instantwebsitesolutions.co.uk/covent/cms/\r\n* luke@instantwebsitesolutions.co.uk\r\n* zcv3ctmj246\r\n* \r\n* FTP\r\n* nicolas@instantwebsitesolutions.co.uk\r\n* kjEnV!Fb/\r\n* ftp.instantwebsitesolutions.co.uk\r\n* \r\n* - this is also the ftp for fx-convent\r\n* \r\n* DB\r\n* DB Name - web83-kfx\r\n* User - web83-kfx\r\n* Pw - cocacola123*\r\n* http://79.170.44.83/phpmyadmin/index.php?token=64c3212cb3f6a41a45357a184c123faf&old_usr=web83-kfx', '', '2014-03-13 12:32:01', 2),
(4, 4, 1, 'LIVE\r\n-------------------\r\nCMS\r\nhttp://coventgardenfx.com/cms/\r\nluke@instantwebsitesolutions.co.uk\r\nzcv3ctmj246\r\n\r\nFTP\r\nhost - 46.32.252.116\r\nu/n - luke\r\np/w - Archie123*\r\n\r\nDB\r\n46.32.252.116:8443\r\nu/n - tudor@coventgardenfx.com\r\np/w - cocacola246\r\n\r\n\r\nDEV\r\n-----------------\r\nCMS\r\n- http://instantwebsitesolutions.co.uk/covent/cms/\r\n- luke@instantwebsitesolutions.co.uk\r\n- zcv3ctmj246\r\n\r\nFTP\r\nnicolas@instantwebsitesolutions.co.uk\r\nkjEnV!Fb/\r\nftp.instantwebsitesolutions.co.uk\r\n\r\nDB\r\nDB Name - web83-kfx\r\nUser - web83-kfx\r\nPw - cocacola123*\r\nhttp://79.170.44.83/phpmyadmin/index.php?token=64c3212cb3f6a41a45357a184c123faf&old_usr=web83-kfx', '', '2014-05-01 08:20:12', 3),
(5, 5, 1, 'http://www.anvelope-turbo.ro/admin/\r\nuser: admin\r\npass: admin\r\n\r\n\r\nhttps://anvelope-turbo.ro:2083/cpanel\r\nuser: anvelope \r\npass: modificarecpanel2014\r\n\r\nwebmail: okalba@anvelope-turbo.ro\r\npass: accesmail', '', '2014-05-05 20:37:06', 1),
(6, 6, 1, '*Similar software*\r\n\r\nHere is another type of software that is designed for the same industry.. perhaps you guys should register the demo, \r\ntake a tour of this competitor software to see how it is that this software will run similarly\r\nhttp://www.petexec.net/index.php\r\n\r\nhttp://54.72.97.34/k9\r\nuser: admin\r\npass: 123456\r\n\r\nK9 demo\r\nOwner\r\nsecret\r\n\r\nK9 soft\r\nWhiterill, Richard\r\n7144', '', '2014-05-21 08:30:26', 6),
(7, 7, 1, 'http://www.electronrecords.com:2082/\r\ncPanel Login\r\nwww.electronrecords.com\r\nuser: electro1\r\npass: 15kgfwya;/', '', '2014-06-17 16:36:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wiki_content_versions`
--

CREATE TABLE IF NOT EXISTS `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wiki_content_versions`
--

INSERT INTO `wiki_content_versions` (`id`, `wiki_content_id`, `page_id`, `author_id`, `data`, `compression`, `comments`, `updated_on`, `version`) VALUES
(1, 1, 1, 1, 0x4f4c442053595354454d0d0a0d0a55524c202d20757362652e756c747261706f732e6e65740d0a200d0a557365724944202d205a4d545249414c0d0a50617373776f7264202d2066726964617932200d0a4c6f636174696f6e202d20555342453030312d310d0a, '', '', '2014-03-13 11:56:18', 1),
(2, 1, 1, 1, 0x2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f65706f732e6769740d0a0d0a2a4f4c442053595354454d2a0d0a0d0a55524c202d20757362652e756c747261706f732e6e65740d0a200d0a557365724944202d205a4d545249414c0d0a50617373776f7264202d2066726964617932200d0a4c6f636174696f6e202d20555342453030312d310d0a, '', '', '2014-03-13 11:58:39', 2),
(3, 1, 1, 1, 0x2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f65706f732e6769740d0a0d0a0d0a2a4f4c442053595354454d2a0d0a687474703a2f2f757362652e756c747261706f732e6e65740d0a557365724944202d205a4d545249414c0d0a50617373776f7264202d2066726964617932200d0a4c6f636174696f6e202d20555342453030312d310d0a, '', '', '2014-03-13 11:58:53', 3),
(4, 2, 2, 1, 0x2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f667834796f752e6769740d0a0d0a2320524541444d4520230d0a232323232323232323230d0a0d0a43524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a68747470733a2f2f7777772e667834796f752e636f6d2f6b616e6f6f2f64656661756c742e63666d0d0a0d0a5374616666202d200d0a20646f6e6e6130320d0a20646f6e3030320d0a200d0a436c69656e74202d0d0a2066617272756b68630d0a207177657274793132330d0a200d0a2077686974656a756c792e61727440676d61696c2e636f6d0d0a202020200d0a20687474703a2f2f6678342e6b6d74656c2e726f0d0a20757365723a2061646d696e0d0a20706173733a203132333435360d0a200d0a20687474703a2f2f70726f6a6563742d6d616e6167656d656e742e6b6d74656c2e726f0d0a200d0a2053455455500d0a202d2d2d2d2d2d2d2d0d0a0d0a232320465834594f552023230d0a3c5669727475616c486f7374202a3a38303e0d0a0d0a202020205365727665724e616d65206678342e6c6f63616c0d0a2020202053657276657241646d696e207765626d6173746572406c6f63616c686f73740d0a0d0a20202020446f63756d656e74526f6f7420433a2f78616d70702f6874646f63732f667834796f752f7075626c69630d0a202020203c4469726563746f727920433a2f78616d70702f6874646f63732f667834796f752f7075626c69633e0d0a2020202020202020202020204f7074696f6e7320496e646578657320466f6c6c6f7753796d4c696e6b73204d756c746956696577730d0a202020202020202020202020416c6c6f774f7665727269646520416c6c0d0a2020202020202020202020204f7264657220616c6c6f772c64656e790d0a202020202020202020202020616c6c6f772066726f6d20616c6c0d0a202020203c2f4469726563746f72793e0d0a0d0a3c2f5669727475616c486f73743e0d0a0d0a0d0a4c495645205345525645520d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a46544f0d0a6674702e6b616e6f6f757266782e636f6d0d0a6b616e6f6f757266782e636f6d0d0a344a796756782f47330d0a0d0a53514c0d0a687474703a2f2f3137362e33322e3233302e322f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6435616361383261643537626134306661376663633034306264613665646363266f6c645f7573723d636c34342d6b616e6f6f0d0a636c34342d6b616e6f6f202d206462206e616d650d0a636c34342d6b616e6f6f202d20646220757365720d0a636f6361636f6c613132332a202d20706173730d0a0d0a20202020202020200d0a4445562043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a486572652061726520746865207365727665722064657461696c733a0d0a0d0a4654500d0a484f5354202d206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a55534552202d206b616e6f6f40696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a50415353202d202057672e6677667842580d0a0d0a53514c200d0a4442204e414d45202d20636c33392d6b616e6f6f200d0a44422055534552202d20636c33392d6b616e6f6f200d0a50415353574f5244202d20636f6361636f6c610d0a484f5354202d2037392e3137302e34342e38330d0a687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6162636334383332333738336666383834666536306162633363373763326463266f6c645f7573723d636c33392d6b616e6f6f0d0a0d0a0d0a4241434b555020434f44450d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a5b343a32323a343720504d5d2046617272756b682043686f75646872793a2066617272756b685f63686f7564687279, '', '', '2014-03-13 12:12:29', 1),
(5, 2, 2, 1, 0x2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f667834796f752e6769740d0a0d0a4c495645205345525645520d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a46544f0d0a6674702e6b616e6f6f757266782e636f6d0d0a6b616e6f6f757266782e636f6d0d0a344a796756782f47330d0a0d0a53514c0d0a687474703a2f2f3137362e33322e3233302e322f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6435616361383261643537626134306661376663633034306264613665646363266f6c645f7573723d636c34342d6b616e6f6f0d0a636c34342d6b616e6f6f202d206462206e616d650d0a636c34342d6b616e6f6f202d20646220757365720d0a636f6361636f6c613132332a202d20706173730d0a0d0a20202020202020200d0a4445562043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a486572652061726520746865207365727665722064657461696c733a0d0a0d0a4654500d0a484f5354202d206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a55534552202d206b616e6f6f40696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a50415353202d202057672e6677667842580d0a0d0a53514c0d0a4442204e414d45202d20636c33392d6b616e6f6f0d0a44422055534552202d20636c33392d6b616e6f6f0d0a50415353574f5244202d20636f6361636f6c610d0a484f5354202d2037392e3137302e34342e38330d0a687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6162636334383332333738336666383834666536306162633363373763326463266f6c645f7573723d636c33392d6b616e6f6f0d0a0d0a0d0a4f4c442043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a68747470733a2f2f7777772e667834796f752e636f6d2f6b616e6f6f2f64656661756c742e63666d0d0a0d0a5374616666202d200d0a20646f6e6e6130320d0a20646f6e3030320d0a200d0a436c69656e74202d0d0a2066617272756b68630d0a207177657274793132330d0a200d0a2077686974656a756c792e61727440676d61696c2e636f6d0d0a202020200d0a20687474703a2f2f6678342e6b6d74656c2e726f0d0a20757365723a2061646d696e0d0a20706173733a203132333435360d0a200d0a20, '', '', '2014-03-13 12:27:35', 2),
(6, 2, 2, 1, 0x2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f667834796f752e6769740d0a0d0a4c495645205345525645520d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a46544f0d0a6674702e6b616e6f6f757266782e636f6d0d0a6b616e6f6f757266782e636f6d0d0a344a796756782f47330d0a0d0a53514c0d0a687474703a2f2f3137362e33322e3233302e322f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6435616361383261643537626134306661376663633034306264613665646363266f6c645f7573723d636c34342d6b616e6f6f0d0a636c34342d6b616e6f6f202d206462206e616d650d0a636c34342d6b616e6f6f202d20646220757365720d0a636f6361636f6c613132332a202d20706173730d0a0d0a20202020202020200d0a4445562043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a486572652061726520746865207365727665722064657461696c733a0d0a0d0a4654500d0a484f5354202d206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a55534552202d206b616e6f6f40696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a50415353202d202057672e6677667842580d0a0d0a53514c0d0a4442204e414d45202d20636c33392d6b616e6f6f0d0a44422055534552202d20636c33392d6b616e6f6f0d0a50415353574f5244202d20636f6361636f6c610d0a484f5354202d2037392e3137302e34342e38330d0a687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6162636334383332333738336666383834666536306162633363373763326463266f6c645f7573723d636c33392d6b616e6f6f0d0a0d0a0d0a4f4c442043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a68747470733a2f2f7777772e667834796f752e636f6d2f6b616e6f6f2f64656661756c742e63666d0d0a0d0a5374616666202d200d0a20646f6e6e6130320d0a20646f6e3030320d0a200d0a436c69656e74202d0d0a2066617272756b68630d0a207177657274793132330d0a200d0a0d0a200d0a20, '', '', '2014-03-13 12:27:47', 3),
(7, 2, 2, 1, 0x2a576562736974652a0d0a687474703a2f2f7777772e6b616e6f6f757266782e636f6d0d0a0d0a2a4749542a0d0a67697420636c6f6e652068747470733a2f2f6269746275636b65742e6f72672f746f646f72657363757475646f722f667834796f752e6769740d0a0d0a4c495645205345525645520d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a46544f0d0a6674702e6b616e6f6f757266782e636f6d0d0a6b616e6f6f757266782e636f6d0d0a344a796756782f47330d0a0d0a53514c0d0a687474703a2f2f3137362e33322e3233302e322f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6435616361383261643537626134306661376663633034306264613665646363266f6c645f7573723d636c34342d6b616e6f6f0d0a636c34342d6b616e6f6f202d206462206e616d650d0a636c34342d6b616e6f6f202d20646220757365720d0a636f6361636f6c613132332a202d20706173730d0a0d0a20202020202020200d0a4445562043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a0d0a486572652061726520746865207365727665722064657461696c733a0d0a0d0a4654500d0a484f5354202d206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a55534552202d206b616e6f6f40696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a50415353202d202057672e6677667842580d0a0d0a53514c0d0a4442204e414d45202d20636c33392d6b616e6f6f0d0a44422055534552202d20636c33392d6b616e6f6f0d0a50415353574f5244202d20636f6361636f6c610d0a484f5354202d2037392e3137302e34342e38330d0a687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d6162636334383332333738336666383834666536306162633363373763326463266f6c645f7573723d636c33392d6b616e6f6f0d0a0d0a0d0a4f4c442043524544454e5449414c530d0a2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a68747470733a2f2f7777772e667834796f752e636f6d2f6b616e6f6f2f64656661756c742e63666d0d0a0d0a5374616666202d200d0a20646f6e6e6130320d0a20646f6e3030320d0a200d0a436c69656e74202d0d0a2066617272756b68630d0a207177657274793132330d0a200d0a0d0a200d0a20, '', '', '2014-03-13 12:30:40', 4),
(8, 3, 3, 1, 0x2a2057656273697465202a0d0a687474703a2f2f696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b2f6b66782f6c6976652f0d0a0d0a2a20476974202a0d0a67697420636c6f6e652068747470733a2f2f746f646f72657363757475646f72406269746275636b65742e6f72672f746f646f72657363757475646f722f6b2d66782d66726f6e74656e642e6769740d0a0d0a2a20434d530d0a2a20687474703a2f2f696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b2f636f76656e742f636d732f0d0a2a206c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a207a63763363746d6a3234360d0a2a200d0a2a204654500d0a2a206e69636f6c617340696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a206b6a456e562146622f0d0a2a206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a200d0a2a202d207468697320697320616c736f207468652066747020666f722066782d636f6e76656e740d0a2a200d0a2a2044420d0a2a204442204e616d65202d2077656238332d6b66780d0a2a2055736572202d2077656238332d6b66780d0a2a205077202d20636f6361636f6c613132332a0d0a2a20687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d3634633332313263623366366134316134353335376131383463313233666166266f6c645f7573723d77656238332d6b6678, '', '', '2014-03-13 12:31:51', 1),
(9, 3, 3, 1, 0x2a20576562736974650d0a687474703a2f2f696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b2f6b66782f6c6976652f0d0a0d0a2a204769740d0a67697420636c6f6e652068747470733a2f2f746f646f72657363757475646f72406269746275636b65742e6f72672f746f646f72657363757475646f722f6b2d66782d66726f6e74656e642e6769740d0a0d0a2a20434d530d0a2a20687474703a2f2f696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b2f636f76656e742f636d732f0d0a2a206c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a207a63763363746d6a3234360d0a2a200d0a2a204654500d0a2a206e69636f6c617340696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a206b6a456e562146622f0d0a2a206674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2a200d0a2a202d207468697320697320616c736f207468652066747020666f722066782d636f6e76656e740d0a2a200d0a2a2044420d0a2a204442204e616d65202d2077656238332d6b66780d0a2a2055736572202d2077656238332d6b66780d0a2a205077202d20636f6361636f6c613132332a0d0a2a20687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d3634633332313263623366366134316134353335376131383463313233666166266f6c645f7573723d77656238332d6b6678, '', '', '2014-03-13 12:32:01', 2),
(10, 4, 4, 1, 0x687474703a2f2f636f76656e7467617264656e66782e636f6d2f636d732f0d0a6c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a7a63763363746d6a3234360d0a0d0a4654500d0a686f7374202d2034362e33322e3235322e3131360d0a752f6e202d206c756b650d0a702f77202d204172636869653132332a, '', '', '2014-04-29 11:37:44', 1),
(11, 4, 4, 1, 0x434d530d0a687474703a2f2f636f76656e7467617264656e66782e636f6d2f636d732f0d0a6c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a7a63763363746d6a3234360d0a0d0a4654500d0a686f7374202d2034362e33322e3235322e3131360d0a752f6e202d206c756b650d0a702f77202d204172636869653132332a0d0a0d0a44420d0a34362e33322e3235322e3131363a383434330d0a752f6e202d207475646f7240636f76656e7467617264656e66782e636f6d0d0a702f77202d20636f6361636f6c61323436, '', '', '2014-04-29 14:49:16', 2),
(12, 4, 4, 1, 0x4c4956450d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a434d530d0a687474703a2f2f636f76656e7467617264656e66782e636f6d2f636d732f0d0a6c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a7a63763363746d6a3234360d0a0d0a4654500d0a686f7374202d2034362e33322e3235322e3131360d0a752f6e202d206c756b650d0a702f77202d204172636869653132332a0d0a0d0a44420d0a34362e33322e3235322e3131363a383434330d0a752f6e202d207475646f7240636f76656e7467617264656e66782e636f6d0d0a702f77202d20636f6361636f6c613234360d0a0d0a0d0a4445560d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0d0a434d530d0a2d20687474703a2f2f696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b2f636f76656e742f636d732f0d0a2d206c756b6540696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a2d207a63763363746d6a3234360d0a0d0a4654500d0a6e69636f6c617340696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a6b6a456e562146622f0d0a6674702e696e7374616e7477656273697465736f6c7574696f6e732e636f2e756b0d0a0d0a44420d0a4442204e616d65202d2077656238332d6b66780d0a55736572202d2077656238332d6b66780d0a5077202d20636f6361636f6c613132332a0d0a687474703a2f2f37392e3137302e34342e38332f7068706d7961646d696e2f696e6465782e7068703f746f6b656e3d3634633332313263623366366134316134353335376131383463313233666166266f6c645f7573723d77656238332d6b6678, '', '', '2014-05-01 08:20:12', 3),
(13, 5, 5, 1, 0x687474703a2f2f7777772e616e76656c6f70652d747572626f2e726f2f61646d696e2f0d0a757365723a2061646d696e0d0a706173733a2061646d696e0d0a0d0a0d0a68747470733a2f2f616e76656c6f70652d747572626f2e726f3a323038332f6370616e656c0d0a757365723a20616e76656c6f7065200d0a706173733a206d6f64696669636172656370616e656c323031340d0a0d0a7765626d61696c3a206f6b616c626140616e76656c6f70652d747572626f2e726f0d0a706173733a2061636365736d61696c, '', '', '2014-05-05 20:37:06', 1),
(14, 6, 6, 1, 0x53696d696c617220736f6674776172650d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e706870, '', '', '2014-05-10 11:44:43', 1),
(15, 6, 6, 1, 0x2a53696d696c617220736f6674776172652a0d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e706870, '', '', '2014-05-10 11:44:55', 2),
(16, 6, 6, 1, 0x2a53696d696c617220736f6674776172652a0d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e7068700d0a0d0a687474703a2f2f35342e37322e39372e33342f6b390d0a757365723a2061646d696e0d0a706173733a20313233343536, '', '', '2014-05-10 11:45:25', 3),
(17, 6, 6, 1, 0x2a53696d696c617220736f6674776172652a0d0a0d0a4865726520697320616e6f746865722074797065206f6620736f66747761726520746861742069732064657369676e656420666f72207468652073616d6520696e6475737472792e2e207065726861707320796f7520677579732073686f756c64207265676973746572207468652064656d6f2c200d0a74616b65206120746f7572206f66207468697320636f6d70657469746f7220736f66747761726520746f2073656520686f772069742069732074686174207468697320736f6674776172652077696c6c2072756e2073696d696c61726c790d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e7068700d0a0d0a0d0a687474703a2f2f35342e37322e39372e33342f6b390d0a757365723a2061646d696e0d0a706173733a20313233343536, '', '', '2014-05-12 21:12:07', 4),
(18, 6, 6, 1, 0x2a53696d696c617220736f6674776172652a0d0a0d0a4865726520697320616e6f746865722074797065206f6620736f66747761726520746861742069732064657369676e656420666f72207468652073616d6520696e6475737472792e2e207065726861707320796f7520677579732073686f756c64207265676973746572207468652064656d6f2c200d0a74616b65206120746f7572206f66207468697320636f6d70657469746f7220736f66747761726520746f2073656520686f772069742069732074686174207468697320736f6674776172652077696c6c2072756e2073696d696c61726c790d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e7068700d0a0d0a687474703a2f2f35342e37322e39372e33342f6b390d0a757365723a2061646d696e0d0a706173733a20313233343536, '', '', '2014-05-17 15:01:45', 5),
(19, 6, 6, 1, 0x2a53696d696c617220736f6674776172652a0d0a0d0a4865726520697320616e6f746865722074797065206f6620736f66747761726520746861742069732064657369676e656420666f72207468652073616d6520696e6475737472792e2e207065726861707320796f7520677579732073686f756c64207265676973746572207468652064656d6f2c200d0a74616b65206120746f7572206f66207468697320636f6d70657469746f7220736f66747761726520746f2073656520686f772069742069732074686174207468697320736f6674776172652077696c6c2072756e2073696d696c61726c790d0a687474703a2f2f7777772e706574657865632e6e65742f696e6465782e7068700d0a0d0a687474703a2f2f35342e37322e39372e33342f6b390d0a757365723a2061646d696e0d0a706173733a203132333435360d0a0d0a4b392064656d6f0d0a4f776e65720d0a7365637265740d0a0d0a4b3920736f66740d0a576869746572696c6c2c20526963686172640d0a37313434, '', '', '2014-05-21 08:30:26', 6),
(20, 7, 7, 1, 0x687474703a2f2f7777772e656c656374726f6e7265636f7264732e636f6d3a323038322f0d0a6350616e656c204c6f67696e0d0a7777772e656c656374726f6e7265636f7264732e636f6d0d0a757365723a20656c656374726f310d0a706173733a2031356b67667779613b2f, '', '', '2014-06-17 16:36:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wiki_pages`
--

INSERT INTO `wiki_pages` (`id`, `wiki_id`, `title`, `created_on`, `protected`, `parent_id`) VALUES
(1, 2, 'Wiki', '2014-03-13 11:56:18', 0, NULL),
(2, 3, 'Wiki', '2014-03-13 12:12:29', 0, NULL),
(3, 4, 'Wiki', '2014-03-13 12:31:51', 0, NULL),
(4, 8, 'Wiki', '2014-04-29 11:37:44', 0, NULL),
(5, 6, 'Wiki', '2014-05-05 20:37:06', 0, NULL),
(6, 1, 'Wiki', '2014-05-10 11:44:43', 0, NULL),
(7, 10, 'Wiki', '2014-06-17 16:36:36', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wiki_redirects`
--

CREATE TABLE IF NOT EXISTS `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE IF NOT EXISTS `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`) VALUES
(1, 1, 1, 2, 3, 0, 0),
(2, 1, 1, 3, 3, 0, 0),
(3, 1, 1, 4, 3, 0, 0),
(4, 1, 1, 5, 3, 0, 0),
(5, 1, 1, 6, 3, 0, 0),
(6, 1, 2, 1, 3, 0, 0),
(7, 1, 2, 3, 3, 0, 0),
(8, 1, 2, 4, 3, 0, 0),
(9, 1, 2, 5, 3, 0, 0),
(10, 1, 2, 6, 3, 0, 0),
(11, 1, 3, 1, 3, 0, 0),
(12, 1, 3, 2, 3, 0, 0),
(13, 1, 3, 4, 3, 0, 0),
(14, 1, 3, 5, 3, 0, 0),
(15, 1, 3, 6, 3, 0, 0),
(16, 1, 4, 1, 3, 0, 0),
(17, 1, 4, 2, 3, 0, 0),
(18, 1, 4, 3, 3, 0, 0),
(19, 1, 4, 5, 3, 0, 0),
(20, 1, 4, 6, 3, 0, 0),
(21, 1, 5, 1, 3, 0, 0),
(22, 1, 5, 2, 3, 0, 0),
(23, 1, 5, 3, 3, 0, 0),
(24, 1, 5, 4, 3, 0, 0),
(25, 1, 5, 6, 3, 0, 0),
(26, 1, 6, 1, 3, 0, 0),
(27, 1, 6, 2, 3, 0, 0),
(28, 1, 6, 3, 3, 0, 0),
(29, 1, 6, 4, 3, 0, 0),
(30, 1, 6, 5, 3, 0, 0),
(31, 2, 1, 2, 3, 0, 0),
(32, 2, 1, 3, 3, 0, 0),
(33, 2, 1, 4, 3, 0, 0),
(34, 2, 1, 5, 3, 0, 0),
(35, 2, 1, 6, 3, 0, 0),
(36, 2, 2, 1, 3, 0, 0),
(37, 2, 2, 3, 3, 0, 0),
(38, 2, 2, 4, 3, 0, 0),
(39, 2, 2, 5, 3, 0, 0),
(40, 2, 2, 6, 3, 0, 0),
(41, 2, 3, 1, 3, 0, 0),
(42, 2, 3, 2, 3, 0, 0),
(43, 2, 3, 4, 3, 0, 0),
(44, 2, 3, 5, 3, 0, 0),
(45, 2, 3, 6, 3, 0, 0),
(46, 2, 4, 1, 3, 0, 0),
(47, 2, 4, 2, 3, 0, 0),
(48, 2, 4, 3, 3, 0, 0),
(49, 2, 4, 5, 3, 0, 0),
(50, 2, 4, 6, 3, 0, 0),
(51, 2, 5, 1, 3, 0, 0),
(52, 2, 5, 2, 3, 0, 0),
(53, 2, 5, 3, 3, 0, 0),
(54, 2, 5, 4, 3, 0, 0),
(55, 2, 5, 6, 3, 0, 0),
(56, 2, 6, 1, 3, 0, 0),
(57, 2, 6, 2, 3, 0, 0),
(58, 2, 6, 3, 3, 0, 0),
(59, 2, 6, 4, 3, 0, 0),
(60, 2, 6, 5, 3, 0, 0),
(61, 3, 1, 2, 3, 0, 0),
(62, 3, 1, 3, 3, 0, 0),
(63, 3, 1, 4, 3, 0, 0),
(64, 3, 1, 5, 3, 0, 0),
(65, 3, 1, 6, 3, 0, 0),
(66, 3, 2, 1, 3, 0, 0),
(67, 3, 2, 3, 3, 0, 0),
(68, 3, 2, 4, 3, 0, 0),
(69, 3, 2, 5, 3, 0, 0),
(70, 3, 2, 6, 3, 0, 0),
(71, 3, 3, 1, 3, 0, 0),
(72, 3, 3, 2, 3, 0, 0),
(73, 3, 3, 4, 3, 0, 0),
(74, 3, 3, 5, 3, 0, 0),
(75, 3, 3, 6, 3, 0, 0),
(76, 3, 4, 1, 3, 0, 0),
(77, 3, 4, 2, 3, 0, 0),
(78, 3, 4, 3, 3, 0, 0),
(79, 3, 4, 5, 3, 0, 0),
(80, 3, 4, 6, 3, 0, 0),
(81, 3, 5, 1, 3, 0, 0),
(82, 3, 5, 2, 3, 0, 0),
(83, 3, 5, 3, 3, 0, 0),
(84, 3, 5, 4, 3, 0, 0),
(85, 3, 5, 6, 3, 0, 0),
(86, 3, 6, 1, 3, 0, 0),
(87, 3, 6, 2, 3, 0, 0),
(88, 3, 6, 3, 3, 0, 0),
(89, 3, 6, 4, 3, 0, 0),
(90, 3, 6, 5, 3, 0, 0),
(91, 1, 1, 2, 4, 0, 0),
(92, 1, 1, 3, 4, 0, 0),
(93, 1, 1, 4, 4, 0, 0),
(94, 1, 1, 5, 4, 0, 0),
(95, 1, 2, 3, 4, 0, 0),
(96, 1, 2, 4, 4, 0, 0),
(97, 1, 2, 5, 4, 0, 0),
(98, 1, 3, 2, 4, 0, 0),
(99, 1, 3, 4, 4, 0, 0),
(100, 1, 3, 5, 4, 0, 0),
(101, 1, 4, 2, 4, 0, 0),
(102, 1, 4, 3, 4, 0, 0),
(103, 1, 4, 5, 4, 0, 0),
(104, 2, 1, 2, 4, 0, 0),
(105, 2, 1, 3, 4, 0, 0),
(106, 2, 1, 4, 4, 0, 0),
(107, 2, 1, 5, 4, 0, 0),
(108, 2, 2, 3, 4, 0, 0),
(109, 2, 2, 4, 4, 0, 0),
(110, 2, 2, 5, 4, 0, 0),
(111, 2, 3, 2, 4, 0, 0),
(112, 2, 3, 4, 4, 0, 0),
(113, 2, 3, 5, 4, 0, 0),
(114, 2, 4, 2, 4, 0, 0),
(115, 2, 4, 3, 4, 0, 0),
(116, 2, 4, 5, 4, 0, 0),
(117, 3, 1, 2, 4, 0, 0),
(118, 3, 1, 3, 4, 0, 0),
(119, 3, 1, 4, 4, 0, 0),
(120, 3, 1, 5, 4, 0, 0),
(121, 3, 2, 3, 4, 0, 0),
(122, 3, 2, 4, 4, 0, 0),
(123, 3, 2, 5, 4, 0, 0),
(124, 3, 3, 2, 4, 0, 0),
(125, 3, 3, 4, 4, 0, 0),
(126, 3, 3, 5, 4, 0, 0),
(127, 3, 4, 2, 4, 0, 0),
(128, 3, 4, 3, 4, 0, 0),
(129, 3, 4, 5, 4, 0, 0),
(130, 1, 1, 5, 5, 0, 0),
(131, 1, 2, 5, 5, 0, 0),
(132, 1, 3, 5, 5, 0, 0),
(133, 1, 4, 5, 5, 0, 0),
(134, 1, 3, 4, 5, 0, 0),
(135, 2, 1, 5, 5, 0, 0),
(136, 2, 2, 5, 5, 0, 0),
(137, 2, 3, 5, 5, 0, 0),
(138, 2, 4, 5, 5, 0, 0),
(139, 2, 3, 4, 5, 0, 0),
(140, 3, 1, 5, 5, 0, 0),
(141, 3, 2, 5, 5, 0, 0),
(142, 3, 3, 5, 5, 0, 0),
(143, 3, 4, 5, 5, 0, 0),
(144, 3, 3, 4, 5, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;