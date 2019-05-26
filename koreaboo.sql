-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 06:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koreaboo`
--

-- --------------------------------------------------------

--
-- Table structure for table `kdrama`
--

CREATE TABLE `kdrama` (
  `id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `synopsisShort` varchar(1000) NOT NULL,
  `synopsis` varchar(10000) NOT NULL,
  `revised` varchar(300) NOT NULL,
  `hangul` varchar(300) NOT NULL,
  `director` varchar(300) NOT NULL,
  `writer` varchar(300) NOT NULL,
  `network` varchar(100) NOT NULL,
  `episodes` varchar(10) NOT NULL,
  `releaseDate` date NOT NULL,
  `cast` varchar(1000) NOT NULL,
  `poster` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kdrama`
--

INSERT INTO `kdrama` (`id`, `title`, `synopsisShort`, `synopsis`, `revised`, `hangul`, `director`, `writer`, `network`, `episodes`, `releaseDate`, `cast`, `poster`) VALUES
('1i7zDjZJB', 'Welcome to Waikiki', 'These 3 men run the guest house Waikiki in Itaewon, South Korea. Their guest house is facing bankruptcy and then a mysterious baby and single mother appear at Waikiki.', 'Kang Dong-Goo (Kim Jung-Hyun) dreams of becoming a movie director, but he is cynical due to bad luck. Cheon Joon-Ki (Lee Yi-Kyung) wanted to follow in his father\'s footsteps and become an actor, but he is now just a minor actor. Bong-Doo-Sik (Son Seung-Won) came to Seoul to become a scenario writer, but things have not been easy for him.\nThese 3 men run the guest house Waikiki in Itaewon, South Korea. Their guest house is facing bankruptcy and then a mysterious baby and single mother appear at Waikiki.', 'Eulachacha Waikiki', '???? ????', 'Lee Chang-Min', 'Kim Ki-Ho, Song Ji-Eun, Song Mi-So', 'JTBC', '20', '2018-02-05', 'Kim Jung-Hyun as Kang Dong-Goo, Lee Yi-Kyung as Lee Joon-Ki, Son Seung-Won as Bong-Doo-Sik, Jung In-Sun as Han Yoon-A, Go Won-Hee as Kang Seo-Jin, Lee Joo-Woo as Min Soo-A', 'drama/waikiki.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kmovie`
--

