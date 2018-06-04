-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2018 at 05:06 PM
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
(3, 'Sha', 'Iglesias', 'Ballesteros', 'encoder', 'encoder', 'Encoder'),
(4, 'Sylvester', 'Bulilan', 'Flores', 'sly', 'legend', 'Admin');

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
(100, 3, 'Oya-oy'),
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
(350, 13, 'Benteng-Sapilang'),
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
(1, 'I love my barangay', 3, '2018-06-08', 1);

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
  `age` int(10) DEFAULT '0',
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
  `category` varchar(50) DEFAULT NULL,
  `presented_id` varchar(100) DEFAULT NULL,
  `presented_id_no` varchar(100) DEFAULT NULL,
  `attendance` tinyint(4) DEFAULT NULL,
  `system_log` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_infos`
--

INSERT INTO `personal_infos` (`id`, `event_id`, `personal_info_no`, `firstname`, `middlename`, `lastname`, `extension_name`, `civil_status`, `gender`, `birth_date`, `birth_place`, `age`, `family_head`, `family_members`, `employment_status`, `philhealth_member`, `address_house`, `address_sitio`, `address_purok`, `address_barangay`, `address_municipality`, `address_province`, `contact_no`, `contact_email`, `educational_attainment`, `occupation`, `category`, `presented_id`, `presented_id_no`, `attendance`, `system_log`, `last_modified_by`) VALUES
(1, 1, '0001', 'Lydia', 'J.', 'Facundo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(2, 1, '0002', 'Catalina', 'D.', 'Buen', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, 0, '2018-06-04 16:03:55', NULL),
(3, 1, '0003', 'Teresita', 'S.', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(4, 1, '0004', 'Emelia', 'D.', 'Antoro', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(5, 1, '0005', 'Francisca', 'C.', 'Quiaño', NULL, NULL, NULL, '1970-01-01', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, 1, '2018-06-04 16:03:55', 4),
(6, 1, '0006', 'Macaria', 'E.', 'Dingcog', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(7, 1, '0007', 'Joni', 'D.', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(8, 1, '0008', 'Joseph', 'D.', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(9, 1, '0009', 'Romeo', 'M.', 'Ragmac', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(10, 1, '0010', 'Edgar', 'O.', 'Oligo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(11, 1, '0011', 'Trinidad', 'O.', 'Sabado', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(12, 1, '0012', 'Jessie', 'R.', 'Ragmac', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(13, 1, '0013', 'Joseph', 'R.', 'Malano', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(14, 1, '0014', 'Annielyn', 'B.', 'Paulo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(15, 1, '0015', 'Marta', '', 'Bettong', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(16, 1, '0016', 'Helen', 'D.', 'Landesan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(17, 1, '0017', 'Raymund', 'L.', 'Vergara', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(18, 1, '0018', 'Darna', 'C.', 'Delmendo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(19, 1, '0019', 'Rocardo', 'S.', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(20, 1, '0020', 'Saturnino', 'E.', 'Dingcog', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(21, 1, '0021', 'Ruben', 'S.', 'Gadallo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(22, 1, '0022', 'Marissa', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(23, 1, '0023', 'Jemalyn', 'A.', 'Paulo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(24, 1, '0024', 'Alan', 'J.', 'Tadina', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(25, 1, '0025', 'Jonard', '', 'Paulo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(26, 1, '0026', 'Ariann', '', 'Lubbui', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(27, 1, '0027', 'Nely', 'D.', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(28, 1, '0028', 'Jose', 'E.', 'Lorenzo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(29, 1, '0029', 'Daniel', 'S.', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(30, 1, '0030', 'Judy', '', 'Ann', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(31, 1, '0031', 'Lusviminda', 'G.', 'Cubangay', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(32, 1, '0032', 'Almar', 'L.', 'Tadina', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(33, 1, '0033', 'Leequeen', '', 'Bucales', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(34, 1, '0034', 'Agnes', '', 'Ordo?ez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(35, 1, '0035', 'Juliet', '', 'Aquino', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(36, 1, '0036', 'Cesar', 'C.', 'Delmendo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(37, 1, '0037', 'Merlyn', 'R.', 'Opinaldo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(38, 1, '0038', 'Joseph', 'O.', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:55', NULL),
(39, 1, '0039', 'Benjamin', 'S.', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:56', NULL),
(40, 1, '0040', 'Legaya', 'L.', 'Vergara', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:56', NULL),
(41, 1, '0041', 'Marlon', 'C.', 'Agustin', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:56', NULL),
(42, 1, '0042', 'Francisco', '', 'Paulo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:56', NULL),
(43, 1, '0043', 'Ferlyn', '', 'Santiago', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:03:56', NULL),
(44, 1, '0044', 'Acosta', '', 'Francisco', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(45, 1, '0045', 'Acosta', '', 'Irenia', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(46, 1, '0046', 'Acosta', '', 'Paterno', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(47, 1, '0047', 'Aguilar', '', 'Teodorico', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(48, 1, '0048', 'Almodovar', 'Grace', 'Jean', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(49, 1, '0049', 'Almoite', '', 'Eduardo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(50, 1, '0050', 'Amansec', '', 'Lilia', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(51, 1, '0051', 'Asuncion', '', 'Antonio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(52, 1, '0052', 'Asuncion', '', 'Atelano', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(53, 1, '0053', 'Asuncion', '', 'Elsie', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(54, 1, '0054', 'Balingit', '', 'Cirila', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(55, 1, '0055', 'Bergano', '', 'Marisa', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(56, 1, '0056', 'Bergano', '', 'Rodrigo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(57, 1, '0057', 'Camat', 'Abelardo', 'C.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(58, 1, '0058', 'Camat', '', 'Bernabe', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(59, 1, '0059', 'Camat', '', 'Juvy', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(60, 1, '0060', 'Camat', '', 'Melanio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(61, 1, '0061', 'Camay', '', 'Jaime', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(62, 1, '0062', 'Cargo', '', 'Edward', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(63, 1, '0063', 'Costales', '', 'Elvira', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(64, 1, '0064', 'Costales', '', 'Richard', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(65, 1, '0065', 'Divina', '', 'Aiza', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(66, 1, '0066', 'Divina', '', 'Freddie', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(67, 1, '0067', 'Divina', '', 'Jessa', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(68, 1, '0068', 'Divina', '', 'Jesus', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(69, 1, '0069', 'Divina', 'Mae', 'Ann', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(70, 1, '0070', 'Divina', '', 'Ofelia', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(71, 1, '0071', 'Eugenio', '', 'Marissa', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(72, 1, '0072', 'Garay', '', 'Eduardo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(73, 1, '0073', 'Julaila', '', 'Laura', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(74, 1, '0074', 'Julaton', '', 'Bonifacio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(75, 1, '0075', 'Julaton', '', 'Demetrio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(76, 1, '0076', 'Julaton', '', 'Josefina', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(77, 1, '0077', 'Julaton', '', 'Leonardo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(78, 1, '0078', 'Julaton', '', 'Malina', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:16:21', NULL),
(79, 1, '0079', 'Marites', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(80, 1, '0080', 'Michelle', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(81, 1, '0081', 'Onofre', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(82, 1, '0082', 'Pepito', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(83, 1, '0083', 'Reynaldo', 'T.', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(84, 1, '0084', 'Rodolfo', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(85, 1, '0085', 'Rommel', '', 'Julaton', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(86, 1, '0086', 'Joseph', '', 'Julian', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(87, 1, '0087', 'Salbino', '', 'Julian', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(88, 1, '0088', 'Maria/PWD', '', 'Karganilla', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(89, 1, '0089', 'Marcelino', 'E.', 'Lacia', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(90, 1, '0090', 'Norma', '', 'Laranang', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(91, 1, '0091', 'Chiquito', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(92, 1, '0092', 'Edgar', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(93, 1, '0093', 'Jimmy', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(94, 1, '0094', 'Nelia', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(95, 1, '0095', 'Hernando', '', 'Ligsa', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(96, 1, '0096', 'Eufemia', '', 'Lomocso', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(97, 1, '0097', 'Lolita', '', 'Manglicmot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(98, 1, '0098', 'Romulo', '', 'Moyano', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(99, 1, '0099', 'Cesar', '', 'Nabong', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(100, 1, '0100', 'Zenaida', '', 'Nabong', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(101, 1, '0101', 'Efren', '', 'Nacis', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(102, 1, '0102', 'Imelda', '', 'Nacis', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(103, 1, '0103', 'Romeo', '', 'Neri', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(104, 1, '0104', 'Benjamin', '', 'Nieva', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(105, 1, '0105', 'Erwin', '', 'Nieva', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(106, 1, '0106', 'Jocelyn', '', 'Nieva', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(107, 1, '0107', 'Maribel', '', 'Noveloso', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(108, 1, '0108', 'Evelyn', '', 'Novelozo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(109, 1, '0109', 'Jhona', '', 'Obsanga', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(110, 1, '0110', 'Annalyn', 'T.', 'Ordonio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(111, 1, '0111', 'Adora', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(112, 1, '0112', 'Ernesto', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(113, 1, '0113', 'Magdalena', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(114, 1, '0114', 'Rodelio', 'G.', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(115, 1, '0115', 'Romel', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(116, 1, '0116', 'Victor', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(117, 1, '0117', 'Elmer', '', 'Quinivista', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(118, 1, '0118', 'Roger', '', 'Quinivista', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(119, 1, '0119', 'Maricel', '', 'Rinonos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(120, 1, '0120', 'Francisca', '', 'Romero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(121, 1, '0121', 'Hector', '', 'Romero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(122, 1, '0122', 'Wilmer', '', 'Romero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(123, 1, '0123', 'Rowell', '', 'Rualo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(124, 1, '0124', 'Edmar', '', 'Sibayan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(125, 1, '0125', 'Excel', 'N.', 'Sibayan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(126, 1, '0126', 'Geraldine', '', 'Sibayan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(127, 1, '0127', 'Alfredo', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(128, 1, '0128', 'Andres', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(129, 1, '0129', 'Antonio', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(130, 1, '0130', 'Cleto', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(131, 1, '0131', 'Cresencio', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(132, 1, '0132', 'Edna', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(133, 1, '0133', 'Rodel', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:17', NULL),
(134, 1, '0134', 'Rizaly', '', 'Tabil', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:18', NULL),
(135, 1, '0135', 'Celestino', '', 'Teredano', NULL, NULL, NULL, '1970-01-01', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, 1, '2018-06-04 16:36:18', 4),
(136, 1, '0136', 'Pacita', '', 'Torres', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:18', NULL),
(137, 1, '0137', 'Rino', '', 'Torres', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:36:18', NULL),
(138, 1, '0138', 'Violeta', '', 'Ablao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(139, 1, '0139', 'Asterio', '', 'Ancheta', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(140, 1, '0140', 'Lolita', '', 'Carino', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(141, 1, '0141', 'Rosie', '', 'Casino', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(142, 1, '0142', 'Lolita', '', 'Delena', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(143, 1, '0143', 'Juanito', '', 'Gaerlan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(144, 1, '0144', 'Ermalyn', '', 'Galvez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(145, 1, '0145', 'Rosita', '', 'Ganola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(146, 1, '0146', 'Avelina', '', 'Nonez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(147, 1, '0147', 'Milagros', '', 'Orden', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(148, 1, '0148', 'Manuel', '', 'Ortiza', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(149, 1, '0149', 'Benilda', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(150, 1, '0150', 'Caridad', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(151, 1, '0151', 'Marina', '', 'Ragmac', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(152, 1, '0152', 'Carolina', '', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(153, 1, '0153', 'Erlinda', '', 'Ugot', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(154, 1, '0154', 'Elsie', '', 'Ursua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:39:28', NULL),
(155, 1, '0155', 'Lourdes', '', 'Abat', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(156, 1, '0156', 'Alfonso', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(157, 1, '0157', 'Corazon', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(158, 1, '0158', 'Dolly', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(159, 1, '0159', 'Danilo', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(160, 1, '0160', 'Elpidio', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(161, 1, '0161', 'Ernesto', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(162, 1, '0162', 'Esperanza', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(163, 1, '0163', 'Florenda', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(164, 1, '0164', 'Gloria', 'L.', 'Almojuela.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(165, 1, '0165', 'Gloria', 'N.', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(166, 1, '0166', 'Jovelyn', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(167, 1, '0167', 'Juan', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(168, 1, '0168', 'Karen', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(169, 1, '0169', 'Lani', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(170, 1, '0170', 'Leonida', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(171, 1, '0171', 'Luzviminda', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(172, 1, '0172', 'Marcela', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(173, 1, '0173', 'Mary', 'Jane', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(174, 1, '0174', 'Rebecca', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(175, 1, '0175', 'Samuel', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(176, 1, '0176', 'Zozimo', '', 'Almojuela', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(177, 1, '0177', 'Dary', '', 'Andaya', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(178, 1, '0178', 'Melinda', '', 'Andaya', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(179, 1, '0179', 'Mirriam', '', 'Andaya', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(180, 1, '0180', 'Priscila', '', 'Andaya', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(181, 1, '0181', 'Rosenda', '', 'Andaya', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(182, 1, '0182', 'Alma', '', 'Baguio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(183, 1, '0183', 'Luisita', '', 'Baguio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(184, 1, '0184', 'Rosalie', '', 'Baguio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(185, 1, '0185', 'Merlyn', '', 'Balagbagan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(186, 1, '0186', 'Carmen', '', 'Cardenas', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(187, 1, '0187', 'Everly', '', 'Cardenas', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(188, 1, '0188', 'Inocencia', '', 'Cardenas', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(189, 1, '0189', 'Benigno', '', 'Carig', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(190, 1, '0190', 'Teresita', '', 'Carig', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(191, 1, '0191', 'Aiza', '', 'Gañola', NULL, NULL, NULL, '1970-01-01', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, 1, '2018-06-04 16:43:48', 4),
(192, 1, '0192', 'Rosebela', '', 'Ga¤ola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(193, 1, '0193', 'Elena', '', 'Gappi', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(194, 1, '0194', 'Ritchelle', '', 'Jarquio', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(195, 1, '0195', 'Emily', '', 'Laranang', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(196, 1, '0196', 'Roderick', '', 'Laranang', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(197, 1, '0197', 'Vilma', '', 'Laranang', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(198, 1, '0198', 'Arlene', '', 'Marquez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(199, 1, '0199', 'Herminigildo', '', 'Marquez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(200, 1, '0200', 'Leopoldo', '', 'Marquez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(201, 1, '0201', 'Monica', '', 'Marquez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(202, 1, '0202', 'Cristina', '', 'Nebria', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(203, 1, '0203', 'Mildren', 'Joy', 'Ocampo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(204, 1, '0204', 'Ruben', '', 'Ocampo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(205, 1, '0205', 'Rufo', '', 'Ocampo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(206, 1, '0206', 'Maria', '', 'Oreiro', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(207, 1, '0207', 'Rodolfo', 'Sr.', 'Pagador', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(208, 1, '0208', 'Alfredo', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(209, 1, '0209', 'Alma', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(210, 1, '0210', 'Amado', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(211, 1, '0211', 'Anita', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(212, 1, '0212', 'Cresencia', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(213, 1, '0213', 'Cristina', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(214, 1, '0214', 'Danilo', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(215, 1, '0215', 'Florante', 'T.', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(216, 1, '0216', 'Gemma', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(217, 1, '0217', 'Lolita', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(218, 1, '0218', 'Mylene', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(219, 1, '0219', 'Priscila', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(220, 1, '0220', 'Rochelle', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(221, 1, '0221', 'Romeo', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(222, 1, '0222', 'Ronald', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(223, 1, '0223', 'Rosalie', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(224, 1, '0224', 'Teresita', '', 'Pajarit', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(225, 1, '0225', 'Leny', '', 'Rivera', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(226, 1, '0226', 'Rosemarie', '', 'Rola', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(227, 1, '0227', 'Alano', '', 'Sarmiento', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(228, 1, '0228', 'Violeta', '', 'Sarmiento', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL);
INSERT INTO `personal_infos` (`id`, `event_id`, `personal_info_no`, `firstname`, `middlename`, `lastname`, `extension_name`, `civil_status`, `gender`, `birth_date`, `birth_place`, `age`, `family_head`, `family_members`, `employment_status`, `philhealth_member`, `address_house`, `address_sitio`, `address_purok`, `address_barangay`, `address_municipality`, `address_province`, `contact_no`, `contact_email`, `educational_attainment`, `occupation`, `category`, `presented_id`, `presented_id_no`, `attendance`, `system_log`, `last_modified_by`) VALUES
(229, 1, '0229', 'Carmelita', '', 'Teofilo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(230, 1, '0230', 'Thelma', '', 'Teofilo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(231, 1, '0231', 'Lolita', '', 'Tolentino', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(232, 1, '0232', 'Elvira', '', 'Trinidad', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(233, 1, '0233', 'Trinidad', '', 'Tuvera', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:43:48', NULL),
(234, 1, '0234', 'Eduardo', '', 'Ablao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(235, 1, '0235', 'William', '', 'Ablao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(236, 1, '0236', 'Agnes', '', 'Abuan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(237, 1, '0237', 'Milagros', '', 'Atud', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(238, 1, '0238', 'Joel', '', 'Caasi', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(239, 1, '0239', 'Melissa', '', 'Caasi', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(240, 1, '0240', 'Marilou', '', 'Casilla', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(241, 1, '0241', 'Anita', '', 'Dalao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(242, 1, '0242', 'Mercedita', '', 'Dalao', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(243, 1, '0243', 'Rosario', '', 'Duladol', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(244, 1, '0244', 'Ruben', 'Jr.', 'Duladol', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(245, 1, '0245', 'Stewart', '', 'Duladol', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(246, 1, '0246', 'Leonora', '', 'Espe', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(247, 1, '0247', 'Johnn', 'Philip', 'Esperon', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(248, 1, '0248', 'Glenda/', 'Anthony', 'Felia', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(249, 1, '0249', 'Oliver', '', 'Hada', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(250, 1, '0250', 'Jimmy', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(251, 1, '0251', 'Lolita', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(252, 1, '0252', 'Domingo', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(253, 1, '0253', 'Jaime', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(254, 1, '0254', 'Noemi', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(255, 1, '0255', 'Rodel', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(256, 1, '0256', 'Romell', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(257, 1, '0257', 'Vanessa', '', 'Licudan', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(258, 1, '0258', 'Dick', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(259, 1, '0259', 'Dionisio', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(260, 1, '0260', 'Eduardo', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(261, 1, '0261', 'Erick', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(262, 1, '0262', 'Jomel', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(263, 1, '0263', 'Joseph', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(264, 1, '0264', 'Pablo', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(265, 1, '0265', 'Rolly', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(266, 1, '0266', 'Ronnie', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(267, 1, '0267', 'William', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(268, 1, '0268', 'Zenaida', '', 'Lopez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(269, 1, '0269', 'Floredo', '', 'Mariano', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(270, 1, '0270', 'Jean', 'Joan', 'Mendez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(271, 1, '0271', 'Johny', 'Jr.', 'Mendez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(272, 1, '0272', 'Leveriza', '', 'Mendez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(273, 1, '0273', 'Carolina', 'Carolina', 'Mortero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(274, 1, '0274', 'Randy', '', 'Nacis', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(275, 1, '0275', 'Marina', '', 'Nebres', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(276, 1, '0276', 'Editha', '', 'Nero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(277, 1, '0277', 'Jaime', '', 'Oreiro', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(278, 1, '0278', 'Carmela', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(279, 1, '0279', 'Honorina', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(280, 1, '0280', 'Irene', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(281, 1, '0281', 'Josephine', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(282, 1, '0282', 'Norma', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(283, 1, '0283', 'Revelina', '', 'Orejudos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(284, 1, '0284', 'Maribel', '', 'Pataray', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:32', NULL),
(285, 1, '0285', 'Melanie', '', 'Ramos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:33', NULL),
(286, 1, '0286', 'Elmer', '', 'Tadina', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:33', NULL),
(287, 1, '0287', 'Juan', 'Jr.', 'Tugade', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:33', NULL),
(288, 1, '0288', 'Rosenda', '', 'Tuvera', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:51:33', NULL),
(289, 1, '0289', 'Renato', '', 'Bello', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(290, 1, '0290', 'Janet', '', 'Cardinez', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(291, 1, '0291', 'Henry', '', 'Julaiala', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(292, 1, '0292', 'Leopoldo', '', 'Julaila', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(293, 1, '0293', 'Miguel', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(294, 1, '0294', 'Ricarte', '', 'Licos', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(295, 1, '0295', 'Florenda', '', 'Morales', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(296, 1, '0296', 'June', '', 'Navarete', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(297, 1, '0297', 'Leonor', '', 'Ordanza', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(298, 1, '0298', 'Alicia', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(299, 1, '0299', 'Clarita', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(300, 1, '0300', 'Juvenal', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(301, 1, '0301', 'Letecia', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(302, 1, '0302', 'Rosalyn', '', 'Pascua', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(303, 1, '0303', 'Florida', '', 'Ribu', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(304, 1, '0304', 'Pedro', '', 'Romero', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(305, 1, '0305', 'Benjamin', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(306, 1, '0306', 'Edmund', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(307, 1, '0307', 'Edward', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(308, 1, '0308', 'Jayson', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(309, 1, '0309', 'Juanito', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(310, 1, '0310', 'Remedios', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(311, 1, '0311', 'Remegio', '', 'Tabafunda', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL),
(312, 1, '0312', 'Emilito', '', 'Vilog', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, NULL, NULL, NULL, 'Indigent', NULL, NULL, NULL, '2018-06-04 16:55:03', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `personal_infos_list`
--
CREATE TABLE `personal_infos_list` (
`id` int(10)
,`personal_info_no` varchar(50)
,`fullname` text
,`gender` varchar(10)
,`event` text
,`barangay` varchar(500)
,`municipality` varchar(255)
,`last_modified_by` varchar(201)
,`placeholder` binary(0)
);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `description` varchar(550) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `color_code` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `description`, `color`, `min_age`, `max_age`, `color_code`, `category`) VALUES
(1, 'Medical', 'Red', 1, 100, 'de2c3a', ''),
(2, 'Dental', 'Brown', 1, 100, 'd8862f', ''),
(3, 'Distribution of Seeds', 'Green', 1, 100, '56ea8d', NULL),
(4, 'Legal Counseling', 'Blue', 1, 100, '329cd4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services_availed`
--

