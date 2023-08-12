-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 05:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `original_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `short_code`, `original_url`) VALUES
(1, 'e149be', 'https://www.example.com'),
(2, '6327a5', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(3, 'xEIdJm', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(4, 'ZFbpHb', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(5, '4u2HPy', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(6, 'SBHSAO', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(7, 'qO8ShO', 'https://www.youtube.com/watch?v=MrLnibFTtbA'),
(8, 'sN1zDz', 'https://outlook.office.com/mail/deeplink/read/AAMkADA4YjM4ZDJjLTQyZjEtNDA4My04MWNiLTA3MTdiYmMwN2M1ZQBGAAAAAADzdGNNuSiiQLdt5FwBRkMeBwDhugafoA%2F7SYZyDjyJXMq3AAAAAAEMAADhugafoA%2F7SYZyDjyJXMq3AABq5B0vAAA%3D?popoutv2=1&version=20230804005.07'),
(9, 'AoXzaD', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(10, 'j7MMEA', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(11, '0BDtoK', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(12, 'kGdjc8', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(13, '5Y7MPs', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(14, 'C72kjZ', 'https://docs.google.com/document/d/1Gj1P4AtPgsW6ArKN8A0lfzfVhh9kC3rN9zqlPRv5v1g/edit'),
(15, 'AHvCmO', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(16, 'Z8ooN7', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(17, 'VfGywf', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(18, '4NJQL0', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(19, 'W10OWY', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(20, '8gGa83', 'https://www.linkedin.com/feed/update/urn:li:activity:7094956142564376576/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7094956142564376576%2C7095433918501253120)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7095433918501253120%2Curn%3Ali%3Aactivity%3A709495614'),
(21, 'PpE7NB', 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