CREATE TABLE `kmovie` (
  `id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `synopsisShort` varchar(1000) NOT NULL,
  `synopsis` varchar(10000) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `revised` varchar(300) NOT NULL,
  `hangul` varchar(300) NOT NULL,
  `director` varchar(300) NOT NULL,
  `writer` varchar(300) NOT NULL,
  `producer` varchar(300) NOT NULL,
  `cinematographer` varchar(300) NOT NULL,
  `releaseDate` date NOT NULL,
  `runtime` varchar(300) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `distributor` varchar(300) NOT NULL,
  `cast` varchar(300) NOT NULL,
  `poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kmovie`
--

INSERT INTO `kmovie` (`id`, `title`, `synopsisShort`, `synopsis`, `movie`, `revised`, `hangul`, `director`, `writer`, `producer`, `cinematographer`, `releaseDate`, `runtime`, `genre`, `distributor`, `cast`, `poster`) VALUES
('KA4Nbu_x2', 'FABRICATED CITY', 'Filming began July 1, 2015 in Yongsan, Seoul, South Korea and finished December 29, 2015 in Seoul.', 'In real life, Kwon Yoo (Ji Chang-Wook) is unemployed, but in the virtual game world he is the best leader. Kwon Yoo is then framed for a murder. With the help of hacker Yeo-Wool (Shim Eun-Kyung), he tries to uncover the truth behind the murder case.', 'Fabricated City', 'Jojakdwen Doshi', '??? ??', 'Park Kwang-Hyun', 'Park Kwang-Hyun, Oh Sang-Ho', 'Jang Young-Hwan, Jung Jae-Wook, Kim Hyun-Chul', 'Nam Dong-Geun', '2017-02-09', '126 Min', 'Action, Crime', 'CJ Entertainment', 'Ji Chang-Wook as Kwon Yoo, Shim Eun-Kyung as Yeo-Wool, Oh Jung-Se as Min Chung-Sang, Ahn Jae-Hong as Demolition, Kim Sang-Ho as Ma Deok-Soo', 'movie/fabricatedcity.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kpop`
--

CREATE TABLE `kpop` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shortBio` varchar(500) NOT NULL,
  `bio` varchar(10000) NOT NULL,
  `agency` varchar(300) NOT NULL,
  `debut` date NOT NULL,
  `yearsActive` varchar(20) NOT NULL,
  `mostPopularMember` varchar(50) NOT NULL,
  `fandom` varchar(50) NOT NULL,
  `member` mediumtext NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpop`
--

INSERT INTO `kpop` (`id`, `name`, `shortBio`, `bio`, `agency`, `debut`, `yearsActive`, `mostPopularMember`, `fandom`, `member`, `image`) VALUES
('b8_jXZGrJ', 'BLACKPINK', 'BLACKPINK debuted on August 8, 2016 under YG Entertainment.', 'BLACKPINK (????; stylized as BL??KPI?K) is a South Korean girl group formed under YG Entertainment consisting of four members Jisoo, Jennie, Lisa, and Rosé. and the first girl group that debuted under the entertainment agency in seven years after 2NE1. They debuted on August 8, 2016 with their digital single album \"Square One\". \"Ddu-Du Ddu-Du\" at the time of its release was the most viewed music video in 24 hours on YouTube, it also is the most viewed music video on YouTube by any Kpop group.', 'YG Entertainment', '2016-08-08', '2016–present', 'Lisa', 'BLINK', '[{\"name\": \"Lisa\",\"bio\": \"Lalisa Manoban (????? ??????), best known for her stage name Lisa, is the Main Dancer, Lead Rapper, Vocalist, and Maknae of the Girl Group Blackpink under YG Entertainment. Born in Bangkok Thailand with the name Pranpriya Manoban (????????? ??????), Lisa always had the passion for dancing even when she was still at a very young age, so much that she joined a dance crew which Got7\'s Bambam is also a part of. In 2010, YG Entertainment held an Audition on Thailand in which Lisa was the only one accepted. Through this, Lisa became an official YG trainee. Upon training for more than five years in Korea, Lisa was able to debut and went on to become one of the most famous female idols of her generation.\",\"picture\": \"music/bp/lisa.jpeg\",\"height\": \"167cm\",\"dateBirth\": \"1997-03-07\",\"bloodType\": \"O\",\"position\": \"Main Dancer, Lead Rapper, Sub Vocalist, Maknae\"}, {\"name\": \"Lisa\",\"bio\": \"Lalisa Manoban (????? ??????), best known for her stage name Lisa, is the Main Dancer, Lead Rapper, Vocalist, and Maknae of the Girl Group Blackpink under YG Entertainment. Born in Bangkok Thailand with the name Pranpriya Manoban (????????? ??????), Lisa always had the passion for dancing even when she was still at a very young age, so much that she joined a dance crew which Got7\'s Bambam is also a part of. In 2010, YG Entertainment held an Audition on Thailand in which Lisa was the only one accepted. Through this, Lisa became an official YG trainee. Upon training for more than five years in Korea, Lisa was able to debut and went on to become one of the most famous female idols of her generation.\",\"picture\": \"music/bp/lisa.jpeg\",\"height\": \"167cm\",\"dateBirth\": \"1997-03-07\",\"bloodType\": \"O\",\"position\": \"Main Dancer, Lead Rapper, Sub Vocalist, Maknae\"}, {\"name\": \"Lisa\",\"bio\": \"Lalisa Manoban (????? ??????), best known for her stage name Lisa, is the Main Dancer, Lead Rapper, Vocalist, and Maknae of the Girl Group Blackpink under YG Entertainment. Born in Bangkok Thailand with the name Pranpriya Manoban (????????? ??????), Lisa always had the passion for dancing even when she was still at a very young age, so much that she joined a dance crew which Got7\'s Bambam is also a part of. In 2010, YG Entertainment held an Audition on Thailand in which Lisa was the only one accepted. Through this, Lisa became an official YG trainee. Upon training for more than five years in Korea, Lisa was able to debut and went on to become one of the most famous female idols of her generation.\",\"picture\": \"music/bp/lisa.jpeg\",\"height\": \"167cm\",\"dateBirth\": \"1997-03-07\",\"bloodType\": \"O\",\"position\": \"Main Dancer, Lead Rapper, Sub Vocalist, Maknae\"}, {\"name\": \"Lisa\",\"bio\": \"Lalisa Manoban (????? ??????), best known for her stage name Lisa, is the Main Dancer, Lead Rapper, Vocalist, and Maknae of the Girl Group Blackpink under YG Entertainment. Born in Bangkok Thailand with the name Pranpriya Manoban (????????? ??????), Lisa always had the passion for dancing even when she was still at a very young age, so much that she joined a dance crew which Got7\'s Bambam is also a part of. In 2010, YG Entertainment held an Audition on Thailand in which Lisa was the only one accepted. Through this, Lisa became an official YG trainee. Upon training for more than five years in Korea, Lisa was able to debut and went on to become one of the most famous female idols of her generation.\",\"picture\": \"music/bp/lisa.jpeg\",\"height\": \"167cm\",\"dateBirth\": \"1997-03-07\",\"bloodType\": \"O\",\"position\": \"Main Dancer, Lead Rapper, Sub Vocalist, Maknae\"}]', 'music/bp/bpmain.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kvarietyshow`
--

CREATE TABLE `kvarietyshow` (
  `id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `synopsisShort` varchar(1000) NOT NULL,
  `synopsis` varchar(10000) NOT NULL,
  `aka` varchar(100) NOT NULL,
  `airTime` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `broadcastNetwork` varchar(100) NOT NULL,
  `released` varchar(100) NOT NULL,
  `cast` varchar(200) NOT NULL,
  `poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kvarietyshow`
--

INSERT INTO `kvarietyshow` (`id`, `title`, `synopsisShort`, `synopsis`, `aka`, `airTime`, `director`, `broadcastNetwork`, `released`, `cast`, `poster`) VALUES
('FYDrJrP7K', 'RUNNING MAN', 'Running Man (Korean: ???) is a South Korean variety show; a part of SBS\'s Good Sunday lineup, along with Roommate. It was first aired on July 11, 2010.', 'Running Man is a South Korean variety show; a part of SBS\'s Good Sunday lineup,along with Roommate. It was first aired on July 11, 2010. This show was classified as an \"urban action variety\"; a never-before-seen new genre of variety shows focused in an urban environment. The MCs and guests complete missions in a landmark to win the race. The show has since shifted to a more familiar reality-variety show concept focused on games. It has garnered attention as being the come-back program for Yoo Jae-suk, the main MC of the program, after leaving Good Sunday\'s Family Outing in February 2010.\n\nAiring at the 5 pm KST time slot for most of its run, Running Man switched to the second part of Good Sunday (which happened May 22 and May 29, 2011 with Kim Yu-na\'s Kiss and Cry but was quickly switched back due to low ratings) beginning May 6, 2012, airing after Kim Byung-man\'s Law of the Jungle 2 at 6:10 pm and airing against KBS2 Happy Sunday\'s 1 Night 2 Days Season 2 and MBC Sunday Night\'s I Am a Singer 2.', 'Running Man', '17h', 'Jo Hyo-jin, Im Hyung-taek, Kim Ju-hyung', 'SBS', '2010', 'Yoo Jae-Suk, Haha, Ji Suk-Jin, Kim Jong-kook, Lee Kwang-soo, Song Ji-hyo, Jeon So-min, Yang Se-chan', 'vshow/RM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kdrama`
--
ALTER TABLE `kdrama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmovie`
--
ALTER TABLE `kmovie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpop`
--
ALTER TABLE `kpop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kvarietyshow`
--
ALTER TABLE `kvarietyshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
