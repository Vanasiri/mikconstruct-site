-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2025 at 08:21 PM
-- Server version: 10.6.18-MariaDB-log
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mikconstruct`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(2, 'admin', '$2b$10$CKFFkwY.P/80RvlDgDnX5uf9A7RdEDLjusqExFuaPbReE.oA91Zb2');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `page` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `page`, `section`, `text`) VALUES
(1, 'index', 'hero-title', 'CONSTRUCTION with'),
(2, 'index', 'hero-description', 'Building Information Modeling (BIM)'),
(3, 'index', 'small-title', 'เกี่ยวกับบริษัท'),
(4, 'index', 'about-heading', 'เลือก MIK CONSTRUCT<br>เพื่อประสบการณ์การก่อสร้างที่ทันสมัยและมีคุณภาพ'),
(5, 'index', 'about-para-1', 'MIK CONSTRUCT บริษัทรับเหมาก่อสร้างที่มุ่งเน้น ความแม่นยำและนวัตกรรม ก่อสร้างด้วยระบบ Building Information Modeling (BIM) ยกระดับประสิทธิภาพงานก่อสร้าง ทั้งคุณภาพและงบประมาณให้กับลูกค้า'),
(6, 'index', 'about-para-2', 'ทำให้การสร้างอาคารของคุณชัดเจน ตั้งแต่ขั้นตอนแรก ออกแบบอย่างแม่นยำ และด้วยระบบ BIM จัดการงบประมาณได้อย่างละเอียด ราคายุติธรรมตามจริง จัดการงานได้อย่างมีประสิทธิภาพ ควบคุมได้ด้วยการควบคุมงานจากวิศวกรมืออาชีพ เพื่อให้อาคารของลูกค้า เสร็จเร็ว และถูกต้องได้มาตรฐาน'),
(7, 'contact', 'tel', '<strong>โทร:</strong> 096-282-6664'),
(8, 'contact', 'email', '<strong>อีเมล:</strong> mikconstruct1@gmail.com'),
(9, 'services', 'services-small-title', 'บริการของเรา'),
(10, 'services', 'services-section-title', 'ครบทุกด้านของงานก่อสร้าง ด้วยระบบ BIM'),
(11, 'services', 'services-subtitle', 'MIK CONSTRUCT ให้บริการออกแบบ ก่อสร้าง บริหาร และรีโนเวตอาคารครบวงจร<br>ด้วยระบบ BIM เพื่อความแม่นยำสูงสุดในทุกขั้นตอน');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `page` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `page`, `section`, `path`) VALUES
(13, 'index', 'hero', '/uploads/1750319986649.PNG'),
(18, 'services', 'hero', '/uploads/1750320141211.PNG'),
(19, 'about', 'hero', '/uploads/1750320157037.PNG'),
(20, 'projects', 'hero', '/uploads/1750320176682.PNG'),
(21, 'contact', 'hero', '/uploads/1750320198681.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `category`, `active`) VALUES
(5, 'บ้านพักอาศัย2ชั้น พร้อมสระว่ายน้ำ (สนามกอล์ฟริเวอร์เดล บางกะดี ปทุมธานี)  Area 1,200 m2 ', 'CONSTRUCTION', 1),
(7, 'บ้านพักอาศัย 2ชั้น พร้อมสระว่ายน้ำ (อินทามะระ36 สุทธิสาร ดินแดง กทม)  Area1,000 m2', 'CONSTRUCTION', 1),
(8, 'Pure Strong Factory นิคมอุตสาหกรรม เอส อ่างทอง  Area7,000 m2', 'CONSTRUCTION', 1),
(10, 'บ้านพักอาศัย2ชั้น (อินทามระ36) Area750 m2', 'CONSTRUCTION', 1),
(11, 'บ้านพักอาศัย 1ชั้น  อ.ชะอวด จ.นครศรีธรรมราช สร้างโดยระบบปกติ Conventional DESIGN & BUILT', 'CONSTRUCTION', 1),
(12, 'อาคารพาณิชย์ 3 ชั้น สไตล์โมเดิร์น จ.นครพรม สร้างโดยระบบ prefab (Beam,Column,wall,slab & stair) DESIGN & BUILT', 'CONSTRUCTION', 1),
(13, 'LAKE Serene Rama2', 'CONSTRUCTION', 1),
(14, 'สะพาน 8.00*26.00 m อ.บ้านฉาง จ.ระยอง', 'CONSTRUCTION', 1),
(15, 'Warehouse-Office ( ลำลูกกา คลอง7) ของ บริษัท Mee', 'CONSTRUCTION', 1),
(16, 'Warehouse-FMD (สมุทรสงคราม)', 'CONSTRUCTION', 1),
(17, 'ศูนย์ฟอกไต -ศูนย์แพทย์ศิริราชกาญจนา', 'CONSTRUCTION', 1),
(18, 'โรงงาน Segment-GEL เชียงรากน้อย', 'CONSTRUCTION', 1),
(19, 'โรงงาน Wiremesh Vitcha (ลาดหลุมแก้ว)', 'CONSTRUCTION', 1),
(20, 'บ้านพักอาศัย 1 ชั้น-คุณจันทร์เพ็ญ (ชะอวด)', 'CONSTRUCTION', 1),
(21, 'ครัวส้มโอหวาน อัมพวา-อาคารใหม่ 2 ชั้น (800m2)', 'CONSTRUCTION', 1),
(22, 'ร้านลูกไก่-เขาใหญ่ (3,000 m2)', 'CONSTRUCTION', 1),
(23, 'บ้านพักอาศัย 4ชั้น (วิภาวดี รังสิต ซอย15)', 'DESIGN', 1),
(24, 'บ้านพักอาศัย 1 ชั้น (ชะอวด จ.นครศรีธรรมราช)', 'DESIGN', 1),
(25, 'อาคารพาณิชย์ 3ชั้น (จ.นครพนม)', 'DESIGN', 1),
(26, 'บ้านพักอาศัย 2ชั้น ระบบ Precast บ้านสามชุก จ.สุพรรณบุรี', 'DESIGN', 1),
(27, 'บ้านพักอาศัย 1ชั้น ระบบ Precast บ้านณฐาวดี  อ.ศรีราชา จ.ชลบุรี', 'DESIGN', 1),
(28, 'Spun Manufactory  ( เขียงรากน้อย จ.ปทุมธานี)', 'DESIGN', 1),
(29, 'Warehouse-Office ( ลำลูกกา คลอง7) ของ บริษัท Mee', 'DESIGN', 1),
(30, 'Warehouse-FMD ( สมุทรสงคราม)', 'DESIGN', 1),
(31, 'ศูนย์ฟอกไต -ศูนย์แพทย์ศิริราชกาญจนา', 'DESIGN', 1),
(32, 'โรงงาน Segment-GEL เชียงรากน้อย', 'DESIGN', 1),
(33, 'โรงงาน Wiremesh Vitcha (ลาดหลุมแก้ว)', 'DESIGN', 1),
(34, 'บ้าน1ชั้น ต.นางหลง อ.ชะอวด จ.นครศรีธรรมราช', 'DESIGN', 1),
(35, 'Pure Strong Factory (7,000 m2) นิคมอุตสาหกรรม เอส อ่างทอง', 'DESIGN', 1),
(36, 'ครัวส้มโอหวาน อัมพวา-อาคารใหม่2 ชั้น (800m2)', 'DESIGN', 1),
(37, 'Seven Wire  Factory Location : ระยอง', 'CONSTRUCTION MANAGEMENT', 1),
(38, 'Spun Manufactory Location : เชียงรากน้อย', 'CONSTRUCTION MANAGEMENT', 1),
(39, 'SeaMan Resort Location : หาดเจ้าสำราญ จ.เพชรบุรี', 'CONSTRUCTION MANAGEMENT', 1),
(40, 'I feild bangna Location : บางนา', 'Renovate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `seq` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image_path`, `seq`) VALUES
(67, 5, '/uploads/1750190270015.PNG', 0),
(68, 5, '/uploads/1750190270021.PNG', 0),
(69, 5, '/uploads/1750190270026.PNG', 0),
(70, 5, '/uploads/1750190270028.PNG', 0),
(71, 5, '/uploads/1750190270030.PNG', 0),
(72, 5, '/uploads/1750190270036.PNG', 0),
(73, 5, '/uploads/1750190270039.PNG', 0),
(74, 5, '/uploads/1750190270044.PNG', 0),
(75, 5, '/uploads/1750190270048.PNG', 0),
(76, 5, '/uploads/1750190270051.PNG', 0),
(77, 5, '/uploads/1750190270054.PNG', 0),
(78, 5, '/uploads/1750190270057.PNG', 0),
(79, 5, '/uploads/1750190270061.PNG', 0),
(80, 5, '/uploads/1750190270067.PNG', 0),
(81, 5, '/uploads/1750190270072.PNG', 0),
(82, 5, '/uploads/1750190270076.PNG', 0),
(83, 5, '/uploads/1750190270080.PNG', 0),
(84, 5, '/uploads/1750190270083.PNG', 0),
(85, 5, '/uploads/1750190270084.PNG', 0),
(86, 5, '/uploads/1750190270085.PNG', 0),
(87, 5, '/uploads/1750190270088.PNG', 0),
(88, 5, '/uploads/1750190270092.PNG', 0),
(89, 5, '/uploads/1750190270096.PNG', 0),
(90, 5, '/uploads/1750190270100.PNG', 0),
(91, 5, '/uploads/1750190270103.PNG', 0),
(92, 5, '/uploads/1750190270106.PNG', 0),
(93, 5, '/uploads/1750190270111.PNG', 0),
(94, 5, '/uploads/1750190270115.PNG', 0),
(95, 5, '/uploads/1750190270117.PNG', 0),
(96, 5, '/uploads/1750190270118.PNG', 0),
(97, 5, '/uploads/1750190270120.PNG', 0),
(98, 5, '/uploads/1750190270121.PNG', 0),
(99, 5, '/uploads/1750190270122.PNG', 0),
(100, 5, '/uploads/1750190270126.PNG', 0),
(101, 5, '/uploads/1750190270130.PNG', 0),
(102, 5, '/uploads/1750190270133.PNG', 0),
(103, 5, '/uploads/1750190270137.PNG', 0),
(104, 5, '/uploads/1750190270140.PNG', 0),
(105, 5, '/uploads/1750190270143.PNG', 0),
(145, 7, '/uploads/1750190399747.PNG', 0),
(146, 7, '/uploads/1750190399751.PNG', 0),
(147, 7, '/uploads/1750190399756.PNG', 0),
(148, 7, '/uploads/1750190399758.PNG', 0),
(149, 7, '/uploads/1750190399760.PNG', 0),
(150, 7, '/uploads/1750190399763.PNG', 0),
(151, 7, '/uploads/1750190399766.PNG', 0),
(152, 7, '/uploads/1750190399770.PNG', 0),
(153, 7, '/uploads/1750190399774.PNG', 0),
(154, 7, '/uploads/1750190399778.PNG', 0),
(155, 7, '/uploads/1750190399781.PNG', 0),
(156, 7, '/uploads/1750190399789.PNG', 0),
(157, 7, '/uploads/1750190399791.PNG', 0),
(158, 7, '/uploads/1750190399794.PNG', 0),
(159, 7, '/uploads/1750190399799.PNG', 0),
(160, 7, '/uploads/1750190399802.PNG', 0),
(161, 7, '/uploads/1750190399806.PNG', 0),
(162, 7, '/uploads/1750190399810.PNG', 0),
(163, 7, '/uploads/1750190399816.PNG', 0),
(164, 7, '/uploads/1750190399820.PNG', 0),
(165, 7, '/uploads/1750190399823.PNG', 0),
(166, 7, '/uploads/1750190399826.PNG', 0),
(167, 7, '/uploads/1750190399828.PNG', 0),
(168, 7, '/uploads/1750190399830.PNG', 0),
(169, 7, '/uploads/1750190399834.PNG', 0),
(170, 7, '/uploads/1750190399838.PNG', 0),
(171, 7, '/uploads/1750190399840.PNG', 0),
(172, 7, '/uploads/1750190399841.PNG', 0),
(173, 8, '/uploads/1750190471872.PNG', 0),
(174, 8, '/uploads/1750190471875.PNG', 0),
(175, 8, '/uploads/1750190471882.PNG', 0),
(176, 8, '/uploads/1750190471885.PNG', 0),
(177, 8, '/uploads/1750190471887.PNG', 0),
(178, 8, '/uploads/1750190471890.PNG', 0),
(179, 8, '/uploads/1750190471893.PNG', 0),
(180, 8, '/uploads/1750190471897.PNG', 0),
(181, 8, '/uploads/1750190471900.PNG', 0),
(182, 8, '/uploads/1750190471904.PNG', 0),
(183, 8, '/uploads/1750190471907.PNG', 0),
(184, 8, '/uploads/1750190471910.PNG', 0),
(185, 8, '/uploads/1750190471914.PNG', 0),
(186, 8, '/uploads/1750190471918.PNG', 0),
(187, 8, '/uploads/1750190471922.PNG', 0),
(188, 8, '/uploads/1750190471925.PNG', 0),
(189, 8, '/uploads/1750190471929.PNG', 0),
(190, 8, '/uploads/1750190471933.PNG', 0),
(191, 8, '/uploads/1750190471937.PNG', 0),
(192, 8, '/uploads/1750190471941.PNG', 0),
(193, 8, '/uploads/1750190471945.PNG', 0),
(194, 8, '/uploads/1750190471949.PNG', 0),
(195, 8, '/uploads/1750190471953.PNG', 0),
(235, 10, '/uploads/1750190983095.PNG', 0),
(236, 10, '/uploads/1750190983097.PNG', 0),
(237, 10, '/uploads/1750190983101.PNG', 0),
(238, 10, '/uploads/1750190983102.PNG', 0),
(239, 10, '/uploads/1750190983104.PNG', 0),
(240, 10, '/uploads/1750190983108.PNG', 0),
(241, 10, '/uploads/1750190983113.PNG', 0),
(242, 10, '/uploads/1750190983121.PNG', 0),
(243, 10, '/uploads/1750190983123.PNG', 0),
(244, 10, '/uploads/1750190983127.PNG', 0),
(245, 10, '/uploads/1750190983130.PNG', 0),
(246, 10, '/uploads/1750190983134.PNG', 0),
(247, 10, '/uploads/1750190983137.PNG', 0),
(248, 10, '/uploads/1750190983141.PNG', 0),
(249, 10, '/uploads/1750190983145.PNG', 0),
(250, 10, '/uploads/1750190983150.PNG', 0),
(251, 10, '/uploads/1750190983155.PNG', 0),
(252, 10, '/uploads/1750190983159.PNG', 0),
(253, 10, '/uploads/1750190983163.PNG', 0),
(254, 10, '/uploads/1750190983167.PNG', 0),
(255, 10, '/uploads/1750190983172.PNG', 0),
(256, 10, '/uploads/1750190983175.PNG', 0),
(257, 10, '/uploads/1750190983178.PNG', 0),
(258, 10, '/uploads/1750190983181.PNG', 0),
(259, 10, '/uploads/1750190983183.PNG', 0),
(260, 10, '/uploads/1750190983187.PNG', 0),
(261, 10, '/uploads/1750190983192.PNG', 0),
(262, 10, '/uploads/1750190983195.PNG', 0),
(263, 10, '/uploads/1750190983199.PNG', 0),
(264, 10, '/uploads/1750190983202.PNG', 0),
(265, 10, '/uploads/1750190983205.PNG', 0),
(266, 10, '/uploads/1750190983209.PNG', 0),
(267, 10, '/uploads/1750190983211.PNG', 0),
(268, 10, '/uploads/1750190983213.PNG', 0),
(269, 10, '/uploads/1750190983215.PNG', 0),
(270, 10, '/uploads/1750190983218.PNG', 0),
(271, 10, '/uploads/1750190983221.PNG', 0),
(272, 10, '/uploads/1750190983223.PNG', 0),
(273, 10, '/uploads/1750190983225.PNG', 0),
(274, 11, '/uploads/1750191531383.PNG', 0),
(275, 11, '/uploads/1750191531389.PNG', 0),
(276, 12, '/uploads/1750191576777.PNG', 0),
(277, 12, '/uploads/1750191576780.PNG', 0),
(278, 13, '/uploads/1750191601405.PNG', 0),
(279, 13, '/uploads/1750191601408.PNG', 0),
(280, 14, '/uploads/1750191787266.PNG', 0),
(281, 14, '/uploads/1750191787270.PNG', 0),
(282, 14, '/uploads/1750191787273.PNG', 0),
(283, 14, '/uploads/1750191787276.PNG', 0),
(284, 15, '/uploads/1750191913722.PNG', 3),
(285, 15, '/uploads/1750191913724.PNG', 14),
(286, 15, '/uploads/1750191913727.PNG', 15),
(287, 15, '/uploads/1750191913731.PNG', 16),
(288, 15, '/uploads/1750191913734.PNG', 17),
(289, 15, '/uploads/1750191913736.PNG', 18),
(290, 15, '/uploads/1750191913739.PNG', 19),
(291, 15, '/uploads/1750191913743.PNG', 20),
(292, 15, '/uploads/1750191913746.PNG', 21),
(293, 15, '/uploads/1750191913749.PNG', 13),
(294, 15, '/uploads/1750191913754.PNG', 12),
(295, 15, '/uploads/1750191913757.PNG', 4),
(296, 15, '/uploads/1750191913761.PNG', 5),
(297, 15, '/uploads/1750191913764.PNG', 6),
(298, 15, '/uploads/1750191913766.PNG', 7),
(299, 15, '/uploads/1750191913767.PNG', 8),
(300, 15, '/uploads/1750191913769.PNG', 9),
(301, 15, '/uploads/1750191913770.PNG', 10),
(302, 15, '/uploads/1750191913773.PNG', 1),
(303, 15, '/uploads/1750191913776.PNG', 11),
(304, 15, '/uploads/1750191913779.PNG', 2),
(305, 16, '/uploads/1750193451783.PNG', 1),
(306, 16, '/uploads/1750193451787.PNG', 0),
(307, 16, '/uploads/1750193451792.PNG', 0),
(308, 16, '/uploads/1750193451797.PNG', 0),
(309, 16, '/uploads/1750193451801.PNG', 0),
(310, 16, '/uploads/1750193451807.PNG', 0),
(311, 16, '/uploads/1750193451808.PNG', 0),
(312, 16, '/uploads/1750193451812.PNG', 0),
(313, 16, '/uploads/1750193451814.PNG', 0),
(314, 16, '/uploads/1750193451818.PNG', 0),
(315, 16, '/uploads/1750193451826.PNG', 0),
(316, 16, '/uploads/1750193451829.PNG', 0),
(317, 16, '/uploads/1750193451832.PNG', 0),
(318, 16, '/uploads/1750193451834.PNG', 0),
(319, 17, '/uploads/1750193537628.PNG', 15),
(320, 17, '/uploads/1750193537631.PNG', 16),
(321, 17, '/uploads/1750193537635.PNG', 0),
(322, 17, '/uploads/1750193537638.PNG', 1),
(323, 17, '/uploads/1750193537642.PNG', 2),
(324, 17, '/uploads/1750193537646.PNG', 3),
(325, 17, '/uploads/1750193537650.PNG', 17),
(326, 17, '/uploads/1750193537654.PNG', 18),
(327, 17, '/uploads/1750193537658.PNG', 19),
(328, 17, '/uploads/1750193537661.PNG', 20),
(329, 17, '/uploads/1750193537663.PNG', 4),
(330, 17, '/uploads/1750193537666.PNG', 5),
(331, 17, '/uploads/1750193537668.PNG', 14),
(332, 17, '/uploads/1750193537673.PNG', 13),
(333, 17, '/uploads/1750193537676.PNG', 12),
(334, 17, '/uploads/1750193537677.PNG', 11),
(335, 17, '/uploads/1750193537679.PNG', 10),
(336, 17, '/uploads/1750193537681.PNG', 9),
(337, 17, '/uploads/1750193537682.PNG', 8),
(338, 17, '/uploads/1750193537684.PNG', 7),
(339, 17, '/uploads/1750193537686.PNG', 6),
(340, 17, '/uploads/1750193537688.PNG', 21),
(341, 18, '/uploads/1750193732544.PNG', 21),
(342, 18, '/uploads/1750193732548.PNG', 9),
(343, 18, '/uploads/1750193732551.PNG', 8),
(344, 18, '/uploads/1750193732555.PNG', 7),
(345, 18, '/uploads/1750193732560.PNG', 6),
(346, 18, '/uploads/1750193732562.PNG', 5),
(347, 18, '/uploads/1750193732565.PNG', 4),
(348, 18, '/uploads/1750193732569.PNG', 3),
(349, 18, '/uploads/1750193732576.PNG', 2),
(350, 18, '/uploads/1750193732579.PNG', 1),
(351, 18, '/uploads/1750193732580.PNG', 10),
(352, 18, '/uploads/1750193732583.PNG', 11),
(353, 18, '/uploads/1750193732586.PNG', 20),
(354, 18, '/uploads/1750193732591.PNG', 19),
(355, 18, '/uploads/1750193732593.PNG', 18),
(356, 18, '/uploads/1750193732596.PNG', 17),
(357, 18, '/uploads/1750193732599.PNG', 16),
(358, 18, '/uploads/1750193732601.PNG', 15),
(359, 18, '/uploads/1750193732604.PNG', 14),
(360, 18, '/uploads/1750193732607.PNG', 13),
(361, 18, '/uploads/1750193732610.PNG', 12),
(362, 18, '/uploads/1750193732613.PNG', 0),
(363, 19, '/uploads/1750193845809.PNG', 1),
(364, 19, '/uploads/1750193845813.PNG', 17),
(365, 19, '/uploads/1750193845815.PNG', 16),
(366, 19, '/uploads/1750193845819.PNG', 15),
(367, 19, '/uploads/1750193845822.PNG', 14),
(368, 19, '/uploads/1750193845825.PNG', 13),
(369, 19, '/uploads/1750193845830.PNG', 12),
(370, 19, '/uploads/1750193845832.PNG', 11),
(371, 19, '/uploads/1750193845837.PNG', 10),
(372, 19, '/uploads/1750193845841.PNG', 9),
(373, 19, '/uploads/1750193845844.PNG', 8),
(374, 19, '/uploads/1750193845849.PNG', 7),
(375, 19, '/uploads/1750193845852.PNG', 6),
(376, 19, '/uploads/1750193845854.PNG', 5),
(377, 19, '/uploads/1750193845857.PNG', 4),
(378, 19, '/uploads/1750193845861.PNG', 3),
(379, 19, '/uploads/1750193845864.PNG', 2),
(380, 19, '/uploads/1750193845868.PNG', 0),
(381, 20, '/uploads/1750193950833.PNG', 1),
(382, 20, '/uploads/1750193950835.PNG', 2),
(383, 20, '/uploads/1750193950839.PNG', 3),
(384, 20, '/uploads/1750193950844.PNG', 4),
(385, 20, '/uploads/1750193950848.PNG', 0),
(386, 20, '/uploads/1750193950851.PNG', 5),
(387, 20, '/uploads/1750193950853.PNG', 6),
(388, 21, '/uploads/1750194032628.PNG', 0),
(389, 21, '/uploads/1750194032632.PNG', 0),
(390, 21, '/uploads/1750194032635.PNG', 0),
(391, 21, '/uploads/1750194032639.PNG', 0),
(392, 22, '/uploads/1750194092863.PNG', 0),
(393, 22, '/uploads/1750194092865.PNG', 0),
(394, 22, '/uploads/1750194092869.PNG', 0),
(395, 22, '/uploads/1750194092875.PNG', 0),
(396, 22, '/uploads/1750194092880.PNG', 0),
(397, 22, '/uploads/1750194092883.PNG', 0),
(398, 22, '/uploads/1750194092887.PNG', 0),
(399, 23, '/uploads/1750194142321.PNG', 0),
(400, 23, '/uploads/1750194142323.PNG', 0),
(401, 24, '/uploads/1750194161908.PNG', 0),
(402, 24, '/uploads/1750194161912.PNG', 0),
(403, 25, '/uploads/1750194189231.PNG', 0),
(404, 25, '/uploads/1750194189232.PNG', 0),
(405, 26, '/uploads/1750194216527.PNG', 0),
(406, 27, '/uploads/1750194254878.PNG', 0),
(407, 27, '/uploads/1750194254879.PNG', 0),
(408, 28, '/uploads/1750194308406.PNG', 1),
(409, 28, '/uploads/1750194308409.PNG', 0),
(410, 28, '/uploads/1750194308410.PNG', 2),
(411, 28, '/uploads/1750194308411.PNG', 3),
(412, 29, '/uploads/1750194363343.PNG', 0),
(413, 29, '/uploads/1750194363347.PNG', 0),
(414, 30, '/uploads/1750194414430.PNG', 0),
(415, 30, '/uploads/1750194414431.PNG', 0),
(416, 31, '/uploads/1750194438778.PNG', 0),
(417, 31, '/uploads/1750194438781.PNG', 0),
(418, 32, '/uploads/1750194469341.PNG', 0),
(419, 32, '/uploads/1750194469343.PNG', 0),
(420, 33, '/uploads/1750194493173.PNG', 0),
(421, 33, '/uploads/1750194493176.PNG', 0),
(422, 34, '/uploads/1750194529587.PNG', 0),
(423, 35, '/uploads/1750194555524.PNG', 0),
(424, 36, '/uploads/1750194590075.PNG', 0),
(425, 37, '/uploads/1750194648401.PNG', 1),
(426, 37, '/uploads/1750194648404.PNG', 0),
(427, 37, '/uploads/1750194648408.PNG', 2),
(428, 37, '/uploads/1750194648412.PNG', 3),
(429, 37, '/uploads/1750194939898.PNG', 4),
(430, 37, '/uploads/1750194939900.PNG', 5),
(431, 38, '/uploads/1750195000511.PNG', 8),
(432, 38, '/uploads/1750195000516.PNG', 21),
(433, 38, '/uploads/1750195000518.PNG', 22),
(434, 38, '/uploads/1750195000522.PNG', 0),
(435, 38, '/uploads/1750195000524.PNG', 1),
(436, 38, '/uploads/1750195000529.PNG', 2),
(437, 38, '/uploads/1750195000533.PNG', 3),
(438, 38, '/uploads/1750195000540.PNG', 4),
(439, 38, '/uploads/1750195000543.PNG', 5),
(440, 38, '/uploads/1750195000548.PNG', 6),
(441, 38, '/uploads/1750195000553.PNG', 7),
(442, 38, '/uploads/1750195000556.PNG', 20),
(443, 38, '/uploads/1750195000559.PNG', 19),
(444, 38, '/uploads/1750195000562.PNG', 9),
(445, 38, '/uploads/1750195000567.PNG', 10),
(446, 38, '/uploads/1750195000570.PNG', 11),
(447, 38, '/uploads/1750195000574.PNG', 12),
(448, 38, '/uploads/1750195000578.PNG', 13),
(449, 38, '/uploads/1750195000581.PNG', 14),
(450, 38, '/uploads/1750195000585.PNG', 15),
(451, 38, '/uploads/1750195000588.PNG', 16),
(452, 38, '/uploads/1750195000591.PNG', 17),
(453, 38, '/uploads/1750195000595.PNG', 18),
(454, 38, '/uploads/1750195000598.PNG', 24),
(455, 39, '/uploads/1750195126201.PNG', 13),
(456, 39, '/uploads/1750195126206.PNG', 12),
(457, 39, '/uploads/1750195126209.PNG', 11),
(458, 39, '/uploads/1750195126212.PNG', 10),
(459, 39, '/uploads/1750195126214.PNG', 8),
(460, 39, '/uploads/1750195126216.PNG', 7),
(461, 39, '/uploads/1750195126217.PNG', 6),
(462, 39, '/uploads/1750195126221.PNG', 5),
(463, 39, '/uploads/1750195126226.PNG', 4),
(464, 39, '/uploads/1750195126230.PNG', 2),
(465, 39, '/uploads/1750195126232.PNG', 0),
(466, 39, '/uploads/1750195126236.PNG', 1),
(467, 39, '/uploads/1750195126240.PNG', 3),
(468, 39, '/uploads/1750195126243.PNG', 9),
(469, 40, '/uploads/1750195227318.PNG', 5),
(470, 40, '/uploads/1750195227320.PNG', 4),
(471, 40, '/uploads/1750195227322.PNG', 3),
(472, 40, '/uploads/1750195227326.PNG', 2),
(473, 40, '/uploads/1750195227330.PNG', 1),
(474, 40, '/uploads/1750195227331.PNG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_cards`
--

CREATE TABLE `service_cards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `color` varchar(50) NOT NULL,
  `seq` int(11) NOT NULL DEFAULT 0,
  `image_path` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `service_cards`
--

INSERT INTO `service_cards` (`id`, `title`, `text`, `color`, `seq`, `image_path`) VALUES
(3, 'ออกแบบอาคารด้วยระบบ BIM', 'เห็นภาพโครงการแบบ 3 มิติตั้งแต่ต้น ออกแบบครบทั้งโครงสร้าง สถาปัตย์ และระบบงานวิศวกรรมอื่น ๆ อยู่ในโมเดลเดียว', 'rgba(0,47,97,0.73)', 1, '/uploads/1750332664311.PNG'),
(5, 'งานก่อสร้างมืออาชีพ', 'เลือกใช้เทคนิคและวัสดุที่เหมาะกับงาน เช่น งานหล่อเสาคอนกรีตในที่, คานระบบ Precast, งานโครงสร้างเหล็กแบบ Cellular Beam, ผนังก่ออิฐแนวตรงแม่นยำ และอื่นๆ', 'rgba(255,60,0,0.72)', 2, '/uploads/1750334511741.PNG'),
(6, 'บริหารและควบคุมงาน', 'วางแผนโครงการและงบประมาณโดยวิศวกร ควบคุมต้นทุน และระยะเวลาก่อสร้าง ส่งมอบงานได้ตามแผนอย่างแม่นยำ', 'rgba(14,42,71,0.7)', 3, '/uploads/1750335051263.PNG'),
(7, 'รีโนเวตอาคารและโรงงาน', 'แก้ไขและต่อเติมบ้าน/โรงงานอย่างถูกหลักวิศวกรรม เพิ่มความแข็งแรงโดยไม่ต้องรื้อใหม่ ทำโดยทีมงานที่เข้าใจโครงสร้างเดิม', 'rgba(14,42,71,0.7)', 4, '/uploads/1750335076452.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `service_cards`
--
ALTER TABLE `service_cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `service_cards`
--
ALTER TABLE `service_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_images`
--
ALTER TABLE `project_images`
  ADD CONSTRAINT `project_images_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
