-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2017 at 03:34 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_infos`
--

CREATE TABLE `account_infos` (
  `account_id` int(11) NOT NULL,
  `account_firstname` varchar(100) DEFAULT NULL,
  `account_middlename` varchar(100) DEFAULT NULL,
  `account_lastname` varchar(100) DEFAULT NULL,
  `account_username` varchar(50) DEFAULT NULL,
  `account_password` varchar(50) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_infos`
--

INSERT INTO `account_infos` (`account_id`, `account_firstname`, `account_middlename`, `account_lastname`, `account_username`, `account_password`, `account_type`) VALUES
(1, 'John Paul', 'Garcia', 'Balanon', 'admin', 'admin', 'Admin'),
(2, 'Dexter', 'Rivera', 'Florendo', 'dex.r.florendo@hotmail.com', '12345', 'Admin'),
(3, 'Sha', 'Iglesias', 'Ballesteros', 'encoder', 'encoder', 'Encoder');

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(10) NOT NULL,
  `barangay_municipality` int(10) DEFAULT NULL,
  `barangay_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `barangay_municipality`, `barangay_description`) VALUES
(1, 1, 'Balawarte'),
(2, 1, 'Capas'),
(3, 1, 'Consolacion'),
(4, 1, 'Macalva Central'),
(5, 1, 'Macalva Norte'),
(6, 1, 'Ambitacay'),
(7, 1, 'Macalva Sur'),
(8, 1, 'Nazareno'),
(9, 1, 'Puroc'),
(10, 1, 'San Agustin East'),
(11, 1, 'San Agustin Norte'),
(12, 1, 'San Agustin Sur'),
(13, 1, 'San Antonio'),
(14, 1, 'San Francisco'),
(15, 1, 'San Isidro'),
(16, 1, 'San Joaquin Norte'),
(17, 1, 'San Joaquin Sur'),
(18, 1, 'San Jose Norte'),
(19, 1, 'San Jose Sur'),
(20, 1, 'San Juan'),
(21, 1, 'San Julian Central'),
(22, 1, 'San Julian East'),
(23, 1, 'San Julian Norte'),
(24, 1, 'San Manuel Sur'),
(25, 1, 'San Marcos'),
(26, 1, 'San MIguel'),
(27, 1, 'San Nicolas Central'),
(28, 1, 'San Nicolas East'),
(29, 1, 'San Nicolas Norte'),
(30, 1, 'San Nicolas Sur'),
(31, 1, 'San Nicolas West'),
(32, 1, 'San Pedro'),
(33, 1, 'San Roque East'),
(34, 1, 'San Roque West'),
(35, 1, 'San Vicente Norte'),
(36, 1, 'San Vicente Sur'),
(37, 1, 'Sta Ana'),
(38, 1, 'Sta Barbara'),
(39, 1, 'Sta Fe'),
(40, 1, 'Sta Maria'),
(41, 1, 'Sta Monica'),
(42, 1, 'Sta Rita Central'),
(43, 1, 'Sta Rita East'),
(44, 1, 'Sta Rita Norte'),
(45, 1, 'Sta Rita Sur'),
(46, 1, 'Sta Rita West'),
(48, 2, 'Alaska'),
(49, 2, 'Basca'),
(50, 2, 'Dulao'),
(51, 2, 'Gallano'),
(52, 2, 'Macabato'),
(53, 2, 'Manga'),
(54, 2, 'Pangao-aoan West'),
(55, 2, 'Pangao-aoan East'),
(56, 2, 'Poblacion'),
(57, 2, 'Sta Lucia'),
(58, 2, 'San Antonio'),
(59, 2, 'San Benito Norte'),
(60, 2, 'San Benito Sur'),
(61, 2, 'San Eugenio'),
(62, 2, 'San Juan East'),
(63, 2, 'San Juan West'),
(64, 2, 'San Simon East'),
(65, 2, 'San Simon West'),
(66, 2, 'Sta Cecilia'),
(67, 2, 'Sta Rita East'),
(68, 2, 'Sta Rita West'),
(69, 2, 'Sto Rosario East'),
(70, 2, 'Sto Rosario West'),
(71, 3, 'Agtipal'),
(72, 3, 'Bacqui'),
(73, 3, 'Bagutot'),
(74, 3, 'Baroro'),
(75, 3, 'Bulala'),
(76, 3, 'Arosip'),
(77, 3, 'Bacsil'),
(78, 3, 'Ballogo'),
(79, 3, 'Bitalag'),
(80, 3, 'Bussaoit'),
(81, 3, 'Cabaroan'),
(82, 3, 'Cabugao'),
(83, 3, 'Cabarsican'),
(84, 3, 'Clutit'),
(85, 3, 'Carcarmay'),
(86, 3, 'Casiaman'),
(87, 3, 'Galongen'),
(88, 3, 'Guinabang'),
(89, 3, 'Legleg'),
(90, 3, 'Lisqueb'),
(91, 3, 'Mabanengbeng I'),
(92, 3, 'Mabanengbeng II'),
(93, 3, 'Maragayap'),
(94, 3, 'Nagatiran'),
(95, 3, 'Bagsarababoan'),
(96, 3, 'Nagsimbaanan'),
(97, 3, 'Nangalisan'),
(98, 3, 'Narra'),
(99, 3, 'Ortega'),
(100, 3, 'Oyaoay'),
(101, 3, 'Paagan'),
(102, 3, 'Pandan'),
(103, 3, 'Pangpang'),
(104, 3, 'Poblacion'),
(105, 3, 'Quirino'),
(106, 3, 'Raois'),
(107, 3, 'Nagsaraboan'),
(108, 3, 'San Martin'),
(109, 3, 'Sapilang'),
(110, 3, 'Sayoan'),
(111, 3, 'Sipulo'),
(112, 3, 'Salincob'),
(113, 3, 'Sta Rita'),
(114, 3, 'Sta Cruz'),
(115, 3, 'Tammocalao'),
(116, 3, 'Ubbog'),
(117, 3, 'Zaragosa'),
(118, 3, 'Sipulo'),
(119, 4, 'Alibangsay'),
(120, 4, 'Baay'),
(121, 4, 'Cambaly'),
(122, 4, 'Cardiz'),
(123, 4, 'Dagup'),
(124, 4, 'Libbo'),
(125, 4, 'Tagudtud'),
(126, 4, 'Wallayan'),
(127, 4, 'Tioangan'),
(129, 4, 'Suyo'),
(130, 5, 'Almedia'),
(131, 5, 'Antonio'),
(132, 5, 'Apatut'),
(133, 5, 'Ar-arampang'),
(134, 5, 'Baracbac Este'),
(135, 5, 'Baracbac Oeste'),
(136, 5, 'Bet-ang'),
(137, 5, 'Bulbulala'),
(138, 5, 'Bungol'),
(139, 5, 'Butubut Este'),
(140, 5, 'Butubut Norte'),
(141, 5, 'Butubut Oeste'),
(142, 5, 'Butubut Sur'),
(143, 5, 'Cabua-an'),
(144, 5, 'Calliat'),
(145, 5, 'Calungbuyan'),
(146, 5, 'Camiling'),
(147, 5, 'Camilo Osias'),
(148, 5, 'Guinaburan'),
(149, 5, 'Masupe'),
(150, 5, 'Nagsabaran Norte'),
(151, 5, 'Nagsabaran Sur'),
(152, 5, 'Nalasin'),
(153, 5, 'Napaset'),
(154, 5, 'Pagbennecan'),
(155, 5, 'Pagleddegan'),
(156, 5, 'Pantar Norte'),
(157, 5, 'Pantar Sur'),
(158, 5, 'Pao'),
(159, 5, 'Paraoir'),
(160, 5, 'Patpata'),
(161, 5, 'Sablut'),
(162, 5, 'San Pablo'),
(163, 5, 'Sinapangan Norte'),
(164, 5, 'Sinapangan Sur'),
(165, 5, 'Tallipugo'),
(166, 5, 'Reyna Regenta'),
(167, 6, 'Agdeppa'),
(168, 6, 'Alzate'),
(169, 6, 'Bangaoilan East'),
(170, 6, 'Bangaoilan West'),
(171, 6, 'Barraca'),
(172, 6, 'Cadapli'),
(173, 6, 'Caggao'),
(174, 6, 'Central East No. 1'),
(175, 6, 'Central East No. 2'),
(176, 6, 'Central West No. 1'),
(177, 6, 'Central West No. 2'),
(178, 6, 'Central West No. 3'),
(179, 6, 'Consuegra'),
(180, 6, 'Gen Prim East'),
(181, 6, 'Gen Prim West'),
(182, 6, 'Gen Terrero'),
(183, 6, 'Luzong Norte'),
(184, 6, 'Luzong Sur'),
(185, 6, 'Ma Cristina East'),
(186, 6, 'Ma Cristina West'),
(187, 6, 'Mindoro'),
(188, 6, 'Nagsabaran'),
(189, 6, 'Paratong Norte'),
(190, 6, 'Paratong No. 3'),
(191, 6, 'Paratong No. 4'),
(192, 6, 'Quintarong'),
(193, 6, 'Rissing'),
(194, 6, 'San Blas'),
(195, 6, 'San Cristobal'),
(196, 6, 'Sinapangan Norte'),
(197, 6, 'Sinapangan Sur'),
(198, 6, 'Ubbog'),
(200, 7, 'Acao'),
(201, 7, 'Baccuit Norte'),
(202, 7, 'Baccuit Sur'),
(203, 7, 'Bagbag'),
(204, 7, 'Ballay'),
(205, 7, 'Bawanta'),
(206, 7, 'Boy-utan'),
(207, 7, 'Bucayab'),
(208, 7, 'Cabisilan'),
(209, 7, 'Cabalayangan'),
(210, 7, 'Calumbaya'),
(211, 7, 'Carmay'),
(212, 7, 'Casilagan'),
(213, 7, 'Central East'),
(214, 7, 'Central West'),
(215, 7, 'Dili'),
(216, 7, 'Dissoor'),
(217, 7, 'Guerrero'),
(218, 7, 'Nagrebcan'),
(219, 7, 'Pagdalagan Sur'),
(220, 7, 'Palintucang'),
(221, 7, 'Palugsi-limmansangan'),
(222, 7, 'Parian Este'),
(223, 7, 'Parian Weste'),
(224, 7, 'Paringao'),
(225, 7, 'Payocpoc Norte Este'),
(226, 7, 'Parian Norte Weste'),
(227, 7, 'Payocpoc SUr'),
(228, 7, 'Pilar'),
(229, 7, 'Pottot'),
(230, 7, 'Pudoc'),
(231, 7, 'Pugo'),
(232, 7, 'Quinavite'),
(233, 7, 'Santiago'),
(234, 7, 'Sta Monica'),
(235, 7, 'Lower San Agustin'),
(236, 7, 'Upper San Agustin'),
(237, 7, 'Taberna'),
(238, 7, 'Urayong'),
(239, 8, 'Agpay'),
(240, 8, 'Bilis'),
(241, 8, 'Caoayan'),
(242, 8, 'Dalacdac'),
(243, 8, 'Delles'),
(244, 8, 'Imelda'),
(245, 8, 'Libtong'),
(246, 8, 'Linuan'),
(247, 8, 'Lower Tumapoc'),
(248, 8, 'New Poblacion'),
(249, 8, 'Old Poblacion'),
(250, 8, 'Upper Tumapoc'),
(251, 9, 'Bautista'),
(252, 9, 'Gana'),
(253, 9, 'Juan Cartas'),
(254, 9, 'Las-ud'),
(255, 9, 'Liquicia'),
(256, 9, 'Poblacion Norte'),
(257, 9, 'Poblacion Sur'),
(258, 9, 'San Carlos'),
(259, 9, 'San Cornelio'),
(260, 9, 'San Fermin'),
(261, 9, 'San Gregorio'),
(262, 9, 'San Jose'),
(263, 9, 'Santiago Norte'),
(264, 9, 'Santiago Sur'),
(265, 9, 'Sobredillo'),
(266, 9, 'Urayong'),
(267, 9, 'Wenceslao'),
(268, 10, 'Alcala'),
(269, 10, 'Ayaoan'),
(270, 10, 'Barangobong'),
(271, 10, 'Barrientos'),
(272, 10, 'Bungro'),
(273, 10, 'Busel-busel'),
(274, 10, 'Cabalitocan'),
(275, 10, 'Cantoria No. 1'),
(276, 10, 'Cantoria No. 2'),
(277, 10, 'Cantoria No. 3'),
(278, 10, 'Cantoria No. 4'),
(279, 10, 'Carisquis'),
(280, 10, 'Darigayos'),
(281, 10, 'Magallanes'),
(282, 10, 'Magsiping'),
(283, 10, 'Mamay'),
(284, 10, 'Nagrebcan'),
(285, 10, 'Nalvo Norte'),
(286, 10, 'Nalvo Sur'),
(287, 10, 'Napaset'),
(288, 10, 'Oaqui No. 1'),
(289, 10, 'Oaqui No. 2'),
(290, 10, 'Oaqui No. 3'),
(291, 10, 'Oaqui No. 4'),
(292, 11, 'Aguios'),
(293, 11, 'Al-alinao Norte'),
(294, 11, 'Al-alinao Sur'),
(295, 11, 'Ambaracao Norte'),
(296, 11, 'Ambaracao Sur'),
(297, 11, 'Angin'),
(298, 11, 'Balecbec'),
(299, 11, 'Bancagan'),
(300, 11, 'Balecbec'),
(301, 11, 'Baraoas Norte'),
(302, 11, 'Baraoas Sur'),
(303, 11, 'Bariquir'),
(304, 11, 'Bato'),
(305, 11, 'Bimmotobot'),
(306, 11, 'Cabaritan Norte'),
(307, 11, 'Cabaritan Sur'),
(308, 11, 'Casilagan'),
(309, 11, 'Dal-lipaoen'),
(310, 11, 'Daramuangan'),
(311, 11, 'Guesset'),
(312, 11, 'Gusing Norte'),
(313, 11, 'Gusing Sur'),
(314, 11, 'Imelda'),
(315, 11, 'Lioac Norte'),
(316, 11, 'Lioac Sur'),
(317, 11, 'Magungunay'),
(318, 11, 'Mamat-ing Norte'),
(319, 11, 'Mamat-ing Sur'),
(320, 11, 'Nagsidorisan'),
(321, 11, 'Natividad'),
(322, 11, 'Ortiz'),
(323, 11, 'Ribsuan'),
(324, 11, 'San Antonio'),
(325, 11, 'San Isidro'),
(326, 11, 'Sili'),
(327, 11, 'Suguidan Norte'),
(328, 11, 'Suguidan Sur'),
(329, 11, 'Tuddingan'),
(330, 12, 'Ambalite'),
(331, 12, 'Amgangonan'),
(332, 12, 'Cares'),
(333, 12, 'Duplas'),
(334, 12, 'Palina'),
(335, 12, 'Maoasoas Norte'),
(336, 12, 'Maoasoas Sur'),
(337, 12, 'San Luis'),
(338, 12, 'Cuenca'),
(339, 12, 'Saytan'),
(340, 12, 'Poblacion East'),
(341, 12, 'Poblacion West'),
(342, 12, 'Tavora East'),
(343, 12, 'Tavora Proper'),
(344, 13, 'Alipang'),
(345, 13, 'Ambangonan'),
(346, 13, 'Amlang'),
(347, 13, 'Bacani'),
(348, 13, 'Bangar'),
(349, 13, 'Bani'),
(350, 13, 'Benteneng-sapilang'),
(351, 13, 'Cadumanian'),
(352, 13, 'Camp one'),
(353, 13, 'Carunoan East'),
(354, 13, 'Carunoan West'),
(355, 13, 'Casilagan'),
(356, 13, 'Cataguintingan'),
(357, 13, 'Concepcion'),
(358, 13, 'Damortis'),
(359, 13, 'Gumot-nagcolaran'),
(360, 13, 'Inabaan Norte'),
(361, 13, 'Inabaan Sur'),
(362, 13, 'Marcos'),
(363, 13, 'Nagtagaan'),
(364, 13, 'Nangcamotian'),
(365, 13, 'Parasapas'),
(366, 13, 'Poblacion East'),
(367, 13, 'Poblacion West'),
(368, 13, 'Puzon'),
(369, 13, 'Rabon'),
(370, 13, 'San Jose'),
(371, 13, 'Subusub'),
(372, 13, 'Tabtabungao'),
(373, 13, 'Tanglag'),
(374, 13, 'Tay-ac'),
(375, 13, 'Udiao'),
(376, 13, 'Vila'),
(377, 14, 'Barangay I'),
(378, 14, 'Barangay II'),
(379, 14, 'Barangay III'),
(380, 14, 'Barangay IV'),
(381, 14, 'Abut'),
(382, 14, 'Apaleng'),
(383, 14, 'Bacsil'),
(384, 14, 'Bangbangolan'),
(385, 14, 'Bangcusay'),
(386, 14, 'Baraoas'),
(387, 14, 'Bato'),
(388, 14, 'Biday'),
(389, 14, 'Birunget'),
(390, 14, 'Bungro'),
(391, 14, 'Cabaroan'),
(392, 14, 'Cabarsican'),
(393, 14, 'Calabugao'),
(394, 14, 'Cadaclan'),
(395, 14, 'camansi'),
(396, 14, 'Canaoay'),
(397, 14, 'Carlatan'),
(398, 14, 'catbangen'),
(399, 14, 'Dallangayan Este'),
(400, 14, 'Dallangayan Oeste'),
(401, 14, 'Dalumpinas Este'),
(402, 14, 'Dalumpinas Oeste'),
(403, 14, 'Ilocanos Norte'),
(404, 14, 'Ilocanos Sur'),
(405, 14, 'Langcuas'),
(406, 14, 'Lingsat'),
(407, 14, 'Madayegdeg'),
(408, 14, 'Mameltac'),
(409, 14, 'Nagyubuyuban'),
(410, 14, 'Namtutan'),
(411, 14, 'Narra Este'),
(412, 14, 'Narra Oeste'),
(413, 14, 'Pacpaco'),
(414, 14, 'Pagdalagan Norte'),
(415, 14, 'Pagdaraoan'),
(416, 14, 'Pagudpud'),
(417, 14, 'Pao Norte'),
(418, 14, 'Pao Sur'),
(419, 14, 'Parian'),
(420, 14, 'Pias'),
(421, 14, 'Poro'),
(422, 14, 'Puspus'),
(423, 14, 'Sacyud'),
(424, 14, 'Sagayad'),
(425, 14, 'San Agustin'),
(426, 14, 'San Francisco'),
(427, 14, 'Santiago Norte'),
(428, 14, 'Santiago Sur'),
(429, 14, 'San Vicente'),
(430, 14, 'Saoay'),
(431, 14, 'Sevilla'),
(432, 14, 'Sibuan Otong'),
(433, 14, 'Tanqui'),
(434, 14, 'Tanquigan'),
(435, 14, 'Lingsat'),
(436, 14, 'Langcuas'),
(437, 14, 'Masicong'),
(438, 15, 'Amontok'),
(439, 15, 'Apayao'),
(440, 15, 'Balbalayang'),
(441, 15, 'Bayabas'),
(442, 15, 'Bucao'),
(443, 15, 'Bumbuneg'),
(444, 15, 'Daking'),
(445, 15, 'Lacong'),
(446, 15, 'Lipay Este'),
(447, 15, 'Lipay Norte'),
(448, 15, 'Lipay Proper'),
(449, 15, 'Lipay Sur'),
(450, 15, 'Lon-oy'),
(451, 15, 'Poblacion'),
(452, 15, 'Polipol'),
(453, 16, 'Allangigan'),
(454, 16, 'Aludiad'),
(455, 16, 'Bacasayan'),
(456, 16, 'Balballosa'),
(457, 16, 'Bambanay'),
(458, 16, 'Bugbugcao'),
(459, 16, 'Caarusipan'),
(460, 16, 'Cabaroan'),
(461, 16, 'Cabugnayan'),
(462, 16, 'Cacapian'),
(463, 16, 'Caculangan'),
(464, 16, 'Calincamasan'),
(465, 16, 'Casilagan'),
(466, 16, 'Datdungan'),
(467, 16, 'dangdangla'),
(468, 16, 'Dasay'),
(469, 16, 'Dinanum'),
(470, 16, 'Duplas'),
(471, 16, 'Guinguinaban'),
(472, 16, 'Ili Norte'),
(473, 16, 'Ili Sur'),
(474, 16, 'Legleg'),
(475, 16, 'Lubing'),
(476, 16, 'Nadsaag'),
(477, 16, 'Nagsabaran'),
(478, 16, 'Naguirangan'),
(479, 16, 'Naguituban'),
(480, 16, 'Nagyubuyuban'),
(481, 16, 'Oaquing'),
(482, 16, 'Pacpacac'),
(483, 16, 'Pagdildilan'),
(484, 16, 'Panicsican'),
(485, 16, 'Quidem'),
(486, 16, 'San Felipe'),
(487, 16, 'Sta Rosa'),
(488, 16, 'Sto Rosario'),
(489, 16, 'Saracat'),
(490, 16, 'Sinapangan'),
(491, 16, 'Taboc'),
(492, 16, 'Talogtog'),
(493, 16, 'Urbiztondo'),
(494, 17, 'Ambitacay'),
(495, 17, 'Balaoc'),
(496, 17, 'Bail'),
(497, 17, 'Baybay'),
(498, 17, 'Cabaruan'),
(499, 17, 'Casantaan'),
(500, 17, 'Casilagan'),
(501, 17, 'Cupang'),
(502, 17, 'Damortis'),
(503, 17, 'Fernando'),
(504, 17, 'Linong'),
(505, 17, 'Lomboy'),
(506, 17, 'Malabago'),
(507, 17, 'Namboongan'),
(508, 17, 'Namonitan'),
(509, 17, 'Narvacan'),
(510, 17, 'Patac'),
(511, 17, 'Poblacion'),
(512, 17, 'Pongpong'),
(513, 17, 'Raois'),
(514, 17, 'Togoc'),
(515, 17, 'Tubod'),
(516, 17, 'Ubangan'),
(517, 18, 'Carro-oy'),
(518, 18, 'Lettac Norte'),
(519, 18, 'Lettac Sur'),
(520, 18, 'Mangaan'),
(521, 18, 'Paagan'),
(522, 18, 'Poblacion'),
(523, 18, 'Puguil'),
(524, 18, 'Ramot'),
(525, 18, 'Sapdaan'),
(526, 18, 'Sasaba'),
(527, 18, 'Tubaday'),
(528, 18, 'Carro-oy'),
(529, 18, 'Ambagat'),
(530, 19, 'Bigbiga'),
(531, 19, 'Bulalaan'),
(532, 19, 'Castro'),
(533, 19, 'Duplas'),
(534, 19, 'Ilocano'),
(535, 19, 'Ipet'),
(536, 19, 'Maliclico'),
(537, 19, 'Namaltugan'),
(538, 19, 'Old Central'),
(539, 19, 'Poblacion'),
(540, 19, 'Porporiket'),
(541, 19, 'San Francisco Norte'),
(542, 19, 'San Francisco Sur'),
(543, 19, 'San Jose'),
(544, 19, 'Sengngat'),
(545, 19, 'Turod'),
(546, 19, 'Up-uplas'),
(547, 20, 'Amallapay'),
(548, 20, 'Caoigue'),
(549, 20, 'Francia Sur'),
(550, 20, 'Francia West'),
(551, 20, 'Garcia'),
(552, 20, 'Gonzales'),
(553, 20, 'Halog East'),
(554, 20, 'Halog West'),
(555, 20, 'Leones East'),
(556, 20, 'Leones West'),
(557, 20, 'Linapew'),
(558, 20, 'Lloren'),
(559, 20, 'Magsaysay'),
(560, 20, 'Pideg'),
(561, 20, 'Poblacion'),
(562, 20, 'Rizal'),
(563, 20, 'Sta Teresa'),
(564, 20, 'Anduyan');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `description` varchar(550) DEFAULT NULL,
  `town` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `description`, `town`, `date`, `is_active`) VALUES
(1, 'Taray', 14, '2017-12-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `municipalities`
--

CREATE TABLE `municipalities` (
  `id` int(10) NOT NULL,
  `municipality` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `municipalities`
--

INSERT INTO `municipalities` (`id`, `municipality`) VALUES
(1, 'Agoo'),
(2, 'Aringay'),
(3, 'Bacnotan'),
(4, 'Bagulin'),
(5, 'Balaoan'),
(6, 'Bangar'),
(7, 'Bauang'),
(8, 'Burgos'),
(9, 'Caba'),
(10, 'Luna'),
(11, 'Naguilian'),
(12, 'Pugo'),
(13, 'Rosario'),
(14, 'San Fernando'),
(15, 'San Gabriel'),
(16, 'San Juan'),
(17, 'Santo Tomas'),
(18, 'Santol'),
(19, 'Sudipen'),
(20, 'Tubao');

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` int(10) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `personal_info_no` varchar(50) DEFAULT NULL,
  `firstname` varchar(500) DEFAULT NULL,
  `middlename` varchar(500) DEFAULT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `extension_name` varchar(500) DEFAULT NULL,
  `civil_status` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` varchar(55) DEFAULT NULL,
  `birth_place` varchar(550) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `family_head` tinyint(5) DEFAULT NULL,
  `family_members` int(11) DEFAULT NULL,
  `employment_status` varchar(5) DEFAULT NULL,
  `philhealth_member` varchar(5) DEFAULT NULL,
  `address_house` int(11) DEFAULT NULL,
  `address_sitio` varchar(100) DEFAULT NULL,
  `address_purok` int(11) DEFAULT NULL,
  `address_barangay` varchar(550) DEFAULT NULL,
  `address_municipality` varchar(550) DEFAULT NULL,
  `address_province` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `contact_email` varchar(550) DEFAULT NULL,
  `educational_attainment` varchar(550) DEFAULT NULL,
  `occupation` varchar(550) DEFAULT NULL,
  `presented_id` varchar(100) DEFAULT NULL,
  `presented_id_no` varchar(100) DEFAULT NULL,
  `attendance` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_infos`
