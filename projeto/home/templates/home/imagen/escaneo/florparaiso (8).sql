-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2018 a las 10:37:24
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `florparaiso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `capital` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ciudad`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=523 ;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `id_estado`, `ciudad`, `capital`) VALUES
(1, 1, 'Maroa', 0),
(2, 1, 'Puerto Ayacucho', 1),
(3, 1, 'San Fernando de Atabapo', 0),
(4, 2, 'Anaco', 0),
(5, 2, 'Aragua de Barcelona', 0),
(6, 2, 'Barcelona', 1),
(7, 2, 'Boca de Uchire', 0),
(8, 2, 'Cantaura', 0),
(9, 2, 'Clarines', 0),
(10, 2, 'El Chaparro', 0),
(11, 2, 'El Pao Anzoategui', 0),
(12, 2, 'El Tigre', 0),
(13, 2, 'El Tigrito', 0),
(14, 2, 'Guanape', 0),
(15, 2, 'Guanta', 0),
(16, 2, 'Lecheria', 0),
(17, 2, 'Onoto', 0),
(18, 2, 'Pariaguan', 0),
(19, 2, 'Piritu', 0),
(20, 2, 'Puerto La Cruz', 0),
(21, 2, 'Puerto Piritu', 0),
(22, 2, 'Sabana de Uchire', 0),
(23, 2, 'San Mateo Anzoategui', 0),
(24, 2, 'San Pablo Anzoategui', 0),
(25, 2, 'San Tome', 0),
(26, 2, 'Santa Ana de Anzoategui', 0),
(27, 2, 'Santa Fe Anzoategui', 0),
(28, 2, 'Santa Rosa', 0),
(29, 2, 'Soledad', 0),
(30, 2, 'Urica', 0),
(31, 2, 'Valle de Guanape', 0),
(43, 3, 'Achaguas', 0),
(44, 3, 'Biruaca', 0),
(45, 3, 'Bruzual', 0),
(46, 3, 'El Amparo', 0),
(47, 3, 'El Nula', 0),
(48, 3, 'Elorza', 0),
(49, 3, 'Guasdualito', 0),
(50, 3, 'Mantecal', 0),
(51, 3, 'Puerto Paez', 0),
(52, 3, 'San Fernando de Apure', 1),
(53, 3, 'San Juan de Payara', 0),
(54, 4, 'Barbacoas', 0),
(55, 4, 'Cagua', 0),
(56, 4, 'Camatagua', 0),
(58, 4, 'Choroni', 0),
(59, 4, 'Colonia Tovar', 0),
(60, 4, 'El Consejo', 0),
(61, 4, 'La Victoria', 0),
(62, 4, 'Las Tejerias', 0),
(63, 4, 'Magdaleno', 0),
(64, 4, 'Maracay', 1),
(65, 4, 'Ocumare de La Costa', 0),
(66, 4, 'Palo Negro', 0),
(67, 4, 'San Casimiro', 0),
(68, 4, 'San Mateo', 0),
(69, 4, 'San Sebastian', 0),
(70, 4, 'Santa Cruz de Aragua', 0),
(71, 4, 'Tocoron', 0),
(72, 4, 'Turmero', 0),
(73, 4, 'Villa de Cura', 0),
(74, 4, 'Zuata', 0),
(75, 5, 'Barinas', 1),
(76, 5, 'Barinitas', 0),
(77, 5, 'Barrancas', 0),
(78, 5, 'Calderas', 0),
(79, 5, 'Capitanejo', 0),
(80, 5, 'Ciudad Bolivia', 0),
(81, 5, 'El Canton', 0),
(82, 5, 'Las Veguitas', 0),
(83, 5, 'Libertad de Barinas', 0),
(84, 5, 'Sabaneta', 0),
(85, 5, 'Santa Barbara de Barinas', 0),
(86, 5, 'Socopo', 0),
(87, 6, 'Caicara del Orinoco', 0),
(88, 6, 'Canaima', 0),
(89, 6, 'Ciudad Bolivar', 1),
(90, 6, 'Ciudad Piar', 0),
(91, 6, 'El Callao', 0),
(92, 6, 'El Dorado', 0),
(93, 6, 'El Manteco', 0),
(94, 6, 'El Palmar', 0),
(95, 6, 'El Pao', 0),
(96, 6, 'Guasipati', 0),
(97, 6, 'Guri', 0),
(98, 6, 'La Paragua', 0),
(99, 6, 'Matanzas', 0),
(100, 6, 'Puerto Ordaz', 0),
(101, 6, 'San Felix', 0),
(102, 6, 'Santa Elena de Uairen', 0),
(103, 6, 'Tumeremo', 0),
(104, 6, 'Unare', 0),
(105, 6, 'Upata', 0),
(106, 7, 'Bejuma', 0),
(107, 7, 'Belen', 0),
(108, 7, 'Campo de Carabobo', 0),
(109, 7, 'Canoabo', 0),
(110, 7, 'Central Tacarigua', 0),
(111, 7, 'Chirgua', 0),
(112, 7, 'Ciudad Alianza', 0),
(113, 7, 'El Palito', 0),
(114, 7, 'Guacara', 0),
(115, 7, 'Guigue', 0),
(116, 7, 'Las Trincheras', 0),
(117, 7, 'Los Guayos', 0),
(118, 7, 'Mariara', 0),
(119, 7, 'Miranda', 0),
(120, 7, 'Montalban', 0),
(121, 7, 'Moron', 0),
(122, 7, 'Naguanagua', 0),
(123, 7, 'Puerto Cabello', 0),
(124, 7, 'San Joaquin', 0),
(125, 7, 'Tocuyito', 0),
(126, 7, 'Urama', 0),
(127, 7, 'Valencia', 1),
(128, 7, 'Vigirimita', 0),
(129, 8, 'Aguirre', 0),
(130, 8, 'Apartaderos Cojedes', 0),
(131, 8, 'Arismendi', 0),
(132, 8, 'Camuriquito', 0),
(133, 8, 'El Baul', 0),
(134, 8, 'El Limon', 0),
(135, 8, 'El Pao Cojedes', 0),
(136, 8, 'El Socorro', 0),
(137, 8, 'La Aguadita', 0),
(138, 8, 'Las Vegas', 0),
(139, 8, 'Libertad de Cojedes', 0),
(140, 8, 'Mapuey', 0),
(141, 8, 'Pi+n+edo', 0),
(142, 8, 'Samancito', 0),
(143, 8, 'San Carlos', 1),
(144, 8, 'Sucre', 0),
(145, 8, 'Tinaco', 0),
(146, 8, 'Tinaquillo', 0),
(147, 8, 'Vallecito', 0),
(148, 9, 'Tucupita', 1),
(149, 24, 'Caracas', 1),
(150, 24, 'El Junquito', 0),
(151, 10, 'Adicora', 0),
(152, 10, 'Boca de Aroa', 0),
(153, 10, 'Cabure', 0),
(154, 10, 'Capadare', 0),
(155, 10, 'Capatarida', 0),
(156, 10, 'Chichiriviche', 0),
(157, 10, 'Churuguara', 0),
(158, 10, 'Coro', 1),
(159, 10, 'Cumarebo', 0),
(160, 10, 'Dabajuro', 0),
(161, 10, 'Judibana', 0),
(162, 10, 'La Cruz de Taratara', 0),
(163, 10, 'La Vela de Coro', 0),
(164, 10, 'Los Taques', 0),
(165, 10, 'Maparari', 0),
(166, 10, 'Mene de Mauroa', 0),
(167, 10, 'Mirimire', 0),
(168, 10, 'Pedregal', 0),
(169, 10, 'Piritu Falcon', 0),
(170, 10, 'Pueblo Nuevo Falcon', 0),
(171, 10, 'Puerto Cumarebo', 0),
(172, 10, 'Punta Cardon', 0),
(173, 10, 'Punto Fijo', 0),
(174, 10, 'San Juan de Los Cayos', 0),
(175, 10, 'San Luis', 0),
(176, 10, 'Santa Ana Falcon', 0),
(177, 10, 'Santa Cruz De Bucaral', 0),
(178, 10, 'Tocopero', 0),
(179, 10, 'Tocuyo de La Costa', 0),
(180, 10, 'Tucacas', 0),
(181, 10, 'Yaracal', 0),
(182, 11, 'Altagracia de Orituco', 0),
(183, 11, 'Cabruta', 0),
(184, 11, 'Calabozo', 0),
(185, 11, 'Camaguan', 0),
(196, 11, 'Chaguaramas Guarico', 0),
(197, 11, 'El Socorro', 0),
(198, 11, 'El Sombrero', 0),
(199, 11, 'Las Mercedes de Los Llanos', 0),
(200, 11, 'Lezama', 0),
(201, 11, 'Onoto', 0),
(202, 11, 'Ortiz', 0),
(203, 11, 'San Jose de Guaribe', 0),
(204, 11, 'San Juan de Los Morros', 1),
(205, 11, 'San Rafael de Laya', 0),
(206, 11, 'Santa Maria de Ipire', 0),
(207, 11, 'Tucupido', 0),
(208, 11, 'Valle de La Pascua', 0),
(209, 11, 'Zaraza', 0),
(210, 12, 'Aguada Grande', 0),
(211, 12, 'Atarigua', 0),
(212, 12, 'Barquisimeto', 1),
(213, 12, 'Bobare', 0),
(214, 12, 'Cabudare', 0),
(215, 12, 'Carora', 0),
(216, 12, 'Cubiro', 0),
(217, 12, 'Cuji', 0),
(218, 12, 'Duaca', 0),
(219, 12, 'El Manzano', 0),
(220, 12, 'El Tocuyo', 0),
(221, 12, 'Guarico', 0),
(222, 12, 'Humocaro Alto', 0),
(223, 12, 'Humocaro Bajo', 0),
(224, 12, 'La Miel', 0),
(225, 12, 'Moroturo', 0),
(226, 12, 'Quibor', 0),
(227, 12, 'Rio Claro', 0),
(228, 12, 'Sanare', 0),
(229, 12, 'Santa Ines', 0),
(230, 12, 'Sarare', 0),
(231, 12, 'Siquisique', 0),
(232, 12, 'Tintorero', 0),
(233, 13, 'Apartaderos Merida', 0),
(234, 13, 'Arapuey', 0),
(235, 13, 'Bailadores', 0),
(236, 13, 'Caja Seca', 0),
(237, 13, 'Canagua', 0),
(238, 13, 'Chachopo', 0),
(239, 13, 'Chiguara', 0),
(240, 13, 'Ejido', 0),
(241, 13, 'El Vigia', 0),
(242, 13, 'La Azulita', 0),
(243, 13, 'La Playa', 0),
(244, 13, 'Lagunillas Merida', 0),
(245, 13, 'Merida', 1),
(246, 13, 'Mesa de Bolivar', 0),
(247, 13, 'Mucuchies', 0),
(248, 13, 'Mucujepe', 0),
(249, 13, 'Mucuruba', 0),
(250, 13, 'Nueva Bolivia', 0),
(251, 13, 'Palmarito', 0),
(252, 13, 'Pueblo Llano', 0),
(253, 13, 'Santa Cruz de Mora', 0),
(254, 13, 'Santa Elena de Arenales', 0),
(255, 13, 'Santo Domingo', 0),
(256, 13, 'Tabay', 0),
(257, 13, 'Timotes', 0),
(258, 13, 'Torondoy', 0),
(259, 13, 'Tovar', 0),
(260, 13, 'Tucani', 0),
(261, 13, 'Zea', 0),
(262, 14, 'Araguita', 0),
(263, 14, 'Carrizal', 0),
(264, 14, 'Caucagua', 0),
(265, 14, 'Chaguaramas Miranda', 0),
(266, 14, 'Charallave', 0),
(267, 14, 'Chirimena', 0),
(268, 14, 'Chuspa', 0),
(269, 14, 'Cua', 0),
(270, 14, 'Cupira', 0),
(271, 14, 'Curiepe', 0),
(272, 14, 'El Guapo', 0),
(273, 14, 'El Jarillo', 0),
(274, 14, 'Filas de Mariche', 0),
(275, 14, 'Guarenas', 0),
(276, 14, 'Guatire', 0),
(277, 14, 'Higuerote', 0),
(278, 14, 'Los Anaucos', 0),
(279, 14, 'Los Teques', 1),
(280, 14, 'Ocumare del Tuy', 0),
(281, 14, 'Panaquire', 0),
(282, 14, 'Paracotos', 0),
(283, 14, 'Rio Chico', 0),
(284, 14, 'San Antonio de Los Altos', 0),
(285, 14, 'San Diego de Los Altos', 0),
(286, 14, 'San Fernando del Guapo', 0),
(287, 14, 'San Francisco de Yare', 0),
(288, 14, 'San Jose de Los Altos', 0),
(289, 14, 'San Jose de Rio Chico', 0),
(290, 14, 'San Pedro de Los Altos', 0),
(291, 14, 'Santa Lucia', 0),
(292, 14, 'Santa Teresa', 0),
(293, 14, 'Tacarigua de La Laguna', 0),
(294, 14, 'Tacarigua de Mamporal', 0),
(295, 14, 'Tacata', 0),
(296, 14, 'Turumo', 0),
(297, 15, 'Aguasay', 0),
(298, 15, 'Aragua de Maturin', 0),
(299, 15, 'Barrancas del Orinoco', 0),
(300, 15, 'Caicara de Maturin', 0),
(301, 15, 'Caripe', 0),
(302, 15, 'Caripito', 0),
(303, 15, 'Chaguaramal', 0),
(305, 15, 'Chaguaramas Monagas', 0),
(307, 15, 'El Furrial', 0),
(308, 15, 'El Tejero', 0),
(309, 15, 'Jusepin', 0),
(310, 15, 'La Toscana', 0),
(311, 15, 'Maturin', 1),
(312, 15, 'Miraflores', 0),
(313, 15, 'Punta de Mata', 0),
(314, 15, 'Quiriquire', 0),
(315, 15, 'San Antonio de Maturin', 0),
(316, 15, 'San Vicente Monagas', 0),
(317, 15, 'Santa Barbara', 0),
(318, 15, 'Temblador', 0),
(319, 15, 'Teresen', 0),
(320, 15, 'Uracoa', 0),
(321, 16, 'Altagracia', 0),
(322, 16, 'Boca de Pozo', 0),
(323, 16, 'Boca de Rio', 0),
(324, 16, 'El Espinal', 0),
(325, 16, 'El Valle del Espiritu Santo', 0),
(326, 16, 'El Yaque', 0),
(327, 16, 'Juangriego', 0),
(328, 16, 'La Asuncion', 1),
(329, 16, 'La Guardia', 0),
(330, 16, 'Pampatar', 0),
(331, 16, 'Porlamar', 0),
(332, 16, 'Puerto Fermin', 0),
(333, 16, 'Punta de Piedras', 0),
(334, 16, 'San Francisco de Macanao', 0),
(335, 16, 'San Juan Bautista', 0),
(336, 16, 'San Pedro de Coche', 0),
(337, 16, 'Santa Ana de Nueva Esparta', 0),
(338, 16, 'Villa Rosa', 0),
(339, 17, 'Acarigua', 0),
(340, 17, 'Agua Blanca', 0),
(341, 17, 'Araure', 0),
(342, 17, 'Biscucuy', 0),
(343, 17, 'Boconoito', 0),
(344, 17, 'Campo Elias', 0),
(345, 17, 'Chabasquen', 0),
(346, 17, 'Guanare', 1),
(347, 17, 'Guanarito', 0),
(348, 17, 'La Aparicion', 0),
(349, 17, 'La Mision', 0),
(350, 17, 'Mesa de Cavacas', 0),
(351, 17, 'Ospino', 0),
(352, 17, 'Papelon', 0),
(353, 17, 'Payara', 0),
(354, 17, 'Pimpinela', 0),
(355, 17, 'Piritu de Portuguesa', 0),
(356, 17, 'San Rafael de Onoto', 0),
(357, 17, 'Santa Rosalia', 0),
(358, 17, 'Turen', 0),
(359, 18, 'Altos de Sucre', 0),
(360, 18, 'Araya', 0),
(361, 18, 'Cariaco', 0),
(362, 18, 'Carupano', 0),
(363, 18, 'Casanay', 0),
(364, 18, 'Cumana', 1),
(365, 18, 'Cumanacoa', 0),
(366, 18, 'El Morro Puerto Santo', 0),
(367, 18, 'El Pilar', 0),
(368, 18, 'El Poblado', 0),
(369, 18, 'Guaca', 0),
(370, 18, 'Guiria', 0),
(371, 18, 'Irapa', 0),
(372, 18, 'Manicuare', 0),
(373, 18, 'Mariguitar', 0),
(374, 18, 'Rio Caribe', 0),
(375, 18, 'San Antonio del Golfo', 0),
(376, 18, 'San Jose de Aerocuar', 0),
(377, 18, 'San Vicente de Sucre', 0),
(378, 18, 'Santa Fe de Sucre', 0),
(379, 18, 'Tunapuy', 0),
(380, 18, 'Yaguaraparo', 0),
(381, 18, 'Yoco', 0),
(382, 19, 'Abejales', 0),
(383, 19, 'Borota', 0),
(384, 19, 'Bramon', 0),
(385, 19, 'Capacho', 0),
(386, 19, 'Colon', 0),
(387, 19, 'Coloncito', 0),
(388, 19, 'Cordero', 0),
(389, 19, 'El Cobre', 0),
(390, 19, 'El Pinal', 0),
(391, 19, 'Independencia', 0),
(392, 19, 'La Fria', 0),
(393, 19, 'La Grita', 0),
(394, 19, 'La Pedrera', 0),
(395, 19, 'La Tendida', 0),
(396, 19, 'Las Delicias', 0),
(397, 19, 'Las Hernandez', 0),
(398, 19, 'Lobatera', 0),
(399, 19, 'Michelena', 0),
(400, 19, 'Palmira', 0),
(401, 19, 'Pregonero', 0),
(402, 19, 'Queniquea', 0),
(403, 19, 'Rubio', 0),
(404, 19, 'San Antonio del Tachira', 0),
(405, 19, 'San Cristobal', 1),
(406, 19, 'San Jose de Bolivar', 0),
(407, 19, 'San Josecito', 0),
(408, 19, 'San Pedro del Rio', 0),
(409, 19, 'Santa Ana Tachira', 0),
(410, 19, 'Seboruco', 0),
(411, 19, 'Tariba', 0),
(412, 19, 'Umuquena', 0),
(413, 19, 'Ure+n+a', 0),
(414, 20, 'Batatal', 0),
(415, 20, 'Betijoque', 0),
(416, 20, 'Bocono', 0),
(417, 20, 'Carache', 0),
(418, 20, 'Chejende', 0),
(419, 20, 'Cuicas', 0),
(420, 20, 'El Dividive', 0),
(421, 20, 'El Jaguito', 0),
(422, 20, 'Escuque', 0),
(423, 20, 'Isnotu', 0),
(424, 20, 'Jajo', 0),
(425, 20, 'La Ceiba', 0),
(426, 20, 'La Concepcion de Trujllo', 0),
(427, 20, 'La Mesa de Esnujaque', 0),
(428, 20, 'La Puerta', 0),
(429, 20, 'La Quebrada', 0),
(430, 20, 'Mendoza Fria', 0),
(431, 20, 'Meseta de Chimpire', 0),
(432, 20, 'Monay', 0),
(433, 20, 'Motatan', 0),
(434, 20, 'Pampan', 0),
(435, 20, 'Pampanito', 0),
(436, 20, 'Sabana de Mendoza', 0),
(437, 20, 'San Lazaro', 0),
(438, 20, 'Santa Ana de Trujillo', 0),
(439, 20, 'Tostos', 0),
(440, 20, 'Trujillo', 1),
(441, 20, 'Valera', 0),
(442, 21, 'Carayaca', 0),
(443, 21, 'Litoral', 0),
(444, 25, 'Archipielago Los Roques', 0),
(445, 22, 'Aroa', 0),
(446, 22, 'Boraure', 0),
(447, 22, 'Campo Elias de Yaracuy', 0),
(448, 22, 'Chivacoa', 0),
(449, 22, 'Cocorote', 0),
(450, 22, 'Farriar', 0),
(451, 22, 'Guama', 0),
(452, 22, 'Marin', 0),
(453, 22, 'Nirgua', 0),
(454, 22, 'Sabana de Parra', 0),
(455, 22, 'Salom', 0),
(456, 22, 'San Felipe', 1),
(457, 22, 'San Pablo de Yaracuy', 0),
(458, 22, 'Urachiche', 0),
(459, 22, 'Yaritagua', 0),
(460, 22, 'Yumare', 0),
(461, 23, 'Bachaquero', 0),
(462, 23, 'Bobures', 0),
(463, 23, 'Cabimas', 0),
(464, 23, 'Campo Concepcion', 0),
(465, 23, 'Campo Mara', 0),
(466, 23, 'Campo Rojo', 0),
(467, 23, 'Carrasquero', 0),
(468, 23, 'Casigua', 0),
(469, 23, 'Chiquinquira', 0),
(470, 23, 'Ciudad Ojeda', 0),
(471, 23, 'El Batey', 0),
(472, 23, 'El Carmelo', 0),
(473, 23, 'El Chivo', 0),
(474, 23, 'El Guayabo', 0),
(475, 23, 'El Mene', 0),
(476, 23, 'El Venado', 0),
(477, 23, 'Encontrados', 0),
(478, 23, 'Gibraltar', 0),
(479, 23, 'Isla de Toas', 0),
(480, 23, 'La Concepcion del Zulia', 0),
(481, 23, 'La Paz', 0),
(482, 23, 'La Sierrita', 0),
(483, 23, 'Lagunillas del Zulia', 0),
(484, 23, 'Las Piedras de Perija', 0),
(485, 23, 'Los Cortijos', 0),
(486, 23, 'Machiques', 0),
(487, 23, 'Maracaibo', 1),
(488, 23, 'Mene Grande', 0),
(489, 23, 'Palmarejo', 0),
(490, 23, 'Paraguaipoa', 0),
(491, 23, 'Potrerito', 0),
(492, 23, 'Pueblo Nuevo del Zulia', 0),
(493, 23, 'Puertos de Altagracia', 0),
(494, 23, 'Punta Gorda', 0),
(495, 23, 'Sabaneta de Palma', 0),
(496, 23, 'San Francisco', 0),
(497, 23, 'San Jose de Perija', 0),
(498, 23, 'San Rafael del Mojan', 0),
(499, 23, 'San Timoteo', 0),
(500, 23, 'Santa Barbara Del Zulia', 0),
(501, 23, 'Santa Cruz de Mara', 0),
(502, 23, 'Santa Cruz del Zulia', 0),
(503, 23, 'Santa Rita', 0),
(504, 23, 'Sinamaica', 0),
(505, 23, 'Tamare', 0),
(506, 23, 'Tia Juana', 0),
(507, 23, 'Villa del Rosario', 0),
(508, 21, 'La Guaira', 1),
(509, 21, 'Catia La Mar', 0),
(510, 21, 'Macuto', 0),
(511, 21, 'Naiguata', 0),
(512, 25, 'Archipielago Los Monjes', 0),
(513, 25, 'Isla La Tortuga y Cayos adyacentes', 0),
(514, 25, 'Isla La Sola', 0),
(515, 25, 'Islas Los Testigos', 0),
(516, 25, 'Islas Los Frailes', 0),
(517, 25, 'Isla La Orchila', 0),
(518, 25, 'Archipielago Las Aves', 0),
(519, 25, 'Isla de Aves', 0),
(520, 25, 'Isla La Blanquilla', 0),
(521, 25, 'Isla de Patos', 0),
(522, 25, 'Islas Los Hermanos', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(250) NOT NULL,
  `iso_3166-2` varchar(4) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`, `iso_3166-2`) VALUES
(1, 'Amazonas', 'VE-X'),
(2, 'Anzoategui', 'VE-B'),
(3, 'Apure', 'VE-C'),
(4, 'Aragua', 'VE-D'),
(5, 'Barinas', 'VE-E'),
(6, 'Bolivar', 'VE-F'),
(7, 'Carabobo', 'VE-G'),
(8, 'Cojedes', 'VE-H'),
(9, 'Delta Amacuro', 'VE-Y'),
(10, 'Falcon', 'VE-I'),
(11, 'Guarico', 'VE-J'),
(12, 'Lara', 'VE-K'),
(13, 'Merida', 'VE-L'),
(14, 'Miranda', 'VE-M'),
(15, 'Monagas', 'VE-N'),
(16, 'Nueva Esparta', 'VE-O'),
(17, 'Portuguesa', 'VE-P'),
(18, 'Sucre', 'VE-R'),
(19, 'Tachira', 'VE-S'),
(20, 'Trujillo', 'VE-T'),
(21, 'Vargas', 'VE-W'),
(22, 'Yaracuy', 'VE-U'),
(23, 'Zulia', 'VE-V'),
(24, 'Distrito Capital', 'VE-A'),
(25, 'Dependencias Federales', 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=463 ;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `id_estado`, `municipio`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Rio Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Pe+n+alver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'Jose Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro Maria Freites'),
(23, 2, 'Piritu'),
(24, 2, 'San Jose de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simon Bolivar'),
(28, 2, 'Simon Rodriguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Mu+n+oz'),
(32, 3, 'Paez'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Romulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolivar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcantara'),
(40, 4, 'Jose Ángel Lamas'),
(41, 4, 'Jose Felix Ribas'),
(42, 4, 'Jose Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Brice+n+o Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastian'),
(48, 4, 'Santiago Mari+n+o'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andres Eloy Blanco'),
(56, 5, 'Antonio Jose de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolivar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroni'),
(67, 6, 'Cede+n+o'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raul Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan Jose Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalban'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquin'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoategui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Romulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Diaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolivar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcon'),
(113, 10, 'Federacion'),
(114, 10, 'Jacura'),
(115, 10, 'Jose Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monse+n+or Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Piritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocopero'),
(126, 10, 'Union'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguan'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'Jose Felix Ribas'),
(133, 11, 'Jose Tadeo Monagas'),
(134, 11, 'Juan German Roscio'),
(135, 11, 'Julian Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortiz'),
(140, 11, 'San Geronimo de Guayabal'),
(141, 11, 'San Jose de Guaribe'),
(142, 11, 'Santa Maria de Ipire'),
(143, 11, 'Sebastian Francisco de Miranda'),
(144, 12, 'Andres Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jimenez'),
(148, 12, 'Moran'),
(149, 12, 'Palavecino'),
(150, 12, 'Simon Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andres Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacon'),
(184, 13, 'Campo Elias'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio Cesar Salas'),
(189, 13, 'Justo Brice+n+o'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Davila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andres Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brion'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristobal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(236, 14, 'Paez'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simon Bolivar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolivar'),
(261, 15, 'Caripe'),
(262, 15, 'Cede+n+o'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturin'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Barbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolin del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'Garcia'),
(274, 16, 'Gomez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mari+n+o'),
(278, 16, 'Peninsula de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Diaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Chabasquen'),
(288, 17, 'Ospino'),
(289, 17, 'Paez'),
(290, 17, 'Papelon'),
(291, 17, 'San Genaro de Boconoito'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalia'),
(294, 17, 'Sucre'),
(295, 17, 'Turen'),
(296, 18, 'Andres Eloy Blanco'),
(297, 18, 'Andres Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benitez'),
(300, 18, 'Bermudez'),
(301, 18, 'Bolivar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmeron Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mari+n+o'),
(306, 18, 'Mejia'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdez'),
(341, 19, 'Andres Bello'),
(342, 19, 'Antonio Romulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolivar'),
(345, 19, 'Cardenas'),
(346, 19, 'Cordoba'),
(347, 19, 'Fernandez Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'Garcia de Hevia'),
(350, 19, 'Guasimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jauregui'),
(353, 19, 'Jose Maria Vargas'),
(354, 19, 'Junin'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro Maria Ure+n+a'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Dario Maldonado'),
(363, 19, 'San Cristobal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simon Rodriguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andres Bello'),
(371, 20, 'Bocono'),
(372, 20, 'Bolivar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'Jose Felipe Marquez Ca+n+izalez'),
(377, 20, 'Juan Vicente Campos Elias'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatan'),
(382, 20, 'Pampan'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Aristides Bastidas'),
(392, 22, 'Bolivar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'Jose Antonio Paez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Pe+n+a'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'Jose Joaquin Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colon'),
(446, 23, 'Francisco Javier Pulgar'),
(447, 23, 'Paez'),
(448, 23, 'Jesus Enrique Losada'),
(449, 23, 'Jesus Maria Semprun'),
(450, 23, 'La Ca+n+ada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perija'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perija'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simon Bolivar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodriguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE IF NOT EXISTS `parroquias` (
  `id_parroquia` int(11) NOT NULL AUTO_INCREMENT,
  `id_municipio` int(11) NOT NULL,
  `parroquia` varchar(250) NOT NULL,
  PRIMARY KEY (`id_parroquia`),
  KEY `id_municipio` (`id_municipio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1139 ;

--
-- Volcado de datos para la tabla `parroquias`
--

INSERT INTO `parroquias` (`id_parroquia`, `id_municipio`, `parroquia`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Huachamacare Acana+n+a'),
(3, 1, 'Marawaka Toky Shamana+n+a'),
(4, 1, 'Mavaka Mavaka'),
(5, 1, 'Sierra Parima Parimabe'),
(6, 2, 'Ucata Laja Lisa'),
(7, 2, 'Yapacana Macuruco'),
(8, 2, 'Caname Guarinuma'),
(9, 3, 'Fernando Giron Tovar'),
(10, 3, 'Luis Alberto Gomez'),
(11, 3, 'Pahue+n+a Limon de Parhue+n+a'),
(12, 3, 'Platanillal Platanillal'),
(13, 4, 'Samariapo'),
(14, 4, 'Sipapo'),
(15, 4, 'Munduapo'),
(16, 4, 'Guayapo'),
(17, 5, 'Alto Ventuari'),
(18, 5, 'Medio Ventuari'),
(19, 5, 'Bajo Ventuari'),
(20, 6, 'Victorino'),
(21, 6, 'Comunidad'),
(22, 7, 'Casiquiare'),
(23, 7, 'Cocuy'),
(24, 7, 'San Carlos de Rio Negro'),
(25, 7, 'Solano'),
(26, 8, 'Anaco'),
(27, 8, 'San Joaquin'),
(28, 9, 'Cachipo'),
(29, 9, 'Aragua de Barcelona'),
(30, 11, 'Lecheria'),
(31, 11, 'El Morro'),
(32, 12, 'Puerto Piritu'),
(33, 12, 'San Miguel'),
(34, 12, 'Sucre'),
(35, 13, 'Valle de Guanape'),
(36, 13, 'Santa Barbara'),
(37, 14, 'El Chaparro'),
(38, 14, 'Tomas Alfaro'),
(39, 14, 'Calatrava'),
(40, 15, 'Guanta'),
(41, 15, 'Chorreron'),
(42, 16, 'Mamo'),
(43, 16, 'Soledad'),
(44, 17, 'Mapire'),
(45, 17, 'Piar'),
(46, 17, 'Santa Clara'),
(47, 17, 'San Diego de Cabrutica'),
(48, 17, 'Uverito'),
(49, 17, 'Zuata'),
(50, 18, 'Puerto La Cruz'),
(51, 18, 'Pozuelos'),
(52, 19, 'Onoto'),
(53, 19, 'San Pablo'),
(54, 20, 'San Mateo'),
(55, 20, 'El Carito'),
(56, 20, 'Santa Ines'),
(57, 20, 'La Romere+n+a'),
(58, 21, 'Atapirire'),
(59, 21, 'Boca del Pao'),
(60, 21, 'El Pao'),
(61, 21, 'Pariaguan'),
(62, 22, 'Cantaura'),
(63, 22, 'Libertador'),
(64, 22, 'Santa Rosa'),
(65, 22, 'Urica'),
(66, 23, 'Piritu'),
(67, 23, 'San Francisco'),
(68, 24, 'San Jose de Guanipa'),
(69, 25, 'Boca de Uchire'),
(70, 25, 'Boca de Chavez'),
(71, 26, 'Pueblo Nuevo'),
(72, 26, 'Santa Ana'),
(73, 27, 'Bergantin'),
(74, 27, 'Caigua'),
(75, 27, 'El Carmen'),
(76, 27, 'El Pilar'),
(77, 27, 'Naricual'),
(78, 27, 'San Crsitobal'),
(79, 28, 'Edmundo Barrios'),
(80, 28, 'Miguel Otero Silva'),
(81, 29, 'Achaguas'),
(82, 29, 'Apurito'),
(83, 29, 'El Yagual'),
(84, 29, 'Guachara'),
(85, 29, 'Mucuritas'),
(86, 29, 'Queseras del medio'),
(87, 30, 'Biruaca'),
(88, 31, 'Bruzual'),
(89, 31, 'Mantecal'),
(90, 31, 'Quintero'),
(91, 31, 'Rincon Hondo'),
(92, 31, 'San Vicente'),
(93, 32, 'Guasdualito'),
(94, 32, 'Aramendi'),
(95, 32, 'El Amparo'),
(96, 32, 'San Camilo'),
(97, 32, 'Urdaneta'),
(98, 33, 'San Juan de Payara'),
(99, 33, 'Codazzi'),
(100, 33, 'Cunaviche'),
(101, 34, 'Elorza'),
(102, 34, 'La Trinidad'),
(103, 35, 'San Fernando'),
(104, 35, 'El Recreo'),
(105, 35, 'Pe+n+alver'),
(106, 35, 'San Rafael de Atamaica'),
(107, 36, 'Pedro Jose Ovalles'),
(108, 36, 'Joaquin Crespo'),
(109, 36, 'Jose Casanova Godoy'),
(110, 36, 'Madre Maria de San Jose'),
(111, 36, 'Andres Eloy Blanco'),
(112, 36, 'Los Tacarigua'),
(113, 36, 'Las Delicias'),
(114, 36, 'Choroni'),
(115, 37, 'Bolivar'),
(116, 38, 'Camatagua'),
(117, 38, 'Carmen de Cura'),
(118, 39, 'Santa Rita'),
(119, 39, 'Francisco de Miranda'),
(120, 39, 'Mose+n+or Feliciano Gonzalez'),
(121, 40, 'Santa Cruz'),
(122, 41, 'Jose Felix Ribas'),
(123, 41, 'Castor Nieves Rios'),
(124, 41, 'Las Guacamayas'),
(125, 41, 'Pao de Zarate'),
(126, 41, 'Zuata'),
(127, 42, 'Jose Rafael Revenga'),
(128, 43, 'Palo Negro'),
(129, 43, 'San Martin de Porres'),
(130, 44, 'El Limon'),
(131, 44, 'Ca+n+a de Azucar'),
(132, 45, 'Ocumare de la Costa'),
(133, 46, 'San Casimiro'),
(134, 46, 'Güiripa'),
(135, 46, 'Ollas de Caramacate'),
(136, 46, 'Valle Morin'),
(137, 47, 'San Sebastian'),
(138, 48, 'Turmero'),
(139, 48, 'Arevalo Aponte'),
(140, 48, 'Chuao'),
(141, 48, 'Saman de Güere'),
(142, 48, 'Alfredo Pacheco Miranda'),
(143, 49, 'Santos Michelena'),
(144, 49, 'Tiara'),
(145, 50, 'Cagua'),
(146, 50, 'Bella Vista'),
(147, 51, 'Tovar'),
(148, 52, 'Urdaneta'),
(149, 52, 'Las Pe+n+itas'),
(150, 52, 'San Francisco de Cara'),
(151, 52, 'Taguay'),
(152, 53, 'Zamora'),
(153, 53, 'Magdaleno'),
(154, 53, 'San Francisco de Asis'),
(155, 53, 'Valles de Tucutunemo'),
(156, 53, 'Augusto Mijares'),
(157, 54, 'Sabaneta'),
(158, 54, 'Juan Antonio Rodriguez Dominguez'),
(159, 55, 'El Canton'),
(160, 55, 'Santa Cruz de Guacas'),
(161, 55, 'Puerto Vivas'),
(162, 56, 'Ticoporo'),
(163, 56, 'Nicolas Pulido'),
(164, 56, 'Andres Bello'),
(165, 57, 'Arismendi'),
(166, 57, 'Guadarrama'),
(167, 57, 'La Union'),
(168, 57, 'San Antonio'),
(169, 58, 'Barinas'),
(170, 58, 'Alberto Arvelo Larriva'),
(171, 58, 'San Silvestre'),
(172, 58, 'Santa Ines'),
(173, 58, 'Santa Lucia'),
(174, 58, 'Torumos'),
(175, 58, 'El Carmen'),
(176, 58, 'Romulo Betancourt'),
(177, 58, 'Corazon de Jesus'),
(178, 58, 'Ramon Ignacio Mendez'),
(179, 58, 'Alto Barinas'),
(180, 58, 'Manuel Palacio Fajardo'),
(181, 58, 'Juan Antonio Rodriguez Dominguez'),
(182, 58, 'Dominga Ortiz de Paez'),
(183, 59, 'Barinitas'),
(184, 59, 'Altamira de Caceres'),
(185, 59, 'Calderas'),
(186, 60, 'Barrancas'),
(187, 60, 'El Socorro'),
(188, 60, 'Mazparrito'),
(189, 61, 'Santa Barbara'),
(190, 61, 'Pedro Brice+n+o Mendez'),
(191, 61, 'Ramon Ignacio Mendez'),
(192, 61, 'Jose Ignacio del Pumar'),
(193, 62, 'Obispos'),
(194, 62, 'Guasimitos'),
(195, 62, 'El Real'),
(196, 62, 'La Luz'),
(197, 63, 'Ciudad Bolivia'),
(198, 63, 'Jose Ignacio Brice+n+o'),
(199, 63, 'Jose Felix Ribas'),
(200, 63, 'Paez'),
(201, 64, 'Libertad'),
(202, 64, 'Dolores'),
(203, 64, 'Santa Rosa'),
(204, 64, 'Palacio Fajardo'),
(205, 65, 'Ciudad de Nutrias'),
(206, 65, 'El Regalo'),
(207, 65, 'Puerto Nutrias'),
(208, 65, 'Santa Catalina'),
(209, 66, 'Cachamay'),
(210, 66, 'Chirica'),
(211, 66, 'Dalla Costa'),
(212, 66, 'Once de Abril'),
(213, 66, 'Simon Bolivar'),
(214, 66, 'Unare'),
(215, 66, 'Universidad'),
(216, 66, 'Vista al Sol'),
(217, 66, 'Pozo Verde'),
(218, 66, 'Yocoima'),
(219, 66, '5 de Julio'),
(220, 67, 'Cede+n+o'),
(221, 67, 'Altagracia'),
(222, 67, 'Ascension Farreras'),
(223, 67, 'Guaniamo'),
(224, 67, 'La Urbana'),
(225, 67, 'Pijiguaos'),
(226, 68, 'El Callao'),
(227, 69, 'Gran Sabana'),
(228, 69, 'Ikabaru'),
(229, 70, 'Catedral'),
(230, 70, 'Zea'),
(231, 70, 'Orinoco'),
(232, 70, 'Jose Antonio Paez'),
(233, 70, 'Marhuanta'),
(234, 70, 'Agua Salada'),
(235, 70, 'Vista Hermosa'),
(236, 70, 'La Sabanita'),
(237, 70, 'Panapana'),
(238, 71, 'Andres Eloy Blanco'),
(239, 71, 'Pedro Cova'),
(240, 72, 'Raul Leoni'),
(241, 72, 'Barceloneta'),
(242, 72, 'Santa Barbara'),
(243, 72, 'San Francisco'),
(244, 73, 'Roscio'),
(245, 73, 'Salom'),
(246, 74, 'Sifontes'),
(247, 74, 'Dalla Costa'),
(248, 74, 'San Isidro'),
(249, 75, 'Sucre'),
(250, 75, 'Aripao'),
(251, 75, 'Guarataro'),
(252, 75, 'Las Majadas'),
(253, 75, 'Moitaco'),
(254, 76, 'Padre Pedro Chien'),
(255, 76, 'Rio Grande'),
(256, 77, 'Bejuma'),
(257, 77, 'Canoabo'),
(258, 77, 'Simon Bolivar'),
(259, 78, 'Güigüe'),
(260, 78, 'Carabobo'),
(261, 78, 'Tacarigua'),
(262, 79, 'Mariara'),
(263, 79, 'Aguas Calientes'),
(264, 80, 'Ciudad Alianza'),
(265, 80, 'Guacara'),
(266, 80, 'Yagua'),
(267, 81, 'Moron'),
(268, 81, 'Yagua'),
(269, 82, 'Tocuyito'),
(270, 82, 'Independencia'),
(271, 83, 'Los Guayos'),
(272, 84, 'Miranda'),
(273, 85, 'Montalban'),
(274, 86, 'Naguanagua'),
(275, 87, 'Bartolome Salom'),
(276, 87, 'Democracia'),
(277, 87, 'Fraternidad'),
(278, 87, 'Goaigoaza'),
(279, 87, 'Juan Jose Flores'),
(280, 87, 'Union'),
(281, 87, 'Borburata'),
(282, 87, 'Patanemo'),
(283, 88, 'San Diego'),
(284, 89, 'San Joaquin'),
(285, 90, 'Candelaria'),
(286, 90, 'Catedral'),
(287, 90, 'El Socorro'),
(288, 90, 'Miguel Pe+n+a'),
(289, 90, 'Rafael Urdaneta'),
(290, 90, 'San Blas'),
(291, 90, 'San Jose'),
(292, 90, 'Santa Rosa'),
(293, 90, 'Negro Primero'),
(294, 91, 'Cojedes'),
(295, 91, 'Juan de Mata Suarez'),
(296, 92, 'Tinaquillo'),
(297, 93, 'El Baul'),
(298, 93, 'Sucre'),
(299, 94, 'La Aguadita'),
(300, 94, 'Macapo'),
(301, 95, 'El Pao'),
(302, 96, 'El Amparo'),
(303, 96, 'Libertad de Cojedes'),
(304, 97, 'Romulo Gallegos'),
(305, 98, 'San Carlos de Austria'),
(306, 98, 'Juan Ángel Bravo'),
(307, 98, 'Manuel Manrique'),
(308, 99, 'General en Jefe Jose Laurencio Silva'),
(309, 100, 'Curiapo'),
(310, 100, 'Almirante Luis Brion'),
(311, 100, 'Francisco Aniceto Lugo'),
(312, 100, 'Manuel Renaud'),
(313, 100, 'Padre Barral'),
(314, 100, 'Santos de Abelgas'),
(315, 101, 'Imataca'),
(316, 101, 'Cinco de Julio'),
(317, 101, 'Juan Bautista Arismendi'),
(318, 101, 'Manuel Piar'),
(319, 101, 'Romulo Gallegos'),
(320, 102, 'Pedernales'),
(321, 102, 'Luis Beltran Prieto Figueroa'),
(322, 103, 'San Jose (Delta Amacuro)'),
(323, 103, 'Jose Vidal Marcano'),
(324, 103, 'Juan Millan'),
(325, 103, 'Leonardo Ruiz Pineda'),
(326, 103, 'Mariscal Antonio Jose de Sucre'),
(327, 103, 'Monse+n+or Argimiro Garcia'),
(328, 103, 'San Rafael (Delta Amacuro)'),
(329, 103, 'Virgen del Valle'),
(330, 10, 'Clarines'),
(331, 10, 'Guanape'),
(332, 10, 'Sabana de Uchire'),
(333, 104, 'Capadare'),
(334, 104, 'La Pastora'),
(335, 104, 'Libertador'),
(336, 104, 'San Juan de los Cayos'),
(337, 105, 'Aracua'),
(338, 105, 'La Pe+n+a'),
(339, 105, 'San Luis'),
(340, 106, 'Bariro'),
(341, 106, 'Borojo'),
(342, 106, 'Capatarida'),
(343, 106, 'Guajiro'),
(344, 106, 'Seque'),
(345, 106, 'Zazarida'),
(346, 106, 'Valle de Eroa'),
(347, 107, 'Cacique Manaure'),
(348, 108, 'Norte'),
(349, 108, 'Carirubana'),
(350, 108, 'Santa Ana'),
(351, 108, 'Urbana Punta Cardon'),
(352, 109, 'La Vela de Coro'),
(353, 109, 'Acurigua'),
(354, 109, 'Guaibacoa'),
(355, 109, 'Las Calderas'),
(356, 109, 'Macoruca'),
(357, 110, 'Dabajuro'),
(358, 111, 'Agua Clara'),
(359, 111, 'Avaria'),
(360, 111, 'Pedregal'),
(361, 111, 'Piedra Grande'),
(362, 111, 'Purureche'),
(363, 112, 'Adaure'),
(364, 112, 'Adicora'),
(365, 112, 'Baraived'),
(366, 112, 'Buena Vista'),
(367, 112, 'Jadacaquiva'),
(368, 112, 'El Vinculo'),
(369, 112, 'El Hato'),
(370, 112, 'Moruy'),
(371, 112, 'Pueblo Nuevo'),
(372, 113, 'Agua Larga'),
(373, 113, 'El Pauji'),
(374, 113, 'Independencia'),
(375, 113, 'Maparari'),
(376, 114, 'Agua Linda'),
(377, 114, 'Araurima'),
(378, 114, 'Jacura'),
(379, 115, 'Tucacas'),
(380, 115, 'Boca de Aroa'),
(381, 116, 'Los Taques'),
(382, 116, 'Judibana'),
(383, 117, 'Mene de Mauroa'),
(384, 117, 'San Felix'),
(385, 117, 'Casigua'),
(386, 118, 'Guzman Guillermo'),
(387, 118, 'Mitare'),
(388, 118, 'Rio Seco'),
(389, 118, 'Sabaneta'),
(390, 118, 'San Antonio'),
(391, 118, 'San Gabriel'),
(392, 118, 'Santa Ana'),
(393, 119, 'Boca del Tocuyo'),
(394, 119, 'Chichiriviche'),
(395, 119, 'Tocuyo de la Costa'),
(396, 120, 'Palmasola'),
(397, 121, 'Cabure'),
(398, 121, 'Colina'),
(399, 121, 'Curimagua'),
(400, 122, 'San Jose de la Costa'),
(401, 122, 'Piritu'),
(402, 123, 'San Francisco'),
(403, 124, 'Sucre'),
(404, 124, 'Pecaya'),
(405, 125, 'Tocopero'),
(406, 126, 'El Charal'),
(407, 126, 'Las Vegas del Tuy'),
(408, 126, 'Santa Cruz de Bucaral'),
(409, 127, 'Bruzual'),
(410, 127, 'Urumaco'),
(411, 128, 'Puerto Cumarebo'),
(412, 128, 'La Cienaga'),
(413, 128, 'La Soledad'),
(414, 128, 'Pueblo Cumarebo'),
(415, 128, 'Zazarida'),
(416, 113, 'Churuguara'),
(417, 129, 'Camaguan'),
(418, 129, 'Puerto Miranda'),
(419, 129, 'Uverito'),
(420, 130, 'Chaguaramas'),
(421, 131, 'El Socorro'),
(422, 132, 'Tucupido'),
(423, 132, 'San Rafael de Laya'),
(424, 133, 'Altagracia de Orituco'),
(425, 133, 'San Rafael de Orituco'),
(426, 133, 'San Francisco Javier de Lezama'),
(427, 133, 'Paso Real de Macaira'),
(428, 133, 'Carlos Soublette'),
(429, 133, 'San Francisco de Macaira'),
(430, 133, 'Libertad de Orituco'),
(431, 134, 'Cantaclaro'),
(432, 134, 'San Juan de los Morros'),
(433, 134, 'Parapara'),
(434, 135, 'El Sombrero'),
(435, 135, 'Sosa'),
(436, 136, 'Las Mercedes'),
(437, 136, 'Cabruta'),
(438, 136, 'Santa Rita de Manapire'),
(439, 137, 'Valle de la Pascua'),
(440, 137, 'Espino'),
(441, 138, 'San Jose de Unare'),
(442, 138, 'Zaraza'),
(443, 139, 'San Jose de Tiznados'),
(444, 139, 'San Francisco de Tiznados'),
(445, 139, 'San Lorenzo de Tiznados'),
(446, 139, 'Ortiz'),
(447, 140, 'Guayabal'),
(448, 140, 'Cazorla'),
(449, 141, 'San Jose de Guaribe'),
(450, 141, 'Uveral'),
(451, 142, 'Santa Maria de Ipire'),
(452, 142, 'Altamira'),
(453, 143, 'El Calvario'),
(454, 143, 'El Rastro'),
(455, 143, 'Guardatinajas'),
(456, 143, 'Capital Urbana Calabozo'),
(457, 144, 'Quebrada Honda de Guache'),
(458, 144, 'Pio Tamayo'),
(459, 144, 'Yacambu'),
(460, 145, 'Freitez'),
(461, 145, 'Jose Maria Blanco'),
(462, 146, 'Catedral'),
(463, 146, 'Concepcion'),
(464, 146, 'El Cuji'),
(465, 146, 'Juan de Villegas'),
(466, 146, 'Santa Rosa'),
(467, 146, 'Tamaca'),
(468, 146, 'Union'),
(469, 146, 'Aguedo Felipe Alvarado'),
(470, 146, 'Buena Vista'),
(471, 146, 'Juarez'),
(472, 147, 'Juan Bautista Rodriguez'),
(473, 147, 'Cuara'),
(474, 147, 'Diego de Lozada'),
(475, 147, 'Paraiso de San Jose'),
(476, 147, 'San Miguel'),
(477, 147, 'Tintorero'),
(478, 147, 'Jose Bernardo Dorante'),
(479, 147, 'Coronel Mariano Peraza '),
(480, 148, 'Bolivar'),
(481, 148, 'Anzoategui'),
(482, 148, 'Guarico'),
(483, 148, 'Hilario Luna y Luna'),
(484, 148, 'Humocaro Alto'),
(485, 148, 'Humocaro Bajo'),
(486, 148, 'La Candelaria'),
(487, 148, 'Moran'),
(488, 149, 'Cabudare'),
(489, 149, 'Jose Gregorio Bastidas'),
(490, 149, 'Agua Viva'),
(491, 150, 'Sarare'),
(492, 150, 'Buria'),
(493, 150, 'Gustavo Vegas Leon'),
(494, 151, 'Trinidad Samuel'),
(495, 151, 'Antonio Diaz'),
(496, 151, 'Camacaro'),
(497, 151, 'Casta+n+eda'),
(498, 151, 'Cecilio Zubillaga'),
(499, 151, 'Chiquinquira'),
(500, 151, 'El Blanco'),
(501, 151, 'Espinoza de los Monteros'),
(502, 151, 'Lara'),
(503, 151, 'Las Mercedes'),
(504, 151, 'Manuel Morillo'),
(505, 151, 'Monta+n+a Verde'),
(506, 151, 'Montes de Oca'),
(507, 151, 'Torres'),
(508, 151, 'Heriberto Arroyo'),
(509, 151, 'Reyes Vargas'),
(510, 151, 'Altagracia'),
(511, 152, 'Siquisique'),
(512, 152, 'Moroturo'),
(513, 152, 'San Miguel'),
(514, 152, 'Xaguas'),
(515, 179, 'Presidente Betancourt'),
(516, 179, 'Presidente Paez'),
(517, 179, 'Presidente Romulo Gallegos'),
(518, 179, 'Gabriel Picon Gonzalez'),
(519, 179, 'Hector Amable Mora'),
(520, 179, 'Jose Nucete Sardi'),
(521, 179, 'Pulido Mendez'),
(522, 180, 'La Azulita'),
(523, 181, 'Santa Cruz de Mora'),
(524, 181, 'Mesa Bolivar'),
(525, 181, 'Mesa de Las Palmas'),
(526, 182, 'Aricagua'),
(527, 182, 'San Antonio'),
(528, 183, 'Canagua'),
(529, 183, 'Capuri'),
(530, 183, 'Chacanta'),
(531, 183, 'El Molino'),
(532, 183, 'Guaimaral'),
(533, 183, 'Mucutuy'),
(534, 183, 'Mucuchachi'),
(535, 184, 'Fernandez Pe+n+a'),
(536, 184, 'Matriz'),
(537, 184, 'Montalban'),
(538, 184, 'Acequias'),
(539, 184, 'Jaji'),
(540, 184, 'La Mesa'),
(541, 184, 'San Jose del Sur'),
(542, 185, 'Tucani'),
(543, 185, 'Florencio Ramirez'),
(544, 186, 'Santo Domingo'),
(545, 186, 'Las Piedras'),
(546, 187, 'Guaraque'),
(547, 187, 'Mesa de Quintero'),
(548, 187, 'Rio Negro'),
(549, 188, 'Arapuey'),
(550, 188, 'Palmira'),
(551, 189, 'San Cristobal de Torondoy'),
(552, 189, 'Torondoy'),
(553, 190, 'Antonio Spinetti Dini'),
(554, 190, 'Arias'),
(555, 190, 'Caracciolo Parra Perez'),
(556, 190, 'Domingo Pe+n+a'),
(557, 190, 'El Llano'),
(558, 190, 'Gonzalo Picon Febres'),
(559, 190, 'Jacinto Plaza'),
(560, 190, 'Juan Rodriguez Suarez'),
(561, 190, 'Lasso de la Vega'),
(562, 190, 'Mariano Picon Salas'),
(563, 190, 'Milla'),
(564, 190, 'Osuna Rodriguez'),
(565, 190, 'Sagrario'),
(566, 190, 'El Morro'),
(567, 190, 'Los Nevados'),
(568, 191, 'Andres Eloy Blanco'),
(569, 191, 'La Venta'),
(570, 191, 'Pi+n+ango'),
(571, 191, 'Timotes'),
(572, 192, 'Eloy Paredes'),
(573, 192, 'San Rafael de Alcazar'),
(574, 192, 'Santa Elena de Arenales'),
(575, 193, 'Santa Maria de Caparo'),
(576, 194, 'Pueblo Llano'),
(577, 195, 'Cacute'),
(578, 195, 'La Toma'),
(579, 195, 'Mucuchies'),
(580, 195, 'Mucuruba'),
(581, 195, 'San Rafael'),
(582, 196, 'Geronimo Maldonado'),
(583, 196, 'Bailadores'),
(584, 197, 'Tabay'),
(585, 198, 'Chiguara'),
(586, 198, 'Estanquez'),
(587, 198, 'Lagunillas'),
(588, 198, 'La Trampa'),
(589, 198, 'Pueblo Nuevo del Sur'),
(590, 198, 'San Juan'),
(591, 199, 'El Amparo'),
(592, 199, 'El Llano'),
(593, 199, 'San Francisco'),
(594, 199, 'Tovar'),
(595, 200, 'Independencia'),
(596, 200, 'Maria de la Concepcion Palacios Blanco'),
(597, 200, 'Nueva Bolivia'),
(598, 200, 'Santa Apolonia'),
(599, 201, 'Ca+n+o El Tigre'),
(600, 201, 'Zea'),
(601, 223, 'Aragüita'),
(602, 223, 'Arevalo Gonzalez'),
(603, 223, 'Capaya'),
(604, 223, 'Caucagua'),
(605, 223, 'Panaquire'),
(606, 223, 'Ribas'),
(607, 223, 'El Cafe'),
(608, 223, 'Marizapa'),
(609, 224, 'Cumbo'),
(610, 224, 'San Jose de Barlovento'),
(611, 225, 'El Cafetal'),
(612, 225, 'Las Minas'),
(613, 225, 'Nuestra Se+n+ora del Rosario'),
(614, 226, 'Higuerote'),
(615, 226, 'Curiepe'),
(616, 226, 'Tacarigua de Brion'),
(617, 227, 'Mamporal'),
(618, 228, 'Carrizal'),
(619, 229, 'Chacao'),
(620, 230, 'Charallave'),
(621, 230, 'Las Brisas'),
(622, 231, 'El Hatillo'),
(623, 232, 'Altagracia de la Monta+n+a'),
(624, 232, 'Cecilio Acosta'),
(625, 232, 'Los Teques'),
(626, 232, 'El Jarillo'),
(627, 232, 'San Pedro'),
(628, 232, 'Tacata'),
(629, 232, 'Paracotos'),
(630, 233, 'Cartanal'),
(631, 233, 'Santa Teresa del Tuy'),
(632, 234, 'La Democracia'),
(633, 234, 'Ocumare del Tuy'),
(634, 234, 'Santa Barbara'),
(635, 235, 'San Antonio de los Altos'),
(636, 236, 'Rio Chico'),
(637, 236, 'El Guapo'),
(638, 236, 'Tacarigua de la Laguna'),
(639, 236, 'Paparo'),
(640, 236, 'San Fernando del Guapo'),
(641, 237, 'Santa Lucia del Tuy'),
(642, 238, 'Cupira'),
(643, 238, 'Machurucuto'),
(644, 239, 'Guarenas'),
(645, 240, 'San Antonio de Yare'),
(646, 240, 'San Francisco de Yare'),
(647, 241, 'Leoncio Martinez'),
(648, 241, 'Petare'),
(649, 241, 'Caucagüita'),
(650, 241, 'Filas de Mariche'),
(651, 241, 'La Dolorita'),
(652, 242, 'Cua'),
(653, 242, 'Nueva Cua'),
(654, 243, 'Guatire'),
(655, 243, 'Bolivar'),
(656, 258, 'San Antonio de Maturin'),
(657, 258, 'San Francisco de Maturin'),
(658, 259, 'Aguasay'),
(659, 260, 'Caripito'),
(660, 261, 'El Guacharo'),
(661, 261, 'La Guanota'),
(662, 261, 'Sabana de Piedra'),
(663, 261, 'San Agustin'),
(664, 261, 'Teresen'),
(665, 261, 'Caripe'),
(666, 262, 'Areo'),
(667, 262, 'Capital Cede+n+o'),
(668, 262, 'San Felix de Cantalicio'),
(669, 262, 'Viento Fresco'),
(670, 263, 'El Tejero'),
(671, 263, 'Punta de Mata'),
(672, 264, 'Chaguaramas'),
(673, 264, 'Las Alhuacas'),
(674, 264, 'Tabasca'),
(675, 264, 'Temblador'),
(676, 265, 'Alto de los Godos'),
(677, 265, 'Boqueron'),
(678, 265, 'Las Cocuizas'),
(679, 265, 'La Cruz'),
(680, 265, 'San Simon'),
(681, 265, 'El Corozo'),
(682, 265, 'El Furrial'),
(683, 265, 'Jusepin'),
(684, 265, 'La Pica'),
(685, 265, 'San Vicente'),
(686, 266, 'Aparicio'),
(687, 266, 'Aragua de Maturin'),
(688, 266, 'Chaguamal'),
(689, 266, 'El Pinto'),
(690, 266, 'Guanaguana'),
(691, 266, 'La Toscana'),
(692, 266, 'Taguaya'),
(693, 267, 'Cachipo'),
(694, 267, 'Quiriquire'),
(695, 268, 'Santa Barbara'),
(696, 269, 'Barrancas'),
(697, 269, 'Los Barrancos de Fajardo'),
(698, 270, 'Uracoa'),
(699, 271, 'Antolin del Campo'),
(700, 272, 'Arismendi'),
(701, 273, 'Garcia'),
(702, 273, 'Francisco Fajardo'),
(703, 274, 'Bolivar'),
(704, 274, 'Guevara'),
(705, 274, 'Matasiete'),
(706, 274, 'Santa Ana'),
(707, 274, 'Sucre'),
(708, 275, 'Aguirre'),
(709, 275, 'Maneiro'),
(710, 276, 'Adrian'),
(711, 276, 'Juan Griego'),
(712, 276, 'Yaguaraparo'),
(713, 277, 'Porlamar'),
(714, 278, 'San Francisco de Macanao'),
(715, 278, 'Boca de Rio'),
(716, 279, 'Tubores'),
(717, 279, 'Los Baleales'),
(718, 280, 'Vicente Fuentes'),
(719, 280, 'Villalba'),
(720, 281, 'San Juan Bautista'),
(721, 281, 'Zabala'),
(722, 283, 'Capital Araure'),
(723, 283, 'Rio Acarigua'),
(724, 284, 'Capital Esteller'),
(725, 284, 'Uveral'),
(726, 285, 'Guanare'),
(727, 285, 'Cordoba'),
(728, 285, 'San Jose de la Monta+n+a'),
(729, 285, 'San Juan de Guanaguanare'),
(730, 285, 'Virgen de la Coromoto'),
(731, 286, 'Guanarito'),
(732, 286, 'Trinidad de la Capilla'),
(733, 286, 'Divina Pastora'),
(734, 287, 'Chabasquen'),
(735, 287, 'Pe+n+a Blanca'),
(736, 288, 'Capital Ospino'),
(737, 288, 'Aparicion'),
(738, 288, 'La Estacion'),
(739, 289, 'Paez'),
(740, 289, 'Payara'),
(741, 289, 'Pimpinela'),
(742, 289, 'Ramon Peraza'),
(743, 290, 'Papelon'),
(744, 290, 'Ca+n+o Delgadito'),
(745, 291, 'San Genaro de Boconoito'),
(746, 291, 'Antolin Tovar'),
(747, 292, 'San Rafael de Onoto'),
(748, 292, 'Santa Fe'),
(749, 292, 'Thermo Morles'),
(750, 293, 'Santa Rosalia'),
(751, 293, 'Florida'),
(752, 294, 'Biscucuy'),
(753, 294, 'Concepcion'),
(754, 294, 'San Rafael de Palo Alzado'),
(755, 294, 'Uvencio Antonio Velasquez'),
(756, 294, 'San Jose de Saguaz'),
(757, 294, 'Villa Rosa'),
(758, 295, 'Turen'),
(759, 295, 'Canelones'),
(760, 295, 'Santa Cruz'),
(761, 295, 'San Isidro Labrador'),
(762, 296, 'Mari+n+o'),
(763, 296, 'Romulo Gallegos'),
(764, 297, 'San Jose de Aerocuar'),
(765, 297, 'Tavera Acosta'),
(766, 298, 'Rio Caribe'),
(767, 298, 'Antonio Jose de Sucre'),
(768, 298, 'El Morro de Puerto Santo'),
(769, 298, 'Puerto Santo'),
(770, 298, 'San Juan de las Galdonas'),
(771, 299, 'El Pilar'),
(772, 299, 'El Rincon'),
(773, 299, 'General Francisco Antonio Vaquez'),
(774, 299, 'Guaraunos'),
(775, 299, 'Tunapuicito'),
(776, 299, 'Union'),
(777, 300, 'Santa Catalina'),
(778, 300, 'Santa Rosa'),
(779, 300, 'Santa Teresa'),
(780, 300, 'Bolivar'),
(781, 300, 'Maracapana'),
(782, 302, 'Libertad'),
(783, 302, 'El Paujil'),
(784, 302, 'Yaguaraparo'),
(785, 303, 'Cruz Salmeron Acosta'),
(786, 303, 'Chacopata'),
(787, 303, 'Manicuare'),
(788, 304, 'Tunapuy'),
(789, 304, 'Campo Elias'),
(790, 305, 'Irapa'),
(791, 305, 'Campo Claro'),
(792, 305, 'Maraval'),
(793, 305, 'San Antonio de Irapa'),
(794, 305, 'Soro'),
(795, 306, 'Mejia'),
(796, 307, 'Cumanacoa'),
(797, 307, 'Arenas'),
(798, 307, 'Aricagua'),
(799, 307, 'Cogollar'),
(800, 307, 'San Fernando'),
(801, 307, 'San Lorenzo'),
(802, 308, 'Villa Frontado (Muelle de Cariaco)'),
(803, 308, 'Catuaro'),
(804, 308, 'Rendon'),
(805, 308, 'San Cruz'),
(806, 308, 'Santa Maria'),
(807, 309, 'Altagracia'),
(808, 309, 'Santa Ines'),
(809, 309, 'Valentin Valiente'),
(810, 309, 'Ayacucho'),
(811, 309, 'San Juan'),
(812, 309, 'Raul Leoni'),
(813, 309, 'Gran Mariscal'),
(814, 310, 'Cristobal Colon'),
(815, 310, 'Bideau'),
(816, 310, 'Punta de Piedras'),
(817, 310, 'Güiria'),
(818, 341, 'Andres Bello'),
(819, 342, 'Antonio Romulo Costa'),
(820, 343, 'Ayacucho'),
(821, 343, 'Rivas Berti'),
(822, 343, 'San Pedro del Rio'),
(823, 344, 'Bolivar'),
(824, 344, 'Palotal'),
(825, 344, 'General Juan Vicente Gomez'),
(826, 344, 'Isaias Medina Angarita'),
(827, 345, 'Cardenas'),
(828, 345, 'Amenodoro Ángel Lamus'),
(829, 345, 'La Florida'),
(830, 346, 'Cordoba'),
(831, 347, 'Fernandez Feo'),
(832, 347, 'Alberto Adriani'),
(833, 347, 'Santo Domingo'),
(834, 348, 'Francisco de Miranda'),
(835, 349, 'Garcia de Hevia'),
(836, 349, 'Boca de Grita'),
(837, 349, 'Jose Antonio Paez'),
(838, 350, 'Guasimos'),
(839, 351, 'Independencia'),
(840, 351, 'Juan German Roscio'),
(841, 351, 'Roman Cardenas'),
(842, 352, 'Jauregui'),
(843, 352, 'Emilio Constantino Guerrero'),
(844, 352, 'Monse+n+or Miguel Antonio Salas'),
(845, 353, 'Jose Maria Vargas'),
(846, 354, 'Junin'),
(847, 354, 'La Petrolea'),
(848, 354, 'Quinimari'),
(849, 354, 'Bramon'),
(850, 355, 'Libertad'),
(851, 355, 'Cipriano Castro'),
(852, 355, 'Manuel Felipe Rugeles'),
(853, 356, 'Libertador'),
(854, 356, 'Doradas'),
(855, 356, 'Emeterio Ochoa'),
(856, 356, 'San Joaquin de Navay'),
(857, 357, 'Lobatera'),
(858, 357, 'Constitucion'),
(859, 358, 'Michelena'),
(860, 359, 'Panamericano'),
(861, 359, 'La Palmita'),
(862, 360, 'Pedro Maria Ure+n+a'),
(863, 360, 'Nueva Arcadia'),
(864, 361, 'Delicias'),
(865, 361, 'Pecaya'),
(866, 362, 'Samuel Dario Maldonado'),
(867, 362, 'Bocono'),
(868, 362, 'Hernandez'),
(869, 363, 'La Concordia'),
(870, 363, 'San Juan Bautista'),
(871, 363, 'Pedro Maria Morantes'),
(872, 363, 'San Sebastian'),
(873, 363, 'Dr. Francisco Romero Lobo'),
(874, 364, 'Seboruco'),
(875, 365, 'Simon Rodriguez'),
(876, 366, 'Sucre'),
(877, 366, 'Eleazar Lopez Contreras'),
(878, 366, 'San Pablo'),
(879, 367, 'Torbes'),
(880, 368, 'Uribante'),
(881, 368, 'Cardenas'),
(882, 368, 'Juan Pablo Pe+n+alosa'),
(883, 368, 'Potosi'),
(884, 369, 'San Judas Tadeo'),
(885, 370, 'Araguaney'),
(886, 370, 'El Jaguito'),
(887, 370, 'La Esperanza'),
(888, 370, 'Santa Isabel'),
(889, 371, 'Bocono'),
(890, 371, 'El Carmen'),
(891, 371, 'Mosquey'),
(892, 371, 'Ayacucho'),
(893, 371, 'Burbusay'),
(894, 371, 'General Ribas'),
(895, 371, 'Guaramacal'),
(896, 371, 'Vega de Guaramacal'),
(897, 371, 'Monse+n+or Jauregui'),
(898, 371, 'Rafael Rangel'),
(899, 371, 'San Miguel'),
(900, 371, 'San Jose'),
(901, 372, 'Sabana Grande'),
(902, 372, 'Cheregüe'),
(903, 372, 'Granados'),
(904, 373, 'Arnoldo Gabaldon'),
(905, 373, 'Bolivia'),
(906, 373, 'Carrillo'),
(907, 373, 'Cegarra'),
(908, 373, 'Chejende'),
(909, 373, 'Manuel Salvador Ulloa'),
(910, 373, 'San Jose'),
(911, 374, 'Carache'),
(912, 374, 'La Concepcion'),
(913, 374, 'Cuicas'),
(914, 374, 'Panamericana'),
(915, 374, 'Santa Cruz'),
(916, 375, 'Escuque'),
(917, 375, 'La Union'),
(918, 375, 'Santa Rita'),
(919, 375, 'Sabana Libre'),
(920, 376, 'El Socorro'),
(921, 376, 'Los Caprichos'),
(922, 376, 'Antonio Jose de Sucre'),
(923, 377, 'Campo Elias'),
(924, 377, 'Arnoldo Gabaldon'),
(925, 378, 'Santa Apolonia'),
(926, 378, 'El Progreso'),
(927, 378, 'La Ceiba'),
(928, 378, 'Tres de Febrero'),
(929, 379, 'El Dividive'),
(930, 379, 'Agua Santa'),
(931, 379, 'Agua Caliente'),
(932, 379, 'El Cenizo'),
(933, 379, 'Valerita'),
(934, 380, 'Monte Carmelo'),
(935, 380, 'Buena Vista'),
(936, 380, 'Santa Maria del Horcon'),
(937, 381, 'Motatan'),
(938, 381, 'El Ba+n+o'),
(939, 381, 'Jalisco'),
(940, 382, 'Pampan'),
(941, 382, 'Flor de Patria'),
(942, 382, 'La Paz'),
(943, 382, 'Santa Ana'),
(944, 383, 'Pampanito'),
(945, 383, 'La Concepcion'),
(946, 383, 'Pampanito II'),
(947, 384, 'Betijoque'),
(948, 384, 'Jose Gregorio Hernandez'),
(949, 384, 'La Pueblita'),
(950, 384, 'Los Cedros'),
(951, 385, 'Carvajal'),
(952, 385, 'Campo Alegre'),
(953, 385, 'Antonio Nicolas Brice+n+o'),
(954, 385, 'Jose Leonardo Suarez'),
(955, 386, 'Sabana de Mendoza'),
(956, 386, 'Junin'),
(957, 386, 'Valmore Rodriguez'),
(958, 386, 'El Paraiso'),
(959, 387, 'Andres Linares'),
(960, 387, 'Chiquinquira'),
(961, 387, 'Cristobal Mendoza'),
(962, 387, 'Cruz Carrillo'),
(963, 387, 'Matriz'),
(964, 387, 'Monse+n+or Carrillo'),
(965, 387, 'Tres Esquinas'),
(966, 388, 'Cabimbu'),
(967, 388, 'Jajo'),
(968, 388, 'La Mesa de Esnujaque'),
(969, 388, 'Santiago'),
(970, 388, 'Tu+n+ame'),
(971, 388, 'La Quebrada'),
(972, 389, 'Juan Ignacio Montilla'),
(973, 389, 'La Beatriz'),
(974, 389, 'La Puerta'),
(975, 389, 'Mendoza del Valle de Momboy'),
(976, 389, 'Mercedes Diaz'),
(977, 389, 'San Luis'),
(978, 390, 'Caraballeda'),
(979, 390, 'Carayaca'),
(980, 390, 'Carlos Soublette'),
(981, 390, 'Caruao Chuspa'),
(982, 390, 'Catia La Mar'),
(983, 390, 'El Junko'),
(984, 390, 'La Guaira'),
(985, 390, 'Macuto'),
(986, 390, 'Maiquetia'),
(987, 390, 'Naiguata'),
(988, 390, 'Urimare'),
(989, 391, 'Aristides Bastidas'),
(990, 392, 'Bolivar'),
(991, 407, 'Chivacoa'),
(992, 407, 'Campo Elias'),
(993, 408, 'Cocorote'),
(994, 409, 'Independencia'),
(995, 410, 'Jose Antonio Paez'),
(996, 411, 'La Trinidad'),
(997, 412, 'Manuel Monge'),
(998, 413, 'Salom'),
(999, 413, 'Temerla'),
(1000, 413, 'Nirgua'),
(1001, 414, 'San Andres'),
(1002, 414, 'Yaritagua'),
(1003, 415, 'San Javier'),
(1004, 415, 'Albarico'),
(1005, 415, 'San Felipe'),
(1006, 416, 'Sucre'),
(1007, 417, 'Urachiche'),
(1008, 418, 'El Guayabo'),
(1009, 418, 'Farriar'),
(1010, 441, 'Isla de Toas'),
(1011, 441, 'Monagas'),
(1012, 442, 'San Timoteo'),
(1013, 442, 'General Urdaneta'),
(1014, 442, 'Libertador'),
(1015, 442, 'Marcelino Brice+n+o'),
(1016, 442, 'Pueblo Nuevo'),
(1017, 442, 'Manuel Guanipa Matos'),
(1018, 443, 'Ambrosio'),
(1019, 443, 'Carmen Herrera'),
(1020, 443, 'La Rosa'),
(1021, 443, 'German Rios Linares'),
(1022, 443, 'San Benito'),
(1023, 443, 'Romulo Betancourt'),
(1024, 443, 'Jorge Hernandez'),
(1025, 443, 'Punta Gorda'),
(1026, 443, 'Aristides Calvani'),
(1027, 444, 'Encontrados'),
(1028, 444, 'Udon Perez'),
(1029, 445, 'Moralito'),
(1030, 445, 'San Carlos del Zulia'),
(1031, 445, 'Santa Cruz del Zulia'),
(1032, 445, 'Santa Barbara'),
(1033, 445, 'Urribarri'),
(1034, 446, 'Carlos Quevedo'),
(1035, 446, 'Francisco Javier Pulgar'),
(1036, 446, 'Simon Rodriguez'),
(1037, 446, 'Guamo-Gavilanes'),
(1038, 448, 'La Concepcion'),
(1039, 448, 'San Jose'),
(1040, 448, 'Mariano Parra Leon'),
(1041, 448, 'Jose Ramon Yepez'),
(1042, 449, 'Jesus Maria Semprun'),
(1043, 449, 'Bari'),
(1044, 450, 'Concepcion'),
(1045, 450, 'Andres Bello'),
(1046, 450, 'Chiquinquira'),
(1047, 450, 'El Carmelo'),
(1048, 450, 'Potreritos'),
(1049, 451, 'Libertad'),
(1050, 451, 'Alonso de Ojeda'),
(1051, 451, 'Venezuela'),
(1052, 451, 'Eleazar Lopez Contreras'),
(1053, 451, 'Campo Lara'),
(1054, 452, 'Bartolome de las Casas'),
(1055, 452, 'Libertad'),
(1056, 452, 'Rio Negro'),
(1057, 452, 'San Jose de Perija'),
(1058, 453, 'San Rafael'),
(1059, 453, 'La Sierrita'),
(1060, 453, 'Las Parcelas'),
(1061, 453, 'Luis de Vicente'),
(1062, 453, 'Monse+n+or Marcos Sergio Godoy'),
(1063, 453, 'Ricaurte'),
(1064, 453, 'Tamare'),
(1065, 454, 'Antonio Borjas Romero'),
(1066, 454, 'Bolivar'),
(1067, 454, 'Cacique Mara'),
(1068, 454, 'Carracciolo Parra Perez'),
(1069, 454, 'Cecilio Acosta'),
(1070, 454, 'Cristo de Aranza'),
(1071, 454, 'Coquivacoa'),
(1072, 454, 'Chiquinquira'),
(1073, 454, 'Francisco Eugenio Bustamante'),
(1074, 454, 'Idelfonzo Vasquez'),
(1075, 454, 'Juana de Ávila'),
(1076, 454, 'Luis Hurtado Higuera'),
(1077, 454, 'Manuel Dagnino'),
(1078, 454, 'Olegario Villalobos'),
(1079, 454, 'Raul Leoni'),
(1080, 454, 'Santa Lucia'),
(1081, 454, 'Venancio Pulgar'),
(1082, 454, 'San Isidro'),
(1083, 455, 'Altagracia'),
(1084, 455, 'Faria'),
(1085, 455, 'Ana Maria Campos'),
(1086, 455, 'San Antonio'),
(1087, 455, 'San Jose'),
(1088, 456, 'Donaldo Garcia'),
(1089, 456, 'El Rosario'),
(1090, 456, 'Sixto Zambrano'),
(1091, 457, 'San Francisco'),
(1092, 457, 'El Bajo'),
(1093, 457, 'Domitila Flores'),
(1094, 457, 'Francisco Ochoa'),
(1095, 457, 'Los Cortijos'),
(1096, 457, 'Marcial Hernandez'),
(1097, 458, 'Santa Rita'),
(1098, 458, 'El Mene'),
(1099, 458, 'Pedro Lucas Urribarri'),
(1100, 458, 'Jose Cenobio Urribarri'),
(1101, 459, 'Rafael Maria Baralt'),
(1102, 459, 'Manuel Manrique'),
(1103, 459, 'Rafael Urdaneta'),
(1104, 460, 'Bobures'),
(1105, 460, 'Gibraltar'),
(1106, 460, 'Heras'),
(1107, 460, 'Monse+n+or Arturo Álvarez'),
(1108, 460, 'Romulo Gallegos'),
(1109, 460, 'El Batey'),
(1110, 461, 'Rafael Urdaneta'),
(1111, 461, 'La Victoria'),
(1112, 461, 'Raul Cuenca'),
(1113, 447, 'Sinamaica'),
(1114, 447, 'Alta Guajira'),
(1115, 447, 'Elias Sanchez Rubio'),
(1116, 447, 'Guajira'),
(1117, 462, 'Altagracia'),
(1118, 462, 'Antimano'),
(1119, 462, 'Caricuao'),
(1120, 462, 'Catedral'),
(1121, 462, 'Coche'),
(1122, 462, 'El Junquito'),
(1123, 462, 'El Paraiso'),
(1124, 462, 'El Recreo'),
(1125, 462, 'El Valle'),
(1126, 462, 'La Candelaria'),
(1127, 462, 'La Pastora'),
(1128, 462, 'La Vega'),
(1129, 462, 'Macarao'),
(1130, 462, 'San Agustin'),
(1131, 462, 'San Bernardino'),
(1132, 462, 'San Jose'),
(1133, 462, 'San Juan'),
(1134, 462, 'San Pedro'),
(1135, 462, 'Santa Rosalia'),
(1136, 462, 'Santa Teresa'),
(1137, 462, 'Sucre (Catia)'),
(1138, 462, '23 de enero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_almacen`
--

CREATE TABLE IF NOT EXISTS `tb_almacen` (
  `id_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(3) NOT NULL,
  `rif` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `telefono` int(20) NOT NULL,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_almacen`
--

INSERT INTO `tb_almacen` (`id_almacen`, `nacionalidad`, `rif`, `nombre`, `direccion`, `descripcion`, `telefono`) VALUES
(1, 'J', 214748364, 'galpon 1', 'via la recta', 'planta procesador de cafÃ©- sede principal', 426556889),
(2, 'G', 2147483647, 'galpon 2', 'los palmares', ' planta los palmares', 0),
(3, 'v', 222, 'sdd', 'dsdirecc', 'sdasasd', 12222),
(4, 'V', 25854642, 'asdbasdb', 'sdadasdasd', 'sdad', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_almacenado_cafe`
--

CREATE TABLE IF NOT EXISTS `tb_almacenado_cafe` (
  `id_almacenado_cafe` int(11) NOT NULL AUTO_INCREMENT,
  `id_alma_divicion` int(11) NOT NULL,
  `peso_neto` double NOT NULL,
  PRIMARY KEY (`id_almacenado_cafe`),
  KEY `id_alma_divicion` (`id_alma_divicion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_almacenado_cafe`
--

INSERT INTO `tb_almacenado_cafe` (`id_almacenado_cafe`, `id_alma_divicion`, `peso_neto`) VALUES
(1, 1, 15.82826086956),
(2, 2, 11.082608695652),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_almacen_otra_empresa`
--

CREATE TABLE IF NOT EXISTS `tb_almacen_otra_empresa` (
  `id_alma_otra_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(5) NOT NULL,
  `rif` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(20) NOT NULL,
  PRIMARY KEY (`id_alma_otra_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_alma_despacho`
--

CREATE TABLE IF NOT EXISTS `tb_alma_despacho` (
  `id_alma_despacho` int(11) NOT NULL AUTO_INCREMENT,
  `id_procendencia` int(11) NOT NULL,
  `tb_destino` varchar(20) NOT NULL,
  `id_destino` int(11) NOT NULL,
  `id_transporte` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_alma_despacho`),
  KEY `id_procendencia` (`id_procendencia`,`id_destino`,`id_transporte`,`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `tb_alma_despacho`
--

INSERT INTO `tb_alma_despacho` (`id_alma_despacho`, `id_procendencia`, `tb_destino`, `id_destino`, `id_transporte`, `id_usuario`, `fecha_reg`) VALUES
(23, 1, 'almacen', 2, 2, 34, '2018-02-07 01:42:05'),
(24, 1, 'almacen', 2, 2, 34, '2018-02-07 03:04:18'),
(25, 1, 'almacen', 2, 2, 34, '2018-02-07 06:46:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_alma_detalle_despacho`
--

CREATE TABLE IF NOT EXISTS `tb_alma_detalle_despacho` (
  `id_alma_detalle_despacho` int(11) NOT NULL AUTO_INCREMENT,
  `id_alma_despacho` int(11) NOT NULL,
  `id_alma_divicion` int(11) NOT NULL,
  `id_saco` int(11) NOT NULL,
  `cant_saco` int(20) NOT NULL,
  `kilo_bruto` float NOT NULL,
  PRIMARY KEY (`id_alma_detalle_despacho`),
  KEY `id_alma_despacho` (`id_alma_despacho`,`id_alma_divicion`,`id_saco`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `tb_alma_detalle_despacho`
--

INSERT INTO `tb_alma_detalle_despacho` (`id_alma_detalle_despacho`, `id_alma_despacho`, `id_alma_divicion`, `id_saco`, `cant_saco`, `kilo_bruto`) VALUES
(13, 23, 1, 2, 1, 11),
(14, 23, 1, 3, 1, 13),
(15, 24, 1, 2, 2, 4),
(16, 24, 1, 3, 2, 6),
(17, 25, 1, 2, 1, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_alma_divicion`
--

CREATE TABLE IF NOT EXISTS `tb_alma_divicion` (
  `id_alma_divicion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_calidad` int(11) NOT NULL,
  `adv_calidad` varchar(20) NOT NULL,
  `id_almacen` int(11) NOT NULL,
  PRIMARY KEY (`id_alma_divicion`),
  KEY `id_almacen` (`id_almacen`),
  KEY `id_calidad` (`id_calidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_alma_divicion`
--

INSERT INTO `tb_alma_divicion` (`id_alma_divicion`, `nombre`, `descripcion`, `id_calidad`, `adv_calidad`, `id_almacen`) VALUES
(1, 'lote ', 'para almacenar LB. lavado buen', 10, 'NB', 1),
(2, 'lote 2', 'natural bueno', 10, 'NB', 1),
(3, 'lote 1', 'Natural bueno', 9, 'LB', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bancos`
--

CREATE TABLE IF NOT EXISTS `tb_bancos` (
  `id_bancos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_bancos` varchar(60) NOT NULL,
  `numero_cuenta` varchar(100) NOT NULL,
  `propietario` varchar(60) NOT NULL,
  `nacionalidad` varchar(11) NOT NULL,
  `ced_propietario` int(11) NOT NULL,
  PRIMARY KEY (`id_bancos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_bancos`
--

INSERT INTO `tb_bancos` (`id_bancos`, `nombre_bancos`, `numero_cuenta`, `propietario`, `nacionalidad`, `ced_propietario`) VALUES
(1, 'BANESCO', '01220202102102122102', 'ENMANUEL LOPEZ', 'V', 22020200),
(2, 'PROVINCIAL', '02151151401015460232', 'ENMANUEL LOPEZ', 'V', 22222222),
(3, 'BANCARIBE', '1212222222222222222', 'ENMANUEL LOPEZ', 'V', 22222222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_beneficio`
--

CREATE TABLE IF NOT EXISTS `tb_beneficio` (
  `id_beneficio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_beneficio` varchar(60) NOT NULL,
  PRIMARY KEY (`id_beneficio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_beneficio`
--

INSERT INTO `tb_beneficio` (`id_beneficio`, `nombre_beneficio`) VALUES
(2, 'RENOVACION'),
(3, 'MANTENIMIENTO'),
(4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_beneficios_aprobado`
--

CREATE TABLE IF NOT EXISTS `tb_beneficios_aprobado` (
  `id_beneficios_aprobar` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `id_tipo_beneficio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_reg_apro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_beneficios_aprobar`),
  KEY `id_beneficio_disponible` (`id_tipo_beneficio`),
  KEY `id_usuario` (`id_usuario`),
  KEY `cedula` (`cedula`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `tb_beneficios_aprobado`
--

INSERT INTO `tb_beneficios_aprobado` (`id_beneficios_aprobar`, `cedula`, `id_tipo_beneficio`, `cantidad`, `fecha_reg_apro`, `id_usuario`) VALUES
(19, 11111111, 2, 50, '2017-10-31 20:12:12', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_beneficio_disponible`
--

CREATE TABLE IF NOT EXISTS `tb_beneficio_disponible` (
  `id_beneficio_disponible` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_beneficio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_beneficio_disponible`),
  KEY `id_tipo_beneficio` (`id_tipo_beneficio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tb_beneficio_disponible`
--

INSERT INTO `tb_beneficio_disponible` (`id_beneficio_disponible`, `id_tipo_beneficio`, `cantidad`, `precio`) VALUES
(1, 2, 0, 23),
(2, 3, 200, 200),
(3, 3, 200, 200),
(4, 2, 0, 5000),
(5, 3, 20, 20),
(6, 2, 0, 5000),
(7, 2, 239, 250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_beneficio_solicitado`
--

CREATE TABLE IF NOT EXISTS `tb_beneficio_solicitado` (
  `id_beneficio_solicitado` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `id_tipo_beneficio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado_aprobar` int(11) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_beneficio_solicitado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `tb_beneficio_solicitado`
--

INSERT INTO `tb_beneficio_solicitado` (`id_beneficio_solicitado`, `cedula`, `id_tipo_beneficio`, `cantidad`, `estado_aprobar`, `fecha_reg`) VALUES
(18, 22222222, 3, 40, 0, '2017-10-31 19:56:43'),
(19, 22222222, 2, 200, 0, '2017-10-31 19:56:37'),
(21, 11111111, 3, 22, 0, '2017-09-25 16:06:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bitacora`
--

CREATE TABLE IF NOT EXISTS `tb_bitacora` (
  `id_bita` int(11) NOT NULL AUTO_INCREMENT,
  `desc_bita` longtext COLLATE utf8_spanish_ci NOT NULL,
  `ip_bita` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_bita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_depar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_bita`),
  KEY `id_depar` (`id_depar`,`id_usuario`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=490 ;

--
-- Volcado de datos para la tabla `tb_bitacora`
--

INSERT INTO `tb_bitacora` (`id_bita`, `desc_bita`, `ip_bita`, `fecha_bita`, `id_depar`, `id_usuario`) VALUES
(349, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:52:32 pm del 09/10/2017 ', '::1', '2017-10-09 19:22:33', 6, 24),
(350, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:54:02 pm del 09/10/2017 ', '::1', '2017-10-09 19:24:02', 6, 24),
(351, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:56:27 pm del 09/10/2017 ', '::1', '2017-10-09 19:26:27', 6, 24),
(352, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:58:55 pm del 09/10/2017 ', '::1', '2017-10-09 19:28:55', 6, 24),
(353, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 4:06:22 pm del 09/10/2017', '', '2017-10-09 20:36:22', 6, 24),
(354, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 4:07:06 pm del 09/10/2017 ', '', '2017-10-09 20:37:06', 6, 24),
(355, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 4:07:09 pm del 09/10/2017', '', '2017-10-09 20:37:09', 6, 24),
(356, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 4:07:23 pm del 09/10/2017 ', '', '2017-10-09 20:37:23', 6, 24),
(357, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 4:08:08 pm del 09/10/2017', '', '2017-10-09 20:38:08', 6, 24),
(358, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 4:23:15 pm del 09/10/2017 ', '', '2017-10-09 20:53:15', 6, 24),
(359, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:33:08 am del 11/10/2017 ', '', '2017-10-11 13:03:09', 6, 24),
(360, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:57:31 am del 11/10/2017 ', '', '2017-10-11 15:27:31', 6, 24),
(361, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:17:53 am del 13/10/2017 ', '', '2017-10-13 12:47:53', 6, 24),
(362, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:16:10 pm del 13/10/2017 ', '', '2017-10-13 18:46:11', 6, 24),
(363, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:24:24 am del 18/10/2017 ', '', '2017-10-18 12:54:27', 6, 24),
(364, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:07:25 pm del 23/10/2017 ', '', '2017-10-23 18:37:26', 6, 24),
(365, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:18:28 am del 24/10/2017 ', '', '2017-10-24 13:48:28', 6, 24),
(366, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:52:17 am del 25/10/2017 ', '', '2017-10-25 13:22:17', 6, 24),
(367, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 10:03:55 am del 25/10/2017', '', '2017-10-25 14:33:55', 6, 24),
(368, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:22:16 am del 25/10/2017 ', '', '2017-10-25 15:52:17', 6, 24),
(369, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:45:10 am del 26/10/2017 ', '', '2017-10-26 13:15:10', 6, 24),
(370, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:21:29 am del 26/10/2017 ', '', '2017-10-26 15:51:30', 6, 24),
(371, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 11:21:34 am del 26/10/2017', '', '2017-10-26 15:51:34', 6, 24),
(372, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:22:08 am del 26/10/2017 ', '', '2017-10-26 15:52:08', 6, 24),
(373, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:37:14 am del 26/10/2017 ', '', '2017-10-26 16:07:14', 6, 24),
(374, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 12:08:49 pm del 26/10/2017', '', '2017-10-26 16:38:49', 6, 24),
(375, 'El Usuario, administrador del Departamento . Ingreso al Sistema a las 12:10:28 pm del 26/10/2017 ', '', '2017-10-26 16:40:29', 0, 28),
(376, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:41:47 pm del 26/10/2017 ', '', '2017-10-26 19:11:47', 6, 24),
(377, 'El Usuario, administrador del Departamento . Ingreso al Sistema a las 8:22:25 am del 27/10/2017 ', '', '2017-10-27 12:52:25', 0, 28),
(378, 'El Usuario, administrador del Departamento de . Salio del Sistema a las 8:26:13 am del 27/10/2017', '', '2017-10-27 12:56:13', 0, 28),
(379, 'El Usuario, administrador del Departamento . Ingreso al Sistema a las 10:51:58 am del 27/10/2017 ', '', '2017-10-27 15:21:58', 0, 28),
(380, 'El Usuario, administrador del Departamento de . Salio del Sistema a las 11:31:15 am del 27/10/2017', '', '2017-10-27 16:01:15', 5, 1),
(381, 'El Usuario, administrador del Departamento . Ingreso al Sistema a las 11:31:30 am del 27/10/2017 ', '', '2017-10-27 16:01:30', 0, 28),
(382, 'El Usuario, administrador del Departamento de . Salio del Sistema a las 1:51:04 pm del 27/10/2017', '', '2017-10-27 18:21:04', 0, 28),
(383, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 2:05:09 pm del 27/10/2017 ', '', '2017-10-27 18:35:09', 6, 28),
(384, 'El Usuario, administrador del Departamento de administrativo. Salio del Sistema a las 2:35:39 pm del 27/10/2017', '', '2017-10-27 19:05:39', 6, 28),
(385, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:35:51 pm del 27/10/2017 ', '', '2017-10-27 19:05:51', 6, 24),
(386, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 2:37:57 pm del 27/10/2017', '', '2017-10-27 19:07:57', 6, 24),
(387, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 2:38:15 pm del 27/10/2017 ', '', '2017-10-27 19:08:15', 6, 28),
(388, 'El Usuario, administrador del Departamento de administrativo. Salio del Sistema a las 2:44:42 pm del 27/10/2017', '', '2017-10-27 19:14:42', 6, 28),
(389, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 2:45:11 pm del 27/10/2017 ', '', '2017-10-27 19:15:11', 6, 28),
(390, 'El Usuario, administrador del Departamento de administrativo. Salio del Sistema a las 3:22:45 pm del 27/10/2017', '', '2017-10-27 19:52:45', 6, 28),
(391, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 3:22:59 pm del 27/10/2017 ', '', '2017-10-27 19:52:59', 6, 28),
(392, 'El Usuario, administrador del Departamento de administrativo. Salio del Sistema a las 3:27:55 pm del 27/10/2017', '', '2017-10-27 19:57:55', 6, 28),
(393, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 3:28:14 pm del 27/10/2017 ', '', '2017-10-27 19:58:14', 6, 28),
(394, 'El Usuario, administrador del Departamento administrativo. Ingreso al Sistema a las 9:43:00 am del 30/10/2017 ', '', '2017-10-30 14:13:00', 6, 28),
(395, 'El Usuario, administrador del Departamento de administrativo. Salio del Sistema a las 11:14:12 am del 30/10/2017', '', '2017-10-30 15:44:12', 6, 28),
(396, 'El Usuario, compra del Departamento administrativo. Ingreso al Sistema a las 11:14:25 am del 30/10/2017 ', '', '2017-10-30 15:44:26', 6, 33),
(397, 'El Usuario, compra del Departamento de administrativo. Salio del Sistema a las 11:15:16 am del 30/10/2017', '', '2017-10-30 15:45:16', 6, 33),
(398, 'El Usuario, pagos del Departamento administrativo. Ingreso al Sistema a las 11:38:31 am del 30/10/2017 ', '', '2017-10-30 16:08:31', 6, 32),
(399, 'El Usuario, pagos del Departamento de administrativo. Salio del Sistema a las 11:39:10 am del 30/10/2017', '', '2017-10-30 16:09:10', 6, 32),
(400, 'El Usuario, admi del Departamento administrativo. Ingreso al Sistema a las 11:39:17 am del 30/10/2017 ', '', '2017-10-30 16:09:18', 6, 35),
(401, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:03:02 am del 31/10/2017 ', '', '2017-10-31 12:33:02', 6, 24),
(402, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 8:53:57 am del 31/10/2017', '', '2017-10-31 13:23:57', 6, 24),
(403, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:54:32 am del 31/10/2017 ', '', '2017-10-31 13:24:32', 6, 24),
(404, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 10:06:24 am del 31/10/2017', '', '2017-10-31 14:36:24', 6, 24),
(405, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:06:35 am del 31/10/2017 ', '', '2017-10-31 14:36:35', 6, 24),
(406, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 10:39:04 am del 31/10/2017', '', '2017-10-31 15:09:04', 6, 24),
(407, 'El Usuario, pagos del Departamento administrativo. Ingreso al Sistema a las 10:39:14 am del 31/10/2017 ', '', '2017-10-31 15:09:14', 6, 32),
(408, 'El Usuario, pagos del Departamento de administrativo. Salio del Sistema a las 10:39:27 am del 31/10/2017', '', '2017-10-31 15:09:27', 6, 32),
(409, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:39:44 am del 31/10/2017 ', '', '2017-10-31 15:09:45', 6, 24),
(410, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:18:14 am del 01/11/2017 ', '', '2017-11-01 12:48:14', 6, 24),
(411, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 2:31:56 pm del 01/11/2017', '', '2017-11-01 19:01:56', 6, 24),
(412, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:50:27 am del 02/11/2017 ', '', '2017-11-02 15:20:28', 6, 24),
(413, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:01:56 am del 02/11/2017 ', '', '2017-11-02 15:31:57', 6, 24),
(414, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:15:29 pm del 02/11/2017 ', '', '2017-11-02 18:45:29', 6, 24),
(415, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:28:17 am del 03/11/2017 ', '', '2017-11-03 12:58:17', 6, 24),
(416, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 10:57:14 am del 03/11/2017', '', '2017-11-03 15:27:15', 6, 24),
(417, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:57:36 am del 03/11/2017 ', '', '2017-11-03 15:27:36', 6, 24),
(418, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 11:05:18 am del 03/11/2017', '', '2017-11-03 15:35:18', 6, 24),
(419, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:05:27 am del 03/11/2017 ', '', '2017-11-03 15:35:27', 6, 24),
(420, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 11:23:24 am del 03/11/2017 ', '', '2017-11-03 15:53:24', 6, 24),
(421, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:13:44 am del 06/11/2017 ', '', '2017-11-06 12:43:44', 6, 24),
(422, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:05:29 am del 06/11/2017 ', '', '2017-11-06 13:35:30', 6, 24),
(423, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:13:01 am del 06/11/2017 ', '', '2017-11-06 13:43:01', 6, 24),
(424, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 3:47:18 pm del 06/11/2017', '', '2017-11-06 20:17:19', 6, 24),
(425, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 3:47:44 pm del 06/11/2017 ', '', '2017-11-06 20:17:44', 6, 24),
(426, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 4:16:55 pm del 06/11/2017 ', '', '2017-11-06 20:46:55', 6, 24),
(427, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:23:04 am del 07/11/2017 ', '', '2017-11-07 12:53:04', 6, 24),
(428, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 10:25:49 am del 07/11/2017', '', '2017-11-07 14:55:49', 6, 24),
(429, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 10:35:04 am del 07/11/2017 ', '', '2017-11-07 15:05:04', 6, 24),
(430, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:42:24 am del 08/11/2017 ', '', '2017-11-08 13:12:25', 6, 24),
(431, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 8:43:01 am del 08/11/2017', '', '2017-11-08 13:13:01', 6, 24),
(432, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:44:20 am del 08/11/2017 ', '', '2017-11-08 13:14:20', 6, 24),
(433, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 8:44:30 am del 08/11/2017', '', '2017-11-08 13:14:30', 6, 24),
(434, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:45:29 am del 08/11/2017 ', '', '2017-11-08 13:15:29', 6, 24),
(435, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 8:45:37 am del 08/11/2017', '', '2017-11-08 13:15:37', 6, 24),
(436, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:46:51 am del 08/11/2017 ', '', '2017-11-08 13:16:51', 6, 24),
(437, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 8:47:00 am del 08/11/2017', '', '2017-11-08 13:17:00', 6, 24),
(438, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 8:47:33 am del 08/11/2017 ', '', '2017-11-08 13:17:33', 6, 24),
(439, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:23:16 am del 14/11/2017 ', '', '2017-11-14 13:53:17', 6, 24),
(440, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 3:56:51 pm del 14/11/2017 ', '', '2017-11-14 20:26:52', 6, 24),
(441, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:34:18 am del 15/11/2017 ', '', '2017-11-15 14:04:18', 6, 24),
(442, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 3:36:42 pm del 22/11/2017 ', '', '2017-11-22 20:06:42', 6, 24),
(443, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 9:09:17 am del 23/11/2017 ', '', '2017-11-23 13:39:17', 6, 24),
(444, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 11:01:58 am del 23/11/2017', '', '2017-11-23 15:31:58', 6, 24),
(445, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 4:55:21 pm del 23/11/2017 ', '', '2017-11-23 21:25:21', 7, 34),
(446, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 1:44:18 pm del 24/11/2017 ', '', '2017-11-24 18:14:19', 6, 24),
(447, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 4:03:24 pm del 24/11/2017 ', '', '2017-11-24 20:33:24', 7, 34),
(448, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:43:48 am del 27/11/2017 ', '', '2017-11-27 13:13:48', 7, 34),
(449, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 10:05:35 am del 27/11/2017 ', '', '2017-11-27 14:35:35', 7, 34),
(450, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 5:12:47 pm del 28/11/2017 ', '', '2017-11-28 21:42:48', 6, 24),
(451, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 10:26:17 am del 08/12/2017 ', '', '2017-12-08 14:56:18', 7, 34),
(452, 'El Usuario, almacen del Departamento de almacen. Salio del Sistema a las 2:47:47 pm del 08/12/2017', '', '2017-12-08 19:17:47', 7, 34),
(453, 'El Usuario, mariangel del Departamento administrativo. Ingreso al Sistema a las 2:47:56 pm del 08/12/2017 ', '', '2017-12-08 19:17:56', 6, 24),
(454, 'El Usuario, mariangel del Departamento de administrativo. Salio del Sistema a las 2:49:14 pm del 08/12/2017', '', '2017-12-08 19:19:14', 6, 24),
(455, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 2:49:30 pm del 08/12/2017 ', '', '2017-12-08 19:19:30', 7, 34),
(456, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:46:01 am del 11/12/2017 ', '', '2017-12-11 13:16:01', 7, 34),
(457, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:56:58 am del 11/12/2017 ', '', '2017-12-11 13:26:58', 7, 34),
(458, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 11:32:12 am del 11/12/2017 ', '', '2017-12-11 16:02:12', 7, 34),
(459, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 2:57:03 pm del 11/12/2017 ', '', '2017-12-11 19:27:03', 7, 34),
(460, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:21:55 am del 12/12/2017 ', '', '2017-12-12 12:51:55', 7, 34),
(461, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:48:53 am del 13/12/2017 ', '', '2017-12-13 13:18:54', 7, 34),
(462, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 3:38:21 pm del 13/12/2017 ', '', '2017-12-13 20:08:22', 7, 34),
(463, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:29:31 am del 14/12/2017 ', '', '2017-12-14 13:59:32', 7, 34),
(464, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 11:37:20 am del 14/12/2017 ', '', '2017-12-14 16:07:20', 7, 34),
(465, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:47:46 am del 15/12/2017 ', '', '2017-12-15 13:17:46', 7, 34),
(466, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:05:57 am del 18/12/2017 ', '', '2017-12-18 13:35:57', 7, 34),
(467, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 5:00:56 pm del 18/12/2017 ', '', '2017-12-18 21:30:56', 7, 34),
(468, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 11:38:23 am del 20/12/2017 ', '', '2017-12-20 16:08:24', 7, 34),
(469, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 4:58:38 pm del 20/12/2017 ', '', '2017-12-20 21:28:39', 7, 34),
(470, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:18:22 am del 21/12/2017 ', '', '2017-12-21 13:48:23', 7, 34),
(471, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:43:33 am del 31/01/2018 ', '', '2018-01-31 14:13:37', 7, 34),
(472, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:42:28 am del 01/02/2018 ', '', '2018-02-01 13:12:28', 7, 34),
(473, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 1:44:09 pm del 01/02/2018 ', '', '2018-02-01 18:14:09', 7, 34),
(474, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 3:32:49 pm del 01/02/2018 ', '', '2018-02-01 20:02:49', 7, 34),
(475, 'El Usuario, almacen del Departamento de almacen. Salio del Sistema a las 3:46:50 pm del 01/02/2018', '', '2018-02-01 20:16:51', 7, 34),
(476, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 3:46:59 pm del 01/02/2018 ', '', '2018-02-01 20:16:59', 7, 34),
(477, 'El Usuario, almacen del Departamento de almacen. Salio del Sistema a las 3:51:16 pm del 01/02/2018', '', '2018-02-01 20:21:16', 7, 34),
(478, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 3:51:25 pm del 01/02/2018 ', '', '2018-02-01 20:21:25', 7, 34),
(479, 'El Usuario, almacen del Departamento de almacen. Salio del Sistema a las 3:57:12 pm del 01/02/2018', '', '2018-02-01 20:27:12', 7, 34),
(480, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 3:57:20 pm del 01/02/2018 ', '', '2018-02-01 20:27:20', 7, 34),
(481, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 10:57:11 am del 02/02/2018 ', '', '2018-02-02 15:27:11', 7, 34),
(482, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 1:38:45 pm del 02/02/2018 ', '', '2018-02-02 18:08:45', 7, 34),
(483, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 8:48:17 am del 05/02/2018 ', '', '2018-02-05 13:18:17', 7, 34),
(484, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 10:54:55 am del 05/02/2018 ', '', '2018-02-05 15:24:55', 7, 34),
(485, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 10:42:56 pm del 05/02/2018 ', '', '2018-02-06 03:12:59', 7, 34),
(486, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:03:45 pm del 06/02/2018 ', '', '2018-02-07 01:33:45', 7, 34),
(487, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 2:03:53 am del 08/02/2018 ', '', '2018-02-08 06:33:54', 7, 34),
(488, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 9:01:44 pm del 08/02/2018 ', '', '2018-02-09 01:31:44', 7, 34),
(489, 'El Usuario, almacen del Departamento almacen. Ingreso al Sistema a las 1:15:37 am del 09/02/2018 ', '', '2018-02-09 05:45:37', 7, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_calidad_cafe`
--

CREATE TABLE IF NOT EXISTS `tb_calidad_cafe` (
  `id_calidad_cafe` int(11) NOT NULL AUTO_INCREMENT,
  `adv_calidad` varchar(60) NOT NULL,
  `nombre_calidad` varchar(60) NOT NULL,
  `condiciones` varchar(200) NOT NULL,
  `defectos` varchar(60) NOT NULL,
  `grano_negro` varchar(60) NOT NULL,
  `picadillo` varchar(60) NOT NULL,
  `parapara` varchar(60) NOT NULL,
  `peque` varchar(60) NOT NULL,
  `humedad` varchar(60) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id_calidad_cafe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tb_calidad_cafe`
--

INSERT INTO `tb_calidad_cafe` (`id_calidad_cafe`, `adv_calidad`, `nombre_calidad`, `condiciones`, `defectos`, `grano_negro`, `picadillo`, `parapara`, `peque`, `humedad`, `precio`) VALUES
(9, 'LB', 'LAVADO BUENO ', 'LAVADO BUENO: ES EL GRANO PROCEDENTE DEL FRUTO MADURO QUE HA SIDO SOMETIDO A LOS PROCESOS DEL BENEFICIO HÃºMEDO, ( DESPULPADO, FERMENTACIÃ³N, LAVADO, SECADO, TRILLADO)', '13-25', '6', '5', '5', '6', '12', 80),
(10, 'NB', 'NATURAL BUENO', 'CAFÃ© NATURAL: ES EL GRANO QUE SE OBTIENE COMO PRODUCTO DEL BENEFICIO SECO DEL CAFÃ© MADURO, EL CUAL CONSISTE EN SECARLO  CON TODAS SU CORTEZAS Y LUEGO TRILLAR LO', '26-50', '10', '5', '5', '8', '12 a 13', 100),
(11, 'NC', 'NATURAL CORRIENTE', 'CAFÃ© CORRIENTE: ES EL GRANO QUE SE OBTIENE COMO PRODUCTO DEL BENEFICIO SECO DEL CAFÃ© MADURO, EL CUAL CONSISTE EN SECARLO CON TODAS SU CORTEZAS Y LUEGO TRILLARLO', '50 - 60', '20', '7', '7', '10', '12-13', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_comerciante`
--

CREATE TABLE IF NOT EXISTS `tb_comerciante` (
  `nacionalidad` varchar(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre_comercio` varchar(60) NOT NULL,
  `nombre_propi` varchar(60) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_parroquia` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `clave` varchar(60) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_comerciante`
--

INSERT INTO `tb_comerciante` (`nacionalidad`, `cedula`, `nombre_comercio`, `nombre_propi`, `direccion`, `id_municipio`, `id_parroquia`, `telefono`, `usuario`, `clave`, `fecha_reg`) VALUES
('J', 22222222, 'LOS KAREN C.A', 'KAREN PEREZ ', 'CALLE COMERCIO 33', 294, 752, 2147483647, '1234', '81dc9bdb52d04dc20036dbd8313ed055', '2017-09-22 14:29:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compra_cafe`
--

CREATE TABLE IF NOT EXISTS `tb_compra_cafe` (
  `id_compra_cafe` int(11) NOT NULL AUTO_INCREMENT,
  `ced_productor` int(11) NOT NULL,
  `modo_pago` varchar(60) NOT NULL,
  `dias` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra_cafe`),
  KEY `id_reg_productor` (`ced_productor`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Volcado de datos para la tabla `tb_compra_cafe`
--

INSERT INTO `tb_compra_cafe` (`id_compra_cafe`, `ced_productor`, `modo_pago`, `dias`, `id_usuario`, `fecha_reg`) VALUES
(135, 22222222, 'Al CONTADO TRANSFERENCIA', 0, 24, '2017-11-24 20:18:05'),
(136, 22222222, 'Al CONTADO TRANSFERENCIA', 0, 24, '2017-11-24 20:19:20'),
(137, 22222222, 'Al CONTADO EFECTIVO', 0, 24, '2017-11-28 22:09:15'),
(138, 22222222, 'Al CONTADO EFECTIVO', 0, 24, '2017-12-08 19:19:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compra_productor`
--

CREATE TABLE IF NOT EXISTS `tb_compra_productor` (
  `id_compra_productor` int(11) NOT NULL AUTO_INCREMENT,
  `id_productos_comer` int(11) NOT NULL,
  `precio_pro` float NOT NULL,
  `cantidad_pro` float NOT NULL,
  `descuento` float NOT NULL,
  `ced_productor` int(11) NOT NULL,
  PRIMARY KEY (`id_compra_productor`),
  KEY `id_productos_comer` (`id_productos_comer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `tb_compra_productor`
--

INSERT INTO `tb_compra_productor` (`id_compra_productor`, `id_productos_comer`, `precio_pro`, `cantidad_pro`, `descuento`, `ced_productor`) VALUES
(38, 1, 20000, 2, 0.627894, 22222222),
(39, 5, 22, 22, 0.627894, 22222222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_control_acceso`
--

CREATE TABLE IF NOT EXISTS `tb_control_acceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `rango` int(11) NOT NULL DEFAULT '5',
  `nivel_acceso` int(11) NOT NULL DEFAULT '3',
  `conexion` varchar(3) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'OFF',
  `intentos` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `tb_control_acceso`
--

INSERT INTO `tb_control_acceso` (`id`, `id_usuario`, `rango`, `nivel_acceso`, `conexion`, `intentos`, `estado`) VALUES
(31, 24, 1, 1, 'OFF', 0, 1),
(33, 28, 1, 0, 'OFF', 0, 1),
(34, 31, 1, 1, 'OFF', 0, 1),
(35, 32, 1, 3, 'OFF', 0, 1),
(36, 33, 1, 2, 'OFF', 0, 1),
(37, 34, 1, 4, 'ON', 0, 1),
(38, 35, 1, 1, 'ON', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_control_acceso_comercio`
--

CREATE TABLE IF NOT EXISTS `tb_control_acceso_comercio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `conexion` varchar(3) NOT NULL DEFAULT 'OFF',
  `intentos` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cedula` (`cedula`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_control_acceso_comercio`
--

INSERT INTO `tb_control_acceso_comercio` (`id`, `cedula`, `conexion`, `intentos`, `estado`) VALUES
(1, 22222222, 'ON', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_credito_desc`
--

CREATE TABLE IF NOT EXISTS `tb_credito_desc` (
  `id_credito_desc` int(11) NOT NULL AUTO_INCREMENT,
  `porsentaje_cred` int(11) NOT NULL,
  `apartir_kintal` int(11) NOT NULL,
  PRIMARY KEY (`id_credito_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tb_credito_desc`
--

INSERT INTO `tb_credito_desc` (`id_credito_desc`, `porsentaje_cred`, `apartir_kintal`) VALUES
(1, 15, 20000),
(2, 10, 10000),
(6, 5, 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_departamento`
--

CREATE TABLE IF NOT EXISTS `tb_departamento` (
  `id_depar` int(11) NOT NULL AUTO_INCREMENT,
  `cod_depar` int(11) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `rango` int(11) NOT NULL,
  PRIMARY KEY (`id_depar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tb_departamento`
--

INSERT INTO `tb_departamento` (`id_depar`, `cod_depar`, `departamento`, `rango`) VALUES
(6, 1234, 'administrativo', 1),
(7, 1233, 'almacen', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_desc_qq`
--

CREATE TABLE IF NOT EXISTS `tb_desc_qq` (
  `id_desc_qq` int(11) NOT NULL AUTO_INCREMENT,
  `qq_hectaria` float NOT NULL,
  `porsen_descuento` float NOT NULL,
  PRIMARY KEY (`id_desc_qq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_desc_qq`
--

INSERT INTO `tb_desc_qq` (`id_desc_qq`, `qq_hectaria`, `porsen_descuento`) VALUES
(1, 70, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_compra`
--

CREATE TABLE IF NOT EXISTS `tb_detalle_compra` (
  `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra_cafe` int(11) NOT NULL,
  `id_calidad` int(11) NOT NULL,
  `id_saco` int(11) NOT NULL,
  `cant_saco` int(11) NOT NULL,
  `kg_bruto` int(11) NOT NULL,
  `precio_dc` double NOT NULL,
  `adv_calidad` varchar(60) NOT NULL,
  `id_alma_divicion` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_compra`),
  KEY `id_compra_cafe` (`id_compra_cafe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Volcado de datos para la tabla `tb_detalle_compra`
--

INSERT INTO `tb_detalle_compra` (`id_detalle_compra`, `id_compra_cafe`, `id_calidad`, `id_saco`, `cant_saco`, `kg_bruto`, `precio_dc`, `adv_calidad`, `id_alma_divicion`) VALUES
(87, 135, 9, 2, 5, 500, 100, 'LB', 3),
(88, 136, 9, 3, 8, 800, 100, 'LB', 1),
(89, 137, 9, 2, 2, 22, 80, 'LB', 3),
(90, 138, 9, 2, 22, 22, 80, 'LB', 1),
(91, 138, 10, 2, 22, 2234, 100, 'NB', 1),
(92, 138, 10, 3, 222, 222, 100, 'NB', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_pago`
--

CREATE TABLE IF NOT EXISTS `tb_detalle_pago` (
  `id_detalle_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra_cafe` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `banco` varchar(60) NOT NULL,
  `cod_refe` int(40) NOT NULL,
  `monto_pago` float NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_pago`),
  KEY `id_compra_cafe` (`id_compra_cafe`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_detalle_pago`
--

INSERT INTO `tb_detalle_pago` (`id_detalle_pago`, `id_compra_cafe`, `concepto`, `banco`, `cod_refe`, `monto_pago`, `fecha_pago`, `id_usuario`) VALUES
(1, 137, 'Al CONTADO EFECTIVO', '', 0, 35.6522, '2017-11-28', 24),
(2, 138, 'Al CONTADO EFECTIVO', '', 0, 5216.3, '2017-12-08', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_fundo_parcela`
--

CREATE TABLE IF NOT EXISTS `tb_fundo_parcela` (
  `id_fundo_parcela` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `sup_total_fundo` float NOT NULL,
  `sup_sembrada` float NOT NULL,
  `rubros` varchar(200) NOT NULL,
  PRIMARY KEY (`id_fundo_parcela`),
  KEY `id_productor` (`cedula`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `tb_fundo_parcela`
--

INSERT INTO `tb_fundo_parcela` (`id_fundo_parcela`, `cedula`, `sup_total_fundo`, `sup_sembrada`, `rubros`) VALUES
(14, 11111111, 50, 30, ''),
(15, 22222222, 80, 50, ''),
(16, 33333333, 50, 20, 'CAMBUR'),
(17, 44444444, 10, 0.5, 'CAMBUR'),
(18, 55555555, 10.5, 9.5, 'CAMBUR'),
(19, 88888888, 23, 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_notifica_almacen`
--

CREATE TABLE IF NOT EXISTS `tb_notifica_almacen` (
  `id_notifica_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `id_emisor` int(11) NOT NULL,
  `id_receptor` int(11) NOT NULL,
  `id_compra_cafe` int(11) NOT NULL,
  `estado_noti` varchar(11) NOT NULL DEFAULT 'NO',
  `notificacion` varchar(60) NOT NULL,
  `tono_notificacion` int(11) NOT NULL,
  `fecha_noti` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_notifica_almacen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tb_notifica_almacen`
--

INSERT INTO `tb_notifica_almacen` (`id_notifica_almacen`, `id_emisor`, `id_receptor`, `id_compra_cafe`, `estado_noti`, `notificacion`, `tono_notificacion`, `fecha_noti`) VALUES
(2, 24, 34, 135, 'NO', 'HA REALIZADO UNA COMPRA CAFE', 1, '2017-11-24 04:30:00'),
(3, 24, 0, 136, 'SI', 'HA REALIZADO UNA COMPRA CAFE', 1, '2017-11-24 04:30:00'),
(4, 24, 0, 137, 'SI', 'HA REALIZADO UNA COMPRA CAFE', 1, '2017-11-28 22:09:15'),
(5, 24, 34, 138, 'SI', 'HA REALIZADO UNA COMPRA CAFE', 1, '2017-12-08 19:19:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_periodo`
--

CREATE TABLE IF NOT EXISTS `tb_periodo` (
  `id_periodo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_periodo` varchar(60) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  PRIMARY KEY (`id_periodo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_periodo`
--

INSERT INTO `tb_periodo` (`id_periodo`, `nombre_periodo`, `fecha_inicio`, `fecha_final`) VALUES
(2, 'PERIODO16-17', '2016-10-01', '2017-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos_comer`
--

CREATE TABLE IF NOT EXISTS `tb_productos_comer` (
  `id_productos_comer` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_productos_comer`),
  KEY `cedula` (`cedula`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tb_productos_comer`
--

INSERT INTO `tb_productos_comer` (`id_productos_comer`, `cedula`, `nombre`, `descripcion`) VALUES
(1, 22222222, 'viveres', 'variedad de hortalizas'),
(5, 22222222, 'dasdass', 'asdasdfss'),
(6, 22222222, 'aaa', 'aaa'),
(8, 22222222, '2', '2'),
(9, 22222222, 'erer', 'fdfx'),
(10, 22222222, 'www', 'www'),
(11, 22222222, '2', 'sdsd'),
(12, 22222222, 'ww', 'ww');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_reg_productor`
--

CREATE TABLE IF NOT EXISTS `tb_reg_productor` (
  `nacionalidad` varchar(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion_parcela` varchar(200) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_parroquia` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `clave` varchar(60) NOT NULL,
  `fecha_reg_pro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cedula`),
  KEY `clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_reg_productor`
--

INSERT INTO `tb_reg_productor` (`nacionalidad`, `cedula`, `nombre`, `direccion_parcela`, `id_municipio`, `id_parroquia`, `telefono`, `clave`, `fecha_reg_pro`) VALUES
('V', 11111111, 'MARIAN  PEREZ', '24 DE ABRIL', 287, 734, 2147483647, '12', '2017-09-22 19:23:59'),
('V', 22222222, 'PEDRO GONZALES', 'CASERIO PIEDRA', 285, 726, 4455555, '158050', '2017-09-22 19:25:41'),
('V', 33333333, 'CARLOS CASTELLANO', 'LOS CORTIJOS', 285, 726, 2147483647, '', '2017-10-06 19:56:53'),
('V', 44444444, 'MARIA PEREZ', ' CASERIA', 287, 734, 2147483647, '', '2017-10-10 00:12:02'),
('V', 55555555, 'CARLOS ANDRADE', ' CASERIO PIEDRA', 287, 735, 2147483647, '', '2017-10-11 19:05:56'),
('V', 88888888, 'CATERIN TORO', ' SADASD', 1, 2, 2147483647, '19232', '2017-11-23 15:27:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_res_compra`
--

CREATE TABLE IF NOT EXISTS `tb_res_compra` (
  `id_res_compra` int(11) NOT NULL AUTO_INCREMENT,
  `ced_productor` int(11) NOT NULL,
  `id_calidad` int(11) NOT NULL,
  `id_sacos` int(11) NOT NULL,
  `cant_sacos` int(11) NOT NULL,
  `kg_bruto` int(11) NOT NULL,
  PRIMARY KEY (`id_res_compra`),
  KEY `ced_productor` (`ced_productor`,`id_calidad`,`id_sacos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_sacos`
--

CREATE TABLE IF NOT EXISTS `tb_sacos` (
  `id_sacos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sacos` varchar(60) NOT NULL,
  `peso` float NOT NULL,
  PRIMARY KEY (`id_sacos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_sacos`
--

INSERT INTO `tb_sacos` (`id_sacos`, `nombre_sacos`, `peso`) VALUES
(2, 'FIQUE', 0.75),
(3, 'NYLO', 0.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_beneficio`
--

CREATE TABLE IF NOT EXISTS `tb_tipo_beneficio` (
  `id_tipo_beneficio` int(11) NOT NULL AUTO_INCREMENT,
  `id_beneficio` int(11) NOT NULL,
  `nombre_tipo_beneficio` varchar(60) NOT NULL,
  `descripcion_beneficio` varchar(100) NOT NULL,
  `medida` varchar(20) NOT NULL,
  `cantidad_ha` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_beneficio`),
  KEY `id_beneficio` (`id_beneficio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tb_tipo_beneficio`
--

INSERT INTO `tb_tipo_beneficio` (`id_tipo_beneficio`, `id_beneficio`, `nombre_tipo_beneficio`, `descripcion_beneficio`, `medida`, `cantidad_ha`) VALUES
(2, 2, ' ABONO', 'SACO DE 500ML', 'SACO', 15),
(3, 2, 'FERTILIZANTE', '1 LITRO', '', 10),
(11, 3, 'HERBICIDAD', 'PARA EL MONTE', 'LITROS', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_transporte`
--

CREATE TABLE IF NOT EXISTS `tb_transporte` (
  `id_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(5) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre_apellido` varchar(100) NOT NULL,
  `tipo_vehiculo` varchar(100) NOT NULL,
  `n_placa` varchar(11) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tb_transporte`
--

INSERT INTO `tb_transporte` (`id_transporte`, `nacionalidad`, `cedula`, `nombre_apellido`, `tipo_vehiculo`, `n_placa`) VALUES
(2, 'V', 22222, 'dsadsd', 'asdda', 'asdasd'),
(3, 'V', 222, 'dfsfsdf', 'dsadas', 'sdfsd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `ci_rif` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_depar` int(11) DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'usuario.jpeg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ci_rif` (`ci_rif`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `email` (`email`),
  KEY `id_municipio` (`id_municipio`),
  KEY `id_depar` (`id_depar`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nacionalidad`, `ci_rif`, `nombre`, `apellido`, `cargo`, `direccion`, `id_municipio`, `telefono`, `email`, `id_depar`, `usuario`, `clave`, `imagen`) VALUES
(24, 'V', 22555666, 'mariangel', 'zapata', 'informatica', '17 de diciembre', 23, '04261506330', 'mariangel.38@hotmail.com', 6, 'mariangel', '81dc9bdb52d04dc20036dbd8313ed055', 'images.jpg'),
(28, 'V', 0, 'Administrador', '', 'Administrador', '0', 0, '04261506330', '0', 6, 'administrador', '91f5167c34c400758115c2a6826ec2e3', 'usuario.jpeg'),
(31, 'V', 18250998, 'JOSUE', 'CANELON', 'JEFE DE FLOR DEL PARAiSO', 'LA RECTA', 23, '04255565856', '40', 6, 'josue', '351f79df2d521e759360a7e664ee1dfc', 'usuario.jpeg'),
(32, 'V', 33333333, 'PAGOS', '', 'JEFE', 'CHABASQUEN', 287, '00000000000', 'PAGOS@HOTMAIL.COM', 6, 'pagos', '300f49dc8a8092d3612d2acdd49eb70f', 'usuario.jpeg'),
(33, 'V', 22222222, 'COMPRA', '', 'JEFE', 'COMPRA', 287, '00000000000', 'compra@gmail.com', 6, 'compra', '570f8e40738a1bca5d841bfeb6bfc05f', 'usuario.jpeg'),
(34, 'V', 44444444, 'ALMACEN', '', 'JEFE', 'ALMACEN', 287, '00000000000', 'almacen@gmail.com', 7, 'almacen', '4e210009a1cfbf891ee1a8f75f441e2f', 'usuario.jpeg'),
(35, 'V', 11111111, 'ADMI', '', 'LABORAL', 'ADMI', 287, '00000000000', 'admi@gmail.com', 6, 'admi', '60eb0f73e33ce3ffd4e51d974447db53', 'usuario.jpeg');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD CONSTRAINT `parroquias_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_alma_detalle_despacho`
--
ALTER TABLE `tb_alma_detalle_despacho`
  ADD CONSTRAINT `tb_alma_detalle_despacho_ibfk_1` FOREIGN KEY (`id_alma_despacho`) REFERENCES `tb_alma_despacho` (`id_alma_despacho`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_alma_divicion`
--
ALTER TABLE `tb_alma_divicion`
  ADD CONSTRAINT `tb_alma_divicion_ibfk_1` FOREIGN KEY (`id_almacen`) REFERENCES `tb_almacen` (`id_almacen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_beneficios_aprobado`
--
ALTER TABLE `tb_beneficios_aprobado`
  ADD CONSTRAINT `tb_beneficios_aprobado_ibfk_2` FOREIGN KEY (`id_tipo_beneficio`) REFERENCES `tb_tipo_beneficio` (`id_tipo_beneficio`),
  ADD CONSTRAINT `tb_beneficios_aprobado_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id`),
  ADD CONSTRAINT `tb_beneficios_aprobado_ibfk_4` FOREIGN KEY (`cedula`) REFERENCES `tb_reg_productor` (`cedula`);

--
-- Filtros para la tabla `tb_beneficio_disponible`
--
ALTER TABLE `tb_beneficio_disponible`
  ADD CONSTRAINT `tb_beneficio_disponible_ibfk_1` FOREIGN KEY (`id_tipo_beneficio`) REFERENCES `tb_tipo_beneficio` (`id_tipo_beneficio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_control_acceso`
--
ALTER TABLE `tb_control_acceso`
  ADD CONSTRAINT `tb_control_acceso_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_control_acceso_comercio`
--
ALTER TABLE `tb_control_acceso_comercio`
  ADD CONSTRAINT `tb_control_acceso_comercio_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `tb_comerciante` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_detalle_compra`
--
ALTER TABLE `tb_detalle_compra`
  ADD CONSTRAINT `tb_detalle_compra_ibfk_1` FOREIGN KEY (`id_compra_cafe`) REFERENCES `tb_compra_cafe` (`id_compra_cafe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_detalle_pago`
--
ALTER TABLE `tb_detalle_pago`
  ADD CONSTRAINT `tb_detalle_pago_ibfk_1` FOREIGN KEY (`id_compra_cafe`) REFERENCES `tb_compra_cafe` (`id_compra_cafe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_fundo_parcela`
--
ALTER TABLE `tb_fundo_parcela`
  ADD CONSTRAINT `tb_fundo_parcela_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `tb_reg_productor` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_productos_comer`
--
ALTER TABLE `tb_productos_comer`
  ADD CONSTRAINT `tb_productos_comer_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `tb_comerciante` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_res_compra`
--
ALTER TABLE `tb_res_compra`
  ADD CONSTRAINT `tb_res_compra_ibfk_1` FOREIGN KEY (`ced_productor`) REFERENCES `tb_reg_productor` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_tipo_beneficio`
--
ALTER TABLE `tb_tipo_beneficio`
  ADD CONSTRAINT `tb_tipo_beneficio_ibfk_1` FOREIGN KEY (`id_beneficio`) REFERENCES `tb_beneficio` (`id_beneficio`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_notificaciones` ON SCHEDULE EVERY 1 MINUTE STARTS '2017-02-23 12:29:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN 
DELETE FROM tb_notificaciones WHERE fecha_noti < DATE_SUB(NOW(), INTERVAL 7 DAY);
END$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
