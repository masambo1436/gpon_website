-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2025 at 12:44 PM
-- Server version: 10.5.27-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goalprime_goalprime`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `breakdownrequests`
--

CREATE TABLE `breakdownrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `newsarticle_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `newsarticle_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(8, 13, 'Ifeanhyhichukwu David Nwankwo', 'interculateddavid@gmail.com', 'Good work!', '2023-10-09 12:14:24', '2023-10-09 12:14:24'),
(9, 13, 'Ifeanhyhichukwu David Nwankwo', 'interculateddavid@gmail.com', 'Good work!', '2023-10-09 12:14:25', '2023-10-09 12:14:25'),
(10, 17, 'Otu Odudu', 'researchwit@gmail.com', 'The girl child faces a plethora of challenges such as gender biases, discrimination and gender disparities. We must amplify their voices and actions. On this day, let us renew our commitment to empowering girls and promoting their rights.', '2023-10-11 23:48:36', '2023-10-11 23:48:36'),
(11, 17, 'Onche Austin', 'oncheaustin@gmail.com', 'We will continue to advocate for the right s of girls across the globe.', '2023-10-12 11:39:45', '2023-10-12 11:39:45'),
(12, 18, 'Dupe Oluwasesan', 'oluwasesandupe@gmail.com', 'This is truly impactful and highly commendable. Thank you for putting smiles on these faces and restoring their hope for a better and brighter future. The importance of basic education cannot be over emphasised in the live of every child. \r\nA better humanity is possible!!!', '2023-10-27 12:19:53', '2023-10-27 12:19:53'),
(13, 23, 'RuzkAFVDAyzN', 'vBdhWX.mqqjcj@chiffon.fun', 'zioBLumKucSXUQTo', '2023-11-09 07:17:02', '2023-11-09 07:17:02'),
(14, 26, 'BcwfFzddLRO', 'vBxWrj.pdmmhw@scranch.shop', 'BLVLicjeMImkYocSL', '2023-11-23 12:33:01', '2023-11-23 12:33:01'),
(15, 26, 'sgdvJmwYQ', 'mulcuzayiv@outlook.com', 'amtBAPQEfNZVwMT', '2023-12-01 12:23:04', '2023-12-01 12:23:04'),
(16, 26, 'amzoiNvBYKyDd', 'mulcuzayiv@outlook.com', 'FHkPtWvBgUxEpqu', '2023-12-01 12:23:04', '2023-12-01 12:23:04'),
(17, 26, 'sgdvJmwYQ', 'mulcuzayiv@outlook.com', 'amtBAPQEfNZVwMT', '2023-12-01 12:23:05', '2023-12-01 12:23:05'),
(18, 26, 'Ismael', 'tRxICx.cjcqww@brasswire.me', 'Emerald Hinton', '2023-12-02 02:40:53', '2023-12-02 02:40:53'),
(19, 26, 'Luz', 'CLrDCT.mpwhdb@tonetics.biz', 'Landon Flores', '2023-12-03 11:11:28', '2023-12-03 11:11:28'),
(20, 26, 'juUFcBsOyZKDQfSt', 'GeorgeEdwards791341797@outlook.com', 'XaqhSPyBcdEbmwZ', '2023-12-08 15:00:39', '2023-12-08 15:00:39'),
(21, 26, 'StDrCuFv', 'GeorgeEdwards791341797@outlook.com', 'GlQPgFAU', '2023-12-08 15:00:43', '2023-12-08 15:00:43'),
(22, 26, 'juUFcBsOyZKDQfSt', 'GeorgeEdwards791341797@outlook.com', 'XaqhSPyBcdEbmwZ', '2023-12-08 15:00:46', '2023-12-08 15:00:46'),
(23, 26, 'UjflqqxSNsSR', 'KUjQnH.dwcdcwm@rottack.autos', 'xwjvuVQxJrxFeJdNRLDLbMpriDr', '2023-12-11 23:27:48', '2023-12-11 23:27:48'),
(24, 26, 'Alora', 'tYXRjC.tjccjcq@lustrum.cfd', 'Titan Kline', '2023-12-15 05:22:39', '2023-12-15 05:22:39'),
(25, 26, 'rmsiQbIpw', 'tonegerth-2003@outlook.com', 'FLQbqfoI', '2023-12-28 06:10:39', '2023-12-28 06:10:39'),
(26, 26, 'MiUWEKAkHpS', 'tonegerth-2003@outlook.com', 'WJFPMHgKITVjRC', '2023-12-28 06:10:41', '2023-12-28 06:10:41'),
(27, 26, 'rmsiQbIpw', 'tonegerth-2003@outlook.com', 'FLQbqfoI', '2023-12-28 06:10:43', '2023-12-28 06:10:43'),
(28, 26, 'sjDrPxLJeofUgqnz', 'jasonQW41708@outlook.com', 'pUvSiVomeZ', '2024-01-08 04:35:53', '2024-01-08 04:35:53'),
(29, 26, 'dJvjzCcOsAkWNRDZ', 'jasonQW41708@outlook.com', 'XuaGWSkdRcbB', '2024-01-08 04:35:56', '2024-01-08 04:35:56'),
(30, 26, 'sjDrPxLJeofUgqnz', 'jasonQW41708@outlook.com', 'pUvSiVomeZ', '2024-01-08 04:35:58', '2024-01-08 04:35:58'),
(31, 26, 'vefBqibao', 'circperschalta1976@yahoo.com', 'juvTtqMwFPVshXdR', '2024-01-14 11:49:58', '2024-01-14 11:49:58'),
(32, 26, 'pkVouOAM', 'circperschalta1976@yahoo.com', 'OepBaVkJcZD', '2024-01-14 11:50:02', '2024-01-14 11:50:02'),
(33, 26, 'vefBqibao', 'circperschalta1976@yahoo.com', 'juvTtqMwFPVshXdR', '2024-01-14 11:50:06', '2024-01-14 11:50:06'),
(34, 26, 'Emilio', 'WjzlQC.qmphcjp@spectrail.world', 'Kayden West', '2024-01-18 09:27:37', '2024-01-18 09:27:37'),
(35, 26, 'Clay', 'zuQqij.qqcdhqqh@paravane.biz', 'Richard Mcdowell', '2024-01-20 12:23:57', '2024-01-20 12:23:57'),
(36, 30, '🎁 Get free iPhone 15: http://lakshyaproductions.com/upload/go.php 🎁 hs=2cb59c1f2f8241e7fe587948d3a4c982*', 'okebepu@merepost.com', 'bf46x7', '2024-01-24 04:01:52', '2024-01-24 04:01:52'),
(37, 29, '🎁 Get free iPhone 15: http://n2ies.com/uploaded/go.php 🎁 hs=e642cb880fa70c043b0f22dbe2172e80*', 'okebepu@merepost.com', 'w2818b', '2024-01-24 04:01:59', '2024-01-24 04:01:59'),
(38, 31, '🎁 Get free iPhone 15: https://clinvia.com/uploads/go.php 🎁 hs=5e3a95c04b5e2301c788dd8a0561a0f3*', 'okebepu@merepost.com', '0clqqe', '2024-01-24 04:02:15', '2024-01-24 04:02:15'),
(39, 30, 'fIDzXvLBQYAGkFWg', 'HeidiGray68988@outlook.com', 'DPWlQvfpBCHwzst', '2024-02-05 14:56:39', '2024-02-05 14:56:39'),
(40, 30, 'fIDzXvLBQYAGkFWg', 'HeidiGray68988@outlook.com', 'DPWlQvfpBCHwzst', '2024-02-05 14:56:44', '2024-02-05 14:56:44'),
(41, 30, 'fIDzXvLBQYAGkFWg', 'HeidiGray68988@outlook.com', 'DPWlQvfpBCHwzst', '2024-02-05 14:56:47', '2024-02-05 14:56:47'),
(42, 30, 'Mariam', 'mariamengland@yandex.ru', 'Awesome blog! Is your theme custom made or did you download \r\nit from somewhere? A design like yours with a few simple tweeks would really make \r\nmy blog stand out. Please let me know where \r\nyou got your theme. With thanks https://silvoria.shop', '2024-02-07 03:14:59', '2024-02-07 03:14:59'),
(43, 30, 'Katrina', 'katrinamacy@gmail.com', 'Wow, superb weblog format! How long have you ever been running a \r\nblog for? you make blogging glance easy. The \r\noverall glance of your site is great, let alone the content!\r\n\r\nYou can see similar: https://alejazakupowa.top and here Alejazakupowa.top', '2024-02-07 22:03:34', '2024-02-07 22:03:34'),
(44, 30, 'tSRFzyMBQHojri', 'weeks_tony1978@yahoo.com', 'lgPaoLSTGFRfEhO', '2024-02-22 09:35:08', '2024-02-22 09:35:08'),
(45, 30, 'tSRFzyMBQHojri', 'weeks_tony1978@yahoo.com', 'lgPaoLSTGFRfEhO', '2024-02-22 09:35:12', '2024-02-22 09:35:12'),
(46, 30, 'tSRFzyMBQHojri', 'weeks_tony1978@yahoo.com', 'lgPaoLSTGFRfEhO', '2024-02-22 09:35:16', '2024-02-22 09:35:16'),
(47, 30, 'Terrell', 'terrellordell@yahoo.com', 'Great article! We are linking to this great article on our site.\r\nKeep up the good writing. I saw similar here: ecommerce \r\nand also here: ecommerce', '2024-03-02 17:56:02', '2024-03-02 17:56:02'),
(48, 30, 'GJAEhlxpiR', 'ralfchenl8150@gmail.com', 'snbCWSNqj', '2024-03-08 04:08:22', '2024-03-08 04:08:22'),
(49, 30, 'Mireya', 'mireyavalley@hotmail.co.uk', 'An outstanding share! I\'ve just forwarded this onto a co-worker who has been doing a \r\nlittle research on this. And he in fact bought me breakfast because I found it for him...\r\nlol. So let me reword this.... Thank YOU for the meal!!\r\n\r\nBut yeah, thanx for spending the time to talk about this topic here on your site.\r\n\r\nI saw similar here: Najlepszy sklep', '2024-03-14 10:54:48', '2024-03-14 10:54:48'),
(50, 30, 'oSQdxtajwJFNVqZ', 'essie77langes1@outlook.com', 'eFBnwjpufidsghNH', '2024-03-17 16:35:01', '2024-03-17 16:35:01'),
(51, 30, 'oSQdxtajwJFNVqZ', 'essie77langes1@outlook.com', 'eFBnwjpufidsghNH', '2024-03-17 16:35:05', '2024-03-17 16:35:05'),
(52, 30, 'oSQdxtajwJFNVqZ', 'essie77langes1@outlook.com', 'eFBnwjpufidsghNH', '2024-03-17 16:35:09', '2024-03-17 16:35:09'),
(53, 30, 'MpUGmBNsxv', 'combsloyelluz627@gmail.com', 'wUEapXZCc', '2024-03-21 19:25:55', '2024-03-21 19:25:55'),
(54, 30, 'MpUGmBNsxv', 'combsloyelluz627@gmail.com', 'wUEapXZCc', '2024-03-21 19:26:00', '2024-03-21 19:26:00'),
(55, 30, 'MpUGmBNsxv', 'combsloyelluz627@gmail.com', 'wUEapXZCc', '2024-03-21 19:26:05', '2024-03-21 19:26:05'),
(56, 30, 'Chet', 'chet.wilmer@gmail.com', 'Keep on working, great job! I saw similar here:\r\nE-commerce', '2024-03-22 07:48:36', '2024-03-22 07:48:36'),
(57, 30, 'Sue', 'suedickey@cox.net', 'Hi there! Do you know if they make any plugins to help with Search Engine Optimization? I\'m trying to get my \r\nblog to rank for some targeted keywords but I\'m not seeing very good results.\r\nIf you know of any please share. Cheers! You can read similar \r\narticle here: Najlepszy sklep', '2024-03-28 03:18:32', '2024-03-28 03:18:32'),
(58, 30, 'Darell', 'darellhairston@hotmail.com', 'Howdy! Do you know if they make any plugins to assist with Search Engine Optimization? I\'m \r\ntrying to get my blog to rank for some targeted keywords but \r\nI\'m not seeing very good results. If you know of any \r\nplease share. Many thanks! You can read similar blog here:\r\nNajlepszy sklep', '2024-03-29 03:19:36', '2024-03-29 03:19:36'),
(59, 30, 'Tyson', 'tyson_chew@yahoo.com', 'Hi! Do you know if they make any plugins to assist with SEO?\r\nI\'m trying to get my blog to rank for some targeted keywords but I\'m not seeing very good \r\ngains. If you know of any please share. \r\nMany thanks! You can read similar article here: Dobry sklep', '2024-03-29 23:47:32', '2024-03-29 23:47:32'),
(60, 30, 'Ruthie', 'ruthieleclair@aol.com', 'Hi there! Do you know if they make any plugins to assist with SEO?\r\nI\'m trying to get my blog to rank for some targeted keywords but I\'m not seeing very good success.\r\nIf you know of any please share. Many thanks! You can read similar article here: Hitman.agency', '2024-04-04 05:20:28', '2024-04-04 05:20:28'),
(61, 30, 'Genevieve', 'genevievetherrien@gmail.com', 'Good day! Do you know if they make any plugins \r\nto help with SEO? I\'m trying to get my website to \r\nrank for some targeted keywords but I\'m not seeing \r\nvery good results. If you know of any please share.\r\n\r\nThanks! I saw similar art here: GSA Verified List', '2024-04-04 21:51:56', '2024-04-04 21:51:56'),
(62, 30, 'IYuEiexCZHR', 'MorganEdwards52240@outlook.com', 'GTRKfVPO', '2024-04-05 02:22:36', '2024-04-05 02:22:36'),
(63, 30, 'IYuEiexCZHR', 'MorganEdwards52240@outlook.com', 'GTRKfVPO', '2024-04-05 02:22:43', '2024-04-05 02:22:43'),
(64, 30, 'IYuEiexCZHR', 'MorganEdwards52240@outlook.com', 'GTRKfVPO', '2024-04-05 02:22:51', '2024-04-05 02:22:51'),
(65, 30, 'NwRMLuyF', 'burtododi341@gmail.com', 'tcshJimM', '2024-04-09 19:58:19', '2024-04-09 19:58:19'),
(66, 30, 'NwRMLuyF', 'burtododi341@gmail.com', 'tcshJimM', '2024-04-09 19:58:23', '2024-04-09 19:58:23'),
(67, 30, 'NwRMLuyF', 'burtododi341@gmail.com', 'tcshJimM', '2024-04-09 19:58:27', '2024-04-09 19:58:27'),
(68, 30, 'yhrYfuzRkOsLnoaj', 'combsosvxf352@gmail.com', 'ifGzFDYnpTc', '2024-04-12 14:10:06', '2024-04-12 14:10:06'),
(69, 30, 'yhrYfuzRkOsLnoaj', 'combsosvxf352@gmail.com', 'ifGzFDYnpTc', '2024-04-12 14:10:08', '2024-04-12 14:10:08'),
(70, 30, 'yhrYfuzRkOsLnoaj', 'combsosvxf352@gmail.com', 'ifGzFDYnpTc', '2024-04-12 14:10:10', '2024-04-12 14:10:10'),
(71, 30, 'aKsLueHtG', 'jenniferthompson6404@yahoo.com', 'bgpZQxcHYhLsmt', '2024-04-15 23:06:34', '2024-04-15 23:06:34'),
(72, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:13:43', '2024-06-11 10:13:43'),
(73, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:14:02', '2024-06-11 10:14:02'),
(74, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:14:11', '2024-06-11 10:14:11'),
(75, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:15:58', '2024-06-11 10:15:58'),
(76, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:16:07', '2024-06-11 10:16:07'),
(77, 36, 'TzwSVsOw', 'testing@example.com', '555ccvE3saS', '2024-06-11 10:16:15', '2024-06-11 10:16:15'),
(78, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:16:23', '2024-06-11 10:16:23'),
(79, 36, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+976-976-1=0+0+0+1 --', '2024-06-11 10:16:23', '2024-06-11 10:16:23'),
(80, 36, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+329-329-1=0+0+0+1', '2024-06-11 10:16:24', '2024-06-11 10:16:24'),
(81, 36, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+508-508-1=0+0+0+1 --', '2024-06-11 10:16:24', '2024-06-11 10:16:24'),
(82, 36, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+211-211-1=0+0+0+1 or \'NYjzaExd\'=\'', '2024-06-11 10:16:25', '2024-06-11 10:16:25'),
(83, 36, 'TzwSVsOw', 'testing@example.com', '-1\" OR 2+884-884-1=0+0+0+1 --', '2024-06-11 10:16:26', '2024-06-11 10:16:26'),
(84, 36, 'TzwSVsOw', 'testing@example.com', '555*if(now()=sysdate(),sleep(15),0)', '2024-06-11 10:16:33', '2024-06-11 10:16:33'),
(85, 36, 'TzwSVsOw', 'testing@example.com', '5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z', '2024-06-11 10:16:42', '2024-06-11 10:16:42'),
(86, 36, 'TzwSVsOw', 'testing@example.com', '5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z', '2024-06-11 10:16:51', '2024-06-11 10:16:51'),
(87, 36, 'TzwSVsOw', 'testing@example.com', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '2024-06-11 10:17:00', '2024-06-11 10:17:00'),
(88, 36, 'TzwSVsOw', 'testing@example.com', '555-1; waitfor delay \'0:0:15\' --', '2024-06-11 10:17:10', '2024-06-11 10:17:10'),
(89, 36, 'TzwSVsOw', 'testing@example.com', '555-1); waitfor delay \'0:0:15\' --', '2024-06-11 10:17:19', '2024-06-11 10:17:19'),
(90, 36, 'TzwSVsOw', 'testing@example.com', '555-1 waitfor delay \'0:0:15\' --', '2024-06-11 10:17:28', '2024-06-11 10:17:28'),
(91, 36, 'TzwSVsOw', 'testing@example.com', '555lDIarrdj\'; waitfor delay \'0:0:15\' --', '2024-06-11 10:17:37', '2024-06-11 10:17:37'),
(92, 36, 'TzwSVsOw', 'testing@example.com', '555-1 OR 895=(SELECT 895 FROM PG_SLEEP(15))--', '2024-06-11 10:17:45', '2024-06-11 10:17:45'),
(93, 36, 'TzwSVsOw', 'testing@example.com', '555-1) OR 657=(SELECT 657 FROM PG_SLEEP(15))--', '2024-06-11 10:17:54', '2024-06-11 10:17:54'),
(94, 36, 'TzwSVsOw', 'testing@example.com', '555-1)) OR 776=(SELECT 776 FROM PG_SLEEP(15))--', '2024-06-11 10:18:02', '2024-06-11 10:18:02'),
(95, 36, 'TzwSVsOw', 'testing@example.com', '555AR8WQr7G\' OR 153=(SELECT 153 FROM PG_SLEEP(15))--', '2024-06-11 10:18:10', '2024-06-11 10:18:10'),
(96, 36, 'TzwSVsOw', 'testing@example.com', '555mbrPgdbo\') OR 201=(SELECT 201 FROM PG_SLEEP(15))--', '2024-06-11 10:18:19', '2024-06-11 10:18:19'),
(97, 36, 'TzwSVsOw', 'testing@example.com', '555xqUAZARO\')) OR 480=(SELECT 480 FROM PG_SLEEP(15))--', '2024-06-11 10:18:28', '2024-06-11 10:18:28'),
(98, 36, 'TzwSVsOw', 'testing@example.com', '555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '2024-06-11 10:18:36', '2024-06-11 10:18:36'),
(99, 36, 'TzwSVsOw', 'testing@example.com', '555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '2024-06-11 10:18:45', '2024-06-11 10:18:45'),
(100, 36, 'TzwSVsOw', 'testing@example.com', '555\'\"', '2024-06-11 10:18:45', '2024-06-11 10:18:45'),
(101, 36, 'TzwSVsOw', 'testing@example.com', '@@z1Uv1', '2024-06-11 10:18:46', '2024-06-11 10:18:46'),
(102, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:18:55', '2024-06-11 10:18:55'),
(103, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:19:04', '2024-06-11 10:19:04'),
(104, 36, 'TzwSVsOw', 'testing@example.comyaL2LudI', '555', '2024-06-11 10:19:12', '2024-06-11 10:19:12'),
(105, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:19:19', '2024-06-11 10:19:19'),
(106, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:20:59', '2024-06-11 10:20:59'),
(107, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:21:08', '2024-06-11 10:21:08'),
(108, 36, 'TzwSVsOwm7vCAKcv', 'testing@example.com', '555', '2024-06-11 10:21:16', '2024-06-11 10:21:16'),
(109, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:21:25', '2024-06-11 10:21:25'),
(110, 36, '-1 OR 2+680-680-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:21:25', '2024-06-11 10:21:25'),
(111, 36, '-1 OR 2+827-827-1=0+0+0+1', 'testing@example.com', '555', '2024-06-11 10:21:26', '2024-06-11 10:21:26'),
(112, 36, '-1\' OR 2+575-575-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:21:26', '2024-06-11 10:21:26'),
(113, 36, '-1\' OR 2+888-888-1=0+0+0+1 or \'DzbaWuBw\'=\'', 'testing@example.com', '555', '2024-06-11 10:21:27', '2024-06-11 10:21:27'),
(114, 36, '-1\" OR 2+796-796-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:21:28', '2024-06-11 10:21:28'),
(115, 36, 'if(now()=sysdate(),sleep(15),0)', 'testing@example.com', '555', '2024-06-11 10:21:36', '2024-06-11 10:21:36'),
(116, 36, 'TzwSVsOw0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'testing@example.com', '555', '2024-06-11 10:21:44', '2024-06-11 10:21:44'),
(117, 36, 'TzwSVsOw0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'testing@example.com', '555', '2024-06-11 10:21:53', '2024-06-11 10:21:53'),
(118, 36, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'testing@example.com', '555', '2024-06-11 10:22:02', '2024-06-11 10:22:02'),
(119, 36, 'TzwSVsOw-1 waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:22:11', '2024-06-11 10:22:11'),
(120, 36, 'TzwSVsOw0BEOnZQx\'; waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:22:19', '2024-06-11 10:22:19'),
(121, 36, 'TzwSVsOw1M0JrK66\' OR 93=(SELECT 93 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:22:28', '2024-06-11 10:22:28'),
(122, 36, 'TzwSVsOwwfkO4Hc8\') OR 343=(SELECT 343 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:22:37', '2024-06-11 10:22:37'),
(123, 36, 'TzwSVsOwPk7GuBFB\')) OR 148=(SELECT 148 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:22:46', '2024-06-11 10:22:46'),
(124, 36, 'TzwSVsOw\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '555', '2024-06-11 10:22:53', '2024-06-11 10:22:53'),
(125, 36, 'TzwSVsOw\'\"', 'testing@example.com', '555', '2024-06-11 10:22:54', '2024-06-11 10:22:54'),
(126, 36, '@@a6f4X', 'testing@example.com', '555', '2024-06-11 10:22:55', '2024-06-11 10:22:55'),
(127, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:23:04', '2024-06-11 10:23:04'),
(128, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:23:14', '2024-06-11 10:23:14'),
(129, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:23:30', '2024-06-11 10:23:30'),
(130, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:41:02', '2024-06-11 10:41:02'),
(131, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:41:10', '2024-06-11 10:41:10'),
(132, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:41:19', '2024-06-11 10:41:19'),
(133, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:41:35', '2024-06-11 10:41:35'),
(134, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:42:53', '2024-06-11 10:42:53'),
(135, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:43:13', '2024-06-11 10:43:13'),
(136, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:43:22', '2024-06-11 10:43:22'),
(137, 35, 'TzwSVsOw', 'testing@example.com', '555i4FCNSq7', '2024-06-11 10:43:31', '2024-06-11 10:43:31'),
(138, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:43:40', '2024-06-11 10:43:40'),
(139, 35, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+453-453-1=0+0+0+1 --', '2024-06-11 10:43:40', '2024-06-11 10:43:40'),
(140, 35, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+150-150-1=0+0+0+1', '2024-06-11 10:43:41', '2024-06-11 10:43:41'),
(141, 35, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+763-763-1=0+0+0+1 --', '2024-06-11 10:43:41', '2024-06-11 10:43:41'),
(142, 35, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+470-470-1=0+0+0+1 or \'hBWzvIKW\'=\'', '2024-06-11 10:43:42', '2024-06-11 10:43:42'),
(143, 35, 'TzwSVsOw', 'testing@example.com', '-1\" OR 2+597-597-1=0+0+0+1 --', '2024-06-11 10:43:43', '2024-06-11 10:43:43'),
(144, 35, 'TzwSVsOw', 'testing@example.com', '555*if(now()=sysdate(),sleep(15),0)', '2024-06-11 10:43:51', '2024-06-11 10:43:51'),
(145, 35, 'TzwSVsOw', 'testing@example.com', '5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z', '2024-06-11 10:43:59', '2024-06-11 10:43:59'),
(146, 35, 'TzwSVsOw', 'testing@example.com', '5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z', '2024-06-11 10:44:07', '2024-06-11 10:44:07'),
(147, 35, 'TzwSVsOw', 'testing@example.com', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '2024-06-11 10:44:16', '2024-06-11 10:44:16'),
(148, 35, 'TzwSVsOw', 'testing@example.com', '555-1; waitfor delay \'0:0:15\' --', '2024-06-11 10:44:25', '2024-06-11 10:44:25'),
(149, 35, 'TzwSVsOw', 'testing@example.com', '555-1); waitfor delay \'0:0:15\' --', '2024-06-11 10:44:33', '2024-06-11 10:44:33'),
(150, 35, 'TzwSVsOw', 'testing@example.com', '555-1 waitfor delay \'0:0:15\' --', '2024-06-11 10:44:42', '2024-06-11 10:44:42'),
(151, 35, 'TzwSVsOw', 'testing@example.com', '555YdxLD4aR\'; waitfor delay \'0:0:15\' --', '2024-06-11 10:44:51', '2024-06-11 10:44:51'),
(152, 35, 'TzwSVsOw', 'testing@example.com', '555-1 OR 520=(SELECT 520 FROM PG_SLEEP(15))--', '2024-06-11 10:44:58', '2024-06-11 10:44:58'),
(153, 35, 'TzwSVsOw', 'testing@example.com', '555-1) OR 412=(SELECT 412 FROM PG_SLEEP(15))--', '2024-06-11 10:45:06', '2024-06-11 10:45:06'),
(154, 35, 'TzwSVsOw', 'testing@example.com', '555-1)) OR 748=(SELECT 748 FROM PG_SLEEP(15))--', '2024-06-11 10:45:14', '2024-06-11 10:45:14'),
(155, 35, 'TzwSVsOw', 'testing@example.com', '555GZsyviie\' OR 132=(SELECT 132 FROM PG_SLEEP(15))--', '2024-06-11 10:45:22', '2024-06-11 10:45:22'),
(156, 35, 'TzwSVsOw', 'testing@example.com', '555HZh8ImBh\') OR 653=(SELECT 653 FROM PG_SLEEP(15))--', '2024-06-11 10:45:30', '2024-06-11 10:45:30'),
(157, 35, 'TzwSVsOw', 'testing@example.com', '555eA9Ze0i6\')) OR 321=(SELECT 321 FROM PG_SLEEP(15))--', '2024-06-11 10:45:37', '2024-06-11 10:45:37'),
(158, 35, 'TzwSVsOw', 'testing@example.com', '555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '2024-06-11 10:45:46', '2024-06-11 10:45:46'),
(159, 35, 'TzwSVsOw', 'testing@example.com', '555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '2024-06-11 10:45:54', '2024-06-11 10:45:54'),
(160, 35, 'TzwSVsOw', 'testing@example.com', '555\'\"', '2024-06-11 10:45:54', '2024-06-11 10:45:54'),
(161, 35, 'TzwSVsOw', 'testing@example.com', '@@AdGTF', '2024-06-11 10:45:55', '2024-06-11 10:45:55'),
(162, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:46:04', '2024-06-11 10:46:04'),
(163, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:46:12', '2024-06-11 10:46:12'),
(164, 35, 'TzwSVsOw', 'testing@example.comcxFr4jQ7', '555', '2024-06-11 10:46:21', '2024-06-11 10:46:21'),
(165, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:46:29', '2024-06-11 10:46:29'),
(166, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:47:18', '2024-06-11 10:47:18'),
(167, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:47:26', '2024-06-11 10:47:26'),
(168, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:47:42', '2024-06-11 10:47:42'),
(169, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:48:03', '2024-06-11 10:48:03'),
(170, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:48:11', '2024-06-11 10:48:11'),
(171, 35, 'TzwSVsOwHjkqRpue', 'testing@example.com', '555', '2024-06-11 10:48:19', '2024-06-11 10:48:19'),
(172, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:48:27', '2024-06-11 10:48:27'),
(173, 35, '-1 OR 2+410-410-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:48:28', '2024-06-11 10:48:28'),
(174, 35, '-1 OR 2+246-246-1=0+0+0+1', 'testing@example.com', '555', '2024-06-11 10:48:29', '2024-06-11 10:48:29'),
(175, 35, '-1\' OR 2+180-180-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:48:29', '2024-06-11 10:48:29'),
(176, 35, '-1\' OR 2+601-601-1=0+0+0+1 or \'j0qPmdNs\'=\'', 'testing@example.com', '555', '2024-06-11 10:48:30', '2024-06-11 10:48:30'),
(177, 35, '-1\" OR 2+249-249-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:48:31', '2024-06-11 10:48:31'),
(178, 35, 'if(now()=sysdate(),sleep(15),0)', 'testing@example.com', '555', '2024-06-11 10:48:39', '2024-06-11 10:48:39'),
(179, 35, 'TzwSVsOw0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'testing@example.com', '555', '2024-06-11 10:48:47', '2024-06-11 10:48:47'),
(180, 35, 'TzwSVsOw0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'testing@example.com', '555', '2024-06-11 10:48:55', '2024-06-11 10:48:55'),
(181, 35, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'testing@example.com', '555', '2024-06-11 10:49:04', '2024-06-11 10:49:04'),
(182, 35, 'TzwSVsOw-1 waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:49:11', '2024-06-11 10:49:11'),
(183, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:49:17', '2024-06-11 10:49:17'),
(184, 35, 'TzwSVsOwtygFIEO5\'; waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:49:19', '2024-06-11 10:49:19'),
(185, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:49:25', '2024-06-11 10:49:25'),
(186, 35, 'TzwSVsOwEEdhPFGl\' OR 971=(SELECT 971 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:49:28', '2024-06-11 10:49:28'),
(187, 34, 'TzwSVsOw', 'testing@example.com', '555HjuTItnb', '2024-06-11 10:49:32', '2024-06-11 10:49:32'),
(188, 35, 'TzwSVsOwyfurS858\') OR 867=(SELECT 867 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:49:36', '2024-06-11 10:49:36'),
(189, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:49:41', '2024-06-11 10:49:41'),
(190, 34, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+749-749-1=0+0+0+1 --', '2024-06-11 10:49:42', '2024-06-11 10:49:42'),
(191, 34, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+922-922-1=0+0+0+1', '2024-06-11 10:49:42', '2024-06-11 10:49:42'),
(192, 34, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+593-593-1=0+0+0+1 --', '2024-06-11 10:49:43', '2024-06-11 10:49:43'),
(193, 34, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+697-697-1=0+0+0+1 or \'Oc2ELQ0X\'=\'', '2024-06-11 10:49:43', '2024-06-11 10:49:43'),
(194, 35, 'TzwSVsOwGCd4YCCf\')) OR 643=(SELECT 643 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:49:44', '2024-06-11 10:49:44'),
(195, 34, 'TzwSVsOw', 'testing@example.com', '-1\" OR 2+51-51-1=0+0+0+1 --', '2024-06-11 10:49:44', '2024-06-11 10:49:44'),
(196, 35, 'TzwSVsOw\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '555', '2024-06-11 10:49:51', '2024-06-11 10:49:51'),
(197, 35, 'TzwSVsOw\'\"', 'testing@example.com', '555', '2024-06-11 10:49:52', '2024-06-11 10:49:52'),
(198, 34, 'TzwSVsOw', 'testing@example.com', '555*if(now()=sysdate(),sleep(15),0)', '2024-06-11 10:49:52', '2024-06-11 10:49:52'),
(199, 35, '@@YvLpD', 'testing@example.com', '555', '2024-06-11 10:49:53', '2024-06-11 10:49:53'),
(200, 34, 'TzwSVsOw', 'testing@example.com', '5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z', '2024-06-11 10:50:00', '2024-06-11 10:50:00'),
(201, 34, 'TzwSVsOw', 'testing@example.com', '5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z', '2024-06-11 10:50:08', '2024-06-11 10:50:08'),
(202, 34, 'TzwSVsOw', 'testing@example.com', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '2024-06-11 10:50:17', '2024-06-11 10:50:17'),
(203, 34, 'TzwSVsOw', 'testing@example.com', '555-1; waitfor delay \'0:0:15\' --', '2024-06-11 10:50:25', '2024-06-11 10:50:25'),
(204, 34, 'TzwSVsOw', 'testing@example.com', '555-1); waitfor delay \'0:0:15\' --', '2024-06-11 10:50:34', '2024-06-11 10:50:34'),
(205, 34, 'TzwSVsOw', 'testing@example.com', '555-1 waitfor delay \'0:0:15\' --', '2024-06-11 10:50:42', '2024-06-11 10:50:42'),
(206, 34, 'TzwSVsOw', 'testing@example.com', '555XeOyRkg5\'; waitfor delay \'0:0:15\' --', '2024-06-11 10:50:51', '2024-06-11 10:50:51'),
(207, 34, 'TzwSVsOw', 'testing@example.com', '555-1 OR 648=(SELECT 648 FROM PG_SLEEP(15))--', '2024-06-11 10:50:59', '2024-06-11 10:50:59'),
(208, 34, 'TzwSVsOw', 'testing@example.com', '555-1) OR 591=(SELECT 591 FROM PG_SLEEP(15))--', '2024-06-11 10:51:08', '2024-06-11 10:51:08'),
(209, 34, 'TzwSVsOw', 'testing@example.com', '555-1)) OR 917=(SELECT 917 FROM PG_SLEEP(15))--', '2024-06-11 10:51:16', '2024-06-11 10:51:16'),
(210, 34, 'TzwSVsOw', 'testing@example.com', '555mm2vMkP6\' OR 870=(SELECT 870 FROM PG_SLEEP(15))--', '2024-06-11 10:51:24', '2024-06-11 10:51:24'),
(211, 34, 'TzwSVsOw', 'testing@example.com', '555byGao9m5\') OR 684=(SELECT 684 FROM PG_SLEEP(15))--', '2024-06-11 10:51:33', '2024-06-11 10:51:33'),
(212, 34, 'TzwSVsOw', 'testing@example.com', '555xL2ztlWq\')) OR 543=(SELECT 543 FROM PG_SLEEP(15))--', '2024-06-11 10:51:41', '2024-06-11 10:51:41'),
(213, 34, 'TzwSVsOw', 'testing@example.com', '555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '2024-06-11 10:51:49', '2024-06-11 10:51:49'),
(214, 34, 'TzwSVsOw', 'testing@example.com', '555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '2024-06-11 10:51:58', '2024-06-11 10:51:58'),
(215, 34, 'TzwSVsOw', 'testing@example.com', '555\'\"', '2024-06-11 10:51:59', '2024-06-11 10:51:59'),
(216, 34, 'TzwSVsOw', 'testing@example.com', '@@wcAns', '2024-06-11 10:52:00', '2024-06-11 10:52:00'),
(217, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:52:09', '2024-06-11 10:52:09'),
(218, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:52:14', '2024-06-11 10:52:14'),
(219, 34, 'TzwSVsOw', 'testing@example.com6rroWJjM', '555', '2024-06-11 10:52:21', '2024-06-11 10:52:21'),
(220, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:52:30', '2024-06-11 10:52:30'),
(221, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:54:08', '2024-06-11 10:54:08'),
(222, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:54:16', '2024-06-11 10:54:16'),
(223, 34, 'TzwSVsOw9Y6LIYPE', 'testing@example.com', '555', '2024-06-11 10:54:24', '2024-06-11 10:54:24'),
(224, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 10:54:33', '2024-06-11 10:54:33'),
(225, 34, '-1 OR 2+412-412-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:54:33', '2024-06-11 10:54:33'),
(226, 34, '-1 OR 2+331-331-1=0+0+0+1', 'testing@example.com', '555', '2024-06-11 10:54:34', '2024-06-11 10:54:34'),
(227, 34, '-1\' OR 2+423-423-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:54:35', '2024-06-11 10:54:35'),
(228, 34, '-1\' OR 2+278-278-1=0+0+0+1 or \'2PLVTGK9\'=\'', 'testing@example.com', '555', '2024-06-11 10:54:35', '2024-06-11 10:54:35'),
(229, 34, '-1\" OR 2+178-178-1=0+0+0+1 --', 'testing@example.com', '555', '2024-06-11 10:54:36', '2024-06-11 10:54:36'),
(230, 34, 'if(now()=sysdate(),sleep(15),0)', 'testing@example.com', '555', '2024-06-11 10:54:43', '2024-06-11 10:54:43'),
(231, 34, 'TzwSVsOw0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'testing@example.com', '555', '2024-06-11 10:54:50', '2024-06-11 10:54:50'),
(232, 34, 'TzwSVsOw0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'testing@example.com', '555', '2024-06-11 10:54:58', '2024-06-11 10:54:58'),
(233, 34, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'testing@example.com', '555', '2024-06-11 10:55:06', '2024-06-11 10:55:06'),
(234, 34, 'TzwSVsOw-1 waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:55:14', '2024-06-11 10:55:14'),
(235, 34, 'TzwSVsOwQ4AbIivf\'; waitfor delay \'0:0:15\' --', 'testing@example.com', '555', '2024-06-11 10:55:22', '2024-06-11 10:55:22'),
(236, 34, 'TzwSVsOwMBAP49W7\' OR 312=(SELECT 312 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:55:31', '2024-06-11 10:55:31'),
(237, 34, 'TzwSVsOwzcSGCpDB\') OR 783=(SELECT 783 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:55:40', '2024-06-11 10:55:40'),
(238, 34, 'TzwSVsOwOIs0JLvr\')) OR 462=(SELECT 462 FROM PG_SLEEP(15))--', 'testing@example.com', '555', '2024-06-11 10:55:47', '2024-06-11 10:55:47'),
(239, 34, 'TzwSVsOw\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '555', '2024-06-11 10:55:55', '2024-06-11 10:55:55'),
(240, 34, 'TzwSVsOw\'\"', 'testing@example.com', '555', '2024-06-11 10:55:56', '2024-06-11 10:55:56'),
(241, 34, '@@Vb4TM', 'testing@example.com', '555', '2024-06-11 10:55:57', '2024-06-11 10:55:57'),
(242, 34, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 11:11:28', '2024-06-11 11:11:28'),
(243, 35, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 11:11:28', '2024-06-11 11:11:28'),
(244, 36, 'TzwSVsOw', 'testing@example.com', '555', '2024-06-11 11:11:28', '2024-06-11 11:11:28'),
(245, 60, 'Bello sani Anka', 'bellosanianka01@gmail.com', 'This is a fantastic initiative! Goal Prime Organisation\'s visit to Zamfara showcases the power of collaborative efforts in driving progress in the education sector. By working together, we can develop innovative solutions that address the unique challenges faced by Zamfara\'s students and educators. Kudos to Goal Prime Organisation for taking the lead on this partnership - I look forward to seeing the positive impact it will have on the community!\r\nMeanwhile,\r\n\r\n\r\n\"Dear Hiring Manager,\r\nI am writing to express my sincere appreciation for considering my application for the position of CP Caseworker at Goal Prime Organisation. As an educationist with 4 years of experience working with NGOs, I am confident that my skills and passion for child protection make me an ideal candidate for this role.\r\nAs an indigene of Anka Local Government, Zamfara State, I am particularly drawn to this opportunity because of the organization\'s commitment to improving the education sector in Zamfara. I am eager to contribute my expertise and experience to make a positive impact in my home community.\r\nI would be grateful if you could provide me with an update on the status of my application. I look forward to the opportunity to discuss my qualifications further.\r\nThank you for your time and consideration.\r\nSincerely\r\nBello Sani Anka', '2024-12-21 18:11:12', '2024-12-21 18:11:12'),
(246, 60, 'Mohammed Mohammed Bannama', 'bannamamohammed7@gmail.com', 'Hello World', '2025-01-17 14:54:47', '2025-01-17 14:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan ', NULL, NULL),
(2, 'Albania ', NULL, NULL),
(3, 'Algeria ', NULL, NULL),
(4, 'American Samoa ', NULL, NULL),
(5, 'Andorra ', NULL, NULL),
(6, 'Angola ', NULL, NULL),
(7, 'Anguilla ', NULL, NULL),
(8, 'Antigua & Barbuda ', NULL, NULL),
(9, 'Argentina ', NULL, NULL),
(10, 'Armenia ', NULL, NULL),
(11, 'Aruba ', NULL, NULL),
(12, 'Australia ', NULL, NULL),
(13, 'Austria ', NULL, NULL),
(14, 'Azerbaijan ', NULL, NULL),
(15, 'Bahamas, The ', NULL, NULL),
(16, 'Bahrain ', NULL, NULL),
(17, 'Bangladesh ', NULL, NULL),
(18, 'Barbados ', NULL, NULL),
(19, 'Belarus ', NULL, NULL),
(20, 'Belgium ', NULL, NULL),
(21, 'Belize ', NULL, NULL),
(22, 'Benin ', NULL, NULL),
(23, 'Bermuda ', NULL, NULL),
(24, 'Bhutan ', NULL, NULL),
(25, 'Bolivia ', NULL, NULL),
(26, 'Bosnia & Herzegovina ', NULL, NULL),
(27, 'Botswana ', NULL, NULL),
(28, 'Brazil ', NULL, NULL),
(29, 'British Virgin Is. ', NULL, NULL),
(30, 'Brunei ', NULL, NULL),
(31, 'Bulgaria ', NULL, NULL),
(32, 'Burkina Faso ', NULL, NULL),
(33, 'Burma ', NULL, NULL),
(34, 'Burundi ', NULL, NULL),
(35, 'Cambodia ', NULL, NULL),
(36, 'Cameroon ', NULL, NULL),
(37, 'Canada ', NULL, NULL),
(38, 'Cape Verde ', NULL, NULL),
(39, 'Cayman Islands ', NULL, NULL),
(40, 'Central African Rep. ', NULL, NULL),
(41, 'Chad ', NULL, NULL),
(42, 'Chile ', NULL, NULL),
(43, 'China ', NULL, NULL),
(44, 'Colombia ', NULL, NULL),
(45, 'Comoros ', NULL, NULL),
(46, 'Congo, Dem. Rep. ', NULL, NULL),
(47, 'Congo, Repub. of the ', NULL, NULL),
(48, 'Cook Islands ', NULL, NULL),
(49, 'Costa Rica ', NULL, NULL),
(50, 'Cote d\'Ivoire ', NULL, NULL),
(51, 'Croatia ', NULL, NULL),
(52, 'Cuba ', NULL, NULL),
(53, 'Cyprus ', NULL, NULL),
(54, 'Czech Republic ', NULL, NULL),
(55, 'Denmark ', NULL, NULL),
(56, 'Djibouti ', NULL, NULL),
(57, 'Dominica ', NULL, NULL),
(58, 'Dominican Republic ', NULL, NULL),
(59, 'East Timor ', NULL, NULL),
(60, 'Ecuador ', NULL, NULL),
(61, 'Egypt ', NULL, NULL),
(62, 'El Salvador ', NULL, NULL),
(63, 'Equatorial Guinea ', NULL, NULL),
(64, 'Eritrea ', NULL, NULL),
(65, 'Estonia ', NULL, NULL),
(66, 'Ethiopia ', NULL, NULL),
(67, 'Faroe Islands ', NULL, NULL),
(68, 'Fiji ', NULL, NULL),
(69, 'Finland ', NULL, NULL),
(70, 'France ', NULL, NULL),
(71, 'French Guiana ', NULL, NULL),
(72, 'French Polynesia ', NULL, NULL),
(73, 'Gabon ', NULL, NULL),
(74, 'Gambia, The ', NULL, NULL),
(75, 'Gaza Strip ', NULL, NULL),
(76, 'Georgia ', NULL, NULL),
(77, 'Germany ', NULL, NULL),
(78, 'Ghana ', NULL, NULL),
(79, 'Gibraltar ', NULL, NULL),
(80, 'Greece ', NULL, NULL),
(81, 'Greenland ', NULL, NULL),
(82, 'Grenada ', NULL, NULL),
(83, 'Guadeloupe ', NULL, NULL),
(84, 'Guam ', NULL, NULL),
(85, 'Guatemala ', NULL, NULL),
(86, 'Guernsey ', NULL, NULL),
(87, 'Guinea ', NULL, NULL),
(88, 'Guinea-Bissau ', NULL, NULL),
(89, 'Guyana ', NULL, NULL),
(90, 'Haiti ', NULL, NULL),
(91, 'Honduras ', NULL, NULL),
(92, 'Hong Kong ', NULL, NULL),
(93, 'Hungary ', NULL, NULL),
(94, 'Iceland ', NULL, NULL),
(95, 'India ', NULL, NULL),
(96, 'Indonesia ', NULL, NULL),
(97, 'Iran ', NULL, NULL),
(98, 'Iraq ', NULL, NULL),
(99, 'Ireland ', NULL, NULL),
(100, 'Isle of Man ', NULL, NULL),
(101, 'Israel ', NULL, NULL),
(102, 'Italy ', NULL, NULL),
(103, 'Jamaica ', NULL, NULL),
(104, 'Japan ', NULL, NULL),
(105, 'Jersey ', NULL, NULL),
(106, 'Jordan ', NULL, NULL),
(107, 'Kazakhstan ', NULL, NULL),
(108, 'Kenya ', NULL, NULL),
(109, 'Kiribati ', NULL, NULL),
(110, 'Korea, North ', NULL, NULL),
(111, 'Korea, South ', NULL, NULL),
(112, 'Kuwait ', NULL, NULL),
(113, 'Kyrgyzstan ', NULL, NULL),
(114, 'Laos ', NULL, NULL),
(115, 'Latvia ', NULL, NULL),
(116, 'Lebanon ', NULL, NULL),
(117, 'Lesotho ', NULL, NULL),
(118, 'Liberia ', NULL, NULL),
(119, 'Libya ', NULL, NULL),
(120, 'Liechtenstein ', NULL, NULL),
(121, 'Lithuania ', NULL, NULL),
(122, 'Luxembourg ', NULL, NULL),
(123, 'Macau ', NULL, NULL),
(124, 'Macedonia ', NULL, NULL),
(125, 'Madagascar ', NULL, NULL),
(126, 'Malawi ', NULL, NULL),
(127, 'Malaysia ', NULL, NULL),
(128, 'Maldives ', NULL, NULL),
(129, 'Mali ', NULL, NULL),
(130, 'Malta ', NULL, NULL),
(131, 'Marshall Islands ', NULL, NULL),
(132, 'Martinique ', NULL, NULL),
(133, 'Mauritania ', NULL, NULL),
(134, 'Mauritius ', NULL, NULL),
(135, 'Mayotte ', NULL, NULL),
(136, 'Mexico ', NULL, NULL),
(137, 'Micronesia, Fed. St. ', NULL, NULL),
(138, 'Moldova ', NULL, NULL),
(139, 'Monaco ', NULL, NULL),
(140, 'Mongolia ', NULL, NULL),
(141, 'Montserrat ', NULL, NULL),
(142, 'Morocco ', NULL, NULL),
(143, 'Mozambique ', NULL, NULL),
(144, 'Namibia ', NULL, NULL),
(145, 'Nauru ', NULL, NULL),
(146, 'Nepal ', NULL, NULL),
(147, 'Netherlands ', NULL, NULL),
(148, 'Netherlands Antilles ', NULL, NULL),
(149, 'New Caledonia ', NULL, NULL),
(150, 'New Zealand ', NULL, NULL),
(151, 'Nicaragua ', NULL, NULL),
(152, 'Niger ', NULL, NULL),
(153, 'Nigeria ', NULL, NULL),
(154, 'N. Mariana Islands ', NULL, NULL),
(155, 'Norway ', NULL, NULL),
(156, 'Oman ', NULL, NULL),
(157, 'Pakistan ', NULL, NULL),
(158, 'Palau ', NULL, NULL),
(159, 'Panama ', NULL, NULL),
(160, 'Papua New Guinea ', NULL, NULL),
(161, 'Paraguay ', NULL, NULL),
(162, 'Peru ', NULL, NULL),
(163, 'Philippines ', NULL, NULL),
(164, 'Poland ', NULL, NULL),
(165, 'Portugal ', NULL, NULL),
(166, 'Puerto Rico ', NULL, NULL),
(167, 'Qatar ', NULL, NULL),
(168, 'Reunion ', NULL, NULL),
(169, 'Romania ', NULL, NULL),
(170, 'Russia ', NULL, NULL),
(171, 'Rwanda ', NULL, NULL),
(172, 'Saint Helena ', NULL, NULL),
(173, 'Saint Kitts & Nevis ', NULL, NULL),
(174, 'Saint Lucia ', NULL, NULL),
(175, 'St Pierre & Miquelon ', NULL, NULL),
(176, 'Saint Vincent and the Grenadines ', NULL, NULL),
(177, 'Samoa ', NULL, NULL),
(178, 'San Marino ', NULL, NULL),
(179, 'Sao Tome & Principe ', NULL, NULL),
(180, 'Saudi Arabia ', NULL, NULL),
(181, 'Senegal ', NULL, NULL),
(182, 'Serbia ', NULL, NULL),
(183, 'Seychelles ', NULL, NULL),
(184, 'Sierra Leone ', NULL, NULL),
(185, 'Singapore ', NULL, NULL),
(186, 'Slovakia ', NULL, NULL),
(187, 'Slovenia ', NULL, NULL),
(188, 'Solomon Islands ', NULL, NULL),
(189, 'Somalia ', NULL, NULL),
(190, 'South Africa ', NULL, NULL),
(191, 'Spain ', NULL, NULL),
(192, 'Sri Lanka ', NULL, NULL),
(193, 'Sudan ', NULL, NULL),
(194, 'Suriname ', NULL, NULL),
(195, 'Swaziland ', NULL, NULL),
(196, 'Sweden ', NULL, NULL),
(197, 'Switzerland ', NULL, NULL),
(198, 'Syria ', NULL, NULL),
(199, 'Taiwan ', NULL, NULL),
(200, 'Tajikistan ', NULL, NULL),
(201, 'Tanzania ', NULL, NULL),
(202, 'Thailand ', NULL, NULL),
(203, 'Togo ', NULL, NULL),
(204, 'Tonga ', NULL, NULL),
(205, 'Trinidad & Tobago ', NULL, NULL),
(206, 'Tunisia ', NULL, NULL),
(207, 'Turkey ', NULL, NULL),
(208, 'Turkmenistan ', NULL, NULL),
(209, 'Turks & Caicos Is ', NULL, NULL),
(210, 'Tuvalu ', NULL, NULL),
(211, 'Uganda ', NULL, NULL),
(212, 'Ukraine ', NULL, NULL),
(213, 'United Arab Emirates ', NULL, NULL),
(214, 'United Kingdom ', NULL, NULL),
(215, 'United States ', NULL, NULL),
(216, 'Uruguay ', NULL, NULL),
(217, 'Uzbekistan ', NULL, NULL),
(218, 'Vanuatu ', NULL, NULL),
(219, 'Venezuela ', NULL, NULL),
(220, 'Vietnam ', NULL, NULL),
(221, 'Virgin Islands ', NULL, NULL),
(222, 'Wallis and Futuna ', NULL, NULL),
(223, 'West Bank ', NULL, NULL),
(224, 'Western Sahara ', NULL, NULL),
(225, 'Yemen ', NULL, NULL),
(226, 'Zambia ', NULL, NULL),
(227, 'Zimbabwe ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `project` varchar(255) NOT NULL,
  `duration` varchar(225) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `name`, `email`, `phone`, `country`, `city`, `state`, `zip_code`, `profession`, `project`, `duration`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Onche Austin', 'stino4win@gmail.com', '08068019494', 'Nigeria', 'Lokogoma', 'Abuja', '234', 'Business', 'Select Fund', 'one off', '1000', 'new', '2024-04-04 08:19:40', '2024-04-04 08:19:40'),
(3, 'John Thomas', 'stino4win@gmail.com', '08068019494', 'Algeria', 'Lokogoma', 'Abuja', '234', NULL, 'Education In Emergency', 'one off', '2000', 'new', '2024-04-04 10:12:14', '2024-04-04 10:12:14'),
(4, 'Heidi Small', 'cehi@mailinator.com', '+1 (563) 923-4179', 'Belize', 'Consequatur incidun', 'Sint quae minima rei', '73810', 'Incididunt aut labor', 'Education In Emergency', 'monthly', '500', 'new', '2024-05-16 10:43:02', '2024-05-16 10:43:02'),
(5, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:13:43', '2024-06-11 10:13:43'),
(6, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:13:47', '2024-06-11 10:13:47'),
(7, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:14:03', '2024-06-11 10:14:03'),
(8, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:14:12', '2024-06-11 10:14:12'),
(9, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:16:00', '2024-06-11 10:16:00'),
(10, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:16:09', '2024-06-11 10:16:09'),
(11, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '800C8FLElr', 'new', '2024-06-11 10:16:17', '2024-06-11 10:16:17'),
(12, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:16:24', '2024-06-11 10:16:24'),
(13, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '-1 OR 2+485-485-1=0+0+0+1 --', 'new', '2024-06-11 10:16:25', '2024-06-11 10:16:25'),
(14, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '-1 OR 2+360-360-1=0+0+0+1', 'new', '2024-06-11 10:16:25', '2024-06-11 10:16:25'),
(15, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '-1\' OR 2+222-222-1=0+0+0+1 --', 'new', '2024-06-11 10:16:26', '2024-06-11 10:16:26'),
(16, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '-1\' OR 2+186-186-1=0+0+0+1 or \'guEFKwi8\'=\'', 'new', '2024-06-11 10:16:27', '2024-06-11 10:16:27'),
(17, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '-1\" OR 2+742-742-1=0+0+0+1 --', 'new', '2024-06-11 10:16:27', '2024-06-11 10:16:27'),
(18, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80*if(now()=sysdate(),sleep(15),0)', 'new', '2024-06-11 10:16:35', '2024-06-11 10:16:35'),
(19, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '800\'XOR(80*if(now()=sysdate(),sleep(15),0))XOR\'Z', 'new', '2024-06-11 10:16:43', '2024-06-11 10:16:43'),
(20, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:16:44', '2024-06-11 10:16:44'),
(21, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '800\"XOR(80*if(now()=sysdate(),sleep(15),0))XOR\"Z', 'new', '2024-06-11 10:16:53', '2024-06-11 10:16:53'),
(22, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:16:53', '2024-06-11 10:16:53'),
(23, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'new', '2024-06-11 10:17:02', '2024-06-11 10:17:02'),
(24, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1; waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:17:11', '2024-06-11 10:17:11'),
(25, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:17:12', '2024-06-11 10:17:12'),
(26, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1); waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:17:21', '2024-06-11 10:17:21'),
(27, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1 waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:17:29', '2024-06-11 10:17:29'),
(28, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80t4LIVrQp\'; waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:17:38', '2024-06-11 10:17:38'),
(29, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1 OR 244=(SELECT 244 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:17:47', '2024-06-11 10:17:47'),
(30, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1) OR 676=(SELECT 676 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:17:55', '2024-06-11 10:17:55'),
(31, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80-1)) OR 142=(SELECT 142 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:18:03', '2024-06-11 10:18:03'),
(32, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80q4kRPGE0\' OR 382=(SELECT 382 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:18:12', '2024-06-11 10:18:12'),
(33, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80wLfCKFrq\') OR 60=(SELECT 60 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:18:21', '2024-06-11 10:18:21'),
(34, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80UmyADm1n\')) OR 692=(SELECT 692 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:18:30', '2024-06-11 10:18:30'),
(35, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', 'new', '2024-06-11 10:18:38', '2024-06-11 10:18:38'),
(36, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'new', '2024-06-11 10:18:46', '2024-06-11 10:18:46'),
(37, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80\'\"', 'new', '2024-06-11 10:18:46', '2024-06-11 10:18:46'),
(38, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '@@QyEfW', 'new', '2024-06-11 10:18:48', '2024-06-11 10:18:48'),
(39, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:18:50', '2024-06-11 10:18:50'),
(40, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:18:57', '2024-06-11 10:18:57'),
(41, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:18:59', '2024-06-11 10:18:59'),
(42, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:06', '2024-06-11 10:19:06'),
(43, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80xYdAmfxu', 'new', '2024-06-11 10:19:08', '2024-06-11 10:19:08'),
(44, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscotaFZjVCi', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:14', '2024-06-11 10:19:14'),
(45, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:19:17', '2024-06-11 10:19:17'),
(46, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '-1 OR 2+975-975-1=0+0+0+1 --', 'new', '2024-06-11 10:19:18', '2024-06-11 10:19:18'),
(47, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '-1 OR 2+954-954-1=0+0+0+1', 'new', '2024-06-11 10:19:18', '2024-06-11 10:19:18'),
(48, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '-1\' OR 2+275-275-1=0+0+0+1 --', 'new', '2024-06-11 10:19:19', '2024-06-11 10:19:19'),
(49, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '-1\' OR 2+43-43-1=0+0+0+1 or \'wN6ae0Ou\'=\'', 'new', '2024-06-11 10:19:20', '2024-06-11 10:19:20'),
(50, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '-1\" OR 2+629-629-1=0+0+0+1 --', 'new', '2024-06-11 10:19:20', '2024-06-11 10:19:20'),
(51, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:22', '2024-06-11 10:19:22'),
(52, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1 OR 2+58-58-1=0+0+0+1 --', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:23', '2024-06-11 10:19:23'),
(53, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1 OR 2+471-471-1=0+0+0+1', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:23', '2024-06-11 10:19:23'),
(54, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\' OR 2+825-825-1=0+0+0+1 --', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:24', '2024-06-11 10:19:24'),
(55, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\' OR 2+50-50-1=0+0+0+1 or \'1sfQE4Ez\'=\'', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:25', '2024-06-11 10:19:25'),
(56, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\" OR 2+24-24-1=0+0+0+1 --', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:25', '2024-06-11 10:19:25'),
(57, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80*if(now()=sysdate(),sleep(15),0)', 'new', '2024-06-11 10:19:28', '2024-06-11 10:19:28'),
(58, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'if(now()=sysdate(),sleep(15),0)', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:34', '2024-06-11 10:19:34'),
(59, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '800\'XOR(80*if(now()=sysdate(),sleep(15),0))XOR\'Z', 'new', '2024-06-11 10:19:36', '2024-06-11 10:19:36'),
(60, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:43', '2024-06-11 10:19:43'),
(61, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '800\"XOR(80*if(now()=sysdate(),sleep(15),0))XOR\"Z', 'new', '2024-06-11 10:19:45', '2024-06-11 10:19:45'),
(62, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:51', '2024-06-11 10:19:51'),
(63, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'new', '2024-06-11 10:19:54', '2024-06-11 10:19:54'),
(64, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:19:59', '2024-06-11 10:19:59'),
(65, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1; waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:20:03', '2024-06-11 10:20:03'),
(66, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco-1 waitfor delay \'0:0:15\' --', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:08', '2024-06-11 10:20:08'),
(67, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1); waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:20:11', '2024-06-11 10:20:11'),
(68, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscobHW8tS6J\'; waitfor delay \'0:0:15\' --', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:17', '2024-06-11 10:20:17'),
(69, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1 waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:20:20', '2024-06-11 10:20:20'),
(70, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco5IoQ0ONe\' OR 829=(SELECT 829 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:26', '2024-06-11 10:20:26'),
(71, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80lfC5IloE\'; waitfor delay \'0:0:15\' --', 'new', '2024-06-11 10:20:28', '2024-06-11 10:20:28'),
(72, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscoQot5jyLc\') OR 300=(SELECT 300 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:34', '2024-06-11 10:20:34'),
(73, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1 OR 989=(SELECT 989 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:20:37', '2024-06-11 10:20:37'),
(74, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscoSoKugMnx\')) OR 174=(SELECT 174 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:44', '2024-06-11 10:20:44'),
(75, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1) OR 504=(SELECT 504 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:20:46', '2024-06-11 10:20:46'),
(76, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:51', '2024-06-11 10:20:51'),
(77, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco\'\"', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:52', '2024-06-11 10:20:52'),
(78, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '@@YXUA8', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:20:53', '2024-06-11 10:20:53'),
(79, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80-1)) OR 221=(SELECT 221 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:20:54', '2024-06-11 10:20:54'),
(80, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:01', '2024-06-11 10:21:01'),
(81, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80mPa7lKNs\' OR 440=(SELECT 440 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:21:03', '2024-06-11 10:21:03'),
(82, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:10', '2024-06-11 10:21:10'),
(83, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80oJ4mFtei\') OR 907=(SELECT 907 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:21:11', '2024-06-11 10:21:11'),
(84, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan orEyfHuF', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:18', '2024-06-11 10:21:18'),
(85, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80GrVCSVik\')) OR 861=(SELECT 861 FROM PG_SLEEP(15))--', 'new', '2024-06-11 10:21:19', '2024-06-11 10:21:19'),
(86, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:25', '2024-06-11 10:21:25'),
(87, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1 OR 2+22-22-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:26', '2024-06-11 10:21:26'),
(88, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', 'new', '2024-06-11 10:21:26', '2024-06-11 10:21:26'),
(89, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1 OR 2+79-79-1=0+0+0+1', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:27', '2024-06-11 10:21:27'),
(90, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\' OR 2+197-197-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:27', '2024-06-11 10:21:27'),
(91, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\' OR 2+139-139-1=0+0+0+1 or \'kJ8dQbvD\'=\'', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:28', '2024-06-11 10:21:28'),
(92, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\" OR 2+623-623-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:29', '2024-06-11 10:21:29'),
(93, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'new', '2024-06-11 10:21:34', '2024-06-11 10:21:34'),
(94, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80\'\"', 'new', '2024-06-11 10:21:35', '2024-06-11 10:21:35'),
(95, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '@@OCS18', 'new', '2024-06-11 10:21:36', '2024-06-11 10:21:36'),
(96, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'if(now()=sysdate(),sleep(15),0)', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:37', '2024-06-11 10:21:37'),
(97, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:21:45', '2024-06-11 10:21:45'),
(98, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan 0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:46', '2024-06-11 10:21:46'),
(99, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:21:54', '2024-06-11 10:21:54'),
(100, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan 0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:21:55', '2024-06-11 10:21:55'),
(101, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscoTXeb6tjE', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:03', '2024-06-11 10:22:03'),
(102, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:04', '2024-06-11 10:22:04'),
(103, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:12', '2024-06-11 10:22:12'),
(104, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1 OR 2+899-899-1=0+0+0+1 --', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:12', '2024-06-11 10:22:12'),
(105, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan -1 waitfor delay \'0:0:15\' --', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:13', '2024-06-11 10:22:13'),
(106, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1 OR 2+505-505-1=0+0+0+1', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:13', '2024-06-11 10:22:13'),
(107, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\' OR 2+803-803-1=0+0+0+1 --', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:14', '2024-06-11 10:22:14'),
(108, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\' OR 2+80-80-1=0+0+0+1 or \'0p09nJ28\'=\'', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:14', '2024-06-11 10:22:14'),
(109, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '-1\" OR 2+14-14-1=0+0+0+1 --', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:15', '2024-06-11 10:22:15'),
(110, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan kUGfmK96\'; waitfor delay \'0:0:15\' --', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:21', '2024-06-11 10:22:21'),
(111, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'if(now()=sysdate(),sleep(15),0)', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:23', '2024-06-11 10:22:23'),
(112, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan FnzvMIPN\' OR 199=(SELECT 199 FROM PG_SLEEP(15))--', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:29', '2024-06-11 10:22:29'),
(113, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:32', '2024-06-11 10:22:32'),
(114, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan MOUmzXas\') OR 411=(SELECT 411 FROM PG_SLEEP(15))--', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:38', '2024-06-11 10:22:38'),
(115, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:41', '2024-06-11 10:22:41'),
(116, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan dJk2BAXV\')) OR 182=(SELECT 182 FROM PG_SLEEP(15))--', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:47', '2024-06-11 10:22:47'),
(117, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:50', '2024-06-11 10:22:50'),
(118, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan \'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:56', '2024-06-11 10:22:56'),
(119, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan \'\"', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:56', '2024-06-11 10:22:56'),
(120, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '@@q6JMR', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:22:58', '2024-06-11 10:22:58'),
(121, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco-1 waitfor delay \'0:0:15\' --', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:22:58', '2024-06-11 10:22:58'),
(122, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:23:07', '2024-06-11 10:23:07'),
(123, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscoFNLyWPzE\'; waitfor delay \'0:0:15\' --', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:08', '2024-06-11 10:23:08'),
(124, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:23:16', '2024-06-11 10:23:16'),
(125, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco1wsypMZ8\' OR 918=(SELECT 918 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:16', '2024-06-11 10:23:16'),
(126, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one offQXpujrtO', '80', 'new', '2024-06-11 10:23:25', '2024-06-11 10:23:25'),
(127, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San FranciscovLC4OnE6\') OR 631=(SELECT 631 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:25', '2024-06-11 10:23:25'),
(128, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:23:31', '2024-06-11 10:23:31'),
(129, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco5Q4WuWeI\')) OR 700=(SELECT 700 FROM PG_SLEEP(15))--', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:32', '2024-06-11 10:23:32'),
(130, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '-1 OR 2+788-788-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:23:32', '2024-06-11 10:23:32'),
(131, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '-1 OR 2+272-272-1=0+0+0+1', '80', 'new', '2024-06-11 10:23:33', '2024-06-11 10:23:33'),
(132, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '-1\' OR 2+620-620-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:23:33', '2024-06-11 10:23:33'),
(133, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '-1\' OR 2+206-206-1=0+0+0+1 or \'xjdStRFW\'=\'', '80', 'new', '2024-06-11 10:23:34', '2024-06-11 10:23:34'),
(134, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '-1\" OR 2+203-203-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:23:35', '2024-06-11 10:23:35'),
(135, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:39', '2024-06-11 10:23:39'),
(136, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco\'\"', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:39', '2024-06-11 10:23:39'),
(137, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', '@@DadwN', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:41', '2024-06-11 10:23:41'),
(138, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'if(now()=sysdate(),sleep(15),0)', '80', 'new', '2024-06-11 10:23:43', '2024-06-11 10:23:43'),
(139, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:49', '2024-06-11 10:23:49'),
(140, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '80', 'new', '2024-06-11 10:23:52', '2024-06-11 10:23:52'),
(141, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:23:58', '2024-06-11 10:23:58'),
(142, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '80', 'new', '2024-06-11 10:24:01', '2024-06-11 10:24:01'),
(143, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan 5J7yPbjr', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:07', '2024-06-11 10:24:07'),
(144, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '80', 'new', '2024-06-11 10:24:10', '2024-06-11 10:24:10'),
(145, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:16', '2024-06-11 10:24:16'),
(146, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1 OR 2+155-155-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:17', '2024-06-11 10:24:17'),
(147, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1 OR 2+918-918-1=0+0+0+1', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:18', '2024-06-11 10:24:18'),
(148, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\' OR 2+944-944-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:18', '2024-06-11 10:24:18'),
(149, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\' OR 2+302-302-1=0+0+0+1 or \'xicaT6kC\'=\'', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:19', '2024-06-11 10:24:19'),
(150, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off-1 waitfor delay \'0:0:15\' --', '80', 'new', '2024-06-11 10:24:19', '2024-06-11 10:24:19'),
(151, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '-1\" OR 2+877-877-1=0+0+0+1 --', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:20', '2024-06-11 10:24:20'),
(152, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one offkbJxhrm4\'; waitfor delay \'0:0:15\' --', '80', 'new', '2024-06-11 10:24:27', '2024-06-11 10:24:27'),
(153, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'if(now()=sysdate(),sleep(15),0)', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:28', '2024-06-11 10:24:28'),
(154, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one offbYT0FLDG\' OR 189=(SELECT 189 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:24:36', '2024-06-11 10:24:36'),
(155, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan 0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:39', '2024-06-11 10:24:39'),
(156, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one offVGanEymf\') OR 294=(SELECT 294 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:24:44', '2024-06-11 10:24:44'),
(157, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan 0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:45', '2024-06-11 10:24:45'),
(158, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one offiV1J9s5z\')) OR 701=(SELECT 701 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:24:53', '2024-06-11 10:24:53'),
(159, 'TzwSVsOw', 'testing@example.com', '555-666-0606', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:24:53', '2024-06-11 10:24:53'),
(160, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '80', 'new', '2024-06-11 10:25:00', '2024-06-11 10:25:00'),
(161, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off\'\"', '80', 'new', '2024-06-11 10:25:01', '2024-06-11 10:25:01'),
(162, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan -1 waitfor delay \'0:0:15\' --', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:25:02', '2024-06-11 10:25:02'),
(163, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', '@@fOU8r', '80', 'new', '2024-06-11 10:25:02', '2024-06-11 10:25:02'),
(164, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one offVighY51W', '80', 'new', '2024-06-11 10:26:09', '2024-06-11 10:26:09'),
(165, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:26:17', '2024-06-11 10:26:17'),
(166, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1 OR 2+182-182-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:18', '2024-06-11 10:26:18'),
(167, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1 OR 3+182-182-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:18', '2024-06-11 10:26:18'),
(168, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1 OR 2+261-261-1=0+0+0+1', '80', 'new', '2024-06-11 10:26:19', '2024-06-11 10:26:19'),
(169, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1 OR 3+261-261-1=0+0+0+1', '80', 'new', '2024-06-11 10:26:20', '2024-06-11 10:26:20'),
(170, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\' OR 2+364-364-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:21', '2024-06-11 10:26:21'),
(171, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\' OR 3+364-364-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:21', '2024-06-11 10:26:21'),
(172, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\' OR 2+357-357-1=0+0+0+1 or \'mQkdKqmZ\'=\'', '80', 'new', '2024-06-11 10:26:22', '2024-06-11 10:26:22'),
(173, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\' OR 3+357-357-1=0+0+0+1 or \'mQkdKqmZ\'=\'', '80', 'new', '2024-06-11 10:26:23', '2024-06-11 10:26:23'),
(174, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\" OR 2+52-52-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:23', '2024-06-11 10:26:23'),
(175, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '-1\" OR 3+52-52-1=0+0+0+1 --', '80', 'new', '2024-06-11 10:26:24', '2024-06-11 10:26:24'),
(176, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'if(now()=sysdate(),sleep(15),0)', '80', 'new', '2024-06-11 10:26:33', '2024-06-11 10:26:33'),
(177, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '80', 'new', '2024-06-11 10:26:41', '2024-06-11 10:26:41'),
(178, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '80', 'new', '2024-06-11 10:26:50', '2024-06-11 10:26:50'),
(179, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '80', 'new', '2024-06-11 10:26:59', '2024-06-11 10:26:59'),
(180, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off-1 waitfor delay \'0:0:15\' --', '80', 'new', '2024-06-11 10:27:08', '2024-06-11 10:27:08'),
(181, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:12', '2024-06-11 10:27:12'),
(182, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one offU8uGWfJl\'; waitfor delay \'0:0:15\' --', '80', 'new', '2024-06-11 10:27:16', '2024-06-11 10:27:16'),
(183, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:21', '2024-06-11 10:27:21'),
(184, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one offt1NLLHLl\' OR 610=(SELECT 610 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:27:24', '2024-06-11 10:27:24'),
(185, 'TzwSVsOw1jwDnG2r', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:28', '2024-06-11 10:27:28'),
(186, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one offed1pSspJ\') OR 737=(SELECT 737 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:27:32', '2024-06-11 10:27:32'),
(187, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:36', '2024-06-11 10:27:36'),
(188, '-1 OR 2+33-33-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:37', '2024-06-11 10:27:37'),
(189, '-1 OR 2+231-231-1=0+0+0+1', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:37', '2024-06-11 10:27:37'),
(190, '-1\' OR 2+418-418-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:38', '2024-06-11 10:27:38'),
(191, '-1\' OR 2+427-427-1=0+0+0+1 or \'gU30pKUE\'=\'', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:38', '2024-06-11 10:27:38'),
(192, '-1\" OR 2+704-704-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:39', '2024-06-11 10:27:39'),
(193, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one offAXaIuvWe\')) OR 159=(SELECT 159 FROM PG_SLEEP(15))--', '80', 'new', '2024-06-11 10:27:40', '2024-06-11 10:27:40'),
(194, 'if(now()=sysdate(),sleep(15),0)', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:46', '2024-06-11 10:27:46'),
(195, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '80', 'new', '2024-06-11 10:27:48', '2024-06-11 10:27:48'),
(196, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off\'\"', '80', 'new', '2024-06-11 10:27:48', '2024-06-11 10:27:48'),
(197, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', '@@npVAt', '80', 'new', '2024-06-11 10:27:50', '2024-06-11 10:27:50'),
(198, 'TzwSVsOw0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:27:55', '2024-06-11 10:27:55'),
(199, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:27:58', '2024-06-11 10:27:58'),
(200, 'TzwSVsOw0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:03', '2024-06-11 10:28:03'),
(201, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:28:07', '2024-06-11 10:28:07'),
(202, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:11', '2024-06-11 10:28:11'),
(203, 'TzwSVsOw', 'testing@example.comfdR8IpDw', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:28:16', '2024-06-11 10:28:16'),
(204, 'TzwSVsOw-1 waitfor delay \'0:0:15\' --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:19', '2024-06-11 10:28:19'),
(205, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:28:25', '2024-06-11 10:28:25'),
(206, 'TzwSVsOwVIC06av3\'; waitfor delay \'0:0:15\' --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:27', '2024-06-11 10:28:27'),
(207, 'TzwSVsOwCq7SXEbf\' OR 428=(SELECT 428 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:35', '2024-06-11 10:28:35'),
(208, 'TzwSVsOwfmRYDN5L\') OR 452=(SELECT 452 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:44', '2024-06-11 10:28:44'),
(209, 'TzwSVsOwduE3vmTe\')) OR 617=(SELECT 617 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:28:52', '2024-06-11 10:28:52'),
(210, 'TzwSVsOw\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:01', '2024-06-11 10:29:01'),
(211, 'TzwSVsOw\'\"', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:01', '2024-06-11 10:29:01'),
(212, '@@NHQkf', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:03', '2024-06-11 10:29:03'),
(213, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:11', '2024-06-11 10:29:11'),
(214, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:19', '2024-06-11 10:29:19'),
(215, 'TzwSVsOw', 'testing@example.com', '555-666-0606wnhdqMj4', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:28', '2024-06-11 10:29:28'),
(216, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:35', '2024-06-11 10:29:35'),
(217, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+557-557-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:36', '2024-06-11 10:29:36'),
(218, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+95-95-1=0+0+0+1', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:36', '2024-06-11 10:29:36'),
(219, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+687-687-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:37', '2024-06-11 10:29:37'),
(220, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+73-73-1=0+0+0+1 or \'Ca1pVl9H\'=\'', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:37', '2024-06-11 10:29:37'),
(221, 'TzwSVsOw', 'testing@example.com', '-1\" OR 2+463-463-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:38', '2024-06-11 10:29:38');
INSERT INTO `donations` (`id`, `name`, `email`, `phone`, `country`, `city`, `state`, `zip_code`, `profession`, `project`, `duration`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(222, 'TzwSVsOw', 'testing@example.com', 'if(now()=sysdate(),sleep(15),0)', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:45', '2024-06-11 10:29:45'),
(223, 'TzwSVsOw', 'testing@example.com', '555-666-06060\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:29:54', '2024-06-11 10:29:54'),
(224, 'TzwSVsOw', 'testing@example.com', '555-666-06060\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:03', '2024-06-11 10:30:03'),
(225, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:06', '2024-06-11 10:30:06'),
(226, 'TzwSVsOw', 'testing@example.com', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:12', '2024-06-11 10:30:12'),
(227, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:13', '2024-06-11 10:30:13'),
(228, 'TzwSVsOw', 'testing@example.com', '555-666-0606-1 waitfor delay \'0:0:15\' --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:20', '2024-06-11 10:30:20'),
(229, 'TzwSVsOwcFmLZYpL', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:22', '2024-06-11 10:30:22'),
(230, 'TzwSVsOw', 'testing@example.com', '555-666-0606Q5ytJDes\'; waitfor delay \'0:0:15\' --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:29', '2024-06-11 10:30:29'),
(231, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:30', '2024-06-11 10:30:30'),
(232, '-1 OR 2+751-751-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:31', '2024-06-11 10:30:31'),
(233, '-1 OR 2+998-998-1=0+0+0+1', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:32', '2024-06-11 10:30:32'),
(234, '-1\' OR 2+486-486-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:32', '2024-06-11 10:30:32'),
(235, '-1\' OR 2+441-441-1=0+0+0+1 or \'c7A5Oxua\'=\'', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:33', '2024-06-11 10:30:33'),
(236, '-1\" OR 2+469-469-1=0+0+0+1 --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:34', '2024-06-11 10:30:34'),
(237, 'TzwSVsOw', 'testing@example.com', '555-666-0606zRPjseQ4\' OR 186=(SELECT 186 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:38', '2024-06-11 10:30:38'),
(238, 'if(now()=sysdate(),sleep(15),0)', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:43', '2024-06-11 10:30:43'),
(239, 'TzwSVsOw', 'testing@example.com', '555-666-06062JxHhfT8\') OR 568=(SELECT 568 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:47', '2024-06-11 10:30:47'),
(240, 'TzwSVsOw0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:30:52', '2024-06-11 10:30:52'),
(241, 'TzwSVsOw', 'testing@example.com', '555-666-0606vEuIiMzZ\')) OR 677=(SELECT 677 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:30:56', '2024-06-11 10:30:56'),
(242, 'TzwSVsOw0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:01', '2024-06-11 10:31:01'),
(243, 'TzwSVsOw', 'testing@example.com', '555-666-0606\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:04', '2024-06-11 10:31:04'),
(244, 'TzwSVsOw', 'testing@example.com', '555-666-0606\'\"', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:05', '2024-06-11 10:31:05'),
(245, 'TzwSVsOw', 'testing@example.com', '@@AMsor', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:06', '2024-06-11 10:31:06'),
(246, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:10', '2024-06-11 10:31:10'),
(247, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:15', '2024-06-11 10:31:15'),
(248, 'TzwSVsOw-1 waitfor delay \'0:0:15\' --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:19', '2024-06-11 10:31:19'),
(249, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:24', '2024-06-11 10:31:24'),
(250, 'TzwSVsOwz2cZWv2r\'; waitfor delay \'0:0:15\' --', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:28', '2024-06-11 10:31:28'),
(251, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1Hkd4zfYT', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:33', '2024-06-11 10:31:33'),
(252, 'TzwSVsOwrEbM11TJ\' OR 531=(SELECT 531 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:36', '2024-06-11 10:31:36'),
(253, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:41', '2024-06-11 10:31:41'),
(254, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1 OR 2+691-691-1=0+0+0+1 --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:42', '2024-06-11 10:31:42'),
(255, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1 OR 2+630-630-1=0+0+0+1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:43', '2024-06-11 10:31:43'),
(256, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\' OR 2+733-733-1=0+0+0+1 --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:43', '2024-06-11 10:31:43'),
(257, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\' OR 2+34-34-1=0+0+0+1 or \'G5Ooaivc\'=\'', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:44', '2024-06-11 10:31:44'),
(258, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\" OR 2+989-989-1=0+0+0+1 --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:45', '2024-06-11 10:31:45'),
(259, 'TzwSVsOwEbsXNtRm\') OR 463=(SELECT 463 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:45', '2024-06-11 10:31:45'),
(260, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1*if(now()=sysdate(),sleep(15),0)', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:31:53', '2024-06-11 10:31:53'),
(261, 'TzwSVsOwy0zBKwmX\')) OR 378=(SELECT 378 FROM PG_SLEEP(15))--', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:31:54', '2024-06-11 10:31:54'),
(262, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '10\'XOR(1*if(now()=sysdate(),sleep(15),0))XOR\'Z', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:03', '2024-06-11 10:32:03'),
(263, 'TzwSVsOw\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:03', '2024-06-11 10:32:03'),
(264, 'TzwSVsOw\'\"', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:04', '2024-06-11 10:32:04'),
(265, '@@ZKZSa', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:05', '2024-06-11 10:32:05'),
(266, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '10\"XOR(1*if(now()=sysdate(),sleep(15),0))XOR\"Z', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:12', '2024-06-11 10:32:12'),
(267, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:14', '2024-06-11 10:32:14'),
(268, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:20', '2024-06-11 10:32:20'),
(269, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:23', '2024-06-11 10:32:23'),
(270, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1; waitfor delay \'0:0:15\' --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:29', '2024-06-11 10:32:29'),
(271, 'TzwSVsOw', 'testing@example.com', '555-666-0606xPUH9CkY', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:31', '2024-06-11 10:32:31'),
(272, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1); waitfor delay \'0:0:15\' --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:38', '2024-06-11 10:32:38'),
(273, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:40', '2024-06-11 10:32:40'),
(274, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+425-425-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:41', '2024-06-11 10:32:41'),
(275, 'TzwSVsOw', 'testing@example.com', '-1 OR 2+960-960-1=0+0+0+1', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:41', '2024-06-11 10:32:41'),
(276, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+261-261-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:42', '2024-06-11 10:32:42'),
(277, 'TzwSVsOw', 'testing@example.com', '-1\' OR 2+468-468-1=0+0+0+1 or \'j0SV5eg0\'=\'', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:43', '2024-06-11 10:32:43'),
(278, 'TzwSVsOw', 'testing@example.com', '-1\" OR 2+625-625-1=0+0+0+1 --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:43', '2024-06-11 10:32:43'),
(279, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1 waitfor delay \'0:0:15\' --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:46', '2024-06-11 10:32:46'),
(280, 'TzwSVsOw', 'testing@example.com', 'if(now()=sysdate(),sleep(15),0)', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:32:52', '2024-06-11 10:32:52'),
(281, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1JV5LoSRr\'; waitfor delay \'0:0:15\' --', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:32:55', '2024-06-11 10:32:55'),
(282, 'TzwSVsOw', 'testing@example.com', '555-666-06060\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:01', '2024-06-11 10:33:01'),
(283, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1 OR 396=(SELECT 396 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:04', '2024-06-11 10:33:04'),
(284, 'TzwSVsOw', 'testing@example.com', '555-666-06060\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:10', '2024-06-11 10:33:10'),
(285, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1) OR 318=(SELECT 318 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:12', '2024-06-11 10:33:12'),
(286, 'TzwSVsOw', 'testing@example.com', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:18', '2024-06-11 10:33:18'),
(287, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1)) OR 314=(SELECT 314 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:21', '2024-06-11 10:33:21'),
(288, 'TzwSVsOw', 'testing@example.com', '555-666-0606-1 waitfor delay \'0:0:15\' --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:27', '2024-06-11 10:33:27'),
(289, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1WizvdIeQ\' OR 138=(SELECT 138 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:30', '2024-06-11 10:33:30'),
(290, 'TzwSVsOw', 'testing@example.com', '555-666-06063c2AEir0\'; waitfor delay \'0:0:15\' --', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:36', '2024-06-11 10:33:36'),
(291, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1Ek2nqOPy\') OR 702=(SELECT 702 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:38', '2024-06-11 10:33:38'),
(292, 'TzwSVsOw', 'testing@example.com', '555-666-0606m3XCkWzt\' OR 952=(SELECT 952 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:45', '2024-06-11 10:33:45'),
(293, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1j4JykGLB\')) OR 146=(SELECT 146 FROM PG_SLEEP(15))--', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:47', '2024-06-11 10:33:47'),
(294, 'TzwSVsOw', 'testing@example.com', '555-666-0606IGV0B4J0\') OR 906=(SELECT 906 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:33:53', '2024-06-11 10:33:53'),
(295, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:33:56', '2024-06-11 10:33:56'),
(296, 'TzwSVsOw', 'testing@example.com', '555-666-0606az5DpFEI\')) OR 513=(SELECT 513 FROM PG_SLEEP(15))--', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:02', '2024-06-11 10:34:02'),
(297, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:05', '2024-06-11 10:34:05'),
(298, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1\'\"', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:05', '2024-06-11 10:34:05'),
(299, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '@@N7L5M', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:07', '2024-06-11 10:34:07'),
(300, 'TzwSVsOw', 'testing@example.com', '555-666-0606\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:11', '2024-06-11 10:34:11'),
(301, 'TzwSVsOw', 'testing@example.com', '555-666-0606\'\"', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:11', '2024-06-11 10:34:11'),
(302, 'TzwSVsOw', 'testing@example.com', '@@UDLtU', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:13', '2024-06-11 10:34:13'),
(303, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:15', '2024-06-11 10:34:15'),
(304, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:21', '2024-06-11 10:34:21'),
(305, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:24', '2024-06-11 10:34:24'),
(306, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:29', '2024-06-11 10:34:29'),
(307, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select FundvXzJZZpi', 'one off', '80', 'new', '2024-06-11 10:34:32', '2024-06-11 10:34:32'),
(308, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1Rtoha9wr', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:37', '2024-06-11 10:34:37'),
(309, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:34:41', '2024-06-11 10:34:41'),
(310, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '-1 OR 2+49-49-1=0+0+0+1 --', 'one off', '80', 'new', '2024-06-11 10:34:42', '2024-06-11 10:34:42'),
(311, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '-1 OR 2+196-196-1=0+0+0+1', 'one off', '80', 'new', '2024-06-11 10:34:43', '2024-06-11 10:34:43'),
(312, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '-1\' OR 2+354-354-1=0+0+0+1 --', 'one off', '80', 'new', '2024-06-11 10:34:43', '2024-06-11 10:34:43'),
(313, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '-1\' OR 2+917-917-1=0+0+0+1 or \'yO7arZ24\'=\'', 'one off', '80', 'new', '2024-06-11 10:34:44', '2024-06-11 10:34:44'),
(314, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '-1\" OR 2+479-479-1=0+0+0+1 --', 'one off', '80', 'new', '2024-06-11 10:34:45', '2024-06-11 10:34:45'),
(315, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:46', '2024-06-11 10:34:46'),
(316, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1 OR 2+586-586-1=0+0+0+1 --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:46', '2024-06-11 10:34:46'),
(317, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1 OR 2+590-590-1=0+0+0+1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:47', '2024-06-11 10:34:47'),
(318, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\' OR 2+859-859-1=0+0+0+1 --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:48', '2024-06-11 10:34:48'),
(319, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\' OR 2+383-383-1=0+0+0+1 or \'zQAu6iwF\'=\'', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:48', '2024-06-11 10:34:48'),
(320, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '-1\" OR 2+872-872-1=0+0+0+1 --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:49', '2024-06-11 10:34:49'),
(321, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'if(now()=sysdate(),sleep(15),0)', 'one off', '80', 'new', '2024-06-11 10:34:52', '2024-06-11 10:34:52'),
(322, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1*if(now()=sysdate(),sleep(15),0)', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:34:58', '2024-06-11 10:34:58'),
(323, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'one off', '80', 'new', '2024-06-11 10:35:01', '2024-06-11 10:35:01'),
(324, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '10\'XOR(1*if(now()=sysdate(),sleep(15),0))XOR\'Z', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:07', '2024-06-11 10:35:07'),
(325, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'one off', '80', 'new', '2024-06-11 10:35:10', '2024-06-11 10:35:10'),
(326, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '10\"XOR(1*if(now()=sysdate(),sleep(15),0))XOR\"Z', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:16', '2024-06-11 10:35:16'),
(327, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'one off', '80', 'new', '2024-06-11 10:35:19', '2024-06-11 10:35:19'),
(328, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:25', '2024-06-11 10:35:25'),
(329, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund-1 waitfor delay \'0:0:15\' --', 'one off', '80', 'new', '2024-06-11 10:35:28', '2024-06-11 10:35:28'),
(330, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1; waitfor delay \'0:0:15\' --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:34', '2024-06-11 10:35:34'),
(331, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select FundS9hoFVaq\'; waitfor delay \'0:0:15\' --', 'one off', '80', 'new', '2024-06-11 10:35:37', '2024-06-11 10:35:37'),
(332, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1); waitfor delay \'0:0:15\' --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:41', '2024-06-11 10:35:41'),
(333, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select FundKHkgwyGV\' OR 762=(SELECT 762 FROM PG_SLEEP(15))--', 'one off', '80', 'new', '2024-06-11 10:35:46', '2024-06-11 10:35:46'),
(334, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1 waitfor delay \'0:0:15\' --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:50', '2024-06-11 10:35:50'),
(335, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select FundHvemGiAJ\') OR 572=(SELECT 572 FROM PG_SLEEP(15))--', 'one off', '80', 'new', '2024-06-11 10:35:54', '2024-06-11 10:35:54'),
(336, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1ee296soO\'; waitfor delay \'0:0:15\' --', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:35:59', '2024-06-11 10:35:59'),
(337, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select FundVaxsIVAY\')) OR 473=(SELECT 473 FROM PG_SLEEP(15))--', 'one off', '80', 'new', '2024-06-11 10:36:03', '2024-06-11 10:36:03'),
(338, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1 OR 253=(SELECT 253 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:08', '2024-06-11 10:36:08'),
(339, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'one off', '80', 'new', '2024-06-11 10:36:12', '2024-06-11 10:36:12'),
(340, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund\'\"', 'one off', '80', 'new', '2024-06-11 10:36:12', '2024-06-11 10:36:12'),
(341, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', '@@X7P9z', 'one off', '80', 'new', '2024-06-11 10:36:14', '2024-06-11 10:36:14'),
(342, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1) OR 563=(SELECT 563 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:17', '2024-06-11 10:36:17'),
(343, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:22', '2024-06-11 10:36:22'),
(344, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1-1)) OR 673=(SELECT 673 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:26', '2024-06-11 10:36:26'),
(345, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:31', '2024-06-11 10:36:31'),
(346, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1QzW7FWor\' OR 544=(SELECT 544 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:34', '2024-06-11 10:36:34'),
(347, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYBmIvBXfk', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:39', '2024-06-11 10:36:39'),
(348, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1BMXnXv70\') OR 186=(SELECT 186 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:42', '2024-06-11 10:36:42'),
(349, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:48', '2024-06-11 10:36:48'),
(350, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1 OR 2+150-150-1=0+0+0+1 --', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:49', '2024-06-11 10:36:49'),
(351, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1 OR 2+24-24-1=0+0+0+1', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:50', '2024-06-11 10:36:50'),
(352, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\' OR 2+96-96-1=0+0+0+1 --', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:50', '2024-06-11 10:36:50'),
(353, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1TGEhodkK\')) OR 14=(SELECT 14 FROM PG_SLEEP(15))--', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:51', '2024-06-11 10:36:51'),
(354, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\' OR 2+585-585-1=0+0+0+1 or \'Uyp8H2ZN\'=\'', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:51', '2024-06-11 10:36:51'),
(355, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\" OR 2+840-840-1=0+0+0+1 --', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:36:52', '2024-06-11 10:36:52'),
(356, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:36:59', '2024-06-11 10:36:59'),
(357, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'if(now()=sysdate(),sleep(15),0)', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:00', '2024-06-11 10:37:00'),
(358, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:08', '2024-06-11 10:37:08'),
(359, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1\'\"', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:09', '2024-06-11 10:37:09'),
(360, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:09', '2024-06-11 10:37:09'),
(361, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '@@uO69y', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:10', '2024-06-11 10:37:10'),
(362, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:18', '2024-06-11 10:37:18'),
(363, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:20', '2024-06-11 10:37:20'),
(364, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:27', '2024-06-11 10:37:27'),
(365, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:29', '2024-06-11 10:37:29'),
(366, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY-1 waitfor delay \'0:0:15\' --', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:36', '2024-06-11 10:37:36'),
(367, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYJnXWfxAu', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:37', '2024-06-11 10:37:37'),
(368, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYDJmthrLf\'; waitfor delay \'0:0:15\' --', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:45', '2024-06-11 10:37:45'),
(369, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:47', '2024-06-11 10:37:47'),
(370, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1 OR 2+425-425-1=0+0+0+1 --', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:47', '2024-06-11 10:37:47'),
(371, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1 OR 2+884-884-1=0+0+0+1', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:48', '2024-06-11 10:37:48'),
(372, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\' OR 2+11-11-1=0+0+0+1 --', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:49', '2024-06-11 10:37:49'),
(373, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\' OR 2+506-506-1=0+0+0+1 or \'jYV1ZJX8\'=\'', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:49', '2024-06-11 10:37:49'),
(374, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '-1\" OR 2+353-353-1=0+0+0+1 --', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:50', '2024-06-11 10:37:50'),
(375, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY8a2rIgk2\' OR 388=(SELECT 388 FROM PG_SLEEP(15))--', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:37:54', '2024-06-11 10:37:54'),
(376, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'if(now()=sysdate(),sleep(15),0)', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:37:58', '2024-06-11 10:37:58'),
(377, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYIIc65ToT\') OR 199=(SELECT 199 FROM PG_SLEEP(15))--', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:03', '2024-06-11 10:38:03'),
(378, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:07', '2024-06-11 10:38:07'),
(379, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYM9mzaCTD\')) OR 788=(SELECT 788 FROM PG_SLEEP(15))--', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:12', '2024-06-11 10:38:12'),
(380, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:16', '2024-06-11 10:38:16'),
(381, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:21', '2024-06-11 10:38:21'),
(382, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY\'\"', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:22', '2024-06-11 10:38:22'),
(383, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '@@8qZT6', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:23', '2024-06-11 10:38:23'),
(384, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:24', '2024-06-11 10:38:24'),
(385, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:32', '2024-06-11 10:38:32'),
(386, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY-1 waitfor delay \'0:0:15\' --', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:33', '2024-06-11 10:38:33'),
(387, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:41', '2024-06-11 10:38:41'),
(388, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYR9iY4XQw\'; waitfor delay \'0:0:15\' --', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:42', '2024-06-11 10:38:42'),
(389, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:50', '2024-06-11 10:38:50'),
(390, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYhLy5ogld\' OR 861=(SELECT 861 FROM PG_SLEEP(15))--', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:50', '2024-06-11 10:38:50'),
(391, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:58', '2024-06-11 10:38:58'),
(392, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:59', '2024-06-11 10:38:59'),
(393, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYPpIEbVe7\') OR 714=(SELECT 714 FROM PG_SLEEP(15))--', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:38:59', '2024-06-11 10:38:59'),
(394, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:38:59', '2024-06-11 10:38:59'),
(395, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:00', '2024-06-11 10:39:00'),
(396, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:01', '2024-06-11 10:39:01'),
(397, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:02', '2024-06-11 10:39:02'),
(398, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NYOXBq4pC8\')) OR 943=(SELECT 943 FROM PG_SLEEP(15))--', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:08', '2024-06-11 10:39:08'),
(399, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:10', '2024-06-11 10:39:10'),
(400, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:16', '2024-06-11 10:39:16'),
(401, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY\'\"', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:17', '2024-06-11 10:39:17'),
(402, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:18', '2024-06-11 10:39:18'),
(403, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', '@@tlGj4', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:18', '2024-06-11 10:39:18'),
(404, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:26', '2024-06-11 10:39:26'),
(405, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:27', '2024-06-11 10:39:27'),
(406, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:35', '2024-06-11 10:39:35'),
(407, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:36', '2024-06-11 10:39:36'),
(408, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:44', '2024-06-11 10:39:44'),
(409, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:44', '2024-06-11 10:39:44'),
(410, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:39:52', '2024-06-11 10:39:52'),
(411, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:53', '2024-06-11 10:39:53'),
(412, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:54', '2024-06-11 10:39:54'),
(413, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:54', '2024-06-11 10:39:54'),
(414, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:55', '2024-06-11 10:39:55'),
(415, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:56', '2024-06-11 10:39:56'),
(416, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:39:56', '2024-06-11 10:39:56'),
(417, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:01', '2024-06-11 10:40:01'),
(418, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:05', '2024-06-11 10:40:05'),
(419, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:10', '2024-06-11 10:40:10'),
(420, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:13', '2024-06-11 10:40:13'),
(421, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:18', '2024-06-11 10:40:18'),
(422, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:22', '2024-06-11 10:40:22'),
(423, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:27', '2024-06-11 10:40:27'),
(424, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:30', '2024-06-11 10:40:30'),
(425, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:35', '2024-06-11 10:40:35'),
(426, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:38', '2024-06-11 10:40:38'),
(427, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:44', '2024-06-11 10:40:44'),
(428, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:47', '2024-06-11 10:40:47'),
(429, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:40:53', '2024-06-11 10:40:53'),
(430, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:40:55', '2024-06-11 10:40:55'),
(431, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:01', '2024-06-11 10:41:01'),
(432, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:04', '2024-06-11 10:41:04'),
(433, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:09', '2024-06-11 10:41:09'),
(434, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:13', '2024-06-11 10:41:13'),
(435, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:18', '2024-06-11 10:41:18'),
(436, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:19', '2024-06-11 10:41:19'),
(437, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:19', '2024-06-11 10:41:19'),
(438, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:20', '2024-06-11 10:41:20'),
(439, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:22', '2024-06-11 10:41:22'),
(440, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:28', '2024-06-11 10:41:28'),
(441, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:31', '2024-06-11 10:41:31'),
(442, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:37', '2024-06-11 10:41:37'),
(443, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:39', '2024-06-11 10:41:39');
INSERT INTO `donations` (`id`, `name`, `email`, `phone`, `country`, `city`, `state`, `zip_code`, `profession`, `project`, `duration`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(444, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102TkceFkNO', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:44', '2024-06-11 10:41:44'),
(445, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:48', '2024-06-11 10:41:48'),
(446, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:53', '2024-06-11 10:41:53'),
(447, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1 OR 2+495-495-1=0+0+0+1 --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:54', '2024-06-11 10:41:54'),
(448, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1 OR 2+489-489-1=0+0+0+1', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:54', '2024-06-11 10:41:54'),
(449, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\' OR 2+635-635-1=0+0+0+1 --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:55', '2024-06-11 10:41:55'),
(450, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\' OR 2+126-126-1=0+0+0+1 or \'GInlXqLs\'=\'', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:56', '2024-06-11 10:41:56'),
(451, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\" OR 2+892-892-1=0+0+0+1 --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:41:56', '2024-06-11 10:41:56'),
(452, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:41:57', '2024-06-11 10:41:57'),
(453, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102*if(now()=sysdate(),sleep(15),0)', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:05', '2024-06-11 10:42:05'),
(454, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:06', '2024-06-11 10:42:06'),
(455, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '941020\'XOR(94102*if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:14', '2024-06-11 10:42:14'),
(456, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:14', '2024-06-11 10:42:14'),
(457, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:15', '2024-06-11 10:42:15'),
(458, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:16', '2024-06-11 10:42:16'),
(459, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:16', '2024-06-11 10:42:16'),
(460, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '941020\"XOR(94102*if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:23', '2024-06-11 10:42:23'),
(461, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:26', '2024-06-11 10:42:26'),
(462, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:31', '2024-06-11 10:42:31'),
(463, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:34', '2024-06-11 10:42:34'),
(464, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1; waitfor delay \'0:0:15\' --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:39', '2024-06-11 10:42:39'),
(465, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102Lc30B5EL', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:42', '2024-06-11 10:42:42'),
(466, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1); waitfor delay \'0:0:15\' --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:48', '2024-06-11 10:42:48'),
(467, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:50', '2024-06-11 10:42:50'),
(468, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1 OR 2+407-407-1=0+0+0+1 --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:51', '2024-06-11 10:42:51'),
(469, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1 OR 2+723-723-1=0+0+0+1', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:52', '2024-06-11 10:42:52'),
(470, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\' OR 2+108-108-1=0+0+0+1 --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:53', '2024-06-11 10:42:53'),
(471, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\' OR 2+10-10-1=0+0+0+1 or \'NLChXwTc\'=\'', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:53', '2024-06-11 10:42:53'),
(472, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '-1\" OR 2+415-415-1=0+0+0+1 --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:42:54', '2024-06-11 10:42:54'),
(473, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1 waitfor delay \'0:0:15\' --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:42:56', '2024-06-11 10:42:56'),
(474, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102*if(now()=sysdate(),sleep(15),0)', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:01', '2024-06-11 10:43:01'),
(475, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '941023UbX9sNx\'; waitfor delay \'0:0:15\' --', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:04', '2024-06-11 10:43:04'),
(476, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '941020\'XOR(94102*if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:10', '2024-06-11 10:43:10'),
(477, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1 OR 148=(SELECT 148 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:12', '2024-06-11 10:43:12'),
(478, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '941020\"XOR(94102*if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:18', '2024-06-11 10:43:18'),
(479, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1) OR 927=(SELECT 927 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:21', '2024-06-11 10:43:21'),
(480, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:27', '2024-06-11 10:43:27'),
(481, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1)) OR 769=(SELECT 769 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:30', '2024-06-11 10:43:30'),
(482, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1; waitfor delay \'0:0:15\' --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:35', '2024-06-11 10:43:35'),
(483, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102UOW8OagF\' OR 259=(SELECT 259 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:39', '2024-06-11 10:43:39'),
(484, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1); waitfor delay \'0:0:15\' --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:44', '2024-06-11 10:43:44'),
(485, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102QwtxCMlR\') OR 853=(SELECT 853 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:47', '2024-06-11 10:43:47'),
(486, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1 waitfor delay \'0:0:15\' --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:43:52', '2024-06-11 10:43:52'),
(487, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102BmYtQJJl\')) OR 93=(SELECT 93 FROM PG_SLEEP(15))--', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:43:56', '2024-06-11 10:43:56'),
(488, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102ddUyJn1S\'; waitfor delay \'0:0:15\' --', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:01', '2024-06-11 10:44:01'),
(489, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:44:05', '2024-06-11 10:44:05'),
(490, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1 OR 934=(SELECT 934 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:10', '2024-06-11 10:44:10'),
(491, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:44:14', '2024-06-11 10:44:14'),
(492, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102\'\"', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:44:15', '2024-06-11 10:44:15'),
(493, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '@@mS2dE', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 10:44:16', '2024-06-11 10:44:16'),
(494, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1) OR 454=(SELECT 454 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:19', '2024-06-11 10:44:19'),
(495, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102-1)) OR 337=(SELECT 337 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:27', '2024-06-11 10:44:27'),
(496, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102QtafUsSi\' OR 914=(SELECT 914 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:35', '2024-06-11 10:44:35'),
(497, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102bg8BWA2Y\') OR 327=(SELECT 327 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:43', '2024-06-11 10:44:43'),
(498, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102Oba5hDWt\')) OR 877=(SELECT 877 FROM PG_SLEEP(15))--', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:44:52', '2024-06-11 10:44:52'),
(499, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:45:00', '2024-06-11 10:45:00'),
(500, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:45:08', '2024-06-11 10:45:08'),
(501, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102\'\"', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:45:09', '2024-06-11 10:45:09'),
(502, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '@@81GEX', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 10:45:10', '2024-06-11 10:45:10'),
(503, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Education In Emergency', 'one off', '80', 'new', '2024-06-11 11:11:27', '2024-06-11 11:11:27'),
(504, 'TzwSVsOw', 'testing@example.com', '555-666-0606', 'Afghanistan', 'San Francisco', 'NY', '94102', '1', 'Select Fund', 'one off', '80', 'new', '2024-06-11 11:11:27', '2024-06-11 11:11:27'),
(505, 'Onche Austin', 'stino4win@gmail.com', '08068019494', 'Nigeria', 'Abuja', 'Abuja', '00234', 'Technical', 'Education In Emergency', 'one off', '5000', 'new', '2025-01-17 15:31:40', '2025-01-17 15:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `attendees` varchar(255) NOT NULL DEFAULT '0',
  `datefrom` varchar(255) NOT NULL,
  `dateto` varchar(255) DEFAULT NULL,
  `timestarted` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `eventimage` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `faqid` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `body`, `faqid`, `created_at`, `updated_at`) VALUES
(4, 'When was GOALPrime officially incorporated?', '<p>March-28-2017</p>', '4eoZf', '2022-11-27 16:30:31', '2022-11-27 16:30:31'),
(5, 'Where does GOALPrime currently have Field Offices?', '<p>1. Maiduguri in Borno</p>\r\n\r\n<p>2. Damaturu in Yobe</p>\r\n\r\n<p>3. Jimeta in Adamawa</p>', 'mWkr2', '2022-11-27 16:31:42', '2022-11-27 16:31:42'),
(6, 'Where is GOALPrime\'s Country Office?', '<p>Abuja</p>', 'AeY4M', '2022-11-27 16:32:07', '2022-11-27 16:32:07'),
(7, 'Is GOALPrime a Gender and Disability sensitive organization?', '<p>Yes. GOALPrime ensures gender and disability inclusion in all our programmings.</p>', 'qozi7', '2022-11-27 16:33:12', '2022-11-27 16:33:12'),
(8, 'Does GOALPrime have a child safe-guarding policy in place?', '<p>Yes! GOALPrime has a child safe-guarding policy in place and also ensures maximum compliance.</p>', 'JRJop', '2022-11-27 16:34:11', '2022-11-27 16:34:11'),
(9, 'What is GOALPrime\'s tolerance level for Sexual Exploitation and Abuse?', '<p>GOALPrime has a zero tolerance level for sexual exploitation and abuse. GOALPrime has put in place both a PSEA Policy and a dedicated compliance focal person that ensures maximum compliance of both employees and contractors of GOALPrime to the policy.</p>', 'PmMoA', '2022-11-27 16:36:08', '2022-11-27 16:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `caption`, `thumbnail`, `created_at`, `updated_at`) VALUES
(3, 'GOALPrime Picture Gallery', 'uploads/1669740618_Captured.PNG', '2022-06-21 08:27:59', '2022-11-29 15:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `galleryimages`
--

CREATE TABLE `galleryimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleryimages`
--

INSERT INTO `galleryimages` (`id`, `gallery_id`, `images`, `created_at`, `updated_at`) VALUES
(9, 3, 'uploads/1655803679_s1.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(10, 3, 'uploads/1655803679_s2.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(11, 3, 'uploads/1655803679_s4.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(12, 3, 'uploads/1655803679_s5.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(13, 3, 'uploads/1655803679_s6.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(14, 3, 'uploads/1655803679_s7.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(15, 3, 'uploads/1655803679_s8.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(16, 3, 'uploads/1655803679_s9.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(17, 3, 'uploads/1655803679_s10.jpg', '2022-06-21 08:27:59', '2022-06-21 08:27:59'),
(18, 3, 'uploads/1669740802_1655803679_s6.jpg', '2022-11-29 15:53:22', '2022-11-29 15:53:22'),
(19, 3, 'uploads/1669740978_K25C7791.jpg', '2022-11-29 15:56:20', '2022-11-29 15:56:20'),
(20, 3, 'uploads/1669740980_K25C7822.jpg', '2022-11-29 15:56:20', '2022-11-29 15:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `gprimetvs`
--

CREATE TABLE `gprimetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playlist_id` varchar(300) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gprimetvs`
--

INSERT INTO `gprimetvs` (`id`, `playlist_id`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(65520, NULL, 'Let us ensure every child’s right to education | Ajari Community, Borno state', 'https://www.youtube.com/embed/8GEN1TaYTYs', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65521, NULL, 'GPON and UNICEF Nigeria Visits Implementation Location | Borno State', 'https://www.youtube.com/embed/N1MsifJsqgA', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65522, NULL, 'Global Hand Washing Day 2023 | Bura', 'https://www.youtube.com/embed/l2SdwmGDxKo', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65523, NULL, 'Global Hand Washing Day 2023 | Fulfulde', 'https://www.youtube.com/embed/g53quxRE4OM', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65524, NULL, 'Global Hand Washing Day 2023 | Mandara', 'https://www.youtube.com/embed/rJdiSMKSVwo', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65525, NULL, 'Global Hand Washing Day 2023 | Hausa', 'https://www.youtube.com/embed/sso4K2idPTc', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65526, NULL, 'Global Hand Washing Day 2023 | Shuwa', 'https://www.youtube.com/embed/gBgy_jE3IEg', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65527, NULL, 'Global Hand Washing Day 2023 | Kanuri', 'https://www.youtube.com/embed/YONejFP-N8g', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65528, NULL, 'Global Hand Washing Day | Marghi', 'https://www.youtube.com/embed/I_b1a7fdWH8', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65529, NULL, 'Global Hand Washing Day 2023 | English', 'https://www.youtube.com/embed/NZbArZ_sTg8', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65530, NULL, 'Invest in Girl’s right always', 'https://www.youtube.com/embed/3Q2uI3LdtWE', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65531, NULL, 'Asking colleagues questions | WMHD', 'https://www.youtube.com/embed/YHAi3qM0kyY', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65532, NULL, 'World Mental Health Day 2023', 'https://www.youtube.com/embed/_3T0bln6bXM', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65533, NULL, 'Clowns without border in collaboration with GPON brings laughter to NorthEast Nigeria', 'https://www.youtube.com/embed/YX-Gi1zZ7So', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65534, NULL, 'Happy 63rd Independence Day Nigeria', 'https://www.youtube.com/embed/F8ploftUFQM', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65535, NULL, 'International Day of Peace 2023', 'https://www.youtube.com/embed/Q40eXZcDtK0', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65536, NULL, 'Nourishing Hope: A Journey to Help Children in North East Nigeria', 'https://www.youtube.com/embed/XcGvwK7I5FE', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65537, NULL, 'A Future Without Fear: Protecting Schools, Protecting Dreams', 'https://www.youtube.com/embed/7PA13zR9aAg', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65538, NULL, 'No matter what, no matter where! #whd2023', 'https://www.youtube.com/embed/GvyCR2EAPDc', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65539, NULL, 'World Humanitarian Day 2023', 'https://www.youtube.com/embed/BYjX0Oj3RN8', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65540, NULL, 'WORLD BREASTFEEDING WEEK 2023', 'https://www.youtube.com/embed/EFV4reqwiJs', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65541, NULL, 'International Day of the African Child 2023', 'https://www.youtube.com/embed/vNKEntMl0Pw', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65542, NULL, 'We asked our Abuja colleagues questions about Menstruation | MHM2023', 'https://www.youtube.com/embed/cWwh_ybOMTE', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65543, NULL, 'Happy New Month of May 2023', 'https://www.youtube.com/embed/MiYvMmz23og', 1, '2023-11-02 13:32:16', '2023-11-02 13:32:16'),
(65544, NULL, 'Happy Worker’s Day 2023', 'https://www.youtube.com/embed/9IAydwCF78M', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65545, NULL, 'World Health Day Mandara Language', 'https://www.youtube.com/embed/DVeK8BMtgJE', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65546, NULL, 'World Day for Safety and Health at Work 2023', 'https://www.youtube.com/embed/R_pxQOZEJjU', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65547, NULL, 'World Health Day - Shuwa Arab', 'https://www.youtube.com/embed/hOdfFAq6BS8', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65548, NULL, 'World Health Day 2023 - Hausa Language', 'https://www.youtube.com/embed/kRtDAgHSLVY', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65549, NULL, 'World Health Day - Kibaku Language', 'https://www.youtube.com/embed/Ppf3M_WfmUA', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65550, NULL, 'World Health Day 2023 - Marghi Language', 'https://www.youtube.com/embed/y_uY3z6vlUo', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65551, NULL, 'World Health Day 2023 - Kanuri Language', 'https://www.youtube.com/embed/TNQ2zNlul10', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65552, NULL, 'World Malaria Day 2023', 'https://www.youtube.com/embed/TbX42Pdrkq4', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65553, NULL, 'World Health Day 2023 - English Language', 'https://www.youtube.com/embed/L9ZXHrYEcwE', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65554, NULL, 'Common ways Cholera can be transmitted', 'https://www.youtube.com/embed/WLdnAPxeXY0', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65555, NULL, 'World Water Day | Bura Language', 'https://www.youtube.com/embed/oFGhUHoMtvU', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65556, NULL, 'World Water Day | Mandara Version', 'https://www.youtube.com/embed/1wyrmLQNn8U', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65557, NULL, 'World Water Day | Marghi Language', 'https://www.youtube.com/embed/OjWgsQpv4VY', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65558, NULL, 'World Water Day | Shuwa Arab Language', 'https://www.youtube.com/embed/4Ei3IzF2XDU', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65559, NULL, 'World Water Day | Kibaku Language', 'https://www.youtube.com/embed/h2js7-sRTHI', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65560, NULL, 'World Water Day | Kanuri Language', 'https://www.youtube.com/embed/tiPK4WIIxOA', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65561, NULL, 'World Water Day | Hausa Language', 'https://www.youtube.com/embed/rQmsPQR15rM', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65562, NULL, 'World Water Day 2023 | English Version', 'https://www.youtube.com/embed/245ze6d5_Jk', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65563, NULL, 'Our poetry is our refuge | World Poetry Day 2023', 'https://www.youtube.com/embed/0DHFWCuyZUM', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65564, NULL, 'World Poetry Day 2022', 'https://www.youtube.com/embed/yicxVdac1u8', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65565, NULL, 'Girls as well as Boys should have access to technology | IWD 2023', 'https://www.youtube.com/embed/iL66bP6_n1U', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65566, NULL, 'Embrace Equity as we celebrate International Women’s Day 2023', 'https://www.youtube.com/embed/fhzWfy1HfKI', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65567, NULL, 'Happy International Women’s Day 2023', 'https://www.youtube.com/embed/1mIzI8pTY1Y', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65568, NULL, 'Your Vote is Your Power', 'https://www.youtube.com/embed/Rbac_gNX9xU', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65569, NULL, 'International Mother Language Day 2023', 'https://www.youtube.com/embed/FLo3YPDD0YA', 1, '2023-11-02 13:32:17', '2023-11-02 13:32:17'),
(65570, NULL, 'Let us ensure every child’s right to education | Ajari Community, Borno state', 'https://www.youtube.com/embed/8GEN1TaYTYs', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65571, NULL, 'GPON and UNICEF Nigeria Visits Implementation Location | Borno State', 'https://www.youtube.com/embed/N1MsifJsqgA', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65572, NULL, 'Global Hand Washing Day 2023 | Bura', 'https://www.youtube.com/embed/l2SdwmGDxKo', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65573, NULL, 'Global Hand Washing Day 2023 | Fulfulde', 'https://www.youtube.com/embed/g53quxRE4OM', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65574, NULL, 'Global Hand Washing Day 2023 | Mandara', 'https://www.youtube.com/embed/rJdiSMKSVwo', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65575, NULL, 'Global Hand Washing Day 2023 | Hausa', 'https://www.youtube.com/embed/sso4K2idPTc', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65576, NULL, 'Global Hand Washing Day 2023 | Shuwa', 'https://www.youtube.com/embed/gBgy_jE3IEg', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65577, NULL, 'Global Hand Washing Day 2023 | Kanuri', 'https://www.youtube.com/embed/YONejFP-N8g', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65578, NULL, 'Global Hand Washing Day | Marghi', 'https://www.youtube.com/embed/I_b1a7fdWH8', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65579, NULL, 'Global Hand Washing Day 2023 | English', 'https://www.youtube.com/embed/NZbArZ_sTg8', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65580, NULL, 'Invest in Girl’s right always', 'https://www.youtube.com/embed/3Q2uI3LdtWE', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65581, NULL, 'Asking colleagues questions | WMHD', 'https://www.youtube.com/embed/YHAi3qM0kyY', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65582, NULL, 'World Mental Health Day 2023', 'https://www.youtube.com/embed/_3T0bln6bXM', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65583, NULL, 'Clowns without border in collaboration with GPON brings laughter to NorthEast Nigeria', 'https://www.youtube.com/embed/YX-Gi1zZ7So', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65584, NULL, 'Happy 63rd Independence Day Nigeria', 'https://www.youtube.com/embed/F8ploftUFQM', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65585, NULL, 'International Day of Peace 2023', 'https://www.youtube.com/embed/Q40eXZcDtK0', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65586, NULL, 'Nourishing Hope: A Journey to Help Children in North East Nigeria', 'https://www.youtube.com/embed/XcGvwK7I5FE', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65587, NULL, 'A Future Without Fear: Protecting Schools, Protecting Dreams', 'https://www.youtube.com/embed/7PA13zR9aAg', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65588, NULL, 'No matter what, no matter where! #whd2023', 'https://www.youtube.com/embed/GvyCR2EAPDc', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65589, NULL, 'World Humanitarian Day 2023', 'https://www.youtube.com/embed/BYjX0Oj3RN8', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65590, NULL, 'WORLD BREASTFEEDING WEEK 2023', 'https://www.youtube.com/embed/EFV4reqwiJs', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65591, NULL, 'International Day of the African Child 2023', 'https://www.youtube.com/embed/vNKEntMl0Pw', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65592, NULL, 'We asked our Abuja colleagues questions about Menstruation | MHM2023', 'https://www.youtube.com/embed/cWwh_ybOMTE', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65593, NULL, 'Happy New Month of May 2023', 'https://www.youtube.com/embed/MiYvMmz23og', 1, '2023-11-02 13:32:18', '2023-11-02 13:32:18'),
(65594, NULL, 'Happy Worker’s Day 2023', 'https://www.youtube.com/embed/9IAydwCF78M', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65595, NULL, 'World Health Day Mandara Language', 'https://www.youtube.com/embed/DVeK8BMtgJE', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65596, NULL, 'World Day for Safety and Health at Work 2023', 'https://www.youtube.com/embed/R_pxQOZEJjU', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65597, NULL, 'World Health Day - Shuwa Arab', 'https://www.youtube.com/embed/hOdfFAq6BS8', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65598, NULL, 'World Health Day 2023 - Hausa Language', 'https://www.youtube.com/embed/kRtDAgHSLVY', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65599, NULL, 'World Health Day - Kibaku Language', 'https://www.youtube.com/embed/Ppf3M_WfmUA', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65600, NULL, 'World Health Day 2023 - Marghi Language', 'https://www.youtube.com/embed/y_uY3z6vlUo', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65601, NULL, 'World Health Day 2023 - Kanuri Language', 'https://www.youtube.com/embed/TNQ2zNlul10', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65602, NULL, 'World Malaria Day 2023', 'https://www.youtube.com/embed/TbX42Pdrkq4', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65603, NULL, 'World Health Day 2023 - English Language', 'https://www.youtube.com/embed/L9ZXHrYEcwE', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65604, NULL, 'Common ways Cholera can be transmitted', 'https://www.youtube.com/embed/WLdnAPxeXY0', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65605, NULL, 'World Water Day | Bura Language', 'https://www.youtube.com/embed/oFGhUHoMtvU', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65606, NULL, 'World Water Day | Mandara Version', 'https://www.youtube.com/embed/1wyrmLQNn8U', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65607, NULL, 'World Water Day | Marghi Language', 'https://www.youtube.com/embed/OjWgsQpv4VY', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65608, NULL, 'World Water Day | Shuwa Arab Language', 'https://www.youtube.com/embed/4Ei3IzF2XDU', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65609, NULL, 'World Water Day | Kibaku Language', 'https://www.youtube.com/embed/h2js7-sRTHI', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65610, NULL, 'World Water Day | Kanuri Language', 'https://www.youtube.com/embed/tiPK4WIIxOA', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65611, NULL, 'World Water Day | Hausa Language', 'https://www.youtube.com/embed/rQmsPQR15rM', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65612, NULL, 'World Water Day 2023 | English Version', 'https://www.youtube.com/embed/245ze6d5_Jk', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65613, NULL, 'Our poetry is our refuge | World Poetry Day 2023', 'https://www.youtube.com/embed/0DHFWCuyZUM', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65614, NULL, 'World Poetry Day 2022', 'https://www.youtube.com/embed/yicxVdac1u8', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65615, NULL, 'Girls as well as Boys should have access to technology | IWD 2023', 'https://www.youtube.com/embed/iL66bP6_n1U', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65616, NULL, 'Embrace Equity as we celebrate International Women’s Day 2023', 'https://www.youtube.com/embed/fhzWfy1HfKI', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65617, NULL, 'Happy International Women’s Day 2023', 'https://www.youtube.com/embed/1mIzI8pTY1Y', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65618, NULL, 'Your Vote is Your Power', 'https://www.youtube.com/embed/Rbac_gNX9xU', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65619, NULL, 'International Mother Language Day 2023', 'https://www.youtube.com/embed/FLo3YPDD0YA', 1, '2023-11-02 13:32:19', '2023-11-02 13:32:19'),
(65622, NULL, 'Answering questions around education', 'https://www.youtube.com/embed/gI9c6wasqBs?si=fkkfxHk74jiIWmMJ', 1, '2024-10-27 07:06:01', '2024-10-27 07:06:01'),
(65623, NULL, 'Foster Parent Livelihood Distribution', 'https://www.youtube.com/embed/F4PbKS-R7AA?si=-SVJtqFvHBMdJXXN', 1, '2024-10-27 07:11:24', '2024-10-27 07:11:24'),
(65624, NULL, 'Empowering Futures: GOALPrime’s Vocational Startup Kits in Mafa LGA', 'https://www.youtube.com/embed/lSWBZBAQf8Y?si=DAg-Rl-WX3wbJGzr', 1, '2024-10-30 18:28:34', '2024-10-30 18:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `postby` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `title`, `slug`, `postby`, `details`, `image`, `file`, `created_at`, `updated_at`) VALUES
(4, 'Call for Submissions: International Journal for Humanitarian Affairs and Social Development', 'call-for-submissions-international-journal-for-humanitarian-affairs-and-social-development', 'goalprime', '<p>Dear Esteemed Academicians and Researchers,</p>\n\n<p>&nbsp;</p>\n\n<p>As the Editorial Team of the International Journal for Humanitarian Affairs and Social Development, we are excited to extend an invitation to all researchers, scholars, and professionals in the fields of humanitarian affairs and social development to submit their publications and research works for consideration in our forthcoming issues which would be published by GOALPrime Organisation Nigeria.</p>\n\n<p>&nbsp;</p>\n\n<p>GOALPrime Organisation Nigeria is a policy-driven humanitarian, non-governmental organization that implements its program through revitalized partnership. She is a national non-profit organization with a mandate of making the lives of vulnerable people better in nations. Our organization provides a range of services to vulnerable and special needs people, especially in the face of disaster or crises. GOALPrime Organisation Nigeria operations in the Northeastern regional part of Nigeria alone has reached over 5,000,000 lives with integrated services.</p>\n\n<p>&nbsp;</p>\n\n<p>The International Journal for Humanitarian Affairs and Social Development is committed to fostering knowledge, dialogue, and collaboration in these critical areas, and we believe that your contributions can significantly enrich our publication. We are particularly interested in research papers, articles, case studies, and reviews that address the pressing challenges and innovative solutions in the humanitarian and social development realms.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Why should you consider submitting your work to our journal?</strong></p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>\n	<p><strong>* International and Regional Reach</strong>. Our journal is would be widely read and respected by a diverse international readership, including academics, practitioners, policymakers, and students. Your research will have a broad and lasting impact especially in Africa where more case studies are carried out.</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>\n	<p><strong>* Academic Excellence</strong>. We uphold rigorous academic standards, and publishing with us will enhance the academic recognition of your work and your affiliation with your institution.</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>\n	<p><strong>* Knowledge Dissemination</strong>. By publishing with us, you will actively contribute to the dissemination of knowledge and the advancement of best practices in humanitarian affairs and social development.</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>\n	<p><strong>* Interdisciplinary Collaboration</strong>. We encourage diverse perspectives and interdisciplinary approaches, fostering opportunities for collaboration with fellow scholars and practitioners from various fields.</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>\n	<p><strong>* Engaging the Community</strong>. Your contribution will enable you to engage with a broad community of like-minded individuals who share a passion for humanitarian and social development issues.</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>SUBMISSION GUIDELINES</strong></p>\n\n<p>&nbsp;</p>\n\n<p>We accept a wide range of research work, including but not limited to research papers, articles, case studies, book reviews, and policy analyses.</p>\n\n<p>&nbsp;</p>\n\n<p>All submissions should adhere to our guidelines and should be submitted through our online submission portal &ldquo;<a name=\"_Hlk150004146\">https://www.goalprime.org</a>&rdquo;</p>\n\n<p>&nbsp;</p>\n\n<p>Submissions are welcome on an ongoing basis, and we accept work in various formats.</p>\n\n<p>&nbsp;</p>\n\n<p>If you have any questions or require further assistance, please feel free to contact us at journal@goalprime.org</p>\n\n<p>&nbsp;</p>\n\n<p>We sincerely hope that you will consider sharing your research and insights with us. By contributing to the <a name=\"_Hlk150002722\">International Journal for Humanitarian Affairs and Social Development</a>, you will play a vital role in advancing our collective understanding of the pressing issues that shape our world.</p>\n\n<p>&nbsp;</p>\n\n<p>We look forward to receiving your submissions and to the opportunity of working with you to bring your research to a broader audience.</p>\n\n<p>&nbsp;</p>\n\n<p>Warm regards,</p>\n\n<p>&nbsp;</p>\n\n<p>Odudu Otu</p>\n\n<p><strong>Head Editorial Team </strong></p>', 'uploads/1655315472_s8.jpg', 'uploads/1699274937_Call for Submission Online.docx', '2023-11-06 13:24:19', '2023-11-06 13:25:56'),
(5, 'Download the full IJHASD Reference List and Citation Guide', 'reference-list-and-citations-style-guide-for-ijhasd', 'goalprime', '<p>Download the full IJHASD Reference List and Citation Guide.</p>', 'uploads/1700648000_pexels-engin-akyurt-2943603.jpg', 'uploads/1700648000_Reference List and Citations Style Guide for IJHASD.pdf', '2023-11-22 11:08:42', '2023-11-22 11:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_date_sent` datetime NOT NULL,
  `reminder_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_14_142741_create_newsarticles_table', 1),
(6, '2022_06_14_143229_create_partners_table', 1),
(7, '2022_06_14_144119_create_galleries_table', 1),
(8, '2022_06_14_144300_create_services_table', 1),
(9, '2022_06_14_145012_create_volunteers_table', 1),
(10, '2022_06_14_145206_create_teams_table', 1),
(11, '2022_06_14_150027_create_donations_table', 1),
(12, '2022_06_14_150203_create_newsletters_table', 1),
(13, '2022_06_14_150414_create_serviceimages_table', 1),
(14, '2022_06_14_150605_create_faqs_table', 1),
(15, '2022_06_14_151335_create_galleryimages_table', 1),
(16, '2022_06_14_151547_create_events_table', 1),
(17, '2022_06_14_151855_create_attendances_table', 1),
(18, '2022_06_14_152039_create_projects_table', 1),
(19, '2022_06_14_152213_create_research_table', 1),
(20, '2022_06_14_152728_create_testimonials_table', 1),
(21, '2022_06_14_153832_create_comments_table', 1),
(22, '2022_06_14_154018_create_pagesettings_table', 1),
(23, '2022_06_14_175108_create_breakdownrequests_table', 1),
(24, '2022_06_14_175555_create_logs_table', 1),
(26, '2022_06_15_131203_create_programs_table', 2),
(27, '2022_06_15_151330_create_slides_table', 3),
(28, '2022_06_17_160836_create_gprimetvs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsarticles`
--

CREATE TABLE `newsarticles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `postby` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imagefile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsarticles`
--

INSERT INTO `newsarticles` (`id`, `title`, `slug`, `postby`, `description`, `imagefile`, `created_at`, `updated_at`) VALUES
(13, 'GOALPRIME AND UNICEF LAUNCH RAPID RESPONSE INTERVENTIONS FOR 33,000 CHILDREN IN BORNO', 'goalprime-and-unicef-launch-rapid-response-interventions-for-33000-children-in-borno', 'GPON Admin', '<p>GOALPrime Organisation Nigeria (GPON) via funding support from UNICEF-Nigeria on Thursday (5-09-2023) launched a Rapid Response Mechanism (RRM) intervention for about 33,000 children with severe and moderate malnutrition in 3 OTP Centers of 3 wards of Mafa LGA of Borno State.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The interventions were aimed at enabling the humanitarian partners to deliver lifesaving assistance to address the immediate needs of the most underserved populations in northeast Nigeria supporting about 33,000 Internally Displaced Persons (IDPs) in Government Girls Arabic Secondary School (GGASS) IDPs Camp Mafa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The UNICEF&rsquo;s Nutrition Officer &amp; Assessment Officer for Borno, Adamawa, and Yobe states, (BAY), Nura Shehu in an interview with Journalists at the IDP Camp Mafa said, &ldquo;Out of the 14,000 children here from our research survey conducted, about 5000 suffer from Global severe Acute Malnutrition while 9000 suffer moderately acute malnutrition.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nura added that those global acute malnutrition problems were referred to the Stabilisation. Center at the General Hospital for general tests and observations before being brought to the OTP Centers for Severe Acute Malnutrition treatment where RUTF is being given to the children for those with severe acute malnutrition and counseling is given to those with moderate acute malnutrition on how to maintain good hygiene and nutrition.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>According to him, children of 6-59 months with acute malnutrition without complications are admitted at the OTP Centers for further treatments, while children of 0-59 months with severe acute malnutrition with complications are admitted first at the Stabilisation&mdash;centers in hospitals.<br />\r\n&nbsp;</p>\r\n\r\n<p>On his part, the UNICEF Water Sanitation and Hygiene Specialist, Dr. Loris Salihu said out of the four boreholes at the IDP camp, only one was functional when the interventions started serving over 32,000 populations or IDPs at the camp unlike in the past when the four boreholes were functional serving about 7000 population.</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"https://goalprime.org/uploads/water_supply_goalprime.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong><em>He said, &ldquo;now the population is over 32,000 from our statistics and only one borehole out of the four boreholes at the camp was functioning. So, we have to intervene in partnership with one of our partners, GOALPrime Organisation Nigeria (GPON) to reactivate three of the grounded boreholes to meet up with the population water needs daily which by standard is about 15 liters per day but they were having about 7.5 liters per day instead.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>We are presently on assessment of the water and hygiene facilities with a view to optimize the capacity of the facilities to meet up with the number of the population and UN standard..</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>The available water facilities which are boreholes in the camp can be optimize by adjusting the level of water supply while other sources of water near by can also be resuscitated to support the boreholes at the camp.</em></strong></p>\r\n\r\n<p><strong><em>For hygiene at the camp, the number toilets and how they are being used by the population also require water for cleanliness and maintenance. So, the toilets and environment are being sanitized to ensure cleanliness and better hygiene at the camp for better health of the population.&rdquo;&nbsp;</em></strong></p>\r\n</blockquote>\r\n\r\n<p>UNICEF in partnership with GOALPrime Organisation, has rehabilitated the other three boreholes. The clean water supply met the global humanitarian services standard of 15 liters per person per day when the population of the IDPs at the camp was just about 7000. However, with the influx of more IDPs from neighboring communities, swelling their population to over 33,000, the supply drastically fell to just about 7.5 liters per person per day, which is grossly inadequate by global standards.<br />\r\n&nbsp;</p>\r\n\r\n<p>To improve on the situation, apart from these four boreholes, we may not immediately dig more, but we will consider optimizing the capacity of these four and examine the possibility of augmenting their capacity from other sources in town.</p>', 'uploads/1696852053unicef_staff.2jpg.jpg', '2023-10-09 11:47:33', '2023-10-10 08:40:10'),
(14, 'LETS GIVE CHILDREN A CHANCE TO BUILD BACK THEIR LIVES', 'lets-give-children-a-chance-to-build-back-their-lives', 'goalprime', '<p>When his community was attacked by a non-state armed group, *Abdul was captured and taken into the bush for a while.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>After they were rescued by the military, he was taken to GDSS Camp, Mafa. When we came in contact with him at the camp, with support from @un_ocha we provided him and other children with mental health and psychosocial support.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>He was also mentored on life skills (tailoring) for some months and learned how to sew, after which he was provided with a start-up kit (a sewing machine) and now earns money to support himself.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://goalprime.org/uploads/abdul3.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Every child deserves a better future, let&rsquo;s give children affected by conflict a chance to build back their lives&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity&nbsp;is&nbsp;possible</p>', 'uploads/1696861937abdul1.jpg', '2023-10-09 14:32:17', '2023-10-09 14:36:29'),
(15, 'GOALPRIME ORGANIZATION SEPTEMBER, 2023 FACTSHEET', 'goalprime-organization-september-2023-factsheet', 'goalprime', '<p>Prolonged conflict perpetuated by Boko Haram and the Islamic State of Iraq and Syria-West Africa has spurred massive displacement and undermined food security, education in northeastern Nigeria.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Approximately 7.7 million people in northeastern Nigeria require emergency assistance, according to the UN&rsquo;s 2020 Global Humanitarian Overview. GOALPrime September 2023 Factsheet provided Humanitarian services to 25,293 conflict-affected individuals in northeast Nigeria, includes child protecction, education, water and sanitation, social-economic reintegration, nutrition, helath, and gender-based violence mitigation. Funding as sourced from multiple donors, such as Education Cannot Wait (ECW), the Norwegian Foriegn Ministry, Central Emergency Relief Fund (CERF), NRC/Street Child Consortium, and Nigeria Humanitarian Fund (NHF). Collaborative efforts with government and non-governmental entitles were undertaken to deliver these vital interventions in Borno, Adamawa, and Yobe State. &nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://goalprime.org/uploads/factsheet.jpg\" style=\"height:1080px; width:878px\" /></p>\n\n<p>A better Humanity is Possible.&nbsp;</p>', 'uploads/1696863749pexels-lukas-669612.jpg', '2023-10-09 15:02:29', '2023-10-09 15:02:29'),
(16, 'ADAMAWA | Rising Waters, Displaced Lives: Yola\'s Cry for Assistance', 'adamawa-rising-waters-displaced-lives-yolas-cry-for-assistance', 'GPON Admin', '<p><em>Yola, Adamawa State, Nigeria - October 6, 2022</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On Thursday, October 5th, 2023, Yola, the capital city of Adamawa State, was hit by a devastating flood that left a trail of destruction in its wake.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1697031068WhatsApp Image 2023-10-11 at 11.21.50N.jpg\" style=\"height:630; width:630px\" /><strong><em>Destruction in Jimeta, Yola, following the flooding. </em></strong></p>\r\n\r\n<p><strong>Source: GPON/Chukwuekem Chibuikem</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The relentless waters forced families from their homes, compelling them to seek refuge in schools across the state. While the immediate response to the crisis involved using buildings and schools as temporary shelters, it is important to note that this solution is far from ideal. The use of schools as shelters, while a quick response to an urgent situation, has proven to be inadequate for meeting the basic needs of the flood-affected population.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1697031108WhatsApp Image 2023-10-11 at 11.21.49O.jpg\" style=\"height:600px; width:630px\" /><strong><em>A block of classrooms temporarily used as shelters for the IDPs (Internally Displaced Persons).</em></strong></p>\r\n\r\n<p><strong>Source: GPON/Chukwuekem Chibuikem</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The displaced individuals, numbering close to two thousand, were seen to be scattered across the camps in clusters. Some of the most pressing issues they highlighted that they faced were the lack of proper shelter, lack of proper sanitation, and insufficient access to clean water. The schools, not designed to accommodate such large numbers, are overcrowded, leading to compromised living conditions. Moreover, the absence of adequate sanitation facilities poses a serious health risk. Access to clean toilets and safe water points is limited, further aggravating the uncertain living conditions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mariam*, from Bwaranji (an affected community by the flooding) and currently staying at Dougeri Primary School &ndash; one of the camps set up, said:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><em>&ldquo;The flood affected us badly. It has taken our homes and we have nowhere to stay, so we had to come to this place. As you can see, where we are is a school, some of us use sacks to sleep, and not all of us have mats. We can&rsquo;t do any business here, as we do daily business and that is how we feed.&rdquo;</em></p>\r\n</blockquote>\r\n\r\n<p>To address this urgent humanitarian crisis, a comprehensive and sustainable response plan must be put into action. Firstly, efforts should be made to identify alternative shelters, such as community centers or unused buildings, which can provide more space and better living conditions for displaced families. Collaborative efforts between government agencies, non-governmental organizations, and local communities are essential in locating suitable accommodations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1697031128WhatsApp Image 2023-10-11 at 11.21.48.jpg\" style=\"height:600px; width:630px\" /><strong><em>GOALPrime officers in one of the temporary camps with an official from the Red Cross</em></strong></p>\r\n\r\n<p><strong>Source: GPON/Chukwuekem Chibuikem</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our Country Director, GOALPrime Organization Nigeria, Dr. Christopher Chinedumuije added that:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><em>&ldquo;It is crucial to establish proper sanitation facilities and ensure access to clean water points within the temporary shelters. Adequate toilets, showers, and handwashing stations must be installed to maintain hygiene and prevent the outbreak of waterborne diseases. </em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Additionally, awareness campaigns on hygiene practices, disease prevention, and water conservation should be conducted within the temporary shelters. Education and information dissemination are key to empowering the affected population with the knowledge necessary to safeguard their health and well-being amidst the crisis.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>In the long term, the government and relevant authorities need to invest in flood prevention measures, including improved drainage systems, early warning systems, and flood-resistant infrastructure. Public awareness campaigns on disaster preparedness and climate change adaptation can also help communities better prepare for and respond to similar situations in the future.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>The use of schools as emergency camps is in itself a threat to education, as it denies children access to a safe and conducive learning environment and the continuous use of the classrooms poses a risk of destruction of facilities put in place to help learners. A quick resettlement of the affected people is essential so that the schools can fully be used to serve their original purpose.&rdquo;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1697031147WhatsApp Image 2023-10-11 at 11.22.07W.jpg\" style=\"height:600px; width:630px\" /><strong><em>Azeez*, Camp security in front of one of the temporary camps </em></strong></p>\r\n\r\n<p><strong>Source: GPON/Chukwuekem Chibuikem</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We urge national and international humanitarian organizations, governments, and concerned individuals to step forward and extend a helping hand to the people of Yola, Adamawa State. The situation is dire, and the displaced families are in desperate need of immediate assistance. By working together, we can alleviate their suffering and help them rebuild their lives. Let us stand in solidarity with the people of Yola and demonstrate the compassion and empathy that define our shared humanity<strong>.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible.</p>\r\n\r\n<p>Be Intentional!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'uploads/1697057613WhatsApp Image 2023-10-11 at 11.21.50M.jpg', '2023-10-11 15:23:07', '2023-10-11 20:53:33'),
(17, 'PRESS RELEASE: International Day of the Girl Child 2023', 'press-release-international-day-of-the-girl-child-2023', 'GPON Admin', '<p>Dear Nigerians &amp; Humans of the World,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Today is a significant day globally as we commemorate the 2023 International Day of the Girl Child when communities, organizations, and individuals worldwide join hands to reflect on and celebrate the extraordinary potential, strength, and leadership of girls. Under the theme &quot;Invest in Girls&#39; Rights: Our Leadership, Our Well-being,&quot; this year&rsquo;s celebration emphasizes the significance of empowering girls, advocating for their rights, and ensuring their overall well-being.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The International Day of the Girl Child celebrated annually on October 11th, stands as a testament to the ongoing efforts to address the challenges faced by girls globally while promoting their empowerment and equality.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This year&rsquo;s theme underscores the crucial role that investing in girls&#39; rights plays in shaping a better future for everyone.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GOALPrime Organization Nigeria (GPON), we recognize the pivotal role girls play in shaping a better future for themselves and their communities. Over the years, we have been intentional about rolling out interventions aimed at investing in girls&#39; rights. We do not only empower them as individuals but also contribute to the development of more equitable and prosperous societies where women and girls are safe, protected, and empowered as enshrined in our Vision and Mission statements. This is because we strongly believe that Empowered girls grow into confident women who contribute significantly to the progress of society.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Girls have immense potential to shape societies, lead change, and contribute significantly to social and economic development. By investing in their rights, we empower them to become leaders of tomorrow, driving progress and innovation in various fields. &ldquo;Through education, mentorship, and equal opportunities, girls can break barriers, challenge stereotypes, and make a lasting impact on the world.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The International Day of the Girl Child serves as a platform to advocate for gender equality and inclusivity in all aspects of life. By dismantling societal norms that hinder girls&#39; progress, we create a more just and equitable world. This includes addressing issues such as access to healthcare, nutrition, mental health support, and protection from violence and discrimination. When girls are healthy, protected, safe, and supported, they can focus on their education and personal growth, leading to a brighter and more promising future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This year&#39;s celebration is a call to action. The GOALPrime family therefore urge governments, organizations, and individuals to invest in initiatives that promote girls&#39; rights, provide them with quality education, and create an environment where their voices are heard and respected. By doing so, we not only transform the lives of individuals but our communities as well.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime Organization Nigeria (GPON) remains committed to championing the rights of girls and young women locally and globally. Through our various programs and initiatives, we provide educational resources, mentorship, and skill-building opportunities to empower girls to become leaders in their communities. We advocate for policies that promote gender equality, support girls&rsquo; education, and eradicate harmful practices such as child marriage and female genital mutilation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In line with GOALPrime Organization Nigeria&rsquo;s vision for a better world for children, women, and caregivers, lies our continuous support to empower girls and support their rights. You can contribute by volunteering, donating, or simply spreading awareness about the importance of investing in girls. &ldquo;Together, we can create a world where every girl child could thrive, lead, and succeed.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I believe in the power of advocacy to drive change. I hereby call on governments, organizations, and individuals to invest in girls&#39; rights by supporting education, providing healthcare, protection and creating safe spaces for them to thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;By implementing and enforcing policies that promote gender equality, we pave the way for a future where every girl can dream without limitations and achieve her goals.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Better Humanity is Possible.</p>\r\n\r\n<p>Be Intentional!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Christopher Chinedumuije (PhD, FBU).</p>\r\n\r\n<p>CEO/Country Director,</p>\r\n\r\n<p>GOALPrime Organization Nigeria (GPON)</p>\r\n\r\n<p>For: The Entire&nbsp;GOALPrime&nbsp;Team.</p>', 'uploads/1697057135CHIEF.jpg', '2023-10-11 20:45:35', '2023-10-11 21:06:37'),
(18, 'Empowering Futures: A Step Towards Protective, Inclusive and Quality Education across the BAY States', 'empowering-futures-a-step-towards-protective-inclusive-and-quality-education-across-the-bay-states', 'GPON Admin', '<p>In the pursuit of ensuring Protective, Inclusive, and Quality Education for conflict-affected children across the BAY States, a significant milestone was achieved under the ECW UNICEF project. The initiative began a transformative journey, igniting the flame of education in the lives of Out of out-of-school learners in LGAs across the BAY States.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&nbsp;flagged off the distribution of Scholastic materials to the learners who had been identified and enrolled&nbsp;across these LGAs. The LGAs that benefitted from this distribution include Pulka and Kala-Balge LGA, in Borno State; Gujba LGA in Yobe State, and Madagali LGA in Adamawa State&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698392990dupe 2.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This&nbsp;distribution of Scholastic materials would aid these children who were previously denied the right to education due to the harsh realities of conflict. The initiative aimed not only to provide essential learning tools but also to make teaching and learning&nbsp;impactful.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Among the items distributed were&nbsp;80 Basic Literacy Facilitators Guides, 80 Basic Numeracy Facilitators Guides, 1938 Packed Learners Kits, 5600 Literacy Learners Workbooks, and 4100 Numeracy Learners Workbooks distributed to Teachers and Out of School Learners within the LGAs, these tools were not just materials; they were pathways to enlightenment, gateways to a brighter future</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698393491dupe 4.jpg\" style=\"height:459px; width:778px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The spirit of the learners was truly inspirational. Their enthusiasm and joy were palpable, reflecting the immense impact this initiative had on their lives. With the new materials in their hands, they embraced the opportunity to learn with unwavering zeal and commitment. It was a testament to the hunger for knowledge that exists within every child, regardless of their circumstances.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698393473dupe 3.jpg\" style=\"height:459px; width:901px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the face of adversity, this initiative stands as a reminder that a better humanity is possible. It showcases the immense power of collective efforts, where organizations like ECW and UNICEF join hands to create tangible change. The smiles on the faces of these children serve as a testament to the transformative power of education, proving that even in the most challenging circumstances, hope can prevail.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1698393658dupe 1.jpg', '2023-10-27 08:00:58', '2023-10-27 08:06:57'),
(19, 'Empowering Voices: Celebrating Season Two of Da Rarrafe Yaro Kan Tanshi', 'empowering-voices-celebrating-season-two-of-da-rarrafe-yaro-kan-tanshi', 'GPON Admin', '<p>Through a remarkable collaboration with Unicef Nigeria, Da Rarrafe Yaro Kan Tanshi, the pioneering Child-Led Live Radio Programme across&nbsp;the BAY State, concluded its second season.&nbsp;For 20 weeks straight, young voices resonated through the airwaves, tackling critical issues concerning children in their communities. The last episode, a culmination of this journey, was a beacon of reflection and celebration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The finale of Season Two was not just an episode; it was a heartfelt recap of a transformative journey. Throughout the season, the young broadcasters took on various topics, shedding light on the challenges faced by children and advocating for change. Their discussions were not only informative but also deeply moving, revealing the resilience and determination of these young souls.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698421656radio 3.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Every Saturday from 4 PM to 5 PM, on Al-Ansar radio, 96.1FM, became a hub of inspiration and transformation. The conversations on Da Rarrafe Yaro Kan Tanshi didn&#39;t just end with the show; they sparked discussions in homes, schools, and community centers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of this season&#39;s most inspiring aspects was witnessing the Star Anchors&#39; growth. These young individuals evolved not just as broadcasters but as advocates, as they affirmed how it helped them become&nbsp;a powerful &quot;Voice for Children.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through Da Rarrafe Yaro Kan Tanshi, they found a platform where their opinions mattered, and where their words could spark change. Their experiences on the show transformed them into confident, empathetic leaders, ready to make a difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698421678radio 4.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As Season Two concluded, it wasn&#39;t just an ending. The impact of Da Rarrafe Yaro Kan Tanshi will continue to resonate, shaping the future of these young broadcasters and the communities they serve. Through their voices, we glimpse a future where children are not just seen but heard and their dreams are acknowledged and nurtured.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Da Rarrafe Yaro Kan Tanshi has proven that age is not a barrier to advocacy, and that passion knows no bounds. It has shown us the incredible power of youth-led initiatives, reminding us that the future is in capable hands. As we celebrate the conclusion of Season Two, let us eagerly anticipate the next chapter, as Season Three will be kicked off soon. Knowing that these young voices will continue to inspire, educate, and transform, one broadcast at a time.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible.</p>', 'uploads/1698423611radio 1.jpg', '2023-10-27 16:20:11', '2023-10-27 17:22:41'),
(20, 'Clean Hands, Bright Futures: Celebrating Global Handwashing Day in Adamawa State', 'clean-hands-bright-futures-celebrating-global-handwashing-day-in-adamawa-state', 'GPON Admin', '<p>In the spirit of promoting good hygiene and fostering a healthier future, Global Handwashing Day was commemorated with great enthusiasm in Adamawa State. In collaboration with the Ministry of Water Resources and other Water, Sanitation, and Hygiene (WASH) partners, the event took place at GMMC, Jimeta, leaving an indelible mark on the young minds present.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Global Handwashing Day, observed annually on October 15th, holds profound importance. This global advocacy day is dedicated to increasing awareness and understanding of the importance of handwashing with soap as an effective and affordable way to prevent diseases and save lives. It serves as a reminder that a simple act like handwashing can significantly reduce the spread of illnesses, especially in communities where access to clean water and sanitation facilities might be limited.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698425687GHW 2.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GMMC, Jimeta, the day was not just a celebration but a hands-on learning experience. Students actively participated in engaging sessions that highlighted the significance of proper handwashing methods. Under the guidance of WASH Officers, they learned the step-by-step process of effective handwashing, understanding that it&#39;s not merely a routine but a powerful tool in disease prevention.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698425723GHW 4.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Handwashing is a cornerstone of personal hygiene, acting as a barrier to germs and diseases. By washing hands properly and regularly, especially before meals and after using the restroom, individuals can significantly reduce the risk of infections. This practice is especially vital in schools, where large groups of children gather, making it easier for illnesses to spread. Teaching children the importance of hand hygiene not only protects them but also creates a ripple effect, leading to healthier families and communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The commemoration of Global Handwashing Day at GMMC, Jimeta, exemplified the power of community collaboration. The Ministry of Water Resources and WASH partners worked together to create an impactful event that empowered young students with essential knowledge. By instilling good handwashing habits at an early age, we are nurturing a generation that understands the importance of hygiene and will carry this knowledge into adulthood.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698425960GHW 5.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As the echoes of Global Handwashing Day fade, the lessons learned will continue to echo in the lives of these students. Each clean hand represents a step towards a healthier future, where preventable diseases are kept at bay, and communities thrive. The event at GMMC, Jimeta, was not just a celebration; it was a promise&mdash;a promise that through education and awareness, we can build a world where every hand is clean, every child is healthy, and every community is resilient.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let us carry the spirit of Global Handwashing Day with us every day, reminding ourselves and others of the transformative power of clean hands. Together, we can create a healthier, happier world, one handwash at a time.</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1698426605GHW 1.jpg', '2023-10-27 17:10:05', '2023-10-27 17:10:05'),
(21, 'Empowering Communities: Strengthening Nutrition Initiatives in Borno State', 'empowering-communities-strengthening-nutrition-initiatives-in-borno-state', 'GPON Admin', '<p>As part of a proactive initiative aimed at enhancing the nutritional well-being of communities in Borno State, we conducted comprehensive Community Management for Acute Malnutrition (CMAM) training sessions. These workshops were tailored for Community Nutrition Mobilizers, healthcare professionals, and their supervisors in the Damboa and Dikwa Local Government Areas (LGAs). This vital training program was made possible through the support of the Nigerian Humanitarian Fund (NHF), reinforcing our commitment to fostering healthier communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These training sessions were more than just instructional; they were collaborative learning experiences facilitated by dedicated experts. Facilitators from the State Primary Health Care Development Agency (SPHCDA) alongside&nbsp;our nutrition focal person&nbsp;shared&nbsp;their knowledge and insights, ensuring diverse perspectives and expertise enriched the training.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698430413NUT 1.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of the distinctive features of this training was its emphasis on mainstreaming Gender-Based Violence (GBV), Gender, Disability Inclusion, and the Prevention of Sexual Exploitation and Abuse (PSEA) into nutrition programs. Recognizing the importance of inclusivity, these sessions were designed to address the unique needs and challenges faced by vulnerable populations. By integrating these essential elements into our nutrition initiatives, we aim to create programs that are not only effective but also empathetic and supportive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At the heart of these training sessions were our dedicated Community Nutrition Mobilizers and healthcare professionals. By equipping them with advanced skills and knowledge, we empower them to serve their communities more effectively. These frontline workers play a vital role in ensuring that proper nutrition reaches those who need it the most. Through comprehensive training, they are better prepared to identify, address, and prevent acute malnutrition, ultimately saving lives and building a healthier future for Borno State.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698430447NUT 3.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As the training sessions concluded, a sense of purpose and determination filled the air. The knowledge gained and the strategies shared are not merely theoretical; they are actionable steps toward a brighter, healthier future. By investing in the education and skills of our community leaders and healthcare providers, we are sowing the seeds of sustainable change. This initiative is not a one-time event but a continuous effort to uplift communities, foster inclusivity, and enhance the quality of life for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Community Management for Acute Malnutrition (CMAM) training sessions in Damboa and Dikwa LGAs mark a significant milestone in our mission to combat malnutrition and promote overall well-being. With the support of the Nigerian Humanitarian Fund and the dedication of our partners, we are creating a ripple effect of positive change, one that will resonate in the lives of countless individuals and families. Together, we move forward, empowered and inspired, towards a future where no one is left behind, and every community thrives.<br />\r\n&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1698431048NUT .jpg', '2023-10-27 18:24:08', '2023-10-27 18:24:08'),
(22, 'Empowering Futures: GPON\'s Commitment to Vocational Empowerment', 'empowering-futures-gpons-commitment-to-vocational-empowerment', 'GPON Admin', '<p>At GPON, we believe in the power of skills, the strength of ambition, and the potential within every young individual. Our vision for a better world for children, women, and caregivers resonates with the core belief that empowering young minds is not just a choice; it&#39;s a responsibility. In line with this vision, GPON has taken significant strides in empowering the youth of Mafa and Kala Balge LGAs, of Borno State, by providing them with the essential tools and resources to kickstart their careers in various vocational fields.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The provision of start-up kits to vocational training graduates is a cornerstone of our organization&#39;s effort to support youth employment and entrepreneurship.&nbsp;To achieve this, we have initiated a program that provides start-up kits to vocational training graduates. These kits are meticulously tailored to their respective fields, including local incense production, knitting, cap making, and cosmetology. Each kit comprises the equipment and materials necessary for these graduates to initiate their careers, enabling them to transform their skills into sustainable businesses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698432720ECW 2.jpg\" style=\"height:488px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our efforts have made a significant impact in Mafa and Kala Balge LGAs. By distributing these start-up kits, we have empowered young individuals, enabling them to achieve economic independence and contribute meaningfully to the development of their communities. As these talented individuals embark on their entrepreneurial journeys, they are not only building their futures but also fostering economic growth within their localities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This initiative under&nbsp;the Street Child ECW MYRP YR2 project, saw that 137 adolescent girls in Mafa and Kala Balge LGAs of Borno State received their ECW YR 2 Vocational Skill Start-Up Kits. These kits are tailored to their learned skills over a period of mentorship. With each kit, a dream is nurtured, a skill is honed, and a future is transformed.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698432759ECW 3.jpg\" style=\"height:488px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GOALPrime Organization Nigeria, we are not just providing tools; we are sowing the seeds of empowerment. In partnership with Education Cannot Wait (ECW), Street Child, and the Norwegian Refugee Council, together we are shaping a generation of skilled, self-reliant individuals who will undoubtedly leave a mark on their communities and beyond.&nbsp;</p>\r\n\r\n<p><br />\r\nA better humanity is possible<br />\r\nBe intentional</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1698433408ECW 1.jpg', '2023-10-27 19:03:28', '2023-10-27 19:03:28'),
(23, 'Empowering Futures: 406 children (240 girls and 166 boys) have been seamlessly integrated into formal schools', 'empowering-futures-406-children-240-girls-and-166-boys-have-been-seamlessly-integrated-into-formal-schools', 'GPON Admin', '<p>In the vast expanse of Borno State, amidst challenges that have tested the resilience of its people, their resilience keeps shining through. As part of our efforts in Year 2 of our ECW project, we have achieved a significant milestone, supporting the integration of 406 children into formal schools across Mafa and Kala-Balge Local Government Areas (LGAs) of Borno State. This heartening achievement not only marks the triumph of determination but also signifies the power of collective efforts in shaping a brighter future for the younger generation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Children who were part of ECW-supported education initiatives were equipped with scholastic materials to enhance their learning process after transitioning into formal schools. These invaluable items were carefully handed over to the Borno State State Agency for Mass Education (SAME) and community stakeholders, ensuring a seamless transition for these young learners.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"	https://www.goalprime.org/uploads/1698938203WhatsApp Image 2023-11-02 at 16.15.54_9e71a0ac.jpg\" style=\"height:434px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The impact of this initiative goes beyond mere numbers. A total of 240 girls and 166 boys have been seamlessly integrated into formal schools, giving them the opportunity to continue their education journey. Among the schools that have welcomed these determined learners are Mafa Central Primary School, Hausari Primary School in Mafa LGA, and Boarding Primary School in Rann. These institutions have opened their doors, providing a nurturing environment where these children can learn, grow, and thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of the most commendable aspects of this initiative is the emphasis on quality education. It&#39;s not just about enrolling these children in schools; it&#39;s about ensuring that they have access to education that empowers them with knowledge, skills, and confidence. By providing scholastic materials, we have not only facilitated the learning process but also instilled a sense of belonging and motivation among these young minds.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698938334WhatsApp Image 2023-11-02 at 16.15.59_4e48f951.jpg\" style=\"height:434px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This initiative showcases the importance of collaboration between government bodies, community stakeholders, and organizations alike. The successful integration of these children into formal schools was made possible due to the joint efforts of various stakeholders who worked tirelessly to create a conducive learning environment. It&#39;s a testament to what can be achieved when communities come together with a shared goal &ndash; ensuring the education of every child, regardless of their circumstances.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>Be intentional</p>', 'uploads/1698938395IMG-20231102-WA0425.jpg', '2023-11-02 15:19:55', '2023-11-02 15:21:23'),
(24, 'Empowering Futures: 100 UASC children provided with NFIs to improve their standard of living', 'empowering-futures-100-uasc-children-provided-with-nfis-to-improve-their-standard-of-living', 'GPON Admin', '<p>In today&#39;s world, where challenges abound and resources are often scarce, it&#39;s heartening to witness initiatives that bring hope and positive change. Thanks to the invaluable support from the Nigerian Humanitarian Fund (NHF), we have been able to make a significant impact in the lives of 100 Unaccompanied and Separated Children (UASC). These children, who are being case managed, have received essential Non-Food Items (NFIs) to enhance their quality of life</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the face of adversity, having access to necessities contained in these kits can make a world of difference. These items not only improve their standard of living but also provide a sense of security and dignity, fundamental elements that every child deserves.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1699443548IMG-20231102-WA0422.jpg\" style=\"height:431px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By providing NFIs to the UASC children, we have directly contributed to improving their overall well-being. The items provided include toothbrushes, mosquito nets, soaps, detergent, slippers, Vaseline, and toothpaste. Hygiene products, often taken for granted, play a vital role in maintaining their health, preventing illnesses, and promoting personal hygiene practices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>While the progress we have made is commendable, there is still much work to be done. The support of organizations like the Nigerian Humanitarian Fund (NHF) is invaluable, but collective efforts are necessary to ensure that no child is left behind. By raising awareness, advocating for policy changes, and supporting initiatives aimed at vulnerable children, we can create a world where every child&#39;s potential is nurtured and celebrated.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1699443585IMG-20231102-WA0421.jpg\" style=\"height:420px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we celebrate this achievement, let us be inspired to do more, to reach out to those in need, and to create a future where every child can thrive, regardless of their circumstances.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we can make a difference and build a brighter, more hopeful tomorrow for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible.</p>\r\n\r\n<p>Be intentional!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1699443837IMG-20231102-WA0420.jpg', '2023-11-08 11:43:57', '2023-11-08 11:45:34'),
(25, 'Empowering Futures: Back-to-School Campaign in Kala-Balge and Damboa LGAs of Borno State', 'empowering-futures-back-to-school-campaign-in-kala-balge-and-damboa-lgas-of-borno-state', 'GPON Admin', '<p>In the heart of Borno State, where resilience meets hope, we embarked on a transformative journey to uplift communities through education. Our team recently conducted a Back-to-School campaign in the Kala-Balge and Damboa Local Government Areas (LGAs), striving to enhance community awareness about the paramount importance of education for children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1700486776WhatsApp Image 2023-11-20 at 13.30.56_efaaabc9.jpg\" style=\"height:488px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The primary goal of the campaign was to raise awareness, increase enrolment, and promote retention rates for vulnerable and out-of-school children in both formal and non-formal educational settings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1700485252WhatsApp Image 2023-11-20 at 13.30.59_bbdf7974.jpg\" style=\"height:488px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Back-to-School campaign yielded encouraging results, with a noticeable turn-up of community members. We remain committed to supporting these communities in their pursuit of education, understanding that it is a stepping stone towards a brighter future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>Be Intentional!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1700486894WhatsApp Image 2023-11-20 at 13.30.59_9fe1ee90.jpg', '2023-11-20 13:28:14', '2023-11-20 13:28:14'),
(26, 'Bridging Gaps and Fostering Education: Insights from the Third Round of Joint Monitoring Visits', 'bridging-gaps-and-fostering-education-insights-from-the-third-round-of-joint-monitoring-visits', 'GPON Admin', '<p>The primary objective of the third round of joint monitoring visits was to identify and address gaps, monitor changes and improvements, enhance access to education for conflict-affected children and adolescents, provide conflict-sensitive educational services, and strengthen coordination at the Local Government Area (LGA) level. The escalating needs and persistent gaps arising from the aftermath of the initiation and escalation of insurgency underscored the imperative for a third round of joint monitoring visits in LGAs distinct from those covered in the initial and second rounds.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1700487492JMV.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The joint monitoring team, comprising representatives from the State Ministry of Education, State Universal Basic Education Board, State Agency for Mass Education, Education in Emergencies Working Group (EiEWG), and GOALPrime Organization Nigeria, undertook visits to 63 Schools across 21 Local Government Areas (LGAs) in the BAY States, specifically: Fune, Fika, Potiskum, Nguru, Yusufari, Jakusko, Yola South, Girei, Hong, Gombi, Guyuk, Song, Lamurde, MMC, Banki, Jere, Gwoza, Mafa, Kaga, Konduga and Magumeri LGAs.&nbsp;The monitoring team consisted of nine individuals from these agencies. The active participation of Education Secretaries in each LGA significantly contributed to the success of the monitoring&nbsp;process.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1700487513JMV 1.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To facilitate the Joint Monitoring Visits, several strategic approaches were employed. This involved conducting Advocacy visits to engage with the Education Secretaries of the designated Local Government Areas (LGAs), performing on-site observations of the visited schools, engaging in discussions and meetings with key stakeholders such as Education Secretaries, school-based management committees (SBMCs), headteachers, teachers, learners (Head Boys and Head Girls), youth leaders, and parent-teacher associations (PTA).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1700487532JMV 3.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A specialized Monitoring tool was meticulously developed and integrated into the Kobo Collect platform, tailored to suit the diverse categories of participants involved in the monitoring process. After the collection of responses, a rigorous analysis will be undertaken, culminating in the creation of a detailed and comprehensive report by our MEAL Team.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This monitoring initiative spanned 63 schools within the selected 21 LGAs&nbsp;of the BAY States. We are committed to enhancing the quality of education across these LGAs.</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1700487975JMV 2.jpg', '2023-11-20 13:46:15', '2023-11-20 13:46:15');
INSERT INTO `newsarticles` (`id`, `title`, `slug`, `postby`, `description`, `imagefile`, `created_at`, `updated_at`) VALUES
(27, 'EMPOWERING WOMEN: A STEP TOWARDS HEALTH, DIGNITY, AND ENTREPRENEURSHIP', 'empowering-women-a-step-towards-health-dignity-and-entrepreneurship', 'GPON Admin', '<p>In a significant stride towards promoting women&#39;s health, dignity, and economic empowerment, we collaborated with the Federal Ministry of Women Affairs and the United Nations Population Fund (UNFPA) to conduct a comprehensive training program in Kwali Area Council, Abuja. The focus of this initiative was to impart valuable skills to rural women and students in the production of menstrual hygiene reusable pads.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Menstrual hygiene remains a crucial yet often overlooked aspect of women&#39;s health. In many parts of the world, including rural areas, women face challenges in accessing affordable and sustainable menstrual hygiene products. Recognizing this gap, our collaborative program aimed to address not only the immediate need for menstrual hygiene solutions but also to contribute to the global initiative to eliminate violence against women and girls.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705064033405761618_313736231546670_2412707845246533444_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The training program comprised a series of hands-on sessions covering various aspects, ranging from the Production of Reusable Pads to health and Hygiene Education, Gender-Based Violence (GBV) Education, and Entrepreneurial Empowerment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We believe that the impact of this program extends far beyond the training sessions. By providing women and students with the skills to produce their menstrual hygiene products, we contribute significantly to their overall well-being. The ripple effect of this initiative includes not only improved health outcomes but also enhanced confidence, community engagement, and economic independence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through collaboration with government bodies and international organizations, we are committed to championing sustainable change in communities. This program serves as a testament to the potential of collective efforts in addressing fundamental issues and fostering positive transformations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705064095405209948_723689139661613_5589948711352090747_n (1).jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we can continue making strides toward a future where every woman and girl has access to the resources and knowledge needed to lead a life of dignity and empowerment.</p>', 'uploads/1705064322405245331_1046938016457644_444179280972157037_n.jpg', '2024-01-12 12:58:42', '2024-01-12 12:58:42'),
(28, 'Promoting Hygiene: Sensitization meeting with Health and Hygiene Club members in Madagali LGA', 'promoting-hygiene-sensitization-meeting-with-health-and-hygiene-club-members-in-madagali-lga', 'GPON Admin', '<p>In the heart of Madagali Local Government Area in Adamawa State,&nbsp; at Tsitsil and Lumadu Primary School. Members of the Health and Hygiene Club were convened for a sensitization meeting, championing a cleaner and healthier environment for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Led by enthusiastic trainers, the Health and Hygiene Club members undergo a comprehensive training session focused on building a robust foundation in hygiene practices that they will disseminate among their peers. From the importance of proper handwashing to the nuances of washing clothes and uniforms.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705065163407408294_315245211329944_6503425477830400706_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Awareness and sensitization are at the forefront of the agenda. The club members passionately convey the importance of Proper Handwashing, Laundry Practices, No Open Defecation, and avoiding touching faces, emphasizing the significance of refraining from touching eyes, mouths, and noses with unwashed hands.</p>\r\n\r\n<p>The sensitization meeting with the Health and Hygiene Club members of Tsitsil and Lumadu Primary School in Madagali LGA is more than an event; it is a catalyst for positive change. These young advocates, armed with knowledge and enthusiasm, are not just shaping their immediate surroundings but contributing to a healthier and cleaner future for Madagali and beyond.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705065182407321298_2336589623196357_1930326329243449678_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The seeds of awareness sown in the hearts of these club members promise a brighter, more hygienic tomorrow for the community.</p>', 'uploads/1705065303407347461_174030145791998_6203062361888581784_n.jpg', '2024-01-12 13:15:03', '2024-01-12 13:15:03'),
(29, 'Nourishing Hope: Tom Brown Distribution for Children with MAM in Borno State IDP Camps', 'nourishing-hope-tom-brown-distribution-for-children-with-mam-in-borno-state-idp-camps', 'GPON Admin', '<p>We carried out the distribution of Tom Brown powder to children with Moderate Acute Malnutrition (MAM), across eight Internally Displaced Persons (IDP) Camps in the Dikwa and Damboa Local Government Areas (LGAs) of Borno State. This initiative aimed not only to provide nutritional support but also to fortify the resilience of a community grappling with the impacts of protracted conflict.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through targeted nutritional support, we aimed to lay the foundation for enduring strength among the most vulnerable. The distribution of Tom Brown powder was not a standalone effort. It was aligned with our commitment to strengthening the resilience of the conflict-affected population in Borno by improving access to preventive and curative community-based nutrition services. This is rooted in the belief that sustainable change comes from integrating nutrition services into the fabric of community life. By doing so, we envisioned a future where children not only survive but thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705907764419311702_1373207463338129_152824389451904358_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>While our efforts marked a crucial step, the journey towards resilience is ongoing. It&#39;s a call to collective action, an invitation for communities, organizations, and stakeholders to unite in the pursuit of a healthier, more resilient Borno State. The distribution of Tom Brown powder is not just an event; it&#39;s a catalyst for change, a testament to our shared responsibility in building a brighter future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1705908739419907938_6411921438907610_96252951925216481_n.jpg', '2024-01-22 07:32:19', '2024-01-22 07:32:19'),
(30, 'A Reflective End of Project Review Meeting Unveiling Successes and Lessons', 'a-reflective-end-of-project-review-meeting-unveiling-successes-and-lessons', 'GPON Admin', '<p>Every day we remain intentional in our service to humanity. We serve in every sense of it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we wrap up the 2023 1st Reserve Allocation of the Nigeria Humanitarian Fund of the United Nations Office of Coordination of Humanitarian Affairs (UNOCHA) which was implemented across 9 LGAs in Borno, Adamawa, and Yobe. It was important to review the implementation with the amazing team on the project and impressive to hear them share amazing results achieved as well as the lessons learnt which positions them for more value-driven interventions and opportunities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1705910416IMG_8999.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The scorecard over the last 6 months via this project includes:</p>\r\n\r\n<ul>\r\n	<li>3000 pregnant and lactating mothers with children under 23 months were provided with MIYCN support, hygiene, and other key household messages.</li>\r\n	<li>1500 children with Moderate Acute Malnutrition were admitted to targeted supplementary feeding programs.</li>\r\n	<li>1000 at-risk children were reached with MUAC screening and enrolled into appropriate nutrition support services.</li>\r\n	<li>5 OTP centers were established and fully operated in hard-to-reach Damboa and Dikwa LGAs in Borno State.</li>\r\n	<li>700 children diagnosed with SAM without complication enrolled and supported through the established OTP Centers.</li>\r\n	<li>3000 caregivers trained on at-risk caregivers training on family MUAC approach.</li>\r\n	<li>3000 children screened for acute Malnutrition.</li>\r\n	<li>Community awareness of their rights to services increased to 90%.</li>\r\n	<li>15 cooking demonstrations were carried out for mother groups across the target LGAs.</li>\r\n	<li>2 Protection and GBV assessments were carried out in Damboa and Dikwa LGAs.</li>\r\n	<li>100 practitioners trained on improving Nutrition services in health facilities, stabilization centers, and OTP centers.</li>\r\n	<li>100 Health Workers and Community Nutrition Monitors trained on CMAM and IYCF.</li>\r\n	<li>250,000 Community people were reached with Community tailored gender and age-appropriate hygiene messages aiming at hygiene behaviours and practices as per sector standards.</li>\r\n	<li>50,000 households are continuously provided with safe water in 7 hard-to-reach LGAs.</li>\r\n	<li>20 GBV Safety Audits were conducted across locations of implementation in the BAY states.</li>\r\n	<li>5000 households provided with WASH NFIs (Hygiene Kits, Replenishment Kits, Cholera Kits, Nutrition Kits, Sanitation Kits and MHM Kits),</li>\r\n	<li>7 International Partners (UN &amp; INGOs) supported with Hygiene Kits via the GOALPrime Common Pipeline Services.</li>\r\n	<li>Primary Health Care Centres (PHCs) in Damboa and Dikwa are supported with over $50,000 worth of essential drugs for onward administering to people of concern across the LGAs</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The impact of these interventions across the target LGAs cannot be overemphasized.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All GOALPrime Organization Nigeria team members are Superstars.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We will continue to do very much more.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Better Humanity is indeed Possible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Christopher Chinedumuije Oguegbu (PhD, FBU),</p>\r\n\r\n<p>Reader/Associate Professor,</p>\r\n\r\n<p>Disaster Management &amp; Humanitarian Studies</p>\r\n\r\n<p>&amp;</p>\r\n\r\n<p>Country Director/CEO</p>\r\n\r\n<p>GOALPrime Organization Nigeria.</p>', 'uploads/1705911600IMG_8997.jpg', '2024-01-22 08:20:00', '2024-01-22 08:20:00'),
(31, 'Success Story: Latrine Construction Initiatives provides positive change for the people of Madiya Community', 'success-story-latrine-construction-initiatives-provides-positive-change-for-the-people-of-madiya-community', 'GPON Admin', '<p>Mallam Julde Adamu, the Community Head (Bulama) of Madiya is 67 years old. Married with two wives and nine children, five male and four female. He lives with his family in Madiya community, a town occupied by a small group of Nomadic Fulani (Fulfulde) tribe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thanks to the Sanitation Marketing Revolving Funds program supported by UNICEF and partnering with RUWASSA, GOALPrime Organization, and Unimaid Micro-Finance Bank. The People of Madiya Community like all other Communities in Biu, have been able to benefit from Sanitation Marketing Funds for the construction and or Rehabilitation/upgrade of their latrines.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In this Community of nomadic Fulani Families, life is peaceful, but for this semi-nomadic population, the construction of toilets is not a habit, and the soil horizons are made up of sedimentary rock which makes it difficult to excavate and construct improved latrines. Women and children usually&nbsp;defecate in the grasses around the houses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Julde Adamu is the Community Leader and is part of the Adashe group members.&nbsp;One of the beneficiaries of Sanitation Marketing. He believes that the construction of toilets in the community has impacted a significant effect towards mitigating diseases that are associated with poor sanitation practices and stopping the spread of Open Defecation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sanitation Marketing Revolving Funds allows the implementation of a set of coordinated actions which, when the different requirements are followed, allow the community to be declared as having reached the ODF status. Through the intervention of Sanitation Marketing Revolving Funds, all eleven members of the Adashe group have constructed improved sanitation facilities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This not only encourages&nbsp;and promotes the construction of Latrines, this approach stimulates behavioral change in communities on water, sanitation, and hygiene issues. It motivates inhabitants to fully invest in improving their living environment. Through the Sanitation Marketing program, Julde Adamu ensures that the community will carry out proper hygiene practices of the latrines and maintenance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible&nbsp;</p>', 'uploads/1706016391lat.PNG', '2024-01-23 13:26:31', '2024-01-23 13:26:31'),
(32, 'Amplifying Voices, Spreading Knowledge: GOALPrime\'s Radio Initiatives in Nigeria', 'amplifying-voices-spreading-knowledge-goalprimes-radio-initiatives-in-nigeria', 'GPON Admin', '<p>In the vast landscapes of Nigeria, radio waves carry more than just music and entertainment. Effective communication is key to reaching communities and fostering positive change, in the dynamic landscape of humanitarian and development work. Recognizing the power of radio as a medium to amplify voices and spread knowledge, GOALPrime Organization Nigeria continuously carries out two impactful radio programs aimed at engaging communities and promoting dialogue on crucial issues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Da Rarrafe Yaro Kan Tashi: </strong><strong>A Child-led Radio Program</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of GOALPrime&#39;s flagship radio programs, &quot;Da Rarrafe Yaro Kan Tashi,&quot; is a child-led live radio program that has been running successfully for three seasons now. Imagine a radio program where children are not just passive listeners, but active participants, shaping content and engaging with critical issues that affect their lives. This is the aim of &quot;Da Rarrafe Yaro Kan Tashi,&quot; in collaboration with UNICEF Nigeria and support from KFW. This innovative initiative creates a platform for children in Borno State to engage with humanitarian and development stakeholders, including the private sector, on issues that directly affect them.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1698421656radio 3.jpg\" style=\"height:281px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through &quot;Da Rarrafe Yaro Kan Tashi,&quot; Borno&#39;s children have a voice &ndash; a platform where they can share their experiences, concerns, and aspirations. The program serves as more than just a radio show; it is a catalyst for meaningful dialogue and action, empowering children to actively participate in shaping their futures.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1707901737WhatsApp Image 2024-02-14 at 10.08.05_b2d0d75e.jpg\" style=\"height:329px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Humanitarian and development actors utilize this platform to sensitize Borno&#39;s children about various interventions targeted at improving their well-being and that of their caregivers. From health and education to protection and psychosocial support, &quot;Da Rarrafe Yaro Kan Tashi&quot; bridges the gap between stakeholders and the communities they serve, fostering understanding, trust, and collaboration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lafiyarmu Jarinmu: Promoting Public Health and Hygiene</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In addition to &quot;Da Rarrafe Yaro Kan Tashi,&quot; GOALPrime spearheads another impactful radio program titled &quot;Lafiyarmu Jarinmu.&quot; This engaging and informative weekly program is dedicated to promoting discussions on public health and hygiene, addressing critical issues that impact the well-being of communities in Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1707901999WhatsApp Image 2024-02-14 at 10.12.35_f7435fb7.jpg\" style=\"height:332px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Broadcasted on Al-Ansar Radio 96.1FM every Friday from 4 PM to 5 PM, &quot;Lafiyarmu Jarinmu&quot; serves as a vital platform for raising awareness about health-related topics, disseminating life-saving information, and encouraging behavior change.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1707902105WhatsApp Image 2024-02-14 at 10.14.34_c7f821cb.jpg\" style=\"height:327px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through insightful discussions, expert interviews, and interactive segments, &quot;Lafiyarmu Jarinmu&quot; tackles a wide range of health issues, including sanitation practices, disease prevention, maternal and child health, and access to healthcare services. By addressing these topics in a relatable and accessible manner, the program empowers listeners to make informed decisions about their health and well-being.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Impact of Radio: Empowering Communities, Transforming Lives</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The success of GOALPrime&#39;s radio initiatives underscores the profound impact of using radio as a medium for community engagement and empowerment. By amplifying voices, fostering dialogue, and disseminating vital information, these programs have become catalysts for positive change in Borno State and beyond.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As GOALPrime continues to harness the power of radio to drive social transformation, we remain committed to creating inclusive platforms where communities can come together, share their stories, and work towards a brighter, healthier future for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through &quot;Da Rarrafe Yaro Kan Tashi&quot; and &quot;Lafiyarmu Jarinmu,&quot; GOALPrime reaffirms its dedication to empowering communities, strengthening resilience, and building a more equitable and prosperous society for generations to come. Together, let us continue to amplify voices and spread knowledge, one radio program at a time.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible.</p>', 'uploads/1707902166WhatsApp Image 2024-02-14 at 10.12.59_44deb4f1.jpg', '2024-02-14 09:16:06', '2024-02-14 09:16:06'),
(33, 'Promoting Hygiene: More Rounds of Sensitization Meetings in BAY States Schools', 'promoting-hygiene-more-rounds-of-sensitization-meetings-in-bay-states-schools', 'GPON Admin', '<p>We are thrilled to share the latest update from our ongoing efforts to promote proper hygiene practices and foster a clean environment in schools across the BAY States. Recently, we conducted another round of sensitization meetings with members of the Hygiene and Health Promoter Club, reaffirming our commitment to nurturing a generation of hygiene advocates.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These meetings were held in schools in Rann, Madagali, Pulka, and Gujba Local Government Areas (LGAs). The primary objective of these gatherings was to equip club members with the knowledge and skills needed to champion hygiene initiatives within their schools and communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Hygiene and Health Promoter Club members serve as crucial agents of change, trained to educate their peers on the importance of proper hygiene practices. Through interactive sessions and engaging activities, club members were empowered to raise awareness about essential hygiene habits and their impact on overall health and well-being.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1713536877421035981_1565947907490812_7158761450409501368_n (1).jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Key areas of focus during the sensitization meetings included Proper Handwashing, Personal Hygiene, and Sanitation Practices, highlighting the importance of proper waste disposal and discouraging open defecation to prevent environmental pollution and the transmission of diseases.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By instilling these fundamental hygiene principles in club members, we aim to create a ripple effect of positive behavior change within schools and communities. Through peer-to-peer education and advocacy, we believe these young leaders will inspire their peers to adopt healthier habits and contribute to creating cleaner, safer environments for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we continue our journey towards promoting hygiene and health in the BAY States, we remain grateful for the dedication and enthusiasm of our Hygiene and Health Promoter Club members.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are striving towards a brighter, healthier future for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1713537129420996352_229698856876469_3017025431186539383_n.jpg', '2024-04-19 14:32:09', '2024-04-19 15:26:44'),
(34, 'Wrapping Up Season 3 of Da Rarrafe: A Celebration of Children\'s Voices', 'wrapping-up-season-3-of-da-rarrafe-a-celebration-of-childrens-voices', 'GPON Admin', '<p>Over the weekend, we bid farewell to another successful season of Da Rarrafe, our child-led live radio program dedicated to amplifying the voices of children in Northern Eastern Nigeria. With 20 weeks of engaging discussions, insightful conversations, and meaningful interactions, season 3 came to a close, leaving behind a legacy of empowerment and advocacy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>From its inception, Da Rarrafe has been a beacon of hope and a platform for children to express their thoughts, concerns, and aspirations. In collaboration with UNICEF Nigeria and support from KFW.DE, we embarked on this journey to give children a voice and a platform to discuss issues that affect them directly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Throughout the season, our star anchors, aged 10-15 years, captivated audiences with their eloquence, passion, and unwavering commitment to making a difference. From discussing education and healthcare to child protection and rights.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1713538598WhatsApp Image 2024-04-19 at 15.45.50_8566b154.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we rounded off the season, we had the honor of visiting the Borno state Children&#39;s parliament, where our star anchors engaged in discussions on the Child Act Law and other legislative functions. It was a remarkable opportunity for them to interact with policymakers and advocate for the rights of children at the highest level.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1713539515WhatsApp Image 2024-04-19 at 15.45.51_77fce892.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Additionally, we visited IDP camps in the state, bringing gifts and prizes won from activities conducted with the children there. These visits not only brought joy and excitement to the children but also served as a reminder of the resilience and strength of the human spirit in the face of adversity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we reflect on the success of season 3, we are filled with gratitude for everyone who made it possible &ndash; from our partners and sponsors to our dedicated team&nbsp;and, most importantly, the children themselves. Their voices have the power to inspire change, and we are committed to continuing our mission of empowering them to shape a brighter future for themselves and their communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we look ahead to future seasons of Da Rarrafe, we remain steadfast in our belief that every child deserves to be heard, respected, and empowered. Together, we can create a world where children&#39;s voices are not only heard but also valued and acted upon.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank you for joining us on this incredible journey. Until next time, let&#39;s continue to amplify the voices of children and work towards a future where every child can thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;A better humanity is possible</p>', 'uploads/1713540377WhatsApp Image 2024-04-19 at 15.45.48_dd15e319.jpg', '2024-04-19 15:26:17', '2024-04-19 15:26:17'),
(35, 'Transforming Healthcare in Abia State: A Journey of Assessment and Action', 'transforming-healthcare-in-abia-state-a-journey-of-assessment-and-action', 'GPON Admin', '<p>Our Country Director, Dr. Christopher Chinedumuije, alongside the CEO of the Abia State Hospital Management Board, and their dedicated team recently embarked on a monumental journey. Over 8 intense days, they toured all 17 Local Government Areas of Abia State, diving deep into the heart of the health sector. This initiative aimed to gain a firsthand look at the state of secondary healthcare facilities across Abia State.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As an organization, we are thrilled to partner with the Abia State Hospitals Management Board to roll out two critical initiatives that promise to revolutionize healthcare delivery in the region.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our first initiative is a comprehensive Health &amp; Facilities Needs Overview. This in-depth assessment will help us pinpoint exactly what each healthcare facility requires to thrive. By understanding each location&#39;s unique needs and challenges, we can tailor our support to ensure maximum impact and efficiency.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1716894297438099403_7437612349687952_3987523238766585076_n.jpg\" style=\"height:511px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>But we&#39;re not stopping there. We are also crafting the Abia State Secondary Healthcare Response Plan&mdash;a strategic roadmap for action. Our goal is ambitious yet achievable: to revamp healthcare in Abia State and set a new standard for healthcare delivery nationwide. This plan will outline specific steps and strategies to enhance healthcare services, infrastructure, and accessibility for all residents.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In addition to these initiatives, we kicked off a Service Delivery Strengthening and Consultation Workshop. This event brought together key stakeholders, including Abia HMB Directors, General &amp; Cottage Hospitals Medical Directors, and Chief Nurses from all 22 Secondary Healthcare facilities. The workshop served as a platform for collaboration and strategic planning, fostering a unified approach to healthcare improvement across the state.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1716893952441175962_1202091571203880_7183811594521095066_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This journey marks the beginning of a transformative era for healthcare in Abia State. By combining our efforts with the expertise and dedication of the Abia State Hospital Management Board, we are confident in our ability to make lasting, positive changes. Together, we are addressing current healthcare challenges and laying the foundation for a healthier, more resilient future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1716894455441428689_1854370238359399_7330595203811106128_n.jpg', '2024-05-28 11:07:35', '2024-05-28 11:07:35'),
(36, 'Ensuring Continuous Education for Conflict-Affected Children in the BAY States', 'ensuring-continuous-education-for-conflict-affected-children-in-the-bay-states', 'GPON Admin', '<p>In our effort to ensure the continuous provision of protective, inclusive, and quality education for conflict-affected children across the BAY states (Borno, Adamawa, and Yobe), we have taken significant strides to adapt and innovate in the face of adversity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At the heart of our initiatives is the commitment to engaging learners in Non-Formal Education (NFE) and alternative learning modes. In Gujba LGA of Yobe State, we provide educational opportunities tailored to meet the needs of children displaced or otherwise affected by conflict. These programs are designed to offer flexibility and support, ensuring that every child has the chance to learn and grow, regardless of their circumstances.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1716894768441442679_1126861255305105_8087722142476010593_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is the right of every child, and it cannot wait, irrespective of the circumstances a child finds themselves in. This principle guides our efforts across the BAY states, where the need for education is more pressing than ever. Conflict and instability have disrupted traditional schooling, but we are committed to ensuring that learning does not halt. By providing alternative learning modes, we are working to bridge the educational gap for out-of-school learners.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In Borno, Adamawa, and Yobe states, this initiative has reached children who would otherwise be deprived of their right to education. These alternative learning modes are designed to provide a quality education that can adapt to the changing needs of our learners.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1716894963435976308_784544246973185_3185383122826780500_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our mission to provide continuous, protective, and inclusive education for conflict-affected children in the BAY states is unwavering. Every child deserves the chance to learn and thrive, no matter the challenges they face. By embracing innovative and flexible educational solutions, we are ensuring that education remains a beacon of hope and a pathway to a brighter future for all children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education cannot wait, and neither can we. We are dedicated to making sure that every child in Borno, Adamawa, and Yobe states has access to the education they deserve, no matter what.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1716895041436586668_448629341185855_9211856170370043374_n.jpg', '2024-05-28 11:17:21', '2024-05-28 11:17:21'),
(37, 'NIGERIA DEMOCRACY DAY 2024 STATEMENT!', 'nigeria-democracy-day-2024-statement', 'GPON Admin', '<p>Good day esteemed Nigerians,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Today, we mark a significant milestone in our nation&#39;s history&mdash;Nigeria Democracy Day. As the Country Director of GOALPrime Organization Nigeria, it is my honor to share this moment with you, reflecting on our collective journey and reaffirming our commitment to the democratic principles that guide us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Democracy is more than just a system of governance; it embodies hope, equality, and a steadfast commitment to freedom, justice, and human dignity. At GOALPrime Organization Nigeria, we are deeply devoted to these ideals. Our extensive work across various sectors demonstrates our dedication to enhancing governance outcomes and fostering sustainable development in our beloved country.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our interventions encompass critical areas such as Child Protection, Education-in-Emergencies, Socio-economic Reintegration, WASH-in-Emergencies, Nutrition, Primary Healthcare Services, Peacebuilding, and Social-enterprise for development programs. Through our efforts in the Northeast, Northwest, and Northcentral regions, we strive to create positive and lasting impacts on the lives of the most vulnerable populations. Through our programs, we have reached over 5,000,000 Nigerians with direct and indirect services across the locations where we implement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In Child Protection, we ensure that every child is safe, nurtured, and given the opportunity to thrive. Our Education-in-Emergencies programs provide crucial support to ensure that learning continues even in the most challenging circumstances. We work tirelessly on Socio-economic Reintegration to empower individuals and communities to rebuild their lives and achieve self-sufficiency. Our WASH-in-Emergencies initiatives ensure access to clean water and sanitation, fundamental to human health and dignity. Nutrition and Primary Healthcare services are cornerstones of our efforts to enhance the well-being of communities, while our Peacebuilding and Social-enterprise programs foster resilience and economic opportunities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GOALPrime Organization Nigeria, we believe that democracy flourishes when inclusivity and accountability are upheld. This is why we operate an inclusive management system, ensuring all voices are heard and maintaining accountability to the affected populations we serve. From needs assessments to solution design, implementation, and monitoring, we prioritize community engagement and feedback at every stage of our interventions. This approach strengthens our impact and reinforces our commitment to democratic values.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are resolute in our commitment to supporting the current government&rsquo;s efforts. By providing technical support to both the Federal and State governments, we aim to help them fulfill their mandates for the people. Our collaborative efforts with development and private sector partners are geared towards creating a more just, equitable, and prosperous Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On this Democracy Day, I call on all Nigerians to join us in being intentional about supporting healthy government initiatives. It is our collective responsibility to ensure that our leaders are held accountable through peaceful and constructive means. By doing so, we contribute to the strengthening of our democracy and the realization of its full potential.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In closing, I extend my heartfelt congratulations to all Nigerians on this 2024 Nigeria Democracy Day commemoration. Let us celebrate our progress, acknowledge our challenges, and commit to working together towards a brighter, more democratic future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank you, and may God bless Nigeria.</p>\r\n\r\n<p><br />\r\nA Better Humanity is Possible!</p>\r\n\r\n<p>Christopher Chinedumuije (PhD, FBU), &nbsp;<br />\r\nCEO/Country Director, &nbsp;<br />\r\nGOALPrime Organization&nbsp;Nigeria.</p>', 'uploads/1718185670WhatsApp Image 2024-06-12 at 07.47.06_81e8fe8f.jpg', '2024-06-12 09:47:50', '2024-06-12 09:47:50'),
(38, 'Bringing Quality Education to Mafa: A Step Towards a Brighter Future', 'bringing-quality-education-to-mafa-a-step-towards-a-brighter-future', 'GPON Admin', '<p>As part of our ongoing efforts to improve access to quality education in underserved communities, we recently had the opportunity to distribute Scholastic materials in Mafa LGA of Borno State. This initiative is part of the ECW MYRP Year 3 program and was carried out through our valuable partnership with Streetchilduk, Educannotwait, and NRC Norway.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is a powerful tool for change. It equips individuals with the knowledge and skills necessary to navigate life and fosters critical thinking, creativity, and empathy. Access to quality educational materials is a significant challenge in many underserved communities. By distributing Scholastic materials in Mafa, we aim to bridge this gap and provide students with the necessary resources to succeed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our efforts in Mafa are a testament to the power of collaboration. Working with support from &nbsp;Street Child UK, Education Cannot Wait, and the Norwegian Refugee Council, we are making strides towards sustainable education for all. These partnerships are crucial in amplifying our impact and ensuring that educational initiatives are not just one-time events but part of a larger, ongoing effort to build resilient educational systems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1718923708442992903_1648378645907272_813097568462140778_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let&#39;s continue to support #EducationForAll and work towards a #BrighterFuture through the #ECW and #GPON initiatives. Your support and involvement are crucial in making these educational dreams come true. Together, we can ensure that every child has the opportunity to learn, grow, and thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>How You Can Help</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Spread the Word: Share our mission and the importance of education on social media.</p>\r\n\r\n<p>-Get Involved: Volunteer or partner with us to help distribute educational materials.</p>\r\n\r\n<p>-Donate: Contribute to our initiatives to ensure continuous support for educational programs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is the cornerstone of a better tomorrow. By empowering the next generation with knowledge and resources, we are investing in a future where everyone has the opportunity to succeed. Thank you for being a part of this journey towards educational equity and excellence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let&#39;s make a difference together.</p>', 'uploads/1718923745442993425_1122180688998098_468459283693010606_n.jpg', '2024-06-20 22:49:05', '2024-06-20 22:49:05'),
(39, 'Mobilizing Communities for a Cleaner Future: Our Sanitation Parade in the BAY States', 'mobilizing-communities-for-a-cleaner-future-our-sanitation-parade-in-the-bay-states', 'GPON Admin', '<p>In our ongoing mission to promote health and hygiene across the BAY states, we conducted a series of impactful sanitation parades. These events were not just about cleaning up; they were about engaging and mobilizing communities to take charge of their own environments and health practices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our sanitation parades took place in various communities across the BAY states, where we witnessed an incredible display of community spirit and cooperation. People of all ages came together, united by the common goal of creating a cleaner and healthier living environment. The enthusiasm was palpable, and the results were immediate.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of the key elements of our sanitation parades was the active participation of community members. We didn&rsquo;t just organize the events; we involved residents in every step of the process. From planning to execution, the community&#39;s involvement ensured that these sanitation exercises were tailored to their specific needs and challenges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1718924109445767945_334745136306678_4349141517978256489_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Volunteers from each community took on leadership roles, helping to coordinate efforts and inspire their neighbors to join in. This grassroots approach not only ensured a high level of participation but also fostered a sense of ownership and responsibility among community members.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Beyond the immediate goal of cleaning up public spaces, our sanitation parades served as a platform for raising awareness about proper health and hygiene practices. Through hands-on participation, community members learned about the importance of maintaining clean surroundings and how it directly impacts their health.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We also conducted awareness campaigns alongside the sanitation exercises. These campaigns included educational sessions on topics such as:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Proper waste disposal techniques</p>\r\n\r\n<p>- The importance of regular handwashing</p>\r\n\r\n<p>- Preventing the spread of diseases through cleanliness</p>\r\n\r\n<p>- Environmental conservation practices</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We believe that when communities are empowered to take charge of their own environments, the results can be transformative. Our sanitation parades have shown that with the right support and engagement, people are ready and willing to make a difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we can build a cleaner, healthier future for all.</p>', 'uploads/1718924149445985044_427583383492314_2166811607522079176_n.jpg', '2024-06-20 22:55:49', '2024-06-20 22:55:49'),
(40, 'Positioning for better implementation - Our Commitment to Resilience', 'positioning-for-better-implementation-our-commitment-to-resilience', 'GPON Admin', '<p>We are thrilled to share that our Country Director, Dr. Christopher Chinedumuije, recently participated in a pivotal Multi-Year Resilience Programme (MYRP II) proposal development consultation meeting held at the United Nations House in Abuja. This high-level meeting brought together key stakeholders, including representatives from Education Cannot Wait partner agencies and the Honorable Commissioners for Education and Human Capital Development of the BAY States, to address the pressing issue of maintaining quality education in conflict zones, particularly in Northeast Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The consultation was a critical platform for discussing innovative and effective strategies to ensure that education continues despite the numerous challenges posed by ongoing conflicts. The dialogue centered around creating resilient education systems that can withstand and adapt to the adverse conditions experienced in conflict-affected regions. This collaborative effort underscores the importance of partnerships and collective action in tackling the educational disruptions caused by conflict.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1718924861441437737_1158067405379207_8813550071733875145_n.jpg	\" style=\"height:449px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our Country Director emphasized the need for continuous support and innovative solutions to reach children and young people whose education has been disrupted by conflict. By working closely with local and international partners, we aim to create a safe and conducive learning environment for all learners.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is a fundamental right and a powerful tool for building resilience and hope among young people in conflict zones. Through initiatives like the MYRP II, we are working to ensure that no child is left behind. By providing access to quality education, we can empower learners, support communities, and contribute to long-term peace and development.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1718925428440858901_767414248715600_7528248292102087324_n.jpg', '2024-06-20 23:17:08', '2024-06-20 23:17:08'),
(41, 'Empowering Parents: Positive Parenting Sessions in Madgali and Pulka', 'empowering-parents-positive-parenting-sessions-in-madgali-and-pulka', 'GPON Admin', '<p>At GOALPrime Organization Nigeria, we are committed to supporting families in some of the most challenging environments. We held periodic positive parenting sessions in Madgali LGA, Adamawa State, and Pulka LGA, Borno State. These sessions are part of our ongoing efforts to empower parents with the knowledge and skills they need to create nurturing environments for their children, even in&nbsp;adversity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The importance of positive parenting cannot be overstated, especially in regions affected by conflict and instability. In such environments, formal education systems often face disruptions, and parents must become educators and emotional anchors for their children. Our sessions are designed to equip parents with the tools they need to support their children&rsquo;s development and well-being.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719407473445985142_842799494547229_2858525849857817278_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Key Focus Areas of the Sessions were on:</p>\r\n\r\n<p>Educational Support in Challenging Times</p>\r\n\r\n<p>Non-Violent Discipline Techniques</p>\r\n\r\n<p>Emotional Support Strategies</p>\r\n\r\n<p>Stress Management Tools</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we continue these positive parenting sessions, we remain committed to adapting our approach based on feedback from participants and the evolving needs of the communities we serve. Our goal is to reach even more parents, providing them with the tools to foster resilience and hope in their children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By empowering parents with knowledge and skills, we are not only improving individual family dynamics but also contributing to the broader goal of building stronger, more supportive communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1719407662444500955_766647461949103_8855728179734606611_n.jpg', '2024-06-26 13:14:22', '2024-06-26 13:14:22'),
(42, 'Empowering Communities: Awareness Sessions on PSEA, VAC, and GBV', 'empowering-communities-awareness-sessions-on-psea-vac-and-gbv', 'GPON Admin', '<p>At GOALPrime Organization Nigeria, we are dedicated to creating safe and supportive environments for all individuals, especially the most vulnerable. Recently, we conducted a series of crucial awareness sessions focusing on the prevention, response, and reporting of incidents related to Protection from Sexual Exploitation and Abuse (PSEA), Violence Against Children (VAC), and Gender-Based Violence (GBV). These sessions were held in communities within Pulka LGA of Borno State and Gubja LGA in Yobe State, reaching out to educate and empower community members.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Awareness is the first step towards change. By educating communities about PSEA, VAC, and GBV, we aim to equip individuals with the knowledge and tools needed to identify and report these harmful activities. Understanding the signs and knowing the appropriate actions to take can significantly reduce the occurrence of these abuses and protect the most vulnerable.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719409140445622345_1413649125959795_9167520961236687245_n.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The sessions in Pulka and Gubja were well-received, with active participation from community members. Through interactive discussions, role-playing activities, and open forums, participants were encouraged to share their experiences and ask questions. This interactive approach helped to foster a deeper understanding and commitment to preventing these forms of violence and abuse.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One participant from Pulka shared, &ldquo;These sessions have opened our eyes to the importance of protecting our children and women. We now know how to recognize and report abuse, and we feel more empowered to take action.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are committed to continuing our efforts in educating and empowering communities across Nigeria. Our goal is to create a network of informed individuals who can act as advocates for PSEA, VAC, and GBV prevention in their communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1719409286444500952_374392632291643_3585670595775625823_n.jpg', '2024-06-26 13:41:26', '2024-06-26 13:41:26');
INSERT INTO `newsarticles` (`id`, `title`, `slug`, `postby`, `description`, `imagefile`, `created_at`, `updated_at`) VALUES
(43, 'Promoting Inclusive Education: Creating Disability-Friendly Spaces in Schools', 'promoting-inclusive-education-creating-disability-friendly-spaces-in-schools', 'GPON Admin', '<p>As an Organization, we are committed to ensuring every child has access to quality education in a safe and inclusive setting. To further support children with disabilities. Through the support from Education Cannot Wait (ECW), and UNICEF Nigeria, we have recently launched a major initiative to retrofit Temporary Learning Spaces (TLS) in Pulka, Kala-Balge, and Madagali Local Government Areas (LGAs) of the BAY States (Borno, Adamawa, and Yobe).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Children with disabilities often face unique challenges that can hinder their ability to access quality education now. These challenges range from physical barriers to a lack of tailored educational support. Recognizing these obstacles, our team has worked diligently to transform TLS into disability-friendly spaces that cater to the specific needs of these children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The retrofitting of these TLS in Pulka, Kala-Balge, and Madagali has already begun to show positive outcomes. Parents and caregivers have expressed their gratitude for the improved facilities, noting that their children now feel more comfortable and motivated to attend school. Educators report a more inclusive and harmonious classroom atmosphere, where children of all abilities can thrive together.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719410236447945213_1131141208141364_8475274720641438399_n.jpg	\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This initiative is just the beginning of our commitment to fostering inclusive education for all children. We are dedicated to expanding these efforts and ensuring that every child, regardless of their abilities, has the opportunity to reach their full potential. By creating disability-friendly spaces and promoting inclusive education, we aim to build a more equitable and supportive educational system for the future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We invite you to support our efforts in creating inclusive educational environments for children with disabilities. Whether through donations, volunteering, or advocacy, your involvement can make a significant difference in the lives of these children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we can create a world where every child has the opportunity to learn, grow, and succeed.</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1719410331447744606_3783358455257721_1134750790759067934_n.jpg', '2024-06-26 13:58:51', '2024-06-26 13:58:51'),
(44, 'Promoting Hygiene and Health in Madagali: Distribution of Oral and Menstrual Hygiene Kits', 'promoting-hygiene-and-health-in-madagali-distribution-of-oral-and-menstrual-hygiene-kits', 'GPON Admin', '<p>We believe that proper hygiene is fundamental to the health and well-being of every individual, especially young learners. We conducted a successful distribution of oral hygiene kits and menstrual hygiene kits in Madagali LGA, Adamawa State. This initiative is part of our ongoing efforts to promote good hygiene practices among students and to ensure that they have the necessary tools to maintain their health.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hygiene education is crucial, particularly in regions where access to hygiene products and knowledge about their use may be limited. Poor hygiene can lead to a range of health issues, including dental problems, infections, and other illnesses. By providing these essential hygiene kits, we aim to empower learners with the knowledge and resources they need to take care of their health.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719413691448187083_477456594782923_809923627604257334_n.jpg	\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Before distributing the kits, we conducted sensitization sessions to educate the beneficiaries on how to use them effectively. These sessions covered conversations on&nbsp;Oral Hygiene and Menstrual Hygiene.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The distribution of these hygiene kits is expected to have a significant positive impact on the learners. With proper oral hygiene kits, students can prevent dental problems, which are often a barrier to attending school regularly. Similarly, menstrual hygiene kits will help female students manage their periods more comfortably and confidently, reducing absenteeism and promoting a better learning environment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719413721448108649_766552488973015_7956371853698896911_n.jpg	\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This initiative is just one of the many steps we are taking to improve the health and education of young learners in Madagali and beyond. By promoting good hygiene practices, we are not only enhancing the immediate well-being of these students but also laying the foundation for healthier futures.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We extend our heartfelt thanks to our partners and supporters who have made this distribution possible. Together, we can continue to make a meaningful difference in the lives of these young learners.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1719413937448107545_990615439240475_3167793985745204609_n.jpg', '2024-06-26 14:58:57', '2024-06-26 14:58:57'),
(45, 'Promoting Inclusive Education for Conflict-Affected Children', 'promoting-inclusive-education-for-conflict-affected-children', 'GPON Admin', '<p>In addition to the physical modifications, we recognize the importance of providing the necessary tools to support the learning of children with disabilities. To this end, we distributed various assistive devices to vulnerable learners.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In our&nbsp;dedication to creating inclusive and quality learning environments for all children, particularly those affected by conflict. Recently, we made significant strides toward this goal by retrofitting our Learning Spaces to include provisions for disability-friendly access and providing assistive devices to vulnerable learners with disabilities. These initiatives aim to ensure that every child, regardless of their physical abilities, has the opportunity to learn in a safe and enabling environment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.goalprime.org/uploads/1719581724447898908_379319758448627_7737579310117619519_n.jpg	\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>One of the major challenges faced by children with disabilities in conflict-affected areas is the lack of accessible learning environments. Our retrofitted Learning Spaces are designed to address this challenge head-on. These spaces include&nbsp;Disability-Friendly Access, and&nbsp;Safe and Enabling Environment.&nbsp;By incorporating these features, we are not only enhancing the physical accessibility of our learning environments but also promoting a culture of inclusivity and respect for diversity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The impact of these initiatives has been profound. Children who previously struggled to access education due to physical barriers or lack of appropriate support can now engage fully in their learning. One of our beneficiary&#39;s parent,&nbsp;a child with a mobility impairment, shared his excitement, and gratitude for this initiative.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our commitment to inclusive education is ongoing. We will continue to evaluate and improve our learning environments to ensure they meet the needs of all children, particularly those affected by conflict. By promoting inclusive and quality education, we are helping to build a more equitable future for all children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible</p>', 'uploads/1719581985447900754_2103134560051167_7123059143212628630_n.jpg', '2024-06-28 13:39:45', '2024-06-28 13:39:45'),
(46, 'Empowering Futures: GOALPrime’s Vocational Startup Kits in Mafa LGA', 'empowering-futures-goalprimes-vocational-startup-kits-in-mafa-lga', 'goalprime', '<p>In a world where everyone deserves a chance to shine, GOALPrime is making a significant impact in Mafa LGA, Borno.&nbsp; Teaming up with Street Child and the Norwegian Refugee Council (NRC), they&rsquo;ve handed out vocational startup kits to 237 individuals eager to build community-viable skills.After 3 months of training in skills like cap making, barbing, local pasta making, and more, these young people are ready to launch their own businesses and contribute to their community&rsquo;s growth. This initiative, part of the ECW MYRP Year 3 Partnership, is a major step toward sustainable livelihoods and economic independence in conflict-affected areas.Let&rsquo;s dive into how this collaboration is transforming lives.</p>\r\n\r\n<h2>Bringing Hope to Mafa LGA</h2>\r\n\r\n<p>Mafa LGA has faced numerous challenges, but hope is flickering brighter thanks to initiatives like GOALPrime. This project doesn&rsquo;t just hand out kits; it opens doors for people seeking opportunities. Imagine being able to support your family or start your own business with the right tools at your fingertips. That&rsquo;s the power of these kits.</p>\r\n\r\n<h2>What&rsquo;s Inside the Kits?</h2>\r\n\r\n<p>The vocational startup kits include essential tools and materials that cater to various trades. Whether it&#39;s tailoring, carpentry, or hairdressing, each kit is designed to jumpstart a career. Instead of feeling stuck, recipients now have the means to learn and earn. Think of it as planting seeds in a garden; give them the right soil, and they&#39;ll grow into strong, fruitful plants.</p>\r\n\r\n<h2>Skills for a Brighter Future</h2>\r\n\r\n<p>Learning a trade can change the trajectory of someone&rsquo;s life. These kits aren&rsquo;t just items; they represent skills that bring financial independence. Recipients can learn new tasks that match their interests and talents, which makes work feel less like a chore and more like a passion. Isn&#39;t it amazing how one small change in resources can lead to big changes in lives?</p>\r\n\r\n<h2>Community Impact</h2>\r\n\r\n<p>As these individuals begin their journeys, the entire community stands to benefit. More skilled workers in Mafa LGA means more businesses thriving, which can lead to job creation and economic stability. When one person succeeds, it ignites a spark in others. It&rsquo;s like a chain reaction of positivity &ndash; one that can change the face of a community.</p>\r\n\r\n<h2>Collaboration at Its Best</h2>\r\n\r\n<p>The partnership between GOALPrime, Street Child, and NRC showcases the power of collaboration. Each organization brings unique strengths to the table, making the initiative more effective. By working together, they can reach more people and create a more significant impact. It&rsquo;s a reminder that together, we can achieve more than we ever could alone.</p>\r\n\r\n<h2>The Road Ahead</h2>\r\n\r\n<p>The journey doesn&rsquo;t stop here. With continued support, these beneficiaries can rise even higher. Follow-up training and mentorship can ensure that these skills translate into sustainable businesses. Mafa LGA is on the cusp of a transformation, and these startup kits are just the beginning of the wave of change.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>GOALPrime&#39;s distribution of vocational startup kits in Mafa LGA is a beacon of hope. It empowers individuals, strengthens communities, and showcases how collaboration can lead to meaningful change. As these recipients embark on their new journeys, they carry with them the dreams of a brighter, more prosperous future. So, let&rsquo;s keep the momentum going and watch as Mafa LGA blooms into a hub of innovation and resilience.</p>\r\n\r\n<p>We remain committed to a Better Humanity!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lSWBZBAQf8Y?si=DAg-Rl-WX3wbJGzr\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'uploads/1730309509empowerment_kit.png', '2024-10-30 17:13:13', '2024-10-30 18:26:44'),
(47, 'Strengthening Support: GOALPrime Organization and UNICEF Visit Modu Makaranta Primary and Secondary School.', 'strengthening-support-goalprime-organization-and-unicef-visit-modu-makaranta-primary-and-secondary-school', 'goalprime', '<p><strong>Strengthening Support: GOALPrime Organization and UNICEF Visit Modu Makaranta Primary and Secondary School.</strong></p>\r\n\r\n<p>Recent flooding in Nigeria has raised concerns about the safety and well-being of countless children. In response to this urgent situation, GOALPrime Organization, along with education officials and UNICEF representatives, took action by visiting Modu Makaranta Primary and Secondary &nbsp;School in the Custom area of Maiduguri, Borno State.. This visit aimed to assess the damage and provide necessary support to the school community.</p>\r\n\r\n<p><img alt=\"Modu Primary School\" src=\"https://www.goalprime.org/uploads/1730895121modu1.jpeg\" style=\"height:571px; width:800px\" /></p>\r\n\r\n<p><strong>Understanding the Impact of Flooding</strong></p>\r\n\r\n<p>Flooding can feel like a storm in the night, taking away security and safety from families and schools. At Modu Makaranta Primary &nbsp;and Secondary School, the impact was evident. Waterlogged classrooms and disrupted learning raise important questions: How do children feel when their learning environment is in disarray? What can be done to restore hope and normalcy?</p>\r\n\r\n<p>During the visit, officials observed not just the physical damage, but also the emotional toll on students and teachers. It was clear that these young learners needed reassurance and support to bounce back.</p>\r\n\r\n<p><strong>Assessing Needs and Challenges</strong></p>\r\n\r\n<p>With water still lingering in some areas, it became vital to evaluate what the school needed most. GOALPrime Organization and UNICEF&rsquo;s team checked for structural damage, learning materials, and basic sanitation facilities. Just like a doctor checks a patient&#39;s heartbeat, the team aimed to identify critical areas needing urgent care.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The visit wasn&rsquo;t just about looking; it was about listening. Teachers shared their struggles, while students expressed their fears. They all hoped for a safe place to learn and grow.</p>\r\n\r\n<p><img alt=\"Modu Primary School\" src=\"https://www.goalprime.org/uploads/1730961333modu4.jpeg\" style=\"height:571px; width:800px\" /></p>\r\n\r\n<p><strong>Crafting a Path Forward</strong></p>\r\n\r\n<p>After gathering insights from the visit, GOALPrime and UNICEF are working to create a plan to support Modu Makaranta Primary and Secondary School. This plan will focus on repairing damaged infrastructure and providing the supplies needed for effective learning. But that&rsquo;s not all; mental health support for children is equally important. Imagine a balloon slowly deflating; children&rsquo;s spirits can dip in tough times, but with guidance and encouragement, they can rise again.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Community Involvement: The Key Ingredient</strong></p>\r\n\r\n<p>The community plays a vital role in this recovery process. GOALPrime Organization and UNICEF are calling on local leaders, parents, and community members to help rebuild not just the school, but also the children&rsquo;s confidence. When everyone pulls together, it&rsquo;s like a team in a tug-of-war&mdash;all working for a common goal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Volunteers can assist in cleanup efforts, provide materials, or even offer their time to support students emotionally. The more support, the stronger the community becomes!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Hope on the Horizon</strong></p>\r\n\r\n<p>The joint visit by GOALPrime Organization and UNICEF to Modu Makaranta Primary and Secondary School is more than just an assessment; it&rsquo;s a commitment to restoring hope in a challenging situation. While the flood may have disrupted lives, it&rsquo;s the resilience of the community and the support of organizations that light the way forward.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, they&rsquo;re not merely fixing a school. They&rsquo;re rebuilding dreams, one child at a time. With continued support and community spirit, Modu Makaranta&rsquo;s future can shine brightly again.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better humanity is possible!</p>', 'uploads/1730962226modu1.jpeg', '2024-11-07 06:50:26', '2024-11-07 06:50:26'),
(48, 'Unveiling GPON EduTrack Nigeria Platform to Key Stakeholders In Borno State; A New Hope for Education in Borno State', 'unveiling-gpon-edutrack-nigeria-platform-to-key-stakeholders-in-borno-state-a-new-hope-for-education-in-borno-state', 'goalprime', '<p>In Borno State, a transformative meeting recently took place. GOALPrime gathered key education stakeholders to introduce the GPON EduTrack Nigeria Platform and Mobile App. This innovative solution aims to enhance transparency and improve the educational landscape. Let&rsquo;s dive into what makes this platform so significant.</p>\r\n\r\n<p>Representatives from the Ministry of Education, SUBEB, and LGEA shared crucial insights, underscoring the importance of strong communication, localized strategies, and active community participation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With capabilities like student tracking and digital data management, GPON EduTrack Nigeria is set to drive meaningful improvements in educational outcomes across the state.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Edu Tracker\" src=\"https://www.goalprime.org/uploads/1731075192edutracker2.jpg\" style=\"height:500px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>What is the GPON EduTrack Platform?</strong></p>\r\n\r\n<p>The GPON EduTrack Nigeria Platform is not just another educational tool; it&#39;s a comprehensive solution designed to monitor and improve school performance. It helps schools track learning progress, teacher attendance, and student engagement in real-time. Imagine being able to see how each student is doing right from your phone!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Importance of Transparency in Education</strong></p>\r\n\r\n<p>Transparency is crucial in education. When everyone can see what&rsquo;s happening in schools, it creates accountability. With GPON EduTrack Nigeria Platform, parents, teachers, and administrators are all on the same page. This shared knowledge helps students get the support they need. It&rsquo;s like having a map that shows where everyone is in their learning journey.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Edu Tracker \" src=\"https://www.goalprime.org/uploads/1731075249edutracker3.jpg\" style=\"height:500px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Engaging Stakeholders for Maximum Impact</strong></p>\r\n\r\n<p>During the meeting, various stakeholders from the educational sector came together. Local leaders, teachers, and education advocates shared their thoughts and ideas. This collaboration is key to the success of the GPON EduTrack Nigeria Platform. By involving everyone, the solution can be tailored to fit the unique needs of Borno State&rsquo;s education system.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>How the Mobile App Works</strong></p>\r\n\r\n<p>The GPON EduTrack Nigeria Mobile App puts everything at your fingertips. Teachers can update their class activities instantly. Parents can check their child&rsquo;s progress anytime. Cloud data backup and storage during disaster. It&rsquo;s a simple interface, making it easy for everyone to use. Whether you&rsquo;re in a classroom or at home, you can stay connected and informed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Road Ahead: Building a Brighter Future</strong></p>\r\n\r\n<p>The introduction of the GPON Edu Track Nigeria&nbsp;Platform is just the beginning. It sets the stage for greater improvements in the education sector. With ongoing training and support, teachers can fully utilize the platform. Over time, this initiative promises to foster a more engaged and informed educational community.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: A New Dawn for Education in Borno State</strong></p>\r\n\r\n<p>The introduction of the GPON EduTrack Nigeria Platform and Mobile App will offer a breath of fresh air to Borno State&#39;s education system. By emphasizing transparency and involvement from all stakeholders, the project holds great potential to create lasting change. As teachers, parents and Government work together for the betterment of their children, the future looks brighter. Borno State is on its way to transforming education, one step at a time.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A better Humanity is Possible!</p>', 'uploads/1731075789gponedutracker5.jpg', '2024-11-08 14:23:09', '2024-11-08 15:43:25'),
(49, 'BREAKING THE CYCLE OF WASTE: ADDRESSING ROOT CAUSES IN PROTRACTED EMERGENCIES - LESSONS FROM NORTHEAST NIGERIA', 'breaking-the-cycle-of-waste-addressing-root-causes-in-protracted-emergencies-lessons-from-northeast-nigeria', 'goalprime', '<p><strong>Professor Christopher Chinedumuije, PhD, FBU</strong></p>\r\n\r\n<p><strong><em>Professor of Disaster Management &amp; Humanitarian Studies</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ABSTRACT</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>&ldquo;When an emergency/conflict becomes too protracted, the greater chunk of interventions become a cycle of waste&rdquo;.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This paper explores the critical issue of protracted emergencies and their tendency to perpetuate wasteful intervention cycles when the underlying causes remain unaddressed. Northeast Nigeria, with its extended insurgency and humanitarian challenges, serves as a case study to illustrate how humanitarian aid efforts often fall into this cycle of waste. Using real-life scenarios from the region, we underscore the need for a shift in focus&mdash;away from immediate relief and toward addressing the root causes of prolonged crises. Only through this approach can humanitarian assistance create sustainable and lasting change, moving us closer to <strong>&ldquo;A Better Humanity.&rdquo;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>INTRODUCTION</strong></p>\r\n\r\n<p>In humanitarian settings, protracted crises&mdash;characterized by prolonged instability and recurring emergencies&mdash;pose unique challenges. Northeast Nigeria exemplifies this issue, where years of conflict, displacement, and poverty have led to substantial humanitarian investments without achieving sustained stability or resilience. When interventions focus solely on short-term relief, resources become trapped in cycles of dependency, ultimately failing to bring lasting improvement to affected communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Real-life scenarios from Northeast Nigeria reveal the practical implications of these repeated interventions, highlighting both the necessity of and challenges to shifting from relief-focused to root-cause-focused approaches.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>NORTHEAST NIGERIA: A CASE STUDY OF PROTRACTED CONFLICT.</strong></p>\r\n\r\n<p>Since the insurgency in Northeast Nigeria began, the region has been locked in a cycle of displacement, hunger, and deprivation. With a population reliant on humanitarian assistance for basic needs, the humanitarian footprint in the region has grown significantly. However, the long-standing nature of the crisis means that aid efforts often lack the transformative power needed to build resilience and self-sufficiency.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>REAL-LIFE SCENERIO I: RECURRENT DISPLACEMENT</strong></p>\r\n\r\n<p>Communities in towns like Baga and Gwoza have faced repeated displacements due to insurgent attacks and ongoing insecurity. Families move from one internally displaced persons (IDP) camp to another, depending on where aid is accessible, often leaving behind whatever meager assets they may have acquired. This constant disruption makes it nearly impossible for residents to establish any form of stability or long-term livelihood. Aid interventions remain limited to providing temporary shelter and food, which, while essential, offer no path to permanent resettlement or community recovery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>REAL-LIFE SCENERIO II: EDUCATION INTERRUPTED</strong></p>\r\n\r\n<p>In the face of prolonged conflict, children in the Northeast have had sporadic access to education. Schools in communities like Damasak have been targets of insurgent attacks, leading to school closures and an educational crisis. Despite efforts by humanitarian organizations to establish temporary learning spaces in IDP camps, frequent relocations and limited resources have led to interrupted education, with many children unable to acquire even basic literacy and numeracy skills. By prioritizing emergency education responses without tackling the insecurity, these interventions merely delay but do not resolve the educational challenges in the region.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CYCLES OF WASTE IN PROTRACTED EMERGENCIES</strong></p>\r\n\r\n<p>When emergencies drag on, short-term interventions often become cyclical. Recurrent distributions of food, temporary shelter setups, and transient healthcare services, though crucial, cannot replace the stability necessary for rebuilding lives. Without initiatives targeting the conflict&rsquo;s root causes, these efforts risk perpetuating a dependence on aid rather than enabling a pathway to recovery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>REAL-LIFE SCENARIO III: SEASONAL FOOD INSECURITY</strong></p>\r\n\r\n<p>In communities like Banki and Dikwa, food distributions become almost seasonal, with humanitarian agencies planning responses around predictable hunger periods. Every year, agencies distribute food parcels that address immediate hunger but fail to mitigate chronic food insecurity. Meanwhile, the local agricultural sector remains largely undeveloped due to ongoing insecurity, leaving communities with few viable means to produce their own food. This reliance on external food supplies exemplifies how humanitarian aid, though essential, becomes a repetitive cycle when underlying issues such as land access and security remain unaddressed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>REAL-LIFE SCENARIO IV: HEALTH AND DISEASE MANAGEMENT</strong></p>\r\n\r\n<p>IDP camps in Mafa, Konduga and Monguno experience frequent outbreaks of waterborne diseases, particularly cholera, due to inadequate water and sanitation facilities. Every year, humanitarian organizations deploy resources to control outbreaks, investing in treatment, water purification tablets, and hygiene promotion. However, with recurring outbreaks and little improvement in camp infrastructure, these health interventions are ultimately cyclical. Addressing the root issues&mdash;such as sustainable water systems, improved sanitation infrastructure, and increased capacity for local healthcare&mdash;would prevent disease outbreaks from becoming annual crises, thereby improving long-term health outcomes for these communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ADDRESSING ROOT CAUSES: A PATHWAY TO SUSTAINABLE IMPACT</strong></p>\r\n\r\n<p>To move beyond these cycles of dependency, humanitarian efforts must address the structural causes of protracted crises. For Northeast Nigeria, sustainable impact requires a holistic approach that targets insecurity, economic instability, limited access to services, and social cohesion.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. SECURITY AND STABILITY INITIATIVES:</strong></p>\r\n\r\n<p>Stabilizing the region is a prerequisite for sustainable recovery. Collaborative peacebuilding efforts with local authorities, community leaders, and international stakeholders are necessary to foster trust and promote peaceful coexistence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; <strong>EXAMPLE:</strong> The strengthening of and providing adequate support for community-based security models, such as civilian joint task forces, could enhance local security while creating opportunities for residents to take active roles in maintaining peace.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. ECONOMIC EMPOWERMENT AND LIVELIHOODS:</strong></p>\r\n\r\n<p>Building livelihood opportunities can reduce dependency and encourage self-sufficiency. Initiatives like skills training, access to microfinance, and the establishment of local markets empower communities to rebuild and sustain themselves.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&bull; EXAMPLE:</strong> The Borno State government, in partnership with NGOs, launched a vocational training program in Maiduguri that trains youths in trades such as tailoring, carpentry, and ICT. Trainees are supported with start-up tools and capital, creating local employment and reducing reliance on external aid.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. IMPROVED EDUCATIONAL ACCESS AND QUALITY:</strong></p>\r\n\r\n<p>Sustainable education solutions, such as distance learning programs or mobile schools, allow children to continue learning despite frequent displacement. Local teachers should be trained and equipped to teach under protracted emergency conditions, enabling education continuity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&bull; EXAMPLE: </strong>A mobile school initiative in Adamawa enables children in IDP camps to receive an education. Supported by solar-powered devices and offline learning resources, this project provides continuity and prepares students for eventual reintegration into formal schooling systems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. STRENGTHENING GOVERNANCE AND LOCAL INFRASTRUCTURE:</strong></p>\r\n\r\n<p>Engaging local governments and empowering them to manage resources effectively is critical for sustainable crisis response. Investments in local infrastructure, including roads, healthcare facilities, and water systems, promote resilience and community self-reliance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&bull; EXAMPLE:</strong> A public-private initiative in Biu focused on developing water infrastructure and expanding healthcare access, reducing disease outbreaks and improving health outcomes for the community. This localized approach builds trust in local government, helping residents see a future beyond humanitarian aid.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>THE ROLE OF HUMANITY ORGANIZATIONS: REAL-LIFE APPLICATIONS</strong></p>\r\n\r\n<p>Humanitarian organizations can support this shift by adopting approaches that emphasize local empowerment and resilience building. The transition from relief-centered aid to development-oriented support enables communities to break free from cycles of dependency.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>REAL-LIFE SCENERIO: COLLABORATIVE HUMANITARIAN-DEVELOPMENT INTERVENTIONS</strong></p>\r\n\r\n<p>In Borno State, a humanitarian consortium introduced a program integrating emergency relief with development initiatives. This program provides emergency food aid while also supporting farmers with seeds, tools, and training. Over time, many recipients transitioned from food aid dependency to self-sustaining agricultural practices, creating a model for sustainable aid that addresses immediate needs while promoting independence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ENDNOTES</strong></p>\r\n\r\n<p>Humanitarian interventions in protracted crises like Northeast Nigeria&rsquo;s must evolve to break the cycles of dependency that short-term relief perpetuates. Real-life scenarios from the region illustrate the limitations of repetitive aid and underscore the urgency of addressing root causes to enable sustainable, resilient communities. By focusing on security, economic development, education, and local governance, we can foster environments where communities become self-reliant and empowered.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Humanitarian organizations, governments, and stakeholders must ask themselves if their efforts reinforce dependency or foster resilience. Shifting toward root-cause-driven interventions can bring us closer to a world where aid catalyzes stability, growth, and <em><strong>&ldquo;A Better Humanity.&rdquo;</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Better Humanity is Possible!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Professor Christopher Chinedumuije, PhD, FBU</strong></p>\r\n\r\n<p><em>Professor of Disaster Management &amp; Humanitarian Studies.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"waste\" src=\"https://www.goalprime.org/uploads/1731586347building1.jpg\" style=\"height:400px; width:531px\" /></p>', 'uploads/1731586798building1.jpg', '2024-11-14 12:19:58', '2024-11-14 12:19:58'),
(50, 'GOALPrime\'s WASH Initiative Combats Cholera in Ngala Reception Center, Nigeria', 'goalprimes-wash-initiative-combats-cholera-in-ngala-reception-center-nigeria', 'goalprime', '<p><img alt=\"GOALPrime\'s WASH Initiative\" src=\"https://www.goalprime.org/uploads/1731635047cholera2.jpeg\" style=\"height:571px; width:800px\" /></p>\r\n\r\n<h1>GOALPrime&#39;s WASH Initiative Combats Cholera in Ngala Reception Center, Nigeria</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A cholera outbreak can be devastating, especially in places with limited access to clean water and proper sanitation. The Ngala Reception Center in Nigeria has faced serious health challenges due to the cholera threat. GOALPrime Organization Nigeria has launched a robust Water, Sanitation, and Hygiene (WASH) initiative to not only combat the disease but also improve the overall health of individuals living in and around the center.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Understanding the Cholera Threat in Ngala</h2>\r\n\r\n<h3>Prevalence of Waterborne Diseases in the Region</h3>\r\n\r\n<p>Cholera is just one of many waterborne diseases affecting Ngala. Poor quality drinking water results in numerous health problems, especially for children and elderly populations. Access to safe water is an urgent concern, with many families relying on contaminated sources.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Sanitation Challenges and Their Impact on Public Health</h3>\r\n\r\n<p>Sanitation in Ngala is a critical challenge. Overcrowded living conditions worsen the spread of diseases like cholera. Many households lack proper sanitation facilities, highlighting the need for immediate and effective solutions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Vulnerable Populations Most at Risk</h3>\r\n\r\n<p>Certain groups are more susceptible to the effects of cholera. The following populations are particularly vulnerable:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Children under five</li>\r\n	<li>Pregnant women</li>\r\n	<li>The elderly</li>\r\n	<li>Individuals with compromised immune systems</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>GOALPrime&#39;s Multi-pronged WASH Strategy</h2>\r\n\r\n<h3>Improved Water Access: Providing Safe and Clean Water</h3>\r\n\r\n<p>Construction of New Water Points and Infrastructure</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime has focused on building new water points to provide communities with reliable access to clean water. These points are strategically located to benefit the most at-risk groups.</p>\r\n\r\n<p>Water Treatment and Purification Methods Implemented</p>\r\n\r\n<p>To ensure water safety, various purification and treatment methods are in place, including:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Chlorination</li>\r\n	<li>Filtration systems</li>\r\n	<li>Regular water quality testing</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Enhanced Sanitation Facilities: Addressing Waste Management</h3>\r\n\r\n<p>Construction of Improved Latrines and Sanitation Systems</p>\r\n\r\n<p>Investments in improved latrine facilities have significantly boosted sanitation levels. This includes building new toilets that meet safety standards and cater to communal needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hygiene Promotion and Waste Disposal Education</p>\r\n\r\n<p>Education plays a crucial role in waste management. GOALPrime has organized workshops to teach proper waste disposal practices, encouraging communities to participate actively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Hygiene Promotion and Community Engagement</h2>\r\n\r\n<h3>Hygiene Education Programs: Empowering Communities</h3>\r\n\r\n<p>Training Programs for Hygiene Promoters</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime has established training programs for local hygiene promoters. These individuals help spread awareness about hygiene practices in their communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Community Awareness Campaigns and Educational Materials</p>\r\n\r\n<p>Informative campaigns are being launched to raise awareness about hygiene. Pamphlets, posters, and community meetings serve as tools to educate residents on best practices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Behavioral Change Communication: Fostering Long-Term Hygiene Practices</h3>\r\n\r\n<p>Working with Community Leaders to Promote Hygiene</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Engaging community leaders ensures that hygiene messaging is effective. Local influencers help drive home important hygiene habits.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Utilizing Local Languages and Cultural Sensitivity</p>\r\n\r\n<p>To create a lasting impact, all programs are delivered in local languages and consider cultural practices. This sensitivity enhances community acceptance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Measuring the Impact: Evaluating Success and Sustainability</h2>\r\n\r\n<h3>Monitoring Key Indicators: Tracking Progress and Outcomes</h3>\r\n\r\n<p>Data Collection Methods and Reporting Mechanisms</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Monitoring is crucial for assessing the effectiveness of the WASH initiative. Regular data collection helps in understanding progress and identifying areas needing improvement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Evaluating the Effectiveness of Implemented Strategies</p>\r\n\r\n<p>By evaluating key indicators, such as the reduction in cholera cases and improvement in sanitation access, GOALPrime can adjust strategies for maximum impact.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Ensuring Long-Term Sustainability: Collaboration and Capacity Building</h3>\r\n\r\n<p>Training Local Personnel and Community Ownership</p>\r\n\r\n<p>Sustainability hinges on local involvement. GOALPrime is dedicated to training community members to manage water and sanitation resources effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Establishing Partnerships with Local Organizations</p>\r\n\r\n<p>Collaborations with local organizations bolster efforts to sustain initiatives. Working together ensures a unified approach to health and hygiene challenges in Ngala.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Conclusion: A Collaborative Effort for Sustainable Health and Hygiene</h2>\r\n\r\n<p>The ongoing WASH initiative by GOALPrime in Ngala is a concerted effort towards improving health and hygiene standards. Key takeaways include the critical role of clean water and sanitation in combating diseases like cholera. Integrated WASH programs are essential in emergency responses and can facilitate long-lasting change.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Future goals emphasize the continuation of these vital projects, ensuring that the communities within the Ngala Reception Center remain healthy and resilient. Together, through strong community engagement and innovative strategies, the fight against cholera can lead to a brighter and healthier future for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A better humanity is possible!</strong></p>', 'uploads/1731635255cholera1.jpeg', '2024-11-15 01:47:35', '2024-11-15 01:50:41'),
(51, 'GOALPrime Nigeria\'s WASH Continued Interventions in Flood-Ravaged Rann: A Lifeline for Vulnerable Communities', 'goalprime-nigerias-wash-continued-interventions-in-flood-ravaged-rann-a-lifeline-for-vulnerable-communities', 'goalprime', '<p><img alt=\"wash\" src=\"https://www.goalprime.org/uploads/1731688108wash1.jpg\" style=\"height:417px; width:583px\" /></p>\r\n\r\n<p>Last week, GOALPrime Organization Nigeria continued its unwavering commitment to supporting the most vulnerable by delivering critical WASH interventions to the flood-affected community of Rann, located in Kala-Balge Local Government Area, Borno State.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This year, Rann experienced its most severe flooding in over two decades, leaving 70% of households without shelter, latrines, or access to safe water. To address the immediate health and sanitation needs of affected families, we distributed hygiene kits containing essential items designed to:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Promote personal hygiene</p>\r\n\r\n<p>-Prevent the spread of waterborne diseases</p>\r\n\r\n<p>-Enhance the well-being of households&mdash;especially women and children, who are most at risk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through this intervention, we are not only responding to the urgent needs of flood-affected individuals but also restoring hope and dignity to communities in dire need.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"wash\" src=\"	https://www.goalprime.org/uploads/1731688133wash2.jpg\" style=\"height:417px; width:583px\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>The Devastating Impact of the Floods in Rann</h2>\r\n\r\n<p>The floods in Rann had catastrophic effects. Homes were submerged, and essential services were disrupted. The aftermath saw families struggling to find safe drinking water and adequate sanitation facilities. The immediate consequences included:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Widespread water contamination</li>\r\n	<li>Increased risk of disease outbreaks</li>\r\n	<li>Crop destruction, leading to food insecurity</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>GOALPrime&#39;s Rapid Response and Commitment to Aid</h3>\r\n\r\n<p>Recognizing the urgent need for support, GOALPrime mobilized resources swiftly. Their rapid response team assessed the situation and initiated crucial WASH programs. Their commitment has been clear:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Delivery of water purification tablets</li>\r\n	<li>Establishment of temporary latrines</li>\r\n	<li>Collaboration with local health officials</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>The Critical Need for WASH Interventions in Emergency Situations</strong></h3>\r\n\r\n<p>In emergencies like floods, effective WASH interventions are vital. They help prevent disease transmission and ensure the health of affected communities. Key reasons for their importance include:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Provision of safe drinking water</li>\r\n	<li>Reduction of sanitation-related diseases</li>\r\n	<li>Promotion of hygiene education to combat infections</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Call to Action:</strong> Supporting Continued Relief and Development Efforts</h3>\r\n\r\n<p>The situation in Rann highlights the ongoing need for support. Donations and resources can help sustain WASH initiatives. Every contribution counts toward rebuilding lives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>The Importance of Ongoing Commitment to Vulnerable Communities</strong></h3>\r\n\r\n<p>Continued support for vulnerable communities like Rann is critical. As we reflect on the past, we must commit to building a healthier future. With combined efforts, we can ensure that communities thrive, even amidst challenges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GOALPrime, we remain committed to ensuring that no one is left behind, even in the hardest-to-reach areas. Together, we can make a difference.</p>\r\n\r\n<p>A Better Humanity is Possible!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://web.facebook.com/hashtag/humanitarianresponse?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#HumanitarianResponse</a> <a href=\"https://web.facebook.com/hashtag/wash?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#WASH</a> <a href=\"https://web.facebook.com/hashtag/floodresponse?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#FloodResponse</a> <a href=\"https://web.facebook.com/hashtag/safewater?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#SafeWater</a> <a href=\"https://web.facebook.com/hashtag/goalprime?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#GOALPrime</a> <a href=\"https://web.facebook.com/hashtag/commitmenttohumanity?__eep__=6&amp;__cft__[0]=AZWLRP6Wx4_U_jW4hLG9HCeBn-gwWa2uelsIJFa5ehsjlKouuXGTxYg2ZZljfTQuRvTUImKkb_5xrWEMkBKzUXjWk0gjci53G_VUJDAoOHkwujF7Vk_S0DPK0UBCsfq09U7a9OnqpS3tdFTlapSrKc3AUTpXAdqDab-1J-j-aDGZ4A&amp;__tn__=*NK-R\">#commitmenttohumanity</a></p>', 'uploads/1731688511wash1.jpg', '2024-11-15 16:35:11', '2024-11-15 16:38:51');
INSERT INTO `newsarticles` (`id`, `title`, `slug`, `postby`, `description`, `imagefile`, `created_at`, `updated_at`) VALUES
(52, 'GOALPrime Organization Nigeria Empowers WASHCOM and Hygiene Promoters Through Comprehensive Capacity Building', 'goalprime-organization-nigeria-empowers-washcom-and-hygiene-promoters-through-comprehensive-capacity-building', 'goalprime_gpon', '<p><img alt=\"Wash Training\" src=\"https://www.goalprime.org/uploads/1732621300wash_training1.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Goalprime Organisation Nigeria successfully organized a comprehensive capacity-building training session aimed at strengthening the skills and knowledge of WASHCOM and Hygiene Promoters. The training took place at the Magistrate Camp in Benisheik, located in Kaga Local Government Area (LGA). This Session is part of Goalprime&#39;s ongoing efforts to improve community health and sanitation by empowering local leaders with the tools and expertise necessary to promote proper hygiene practices and sustainable water and sanitation management within their communities. The session covered various critical topics related to WASH (Water, Sanitation, and Hygiene) practices, with a focus on hands-on approaches, best practices, and strategies to effectively engage and educate community members.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Investing in water, sanitation, and hygiene (WASH) is crucial for improving public health. With skilled hygiene promoters, communities can achieve better health outcomes. GOALPrime Organization Nigeria recognizes this importance and has organized a comprehensive training session to enhance the skills and knowledge of Water, Sanitation, and Hygiene Committees (WASHCOM) and hygiene promoters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Critical Role of Hygiene Promoters in Public Health</strong></p>\r\n\r\n<p>Hygiene promoters play an essential role in educating communities about health practices. They help:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Reduce the spread of diseases</p>\r\n\r\n<p>- Encourage safe water use</p>\r\n\r\n<p>- Promote personal hygiene habits</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Skilled hygiene promoters can lead to healthier communities, making their training critical.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The GOALPrime Commitment to WASH Sector Development</strong></p>\r\n\r\n<p>GOALPrime Organization Nigeria is dedicated to improving WASH services. This commitment is evident in their investment in training sessions that empower local leaders. By building capacity, GOALPrime supports sustainable development in underserved areas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Impact of Effective Capacity Building on WASH Outcomes</strong></p>\r\n\r\n<p>When hygiene promoters receive effective training, the results are clear. Communities experience:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Improved sanitation practices</p>\r\n\r\n<p>- Increased knowledge about hygiene</p>\r\n\r\n<p>- Positive changes in health indicators</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These benefits demonstrate the importance of capacity building in enhancing WASH outcomes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Training Curriculum: A Deep Dive into the Program&#39;s Content</strong></p>\r\n\r\n<p>GOALPrime&rsquo;s capacity-building training session covered various essential topics to ensure hygiene promoters are well-equipped.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Core WASH Principles Covered in the Training</strong></p>\r\n\r\n<p>Participants learned about:</p>\r\n\r\n<p>- Safe water management</p>\r\n\r\n<p>- Sanitation best practices</p>\r\n\r\n<p>- Hygiene education techniques</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These foundational principles set the stage for effective hygiene promotion.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hygiene Promotion Techniques and Strategies</strong></p>\r\n\r\n<p>Training included methods to effectively share hygiene knowledge. Key strategies taught were:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Community engagement approaches</p>\r\n\r\n<p>- Behavior change communication</p>\r\n\r\n<p>- Interactive workshops with community members</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These techniques are vital for reaching diverse audiences.</p>\r\n\r\n<p><img alt=\"Wash Training\" src=\"https://www.goalprime.org/uploads/1732621337wash_training2.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Practical Skills Development and Hands-on Activities</strong></p>\r\n\r\n<p>The program incorporated hands-on activities to apply learned concepts. Participants engaged in:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Role-playing scenarios</p>\r\n\r\n<p>- Group discussions</p>\r\n\r\n<p>- Simulated hygiene promotion campaigns</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These experiences foster practical skills that participants can use in the field.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Methodology and Training Delivery: Ensuring Maximum Impact</strong></p>\r\n\r\n<p>To guarantee the training was effective, GOALPrime Organization Nigeria employed innovative methodologies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Interactive Learning Methods Employed</strong></p>\r\n\r\n<p>The training featured various interactive methods, including:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Group exercises</p>\r\n\r\n<p>- Multimedia presentations</p>\r\n\r\n<p>- Real-life case studies</p>\r\n\r\n<p>- Hands-on-approache</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These engaging methods helped participants retain information better and improved strategies to effectively engage and educate community members.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Experienced Trainers and Their Expertise</strong></p>\r\n\r\n<p>Trainers with extensive experience in WASH led the sessions. Their expertise provided valuable insights and real-world examples, enriching the learning experience.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Use of Technology and Multimedia Resources in the Training</strong></p>\r\n\r\n<p>The use of technology enhanced training delivery. Participants benefited from:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Digital presentations</p>\r\n\r\n<p>- Videos showcasing successful hygiene programs</p>\r\n\r\n<p>- Online resources for future reference</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These tools made learning more engaging and accessible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Follow-up Support and Mentorship Programs</strong></p>\r\n\r\n<p>GOALPrime Organization Nigeria offers ongoing support through mentorship programs. This follow-up ensures that hygiene promoters have the resources they need to succeed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Community Engagement and Knowledge Dissemination</strong></p>\r\n\r\n<p>Training participants are encouraged to engage their communities actively. They share what they have learned, creating a network of knowledgeable hygiene advocates.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Strategies for Continued Skill Enhancement and Development</strong></p>\r\n\r\n<p>GOALPrime promotes continuous learning through:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Regular workshops</p>\r\n\r\n<p>- Access to updated training materials</p>\r\n\r\n<p>- Collaborative community projects</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These strategies help maintain momentum and keep skills sharp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: A Lasting Investment in Health and Hygiene</strong></p>\r\n\r\n<p>Key takeaways from the capacity building program highlight the importance of investing in hygiene training. The enhanced skills among hygiene promoters lead to healthier communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Importance of Continued Investment in WASH Training</strong></p>\r\n\r\n<p>Investing in WASH training is crucial for sustained public health benefits. Continued support is necessary to build a generation of knowledgeable hygiene promoters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Call to Action: Supporting Similar Initiatives</strong></p>\r\n\r\n<p>Support similar initiatives that enhance WASH services. Your involvement can help strengthen community health and pave the way for a brighter future. Join the movement today!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1732621852wash_training1.jpeg', '2024-11-26 11:50:52', '2024-11-26 11:56:26'),
(53, 'GOALPrime\'s Emergency Flood Response: Delivering targeted WASH NFIs Kit in Benisheik A Swift Response to the Benisheik Flood Crisis', 'goalprimes-emergency-flood-response-delivering-targeted-wash-nfis-kit-in-benisheik-a-swift-response-to-the-benisheik-flood-crisis', 'goalprime_gpon', '<p><img alt=\"WASH IOM\" src=\"https://www.goalprime.org/uploads/1732706496wash_iom1.jpeg\" style=\"height:500px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The recent floods in Benisheik, Kaga LGA have left many communities in dire need of basic sanitation and hygiene supplies. GOALPrime Organization Nigeria, with the support of IOM and RRF, has stepped in to address this crisis by successfully distributing 400 of the 807 targeted WASH NFI Kits as part of our Emergency Flood Response Project in Benisheik, Kaga LGA. These distributions are focused on the NRC Camp, Magistrate Camp, and Low-Cost Camp ensuring essential hygiene supplies sourced through the WASH Sector Common Pipeline to support flood-affected families.</p>\r\n\r\n<p>These kits play a vital role in restoring dignity and health to affected families while enabling them to recover from the disaster.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Urgent Need for WASH Assistance in Benisheik</strong></p>\r\n\r\n<p>After the flooding, access to clean water and hygiene products became critical. Contaminated environments can lead to disease outbreaks, putting vulnerable populations at risk. This is where the importance of WASH (Water, Sanitation, and Hygiene) interventions comes in. Communities facing these challenges have a higher demand for immediate relief and long-term solutions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Role in the Emergency Response</strong></p>\r\n\r\n<p>GOALPrime has been at the forefront of the emergency response, focusing on providing essential services. By targeting the most affected areas, the organization aims to deliver immediate help while laying the groundwork for sustainable recovery. Their dedicated team works tirelessly to ensure that aid reaches those who need it most.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>IOM and RRF Collaboration: A Partnership for Impact</strong></p>\r\n\r\n<p>Collaboration is key in emergency situations. The partnership between GOALPrime Organization Nigeria (GPON), IOM (International Organization for Migration), and RRF (Rapid Response Fund) showcases the combined efforts to tackle the crisis. Together, these organizations share resources and expertise, maximizing the impact of their initiatives in the community.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Project Overview: Reaching Affected Communities</strong></p>\r\n\r\n<p><strong>Targeting Vulnerable Populations: Specific demographics reached</strong></p>\r\n\r\n<p>The project&#39;s focus has been on the most vulnerable populations, including women, children, and the elderly. These groups often bear the brunt of disasters and require tailored interventions. The distribution of WASH NFIs specifically addresses their immediate needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Geographic Scope: Details about the Benisheik distribution area</strong></p>\r\n\r\n<p>The distribution area covers Benisheik in Kaga LGA, a region significantly impacted by the floods. This area was identified as a priority due to its high number of displaced families and lack of access to essential services. Local assessments helped pinpoint the most affected neighborhoods for aid delivery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Challenges Faced: Obstacles encountered during the distribution process</strong></p>\r\n\r\n<p>While delivering aid, several challenges arose, including:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Logistical issues:</strong> Difficulty in accessing remote areas due to damaged infrastructure.</p>\r\n\r\n<p><strong>- Resource limitations:</strong> Ensuring enough supplies to meet the high demand.</p>\r\n\r\n<p><strong>- Health concerns:</strong> Risk of disease transmission among crowded populations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The team worked diligently to overcome these obstacles, ensuring that assistance would not be delayed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>WASH NFI Kit Distribution: Progress and Impact</strong></p>\r\n\r\n<p><strong>Distribution Methodology: Strategies used to ensure equitable access</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime employed a systematic approach to ensure fair distribution. This included partnerships with local leaders, who played a crucial role in identifying those in need. Additionally, distribution points were strategically set up to reach diverse demographics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"WASH IOM\" src=\"https://www.goalprime.org/uploads/1732706566wash_iom2.jpeg\" style=\"height:500px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Success Story Examples: Individual stories highlighting the impact of assistance</strong></p>\r\n\r\n<p>One family from Benisheik shared how receiving a WASH NFI Kit changed their situation. Before aid arrived, they struggled to maintain basic hygiene. With the new supplies, they could ensure their children stayed safe from illness. Stories like this highlight the positive impact of the program.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Community Engagement: Fostering Sustainability</strong></p>\r\n\r\n<p><strong>Collaboration with Local Leaders: Engagement efforts with community stakeholders</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Local leaders have been instrumental in the success of the project. By engaging with the community, GOALPrime has built trust and ensured that the relief efforts effectively address specific needs. Regular meetings and feedback sessions have strengthened this partnership.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Post-Distribution Monitoring: Strategies to assess the long-term impact</strong></p>\r\n\r\n<p>To ensure the sustainability of the project, post-distribution monitoring is essential. This includes follow-up surveys and assessments that evaluate the availability and usage of WASH NFIs. Gathering feedback helps refine future responses and improve programs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Building Local Capacity: Initiatives to promote self-reliance in WASH</strong></p>\r\n\r\n<p>Beyond immediate relief, GOALPrime is committed to building local capacity for WASH initiatives. Training sessions on hygiene practices and water management empower communities. By fostering self-reliance, these efforts contribute to long-term resilience against future crises.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"WASH IOM\" src=\"https://www.goalprime.org/uploads/1732706610wash_iom3.jpeg\" style=\"height:500px; width:699px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Looking Ahead and Future Efforts</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Key Achievements: Summary of the project&#39;s successes</strong></p>\r\n\r\n<p>The project has successfully distributed 400 out of the targeted 807 WASH NFI Kits, significantly improving the conditions for many families in Benisheik, Kaga LGA. The collaboration with IOM and RRF has proven effective, yielding positive results.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lessons Learned: Key insights gained throughout the project</strong></p>\r\n\r\n<p>The experience gained from this project emphasizes the importance of timely responses and community engagement. Adaptability in distribution methods and continuous feedback are key takeaways for future initiatives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Future Plans: How the learnings will contribute to future disaster response</strong></p>\r\n\r\n<p>Going forward, GOALPrime aims to strengthen its emergency response framework based on these insights. Focusing on sustainable practices and community collaboration will enhance future disaster interventions, ensuring that affected populations receive the support they need promptly and efficiently.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The road to recovery is ongoing, and with continued support, GOALPrime is dedicated to improving the lives of those impacted by disasters in Benisheik, Kaga LGA and beyond.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1732708366wash_iom1.jpeg', '2024-11-27 11:52:46', '2024-11-27 11:57:06'),
(54, 'GOALPrime\'s Commitment to Ending Gender-Based Violence During these 16 Days of Activism', 'goalprimes-commitment-to-ending-gender-based-violence-during-these-16-days-of-activism', 'goalprime_gpon', '<p><img alt=\"Activism\" src=\"	https://www.goalprime.org/uploads/1732803596activism1.jpeg\" style=\"height:500px; width:700px\" /></p>\r\n\r\n<p>Gender-based violence (GBV) remains one of the most pressing issues facing communities around the world. At GoalPrime Organisation Nigeria, we prioritize the safety, dignity, and empowerment of women and girls. The 16 Days of Activism against Gender-Based Violence is a time to reflect on this crisis and reaffirm our commitment to change. GOALPrime stands strong in the battle against GBV, honoring this global movement through action and advocacy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we strive to create a world where every woman and girl can live free from fear, with equal opportunities to thrive and lead.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Urgent Need for Change: Statistics on Gender-Based Violence</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Over <strong>1 in 3 women</strong> worldwide experience physical or sexual violence.</p>\r\n\r\n<p>- Approximately <strong>137 women</strong> are killed by a partner or family member every day.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These statistics illustrate a dire necessity for immediate action to disrupt this cycle of violence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Role in Combating Violence: A Statement of Purpose</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime is dedicated to breaking the cycle of gender-based violence by implementing programs designed for prevention, support, and advocacy. Our mission is clear: to ensure everyone has the right to live in safety and dignity, free from violence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The 16 Days of Activism: A Global Movement for Change</strong></p>\r\n\r\n<p>Each year, the 16 Days of Activism runs from <strong>November 25</strong> (International Day for the Elimination of Violence against Women) to <strong>December 10</strong> (International Human Rights Day). This period serves as a powerful reminder for individuals, organizations, and governments to unite against gender-based violence and promote social change.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Understanding the Cycle of Gender-Based Violence</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Defining Gender-Based Violence: Types and Manifestations</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gender-based violence includes various forms of abuse, such as:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Physical violence</strong>: Hitting, slapping, or other harmful actions.</p>\r\n\r\n<p><strong>- Sexual violence</strong>: Rape, sexual assault, and coercion.</p>\r\n\r\n<p><strong>- Emotional abuse</strong>: Intimidation, belittling, and manipulation.</p>\r\n\r\n<p><strong>- Economic abuse</strong>: Controlling a person&rsquo;s financial resources.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Root Causes of Gender-Based Violence: Societal and Cultural Factors</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The roots of GBV are often embedded in:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Patriarchal norms</strong>: Systems that prioritize male authority and power.</p>\r\n\r\n<p><strong>- Cultural beliefs</strong>: Societal standards that tolerate or normalize violence.</p>\r\n\r\n<p><strong>- Economic inequality</strong>: Lack of access to resources and opportunities for women.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Impact of Gender-Based Violence on Individuals and Communities</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The effects of GBV extend beyond individual trauma, impacting communities by:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Increasing healthcare costs.</p>\r\n\r\n<p>- Creating a cycle of violence that permeates generations.</p>\r\n\r\n<p>- Harming societal stability and economic growth.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Initiatives to Break the Cycle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Prevention Programs: Education and Awareness</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is vital in preventing GBV. GOALPrime promotes awareness through:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Community workshops.</p>\r\n\r\n<p>- School programs that teach healthy relationships.</p>\r\n\r\n<p>- Campaigns that challenge harmful stereotypes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>How You Can Get Involved</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ways to Support GOALPrime&#39;s Efforts: Donations and Volunteering</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You can contribute by:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Donating</strong> money or resources directly to GOALPrime Organization Nigeria.</p>\r\n\r\n<p><strong>- Volunteering</strong> time to support programs and outreach.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Individual Actions to Combat Gender-Based Violence: Raising Awareness</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Raising awareness is crucial. Consider:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sharing educational materials on social media.</p>\r\n\r\n<p>- Hosting discussions in your community to highlight GBV issues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Promoting Safe Communities: Community-Based Initiatives</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Join local efforts that focus on creating safe public spaces by:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Organizing neighborhood watch groups.</p>\r\n\r\n<p>- Training community leaders on GBV prevention strategies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: A Collaborative Effort Towards a Violence-Free Future</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ending gender-based violence requires collaboration from every sector of society. By empowering individuals and transforming communities, we can work towards a violence-free future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Key Takeaways: Empowering Individuals and Transforming Communities</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Education and awareness can help prevent GBV.</p>\r\n\r\n<p>- Support services are essential for survivors.</p>\r\n\r\n<p>- Advocacy can lead to significant policy changes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Call to Action: Join the Fight Against Gender-Based Violence</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It&rsquo;s time to take action. Join us in standing up against gender-based violence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Looking Ahead: Continuing the Momentum Beyond 16 Days</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The fight against GBV doesn&rsquo;t stop here. Continue to spread awareness and take part in initiatives year-round to ensure safety and justice for all. Together, we can make a difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let us unite in action, raise our voices, and build a future rooted in respect, equality, and justice for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1732804789activism1.jpeg', '2024-11-28 14:39:49', '2024-11-28 14:47:34'),
(55, 'Nigeria Country-Based Pooled Funds: Witnessing Transformative Impact on the Ground', 'nigeria-country-based-pooled-funds-witnessing-transformative-impact-on-the-ground', 'goalprime_gpon', '<p><img alt=\"Pooled Fund\" src=\"https://www.goalprime.org/uploads/1733313747pooled_fund5.jpeg\" style=\"height:499px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As a Member of the United Nations Advisory Board for the Nigeria Country-Based Pooled Fund, GOALPrime Organization Nigeria&nbsp;Country Director (Professor Christopher Chinedumuije Oguegbu), alongside fellow Advisory Board members and donor agencies, had the privilege of visiting the field to witness firsthand the transformative impact of the Nigerian Humanitarian Fund (NHF).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>During the visit, we explored the implementation sites of three national actors: FRAD Foundation in Muna Garage, CBI in Shuwari, and RHHF in Elmiskini Camp. It was truly inspiring to see how these organizations, supported by NHF financing, are making a tangible difference in the lives of vulnerable communities. Their unwavering dedication and impactful programs highlight the critical role the NHF plays in delivering life-saving interventions across Northeast Nigeria (BAY States).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Pooled Fund\" src=\"https://www.goalprime.org/uploads/1733313813pooled_fund7.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The NHF continues to serve as a lifeline for national actors in the Nigerian humanitarian response, providing timely, flexible funding that addresses urgent needs and sustains essential services. As humanitarian needs grow, we call on donors and governments to scale up their commitments to the NHF. This vital funding mechanism ensures uninterrupted delivery of life-saving support and sustains hope for communities in need.</p>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<p>Together, we can build a better humanity&mdash;one step at a time.</p>', 'uploads/1733322829pooled_fund5.jpeg', '2024-12-04 14:33:49', '2024-12-04 14:38:06'),
(56, 'GOALPrime Organization Nigeria : Ensuring Critical Supplies Reach Those in Need', 'goalprime-organization-nigeria-ensuring-critical-supplies-reach-those-in-need', 'goalprime_gpon', '<p><img alt=\"Need Assessment\" src=\"https://www.goalprime.org/uploads/1733400305need2.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The humanitarian landscape in Nigeria faces immense challenges. With millions affected by conflict, natural disasters, and ongoing economic issues, there is an urgent need for effective supply chain management. GOALPrime Organization Nigeria strives to address these critical needs, ensuring that assistance reaches those who need it most. The organization&#39;s mission focuses on enhancing the lives of vulnerable populations through timely and efficient aid delivery and meticulous supply chain inspection has being practiced&nbsp;by our Country Director (<strong>Professor Christopher Chinedumuije Oguegbu</strong>).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Role of GOALPrime in Addressing These Needs</strong></p>\r\n\r\n<p>GOALPrime plays a crucial role in providing essential supplies, such as food, water, and medical assistance, to affected communities. The organization&#39;s dedication to alleviating suffering involves collaboration with local partners, communities, and government entities. Through these efforts, GOALPrime aims to ensure that critical supplies reach the affected population efficiently and effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Importance of Meticulous Supply Chain Inspection for Effective Aid Delivery</strong></p>\r\n\r\n<p>A key component of GOALPrime&#39;s operations is meticulous supply chain inspection. Timely and accurate supply inspections significantly impact aid delivery, ensuring that supplies maintain their quality and reach the intended recipients. Highlighting the importance of this process can directly influence how aid is received by vulnerable populations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Need Assessment\" src=\"https://www.goalprime.org/uploads/1733400335needs3.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Assessing the Quality and Quantity of Essential Supplies</strong></p>\r\n\r\n<p><strong>Establishing Clear Quality Control Standards for All Incoming Supplies</strong></p>\r\n\r\n<p>GOALPrime sets stringent quality control standards for all supplies. These standards include:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Visual Inspection:</strong> Checking for signs of damage or contamination.</p>\r\n\r\n<p><strong>- Certification Requirements:</strong> Ensuring suppliers meet recognized quality benchmarks.</p>\r\n\r\n<p><strong>- Sampling Procedures:</strong> Testing a portion of supplies to confirm quality.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Implementing Robust Inventory Management Systems to Track Supply Levels</strong></p>\r\n\r\n<p>To ensure transparency and organization, GOALPrime uses advanced inventory management systems. Specific software like <strong>Supply Chain Management (SCM) systems</strong> help track supply levels in real-time. Techniques such as <strong>FIFO (First In, First Out)</strong> ensure that older supplies are distributed first, minimizing waste.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regularly Auditing Supply Storage Facilities to Ensure Proper Conditions</strong></p>\r\n\r\n<p>Regular audits of storage facilities are vital. These audits include:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Temperature Control Checks:</strong> Ensuring supplies are stored at appropriate temperatures.</p>\r\n\r\n<p><strong>- Security Assessments:</strong> Verifying safe storage against theft or tampering.</p>\r\n\r\n<p><strong>- Inventory Reconciliation:</strong> Matching stored supplies with inventory records.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Verifying Supply Chain Integrity and Transparency</strong></p>\r\n\r\n<p><strong>Implementing Mechanisms to Prevent Fraud and Corruption in the Supply Chain</strong></p>\r\n\r\n<p>To combat fraud, GOALPrime employs strict internal controls, including:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Segregation of Duties:</strong> Ensuring that no single individual controls an entire process.</p>\r\n\r\n<p><strong>- Regular Audits:</strong> Conducting routine checks to assess compliance and detect irregularities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Utilizing Technology to Enhance Supply Chain Traceability and Accountability</strong></p>\r\n\r\n<p>Technology enhances transparency substantially. GOALPrime uses solutions like <strong>GPS tracking</strong> and <strong>blockchain technology</strong> to increase supply chain accountability. These technologies provide real-time updates on supply movements, ensuring that all aid distributions are trackable.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Partnering with Local Communities to Ensure Transparency and Community Ownership</strong></p>\r\n\r\n<p>Partnering with local communities is essential for building trust. Engaging residents through community meetings allows GOALPrime to understand their concerns, ensuring that aid reflects local needs. This engagement fosters a sense of ownership, making communities more invested in the process.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Addressing Challenges in Supply Chain Management</strong></p>\r\n\r\n<p><strong>Navigating Logistical Hurdles in Delivering Supplies to Remote Areas</strong></p>\r\n\r\n<p>GOALPrime encounters numerous logistical hurdles, particularly in remote regions where access is limited. Solutions like:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Local Partnerships:</strong> Collaborating with local transport companies to reach hard-hit areas.</p>\r\n\r\n<p><strong>- Flexible Routes:</strong> Adjusting delivery routes based on changing conditions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Managing the Security Risks Associated with Transporting and Distributing Supplies</strong></p>\r\n\r\n<p>Security remains a primary concern. Strategies include:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Risk Assessments:</strong> Evaluating potential threats before transporting supplies.</p>\r\n\r\n<p><strong>- Security Protocols:</strong> Developing transport procedures to safeguard staff and supplies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Adapting to Evolving Needs and Adjusting Supply Strategies Accordingly</strong></p>\r\n\r\n<p>Flexibility is key in humanitarian aid. GOALPrime employs adaptive strategies to adjust supply lines in response to:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Emerging Needs:</strong> Regular feedback from communities and frontline workers.</p>\r\n\r\n<p><strong>- Data Analysis:</strong> Leveraging data-driven insights to enhance supply delivery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Collaborating with Stakeholders for Effective Aid Delivery</strong></p>\r\n\r\n<p><strong>Building Strong Relationships with Government Agencies and Other Humanitarian Organizations</strong></p>\r\n\r\n<p>Collaboration enhances efficiency. GOALPrime partners with both governmental bodies and other NGOs for coordinated efforts. Joint initiatives ensure that resources are allocated effectively across the board.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Engaging with Local Communities to Understand Their Specific Needs and Preferences</strong></p>\r\n\r\n<p>Understanding community needs is essential. GOALPrime employs:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Surveys and Consultations:</strong> Gathering input on local preferences.</p>\r\n\r\n<p><strong>- Feedback Mechanisms:</strong> Providing channels for community suggestions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Utilizing Data Analysis to Inform Supply Chain Decisions and Optimize Resource Allocation</strong></p>\r\n\r\n<p>Data analysis assists GOALPrime in making informed decisions regarding supply distribution. By analyzing trends and needs, the organization can allocate resources optimally, ensuring that aid reaches those in most need.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Ensuring Accountability and Impact in Humanitarian Aid</strong></p>\r\n\r\n<p>The challenges faced by GOALPrime Organization Nigeria in supply chain management are significant, yet successes also abound. Continued efforts toward transparent and accountable operations are crucial in enhancing humanitarian aid delivery. Emphasizing the need for improvement and learning will foster future collaborations, ultimately ensuring that aid reaches those in dire need.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By advocating for increased transparency and accountability in humanitarian initiatives, we can make a lasting impact in the lives of vulnerable populations affected by crises in Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>And we stay resolutely committed!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Better Humanity is Possible!</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1733401276needs_gpon.jpg', '2024-12-05 12:16:14', '2024-12-05 12:24:32'),
(57, 'GOALPrime Organization Nigeria Hosts Save the Children\'s Regional Safeguarding Director', 'goalprime-organization-nigeria-hosts-save-the-childrens-regional-safeguarding-director', 'goalprime_gpon', '<p><img alt=\"Save the Children\" src=\"https://www.goalprime.org/uploads/1733594275save_the-children4.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime Organization Nigeria (GPON) was delighted to host the Regional Safeguarding Director of Save the Children International (SCI) at the GPON Country Office. Accompanying the Director were Timbut Goni, SCI&rsquo;s Awards Management Coordinator, and Albert Toyin, the In-Country Safeguarding Manager.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Highlighting the Visit&#39;s Importance</strong></p>\r\n\r\n<p>The visit provided a platform for both organizations to collaborate on strategies for ensuring the effective implementation of child and adult safeguarding commitments during the Education Cannot Wait (ECW) First Emergency Response Partnership in Northwest Nigeria. Additionally, the teams explored opportunities for capacity building to further strengthen GOALPrime&rsquo;s safeguarding practices.<strong> </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Save the Children\" src=\"https://www.goalprime.org/uploads/1733594223save_the-children.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The GOALPrime-Save the Children Partnership: A Collaborative Approach</strong></p>\r\n\r\n<p>This partnership aims to unite their strengths for comprehensive child and adult safeguarding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Overview of the Education Cannot Wait (ECW) Initiative</strong></p>\r\n\r\n<p>The Education Cannot Wait initiative focuses on providing quality education to children in emergencies. Launched in 2016, ECW supports countries experiencing crises by ensuring that children have access to safe and equitable learning environments. By working with various partners, ECW seeks to:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Provide urgent funding for education</p>\r\n\r\n<p>- Bridge gaps in educational access</p>\r\n\r\n<p>- Promote resilience in affected communities</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Understanding Child and Adult Safeguarding in ECW Programs</strong></p>\r\n\r\n<p><strong>Defining Child and Adult Safeguarding Policies</strong></p>\r\n\r\n<p>Child safeguarding involves protecting children from harm, while adult safeguarding ensures that vulnerable adults are treated with dignity and respect. Clear policies define acceptable standards of care and outline protocols for reporting concerns.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Role in Strengthening Safeguarding Mechanisms</strong></p>\r\n\r\n<p><strong>GOALPrime&#39;s Expertise in Program Implementation and Monitoring</strong></p>\r\n\r\n<p>GOALPrime brings extensive experience in managing humanitarian programs. Their focus on implementing effective safeguarding strategies ensures that children and adults are protected in educational settings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Save the Children&#39;s Contribution to Safeguarding Efforts</strong></p>\r\n\r\n<p><strong>Save the Children&#39;s Experience in Child Protection and Emergency Response</strong></p>\r\n\r\n<p>With decades of experience, Save the Children excels in child protection in humanitarian contexts. Their knowledge enhances the overall safeguarding framework in ECW programs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Call to Action: Strengthening Global Child Protection</strong></p>\r\n\r\n<p>By joining forces, we can create safer educational environments for children everywhere. It&rsquo;s time for global initiatives to prioritize child safeguarding in every educational context. Together, we can protect the most vulnerable and empower future generations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON remains steadfast in its commitment to principled, beneficiary-centered partnerships that uphold the highest standards of safeguarding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Save the Children\" src=\"https://www.goalprime.org/uploads/1733594311save_the-children2.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Together, we believe that A Better Humanity&nbsp;is&nbsp;Possible.</strong></p>', 'uploads/1733731756save_the-children4.jpg', '2024-12-09 08:09:16', '2024-12-09 08:09:16'),
(58, 'GOALPrime and Save the Children Launch Education Cannot Wait (ECW) First Emergency Response (FER) Project: Transforming Lives Through Education', 'goalprime-and-save-the-children-launch-education-cannot-wait-ecw-first-emergency-response-fer-project-transforming-lives-through-education', 'goalprime_gpon', '<p><img alt=\"Education Cannot Wait\" src=\"https://www.goalprime.org/uploads/1734106006ecw1.jpg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>GOALPrime Organization Nigeria (GPON), in collaboration with our esteemed partner, Save the Children International, and the governments of Zamfara, Katsina, and Kaduna States, officially launched the Education Cannot Wait (ECW) First Emergency Response (FER) project. The kickoff workshop, held in Kano, brought together key stakeholders to provide comprehensive insights into the project and underscore the importance of continuous collaboration throughout its implementation. This transformative initiative aims to impact over 137,000 children across the three states by delivering gender-transformative and inclusive education and protection services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Additionally, it seeks to build stakeholders&rsquo; capacities in climate change mitigation and anticipatory action planning, fostering long-term resilience and adaptability in education systems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;The workshop featured the Country Director of GPON, Dr. Christopher Chinedumuije, who presented the organization&rsquo;s detailed action plan, reinforcing GPON&rsquo;s commitment to ensuring impactful and sustainable project outcomes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Education Cannot Wait\" src=\"https://www.goalprime.org/uploads/1734106092ecw3.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime and Save the Children&#39;s Partnership</strong></p>\r\n\r\n<p>GOALPrime Organization Nigeria and Save the Children International have a shared vision: ensuring that every child has the right to an education, even amidst turmoil. This partnership combines their experience, resources, and commitment to provide lifesaving educational support in emergencies. Together, they are dedicated to making a difference where it matters most.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Education Cannot Wait (ECW) Initiative</strong></p>\r\n\r\n<p>The ECW initiative is a groundbreaking global fund focused on education in emergencies. Its mission is to ensure that no child misses out on an education due to crisis situations. The FER project is a crucial part of this initiative, aiming to provide immediate educational services to those in desperate need. It represents a coordinated effort to respond to the alarming gaps in educational access during emergencies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: A Brighter Future Through Education</strong></p>\r\n\r\n<p>The Education Cannot Wait FER project is a beacon of hope for many children facing educational disruption. With its focus on immediate access to quality education and the holistic development of children, this initiative is making a real difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Education Cannot Wait\" src=\"https://www.goalprime.org/uploads/1734106043ecw2.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Together, we are proving that a better humanity&nbsp;is&nbsp;possible</strong>.</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1734106473ecw1_.jpg', '2024-12-11 16:14:33', '2024-12-13 16:14:33');
INSERT INTO `newsarticles` (`id`, `title`, `slug`, `postby`, `description`, `imagefile`, `created_at`, `updated_at`) VALUES
(59, 'GOALPrime Organization Nigeria Participated in a Refresher Training: Enhancing Flood Response Capabilities', 'goalprime-organization-nigeria-participated-in-a-refresher-training-enhancing-flood-response-capabilities', 'goalprime_gpon', '<p><img alt=\"Retreat\" src=\"https://www.goalprime.org/uploads/1734353081retreat1.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Strengthening Nigeria&#39;s response to flooding is crucial, especially as climate change increases the frequency and severity of these disasters. Recently, GOALPrime Organisation Nigeria participated in a vital two-day refresher training for flood response partners, honing skills in case management, Family Tracing and Reunification (FTR), Mental Health and Psychosocial Support (MHPSS), and Gender-Based Violence (GBV) response. This training aimed to prepare organizations to better serve affected communities and improve overall flood response effectiveness.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Urgent Need for Improved Flood Response in Nigeria</strong></p>\r\n\r\n<p>Flooding in Nigeria affects thousands each year, displacing families and disrupting lives. The current challenges demand innovative solutions and enhanced collaboration among response organizations. Improved flood response strategies can ensure timely aid delivery and support for the affected communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Commitment to Capacity Building</strong></p>\r\n\r\n<p>GOALPrime Organisation has consistently focused on capacity building in disaster response. By providing training, participating in training and resources to local partners, GOALPrime empowers communities to handle crises effectively. This dedication helps create a network of skilled professionals ready to act when disaster strikes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Retreat\" src=\"https://www.goalprime.org/uploads/1734353111retreat2.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Overview of the Two-Day Refresher Training</strong></p>\r\n\r\n<p>The two-day refresher training focused on three main areas: Family Tracing and Reunification (FTR), Mental Health and Psychosocial Support (MHPSS), and Gender-Based Violence (GBV) response. Each session included hands-on activities, discussions, and best practice sharing. Participants left with enhanced skills and practical tools to improve their responses to flooding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Case Management Best Practices for Flood Affected Populations</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Streamlining Case Registration and Data Management</strong></p>\r\n\r\n<p>Efficient case registration is essential for tracking flood-affected individuals and families. Participants learned digital tools for data management, ensuring that information is accurate and accessible. This streamlining helps organizations respond quickly and allocate resources effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Effective Needs Assessment and Resource Allocation</strong></p>\r\n\r\n<p>Understanding the needs of affected populations is vital for effective response. Training included strategies for conducting thorough needs assessments. Participants practiced prioritizing aid based on community needs, ensuring that resources reach those who need them most.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Monitoring and Evaluation of Case Management Outcomes</strong></p>\r\n\r\n<p>Monitoring and evaluating response efforts is key to improving future actions. Participants discussed methods for assessing case management outcomes, which helps organizations identify areas for improvement and adjust strategies accordingly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Family Tracing and Unification Strategies in Post-Flood Scenarios</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Utilizing Technology for Efficient Family Tracing</strong></p>\r\n\r\n<p>In the aftermath of flooding, family separation can occur. The training highlighted the importance of technology in tracing missing family members. Social media platforms, dedicated apps, and community networks can expedite reunification efforts.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Collaboration with Relevant Stakeholders for Reunification Efforts</strong></p>\r\n\r\n<p>Effective reunification requires collaboration among various stakeholders. Participants learned the value of engaging local authorities, NGOs, and community leaders in tracing missing persons. Together, these groups can maximize the chances of successful reunification.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Addressing the Psychological Needs of Separated Families</strong></p>\r\n\r\n<p>Flooding takes a toll on emotional well-being. The training emphasized the need for mental health support as part of family reunification efforts. Understanding the psychological impact on families fosters a comprehensive approach to recovery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Addressing Mental Health and Psychosocial Support in Disaster Relief</strong></p>\r\n\r\n<p><strong>The Impact of Flooding on Mental Well-being</strong></p>\r\n\r\n<p>The emotional aftermath of flooding can be severe. Stress, anxiety, and depression often follow disaster events. Organizations must recognize these mental health challenges to provide proper support.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Providing Trauma-Informed Care and Support Services</strong></p>\r\n\r\n<p>Training sessions focused on trauma-informed care principles. Participants learned to create safe spaces for individuals to share their experiences. By providing empathetic support, organizations can help communities heal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Integrating Mental Health into Comprehensive Flood Response</strong></p>\r\n\r\n<p>Mental health support should be integral to flood response efforts. The training encouraged organizations to weave mental health strategies through their overall aid plans, ensuring that psychological needs are met alongside physical needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Strengthening Community Engagement and Partnerships</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Role of Community Leaders in Disaster Response</strong></p>\r\n\r\n<p>Community leaders play a critical role in disaster response. They have insights into local needs and can mobilize resources effectively. Training included strategies for engaging with these leaders to enhance response efforts.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Building Strong Partnerships with Local and International Organizations</strong></p>\r\n\r\n<p>Collaboration is key in disaster relief. Participants learned about building partnerships with various organizations, both local and international. These alliances can increase resource availability and improve overall effectiveness.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Promoting Community-Based Disaster Risk Reduction Strategies</strong></p>\r\n\r\n<p>Community-based strategies are essential for reducing future risks. The training encouraged participants to promote local initiatives that prepare communities for potential flooding. Empowered communities can take proactive steps in disaster management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Retreat\" src=\"https://www.goalprime.org/uploads/1734353137retreat3.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Importance of Continued Training and Capacity Development</strong></p>\r\n\r\n<p>Continuous skill development is vital. Regular trainings ensure that organizations stay updated on the latest best practices. This commitment helps build an agile and effective response network.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1734354128retreat1_.jpg', '2024-12-16 13:02:08', '2024-12-16 13:02:08'),
(60, 'GOALPrime Organization\'s Zamfara Visit Showcases Collaborative Education Solutions A Partnership for Progress in Zamfara\'s Education Sector', 'goalprime-organizations-zamfara-visit-showcases-collaborative-education-solutions-a-partnership-for-progress-in-zamfaras-education-sector', 'goalprime_gpon', '<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1734706219visit_anka.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>Our visit to Anka Local Government in Zamfara State showcased the power of collaboration and shared commitment to addressing community challenges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Local Government Chairman expressed unwavering support for initiatives that improve the lives of Internally Displaced Persons (IDPs), emphasizing the need for collective action in addressing their pressing needs, including the current use of over 10 schools as shelters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The education landscape in Zamfara State faces significant challenges. Schools struggle with inadequate resources, while many children lack access to quality education. The recent visit by &nbsp;GOALPrime Organization Nigeria personnel to Anka Local Government Area (LGA) shines a light on these issues and the importance of collaborative solutions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1734706264visit_anka3.jpeg\" style=\"height:428px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Commitment to Collaborative Development</strong></p>\r\n\r\n<p>Goalprime Organization Nigeria has dedicated itself to advancing education in marginalized areas. By partnering with esteemed partners, Save the Children International, and the governments of Zamfara, Katsina, and Kaduna States, they aim to implement sustainable solutions. GOALPrime Organization Nigeria visit to Anka LGA represents a commitment to collaboration, emphasizing that progress can only be achieved together.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In our engagement with the Education Secretary, Samaila Anka, there was a shared vision for impactful interventions that prioritize education and resilience for affected populations. His enthusiasm and alignment with the goals of this initiative reinforce the importance of strategic partnerships in driving sustainable community impact.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Urgent Need for Educational Reform in Zamfara State</strong></p>\r\n\r\n<p>Education in Zamfara has been in crisis for years. Key issues include:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Low enrollment rates</p>\r\n\r\n<p>- Poor classroom infrastructure</p>\r\n\r\n<p>- Shortage of qualified teachers</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These hurdles hinder the academic growth of children. Swift and effective action is essential to uplift the educational standards in the region.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Highlighting the Impact of the Anka LGA Visit</strong></p>\r\n\r\n<p>The visit showcased practical steps toward educational improvement. It was not just about identifying problems; it was about creating actionable plans. The collaboration focused on long-term solutions rather than quick fixes</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Measuring Program Effectiveness and Tracking Progress</strong></p>\r\n\r\n<p>Tracking the success of programs is essential. GOALPrime Organization Nigeria will establish metrics to measure progress. Evaluations will help refine strategies and ensure that goals are being met.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1734706242visit_anka2.jpeg\" style=\"height:429px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Shared Responsibility, Tangible Results</strong></p>\r\n\r\n<p><strong>Key Takeaways from the Anka LGA Visit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The visit by GOALprime Organization Nigeria personnel highlights the importance of collaboration in education. Collective efforts can bring about meaningful changes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A Better Humanity is Possible!</p>', 'uploads/1734708355visit_anka_.jpg', '2024-12-20 15:25:55', '2024-12-20 15:25:55'),
(61, 'GOALPrime Organisation Nigeria (GPON) visited Anka LGA, Zamfara State, to lay the foundation for its transformative education program.', 'goalprime-organisation-nigeria-gpon-visited-anka-lga-zamfara-state-to-lay-the-foundation-for-its-transformative-education-program', 'goalprime_gpon', '<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1737460277anka_visit1.jpg\" style=\"height:340px; width:584px\" /></p>\r\n\r\n<p>GOALPrime Organisation Nigeria (GPON) visited Anka LGA, Zamfara State, to lay the foundation for its transformative education program.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The education landscape in Zamfara State faces serious challenges, with literacy rates significantly lagging behind the national average. GOALPrime Organisation Nigeria (GPON) aims to change this narrative through innovative educational programs. The recent foundation-laying ceremony in Anka Local Government Area (LGA) marks a pivotal step toward enhancing education in this region.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>During the visit, the team recognized the pressing challenges in the region and reaffirmed their commitment to providing quality education to children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1737460350anka_visit3.jpg\" style=\"height:417px; width:584px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This milestone visit fostered a strong partnership between GPON and the local community. The team held productive meetings with key stakeholders, including the Education Secretary and DSS Director, to discuss strategic plans and secure community support.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Highlights of the Visit</strong></p>\r\n\r\n<p>- New Emir Palace IDP Camp: Home to over 600 children, the majority of whom are currently out of school.</p>\r\n\r\n<p>- Girls Focal Primary School/Genu Camp: A unique blend of a school and IDP camp, where over 60 children still face barriers to education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Expected Outcomes and Long-Term Goals</strong></p>\r\n\r\n<p>The anticipated outcomes of GPON&#39;s program are profound. Improved literacy rates, better-trained teachers, and enhanced school facilities are just the beginning. The long-term vision includes a vibrant educational ecosystem where every child has access to quality education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Anka Visit\" src=\"https://www.goalprime.org/uploads/1737460330anka_visit4.jpg\" style=\"height:417px; width:584px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON remains dedicated to ensuring that no child is left behind. Together, we can create a future where every child has access to quality education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Call to Action: Supporting GPON&#39;s Mission</strong></p>\r\n\r\n<p>Supporting GPON&#39;s mission is crucial for the success of this program. You can learn more about GPON&#39;s work and contribute through our website. Donations and community involvement can make a difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1737460592anka_visit1.jpg', '2025-01-21 11:56:32', '2025-01-21 11:58:16'),
(62, 'Empowering Educators in Underserved Communities.', 'empowering-educators-in-underserved-communities', 'goalprime_gpon', '<p><img alt=\"Education\" src=\"https://www.goalprime.org/uploads/1737540569empower_educators4.jpg\" style=\"height:417px; width:584px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The GOALPrime Organization Nigeria (GPON)&#39;s&nbsp;team conducted a crucial assessment at Nizzaniya Islamiyya Primary School, Anka LGA, Zamfara State, to address the shortage of qualified teachers in underserved communities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With 161 candidates, we aim to recruit 66 dedicated Community Volunteer Teachers (CVTs), 6 facilitators, and 6 case workers who will undergo comprehensive training to bring change to local education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Addressing the shortage of qualified teachers in underserved areas is crucial for improving education. Recent efforts by the GPON team at Nizzaniya Islamiyya Primary School in Anka LGA highlight the pressing need for educational reform in Zamfara State. This assessment underscores the significance of targeted interventions aimed at bridging the educational gap.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Highlighting the Significance of the Nizzaniya Islamiyya Primary School Assessment</strong></p>\r\n\r\n<p>The Nizzaniya Islamiyya Primary School plays a vital role in the community. This school is one of the few educational facilities available to children in Anka LGA. By conducting a thorough assessment, the GPON team seeks to gather data that can lead to meaningful changes and improvements.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The GPON Team&#39;s Role in Bridging the Educational Gap</strong></p>\r\n\r\n<p>The GPON team is dedicated to enhancing education in underserved communities. Through assessments like the one at Nizzaniya Islamiyya Primary School, they gather essential information to drive change. Their work focuses on identifying teacher shortages and finding ways to support local educational initiatives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Understanding the Teacher Shortage at Nizzaniya Islamiyya Primary School</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Current Teacher-to-Student Ratio at the School</strong></p>\r\n\r\n<p>The teacher-to-student ratio at Nizzaniya Islamiyya is alarmingly high. With limited teachers available, many classrooms have more students than one educator can effectively manage. This imbalance hinders personalized instruction and limits student engagement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Qualitative Assessment of Existing Teachers&#39; Qualifications and Skills</strong></p>\r\n\r\n<p>A qualitative assessment revealed varying levels of teacher qualifications. Some educators possess only basic training, while others have more experience. This discrepancy in skills affects the quality of education students receive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Impact of Teacher Shortage on Student Outcomes</strong></p>\r\n\r\n<p>The shortage of qualified educators directly impacts student performance. With fewer teachers, students receive less individualized attention. This can lead to lower academic achievement and hinder their overall development.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GPON&#39;s Comprehensive Assessment Methodology</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Data Collection Methods Employed by the GPON Team</strong></p>\r\n\r\n<p>The GPON team employed diverse data collection methods. They utilized surveys, classroom observations, and document reviews to gather comprehensive insights into the school&#39;s needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Interviews with School Administrators, Teachers, and Students</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Interviews with administrators, teachers, and students provided valuable perspectives. These conversations highlighted the challenges faced by both educators and learners. Understanding their experiences is crucial for finding effective solutions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Education Interview\" src=\"https://www.goalprime.org/uploads/1737540450empower_educators2.jpg\" style=\"height:417px; width:584px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Analysis of Existing Educational Resources and Infrastructure</strong></p>\r\n\r\n<p>The team also analyzed the school&rsquo;s existing resources. This included classroom conditions, teaching materials, and technology availability. Adequate infrastructure is essential for creating an environment conducive to learning.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Importance of Collaborative Efforts to Improve Education in Rural Areas</strong></p>\r\n\r\n<p>Collaboration among government, NGOs, and local communities is vital for improving educational systems. By working together, stakeholders can create sustainable solutions that benefit everyone.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Education\" src=\"https://www.goalprime.org/uploads/1737540531empower_educators3.jpg\" style=\"height:417px; width:584px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In addition, our team visited IDP camps in Anka, where many children are without access to formal education. We are committed to improving the future of these children and ensuring that no one is left behind in their educational journey.</p>\r\n\r\n<p>Stay tuned for updates on this transformative initiative!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1737542283empower_educators1_.jpg', '2025-01-22 10:38:03', '2025-01-22 10:38:03'),
(63, 'GPON Empowers Enumerators: DRR Training Boosts Disaster Assessment Capacity in Katsina and Zamfara', 'gpon-empowers-enumerators-drr-training-boosts-disaster-assessment-capacity-in-katsina-and-zamfara', 'goalprime_gpon', '<p><img alt=\"Disaster Risk Management\" src=\"https://www.goalprime.org/uploads/1737626253disaster_risk3.jpeg\" style=\"height:393px; width:550px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On January 22nd, 2025, GPON teams conducted an impactful training session in Katsina and Zamfara States to boost the capacity of enumerators for comprehensive Disaster Risk Reduction (DRR) assessments.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The training focused on familiarizing enumerators with Baseline Assessment tools and enhancing their knowledge of Disaster Risk Reduction (DRR) strategies to ensure the successful management of disaster risks in schools.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Strengthening disaster resilience is critical, especially in regions vulnerable to environmental hazards. In Katsina and Zamfara States, GPON has taken significant steps by training enumerators to enhance their capacity in Disaster Risk Reduction (DRR) assessments. This training focuses on improving data collection, which is vital for informed decision-making and effective disaster response strategies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Urgent Need for Accurate DRR Assessments in Nigeria</strong></p>\r\n\r\n<p>Natural disasters can strike unexpectedly, leading to loss of lives and property. Nigeria faces various threats, including floods, droughts, and other climate-related events. Accurate DRR assessments help identify risks and create strategies to reduce vulnerability.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Importance of Reliable Data</strong>: Comprehensive data allows for pinpointing areas most at risk.</p>\r\n\r\n<p><strong>- Informed Policy Making</strong>: Authorities can design better interventions with accurate information.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Role of Trained Enumerators in Effective Disaster Response</strong></p>\r\n\r\n<p>Enumerators play a crucial role in gathering data during DRR assessments. They collect vital information that informs local governments and disaster response agencies on necessary action. A well-trained enumerator can make the difference between a successful response and a missed opportunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GPON&#39;s Commitment to Building Capacity for Disaster Risk Reduction</strong></p>\r\n\r\n<p>GPON&#39;s training program emphasizes collaboration and skill-building. By enhancing the abilities of enumerators, GPON aims to create a network of skilled individuals ready to address and mitigate disaster risks effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The GPON Training Program: Curriculum and Methodology</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Key Modules Covered in the Katsina and Zamfara Training</strong></p>\r\n\r\n<p>The training program in these states included several key topics essential for effective data collection:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Understanding DRR Principles</strong>: Core concepts and best practices.</p>\r\n\r\n<p><strong>- Data Collection Techniques</strong>: Methods for gathering qualitative and quantitative information.</p>\r\n\r\n<p><strong>- Risk Assessment Tools</strong>: How to use various tools and software for analysis.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Disaster Management\" src=\"https://www.goalprime.org/uploads/1737626221disaster_risk.jpeg\" style=\"height:393px; width:550px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hands-on Training Exercises and Practical Applications</strong></p>\r\n\r\n<p>Practical exercises took center stage, allowing enumerators to apply what they learned in real-world settings. This hands-on approach ensured they could translate training into effective practice.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Key Takeaways from the GPON Training Program</strong></p>\r\n\r\n<p>The training has significantly bolstered the skills and knowledge of enumerators in Katsina and Zamfara. They are now better equipped to collect and analyze data, which is vital for effective disaster management.</p>\r\n\r\n<p><br />\r\n<br />\r\nTogether, we&rsquo;re building resilient communities through education and disaster preparedness.</p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>A Better Humanity is Possible!</strong></p>', 'uploads/1737626653disaster_risk3_.jpg', '2025-01-23 10:04:13', '2025-01-23 10:05:50'),
(64, 'AI and Education: Protecting Human Agency in the Age of Automation', 'ai-and-education-protecting-human-agency-in-the-age-of-automation', 'goalprime_gpon', '<p><img alt=\"International Day of Education\" src=\"https://www.goalprime.org/uploads/1737714111day_education.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Education is the key that unlocks endless opportunities, bridges gaps, and shapes a brighter future for all.</p>\r\n\r\n<p>Today, on the International Day of Education, under the theme &ldquo;AI and Education: Preserving Human Agency in a World of Automation,&rdquo; let&rsquo;s reflect on the evolving role of technology in learning and the importance of ensuring that education continues to prioritize human values.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Education is evolving at a rapid pace, thanks to artificial intelligence (AI). In recent years, AI has transformed classrooms and learning experiences for millions of students worldwide. On this International Day of Education, the theme &ldquo;AI and Education: Preserving Human Agency in a World of Automation&rdquo; resonates strongly. It highlights both the exciting possibilities that AI brings and the crucial need to protect human involvement in education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This article explores how AI can enhance learning while ensuring that human agency remains at the forefront of educational experiences.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>AI&#39;s Potential to Enhance Education: Personalized Learning and Beyond</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Personalized Learning Experiences</strong></p>\r\n\r\n<p>One of the most significant benefits of AI in education is personalized learning. AI can analyze student data and provide tailored experiences that cater to each individual&#39;s needs and learning styles. Platforms like EduTrack Nigeria, DreamBox, Knewton, and Carnegie Learning illustrate how adaptive technology can modify lessons based on student performance. Research shows that personalized learning can improve engagement and retention rates, making education more effective.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Automating Administrative Tasks</strong></p>\r\n\r\n<p>AI can help reduce teacher workloads by automating routine administrative tasks. Tasks such as grading assignments, scheduling, and managing communications can take up valuable time. Tools like GOALPrime Edu, Gradescope and Google Classroom streamline these processes. According to studies, teachers spend nearly 50% of their time on non-teaching tasks. If AI can reclaim just 10% of that time, educators can focus more on teaching and less on administration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessibility and Inclusivity</strong></p>\r\n\r\n<p>AI also plays a vital role in making education accessible to everyone. It can assist students with disabilities and those from underserved communities by providing customized support. Technologies like speech recognition software and AI-driven tutoring systems help bridge gaps in learning. For instance, tools such as Microsoft&rsquo;s Immersive Reader and Google&rsquo;s Text-to-Speech feature foster inclusivity, empowering all students to succeed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Teacher Training and Professional Development</strong></p>\r\n\r\n<p>For AI to be effective in the classroom, ongoing teacher training is essential. Educators need support and resources to learn how to incorporate AI tools successfully. Successful training programs, such as the Tech Integration program by ISTE, provide educators with the skills needed to leverage AI effectively.</p>\r\n\r\n<p><img alt=\"Day of Education\" src=\"https://www.goalprime.org/uploads/1737626253disaster_risk3.jpeg\" style=\"height:393px; width:550px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Advocating for Responsible AI Development and Implementation</strong></p>\r\n\r\n<p>Advocating for policies that prioritize human agency in AI education is crucial. Educators, parents, and policymakers should collaborate to develop guidelines that ensure AI systems are fair and effective. This includes involving diverse voices in the design and implementation processes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Embracing AI&#39;s Potential While Preserving the Human Element</strong></p>\r\n\r\n<p>AI offers a wealth of opportunities to improve education, from personalized learning to streamlined administration. However, the risks are also present, including biases, data privacy issues, and diminished human connection. Maintaining human agency should always be a priority.</p>\r\n\r\n<p>As we advocate for responsible AI integration in education, let us remind ourselves of the importance of human connection and ethical considerations. Engaging with this topic is essential for creating a future where both technology and humanity thrive together in the classroom.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let&rsquo;s celebrate the transformative power of learning and commit to ensuring inclusive, quality education for everyone, everywhere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Together, we can build a world where knowledge empowers communities and dreams become realities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1737714627day_education_.jpg', '2025-01-24 10:30:27', '2025-01-24 10:32:47'),
(65, 'GOALPrime Equips Zamfara & Katsina Field Officers with HP Envy 360 Laptops for Enhanced Education Reporting', 'goalprime-equips-zamfara-katsina-field-officers-with-hp-envy-360-laptops-for-enhanced-education-reporting', 'goalprime_gpon', '<p><img alt=\"Laptop\" src=\"https://www.goalprime.org/uploads/1737742663laptop.png\" style=\"height:343px; width:610px\" /></p>\r\n\r\n<p>We receive today at GOALPrime&#39;s Country Office a dozen 13th Generation HP Envy 360 Laptops, for Programming and Reporting by our officers in the Zamfara and Katsina Field Offices implementing the Education Cannot Wait First Emergency Response in Partnership with Save the Children International (Save the Children, Nigeria).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Technology plays a vital role in education, especially in remote areas. GOALPrime is addressing the needs of educational development in Northern Nigeria by introducing advanced tools for their field officers. The laptops will enhance programming and reporting in the Zamfara and Katsina Field Offices. These laptops will significantly improve data collection and reporting processes, allowing for better educational outcomes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Challenge of Data Collection in Remote Areas</strong></p>\r\n\r\n<p>Data collection poses unique challenges in rural regions. Limited internet access, unreliable power sources, and difficult terrain hinder effective reporting. Educational programs often lack timely data, making it hard to make informed decisions. GOALPrime recognizes these challenges and seeks to overcome them through technology, ensuring that educational programs have a solid foundation of data.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GOALPrime&#39;s Commitment to Educational Development in Zamfara and Katsina</strong></p>\r\n\r\n<p>GOALPrime with the supports of her partners, has been dedicated to improving education in Zamfara and Katsina. The organization&#39;s commitment to educational development is evident through various initiatives aimed at enhancing access to information. By deploying the HP Envy 360 laptops, GOALPrime aims to empower field officers with the tools necessary to gather accurate data, enabling them to support educational initiatives more effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The Impact of Reliable Technology on Reporting Efficiency</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop\" src=\"https://www.goalprime.org/uploads/1737742733ECW laptops.jpg\" style=\"float:left; height:200px; width:150px\" /></p>\r\n\r\n<p>When field officers have access to reliable technology, the impact is profound. The HP Envy 360 laptops improve reporting efficiency, allowing for quicker data collection and analysis. Officers can now process information faster, which leads to timely reporting crucial for decision-making. With these enhancements, the overall quality of educational programs in the region is bound to improve.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The HP Envy 360: A Powerful Tool for Field Officers</strong></p>\r\n\r\n<p><strong>Specifications and Features Relevant to Data Reporting</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The HP Envy 360 boasts impressive specifications that make it an excellent choice for data reporting:</strong></p>\r\n\r\n<ul>\r\n	<li>Fast Processors for quick computations</li>\r\n	<li>High-Resolution Display for clear visibility of data</li>\r\n	<li>Long Battery Life to operate in areas with unstable power supply</li>\r\n	<li>Lightweight Design for easy transport</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Enhanced Mobility and Accessibility in Challenging Terrain</strong></p>\r\n\r\n<p>Field officers in Zamfara and Katsina face difficult terrain. The HP Envy 360&#39;s lightweight design allows for easy mobility. Officers can carry these laptops effortlessly, ensuring access to necessary tools wherever they travel. This mobility means they can collect data directly in schools, villages, or remote locations without hassle.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Software Compatibility for Data Analysis and Reporting</strong></p>\r\n\r\n<p>The HP Envy 360 supports various software applications commonly used for data analysis. This compatibility ensures that field officers can work with familiar tools for reporting. Whether it&#39;s spreadsheets or specialized reporting applications, the laptops facilitate seamless integration into existing workflows.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Streamlining Data Collection and Reporting Processes</strong></p>\r\n\r\n<p><strong>Implementing a Standardized Data Collection System</strong></p>\r\n\r\n<p>To enhance efficiency, GOALPrime is introducing a standardized data collection system. This system will help ensure that all field officers collect data in a uniform manner. Consistency in data collection will facilitate easier comparisons and better-informed decision-making processes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Utilizing Cloud-Based Platforms for Secure Data Storage and Sharing</strong></p>\r\n\r\n<p>Cloud-based platforms will play a crucial role in data management. By using these platforms, field officers can securely store and share data with their teams. This approach not only improves data accessibility but also enhances collaboration among different offices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Expected Outcomes and Impact Assessment</strong></p>\r\n\r\n<p><strong>Improved Accuracy and Timeliness of Education Reports</strong></p>\r\n\r\n<p>With the new technology in place, the accuracy of education reports is expected to improve significantly. Field officers will have real-time access to data, allowing them to produce more precise and timely reports. This accuracy is essential for effective program management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Enhanced Data-Driven Decision Making for GOALPrime Programs</strong></p>\r\n\r\n<p>By leveraging reliable data, GOALPrime can make well-informed, data-driven decisions. Improved reporting will lead to a deeper understanding of educational challenges and opportunities in the region. This understanding will guide future programming efforts effectively.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Measuring program effectiveness through improved data collection</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The success of educational programs depends on accurate data measurement. GOALPrime will use the enhanced data collected through the HP Envy 360 laptops to assess program effectiveness. This assessment will identify areas for improvement and highlight successful initiatives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conclusion: Investing in Technology for a Brighter Educational Future in Northern Nigeria</strong></p>\r\n\r\n<p>Investing in technology like the HP Envy 360 laptops is a step towards a brighter educational future. GOALPrime&#39;s commitment to equipping its field officers with the best tools will enhance reporting and data collection processes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Call to Action: Continued investment in technology for sustainable educational development</strong></p>\r\n\r\n<p>GOALPrime calls on stakeholders to support ongoing investments in technology and thanked her partners (Save the Children International). Together, we can create sustainable educational development in Northern Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Future Plans for Technology Integration in GOALPrime&#39;s Programs</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Looking ahead, GOALPrime aims to continue integrating technology into its programs. Future initiatives will focus on expanding access to resources and training, ensuring that field officers are equipped to meet the evolving needs of education in the region.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible!</strong></p>', 'uploads/1737743161laptop.png', '2025-01-24 18:26:01', '2025-01-24 18:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'henryifeanyi48@gmail.com', '2022-06-15 11:31:09', '2022-06-15 11:31:09'),
(2, 'jaba@mailinator.com', '2022-06-15 11:48:43', '2022-06-15 11:48:43'),
(6, 'brandiea795m1b8@outlook.com', '2022-07-04 17:04:12', '2022-07-04 17:04:12'),
(8, 'alibadejo@gmail.com', '2022-07-23 03:53:59', '2022-07-23 03:53:59'),
(9, 'frebekah529raf0ipt@outlook.com', '2022-07-23 21:57:18', '2022-07-23 21:57:18'),
(10, 'frebekah529raf0ipt@outlook.com', '2022-07-23 21:57:19', '2022-07-23 21:57:19'),
(11, 'marciiytu1e6ea@outlook.com', '2022-07-28 15:30:11', '2022-07-28 15:30:11'),
(12, 'marciiytu1e6ea@outlook.com', '2022-07-28 15:30:12', '2022-07-28 15:30:12'),
(13, 'mustyo1.mo@gmail.com', '2022-07-28 17:17:53', '2022-07-28 17:17:53'),
(14, 'mustyo1.mo@gmail.com', '2022-07-28 17:18:14', '2022-07-28 17:18:14'),
(15, 'opilaro95deu6e@outlook.com', '2022-08-02 16:30:51', '2022-08-02 16:30:51'),
(16, 'opilaro95deu6e@outlook.com', '2022-08-02 16:30:52', '2022-08-02 16:30:52'),
(17, 'elijio1pa8t347o57y2@outlook.com', '2022-08-08 18:04:19', '2022-08-08 18:04:19'),
(18, 'elijio1pa8t347o57y2@outlook.com', '2022-08-08 18:04:20', '2022-08-08 18:04:20'),
(19, 'shuae0zu9e2f573@outlook.com', '2022-08-12 23:56:51', '2022-08-12 23:56:51'),
(20, 'shuae0zu9e2f573@outlook.com', '2022-08-12 23:56:51', '2022-08-12 23:56:51'),
(21, 'bonyopera2020@gmail.com', '2022-08-15 11:21:47', '2022-08-15 11:21:47'),
(22, 'vsendy9v94yd6ya1@outlook.com', '2022-08-20 09:36:18', '2022-08-20 09:36:18'),
(23, 'vsendy9v94yd6ya1@outlook.com', '2022-08-20 09:36:19', '2022-08-20 09:36:19'),
(24, 'sacha420i9c6508du6@outlook.com', '2022-09-07 20:34:33', '2022-09-07 20:34:33'),
(25, 'sacha420i9c6508du6@outlook.com', '2022-09-07 20:34:33', '2022-09-07 20:34:33'),
(27, 'christena1n78z8x68u71@outlook.com', '2022-09-11 07:25:16', '2022-09-11 07:25:16'),
(28, 'michaelanthonyeo19bpi63825@outlook.com', '2022-09-15 08:23:26', '2022-09-15 08:23:26'),
(29, 'michaelanthonyeo19bpi63825@outlook.com', '2022-09-15 08:23:28', '2022-09-15 08:23:28'),
(30, 'usamanthia373i26s6u@outlook.com', '2022-09-24 03:04:18', '2022-09-24 03:04:18'),
(31, 'chibuikem814@gmail.com', '2022-10-01 18:11:15', '2022-10-01 18:11:15'),
(32, 'roman9q5suv@outlook.com', '2022-10-20 01:04:13', '2022-10-20 01:04:13'),
(33, 'roman9q5suv@outlook.com', '2022-10-20 01:04:14', '2022-10-20 01:04:14'),
(34, 'faisaj93@gmail.com', '2022-10-28 19:29:28', '2022-10-28 19:29:28'),
(35, 'selenelrtawana@outlook.com', '2022-11-04 10:58:40', '2022-11-04 10:58:40'),
(36, 'selenelrtawana@outlook.com', '2022-11-04 10:58:40', '2022-11-04 10:58:40'),
(37, 'zoyhisucem@outlook.com', '2022-11-09 05:23:12', '2022-11-09 05:23:12'),
(39, 'lickiyuket@outlook.com', '2022-11-11 22:24:09', '2022-11-11 22:24:09'),
(40, 'lickiyuket@outlook.com', '2022-11-11 22:24:47', '2022-11-11 22:24:47'),
(41, 'fatcamavew@outlook.com', '2022-11-17 00:46:07', '2022-11-17 00:46:07'),
(42, 'fatcamavew@outlook.com', '2022-11-17 00:46:08', '2022-11-17 00:46:08'),
(43, 'benjamenyohannamaina@gmail.com', '2022-11-19 18:02:10', '2022-11-19 18:02:10'),
(44, 'aminumamman59@gmail.com', '2022-11-24 06:44:43', '2022-11-24 06:44:43'),
(45, 'jamesejembi2016@gmail.com', '2022-11-26 20:09:23', '2022-11-26 20:09:23'),
(46, 'iwueke247@gmail.com', '2022-11-27 18:58:01', '2022-11-27 18:58:01'),
(47, 'helenajones814@gmail.com', '2022-11-27 18:58:14', '2022-11-27 18:58:14'),
(48, 'fafvadoway@outlook.com', '2022-12-02 14:09:38', '2022-12-02 14:09:38'),
(49, 'fafvadoway@outlook.com', '2022-12-02 14:09:39', '2022-12-02 14:09:39'),
(50, 'larrie0cbadena@outlook.com', '2022-12-06 18:30:18', '2022-12-06 18:30:18'),
(51, 'larrie0cbadena@outlook.com', '2022-12-06 18:30:19', '2022-12-06 18:30:19'),
(52, 'doptayapab@outlook.com', '2022-12-13 01:34:57', '2022-12-13 01:34:57'),
(53, 'nogwilgeoassociates@gmail.com', '2022-12-13 13:01:14', '2022-12-13 13:01:14'),
(54, 'rhtinat4real2022@gmail.com', '2022-12-15 12:01:53', '2022-12-15 12:01:53'),
(55, 'zupmitavoc@outlook.com', '2022-12-20 20:58:33', '2022-12-20 20:58:33'),
(56, 'zupmitavoc@outlook.com', '2022-12-20 20:58:34', '2022-12-20 20:58:34'),
(57, 'tuxhamayoy@outlook.com', '2022-12-24 20:41:21', '2022-12-24 20:41:21'),
(58, 'tuxhamayoy@outlook.com', '2022-12-24 20:41:22', '2022-12-24 20:41:22'),
(59, 'goalprime.org@buycodeshop.com', '2023-01-04 14:10:16', '2023-01-04 14:10:16'),
(60, 'jopdihoten@outlook.com', '2023-01-13 04:09:40', '2023-01-13 04:09:40'),
(61, 'jopdihoten@outlook.com', '2023-01-13 04:09:40', '2023-01-13 04:09:40'),
(62, 'abubakarumar5700@gmail.com', '2023-01-19 14:48:02', '2023-01-19 14:48:02'),
(63, 'dawyofodog@outlook.com', '2023-01-28 16:25:07', '2023-01-28 16:25:07'),
(64, 'dawyofodog@outlook.com', '2023-01-28 16:25:07', '2023-01-28 16:25:07'),
(65, 'lCTD_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-01-31 12:17:38', '2023-01-31 12:17:38'),
(66, 'iorpendacharles@gmail.com', '2023-01-31 14:48:50', '2023-01-31 14:48:50'),
(67, 'wilsonzacharia380@gmail.com', '2023-02-01 11:22:27', '2023-02-01 11:22:27'),
(68, 'aishatushelle15@gmail.com', '2023-02-02 10:07:50', '2023-02-02 10:07:50'),
(69, 'mikhailever@outlook.com', '2023-02-27 12:27:38', '2023-02-27 12:27:38'),
(70, 'mikhailever@outlook.com', '2023-02-27 12:27:38', '2023-02-27 12:27:38'),
(71, 'mikhailever@outlook.com', '2023-02-27 12:27:39', '2023-02-27 12:27:39'),
(72, 'cheriehomesinitiatives@gmail.com', '2023-02-28 10:05:43', '2023-02-28 10:05:43'),
(73, 'vxen_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-03-01 00:49:20', '2023-03-01 00:49:20'),
(74, 'eU3p_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-03-10 16:17:14', '2023-03-10 16:17:14'),
(75, 'q3DO_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-03-17 00:59:37', '2023-03-17 00:59:37'),
(76, 'lorit3kw@outlook.com', '2023-03-18 03:59:22', '2023-03-18 03:59:22'),
(77, 'lorit3kw@outlook.com', '2023-03-18 03:59:24', '2023-03-18 03:59:24'),
(78, 'lorit3kw@outlook.com', '2023-03-18 03:59:25', '2023-03-18 03:59:25'),
(79, 'cZYz_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-03-19 00:53:31', '2023-03-19 00:53:31'),
(80, 'ShamecaKamphoefner81@aol.com', '2023-03-30 01:08:09', '2023-03-30 01:08:09'),
(81, 'ShamecaKamphoefner81@aol.com', '2023-03-30 01:08:09', '2023-03-30 01:08:09'),
(82, 'ShamecaKamphoefner81@aol.com', '2023-03-30 01:08:10', '2023-03-30 01:08:10'),
(83, 'UBYq_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-05-01 02:04:46', '2023-05-01 02:04:46'),
(84, 'iOd3_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-05-02 17:53:41', '2023-05-02 17:53:41'),
(85, 'peterthomas6497@gmail.com', '2023-05-05 04:12:46', '2023-05-05 04:12:46'),
(86, 'julietjames732@gmail.com', '2023-05-08 04:52:11', '2023-05-08 04:52:11'),
(87, 'medugusteve@yahoo.com', '2023-05-17 20:42:34', '2023-05-17 20:42:34'),
(88, 'pmtq_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-05-20 01:11:38', '2023-05-20 01:11:38'),
(89, 'ahmadinaibrahimu@gmail.com', '2023-10-17 18:44:21', '2023-10-17 18:44:21'),
(90, 'robertgarcia7824882@gmail.com', '2023-10-17 23:22:47', '2023-10-17 23:22:47'),
(91, 'Jenniferdavidmamza@gmail.com', '2023-10-20 08:13:31', '2023-10-20 08:13:31'),
(92, 'muhammadibrahimgoni090@gmail.com', '2023-10-30 17:26:19', '2023-10-30 17:26:19'),
(93, 'muhammadibrahimgoni090@gmail.com', '2023-10-30 17:26:31', '2023-10-30 17:26:31'),
(94, 'sebqecavuz@outlook.com', '2023-11-01 12:42:59', '2023-11-01 12:42:59'),
(95, 'sebqecavuz@outlook.com', '2023-11-01 12:43:00', '2023-11-01 12:43:00'),
(96, 'sebqecavuz@outlook.com', '2023-11-01 12:43:00', '2023-11-01 12:43:00'),
(97, 'vinicombevin@yahoo.com', '2023-11-08 06:41:31', '2023-11-08 06:41:31'),
(98, 'vinicombevin@yahoo.com', '2023-11-08 06:41:31', '2023-11-08 06:41:31'),
(99, 'vinicombevin@yahoo.com', '2023-11-08 06:41:32', '2023-11-08 06:41:32'),
(100, 'EyuKpD.mqqjqh@chiffon.fun', '2023-11-09 07:16:48', '2023-11-09 07:16:48'),
(101, 'solayemi79@gmail.com', '2023-11-13 12:13:41', '2023-11-13 12:13:41'),
(102, 'hafsatali707@gmail.com', '2023-11-20 18:48:43', '2023-11-20 18:48:43'),
(103, 'vLLC_generic_b18a5b28_goalprime.org@data-backup-store.com', '2023-11-21 15:00:03', '2023-11-21 15:00:03'),
(104, 'OQiIpl.pdmwpd@scranch.shop', '2023-11-23 12:32:49', '2023-11-23 12:32:49'),
(105, 'mulcuzayiv@outlook.com', '2023-12-01 12:22:58', '2023-12-01 12:22:58'),
(106, 'mulcuzayiv@outlook.com', '2023-12-01 12:22:58', '2023-12-01 12:22:58'),
(107, 'mulcuzayiv@outlook.com', '2023-12-01 12:22:58', '2023-12-01 12:22:58'),
(108, 'pJnrQo.cjcqtw@brasswire.me', '2023-12-02 02:40:44', '2023-12-02 02:40:44'),
(109, 'janis.pohl34@twinbash.co', '2023-12-02 16:58:46', '2023-12-02 16:58:46'),
(110, 'YXuDuC.mpwhjj@tonetics.biz', '2023-12-03 11:11:17', '2023-12-03 11:11:17'),
(111, 'GeorgeEdwards791341797@outlook.com', '2023-12-08 14:58:53', '2023-12-08 14:58:53'),
(112, 'GeorgeEdwards791341797@outlook.com', '2023-12-08 14:58:54', '2023-12-08 14:58:54'),
(113, 'GeorgeEdwards791341797@outlook.com', '2023-12-08 14:58:55', '2023-12-08 14:58:55'),
(114, 'dxSXty.dwcdcqw@rottack.autos', '2023-12-11 23:26:40', '2023-12-11 23:26:40'),
(115, 'YoFmJd.tjccjhp@lustrum.cfd', '2023-12-15 05:22:28', '2023-12-15 05:22:28'),
(116, 'fadimatuabdulhamid31@gmail.com', '2023-12-26 07:32:33', '2023-12-26 07:32:33'),
(117, 'fadimatuabdulhamid31@gmail.com', '2023-12-26 07:32:39', '2023-12-26 07:32:39'),
(118, 'fadimatuabdulhamid31@gmail.com', '2023-12-26 07:35:56', '2023-12-26 07:35:56'),
(119, 'daudalabourbinji@gmail.com', '2023-12-26 13:20:44', '2023-12-26 13:20:44'),
(120, 'tonegerth-2003@outlook.com', '2023-12-28 06:07:50', '2023-12-28 06:07:50'),
(121, 'tonegerth-2003@outlook.com', '2023-12-28 06:07:51', '2023-12-28 06:07:51'),
(122, 'tonegerth-2003@outlook.com', '2023-12-28 06:07:51', '2023-12-28 06:07:51'),
(123, 'rogers67@ourtimesupport.com', '2024-01-02 18:59:34', '2024-01-02 18:59:34'),
(124, 'jiddamohammed07@gmail.com', '2024-01-03 09:25:12', '2024-01-03 09:25:12'),
(125, 'jiddamohammed07@gmail.com', '2024-01-03 09:27:02', '2024-01-03 09:27:02'),
(126, 'jiddamohammed07@gmail.com', '2024-01-03 09:31:51', '2024-01-03 09:31:51'),
(127, 'aaabdulrahman@yahoo.com', '2024-01-03 11:40:56', '2024-01-03 11:40:56'),
(128, 'aaabdulrahman@yahoo.com', '2024-01-03 11:40:56', '2024-01-03 11:40:56'),
(129, 'aaabdulrahman@yahoo.com', '2024-01-03 11:43:43', '2024-01-03 11:43:43'),
(130, 'aaabdulrahman@yahoo.com', '2024-01-03 11:43:52', '2024-01-03 11:43:52'),
(131, 'christinepinta37@gmail.com', '2024-01-05 07:31:27', '2024-01-05 07:31:27'),
(132, 'jasonQW41708@outlook.com', '2024-01-08 04:35:41', '2024-01-08 04:35:41'),
(133, 'jasonQW41708@outlook.com', '2024-01-08 04:35:43', '2024-01-08 04:35:43'),
(134, 'jasonQW41708@outlook.com', '2024-01-08 04:35:44', '2024-01-08 04:35:44'),
(135, 'babsongee5@gmail.com', '2024-01-10 17:21:04', '2024-01-10 17:21:04'),
(136, 'yahuzaabdulkadir50@gmail.com', '2024-01-11 16:31:16', '2024-01-11 16:31:16'),
(137, 'circperschalta1976@yahoo.com', '2024-01-14 11:49:00', '2024-01-14 11:49:00'),
(138, 'circperschalta1976@yahoo.com', '2024-01-14 11:49:02', '2024-01-14 11:49:02'),
(139, 'circperschalta1976@yahoo.com', '2024-01-14 11:49:04', '2024-01-14 11:49:04'),
(140, 'JRTCYX.qmphbdw@spectrail.world', '2024-01-18 09:27:25', '2024-01-18 09:27:25'),
(141, 'TKfAKd.qqcdhjdq@paravane.biz', '2024-01-20 12:23:44', '2024-01-20 12:23:44'),
(142, '29.01hk6j99jvdd4trj89k3n05arb@mail5u.info', '2024-01-24 14:27:18', '2024-01-24 14:27:18'),
(143, 'mXjyYY.cptwqhb@spectrail.world', '2024-02-03 08:37:41', '2024-02-03 08:37:41'),
(144, 'HeidiGray68988@outlook.com', '2024-02-05 14:55:12', '2024-02-05 14:55:12'),
(145, 'HeidiGray68988@outlook.com', '2024-02-05 14:55:13', '2024-02-05 14:55:13'),
(146, 'HeidiGray68988@outlook.com', '2024-02-05 14:55:14', '2024-02-05 14:55:14'),
(147, 'kabiruabbanasidi0@gmail.com', '2024-02-06 17:17:38', '2024-02-06 17:17:38'),
(148, 'weeks_tony1978@yahoo.com', '2024-02-22 09:34:08', '2024-02-22 09:34:08'),
(149, 'weeks_tony1978@yahoo.com', '2024-02-22 09:34:11', '2024-02-22 09:34:11'),
(150, 'weeks_tony1978@yahoo.com', '2024-02-22 09:34:13', '2024-02-22 09:34:13'),
(151, 'pbhqqhmd.j@monochord.xyz', '2024-02-25 12:06:40', '2024-02-25 12:06:40'),
(152, 'IzPHml.hjqcbbw@wisefoot.club', '2024-03-04 03:47:37', '2024-03-04 03:47:37'),
(153, 'ralfchenl8150@gmail.com', '2024-03-08 04:07:38', '2024-03-08 04:07:38'),
(154, 'ralfchenl8150@gmail.com', '2024-03-08 04:07:40', '2024-03-08 04:07:40'),
(155, 'essie77langes1@outlook.com', '2024-03-17 16:33:53', '2024-03-17 16:33:53'),
(156, 'essie77langes1@outlook.com', '2024-03-17 16:33:55', '2024-03-17 16:33:55'),
(157, 'essie77langes1@outlook.com', '2024-03-17 16:33:57', '2024-03-17 16:33:57'),
(158, 'ccmtdphqj.j@monochord.xyz', '2024-03-20 20:37:53', '2024-03-20 20:37:53'),
(159, 'combsloyelluz627@gmail.com', '2024-03-21 19:24:38', '2024-03-21 19:24:38'),
(160, 'combsloyelluz627@gmail.com', '2024-03-21 19:24:41', '2024-03-21 19:24:41'),
(161, 'combsloyelluz627@gmail.com', '2024-03-21 19:24:43', '2024-03-21 19:24:43'),
(162, 'mccdqbqcw.j@monochord.xyz', '2024-03-23 12:44:18', '2024-03-23 12:44:18'),
(163, 'MorganEdwards52240@outlook.com', '2024-04-05 02:21:42', '2024-04-05 02:21:42'),
(164, 'MorganEdwards52240@outlook.com', '2024-04-05 02:21:45', '2024-04-05 02:21:45'),
(165, 'MorganEdwards52240@outlook.com', '2024-04-05 02:21:48', '2024-04-05 02:21:48'),
(166, 'abubakarsalihuabdullahi99@gmail.com', '2024-04-07 07:15:37', '2024-04-07 07:15:37'),
(167, 'abdullahiaminuishaq1@gmail.com', '2024-04-07 08:08:36', '2024-04-07 08:08:36'),
(168, 'burtododi341@gmail.com', '2024-04-09 19:57:54', '2024-04-09 19:57:54'),
(169, 'burtododi341@gmail.com', '2024-04-09 19:57:56', '2024-04-09 19:57:56'),
(170, 'combsosvxf352@gmail.com', '2024-04-12 14:09:46', '2024-04-12 14:09:46'),
(171, 'combsosvxf352@gmail.com', '2024-04-12 14:09:47', '2024-04-12 14:09:47'),
(172, 'combsosvxf352@gmail.com', '2024-04-12 14:09:48', '2024-04-12 14:09:48'),
(173, 'jenniferthompson6404@yahoo.com', '2024-04-15 23:06:20', '2024-04-15 23:06:20'),
(174, 'jenniferthompson6404@yahoo.com', '2024-04-15 23:06:22', '2024-04-15 23:06:22'),
(175, 'aadriiaanaa_mastbergen1981@yahoo.com', '2024-04-20 15:35:37', '2024-04-20 15:35:37'),
(176, 'aadriiaanaa_mastbergen1981@yahoo.com', '2024-04-20 15:35:42', '2024-04-20 15:35:42'),
(177, 'aadriiaanaa_mastbergen1981@yahoo.com', '2024-04-20 15:35:44', '2024-04-20 15:35:44'),
(178, 'grigoriyvwef@outlook.com', '2024-05-03 14:56:11', '2024-05-03 14:56:11'),
(179, 'grigoriyvwef@outlook.com', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(180, 'grigoriyvwef@outlook.com', '2024-05-03 14:56:13', '2024-05-03 14:56:13'),
(181, 'braggcalvin1990@yahoo.com', '2024-05-17 04:28:05', '2024-05-17 04:28:05'),
(182, 'braggcalvin1990@yahoo.com', '2024-05-17 04:28:08', '2024-05-17 04:28:08'),
(183, 'martinezbill2000@yahoo.com', '2024-05-20 07:22:23', '2024-05-20 07:22:23'),
(184, 'testing@example.com', '2024-06-11 10:13:39', '2024-06-11 10:13:39'),
(185, 'testing@example.com', '2024-06-11 10:13:41', '2024-06-11 10:13:41'),
(186, 'testing@example.com', '2024-06-11 10:14:00', '2024-06-11 10:14:00'),
(187, 'testing@example.com', '2024-06-11 10:14:10', '2024-06-11 10:14:10'),
(188, 'testing@example.com', '2024-06-11 10:14:10', '2024-06-11 10:14:10'),
(189, 'testing@example.com', '2024-06-11 10:14:11', '2024-06-11 10:14:11'),
(190, 'testing@example.com', '2024-06-11 10:14:11', '2024-06-11 10:14:11'),
(191, 'testing@example.com', '2024-06-11 10:15:43', '2024-06-11 10:15:43'),
(192, 'testing@example.com', '2024-06-11 10:15:51', '2024-06-11 10:15:51'),
(193, 'testing@example.comO2eh9XIz', '2024-06-11 10:15:59', '2024-06-11 10:15:59'),
(194, 'testing@example.com', '2024-06-11 10:16:07', '2024-06-11 10:16:07'),
(195, 'testing@example.com', '2024-06-11 10:19:36', '2024-06-11 10:19:36'),
(196, 'testing@example.com', '2024-06-11 10:19:44', '2024-06-11 10:19:44'),
(197, 'testing@example.com', '2024-06-11 10:20:02', '2024-06-11 10:20:02'),
(198, 'testing@example.com', '2024-06-11 10:21:43', '2024-06-11 10:21:43'),
(199, 'testing@example.com', '2024-06-11 10:21:51', '2024-06-11 10:21:51'),
(200, 'testing@example.com6oP22IYI', '2024-06-11 10:22:00', '2024-06-11 10:22:00'),
(201, 'testing@example.com', '2024-06-11 10:22:09', '2024-06-11 10:22:09'),
(202, 'testing@example.com', '2024-06-11 11:11:25', '2024-06-11 11:11:25'),
(203, 'testing@example.com', '2024-06-11 11:11:25', '2024-06-11 11:11:25'),
(204, 'amy_williams65ed@outlook.com', '2024-06-11 18:52:37', '2024-06-11 18:52:37'),
(205, 'amy_williams65ed@outlook.com', '2024-06-11 18:52:40', '2024-06-11 18:52:40'),
(206, 'bartolomeik888@gmail.com', '2024-06-15 03:10:41', '2024-06-15 03:10:41'),
(207, 'flagstoneveneydel2q9+6kbkl7gf7rv@gmail.com', '2024-06-15 11:07:20', '2024-06-15 11:07:20'),
(208, 'skinner_joe1719@yahoo.com', '2024-06-18 05:22:55', '2024-06-18 05:22:55'),
(209, 'skinner_joe1719@yahoo.com', '2024-06-18 05:22:57', '2024-06-18 05:22:57'),
(210, 'pI2E_generic_b18a5b28_goalprime.org@serviseantilogin.com', '2024-06-19 05:38:18', '2024-06-19 05:38:18'),
(211, 'fadatimothynyam@gmail.com', '2024-06-19 10:39:48', '2024-06-19 10:39:48'),
(212, 'adatiabanitus88@gmail.com', '2024-06-19 23:00:55', '2024-06-19 23:00:55'),
(213, 'flagstoneveneydel2q9+5hvdtujpnc70@gmail.com', '2024-06-20 12:04:09', '2024-06-20 12:04:09'),
(214, 'mark45mulveyxew@outlook.com', '2024-06-25 12:06:43', '2024-06-25 12:06:43'),
(215, 'mark45mulveyxew@outlook.com', '2024-06-25 12:06:45', '2024-06-25 12:06:45'),
(216, 'flagstoneveneydel2q9+6kbkm89gi4p@gmail.com', '2024-06-26 06:21:21', '2024-06-26 06:21:21'),
(217, 'cantrellmechanicfcy5k2+5hvdtvhjcuo2@gmail.com', '2024-06-30 12:38:19', '2024-06-30 12:38:19'),
(218, 'osedebamenphilip@yahoo.com', '2024-07-04 23:13:58', '2024-07-04 23:13:58'),
(219, 'muddahasalisu26@gmail.com', '2024-07-05 08:18:19', '2024-07-05 08:18:19'),
(220, 'nogwil_osaze@yahoo.com', '2024-07-05 08:29:13', '2024-07-05 08:29:13'),
(221, 'hamzanalado1@gmail.com', '2024-07-05 10:40:14', '2024-07-05 10:40:14'),
(222, 'hadizatatali30@gmail.com', '2024-07-05 12:59:42', '2024-07-05 12:59:42'),
(223, 'hadizatatali30@gmail.com', '2024-07-05 12:59:51', '2024-07-05 12:59:51'),
(224, 'salisuauyo123@gmail.com', '2024-07-05 15:40:03', '2024-07-05 15:40:03'),
(225, 'Ibrahimbabangida@gmail.com', '2024-07-05 20:01:46', '2024-07-05 20:01:46'),
(226, 'yahyaisa029@gmail.com', '2024-07-06 07:09:14', '2024-07-06 07:09:14'),
(227, 'akgiade2024@gmail.com', '2024-07-06 21:00:40', '2024-07-06 21:00:40'),
(228, 'osbornehartlinejvp4u1+6kbkkilrdl0@gmail.com', '2024-07-08 00:52:59', '2024-07-08 00:52:59'),
(229, 'marypeluola01@gmail.com', '2024-07-08 10:32:57', '2024-07-08 10:32:57'),
(230, 'hamzanalado1@gmail.com', '2024-07-08 10:45:54', '2024-07-08 10:45:54'),
(231, 'skinner_joe1719@yahoo.com', '2024-07-08 23:43:20', '2024-07-08 23:43:20'),
(232, 'skinner_joe1719@yahoo.com', '2024-07-08 23:43:22', '2024-07-08 23:43:22'),
(233, 'woodcockkienzlelsj8o9+5hvdttrvnqce@gmail.com', '2024-07-12 08:02:27', '2024-07-12 08:02:27'),
(234, 'royalconsult11@gmail.com', '2024-07-13 05:13:32', '2024-07-13 05:13:32'),
(235, 'abbaahmed81@gmail.com', '2024-07-15 08:10:11', '2024-07-15 08:10:11'),
(236, 'abbaahmed81@gmail.com', '2024-07-15 08:10:21', '2024-07-15 08:10:21'),
(237, 'shaks4live@gmail.com', '2024-07-15 10:47:37', '2024-07-15 10:47:37'),
(238, 'tungusheinvestmenting@gmail.com', '2024-07-17 07:53:15', '2024-07-17 07:53:15'),
(239, 'tungusheinvestmenting@gmail.com', '2024-07-17 07:56:45', '2024-07-17 07:56:45'),
(240, 'essie94karpzkm@outlook.com', '2024-07-20 04:46:24', '2024-07-20 04:46:24'),
(241, 'essie94karpzkm@outlook.com', '2024-07-20 04:46:26', '2024-07-20 04:46:26'),
(242, 'yashirafoundation2015@gmail.com', '2024-07-22 11:58:06', '2024-07-22 11:58:06'),
(243, 'autumn.jones1983@yahoo.com', '2024-07-22 22:25:44', '2024-07-22 22:25:44'),
(244, 'autumn.jones1983@yahoo.com', '2024-07-22 22:25:46', '2024-07-22 22:25:46'),
(245, 'hamptoorle29@gmail.com', '2024-07-28 00:42:05', '2024-07-28 00:42:05'),
(246, 'hamptoorle29@gmail.com', '2024-07-28 00:42:10', '2024-07-28 00:42:10'),
(247, 'osbornehartlinejvp4u1+6kbkme96j35@gmail.com', '2024-07-28 05:05:58', '2024-07-28 05:05:58'),
(248, 'lewisrussell3131@yahoo.com', '2024-07-30 12:35:36', '2024-07-30 12:35:36'),
(249, 'lewisrussell3131@yahoo.com', '2024-07-30 12:35:41', '2024-07-30 12:35:41'),
(250, 'osbornehartlinejvp4u1+5hvdtsu70non@gmail.com', '2024-08-02 01:07:54', '2024-08-02 01:07:54'),
(251, 'friedmanfritsvitj1998@gmail.com', '2024-08-02 09:28:07', '2024-08-02 09:28:07'),
(252, 'friedmanfritsvitj1998@gmail.com', '2024-08-02 09:28:09', '2024-08-02 09:28:09'),
(253, 'caldwemargom2004@gmail.com', '2024-08-05 12:08:36', '2024-08-05 12:08:36'),
(254, 'ztRp_generic_b18a5b28_goalprime.org@serviseantilogin.com', '2024-08-09 08:19:42', '2024-08-09 08:19:42'),
(255, 'idW3_generic_b18a5b28_goalprime.org@serviseantilogin.com', '2024-08-09 21:47:16', '2024-08-09 21:47:16'),
(256, 'bettinalittleb@gmail.com', '2024-08-11 12:05:57', '2024-08-11 12:05:57'),
(257, 'bettinalittleb@gmail.com', '2024-08-11 12:06:03', '2024-08-11 12:06:03'),
(258, 'sherri.goodman1999@yahoo.com', '2024-08-17 17:20:10', '2024-08-17 17:20:10'),
(259, 'sherri.goodman1999@yahoo.com', '2024-08-17 17:20:11', '2024-08-17 17:20:11'),
(260, 'bilalabdullahisarki@gmail.com', '2024-08-19 13:34:32', '2024-08-19 13:34:32'),
(261, 'bilalabdullahisarki@gmail.com', '2024-08-19 13:34:56', '2024-08-19 13:34:56'),
(262, 'bilalabdullahisarki@gmail.com', '2024-08-19 13:35:10', '2024-08-19 13:35:10'),
(263, 'hevendorsey1998@gmail.com', '2024-08-23 03:38:20', '2024-08-23 03:38:20'),
(264, 'hevendorsey1998@gmail.com', '2024-08-23 03:38:21', '2024-08-23 03:38:21'),
(265, 'marsisszuj@solid-hamster.skin', '2024-08-24 17:35:06', '2024-08-24 17:35:06'),
(266, 'marsisszue@solid-hamster.skin', '2024-08-24 17:35:08', '2024-08-24 17:35:08'),
(267, 'marsisszur@solid-hamster.skin', '2024-08-24 17:35:11', '2024-08-24 17:35:11'),
(268, 'marsisszur@solid-hamster.skin', '2024-08-24 17:35:12', '2024-08-24 17:35:12'),
(269, 'marsisszui@solid-hamster.skin', '2024-08-24 17:35:14', '2024-08-24 17:35:14'),
(270, 'hauwaumusa7593@gmail.com', '2024-08-27 19:39:19', '2024-08-27 19:39:19'),
(271, 'zinatuabubakarbagudo@gmail.com', '2024-08-27 22:07:05', '2024-08-27 22:07:05'),
(272, 'abdullahiusmanibrahim1013@gmail.com', '2024-08-27 22:48:43', '2024-08-27 22:48:43'),
(273, 'elvay0upshaw@outlook.com', '2024-08-29 04:46:33', '2024-08-29 04:46:33'),
(274, 'elvay0upshaw@outlook.com', '2024-08-29 04:46:35', '2024-08-29 04:46:35'),
(275, 'suexo_alstonuu@outlook.com', '2024-09-02 22:23:07', '2024-09-02 22:23:07'),
(276, '7An3_generic_b18a5b28_goalprime.org@serviseantilogin.com', '2024-09-03 20:22:08', '2024-09-03 20:22:08'),
(277, 'paulinesamson116@gmail.com', '2024-09-09 19:37:05', '2024-09-09 19:37:05'),
(278, 'anozieezenwa@gmail.com', '2024-09-10 13:31:19', '2024-09-10 13:31:19'),
(279, 'jameslen930@gmail.com', '2024-09-13 04:09:22', '2024-09-13 04:09:22'),
(280, 'jameslen930@gmail.com', '2024-09-13 04:09:24', '2024-09-13 04:09:24'),
(281, 'dzhahirul_zamri@yahoo.com', '2024-09-18 01:55:53', '2024-09-18 01:55:53'),
(282, 'dzhahirul_zamri@yahoo.com', '2024-09-18 01:55:54', '2024-09-18 01:55:54'),
(283, 'susie_denny5dz7@outlook.com', '2024-09-23 12:15:26', '2024-09-23 12:15:26'),
(284, 'susie_denny5dz7@outlook.com', '2024-09-23 12:15:29', '2024-09-23 12:15:29'),
(285, 'muhdhss86@gmail.com', '2024-09-25 21:37:46', '2024-09-25 21:37:46'),
(286, 'erongaines1992@gmail.com', '2024-09-27 02:48:30', '2024-09-27 02:48:30'),
(287, 'erongaines1992@gmail.com', '2024-09-27 02:48:31', '2024-09-27 02:48:31'),
(288, 'rrbbmlmzjuj@dont-reply.me', '2024-09-28 10:44:54', '2024-09-28 10:44:54'),
(289, 'rrbbmlmzjuj@dont-reply.me', '2024-09-28 10:44:56', '2024-09-28 10:44:56'),
(290, 'rrbbmlmzjuj@dont-reply.me', '2024-09-28 10:44:58', '2024-09-28 10:44:58'),
(291, 'brantben1986@yahoo.com', '2024-10-02 08:45:30', '2024-10-02 08:45:30'),
(292, 'brantben1986@yahoo.com', '2024-10-02 08:45:32', '2024-10-02 08:45:32'),
(293, 'dakotahmh1988@gmail.com', '2024-10-04 13:32:09', '2024-10-04 13:32:09'),
(294, 'dakotahmh1988@gmail.com', '2024-10-04 13:32:10', '2024-10-04 13:32:10'),
(295, 'villlopezb@gmail.com', '2024-10-09 06:57:07', '2024-10-09 06:57:07'),
(296, 'villlopezb@gmail.com', '2024-10-09 06:57:07', '2024-10-09 06:57:07'),
(297, 'hurleydebbayav2001@gmail.com', '2024-10-15 11:10:04', '2024-10-15 11:10:04'),
(298, 'umarbabalemukhtar@gmail.com', '2024-10-16 17:57:52', '2024-10-16 17:57:52'),
(299, 'ljelzzliiuj@dont-reply.me', '2024-10-18 06:20:14', '2024-10-18 06:20:14'),
(300, 'ljelzzliiuj@dont-reply.me', '2024-10-18 06:20:15', '2024-10-18 06:20:15'),
(301, 'ljelzzliiuj@dont-reply.me', '2024-10-18 06:20:17', '2024-10-18 06:20:17'),
(302, 'smartgambo@gmail.com', '2024-10-18 08:56:42', '2024-10-18 08:56:42'),
(303, 'zinatusaleh1995@gmail.com', '2024-10-21 15:32:15', '2024-10-21 15:32:15'),
(304, 'zoibishopt199@gmail.com', '2024-10-24 10:12:21', '2024-10-24 10:12:21'),
(305, 'zzieeerleeuj@dont-reply.me', '2024-10-27 00:33:29', '2024-10-27 00:33:29'),
(306, 'zzieeerleeuj@dont-reply.me', '2024-10-27 00:33:30', '2024-10-27 00:33:30'),
(307, 'zzieeerleeuj@dont-reply.me', '2024-10-27 00:33:31', '2024-10-27 00:33:31'),
(308, 'hawwabala123@gmail.com', '2024-10-27 05:39:21', '2024-10-27 05:39:21'),
(309, 'hrxdtfjxiacheioc@yahoo.com', '2024-11-01 18:12:30', '2024-11-01 18:12:30'),
(310, 'hrxdtfjxiacheioc@yahoo.com', '2024-11-01 18:12:32', '2024-11-01 18:12:32'),
(311, 'redirect-1689af7001b96a636799d6c7131483e9@webmark.eting.org', '2024-11-03 13:53:31', '2024-11-03 13:53:31'),
(312, 'ntagodwin@yahoo.com', '2024-11-04 05:54:37', '2024-11-04 05:54:37'),
(313, 'zaezibsssluj@dont-reply.me', '2024-11-06 06:21:34', '2024-11-06 06:21:34'),
(314, 'zaezibsssluj@dont-reply.me', '2024-11-06 06:21:36', '2024-11-06 06:21:36'),
(315, 'zaezibsssluj@dont-reply.me', '2024-11-06 06:21:38', '2024-11-06 06:21:38'),
(316, 'vivitts1981@gmail.com', '2024-11-07 07:06:58', '2024-11-07 07:06:58'),
(317, 'vivitts1981@gmail.com', '2024-11-07 07:06:59', '2024-11-07 07:06:59'),
(318, 'p6yx4ijhbgnri@yahoo.com', '2024-11-08 12:37:13', '2024-11-08 12:37:13'),
(319, 'p6yx4ijhbgnri@yahoo.com', '2024-11-08 12:37:15', '2024-11-08 12:37:15'),
(320, 'poulurhys@yahoo.com', '2024-11-09 10:15:02', '2024-11-09 10:15:02'),
(321, 'poulurhys@yahoo.com', '2024-11-09 10:15:04', '2024-11-09 10:15:04'),
(322, 'vqunh17@yahoo.com', '2024-11-10 03:38:45', '2024-11-10 03:38:45'),
(323, 'vqunh17@yahoo.com', '2024-11-10 03:38:47', '2024-11-10 03:38:47'),
(324, 'mntlyugxjtnhd@yahoo.com', '2024-11-10 21:45:21', '2024-11-10 21:45:21'),
(325, 'mntlyugxjtnhd@yahoo.com', '2024-11-10 21:45:23', '2024-11-10 21:45:23'),
(326, 'stephendayen@gmail.com', '2024-11-11 16:39:38', '2024-11-11 16:39:38'),
(327, 'domenicodellamura@yahoo.com', '2024-11-12 10:22:42', '2024-11-12 10:22:42'),
(328, 'domenicodellamura@yahoo.com', '2024-11-12 10:22:44', '2024-11-12 10:22:44'),
(329, 'acd.org4@gmail.com', '2024-11-13 12:59:43', '2024-11-13 12:59:43'),
(330, 'acd.org4@gmail.com', '2024-11-13 13:01:14', '2024-11-13 13:01:14'),
(331, 'acd.org4@gmail.com', '2024-11-13 13:01:35', '2024-11-13 13:01:35'),
(332, 'stakeise1147@gmail.com', '2024-11-14 06:42:54', '2024-11-14 06:42:54'),
(333, 'stakeise1147@gmail.com', '2024-11-14 06:42:55', '2024-11-14 06:42:55'),
(334, 'ixijhiodaukojad3a@yahoo.com', '2024-11-15 04:03:20', '2024-11-15 04:03:20'),
(335, 'ixijhiodaukojad3a@yahoo.com', '2024-11-15 04:03:22', '2024-11-15 04:03:22'),
(336, 'zllzjajsbruj@dont-reply.me', '2024-11-15 06:27:13', '2024-11-15 06:27:13'),
(337, 'zllzjajsbruj@dont-reply.me', '2024-11-15 06:27:14', '2024-11-15 06:27:14'),
(338, 'zllzjajsbruj@dont-reply.me', '2024-11-15 06:27:16', '2024-11-15 06:27:16'),
(339, 'zllzjajsbruj@dont-reply.me', '2024-11-15 06:27:18', '2024-11-15 06:27:18'),
(340, 'armoriki@gmail.com', '2024-11-15 15:04:37', '2024-11-15 15:04:37'),
(341, 'goitinh.1980@yahoo.com', '2024-11-17 00:24:05', '2024-11-17 00:24:05'),
(342, 'goitinh.1980@yahoo.com', '2024-11-17 00:24:07', '2024-11-17 00:24:07'),
(343, 'blakesivardzj2005@gmail.com', '2024-11-18 04:33:19', '2024-11-18 04:33:19'),
(344, 'blakesivardzj2005@gmail.com', '2024-11-18 04:33:21', '2024-11-18 04:33:21'),
(345, 'sjabdullahi1@gmail.com', '2024-11-18 19:03:32', '2024-11-18 19:03:32'),
(346, 'sjabdullahi1@gmail.com', '2024-11-18 19:03:53', '2024-11-18 19:03:53'),
(347, 'sjabdullahi1@gmail.com', '2024-11-18 19:04:21', '2024-11-18 19:04:21'),
(348, 'isolacaraibica@yahoo.com', '2024-11-20 07:46:15', '2024-11-20 07:46:15'),
(349, 'isolacaraibica@yahoo.com', '2024-11-20 07:46:16', '2024-11-20 07:46:16'),
(350, 'ezjsbisirjuj@dont-reply.me', '2024-11-21 15:46:16', '2024-11-21 15:46:16'),
(351, 'ezjsbisirjuj@dont-reply.me', '2024-11-21 15:46:22', '2024-11-21 15:46:22'),
(352, 'ezjsbisirjuj@dont-reply.me', '2024-11-21 15:46:23', '2024-11-21 15:46:23'),
(353, 'garba7289.gug@gmail.com', '2024-11-21 20:04:20', '2024-11-21 20:04:20'),
(354, 'lykaibucka@gmail.com', '2024-11-23 10:41:17', '2024-11-23 10:41:17'),
(355, 'lykaibucka@gmail.com', '2024-11-23 10:41:18', '2024-11-23 10:41:18'),
(356, 'eezajibjmbuj@dont-reply.me', '2024-11-23 23:50:33', '2024-11-23 23:50:33'),
(357, 'eezajibjmbuj@dont-reply.me', '2024-11-23 23:50:34', '2024-11-23 23:50:34'),
(358, 'eezajibjmbuj@dont-reply.me', '2024-11-23 23:50:35', '2024-11-23 23:50:35'),
(359, 'morgenodonnu@gmail.com', '2024-11-24 10:13:21', '2024-11-24 10:13:21'),
(360, 'ollonsnyderel5425@gmail.com', '2024-11-25 06:40:07', '2024-11-25 06:40:07'),
(361, 'ollonsnyderel5425@gmail.com', '2024-11-25 06:40:09', '2024-11-25 06:40:09'),
(362, 'djordiblevinsl@gmail.com', '2024-11-27 03:43:37', '2024-11-27 03:43:37'),
(363, 'djordiblevinsl@gmail.com', '2024-11-27 03:43:38', '2024-11-27 03:43:38'),
(364, 'korneliyss9726@gmail.com', '2024-11-28 02:48:10', '2024-11-28 02:48:10'),
(365, 'korneliyss9726@gmail.com', '2024-11-28 02:48:16', '2024-11-28 02:48:16'),
(366, 'eblsaiasjzuj@do-not-respond.me', '2024-11-28 09:20:07', '2024-11-28 09:20:07'),
(367, 'eblsaiasjzuj@do-not-respond.me', '2024-11-28 09:20:08', '2024-11-28 09:20:08'),
(368, 'eblsaiasjzuj@do-not-respond.me', '2024-11-28 09:20:09', '2024-11-28 09:20:09'),
(369, 'Jonahmiracle60@gmail.com', '2024-11-28 18:32:18', '2024-11-28 18:32:18'),
(370, 'burchdevnetd@gmail.com', '2024-11-28 23:37:37', '2024-11-28 23:37:37'),
(371, 'burchdevnetd@gmail.com', '2024-11-28 23:37:41', '2024-11-28 23:37:41'),
(372, 'waiydmtvbaeft@yahoo.com', '2024-11-29 18:05:55', '2024-11-29 18:05:55'),
(373, 'waiydmtvbaeft@yahoo.com', '2024-11-29 18:06:00', '2024-11-29 18:06:00'),
(374, 'aliksgd250@gmail.com', '2024-11-30 13:01:29', '2024-11-30 13:01:29'),
(375, 'aliksgd250@gmail.com', '2024-11-30 13:01:31', '2024-11-30 13:01:31'),
(376, 'd7pso4mvl5hghkoj@yahoo.com', '2024-12-01 06:56:42', '2024-12-01 06:56:42'),
(377, 'eajmjrsebiuj@dont-reply.me', '2024-12-01 11:09:32', '2024-12-01 11:09:32'),
(378, 'eajmjrsebiuj@dont-reply.me', '2024-12-01 11:09:33', '2024-12-01 11:09:33'),
(379, 'eajmjrsebiuj@dont-reply.me', '2024-12-01 11:09:35', '2024-12-01 11:09:35'),
(380, 'fadierodolfo@yahoo.com', '2024-12-03 11:18:42', '2024-12-03 11:18:42'),
(381, 'muchxkdhrxjcphnch@yahoo.com', '2024-12-04 04:57:18', '2024-12-04 04:57:18'),
(382, 'ktkqmfnkx@yahoo.com', '2024-12-04 21:30:07', '2024-12-04 21:30:07'),
(383, 'ktkqmfnkx@yahoo.com', '2024-12-04 21:30:09', '2024-12-04 21:30:09'),
(384, 'nkuxbnvdkf@yahoo.com', '2024-12-05 15:39:52', '2024-12-05 15:39:52'),
(385, 'nosizuozqfwmjwze8@yahoo.com', '2024-12-06 11:33:41', '2024-12-06 11:33:41'),
(386, 'nosizuozqfwmjwze8@yahoo.com', '2024-12-06 11:33:42', '2024-12-06 11:33:42'),
(387, 'esbsaabljiuj@dont-reply.me', '2024-12-06 14:48:43', '2024-12-06 14:48:43'),
(388, 'esbsaabljiuj@dont-reply.me', '2024-12-06 14:48:46', '2024-12-06 14:48:46'),
(389, 'esbsaabljiuj@dont-reply.me', '2024-12-06 14:48:48', '2024-12-06 14:48:48'),
(390, 'givnbatnjan@yahoo.com', '2024-12-07 06:28:56', '2024-12-07 06:28:56'),
(391, 'elverbradr8@gmail.com', '2024-12-08 00:18:16', '2024-12-08 00:18:16'),
(392, 'johnathanbasterd36@gmail.com', '2024-12-09 17:13:30', '2024-12-09 17:13:30'),
(393, 'johnathanbasterd36@gmail.com', '2024-12-09 17:13:32', '2024-12-09 17:13:32'),
(394, 'demetriyaharringtong1992@gmail.com', '2024-12-10 15:28:40', '2024-12-10 15:28:40'),
(395, 'demetriyaharringtong1992@gmail.com', '2024-12-10 15:28:42', '2024-12-10 15:28:42'),
(396, 'bateshollis1997@gmail.com', '2024-12-11 20:35:44', '2024-12-11 20:35:44'),
(397, 'emiijijbsiuj@do-not-respond.me', '2024-12-11 23:51:23', '2024-12-11 23:51:23'),
(398, 'emiijijbsiuj@do-not-respond.me', '2024-12-11 23:51:25', '2024-12-11 23:51:25'),
(399, 'emiijijbsiuj@do-not-respond.me', '2024-12-11 23:51:27', '2024-12-11 23:51:27'),
(400, 'emiijijbsiuj@do-not-respond.me', '2024-12-11 23:51:28', '2024-12-11 23:51:28'),
(401, 'emiijijbsiuj@do-not-respond.me', '2024-12-11 23:51:30', '2024-12-11 23:51:30'),
(402, 'msmallp47@gmail.com', '2024-12-13 00:50:41', '2024-12-13 00:50:41'),
(403, 'msmallp47@gmail.com', '2024-12-13 00:50:43', '2024-12-13 00:50:43'),
(404, 'insomniaatlzarycki@gmail.com', '2024-12-14 01:32:06', '2024-12-14 01:32:06'),
(405, 'insomniaatlzarycki@gmail.com', '2024-12-14 01:32:08', '2024-12-14 01:32:08'),
(406, 'aqquqfife@yahoo.com', '2024-12-14 21:55:21', '2024-12-14 21:55:21'),
(407, 'aqquqfife@yahoo.com', '2024-12-14 21:55:23', '2024-12-14 21:55:23'),
(408, 'xz7aieidayoyje3i@yahoo.com', '2024-12-15 17:43:28', '2024-12-15 17:43:28'),
(409, 'xz7aieidayoyje3i@yahoo.com', '2024-12-15 17:43:30', '2024-12-15 17:43:30'),
(410, 'x4swmns2yi@yahoo.com', '2024-12-16 20:35:10', '2024-12-16 20:35:10'),
(411, 'bzmraiimriuj@dont-reply.me', '2024-12-17 03:47:38', '2024-12-17 03:47:38'),
(412, 'bzmraiimriuj@dont-reply.me', '2024-12-17 03:47:40', '2024-12-17 03:47:40'),
(413, 'bzmraiimriuj@dont-reply.me', '2024-12-17 03:47:41', '2024-12-17 03:47:41'),
(414, 'bzmraiimriuj@dont-reply.me', '2024-12-17 03:47:43', '2024-12-17 03:47:43'),
(415, 'bzmraiimriuj@dont-reply.me', '2024-12-17 03:47:45', '2024-12-17 03:47:45'),
(416, 'japhethiorkoso5@gmail.com', '2024-12-17 18:10:59', '2024-12-17 18:10:59'),
(417, 'n3qwl6ig309uqgdug@yahoo.com', '2024-12-18 03:41:20', '2024-12-18 03:41:20'),
(418, 'n3qwl6ig309uqgdug@yahoo.com', '2024-12-18 03:41:22', '2024-12-18 03:41:22'),
(419, 'ilujazer02@gmail.com', '2024-12-19 04:05:44', '2024-12-19 04:05:44'),
(420, 'ilujazer02@gmail.com', '2024-12-19 04:05:47', '2024-12-19 04:05:47'),
(421, 'uowffwolywdoog@yahoo.com', '2024-12-21 02:16:31', '2024-12-21 02:16:31'),
(422, 'gwf48o0b1fw@yahoo.com', '2024-12-21 21:19:36', '2024-12-21 21:19:36'),
(423, 'brebjsbaziuj@dont-reply.me', '2024-12-21 22:23:36', '2024-12-21 22:23:36'),
(424, 'brebjsbaziuj@dont-reply.me', '2024-12-21 22:23:38', '2024-12-21 22:23:38'),
(425, 'brebjsbaziuj@dont-reply.me', '2024-12-21 22:23:39', '2024-12-21 22:23:39'),
(426, 'brebjsbaziuj@dont-reply.me', '2024-12-21 22:23:41', '2024-12-21 22:23:41'),
(427, 'buvovovuhic030@gmail.com', '2024-12-22 15:41:14', '2024-12-22 15:41:14'),
(428, 'buvovovuhic030@gmail.com', '2024-12-22 15:41:16', '2024-12-22 15:41:16'),
(429, 'mnyeuro@gmail.com', '2024-12-23 10:23:40', '2024-12-23 10:23:40'),
(430, 'ymcacotcia9aeop0o@yahoo.com', '2024-12-23 10:29:22', '2024-12-23 10:29:22'),
(431, 'ymcacotcia9aeop0o@yahoo.com', '2024-12-23 10:29:24', '2024-12-23 10:29:24'),
(432, 'daffervolea@yahoo.com', '2024-12-24 13:02:44', '2024-12-24 13:02:44'),
(433, 'daffervolea@yahoo.com', '2024-12-24 13:02:46', '2024-12-24 13:02:46'),
(434, 'thimonsmettnbrnks@yahoo.com', '2024-12-25 09:49:03', '2024-12-25 09:49:03'),
(435, 'thimonsmettnbrnks@yahoo.com', '2024-12-25 09:49:05', '2024-12-25 09:49:05'),
(436, 'kaphanan@yahoo.com', '2024-12-26 05:11:15', '2024-12-26 05:11:15'),
(437, 'kaphanan@yahoo.com', '2024-12-26 05:11:17', '2024-12-26 05:11:17'),
(438, 'biazaljjliuj@do-not-respond.me', '2024-12-27 03:37:36', '2024-12-27 03:37:36'),
(439, 'biazaljjliuj@do-not-respond.me', '2024-12-27 03:37:38', '2024-12-27 03:37:38'),
(440, 'biazaljjliuj@do-not-respond.me', '2024-12-27 03:37:39', '2024-12-27 03:37:39'),
(441, 'biazaljjliuj@do-not-respond.me', '2024-12-27 03:37:40', '2024-12-27 03:37:40'),
(442, 'obimayep444@gmail.com', '2024-12-27 04:56:10', '2024-12-27 04:56:10'),
(443, 'obimayep444@gmail.com', '2024-12-27 04:56:12', '2024-12-27 04:56:12'),
(444, 'timaguwu96@gmail.com', '2024-12-28 03:50:23', '2024-12-28 03:50:23'),
(445, 'timaguwu96@gmail.com', '2024-12-28 03:50:24', '2024-12-28 03:50:24'),
(446, 'panugantironina@yahoo.com', '2024-12-29 23:30:13', '2024-12-29 23:30:13'),
(447, 'obayubiwoye45@gmail.com', '2024-12-30 21:14:01', '2024-12-30 21:14:01'),
(448, 'obayubiwoye45@gmail.com', '2024-12-30 21:14:01', '2024-12-30 21:14:01'),
(449, 'wtmlqrrrq@yahoo.com', '2025-01-01 08:30:03', '2025-01-01 08:30:03'),
(450, 'blljjliiaiuj@do-not-respond.me', '2025-01-01 08:46:03', '2025-01-01 08:46:03'),
(451, 'blljjliiaiuj@do-not-respond.me', '2025-01-01 08:46:04', '2025-01-01 08:46:04'),
(452, 'blljjliiaiuj@do-not-respond.me', '2025-01-01 08:46:05', '2025-01-01 08:46:05'),
(453, 'blljjliiaiuj@do-not-respond.me', '2025-01-01 08:46:06', '2025-01-01 08:46:06'),
(454, 'vocilapi98@gmail.com', '2025-01-02 01:59:18', '2025-01-02 01:59:18'),
(455, 'vocilapi98@gmail.com', '2025-01-02 01:59:20', '2025-01-02 01:59:20'),
(456, 'exeq8bh7eweae5@yahoo.com', '2025-01-02 22:44:57', '2025-01-02 22:44:57'),
(457, 'exeq8bh7eweae5@yahoo.com', '2025-01-02 22:44:59', '2025-01-02 22:44:59'),
(458, 'jwejrenp4cw@yahoo.com', '2025-01-03 20:12:15', '2025-01-03 20:12:15'),
(459, 'jwejrenp4cw@yahoo.com', '2025-01-03 20:12:16', '2025-01-03 20:12:16'),
(460, 'mepsvdgvtj4vh7uj@yahoo.com', '2025-01-04 19:15:01', '2025-01-04 19:15:01'),
(461, 'abbwuvhtispho@yahoo.com', '2025-01-05 22:49:19', '2025-01-05 22:49:19'),
(462, 'abbwuvhtispho@yahoo.com', '2025-01-05 22:49:20', '2025-01-05 22:49:20'),
(463, 'sunumajedu411@gmail.com', '2025-01-07 04:02:08', '2025-01-07 04:02:08'),
(464, 'rzjlambeeiuj@do-not-respond.me', '2025-01-07 07:12:02', '2025-01-07 07:12:02'),
(465, 'rzjlambeeiuj@do-not-respond.me', '2025-01-07 07:12:04', '2025-01-07 07:12:04'),
(466, 'rzjlambeeiuj@do-not-respond.me', '2025-01-07 07:12:06', '2025-01-07 07:12:06'),
(467, 'rzjlambeeiuj@do-not-respond.me', '2025-01-07 07:12:07', '2025-01-07 07:12:07'),
(468, 'xiyiqoj975@gmail.com', '2025-01-08 05:15:26', '2025-01-08 05:15:26'),
(469, 'xiyiqoj975@gmail.com', '2025-01-08 05:15:27', '2025-01-08 05:15:27'),
(470, 'ohekinoh21@gmail.com', '2025-01-09 08:55:14', '2025-01-09 08:55:14'),
(471, 'ohekinoh21@gmail.com', '2025-01-09 08:55:16', '2025-01-09 08:55:16'),
(472, 'axonequq856@gmail.com', '2025-01-10 07:54:58', '2025-01-10 07:54:58'),
(473, 'wvmorhayp@yahoo.com', '2025-01-11 06:14:18', '2025-01-11 06:14:18'),
(474, 'wvmorhayp@yahoo.com', '2025-01-11 06:14:20', '2025-01-11 06:14:20'),
(475, 'dhneirfwugfefoq@yahoo.com', '2025-01-12 05:15:02', '2025-01-12 05:15:02'),
(476, 'ixenipikuve80@gmail.com', '2025-01-13 08:49:59', '2025-01-13 08:49:59'),
(477, 'rbbsjmmsmiuj@dont-reply.me', '2025-01-13 13:45:49', '2025-01-13 13:45:49'),
(478, 'rbbsjmmsmiuj@dont-reply.me', '2025-01-13 13:45:51', '2025-01-13 13:45:51'),
(479, 'rbbsjmmsmiuj@dont-reply.me', '2025-01-13 13:45:52', '2025-01-13 13:45:52'),
(480, 'rbbsjmmsmiuj@dont-reply.me', '2025-01-13 13:45:54', '2025-01-13 13:45:54'),
(481, 'umarsuleiman232@gmail.com', '2025-01-14 04:24:43', '2025-01-14 04:24:43'),
(482, 'adelekeadewale972@gmail.com', '2025-01-14 08:39:40', '2025-01-14 08:39:40'),
(483, 'whisperio41delve42@gmail.com', '2025-01-15 00:10:10', '2025-01-15 00:10:10'),
(484, 'bwcltclyuky@yahoo.com', '2025-01-16 09:50:25', '2025-01-16 09:50:25'),
(485, 'kabirshehukingdom7@gmail.com', '2025-01-16 12:44:46', '2025-01-16 12:44:46'),
(486, 'kabirshehukingdom7@gmail.com', '2025-01-16 12:45:28', '2025-01-16 12:45:28'),
(487, 'kabirshehukingdom7@gmail.com', '2025-01-16 12:45:30', '2025-01-16 12:45:30'),
(488, 'kabirshehukingdom7@gmail.com', '2025-01-16 12:46:36', '2025-01-16 12:46:36'),
(489, 'raiaijibiiuj@dont-reply.me', '2025-01-17 02:36:19', '2025-01-17 02:36:19'),
(490, 'raiaijibiiuj@dont-reply.me', '2025-01-17 02:36:21', '2025-01-17 02:36:21'),
(491, 'raiaijibiiuj@dont-reply.me', '2025-01-17 02:36:22', '2025-01-17 02:36:22'),
(492, 'raiaijibiiuj@dont-reply.me', '2025-01-17 02:36:24', '2025-01-17 02:36:24'),
(493, 'bfjckivkfbwkv@yahoo.com', '2025-01-17 15:25:01', '2025-01-17 15:25:01'),
(494, 'bfjckivkfbwkv@yahoo.com', '2025-01-17 15:25:02', '2025-01-17 15:25:02'),
(495, 'mt9snf91ka8ivqwr@yahoo.com', '2025-01-18 18:48:17', '2025-01-18 18:48:17'),
(496, 'mt9snf91ka8ivqwr@yahoo.com', '2025-01-18 18:48:19', '2025-01-18 18:48:19'),
(497, 'enemuomcdonald@gmail.com', '2025-01-19 09:19:16', '2025-01-19 09:19:16'),
(498, 'yyrkfgf8nt@yahoo.com', '2025-01-19 14:58:55', '2025-01-19 14:58:55'),
(499, 'yyrkfgf8nt@yahoo.com', '2025-01-19 14:58:56', '2025-01-19 14:58:56'),
(500, 'rsmrzzembiuj@dont-reply.me', '2025-01-19 18:06:02', '2025-01-19 18:06:02'),
(501, 'rsmrzzembiuj@dont-reply.me', '2025-01-19 18:06:04', '2025-01-19 18:06:04'),
(502, 'rsmrzzembiuj@dont-reply.me', '2025-01-19 18:06:07', '2025-01-19 18:06:07'),
(503, 'rsmrzzembiuj@dont-reply.me', '2025-01-19 18:06:08', '2025-01-19 18:06:08'),
(504, 'u1rtqemrhu@yahoo.com', '2025-01-20 11:11:07', '2025-01-20 11:11:07'),
(505, 'u1rtqemrhu@yahoo.com', '2025-01-20 11:11:10', '2025-01-20 11:11:10'),
(506, 'expanseuahorizon@gmail.com', '2025-01-22 02:29:09', '2025-01-22 02:29:09'),
(507, 'expanseuahorizon@gmail.com', '2025-01-22 02:29:10', '2025-01-22 02:29:10'),
(508, 'Gavin4Bargeman0470@gmail.com', '2025-01-23 11:38:52', '2025-01-23 11:38:52'),
(509, 'Gavin4Bargeman0470@gmail.com', '2025-01-23 11:38:54', '2025-01-23 11:38:54'),
(510, 'Ellison5Davidson4331@gmail.com', '2025-01-26 23:30:40', '2025-01-26 23:30:40'),
(511, 'Ellison5Davidson4331@gmail.com', '2025-01-26 23:30:42', '2025-01-26 23:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `caption`, `content`, `email`, `phone`, `address`, `location`, `created_at`, `updated_at`) VALUES
(1, 'contact page', NULL, 'info@goalprime.org', '+234 7056434701', 'Country HQ: No 2 Barcelona Street, Sun-City Estate, Abuja', '27.2046°N, 77.4977°E', '2022-06-15 09:00:47', '2022-11-27 15:32:03'),
(2, 'about page', '<p>GOALPrime Organization Nigeria (GPON) is a policy-driven humanitarian, national non-governmental organization that implements her program through a revitalized partnership&nbsp;the United Nations, the private sector,&nbsp;the international community and in strong collaboration with the government both at the local, state and federal level. GOALPrime implements directly to support conflict affected population as well as support the relevent government line ministries with system strengthening initiatives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime over the last five years has been on the frontlines of the Northeast Nigeria humanitarian response; providing live-saving interventions to children and their caregivers via partnerships with the government line ministries, the United Nations Children Fund (UNICEF-Nigeria), Education Cannot Wait (ECW) MYRP, the Office of Coordination of Humanitarian Affairs (OCHA-NHF), the World Health Organization (WHO), PLAN International, Street Child Nigeria, ROHI, the&nbsp;Irish Embassy and a host of private sector organizations. In Northeast Nigeria (The BAY States), GOALPrime has provided live-saving interventions to over 2 million individuals over the last 5 years across thematics vis-a-vis child protection;&nbsp;education-in-emergencies;&nbsp;water,&nbsp;sanitations and hygiene (WASH);&nbsp;livelihood and early recovery support;&nbsp;peacebuilding; centre-based and community-based&nbsp;socio-economic reintegration;&nbsp;behavioral change communications;&nbsp;mine risk education, and gender based violence risk mitigation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime is currently the Nigeria NGO representative to the Global Strategic Advisory Group (Global SAG) of&nbsp;the Child Protection Area of Responsibility (CP AoR); the Co-Lead Organization for Northeast Nigeria Child Protection Area of Responsibility (NE CP AoR), the Localization Focal Point Agency for Northeast Education in Emergencies; and a very strong member of the Strategic Advisory Groups (SAGs) of the Northeast Education in Emergencies Working Group, Northeast WASH-in-Emergencies Sector and the Northeast Child Protection Area of Responsibility.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GOALPrime&#39;s interventions are evidence-based and our commitment remains to make lives better for all vulnerable groups across conflict affected or disaster affected communities in Nigeria and beyond.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Better Humanity is Possible.</strong></p>', NULL, NULL, NULL, NULL, '2022-06-15 09:03:11', '2022-11-27 17:32:28'),
(3, 'mission', '<p>Putting people first in our commitment&nbsp;to making lives better for all vulnerable groups in affected nations and communities -especially women and children through revitalized partnerships.</p>', NULL, NULL, NULL, NULL, '2022-06-15 09:05:30', '2022-11-27 18:33:14'),
(4, 'vision', '<p>To build a culture where everyone at home and diaspora is committed to delivery of peaceful communities &amp; families; primary health care &amp; hygiene; safe schools &amp; inclusive education, livelihood security, socio-economic reintegration and protection for all vulnerable groups.</p>', NULL, NULL, NULL, NULL, '2022-06-15 09:06:58', '2022-11-27 18:33:48'),
(5, 'obj page', '<p><strong>H</strong> - Humanity First</p>\r\n\r\n<p><strong>E </strong>- Equality &amp; Gender</p>\r\n\r\n<p><strong>A</strong> - Accountability</p>\r\n\r\n<p><strong>R</strong> - Respect for Diversity</p>\r\n\r\n<p><strong>D </strong>- Dignity for All</p>', NULL, NULL, NULL, NULL, '2022-06-15 09:11:22', '2022-11-27 16:09:15'),
(6, 'exchgr', '575', NULL, NULL, NULL, NULL, '2022-06-15 19:02:22', '2022-06-15 19:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `imagefile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `imagefile`, `created_at`, `updated_at`) VALUES
(20, 'Nigeria Humanitarian Fund (NHF)', 'uploads/165579980702.png', '2022-06-21 07:17:30', '2022-06-21 07:23:27'),
(21, 'UNOCHA', 'uploads/165579993201.png', '2022-06-21 07:17:46', '2022-06-21 07:25:32'),
(22, 'UNICEF Nigeria', 'uploads/165579983903.png', '2022-06-21 07:20:03', '2022-06-21 07:23:59'),
(23, 'WHO Afro.', 'uploads/165579986604.png', '2022-06-21 07:21:45', '2022-06-21 07:24:26'),
(24, 'PLAN International', 'uploads/165580003505.png', '2022-06-21 07:27:15', '2022-06-21 07:27:15'),
(25, 'StreetChild', 'uploads/16558001866.png', '2022-06-21 07:29:46', '2022-06-21 07:29:46'),
(26, 'Education Cannot Wait (ECW)', 'uploads/16558003707.png', '2022-06-21 07:32:50', '2022-06-21 07:32:50'),
(27, 'Global Partnership for Education (GPE)', 'uploads/16558004808.png', '2022-06-21 07:34:40', '2022-06-21 07:34:40'),
(28, 'Borno State Government', 'uploads/16558005659.png', '2022-06-21 07:36:05', '2022-06-21 07:36:05'),
(29, 'Federal Ministry of Education (FME)', 'uploads/165580067110.png', '2022-06-21 07:37:51', '2022-06-21 07:37:51'),
(30, 'Child Protection Area of Responsibility (CP AoR)', 'uploads/165580081911.png', '2022-06-21 07:40:19', '2022-06-21 07:40:19'),
(31, 'Education in Emegencies Working Group (Northeast EIEWG)', 'uploads/165580093912.png', '2022-06-21 07:42:19', '2022-06-21 07:42:19'),
(32, 'WASH In Emergencies Working Group', 'uploads/165580125813.png', '2022-06-21 07:47:38', '2022-06-21 07:47:38'),
(33, 'ROHI', 'uploads/165580130914.png', '2022-06-21 07:48:29', '2022-06-21 07:48:29'),
(34, 'flood 1', 'uploads/1697031068WhatsApp Image 2023-10-11 at 11.21.50N.jpg', '2023-10-11 13:31:08', '2023-10-11 13:31:08'),
(35, 'flood 2', 'uploads/1697031090WhatsApp Image 2023-10-11 at 11.21.50M.jpg', '2023-10-11 13:31:30', '2023-10-11 13:31:30'),
(36, 'flood 3', 'uploads/1697031108WhatsApp Image 2023-10-11 at 11.21.49O.jpg', '2023-10-11 13:31:48', '2023-10-11 13:31:48'),
(37, 'flood 4', 'uploads/1697031128WhatsApp Image 2023-10-11 at 11.21.48.jpg', '2023-10-11 13:32:08', '2023-10-11 13:32:08'),
(38, 'flood 5', 'uploads/1697031147WhatsApp Image 2023-10-11 at 11.22.07W.jpg', '2023-10-11 13:32:27', '2023-10-11 13:32:27'),
(39, 'dupe project 2', 'uploads/1698392990dupe 2.jpg', '2023-10-27 07:49:50', '2023-10-27 07:49:50'),
(41, 'dupe project 3', 'uploads/1698393473dupe 3.jpg', '2023-10-27 07:57:53', '2023-10-27 07:57:53'),
(42, 'dupe project 4', 'uploads/1698393491dupe 4.jpg', '2023-10-27 07:58:11', '2023-10-27 07:58:11'),
(44, 'radio 2', 'uploads/1698421656radio 3.jpg', '2023-10-27 15:47:36', '2023-10-27 15:47:36'),
(45, 'radio 3', 'uploads/1698421678radio 4.jpg', '2023-10-27 15:47:58', '2023-10-27 15:47:58'),
(46, 'GHW 1', 'uploads/1698425687GHW 2.jpg', '2023-10-27 16:54:47', '2023-10-27 16:54:47'),
(48, 'GHW 3', 'uploads/1698425723GHW 4.jpg', '2023-10-27 16:55:23', '2023-10-27 16:55:23'),
(49, 'GHW 4', 'uploads/1698425960GHW 5.jpg', '2023-10-27 16:59:20', '2023-10-27 16:59:20'),
(50, 'NUT', 'uploads/1698430413NUT 1.jpg', '2023-10-27 18:13:33', '2023-10-27 18:13:33'),
(51, 'NUT 1', 'uploads/1698430432NUT 2.jpg', '2023-10-27 18:13:52', '2023-10-27 18:13:52'),
(52, 'NUT 2', 'uploads/1698430447NUT 3.jpg', '2023-10-27 18:14:07', '2023-10-27 18:14:07'),
(53, 'ECW', 'uploads/1698432720ECW 2.jpg', '2023-10-27 18:52:00', '2023-10-27 18:52:00'),
(54, 'ECW 1', 'uploads/1698432759ECW 3.jpg', '2023-10-27 18:52:39', '2023-10-27 18:52:39'),
(55, 'ECW 2', 'uploads/1698432806ECW 4.jpg', '2023-10-27 18:53:26', '2023-10-27 18:53:26'),
(56, 'dan', 'uploads/1698938203WhatsApp Image 2023-11-02 at 16.15.54_9e71a0ac.jpg', '2023-11-02 15:16:43', '2023-11-02 15:16:43'),
(57, 'da', 'uploads/1698938334WhatsApp Image 2023-11-02 at 16.15.59_4e48f951.jpg', '2023-11-02 15:18:54', '2023-11-02 15:18:54'),
(58, 'UASC', 'uploads/1699443548IMG-20231102-WA0422.jpg', '2023-11-08 11:39:08', '2023-11-08 11:39:08'),
(59, 'UASC 1', 'uploads/1699443585IMG-20231102-WA0421.jpg', '2023-11-08 11:39:45', '2023-11-08 11:39:45'),
(63, 'BTS', 'uploads/1700485252WhatsApp Image 2023-11-20 at 13.30.59_bbdf7974.jpg', '2023-11-20 13:00:52', '2023-11-20 13:00:52'),
(64, 'BTS 1', 'uploads/1700486776WhatsApp Image 2023-11-20 at 13.30.56_efaaabc9.jpg', '2023-11-20 13:26:16', '2023-11-20 13:26:16'),
(65, 'JMV', 'uploads/1700487492JMV.jpg', '2023-11-20 13:38:12', '2023-11-20 13:38:12'),
(66, 'JMV 1', 'uploads/1700487513JMV 1.jpg', '2023-11-20 13:38:33', '2023-11-20 13:38:33'),
(67, 'JMV 2', 'uploads/1700487532JMV 3.jpg', '2023-11-20 13:38:52', '2023-11-20 13:38:52'),
(68, 'MH', 'uploads/1705064033405761618_313736231546670_2412707845246533444_n.jpg', '2024-01-12 12:53:53', '2024-01-12 12:53:53'),
(70, 'MH 1', 'uploads/1705064095405209948_723689139661613_5589948711352090747_n (1).jpg', '2024-01-12 12:54:55', '2024-01-12 12:54:55'),
(71, 'hg', 'uploads/1705065163407408294_315245211329944_6503425477830400706_n.jpg', '2024-01-12 13:12:43', '2024-01-12 13:12:43'),
(72, 'hg 1', 'uploads/1705065182407321298_2336589623196357_1930326329243449678_n.jpg', '2024-01-12 13:13:02', '2024-01-12 13:13:02'),
(73, 'n', 'uploads/1705907764419311702_1373207463338129_152824389451904358_n.jpg', '2024-01-22 07:16:04', '2024-01-22 07:16:04'),
(74, 'n1', 'uploads/1705907784419705452_921456452660324_6807021749063854106_n.jpg', '2024-01-22 07:16:24', '2024-01-22 07:16:24'),
(75, 'rev', 'uploads/1705910416IMG_8999.jpg', '2024-01-22 08:00:16', '2024-01-22 08:00:16'),
(76, 'ra', 'uploads/1707901737WhatsApp Image 2024-02-14 at 10.08.05_b2d0d75e.jpg', '2024-02-14 09:08:57', '2024-02-14 09:08:57'),
(77, 'ra', 'uploads/1707901878WhatsApp Image 2024-02-14 at 10.08.05_b2d0d75e.jpg', '2024-02-14 09:11:18', '2024-02-14 09:11:18'),
(78, 'la', 'uploads/1707901999WhatsApp Image 2024-02-14 at 10.12.35_f7435fb7.jpg', '2024-02-14 09:13:19', '2024-02-14 09:13:19'),
(79, 'laf', 'uploads/1707902105WhatsApp Image 2024-02-14 at 10.14.34_c7f821cb.jpg', '2024-02-14 09:15:05', '2024-02-14 09:15:05'),
(80, 's', 'uploads/1713536877421035981_1565947907490812_7158761450409501368_n (1).jpg', '2024-04-19 14:27:57', '2024-04-19 14:27:57'),
(81, 'chdp', 'uploads/1713538598WhatsApp Image 2024-04-19 at 15.45.50_8566b154.jpg', '2024-04-19 14:56:38', '2024-04-19 14:56:38'),
(82, 'chdidp', 'uploads/1713539515WhatsApp Image 2024-04-19 at 15.45.51_77fce892.jpg', '2024-04-19 15:11:55', '2024-04-19 15:11:55'),
(83, 'a', 'uploads/1716893952441175962_1202091571203880_7183811594521095066_n.jpg', '2024-05-28 10:59:12', '2024-05-28 10:59:12'),
(84, 'c', 'uploads/1716894297438099403_7437612349687952_3987523238766585076_n.jpg', '2024-05-28 11:04:57', '2024-05-28 11:04:57'),
(85, 'nf', 'uploads/1716894768441442679_1126861255305105_8087722142476010593_n.jpg', '2024-05-28 11:12:48', '2024-05-28 11:12:48'),
(86, 'n', 'uploads/1716894963435976308_784544246973185_3185383122826780500_n.jpg', '2024-05-28 11:16:03', '2024-05-28 11:16:03'),
(87, 'ec', 'uploads/1718923708442992903_1648378645907272_813097568462140778_n.jpg', '2024-06-20 22:48:28', '2024-06-20 22:48:28'),
(88, 'sa', 'uploads/1718924109445767945_334745136306678_4349141517978256489_n.jpg', '2024-06-20 22:55:09', '2024-06-20 22:55:09'),
(89, 'cd', 'uploads/1718924861441437737_1158067405379207_8813550071733875145_n.jpg', '2024-06-20 23:07:41', '2024-06-20 23:07:41'),
(90, 'pp', 'uploads/1719407473445985142_842799494547229_2858525849857817278_n.jpg', '2024-06-26 13:11:13', '2024-06-26 13:11:13'),
(91, 'pp', 'uploads/1719407484445985142_842799494547229_2858525849857817278_n.jpg', '2024-06-26 13:11:24', '2024-06-26 13:11:24'),
(92, 'ppp', 'uploads/1719409140445622345_1413649125959795_9167520961236687245_n.jpg', '2024-06-26 13:39:00', '2024-06-26 13:39:00'),
(93, 'ls', 'uploads/1719410236447945213_1131141208141364_8475274720641438399_n.jpg', '2024-06-26 13:57:16', '2024-06-26 13:57:16'),
(94, 'hh', 'uploads/1719413691448187083_477456594782923_809923627604257334_n.jpg', '2024-06-26 14:54:51', '2024-06-26 14:54:51'),
(95, 'hhh', 'uploads/1719413721448108649_766552488973015_7956371853698896911_n.jpg', '2024-06-26 14:55:21', '2024-06-26 14:55:21'),
(96, 'tls', 'uploads/1719581724447898908_379319758448627_7737579310117619519_n.jpg', '2024-06-28 13:35:24', '2024-06-28 13:35:24'),
(97, 'modu1', 'uploads/1730895121modu1.jpeg', '2024-11-06 12:12:01', '2024-11-06 12:12:01'),
(98, 'modu2', 'uploads/1730961171modu2.jpeg', '2024-11-07 06:32:51', '2024-11-07 06:32:51'),
(99, 'module3', 'uploads/1730961299modu3.jpeg', '2024-11-07 06:34:59', '2024-11-07 06:34:59'),
(100, 'module4', 'uploads/1730961333modu4.jpeg', '2024-11-07 06:35:33', '2024-11-07 06:35:33'),
(101, 'Edu_tracker2', 'uploads/1731075192edutracker2.jpg', '2024-11-08 14:13:12', '2024-11-08 14:13:12'),
(102, 'Edu_tracker3', 'uploads/1731075249edutracker3.jpg', '2024-11-08 14:14:09', '2024-11-08 14:14:09'),
(103, 'waste', 'uploads/1731586347building1.jpg', '2024-11-14 12:12:27', '2024-11-14 12:12:27'),
(104, 'cholera', 'uploads/1731635047cholera2.jpeg', '2024-11-15 01:44:07', '2024-11-15 01:44:07'),
(105, 'wash1', 'uploads/1732621525wash1.jpg', '2024-11-15 16:28:28', '2024-11-26 11:45:25'),
(106, 'wash2', 'uploads/1731688133wash2.jpg', '2024-11-15 16:28:53', '2024-11-15 16:28:53'),
(107, 'washtraining1', 'uploads/1732621300wash_training1.jpeg', '2024-11-26 11:41:40', '2024-11-26 11:41:40'),
(108, 'washtraining2', 'uploads/1732621337wash_training2.jpeg', '2024-11-26 11:42:17', '2024-11-26 11:42:17'),
(109, 'wash_iom1', 'uploads/1732706496wash_iom1.jpeg', '2024-11-27 11:21:36', '2024-11-27 11:21:36'),
(110, 'wash_iom2', 'uploads/1732706566wash_iom2.jpeg', '2024-11-27 11:22:46', '2024-11-27 11:22:46'),
(111, 'wash_iom3', 'uploads/1732706610wash_iom3.jpeg', '2024-11-27 11:23:30', '2024-11-27 11:23:30'),
(112, 'activism', 'uploads/1732803596activism1.jpeg', '2024-11-28 14:19:56', '2024-11-28 14:19:56'),
(113, 'pooled  fund 5', 'uploads/1733313747pooled_fund5.jpeg', '2024-12-04 12:02:27', '2024-12-04 12:02:27'),
(114, 'pooled  fund 6', 'uploads/1733313783pooled_fund6.jpeg', '2024-12-04 12:03:03', '2024-12-04 12:03:03'),
(115, 'pooled  fund 7', 'uploads/1733313813pooled_fund7.jpeg', '2024-12-04 12:03:33', '2024-12-04 12:03:33'),
(116, 'Needs', 'uploads/1733400276needs.jpeg', '2024-12-05 12:04:36', '2024-12-05 12:04:36'),
(117, 'Needs2', 'uploads/1733400305need2.jpeg', '2024-12-05 12:05:05', '2024-12-05 12:05:05'),
(118, 'Needs3', 'uploads/1733400335needs3.jpeg', '2024-12-05 12:05:35', '2024-12-05 12:05:35'),
(119, 'save the children', 'uploads/1733594223save_the-children.jpeg', '2024-12-07 17:57:03', '2024-12-07 17:57:03'),
(120, 'save the children2', 'uploads/1733594275save_the-children4.jpeg', '2024-12-07 17:57:55', '2024-12-07 17:57:55'),
(121, 'save the children3', 'uploads/1733594311save_the-children2.jpeg', '2024-12-07 17:58:31', '2024-12-07 17:58:31'),
(122, 'ecw', 'uploads/1734106006ecw1.jpg', '2024-12-13 16:06:46', '2024-12-13 16:06:46'),
(123, 'ecw2', 'uploads/1734106043ecw2.jpeg', '2024-12-13 16:07:23', '2024-12-13 16:07:23'),
(124, 'ecw3', 'uploads/1734106092ecw3.jpeg', '2024-12-13 16:08:12', '2024-12-13 16:08:12'),
(125, 'ECW_', 'uploads/1734106237ecw1_.jpg', '2024-12-13 16:10:37', '2024-12-13 16:10:37'),
(126, 'Retreat', 'uploads/1734353081retreat1.jpeg', '2024-12-16 12:44:41', '2024-12-16 12:44:41'),
(127, 'Retreat2', 'uploads/1734353111retreat2.jpeg', '2024-12-16 12:45:11', '2024-12-16 12:45:11'),
(128, 'Retreat3', 'uploads/1734353137retreat3.jpeg', '2024-12-16 12:45:37', '2024-12-16 12:45:37'),
(129, 'visit anka', 'uploads/1734706219visit_anka.jpeg', '2024-12-20 14:50:19', '2024-12-20 14:50:19'),
(130, 'visit anka2', 'uploads/1734706242visit_anka2.jpeg', '2024-12-20 14:50:42', '2024-12-20 14:50:42'),
(131, 'visit anka3', 'uploads/1734706264visit_anka3.jpeg', '2024-12-20 14:51:04', '2024-12-20 14:51:04'),
(132, 'visit anka4', 'uploads/1734706295visit_anka4.jpeg', '2024-12-20 14:51:35', '2024-12-20 14:51:35'),
(133, 'anka_visit1', 'uploads/1737460277anka_visit1.jpg', '2025-01-21 11:51:17', '2025-01-21 11:51:17'),
(134, 'anka_visit2', 'uploads/1737460330anka_visit4.jpg', '2025-01-21 11:52:10', '2025-01-21 11:52:10'),
(135, 'anka_visit3', 'uploads/1737460350anka_visit3.jpg', '2025-01-21 11:52:30', '2025-01-21 11:52:30'),
(136, 'empower educators1', 'uploads/1737540413empower_educators1_.jpg', '2025-01-22 10:06:53', '2025-01-22 10:06:53'),
(137, 'Empower educators2', 'uploads/1737540450empower_educators2.jpg', '2025-01-22 10:07:30', '2025-01-22 10:07:30'),
(138, 'Empower educators3', 'uploads/1737540531empower_educators3.jpg', '2025-01-22 10:08:51', '2025-01-22 10:08:51'),
(139, 'Empower educators 4', 'uploads/1737540569empower_educators4.jpg', '2025-01-22 10:09:29', '2025-01-22 10:09:29'),
(140, 'Disastr Risk', 'uploads/1737626200disaster_risk3_.jpg', '2025-01-23 09:56:40', '2025-01-23 09:56:40'),
(141, 'Disastr Risk2', 'uploads/1737626221disaster_risk.jpeg', '2025-01-23 09:57:01', '2025-01-23 09:57:01'),
(142, 'Disastr Risk3', 'uploads/1737626253disaster_risk3.jpeg', '2025-01-23 09:57:33', '2025-01-23 09:57:33'),
(143, 'Day Education', 'uploads/1737714111day_education.jpg', '2025-01-24 10:21:51', '2025-01-24 10:21:51'),
(145, 'Laptop', 'uploads/1737742663laptop.png', '2025-01-24 18:17:43', '2025-01-24 18:17:43'),
(146, 'Laptop2', 'uploads/1737742733ECW laptops.jpg', '2025-01-24 18:18:53', '2025-01-24 18:18:53'),
(147, 'Laptop3', 'uploads/1737742774ECW laptops3.jpg', '2025-01-24 18:19:34', '2025-01-24 18:19:34'),
(148, 'educationai', 'uploads/1737745493education3.jpg', '2025-01-24 19:04:53', '2025-01-24 19:04:53'),
(149, 'educationai2', 'uploads/1737745548education2.jpg', '2025-01-24 19:05:48', '2025-01-24 19:05:48'),
(150, 'educationai1', 'uploads/1737746392education.png', '2025-01-24 19:19:52', '2025-01-24 19:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `amount_raised` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `imagefile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `budget`, `amount_raised`, `details`, `imagefile`, `created_at`, `updated_at`) VALUES
(6, 'Education In Emergency', '5000000', '0', '<p>Suppport our education in Emergency Program.</p>', 'uploads/1712218278_become-donor.png', '2024-04-04 08:11:18', '2024-04-04 08:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `postby` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `title`, `slug`, `postby`, `details`, `image`, `file`, `created_at`, `updated_at`) VALUES
(4, 'Qualitative Assessment of GOAL Prime Organization Nigeria Interventions', 'qualitative-assessment-of-goal-prime-organization-nigeria-interventions', 'goalprime', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">On September 5th each year, the world commemorates the International Day of Charity. It is a day recognized by the United Nations since 2012, dedicated to celebrating the power of compassion and giving.</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">The International Day of Charity reminds us of the boundless potential for good that resides within the human spirit. It calls upon individuals and organizations worldwide to extend a helping hand to those in need, emphasizing the principles of solidarity and empathy.</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">For GOALPrime Organisation Nigeria (GPON), this day represents an opportunity to showcase its enduring commitment to supporting the vulnerable and marginalized populations in North East Nigeria and other vulnerable communities across Nigeria.</div>', 'uploads/1655315472_s8.jpg', 'uploads/1696595519_1694684529_Qualitative Assessment of GPONs Interventions in Commemoration of the Intl Day of Charity 5 Sept (2).pdf', '2023-09-05 21:24:19', '2023-10-06 12:31:59'),
(8, 'UNDERSTANDING FAMILY PRIORITY AND  COMMITMENT TO CHILDREN LEARNING IN MAFA LGA, BORNO STATE', 'understanding-family-priority-and-commitment-to-children-learning-in-mafa-lga-borno-state', 'GPON Admin', '<p>A research into the understanding of family priority and commitment to children learning&nbsp;</p>', 'uploads/1706378803_ufp.PNG', 'uploads/1706378803_UNDERSTAND FAMILY PRIORITY AND COMMITMENT TO CHILDREN LEARNING_MAFA.pdf', '2024-01-27 18:06:43', '2024-01-27 18:06:43'),
(9, 'GPON 2023 Annual Report', 'gpon-2023-annual-report', 'GPON Admin', '<p>We are pleased to share GOALPrime&rsquo;s 2023 Annual Report of Impact in Nigeria with you.<br />\r\n<br />\r\nThese impact stories wouldn&rsquo;t have been possible without your continuous invaluable support and the GPON team is more than extremely grateful always.<br />\r\n<br />\r\nWe look forward to your continuous invaluable support.<br />\r\n<br />\r\nA Better Humanity is Possible.</p>', 'uploads/2023annualreport.jpg', 'uploads/1712566816_GPON Annual Report 2023 .pdf', '2024-04-08 09:00:16', '2024-04-08 09:00:16'),
(10, 'GOALPrime Organization Nigeria Monthly Newsletter-October 2024', 'goalprime-organization-nigeria-monthly-newsletter-october-2024', 'goalprime', '<p>As we reflect on a productive October, GOALPrime Organization Nigeria (GPON) remains committed to delivering impactful humanitarian and development interventions across Nigeria. In October, GOALPrime Organization Nigeria (GPON) continued to make significant strides in our mission to build resilient, safe communities across Nigeria. Through dedicated efforts in protection, education, WASH, MEAL, and logistics, our teams have delivered impactful humanitarian and development interventions in areas facing conflict, f looding, and other challenges. In Monguno, Ngala, and Konduga, GPON strengthened community safety through a series of initiatives. We engaged stakeholders in dialogue to identify pressing issues, provided teacher training on child protection, and conducted door-to-door outreach to raise awareness on child safety and rights. Our efforts enabled 300 children to receive birth certificates, securing their access to essential services. We also delivered case management services, recreational programs for thousands of children, and supported collaborative child protection meetings to address community needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These impact stories wouldn&rsquo;t have been possible without your continuous invaluable support and the GPON team is more than extremely grateful always.<br />\r\n<br />\r\nWe look forward to your continuous invaluable support.<br />\r\n<br />\r\nA Better Humanity is Possible.</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1731046976_a_lady_carrying_maiz.png', 'uploads/1731046976_Newsletter oCTOBER.pdf', '2024-11-08 06:22:56', '2024-11-08 06:24:46'),
(11, 'Celebrating International Day of Education 2025: Al and Education Preserving Human Agency in a World of Automation', 'celebrating-international-day-of-education-2025-al-and-education-preserving-human-agency-in-a-world-of-automation', 'goalprime_gpon', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Ai Education\" src=\"https://www.goalprime.org/uploads/1737746392education.png\" style=\"height:391px; width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GoalPrime Organization Nigeria (GPON) joins the global community in commemorating the International Day of Education 2025 under the theme &quot;Al and Education: Preserving Human Agency in a World of Automation.&quot; The theme highlights the importance of adopting a human-centered approach to integrating Artificial Intelligence (Al) and educational technology into learning systems. While technology can empower, it must not replace the critical role of human agency in education.</p>\r\n\r\n<hr />\r\n<p><strong><img alt=\"Education\" src=\"https://www.goalprime.org/uploads/1737745493education3.jpg\" style=\"float:right; height:330px; width:200px\" />GOALPrime&rsquo;s Commitment to Education in Emergencies</strong></p>\r\n\r\n<p>As a national non-governmental organization, GoalPrime has long been dedicated to addressing the critical gaps in education in emergencies, especially in regions deeply affected by conflict and instability. The organization has worked relentlessly to ensure children in underserved areas access safe, inclusive, and quality education regardless of their circumstances.</p>\r\n\r\n<p>In line with this year&#39;s theme, GoalPrime recognizes the transformative potential of Al in education, which can help overcome barriers to learning and bridge gaps in access and quality. However, the organization emphasizes that while technological advancements such as Al hold great promise, it is essential to preserve human agency in the educational process, ensuring that technology complements and not replaces people.</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Innovative Solutions for Education in Emergencies</strong></p>\r\n\r\n<p>To tackle the pressing educational challenges, GoalPrime has developed several innovative technological solutions, including EduTrack, EduHero Innovation Challenge, and EduConnect Al. These initiatives are designed to improve access to education and bridge existing gaps.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>EDUTRACK</strong></p>\r\n\r\n<p>EduTrack is a mobile-enabled platform that provides real-time tracking and support for education in emergencies. The platform enables educators, caregivers, and communities in crisis-affected areas, such as the BAY States (Borno, Adamawa, Yobe) and the Northwest (Sokoto, Zamfara, Katsina), to monitor children&#39;s educational progress, ensuring continuous learning during crises. Additionally, it serves as a centralized repository for validated educational data, offering valuable insights for research and improving education delivery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>EduHero Education Challenge</strong></p>\r\n\r\n<p><strong><img alt=\"Edu Hero\" src=\"https://www.goalprime.org/uploads/1737745548education2.jpg\" style=\"height:338px; width:700px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The EduHero Innovation Challenge encourages youth-led innovation by fostering creativity and problem-solving among young people. It challenges youth to create solutions that address the educational needs of their peers in underserved regions. This initiatives directly responds to the gaps in educational access, emphasizing that youth-led innovation can drive a more inclusive and sustainable educational future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>EduConnect-AI</strong></p>\r\n\r\n<p>EduConnect-Al is a groundbreaking solution that harnesses Al and solar-powered clean energy to provide sustainable educational solutions in remote, off-grid areas. It enables children and teachers to access digital learning materials and Al-powered educational tools, even in locations without reliable electricity. By deploying this Al-powered platform, GOALPrime is helping ensure that remote communities are not left behind in the global educational race. EduConnect-Al is scheduled for deployment in the 3rd Quarter of 2025.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Download The Full Statement Below:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'uploads/1737746639_education_.jpg', 'uploads/1737746250_International Day of Education Commemoration Statement[1].pdf', '2025-01-24 19:17:30', '2025-01-24 19:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `serviceimages`
--

CREATE TABLE `serviceimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `imagefile` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `caption`, `imagefile`, `details`, `created_at`, `updated_at`) VALUES
(1, 'GOALPRIME ORGANISATION NIGERIA EARLY RECOVERY SYSTEM APPROACH', 'uploads/165539962902.jpg', '<p>Early Recovery refers to the phase of assistance and support that occurs in the aftermath of a crisis or disaster, with the goal of helping affected communities regain their stability and self-reliance. This phase typically follows the initial emergency response and precedes long-term development efforts. Early Recovery activities aim to bridge the gap between immediate relief and long-term development, focusing on reestablishing essential services, rebuilding livelihoods, and restoring basic infrastructure.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GoalPrime Organisation Nigeria (GPON) plays a crucial role in the analysis and implementation of Early Recovery in humanitarian and post-crisis settings in the Northeast of Nigeria. The GPON system uses a structured approach to early recovery, which typically includes assessment, planning, and implementation phases. Here&#39;s an overview of the analysis aspect of Early Recovery within the GPON framework:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Needs Assessment</strong>. GPON, in collaboration with various partners, conducts thorough needs assessments to understand the impact of a crisis or disaster on affected communities.</p>\r\n\r\n<p>These assessments are essential to identify the specific needs and vulnerabilities of the affected population. They take into account factors such as shelter, food, water, healthcare, education, livelihoods, and protection concerns. This data informs the development of a comprehensive response strategy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Context Analysis</strong>. In addition to assessing immediate needs, GPON analyzes the broader context, considering political, social, economic, and environmental factors. This analysis helps in understanding the underlying causes of the crisis and its impact on the affected population. It also takes into account existing governance structures, local capacities, and potential risks.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Assessment of Early Recovery Priorities</strong>. Based on the needs and context analysis, GPON identifies key early recovery priorities. These include restoring essential services like healthcare, education, and clean water, supporting livelihoods, rebuilding infrastructure, and addressing protection concerns. Prioritization is crucial as resources are often limited, and it ensures that the most critical needs are addressed first. For instance, In 2022, GPON supported 6 local government areas across the Borno, Adamawa and Yobe (BAY) states especially hard-to-reach areas with water, sanitation, and hygiene (WASH), thus, aiding early recovery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Coordination and Partnerships</strong>. GPON collaborates with various stakeholders, including national and local authorities, non-governmental organizations (NGOs), international organizations, and local communities. Effective coordination is critical to ensure that resources are allocated efficiently, avoid duplication of efforts, and create a unified approach to early recovery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Resource Mobilization</strong>. Once priorities are identified, GPON works to mobilize resources, both financial and in-kind, to support early recovery efforts. This involves seeking funding from donor countries, international financial institutions, and other sources to finance the necessary activities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Monitoring and Evaluation</strong>. GPON continuously monitors and evaluates the progress of early recovery initiatives to ensure they are on track and achieving their objectives. This involves assessing the impact of interventions on the affected population and making necessary adjustments to the strategies if required.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Capacity Building</strong>. GPON often focuses on building the capacity of local authorities and communities to take ownership of the recovery process. This includes providing training, knowledge transfer, and technical support. For instance, GPON recruited, trained and engaged eighty (80) Community Hygiene Promoters (CHPs) and 16 CHPs supervisors (totaling 96 community-based hygiene promotion workers (CBHPW).</p>\r\n\r\n<p>&nbsp;</p>', '2022-06-16 16:13:49', '2023-11-15 12:13:34'),
(2, 'BEHAVIORAL CHANGE COMMUNICATION APPROACH OF GOALPRIME ORGANISATION NIGERIA', 'uploads/16998832871655323786_01.jpg', '<p>Behavioral Change Communication (BCC) refers to a strategic approach aimed at influencing and promoting positive changes in the behavior, attitudes, and practices of individuals, communities, or target groups affected by a crisis, disaster, or emergency situation. The goal of BCC is to address specific issues, such as health, hygiene, nutrition, safety, or social issues, by effectively communicating information and messages that encourage people to adopt safer, healthier, and more beneficial behaviors. It is a crucial component of public health and humanitarian responses.</p>\n\n<p>&nbsp;</p>\n\n<p>GoalPrime Organization Nigeria (GPON) aligns with the international best practices proffered by the United Nations (UN). GPON employs BCC approach as part of its efforts to promote positive changes in behavior, attitudes, and practices among affected populations. In 2022, GPON&rsquo;s Media and Advocacy Department documented over 250 activity pictures and produced over 20 donor/partner support videos. It also produced 3 short films on Child Labor, International women&#39;s Day, and Female Genital Mutilation Awareness. These communication approaches had enabled positive behavioral changes in GPON&rsquo;s intervention across the northeast.&nbsp; Here are some examples of GPON&#39;s BCC approaches in various contexts:</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Public Health and Disease Prevention</strong>. GPON, particularly with its partner such as the World Health Organization (WHO), frequently uses BCC in health campaigns. For instance, GPON have used BCC to communicate the importance of safe burial practices, handwashing, and early reporting of symptoms to prevent the spread of the virus in several IDP camps in the northeast of Nigeria. &nbsp;For instance, in 2022, to enhance effective collection and disposal of Solid waste within the IDP camps and host communities, GPON conducted two hundred and eight (208) general environmental clean-up campaigns. GPON conducted theses trainings 69 times in Mafa, 58 times in Kala Balge, 46 times in Geidam and 35 times in Yola South LGAs of Brono, Adamawa and Yola states respectively through the active community hygiene promoters and WASHCOM mobilizing community members for participation.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Nutrition and Food Security</strong>. Due to the insurgency in the northeast of&nbsp;Nigeria millions of people faced food shortages and scarcity leading to regions facing food insecurity and malnutrition. GPON, in collaboration with donor agencies deployed BCC to educate communities about nutrition, proper food preparation, and the importance of diverse diets. Our means of communication were through local media, community workshops, and educational materials amongst others.</p>\n<p>&nbsp;</p>\n<p><strong>Water, Sanitation, and Hygiene (WASH)</strong>. GPON, use BCC to promote good hygiene practices in areas with limited access to clean water and sanitation facilities. For instance, GPON BCC campaigns focuses on handwashing with soap, safe water storage, and the construction and maintenance of latrines in refugee camps or disaster-affected areas.</p>\n\n<p>&nbsp;</p>\n\n<p><a name=\"_Hlk150246995\"><strong>Conflict Resolution and Peacebuilding</strong></a>. &nbsp;In conflict-affected of the Nigeria&rsquo;s northeast, GPON have been promoting behavior change related to conflict resolution and peacebuilding. Our messages encourage dialogue, reconciliation, and non-violent conflict resolution strategies to reduce tensions and promote peace. For instance, GPON conducted conflict resolution and peacebuilding education programmes in collaboration with the State Agency for Mass Education (SAME) which lasted for lasted for 6 months. The 282 participants were later mainstreamed into formal schools in Kala-Balge and Mafa L.G.A of Brono State.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Gender Equality and Women&#39;s Empowerment</strong>. GPON&#39;s BCC efforts also extend to gender-related issues, such as promoting gender equality and women&#39;s empowerment. GPON BCC campaigns had addressed topics like women&#39;s rights, access to education, and economic opportunities for women and girls. For instance, in the months of February and March 2022, an average of 157 younger adolescent girls, and 116.5 older adolescent girls were engaged in life skill training by GPON. Equally, GPON conducted gender equality talks and campaigns such as child marriage, myths about child marriage, harmful effects of child marriage, key steps in deciding, if, when and who to marry, Gender and conflict, assertive communication, sexual health and reproductive health, right to consent, preventing STI&rsquo;s, teenage pregnancy, personal hygiene, etc.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Human Rights and Protection</strong>. In areas with human rights abuses and protection concerns, GPON have used BCC to raise awareness about individuals&#39; rights and the importance of reporting violations. GPON followed the footstep of some of her partners such as United Nations High Commissioner for Refugees (UNHCR), to inform refugees and internally displaced people about their rights and options for protection. GPON mandate making the lives of vulnerable people better in Nations is key in advancing the right of people, supporting development and building resilience in conflict affected people.</p>\n\n<p> <p>&nbsp;</p><strong>Emergency Preparedness and Response</strong>. GPON utilizes BCC in disaster-prone in our intervention states in Nigeria to educate numerous communities about emergency preparedness and response measures. This includes information about evacuation procedures, safe shelter, and first aid techniques.</p>\n<p>&nbsp;</p>\n<p><strong>Climate Change and Environmental Sustainability</strong>. With a focus on sustainability, GPON use BCC to raise awareness about climate change and environmental conservation. GPON messages have encouraged sustainable practices, such as reducing plastic waste, conserving natural resources, and adopting clean energy technologies.</p>', '2022-06-16 16:14:53', '2023-11-13 13:48:07'),
(3, 'GOALDPRIME ORGANISATION NIGERIA PEACE BUILDING APPROACH', 'uploads/16998852671698661963water-quality.jpg', '<p>GoldPrime Organisation Nigeria (GPON) employs a comprehensive and multidimensional approach to peacebuilding, which is articulated through various frameworks, documents, and agencies. GPON Peacebuilding model seeks to prevent the recurrence of conflict and to support the recovery and development of communities affected by violence and instability. GPON have a set of principles aimed at actualizing peacebuilding in conflict zones in Nigeria. These are highlighted subsequently.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conflict Analysis</strong>.&nbsp;&nbsp; Understanding the root causes, dynamics, and actors involved in a conflict is a fundamental step. GPON conducts comprehensive conflict analyses to identify the key drivers of the conflict and inform the design of peacebuilding strategies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gender Mainstreaming</strong>. Gender considerations are integrated into all aspects of peacebuilding, recognizing the unique needs and roles of women and girls in the northeastern conflict areas of Nigeria. GPON promotes women&#39;s participation in peace processes and addresses gender-based violence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Monitoring and Evaluation</strong>. GPON continually monitors and evaluates the impact of peacebuilding activities, adjusting strategies as necessary to ensure they remain effective and responsive to changing circumstances.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conflict Prevention</strong>. In addition to post-conflict peacebuilding, GPON places a strong emphasis on conflict prevention to address underlying grievances and prevent the outbreak or recurrence of conflict.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>International Cooperation</strong>. GPON works in collaboration with numerous international organizations, such as the European Union, and other international partners to ensure a coordinated and effective approach to peacebuilding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Integrated Approach</strong>. GPON adopts an integrated approach that brings together different GPON entities and international partners to coordinate her efforts. This approach ensures that political, security, development, and humanitarian dimensions are considered holistically.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Inclusivity and Ownership</strong>. GPON promotes the active participation and ownership of local communities and national authorities in the peacebuilding process. This includes engaging with a wide range of stakeholders, including fellow civil society organizations, women, youth, and marginalized groups.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Strategic Planning</strong>. GPON continually develops strategic peacebuilding plans in consultation with the state Government, kings, palace chiefs and the local heads of the host states. GPON focuses on key priority areas such as governance, security sector reform, rule of law, social and economic development, and reconciliation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rule of Law</strong>. Promoting the rule of law is a cornerstone of GPON peacebuilding efforts. This includes supporting justice and legal institutions, as well as efforts to combat impunity and promote accountability for human rights violations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Security Sector Reform (SSR)</strong>. GPON helps reform and rebuild security institutions to make them more accountable, professional, and responsive to the needs of the population. This includes training, capacity building, and disarmament, demobilization, and reintegration (DDR) programs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Economic Recovery and Development</strong>. GPON peacebuilding involves efforts to kickstart economic recovery, promote job creation, and foster sustainable development. This include infrastructure development, vocational training, and support for small and medium-sized enterprises.</p>\r\n\r\n<p>&nbsp;</p>', '2022-06-21 08:08:00', '2023-11-13 14:21:07'),
(7, 'Early Recovery & Livelihood Support', 'uploads/1655803060s7.jpg', '<p>Early Recovery &amp; Livelihood Support</p>', '2022-06-21 08:17:40', '2022-06-21 08:17:40'),
(8, 'Needs Assessment & Research', 'uploads/1655803177s5.jpg', '<p>Needs Assessment &amp; Research</p>', '2022-06-21 08:19:37', '2022-06-21 08:19:37'),
(12, 'GOALPRIME ORGANISATION NIGERIA SOCIO-ECONOMIC REINTEGRATION INITIATIVES', 'uploads/17005831121694514249_1 dollar.jpg', '<p>Socio-economic reintegration is an essential component of post-conflict recovery, focusing on the social, economic, and psychological aspects of individuals and communities who have been affected by conflict.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Socio-economic reintegration is the multifaceted process of reintegrating individuals and communities affected by conflict, disaster, or displacement into the social, economic, and psychological fabric of society. It encompasses the restoration of livelihoods, access to education and healthcare, psychosocial support, community engagement, and the reestablishment of social networks. Successful socio-economic reintegration promotes sustainable peace, economic recovery, and the restoration of social cohesion in post-conflict or post-disaster settings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;GoalPrime Organisation Nigeria (GPON) views Socio-economic reintegration in the context of the northeast post-conflict situation as the reintegration of ex-combatants, displaced populations, and vulnerable groups into the social and economic fabric of society.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Over the years GPON have employed various approaches and strategies to address socio-economic reintegration in post-conflict and post-disaster settings in the northeast of Nigeria, especially in the BAY states. These approaches have facilitated the successful reintegration of individuals and communities affected by conflict, displacement, or humanitarian crises into the economic, social, and psychological fabric of society.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Underlisted are specific strategies GPON and several overarching principles guiding GPON&#39;s efforts in socio-economic reintegration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Inclusivity and Participation</strong>. GPON places a strong emphasis on involving affected communities and individuals in the design and implementation of reintegration programs. This participatory approach ensures that the solutions are contextually relevant and that the voices and needs of the people are heard.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Holistic Approach</strong>. GPON recognizes that socio-economic reintegration is a multifaceted process. It addresses livelihoods, education, healthcare, psychosocial support, and community engagement to foster a comprehensive approach that goes beyond economic aspects.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gender Mainstreaming</strong>. Gender considerations are central to GPON strategies in socio-economic reintegration. These strategies ensure that the unique needs and experiences of women, men, girls, and boys are taken into account in program design, implementation, and evaluation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rule of Law and Justice</strong>. Establishing the rule of law and ensuring access to justice are fundamental to GPON in creating an environment where socio-economic reintegration can take place. This includes addressing human rights abuses and ensuring accountability.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Community-Based Initiatives</strong>. GPON encourages community-based approaches, where local communities play a significant role in driving reintegration efforts. These initiatives are often essential for building social cohesion and trust.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Capacity Building</strong>. GPON focuses on strengthening the capacities of local institutions, government agencies, and civil society organizations to lead and sustain reintegration efforts over the long term.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Economic Recovery and Livelihoods.</strong> Facilitating economic recovery and income-generating opportunities is a critical aspect of GPON strategies. This can include vocational training, job placement, microfinance programs, and support for small and medium-sized enterprises.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Education and Healthcare</strong>. Access to quality education and healthcare services is essential for reintegration. GPON works to rebuild and improve education and healthcare systems in affected areas of northeastern Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Psychosocial Support</strong>. Recognizing the psychological trauma experienced by many individuals affected by conflict or disasters in northeastern Nigeria, GPON provides psychosocial support services to address trauma, stress, and mental health issues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Monitoring and Evaluation</strong>. GPON continually monitors and evaluates the effectiveness of reintegration programs, making adjustments as necessary to ensure that they meet their objectives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Coordination and Collaboration</strong>. Collaboration and coordination among GPON agencies, government bodies, local organizations, and international partners are central to the success of reintegration efforts. This prevents duplication of efforts and ensures a unified approach.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conflict Prevention</strong>. In addition to post-conflict reintegration, GPON emphasizes conflict prevention to address the root causes of conflict and reduce the risk of recurrence.</p>', '2023-11-21 16:11:52', '2023-11-21 16:11:52'),
(13, 'MEETING THE NEEDS OF COMMUNITIES IN THE NORTHEAST OF NIGERIA THROUGH LOCALIZATION DRIVES', 'uploads/17005842001655315352_s1.jpg', '<p>International organizations have continued to advocate for policy changes within their own organizations and among donors to support localization efforts. This includes changes in funding practices, more flexible reporting requirements, and greater recognition of the role of local actors in humanitarian response. &nbsp;It has been discovered that the localization drive fosters closer engagement with affected communities and encourages their active participation in decision-making processes through local Non-Governmental Organisations. This helps ensure that the assistance provided is relevant and responsive to the communities&#39; needs and preferences.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GoalPrime Organisation Nigeria (GPON) is aware that the goal of localization is to enhance the effectiveness, efficiency, and sustainability of humanitarian response by international agencies. To that extent, GPON has over the years met the expectations of her partners and donors in this regard. The Humanitarian Response Plan for Nigeria includes localization as a key principle. It recognizes the importance of local leadership and participation in humanitarian activities and emphasizes the role of local organizations in response efforts. GPON, therefore, appreciates her partners and donors who had empowered us to take a leading role in addressing our own needs during emergencies and crises.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON have been able to assume the leadership and ownership of humanitarian response in the northeast of Nigeria. We have also seen our organisation as the primary stakeholders who understand the context, culture, and needs of the affected populations in the northeast. Despite this, GPON have been able to collaborate with her international partners in the areas of capacity-building, resource-sharing, and joint planning and implementation of relief and development projects.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To this end, the role of GPON in localization in the northeast of Nigeria is essential in creating a more inclusive, effective, and sustainable humanitarian and development response.</p>', '2023-11-21 16:30:00', '2023-11-21 16:30:00'),
(14, 'EARLY CHILDHOOD DEVELOPMENT', 'uploads/1702378212s6.jpg', '<p>Early Childhood Development (ECD) is a critical focus area for GOLDPrime Organisation Nigeria (GPON) especially in the in the northeast of Nigeria, given the impact of conflict, displacement, and other challenges on the well-being of young children. The concept of ECD in GPON in this context encompasses a range of programs and interventions aimed at promoting the holistic development of children in their early years.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Under GPON nutritional initiatives, it launched a nutrition program in Mafa (GGASS Camp and Hausari Host community) and Rann Kalabalge, the program is design to support pregnant and lactating mother with children under five years. GPON equally carried out Community mobilization which provides, active case finding, early detection, referral of cases and follow up of cases discovered. GPON also engaged the appropriate state authority and LGA authorities for formalization and signing of relevant MOUs with the state primary healthcare and targeted community to start the Nutrition program.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In 2022, GPON with this same mandate created IYCF Counselling Group (Infant and Young Women Child Feeding) where sensitization and screening of children was conducted. To that effect, door to door sensitization was conducted alongside active case finding for children under five years of age. During the exercise, Severe Acute Malnutrition (SAM) cases discovered was referred to UNICEF OTP while the Moderate Acute Malnutrition (MAM) cases, GPON enrolled Women whose children were screened and confirm MAM within the age 6-59 month. These children were reached with Targeted supplementary feeding using TOM BROWN approach. Apart from Nutrition, GPON also focuses on other components of the ECD in the northeast of Nigeria. They include early learning opportunities, parental and caregiver support, parenting education and inclusive education. GPON believes that by addressing the unique needs of young children in the northeast of Nigeria, would be tantamount to contributing to laying the foundation for their future success and well-being.</p>', '2023-12-12 10:50:12', '2023-12-12 10:50:12'),
(15, 'WATER, SANITATION AND HYGIENE', 'uploads/1702378366slider2.jpg', '<p>WASH, which stands for Water, Sanitation, and Hygiene, is a crucial area of focus for NGOs operating in the northeast region of Nigeria, particularly given the challenges posed by conflict, displacement, and other emergencies. The WASH concept in GOALPrime Organisation Nigeria (GPON) in this context involves comprehensive efforts to improve access to clean water, sanitation facilities, and hygiene practices among communities affected by crises Borno, Adamawa and Yobe (BAY) states.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>According to the Joint Monitoring Programme (JMP) by WHO and UNICEF, in 2021, an estimated 3.4M people in the BAY States lacked access to basic sanitation services, of which 2.8M were practicing open defecation, and 2.9M people lacked access to basic drinking water services. More so, 1.9M people were also dependent on unsafe and untreated water. To that extent GPON mitigates these conditions by supporting water, sanitation, and hygiene (WASH) in six Local Government Areas (LGAs) across the BAY states especially hard-to-reach areas, with the intention of contributing to the realization of Sustainable Development Goal (SDG) 6, which aims to achieve universal and equitable access to safe water, sanitation, and hygiene for all by 2030. As such GPON has made significant progress in the LGAs toward ensuring universal access to basic WASH services. GPON&rsquo;s contributions in 6 LGAs. The population practicing open defecation across the six LGAs had reduced by 65 per cent in 2022, and the population relying on unsafe water for drinking and domestic use had decreased by percent.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON&rsquo;s concept of WASH activities in the northeast of Nigeria is not just about providing immediate relief; it&#39;s about building resilience, promoting sustainable practices, and improving the overall health and well-being of communities in the face of complex challenges. The concept integrates humanitarian response with long-term development goals to create lasting positive impacts.</p>', '2023-12-12 10:52:46', '2023-12-12 10:52:46'),
(16, 'EDUCATION IN EMERGENCIES', 'uploads/1702379116slider1.jpg', '<p>Education in emergencies is a critical component of humanitarian response, particularly in regions facing conflict, displacement, and other crises. In the case of the northeast of Nigeria, which has been significantly affected by the Boko Haram insurgency, GOALPrime Organisation (GPON) Nigeria played a crucial role in providing education services, addressing the challenges faced by children and communities, and contributing to the overall recovery and resilience of the region especially between Brono, Adamawa and Yola (BAY States). To that effect, in 2022 alone, through the ECW STREETCHILD Consortium Project Year one, GPON carried made seven key achievement. Three among them are the provision and access to basic education for a total of 312 children in two sections: Alternative learning session for 137 all-girls learners and non-formal education session for 175 boys and girls learners. GPON also constructed two temporary learning spaces (TLS). One each in Kala-Balge and Mafa LGA. These facilities were constructed in areas affected by emergencies or crisis situations, such as conflict or displacement, the temporary learning spaces were designed to be gender-sensitive and disability-inclusive, creating a safe and conducive environment for children to learn and grow, despite challenging circumstances. Also GPON provided scholastic materials to 307 learners and teachers materials to CVTs, including classroom furniture, whiteboards, markers, teaching manipulatives and mats, to support effective teaching and learning.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON&rsquo;s involvement in education in emergencies in the BAY States of Nigeria play a vital role in ensuring that children affected by conflict have access to quality education, despite the challenging circumstances. GPON&rsquo;s comprehensive approach addresses not only meets immediate educational needs but also factors in psychosocial well-being, community engagement, and the broader goal of sustainable recovery and development. Through GPON&rsquo;s dedication and collaborative efforts with ECW STREETCHILD, GPON has contribute significantly to building the resilience of individuals and communities in the face of adversity.</p>', '2023-12-12 11:05:16', '2023-12-12 11:05:16'),
(17, 'Adolescent Development', 'uploads/1702380178slider2.jpg', '<p>Adolescent development marks a critical phase of transition from childhood to adulthood, encompassing physical, cognitive, emotional, and social changes. This period, between ages 10 and 19, is characterized by rapid growth and transformation, where individuals form their identities, navigate relationships, and acquire skills crucial for their future.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Physically, adolescents experience significant changes such as puberty, growth spurts, and brain development, influencing their behaviors and decision-making processes. Cognitive abilities, including reasoning, problem-solving, and abstract thinking, undergo refinement, shaping their capacity for learning and adapting to new challenges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Emotionally, adolescents often grapple with heightened sensitivity, exploring their own emotions and understanding those of others. Socially, they seek independence, form friendships, and begin to establish their place within society, often influenced by family, peers, and community.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GOALPrime Organisation Nigeria, we believe that investing in adolescent development is crucial as it lays the groundwork for their future well-being and contribution to society. Therefore, it is imperative that development partners work with GOALPrime in provide tailored interventions to fostering adolescent development across Nigeria for enhanced human security. Hence, supporting this phase requires holistic approaches that provide access to education, healthcare, mental health support, and opportunities for skill-building and leadership.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With invaluable partnership we can build a future that utilizes the strength and resilience of adolescence for enhanced national development. Thus, empowering adolescents fosters<a href=\"#_msocom_1\" id=\"_anchor_1\" name=\"_msoanchor_1\">[L1]</a>&nbsp; resilience, enhances their capabilities, and enables them to become active participants in shaping a better world for themselves and future generations.</p>\r\n\r\n<hr />\r\n<p><a name=\"_msocom_1\"></a></p>', '2023-12-12 11:22:58', '2023-12-12 11:22:58'),
(18, 'Child Rights', 'uploads/1702380566slider1.jpg', '<p>Child rights encompass the fundamental entitlements and protections guaranteed to all children to ensure their well-being, safety, and development. Rooted in international agreements like the United Nations Convention on the Rights of the Child (UNCRC), child rights advocate for a child-centered approach that acknowledges their inherent dignity and fosters their physical, emotional, and intellectual growth.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These rights include, but are not limited to:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Right to Survival</strong>: Ensuring access to adequate nutrition, healthcare, and shelter to survive and thrive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Right to Protection</strong>: Protection from abuse, exploitation, neglect, and all forms of violence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Right to Development</strong>: Access to education, play, cultural activities, and opportunities for social and cognitive development.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Right to Participation</strong>: Encouraging children to express their opinions, be heard, and participate in decisions affecting their lives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Right to Non</strong>-<strong>Discrimination</strong>: Every child has the right to equal opportunities and treatment regardless of race, gender, religion, or any other status.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Upholding these rights demands the collaboration of development partners, governments, communities, families, and organizations to create environments where children can grow up in safety and security, where their voices are heard and their best interests are prioritized. Protecting and advocating for child rights is a key focus of GOALPrime Organization Nigeria, we tailor bespoke interventions with the aid of development partners in creating a world where every child can fulfill their potential and live a life free from harm and inequality.</p>', '2023-12-12 11:29:26', '2023-12-12 11:29:26'),
(19, 'Child Protection in Emergencies', 'uploads/1702381345slider1.jpg', '<p>GoalPrime Organisation Nigeria stands as a beacon of hope during crises, dedicated to Child Protection in Emergencies (CPiE) through swift and targeted interventions. In the face of natural disasters, conflicts, or pandemics, our organization takes immediate action to safeguard children who are most vulnerable to the perils of such situations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our CPiE interventions carried out in tandem with development partners are meticulously designed to address the urgent needs of children affected by emergencies. We deploy rapid response teams equipped with expertise in child protection, ensuring the immediate establishment of safe spaces, provision of psychosocial support, and the prevention of exploitation, abuse, and trafficking.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At GoalPrime, our interventions focus on not only meeting the immediate physical needs of children but also on their mental and emotional well-being. We collaborate closely with local communities and authorities to build resilience and restore a sense of normalcy for children amidst chaos. Through partnerships with governmental and non-governmental entities, we advocate for policies that prioritize child protection in emergency response protocols.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our efforts extend beyond crisis moments, encompassing comprehensive preparedness plans, training, and capacity-building programs for communities to effectively respond to emergencies. GoalPrime Organization&#39;s commitment lies in creating a safer and more secure environment for every child, ensuring they receive the protection and care they deserve, even in the most challenging circumstances.</p>', '2023-12-12 11:42:25', '2023-12-12 11:42:25'),
(20, 'Climate Change and Environment', 'uploads/1702381575slider2.jpg', '<p>Climate change poses one of the most significant threats to our planet and, inevitably, to the well-being of current and future generations, particularly vulnerable communities, women and children. GoalPrime Organization recognizes the urgent global need to address the implications of Climate Change in a bid to preserve the environment to secure a sustainable future for all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our interventions align with a holistic approach aimed at mitigating environmental degradation and fostering resilience in the face of climate-related challenges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our organization is at the forefront of interventions that mitigate the effects of climate change on the environment. We implement programs aimed at environmental conservation, promoting sustainable practices, and advocating for policies that reduce carbon emissions and protect natural resources.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Furthermore, our organization actively engages in projects that integrate climate-smart technologies, renewable energy solutions, and sustainable agricultural practices. By investing in eco-friendly initiatives, we aim to create a more resilient environment for children, enabling them to thrive in a world where the impacts of climate change are minimized.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In response to the escalating environmental threats, GoalPrime Organization Nigeria implements multifaceted strategies embedded in tailored interventions:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Community Empowerment:</strong> We work closely with local communities to raise awareness about climate change, its implications, and the importance of sustainable practices. Through education and capacity-building programs, we empower communities to adopt eco-friendly initiatives that promote environmental conservation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Sustainable Solutions:</strong> GoalPrime Organization Nigeria spearheads projects centered around renewable energy, sustainable agriculture, and waste management. By introducing innovative and sustainable technologies, we aim to reduce carbon footprints and minimize the environmental impact, fostering a more sustainable ecosystem.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Advocacy and Policy Engagement:</strong> We actively engage in advocacy efforts, collaborating with governmental bodies and stakeholders to influence policies that prioritize environmental protection. By advocating for environmentally conscious policies and practices, we aim to create a conducive regulatory framework that promotes sustainability.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Research and Innovation:</strong> Through research initiatives and partnerships, GoalPrime Organization Nigeria promotes the development and implementation of innovative solutions to environmental challenges. These solutions range from climate-resilient agricultural practices to technology-driven approaches for sustainable resource management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GoalPrime Organization&#39;s Nigeria interventions in preserving the environment amidst the challenges of climate change in Nigeria are geared towards creating a more sustainable future for communities, safeguarding natural resources, and ensuring a healthier environment for current and future generations.</p>', '2023-12-12 11:46:15', '2023-12-12 11:46:15'),
(21, 'Children with Disabilities', 'uploads/1702381772slider1.jpg', '<p>Children with disabilities in Nigeria encounter numerous challenges in accessing adequate healthcare, education, and social inclusion, hindering their holistic development. According to the World Health Organization (WHO), around 5-15% of the global population comprises individuals with disabilities, and in Nigeria, an estimated 3.6 million children live with disabilities (UNICEF).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Access to healthcare remains a critical issue for these children, with significant disparities in services and resources. Only about 10% of children with disabilities in Nigeria have access to appropriate healthcare interventions (WHO). Additionally, education opportunities for children with disabilities are limited, with approximately 95% out of school, facing barriers due to inaccessible facilities and lack of trained educators (UNICEF).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Social stigma and discrimination further exacerbate the challenges faced by these children. They often experience exclusion from community activities and face barriers to social participation. The Federal Government of Nigeria has made strides in adopting policies like the Discrimination Against Persons with Disabilities (Prohibition) Act, yet implementation and enforcement remain key challenges. Through informed research our Implementation Research and Policy Influencing Team at GoalPrime Organization are working assiduously to ensure that stale policies are reviewed and impactful polices implemented.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Despite these challenges, GOALPrime Organization Nigeria, advocates for the rights of children with disabilities, offering support services, advocating for policy changes, and promoting inclusive practices in education and healthcare.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Through targeted interventions, our goal at GOALPrime with the aid of developmental partners, is to provide interventions that enhance accessibility to education through inclusive schooling models and the provision of assistive devices, provision of healthcare programmes and offering specialized care and rehabilitation services tailored to the needs of children with disabilities.</p>', '2023-12-12 11:49:33', '2023-12-12 11:49:33'),
(22, 'Early Childhood Development', 'uploads/1702382078slider1.jpg', '<p>Early childhood development (ECD) plays a pivotal role in shaping a child&#39;s future, influencing their cognitive, emotional, and social well-being. The first 1,000 days from conception to age 3 are particularly crucial, impacting brain development and laying the foundation for lifelong learning and health.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In Nigeria, data reveals both progress and challenges in early childhood development. According to UNICEF, around 30% of Nigerian children under 5 are stunted, highlighting the prevalence of malnutrition and its impact on early development. Access to quality early childhood education remains limited, with approximately 40% of children not attending any form of pre-primary education (UNESCO).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To this end, GoalPrime Organization Nigeria provides tailored interventions that mitigate the militating effect of OOSC, Malnutrition and limited access to quality education amongst others. At GoalPrime, we also strive to ensure that policies like the National Policy on Early Childhood Care and Development (ECCE) are robustly implemented and that resource allocation are provided for developmental intervention in these sectors.</p>', '2023-12-12 11:54:38', '2023-12-12 11:54:38'),
(23, 'Sustainable development', 'uploads/1702382369slider1.jpg', '<p>Sustainable development lies at the core of GoalPrime Organization&#39;s mission in Nigeria, recognizing the interdependence of social, economic, and environmental factors in achieving long-term prosperity while preserving resources for future generations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nigeria faces numerous sustainability challenges, including environmental degradation, poverty, and inadequate access to basic services. According to the World Bank, over 40% of the population lives below the poverty line, and environmental issues like deforestation and pollution continue to threaten the country&#39;s ecosystems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hence, Goalprime Organization Nigeria, advocates for policies that support sustainable development practices at local, regional, and national levels. By collaborating with government bodies and stakeholders, GoalPrime seeks to influence policy frameworks that prioritize sustainability and environmental conservation.</p>', '2023-12-12 11:59:29', '2023-12-12 11:59:29'),
(24, 'GOALPRIME POLICY INFLUENCING ATTAINMENTS', 'uploads/1702382760s3.jpg', '<p>Policy influencing in GOALPrime governmental Nigeria (GPON) involves efforts to shape, change, or influence policies and practices at various levels, including local, national, and international. This strategic engagement in the policymaking process is a crucial aspect of GPON&rsquo;s work, aiding in the achievement of their objectives and promoting positive social change.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For instance, GPON has worked to influence some national policies as underlisted:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>National Water Supply and Sanitation Policy (2000)</strong>. GPON has submitted useful information during stakeholder meeting in providing framework for the development of water supply and sanitation services in Nigeria. Our major contribution has been in the area of emphasizing sustainability, equity, and community participation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>National Environmental Sanitation Policy (2005)</strong>. GPON has contributed to promoting environmental sanitation and hygiene practices to prevent waterborne diseases and improve overall public health.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>National Policy on Education (2013)</strong>. GPON has contributed to government&#39;s commitment to providing quality education. GPON core contributions has been in the areas of addressing issues related to school access, gender equity, and quality across all levels of education.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Safe Schools Initiative (SSI)</strong>. in addition to government efforts in SSI, GPON has created sub initiatives to create safe, secure, and protective learning environments, particularly in regions affected by conflict and emergencies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>National Policy on Food and Nutrition (2001)</strong>. GPON has been addressing issues related to food security, nutrition, and the overall well-being of the population.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In summary, policy influencing has been a strategic tool utilized by GPON to achieve its objectives by creating an enabling environment, addressing systemic issues, and contributing to positive, sustainable change.</p>', '2023-12-12 12:06:00', '2023-12-12 12:06:00'),
(25, 'GOALPRIME ORGANISATION NIGERIA ADVOCACY', 'uploads/1702382935s3.jpg', '<p>GOALPrime Organisation Nigeria (GPON) Advocacy approaches include strategic and deliberate efforts to influence policies, practices, and decisions at various levels&mdash;locally and nationally. The essence is to promote positive change in line with the GPON&#39;s humanitarian objectives. Advocacy is a key component of GPON objectives as it aims to address the root causes of crises, alleviate suffering, and uphold the rights and dignity of affected populations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Key aspects of GPON&rsquo;s advocacy includes policy Influencing, public awareness and education, human rights and protection, resource mobilization, partnership building, coordination and networking and community engagement among several others.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For instance, in 2022, GPON reached 18,274 conflict-affected people living in camps and host communities across Mafa, Kala Balge, MMC, Jere, Geidam, and Yola South, LGAs of the Brono Adamawa and Yobe States with hygiene promotion sensitization activities via a door-to-door approach. 850,000 individuals were reached via mega speaker advocacy campaign and motorized mass campaigns using the Northeast WASH-in-Emergencies Sector approved jingles. GPON equally, supported the production of Information Education Communication materials and jingles for risk communication, especially during the cholera outbreak in MMC, Jere, and Mafa LGAs of Borno state. Partners and government agencies received the IEC products through the WASH Common Pipelines for advocacy and promotion in camps and communities which helped to generate and sustain momentum of good hygiene practices. The IEC Materials and jungles were of different local languages vis-a-vis Hausa, Kanuari, Fulfulde, shuwa arab and English.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GPON&rsquo;s advocacy continues to be driven by the principles of humanity, impartiality, neutrality, and independence. By advocating for positive change, GPON seeks to improve the overall well-being and protection of communities affected by crises.</p>', '2023-12-12 12:08:55', '2023-12-12 12:08:55');
INSERT INTO `services` (`id`, `caption`, `imagefile`, `details`, `created_at`, `updated_at`) VALUES
(26, 'GOALPRIME ORGANISATION NIGERIA SYSTEM STRENGTHENING', 'uploads/1702383130s6.jpg', '<p>GOALPrime Organisation Nigeria (GPON) System strengthening refers to efforts aimed at enhancing the capacity, effectiveness, and sustainability of the organizational systems and structures that support the delivery of programs and services. This involves strengthening our internal processes, management systems, and organizational capacities to ensure that GPON can achieve their mission and objectives more efficiently and impactfully. To that extent, GPON has strengthened her system in the following areas:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Organizational Capacity Building</strong>. GPON has invested in building the overall capacity of their staff, including training programs, skill development, and knowledge-sharing initiatives. This encompasses areas such as project management, financial management, monitoring and evaluation, and leadership development. For instance, in April 2022, a comprehensive training program was initiated for the project team, including Community Volunteer Mentors, officers, and support staff. This training covered various project deliverables and key aspects such as psychosocial support, life skills, gender-based violence, child protection, information management, and MEAL requirements, ensuring the team was well-prepared for the project&#39;s successful implementation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Financial Management Systems</strong>. GPON strengthen financial management systems to ensure transparency, accountability, and compliance with regulations. This includes effective budgeting, financial reporting, and internal controls. GPON conducts her audit in accordance with International Standards on Auditing. As such our responsibilities under those standards are further described in the Auditor&rsquo;s Responsibilities for the audit of the Financial Statements section of our report. To that extent, the audit team are independent of GPON in accordance with the requirements of the Institute of Chartered Accountants of Nigeria (ICAN) Professional Code of Conduct and Guidance for Accountants (ICAN Code) and other independence requirements applicable to performing audits of financial statements in Nigeria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Human Resources Management</strong>. GPON focuses on building strong human resources management systems, covering areas such as recruitment, staff development, performance management, and employee well-being. A skilled and motivated workforce is critical for achieving organizational goals. In 2022, GPON saw an impressive 90.25% employee participation in various training programs, reinforcing our commitment to capacity-building. Of these, 70% were men and 30% were women. Notably, 65.2% of the trained staff were located in the field, with the remaining 34% spread across Maiduguri and Jere LGAs. We offered a diverse range of 58 self-paced online courses (Kaya), encompassing thematic, programmatic, cross-cutting, behavioral, and interpersonal skills. Remarkedly, GPON, made significant stride in her capacity-building efforts by supporting over 15 technical staff with a total investment of N4,186,277.78 towards their certification programs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information Management and Technology. </strong>GPON has invested in information management systems and technology to streamline operations, enhance data collection and analysis, and improve communication both internally and externally. GPON, in collaboration with the Humanitarian Press and Studio throughout provided unwavering support to various sectors and organizations. This support encompasses the creation of jingles, animations, illustrations, photography rendering, videography, and printing services. Additionally, GPON has effectively disseminated essential messages across various thematic areas through radio and social media channels. In 2022 alone, the Humanitarian Studio and Press achieved remarkable results, including the production of 48 jingles, 64 animations, 150 illustrations, over 20 videos, and the documentation of over 200 actively images. These efforts reached an estimated 1.2 million individuals, demonstrating the substantial impact of GPON&rsquo;s information and management technology initiatives.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Monitoring and Evaluation (M&amp;E).</strong> System strengthening involves developing robust M&amp;E systems to assess the impact and effectiveness of programs. This includes defining indicators, collecting and analyzing data, and using findings for adaptive management. For instance, in 2022, monitoring visits by SAME were conducted in Q1, Q2, Q3 and Q4 respectively of the across the 8 ABEP centers in Damaturu and Gujba LGA&rsquo;s. This activity was led by the GPON team to provide mentorship support to facilitators and assess the quality of teaching administered in ABEP centers. Two (2) master trainers from SAME visited all 8 ABEP centers in Damaturu and Gujba for 3 hours each day. A total of 40 monitoring visits were held while PLAN International provided the monitoring tool.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Partnership and Collaboration Development.</strong> GPON continues to work on enhancing their ability to engage in partnerships and collaborations. This involves building relationships with other organizations, government entities, and communities to amplify the impact of their work. In collaboration with UNICEF and the Ministry of Women Affairs, an orientation session was conducted for foster parents. The session focused on positive parenting, child support, and goal-setting, and 100 foster parents across four LGAs in Brono State were trained. Also, in First Quarter of 2022, GPON conducted the recruitment of 15 ABEP facilitators (7 to replace vacant positions and 8 additional facilitators for the 8 Yobe ABEP centres) with the support of PLAN International and in collaboration with Yobe State Agency for Mass Education.</p>', '2023-12-12 12:12:10', '2023-12-12 12:12:10'),
(27, 'THE LANDSCAPE OF DEVELOPMENT IN GOALPRIME ORGANIZATION NIGERIA', 'uploads/1702393943s3.jpg', '<p>GOALPrime Organisation Nigeria (GPON) is playing a pivotal role in addressing societal challenges, championing social justice, and promoting positive change. As the world faces increasingly complex issues, the development landscape within GPON is evolving, demanding a strategic and adaptive approach to achieve meaningful impact. GPON explores the multifaceted aspects of development in NGOs, emphasizing the key dimensions that contribute to organizational growth, sustainability, and effectiveness.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The journey of development in GPON has been dynamic and ever-evolving. So far, the organization has embraced a holistic approach that encompasses organizational capacity building, strategic planning, program effectiveness, financial sustainability, and collaborative engagement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As such GPON has positioned itself to make a lasting impact on the communities we serve. GPON continues to strive in playing a vital role in shaping a more equitable and sustainable world. We have made substantial progress.</p>', '2023-12-12 15:12:23', '2023-12-12 15:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A Better Humanity is Possible', 'uploads/1655315352_s1.jpg', 1, '2022-06-15 16:49:12', '2022-10-03 19:36:57'),
(2, 'All We do, We do for the Love of Humanity', 'uploads/1655315405_s2.jpg', 1, '2022-06-15 16:50:05', '2022-06-15 16:50:20'),
(3, 'We improve the lives of conflict affected children and their caregivers.', 'uploads/1655315472_s8.jpg', 0, '2022-06-15 16:51:12', '2023-09-28 17:07:18'),
(4, 'We improve the lives of conflict affected children and their caregivers.', 'uploads/1695920869_364298262_300676269281230_6574002021320479824_n.jpg', 1, '2023-09-28 17:07:49', '2023-09-28 17:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `s_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `fbook` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `linkedin` varchar(225) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `file`, `details`, `fbook`, `twitter`, `instagram`, `linkedin`, `status`, `content`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Christopher Chinedumuije, PhD.', 'CEO/Country Director', 'uploads/chief.jpg', 'Country Director', 'Ugwuoha Christopher Chinedumuije', '@Mr_ChrisD9jiria', 'chief_ugwuoha', 'Chief -Dr. Christopher (UGWUOHA-1) Chinedumuije', '1', 'A Better Humanity is Possible', 'assets/img/added-pic/organogram.jpg', '2022-11-27 16:51:38', '2022-11-27 16:51:38'),
(3, 'Ogbonna Uchenna', 'Response Manager', 'uploads/1696330983_Capture.PNG', 'Response Manager', 'ogbonna', '@ogbonna', 'ogbonna', 'ogbonna', '1', 'All We do, We do for the Love of Humanity', 'assets/img/added-pic/our-team.jpg', '2022-11-26 23:00:00', '2023-10-03 11:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `roles` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `roles`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'goalprime_gpon', 'admin_gpon_2024', 1, '$2y$10$GQVgr8yKw4x3KrpNLBEJYOLlF.SdSnWd8aNmZmKpIFlUeRIwwPGPa', NULL, '2022-06-15 08:24:17', '2022-06-15 08:24:17'),
(3, 'GPON_Admin', 'goalprime2022gpon', 1, '$2y$10$mb6poSLAaAnuD9naBDYBJ./gqjGJcULDef1ENDo8Qte8OAyOfYgYu', NULL, '2022-06-20 17:51:25', '2024-09-12 14:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `skills` text NOT NULL,
  `work` varchar(225) NOT NULL,
  `coverletter` text NOT NULL,
  `status` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakdownrequests`
--
ALTER TABLE `breakdownrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleryimages`
--
ALTER TABLE `galleryimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gprimetvs`
--
ALTER TABLE `gprimetvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsarticles`
--
ALTER TABLE `newsarticles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceimages`
--
ALTER TABLE `serviceimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakdownrequests`
--
ALTER TABLE `breakdownrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleryimages`
--
ALTER TABLE `galleryimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gprimetvs`
--
ALTER TABLE `gprimetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65625;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `newsarticles`
--
ALTER TABLE `newsarticles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `serviceimages`
--
ALTER TABLE `serviceimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