--

INSERT INTO `personal_infos` (`id`, `event_id`, `personal_info_no`, `firstname`, `middlename`, `lastname`, `extension_name`, `civil_status`, `gender`, `birth_date`, `birth_place`, `age`, `family_head`, `family_members`, `employment_status`, `philhealth_member`, `address_house`, `address_sitio`, `address_purok`, `address_barangay`, `address_municipality`, `address_province`, `contact_no`, `contact_email`, `educational_attainment`, `occupation`, `presented_id`, `presented_id_no`, `attendance`) VALUES
(1, 1, NULL, 'John Paul', 'Garcia', 'Balanon', NULL, 'Single', 'Male', '1998-06-11', NULL, 19, 0, 0, 'true', 'true', 2, '3', 3, '10', '1', NULL, '099999932', NULL, 'Secondary', 'PGLU', 'SSS', '098389293', 0),
(2, 1, 'C0001', 'sd', 's', 'asd', '', NULL, NULL, '2017-11-03', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, '431', '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `description` varchar(550) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `color_code` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `description`, `min_age`, `max_age`, `color_code`) VALUES
(1, 'Medical', 1, 10, 'red'),
(2, 'Dental', NULL, NULL, NULL),
(3, 'Feeding & Distribution of Hygiene Kit', NULL, NULL, NULL),
(4, 'Distribution of Seeds', NULL, NULL, NULL),
(5, 'Legal Counseling', NULL, NULL, NULL),
(6, 'Free Massage', NULL, NULL, NULL),
(7, 'Disaster', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services_availed`
--

CREATE TABLE `services_availed` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_infos`
--
ALTER TABLE `account_infos`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_availed`
--
ALTER TABLE `services_availed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_infos`
--
ALTER TABLE `account_infos`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `services_availed`
--
ALTER TABLE `services_availed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