CREATE TABLE `services_availed` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `service_availed` tinyint(4) NOT NULL DEFAULT '0',
  `last_modified_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services_availed`
--

INSERT INTO `services_availed` (`id`, `service_id`, `profile_id`, `event_id`, `service_availed`, `last_modified_by`) VALUES
(1, 1, 1, 1, 0, 4),
(2, 2, 1, 1, 0, 4),
(3, 3, 1, 1, 0, 4),
(4, 4, 1, 1, 0, 4);

-- --------------------------------------------------------

--
-- Structure for view `personal_infos_list`
--
DROP TABLE IF EXISTS `personal_infos_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `personal_infos_list`  AS  select `personal_infos`.`id` AS `id`,`personal_infos`.`personal_info_no` AS `personal_info_no`,concat(`personal_infos`.`lastname`,' ',`personal_infos`.`firstname`,' ',ifnull(`personal_infos`.`middlename`,'')) AS `fullname`,`personal_infos`.`gender` AS `gender`,(select `events`.`description` from `events` where (`events`.`id` = `personal_infos`.`event_id`)) AS `event`,(select `barangays`.`barangay_description` from `barangays` where (`barangays`.`id` = `personal_infos`.`address_barangay`)) AS `barangay`,(select `municipalities`.`municipality` from `municipalities` where (`municipalities`.`id` = `personal_infos`.`address_municipality`)) AS `municipality`,(select concat(`account_infos`.`account_firstname`,' ',`account_infos`.`account_lastname`) from `account_infos` where (`account_infos`.`account_id` = `personal_infos`.`last_modified_by`)) AS `last_modified_by`,NULL AS `placeholder` from `personal_infos` ;

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
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `services_availed`
--
ALTER TABLE `services_availed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
