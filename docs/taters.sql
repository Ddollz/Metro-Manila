-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 02:15 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taters`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `id` int(11) NOT NULL,
  `barangay_name` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`id`, `barangay_name`, `city_id`) VALUES
(1, 'Acacia', 5),
(2, 'Addition Hills', 6),
(3, 'Addition Hills', 15),
(4, 'Aguho', 13),
(5, 'Alabang', 8),
(6, 'Alicia', 14),
(7, 'Almanza Dos', 3),
(8, 'Almanza Uno', 3),
(9, 'Amihan', 14),
(10, 'Amparo', 2),
(11, 'Apolonio Samson', 14),
(12, 'Arkong Bato', 17),
(13, 'Aurora', 14),
(14, 'Ayala Alabang (New Alabang)', 8),
(15, 'Baclaran', 10),
(16, 'Baesa', 14),
(17, 'Baesa', 2),
(18, 'Bagbag', 14),
(19, 'Bagbaguin', 17),
(20, 'Bagong Barrio', 2),
(21, 'Bagong Ilog', 12),
(22, 'Bagong Katipunan', 12),
(23, 'Bagong Lipunan ng Crame', 14),
(24, 'Bagong Pag-asa', 14),
(25, 'Bagong Silang', 6),
(26, 'Bagong Silang', 2),
(27, 'Bagong Silangan', 14),
(28, 'Bagumbayan', 14),
(29, 'Bagumbayan', 16),
(30, 'Bagumbayan North', 9),
(31, 'Bagumbayan South', 9),
(32, 'Bagumbong', 2),
(33, 'Bagumbuhay', 14),
(34, 'Bahay Toro', 14),
(35, 'Balangkas-Caloong', 17),
(36, 'Balingasa', 14),
(37, 'Balintawak', 14),
(38, 'Balong Bato', 14),
(39, 'Balong-bato', 15),
(40, 'Bambang', 12),
(41, 'Bambang', 16),
(42, 'Bangkal', 4),
(43, 'Bangkulasi', 9),
(44, 'Barangka', 7),
(45, 'Barangka Drive', 6),
(46, 'Barangka Ibaba', 6),
(47, 'Barangka Ilaya', 6),
(48, 'Barangka Itaas', 6),
(49, 'Baritan', 5),
(50, 'Barrio San Jose', 2),
(51, 'Batasan Hills', 14),
(52, 'Batis', 15),
(53, 'Bayanan', 8),
(54, 'Bayan-bayanan', 5),
(55, 'Bayanihan', 14),
(56, 'Bel-Air', 4),
(57, 'BF Homes', 10),
(58, 'BF Homes Caloocan', 2),
(59, 'BF International Village-CAA', 3),
(60, 'Biglang-Awa', 2),
(61, 'Bignay', 17),
(62, 'Binondo (District)', 1),
(63, 'Bisig', 17),
(64, 'Blue Ridge A', 14),
(65, 'Blue Ridge B', 14),
(66, 'Botocan', 14),
(67, 'Buayang Bato', 6),
(68, 'Buli', 8),
(69, 'Bungad', 14),
(70, 'Burol', 6),
(71, 'Buting', 12),
(72, 'Caloocan (Pob.)', 2),
(73, 'Calumpang', 7),
(74, 'Calzada', 16),
(75, 'Camarin', 2),
(76, 'Camarin-Central', 2),
(77, 'Camarin-Cielito', 2),
(78, 'Camarin-Kiko', 2),
(79, 'Camp Aguinaldo', 14),
(80, 'Caniogan', 12),
(81, 'Canumay East', 17),
(82, 'Canumay West', 17),
(83, 'Capri', 14),
(84, 'Carmona', 4),
(85, 'Catmon', 5),
(86, 'Caybiga', 2),
(87, 'Cembo', 4),
(88, 'Central', 14),
(89, 'Central Bicutan', 16),
(90, 'Central Signal Village', 16),
(91, 'Claro', 14),
(92, 'Coloong', 17),
(93, 'Comembo', 4),
(94, 'Commonwealth', 14),
(95, 'Concepcion', 5),
(96, 'Concepcion Dos', 7),
(97, 'Concepcion Uno', 7),
(98, 'Congress Village', 2),
(99, 'Corazon de Jesus', 15),
(101, 'Cupang', 8),
(102, 'Daang Bakal', 6),
(103, 'Daanghari', 9),
(104, 'Dagat-Dagatan', 2),
(105, 'Dalandanan', 17),
(106, 'Damar', 14),
(107, 'Damayan', 14),
(108, 'Damayang Lagi', 14),
(109, 'Dampalit', 5),
(110, 'Daniel Fajardo', 3),
(111, 'Dasmarinas', 4),
(112, 'Del Monte', 14),
(113, 'Dela Paz', 12),
(114, 'Deparo', 2),
(115, 'Deparo II', 2),
(116, 'Dioquino Zobel', 14),
(117, 'District 1', 11),
(118, 'District 2', 11),
(119, 'Don Bosco', 10),
(120, 'Don Galo', 10),
(121, 'Don Manuel', 14),
(122, 'Do?a Aurora', 14),
(123, 'Do?a Imelda', 14),
(124, 'Do?a Josefa', 14),
(125, 'Duyan Duyan', 14),
(126, 'E. Rodriguez', 14),
(127, 'East Kamias', 14),
(128, 'East Rembo', 4),
(129, 'Elias Aldana', 3),
(130, 'Ermita (District)', 1),
(131, 'Ermitano', 15),
(132, 'Escopa I', 14),
(133, 'Escopa II', 14),
(134, 'Escopa III', 14),
(135, 'Escopa IV', 14),
(136, 'Fairview', 14),
(137, 'Flores', 5),
(138, 'Forbes Park', 4),
(139, 'Fort Bonifacio', 16),
(140, 'Fortune', 7),
(141, 'General T. de Leon', 17),
(142, 'Grace Park East', 2),
(143, 'Grace Park West', 2),
(144, 'Greater Lagro', 14),
(145, 'Greenhills', 15),
(146, 'Guadalupe Nuevo', 4),
(147, 'Guadalupe Viejo', 4),
(148, 'Gulod', 14),
(149, 'Hagdang Bato Itaas', 6),
(150, 'Hagdang Bato Libis', 6),
(151, 'Hagonoy', 16),
(152, 'Harapin ang Bukas', 6),
(153, 'Heroes del 96', 2),
(154, 'Highway Hills', 6),
(155, 'Holy Spirit', 14),
(156, 'Horseshoe', 14),
(157, 'Hulo', 6),
(158, 'Hulong Duhat', 5),
(159, 'Ibaba', 5),
(160, 'Ibayo Tipas', 16),
(161, 'Ilaya', 3),
(162, 'Immaculate Concepcion', 14),
(163, 'Industrial Valley', 7),
(164, 'Intramuros (District)', 1),
(165, 'Isabelita', 15),
(166, 'Isla', 17),
(167, 'Jesus de la Pena', 7),
(168, 'Kabayanan', 15),
(169, 'Kalawaan', 12),
(170, 'Kaligayahan', 14),
(171, 'Kalusugan', 14),
(172, 'Kamuning', 14),
(173, 'Kapasigan', 12),
(174, 'Kapitolyo', 12),
(175, 'Karuhatan', 17),
(176, 'Kasilawan', 4),
(177, 'Katipunan', 14),
(178, 'Katuparan', 16),
(179, 'Kaunlaran', 14),
(180, 'Kaunlaran Village', 2),
(181, 'Kristong Hari', 14),
(182, 'Krus na Ligas', 14),
(183, 'La Huerta', 10),
(184, 'La Paz', 4),
(185, 'Laging Handa', 14),
(186, 'Lawang Bato', 17),
(187, 'Libis', 14),
(188, 'Libis Baesa', 2),
(189, 'Libis Reparo', 2),
(190, 'Ligid Tipas', 16),
(191, 'Lingunan', 17),
(192, 'Little Baguio', 15),
(193, 'Llano', 2),
(194, 'Longos', 5),
(195, 'Lourdes', 14),
(196, 'Lower Bicutan', 16),
(197, 'Loyola Heights', 14),
(198, 'Mabini-J. Rizal', 6),
(199, 'Mabolo', 17),
(200, 'Magallanes', 4),
(201, 'Magtanggol', 13),
(202, 'Maharlika', 14),
(203, 'Maharlika Village', 16),
(204, 'Makati (Pob.)', 4),
(205, 'Malamig', 6),
(206, 'Malanday', 7),
(207, 'Malanday', 17),
(208, 'Malaria', 2),
(209, 'Malate (District)', 1),
(210, 'Malaya', 14),
(211, 'Malinao', 12),
(212, 'Malinta', 17),
(213, 'Mandaluyong (Pob.)', 6),
(214, 'Mangga', 14),
(215, 'Manggahan', 12),
(216, 'Manresa', 14),
(217, 'Manuyo Dos', 3),
(218, 'Manuyo Uno', 3),
(219, 'Mapulang Lupa', 17),
(220, 'Marcelo Green', 10),
(221, 'Mariana', 14),
(222, 'Mariblo', 14),
(223, 'Marikina Heights', 7),
(224, 'Marilag', 14),
(225, 'Martires', 13),
(226, 'Marulas', 17),
(227, 'Marulas', 2),
(228, 'Masagana', 14),
(229, 'Masambong', 14),
(230, 'Matandang Balara', 14),
(231, 'Mauway', 6),
(232, 'Maybunga', 12),
(233, 'Maypajo', 2),
(234, 'Maysan', 17),
(235, 'Maysilo', 5),
(236, 'Maytunas', 15),
(237, 'Merville', 10),
(238, 'Milagrosa', 14),
(239, 'Monumento', 2),
(240, 'Moonwalk', 10),
(241, 'Morning Breeze', 2),
(242, 'Muntinlupa (Pob.)', 8),
(243, 'Muzon', 5),
(244, 'N.S. Amoranto', 14),
(245, 'Nagkaisang Nayon', 14),
(246, 'Namayan', 6),
(247, 'Nangka', 7),
(248, 'Napindan', 16),
(249, 'Navotas East', 9),
(250, 'Navotas West', 9),
(251, 'Nayong Kanluran', 14),
(252, 'New Era', 14),
(253, 'New Lower Bicutan', 16),
(254, 'New Zaniga', 6),
(255, 'Niugan', 5),
(256, 'North Daang Hari', 16),
(257, 'North Fairview', 14),
(258, 'North Signal Village', 16),
(259, 'Northbay Boulevard North', 9),
(260, 'Northbay Boulevard South (NBBS) Dagat-dagatan', 9),
(261, 'Northbay Boulevard South (NBBS) Kaunlaran', 9),
(262, 'Northbay Boulevard South (NBBS) Proper', 9),
(263, 'Novaliches Proper', 14),
(264, 'Obrero', 14),
(265, 'Old Capitol Site', 14),
(266, 'Old Zaniga', 6),
(267, 'Olympia', 4),
(268, 'Onse', 15),
(269, 'Oranbo', 12),
(270, 'Paang Bundok', 14),
(271, 'Paco (District)', 1),
(272, 'Pag-asa', 6),
(273, 'Pag-ibig sa Nayon', 14),
(274, 'Palanan', 4),
(275, 'Palasan', 17),
(276, 'Palatiw', 12),
(277, 'Paligsahan', 14),
(278, 'Palingon', 16),
(279, 'Paltok', 14),
(280, 'Pamplona Dos', 3),
(281, 'Pamplona Tres', 3),
(282, 'Pamplona Uno', 3),
(283, 'Pandacan (District)', 1),
(284, 'Pangarap Village', 2),
(285, 'Panghulo', 5),
(286, 'Pansol', 14),
(287, 'Parada', 17),
(288, 'Paraiso', 14),
(289, 'Parang', 7),
(290, 'Pariancillo Villa', 17),
(291, 'Pasadena', 15),
(292, 'Paso de Blas', 17),
(293, 'Pasolo', 17),
(294, 'Pasong Putik', 14),
(295, 'Pasong Tamo', 14),
(296, 'Pateros (Pob.)', 13),
(297, 'Payatas', 14),
(298, 'Pedro Cruz', 15),
(299, 'Pembo', 4),
(300, 'Phil-Am', 14),
(301, 'Pilar Village', 3),
(302, 'Pinagbuhatan', 12),
(303, 'Pinagkaisahan', 14),
(304, 'Pinagkaisahan', 4),
(305, 'Pinagsama', 16),
(306, 'Pineda', 12),
(307, 'Pinyahan', 14),
(308, 'Pio del Pilar', 4),
(309, 'Pitogo', 4),
(310, 'Plainview', 6),
(311, 'Pleasant Hills', 6),
(312, 'Polo', 17),
(313, 'Port Area (District)', 1),
(314, 'Post Proper Northside', 4),
(315, 'Post Proper Southside', 4),
(316, 'Potrero', 5),
(317, 'Progreso', 15),
(318, 'Project 6', 14),
(319, 'Pulang Lupa Dos', 3),
(320, 'Pulang Lupa Uno', 3),
(321, 'Punturin', 17),
(322, 'Putatan', 8),
(323, 'Quiapo (District)', 1),
(324, 'Quirino 2-A', 14),
(325, 'Quirino 2-B', 14),
(326, 'Quirino 2-C', 14),
(327, 'Quirino 3-A', 14),
(328, 'Ramon Magsaysay', 14),
(329, 'Rincon', 17),
(330, 'Rivera', 15),
(331, 'Rizal', 4),
(332, 'Rosario', 12),
(333, 'Roxas', 14),
(334, 'Sacred Heart', 14),
(335, 'Sagad', 12),
(336, 'Salapan', 15),
(337, 'Salvacion', 14),
(338, 'Sampaloc (District)', 1),
(339, 'San Agustin', 14),
(340, 'San Agustin', 5),
(341, 'San Andres (District)', 1),
(342, 'San Antonio', 14),
(343, 'San Antonio', 4),
(344, 'San Antonio', 10),
(345, 'San Antonio', 12),
(346, 'San Bartolome', 14),
(347, 'San Dionisio', 10),
(348, 'San Isidro', 14),
(349, 'San Isidro', 4),
(350, 'San Isidro', 10),
(351, 'San Isidro Labrador', 14),
(352, 'San Joaquin', 12),
(353, 'San Jose', 14),
(354, 'San Jose', 6),
(355, 'San Jose', 9),
(356, 'San Jose', 12),
(357, 'San Lorenzo', 4),
(358, 'San Martin de Porres', 14),
(359, 'San Martin de Porres', 10),
(360, 'San Miguel', 12),
(361, 'San Miguel', 16),
(362, 'San Miguel (District)', 1),
(363, 'San Nicolas', 12),
(364, 'San Nicolas (District)', 1),
(365, 'San Pedro', 13),
(366, 'San Perfecto', 15),
(367, 'San Rafael Village', 9),
(368, 'San Roque', 14),
(369, 'San Roque', 7),
(370, 'San Roque', 9),
(371, 'San Roque', 13),
(372, 'San Vicente', 14),
(373, 'Sangandaan', 14),
(374, 'Sangandaan', 2),
(375, 'Santa Ana', 16),
(376, 'Santa Ana', 13),
(377, 'Santa Ana (District)', 1),
(378, 'Santa Cruz', 14),
(379, 'Santa Cruz', 4),
(380, 'Santa Cruz', 12),
(381, 'Santa Cruz (District)', 1),
(382, 'Santa Elena', 7),
(383, 'Santa Lucia', 14),
(384, 'Santa Lucia', 12),
(385, 'Santa Lucia', 15),
(386, 'Santa Mesa (District)', 1),
(387, 'Santa Monica', 14),
(388, 'Santa Quiteria', 2),
(389, 'Santa Rosa', 12),
(390, 'Santa Teresita', 14),
(391, 'Santo Cristo', 14),
(392, 'Santo Domingo', 14),
(393, 'Santo Nino', 14),
(394, 'Santo Nino', 7),
(395, 'Santo Nino', 10),
(396, 'Santo Rosario Kanluran', 13),
(397, 'Santo Rosario Silangan', 13),
(398, 'Santo Tomas', 12),
(399, 'Santol', 14),
(400, 'Santolan', 5),
(401, 'Santolan', 12),
(402, 'Sauyo', 14),
(403, 'Siena', 14),
(404, 'Sikatuna Village', 14),
(405, 'Silangan', 14),
(406, 'Singkamas', 4),
(407, 'Sipac-Almacen', 9),
(408, 'Socorro', 14),
(409, 'South Cembo', 4),
(410, 'South Daang Hari', 16),
(411, 'South Signal Village', 16),
(412, 'South Triangle', 14),
(413, 'St. Ignatius', 14),
(414, 'St. Joseph (Halo-halo)', 15),
(415, 'St. Peter', 14),
(416, 'Sucat', 8),
(417, 'Sumilang', 12),
(418, 'Sun Valley', 10),
(419, 'Tabacalera', 13),
(420, 'Tagalag', 17),
(421, 'Tagumpay', 14),
(422, 'Tala', 2),
(423, 'Talayan', 14),
(424, 'Talipapa', 14),
(425, 'Talipapa', 2),
(426, 'Talon Cuatro', 3),
(427, 'Talon Dos', 3),
(428, 'Talon Singko', 3),
(429, 'Talon Tres', 3),
(430, 'Talon Uno', 3),
(431, 'Tambo', 10),
(432, 'Tandang Sora', 14),
(433, 'Tangos North', 9),
(434, 'Tangos South', 9),
(435, 'Tanong', 5),
(436, 'Tanong', 7),
(437, 'Tanyag', 16),
(438, 'Tanza 1', 9),
(439, 'Tanza 2', 9),
(440, 'Tatalon', 14),
(441, 'Teacher\'s Village East', 14),
(442, 'Teacher\'s Village West', 14),
(443, 'Tejeros', 4),
(444, 'Tibagan', 15),
(445, 'Tinajeros', 5),
(446, 'Tondo (District)', 1),
(447, 'Tonsuya', 5),
(448, 'Tugatog', 5),
(449, 'Tuktukan', 16),
(450, 'Tumana', 7),
(451, 'Tunasan', 8),
(452, 'Ugong', 12),
(453, 'Ugong', 17),
(454, 'Ugong Norte', 14),
(455, 'Unang Sigaw', 14),
(456, 'University Hills', 2),
(457, 'UP Campus', 14),
(458, 'UP Village', 14),
(459, 'Upper Bicutan', 16),
(460, 'Urdaneta', 4),
(461, 'Urduja (Village)', 2),
(462, 'Ususan', 16),
(463, 'Valencia', 14),
(464, 'Valenzuela', 4),
(465, 'Valenzuela (Pob.)', 17),
(466, 'Vasra', 14),
(467, 'Veinte Reales', 17),
(468, 'Vergara', 6),
(469, 'Veterans Village', 14),
(470, 'Villa Maria Clara', 14),
(471, 'Vitalez', 10),
(472, 'Wack-Wack Greenhills', 6),
(473, 'Wawa', 16),
(474, 'Wawang Pulo', 17),
(475, 'West Crame', 15),
(476, 'West Kamias', 14),
(477, 'West Rembo', 4),
(478, 'West Triangle', 14),
(479, 'Western Bicutan', 16),
(480, 'White Plains', 14),
(481, 'Zapote', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`) VALUES
(1, 'Manila'),
(2, 'Caloocan'),
(3, 'Las Pinas\r\n'),
(4, 'Makati'),
(5, 'Malabon'),
(6, 'Mandaluyong'),
(7, 'Marikina'),
(8, 'Muntinlupa'),
(9, 'Navotas'),
(10, 'Paranaque'),
(11, 'Pasay'),
(12, 'Pasig'),
(13, 'Pateros'),
(14, 'Quezon City'),
(15, 'San Juan'),
(16, 'Taguig'),
(17, 'Valenzuela');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileno` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `activation_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `mobileno`, `age`, `gender`, `address`, `status`, `city_id`, `barangay_id`, `activation_link`) VALUES
(22, 'Ericka', '$2y$10$XsLV5z74hZYCUVixPgk9XerBl0fFkK4R7qY/kGhFOOldQWhA11oYG', 'Ericka Michelle', 'Labajo', 'ErickaMichelle@gmail.com', 2147483647, 21, 'F', 'blk. 5 lot. 3 del pilar street, pinalad road, nagpayong centennial ii. pinagbuhatan pasig city', 0, 1, 271, ''),
(23, 'James', '$2y$10$Ot4DCOC4EqVW79Wse1NfA.ZQFkT7Pz5egO8.Fv3.qiTpgLZVKzUYq', 'James', 'Manuel', 'James@gmail.com', 909697963, 20, 'F', 'blk. 5 lot. 3 del pilar street, pinalad road, nagpayong centennial ii. pinagbuhatan pasig city', 0, 1, 62, ''),
(24, 'Jerico', '$2y$10$WYIeYLBcIho8hndZCag0fuGBqCqskRQkp9Nn3kj0f9kwHqJAhdjdq', 'Jerico', 'villaraza', 'Jerico@gmail.com', 958234617, 20, 'M', 'blk. 5 lot. 3 del pilar street, pinalad road, nagpayong centennial ii. pinagbuhatan pasig city', 0, 4, 349, ''),
(25, 'Ddollz', '$2y$10$XXhq48erG70h8VT3YUHNN.hmkpLfmiVgf7Uxj5afImzdHUJfz88sq', 'Ddoll', 'Dollz', 'erolpasion12@yahoo.com', 2147483647, 23, 'M', '307 D Lakandula Tulip St Tondo Manila', 0, 1, 446, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangay`
--
ALTER TABLE `barangay`
  ADD CONSTRAINT `barangay_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
