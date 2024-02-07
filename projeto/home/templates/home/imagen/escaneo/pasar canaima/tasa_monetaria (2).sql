-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2018 a las 23:40:05
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tasa_monetaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bancos`
--

CREATE TABLE IF NOT EXISTS `tb_bancos` (
  `id_bancos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_bancos` varchar(60) NOT NULL,
  `numero_cuenta` varchar(100) NOT NULL,
  `tipo_cuenta` varchar(60) NOT NULL,
  `nacionalidad` varchar(5) NOT NULL,
  `ced_propietario` int(11) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bancos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tb_bancos`
--

INSERT INTO `tb_bancos` (`id_bancos`, `nombre_bancos`, `numero_cuenta`, `tipo_cuenta`, `nacionalidad`, `ced_propietario`, `propietario`) VALUES
(8, 'BANCO BANESCO', '01340414304141012365', 'Corriente', 'J', 400360218, 'PLASTIC PET CA'),
(9, 'BANCO PROVINCIAL BBVA', '01080389680100030892', 'Corriente', 'J', 400360218, 'PLASTIC PET CA'),
(10, 'BANCO BANESCO', '01340414394143012551', 'Corriente', 'V', 18250169, 'EMMANUEL JOSE LOEPZ'),
(11, 'BANCO PROVINCIAL BBVA', '01080389610100010123', 'Corriente', 'V', 18250169, 'EMMANUEL JOSE LOPEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_billetes`
--

CREATE TABLE IF NOT EXISTS `tb_billetes` (
  `id_billetes` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra_dolar` int(11) NOT NULL,
  `denominacion` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_billetes`),
  KEY `id_compra_dolar` (`id_compra_dolar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_billetes`
--

INSERT INTO `tb_billetes` (`id_billetes`, `id_compra_dolar`, `denominacion`, `codigo`) VALUES
(1, 4, '100', 'LL53811674F'),
(2, 4, '100', 'LB07871967H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'cafe', 'calidad_la'),
(2, 'VVV', 'VVV'),
(3, 'VVV', 'VVV'),
(4, 'VVV', 'VVV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(5) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `id_represetante` int(11) NOT NULL,
  `fecha_cli` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `id_represetante` (`id_represetante`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `telefono`, `correo`, `id_represetante`, `fecha_cli`) VALUES
(4, 'V', '19809572', 'GENESIS', 'FLORES', 'CHILE', '000', 'NO TIENE', 8, '2018-04-30 19:47:12'),
(5, 'V', '18003093', 'CARMEN', 'ORELLAN', 'CHILE', '0001', 'NO TIENE', 8, '2018-04-30 19:50:09'),
(8, 'V', '20625378', 'KARINA', 'AMARILES', 'CHILE', '0004', 'NO TIENE', 8, '2018-04-30 19:54:49'),
(9, 'V', '18546683', 'ANGEL', 'ALVARADO', 'CHILE', '0005', 'NO TIENE', 8, '2018-04-30 19:55:34'),
(10, 'V', '14264456', 'CARLOS', 'PACHECO', 'CHILE', '0006', 'NO TIENE', 8, '2018-04-30 19:56:34'),
(11, 'V', '17802488', 'JOSELYN ', 'ZURITA', 'CHILE', '0007', 'NO TIENE', 8, '2018-04-30 19:57:46'),
(12, 'V', '20933822', 'OSVELI', 'NAVAS', 'CHILE', '0008', 'NO TIENE', 8, '2018-04-30 20:03:11'),
(13, 'V', '16802491', 'YISNEIDA', 'CHIRINOS', 'CHILE', '0009', 'NO TIENE', 8, '2018-04-30 20:04:13'),
(14, 'V', '10377191', 'LEONARDO ALBERTO', 'MARTINEZ ALZUARDES', 'CHILE', '0010', 'MARTINEZ.ALZUARDES@GMAIL.COM', 8, '2018-04-30 20:06:52'),
(15, 'V', '7482679', 'GREGORIO ', 'GONZALEZ', 'CHILE', '0011', 'NO TIENE', 8, '2018-04-30 20:08:39'),
(16, 'V', '19257823', 'PATRICIA', 'VALDEZ', 'venezuela', '0', 'patriciavaldezl@hotmail.com', 9, '2018-05-03 20:26:47'),
(18, 'E', '56678987', 'ENEIDA ', 'LIBRE', 'CFDGFD', '04144524515', 'DWEERH', 8, '2018-05-04 18:54:30'),
(19, 'E', '45678900', 'EMPERATIZ', 'PINTO', 'sdsfd', '04264514528', 'fdgfh', 8, '2018-05-04 19:02:50'),
(20, 'E', '55787943', 'FRANK', 'MEDINA', 'ADSFD', '04264512456', 'FDFGDF', 8, '2018-05-04 19:17:16'),
(21, 'E', '56575657', 'OSCAR', 'MOLINA', 'SDFER', '02571245456', 'REFER', 8, '2018-05-04 19:22:42'),
(22, 'E', '45678793', 'RAFAEL', 'GUTIERREZ', 'SDG', '01245573435', 'REWTERT', 8, '2018-05-04 19:28:05'),
(23, 'E', '25346781', 'KARINA', 'TROMPIZ', 'CFDGT', '04265445245', 'EWRWT', 8, '2018-05-07 13:54:26'),
(24, 'E', '23456788', 'DAYANA', 'ALVAREZ', 'VFGBGJ', '04124523658', 'FGGG', 8, '2018-05-07 14:01:52'),
(25, 'E', '23223423', 'JOLLY ', 'DAVALILLO', 'DVGFHF', '3542355', 'FEFEFDE', 8, '2018-05-07 14:07:20'),
(26, 'E', '25586145', 'KAREN', 'FERRER', 'XCSCDCS', '6565656', 'ETYT', 8, '2018-05-07 14:10:03'),
(27, 'E', '45564656', 'YORVIN', 'BENITEZ', 'SDSFD', '565767 8', 'NHGNHK', 8, '2018-05-07 14:12:52'),
(28, 'E', '56575673', 'OLIANNY', 'GUARIATO', 'FGFHFH', '5656576', 'GFGFH', 8, '2018-05-07 14:18:29'),
(29, 'E', '53454553', 'NESTOR', 'MEDINA', 'DGDFBF', '35655', 'BNGH', 8, '2018-05-07 14:32:16'),
(30, 'E', '34343654', 'CREICY', 'TOVAR', 'XSDS', '65335', 'FDDVD', 8, '2018-05-07 14:47:11'),
(31, 'E', '53454987', 'NEYLA', 'LANDAETA', 'FDFF', '5665', 'FDF', 8, '2018-05-07 15:15:28'),
(32, 'E', '45465545', 'ZULMA', 'SANCHEZ', 'CSDFDS', '7668', 'FSDFD', 8, '2018-05-07 15:19:14'),
(33, 'E', '25456789', 'MARIELENA', 'MEDINA', 'CDSFE', '5586', 'HTH', 8, '2018-05-07 15:24:41'),
(34, 'E', '56678457', 'MARIA', 'GUDINO', 'SDFD', '6567', 'GRT', 8, '2018-05-07 15:34:02'),
(35, 'E', '1245786', 'FABIOLA', 'FERRER', 'GYGHJ', '54545', 'GHHJJ', 8, '2018-05-07 15:41:21'),
(36, 'E', '25256314', 'YEFERSON', 'RODRIGUEZ', 'GHHJH', '565655', 'NO TIENE', 8, '2018-05-07 17:09:55'),
(37, 'E', '16455654', 'EDWIN', 'OSORIO', 'HGHJ', '54565656', 'NO TIENE', 8, '2018-05-07 17:13:06'),
(38, 'E', '12562665', 'PENDIENTE', 'PENDIENTE', 'YHJHJHJ', '55666', 'NO TIENE', 8, '2018-05-07 17:16:22'),
(39, 'E', '45345678', 'MARIA', 'MEDINA', 'SDDDS', '454445', 'NO TIENE', 8, '2018-05-07 17:56:02'),
(40, 'E', '6343256', 'IDA', 'MARGARITA', 'FDGF', '2533', 'NO TIENE', 8, '2018-05-07 18:00:28'),
(41, 'E', '45678904', 'OSCAR', 'PINA', 'DSFSDF', '554535', 'NO TIENE', 8, '2018-05-07 18:04:31'),
(42, 'E', '456789054', 'ZULEIMA', 'SANCHEZ', 'DFFG', '2456543', 'NO TIENE', 8, '2018-05-07 18:07:45'),
(43, 'E', '58545623', 'NESTOR', 'MEDINA', 'WEDW', '56521', 'NO TIENE', 8, '2018-05-07 18:12:31'),
(44, 'E', '75344576', 'CARMEN_LUISA', 'HERNANDEZ', 'ETY', '535653', 'NO TIENE', 8, '2018-05-07 18:16:25'),
(45, 'E', '26556324', 'WLADIMIR', 'CEDENO', '3RR', '578572', 'NO TIENE', 8, '2018-05-07 18:39:04'),
(46, 'E', '34578931', 'JOSELIN', 'ZURITA', 'CDVDV', '2432532', 'DFSFD', 8, '2018-05-09 15:07:34'),
(47, 'E', '12345672', 'CREICY', 'TOVAR', 'CSDCD', '5332', 'DEFDF', 8, '2018-05-09 15:13:58'),
(48, 'E', '4567890', 'CARMEN', 'LUISA HERNANDEZ', 'DDFGF', '21354', 'FDFD', 8, '2018-05-09 15:32:55'),
(50, 'V', '18706068', 'OLYS FELIANNY', 'DIAS TERAN ', 'BISCUCUY EDO PORTUGUESA', '04121567269', 'FELIANNY_405@HOTMAIL.COM', 10, '2018-05-11 16:16:58'),
(51, 'E', '54566573', 'SAMANTHA', 'CASTELLANO', 'GFBHGF', '2235554', 'GFGFB', 8, '2018-05-14 13:34:50'),
(53, 'E', '2345678', 'YURISMA', 'GARCIA', 'FDFD', '24565', 'HGHT', 8, '2018-05-14 14:44:33'),
(55, 'E', '56789543', 'SUAREZ', 'SUAREZ', 'DFEF', '4242', 'FGDG', 8, '2018-05-14 15:03:53'),
(56, 'E', '55445453', 'CHRISTOPHER', 'JAIME', 'FDGVDF', '5543', 'RERE', 8, '2018-05-14 15:12:47'),
(57, 'E', '5678943', 'KARIANNA', 'COLINA', 'GFGF', '5465', 'CXVC', 8, '2018-05-14 15:30:05'),
(58, 'E', '64356789', 'JOSE', 'GONZALEZ', 'RGRG', '23345', 'HGHHG', 8, '2018-05-14 15:36:19'),
(59, 'E', '4567893', 'RAFAEL', 'TOVAR', 'FDGD', '24524', 'FGGFH', 8, '2018-05-14 15:39:05'),
(60, 'E', '56543567', 'DAYANA', 'ALVAREZ', 'FGGFF', '56533', 'FGDFG', 8, '2018-05-14 15:42:13'),
(61, 'E', '76543456', 'ROBELCY', 'MORRILLO', 'FDD', '24522', 'HGHGH', 8, '2018-05-14 15:47:57'),
(62, 'E', '76543546', 'INGRID', 'VERONICA', 'GFH', '254254', 'DFGVDFG', 8, '2018-05-14 15:58:31'),
(63, 'E', '675434567', 'DAVID', 'PINA', 'GFFHG', '2535', 'BBVBV', 8, '2018-05-14 16:01:02'),
(64, 'E', '87654567', 'SERGIO', 'JARAMILLO', 'SDFF', '24653', 'TRTR', 8, '2018-05-14 17:43:39'),
(65, 'E', '76545665', 'ANYELI', 'BALSEIRO', 'GGG', '2422', 'FGBB', 8, '2018-05-14 17:52:23'),
(66, 'E', '78656789', 'YISNEIDA', 'CHIRINOS', 'GFBF', '14242', 'GFGHF', 8, '2018-05-14 17:55:24'),
(67, 'E', '89654567', 'MIRIAN', 'PRATO', 'FDFD', '5646354', 'DSFF', 8, '2018-05-14 18:00:24'),
(68, 'E', '34456865', 'SOBEIDA', 'BOLIVAR', 'VGFFG', '54242', 'GFGFG', 8, '2018-05-14 18:10:04'),
(69, 'E', '53434567', 'SILA', 'GONZALEZ', 'FGG', '4254254', 'TRTRR', 8, '2018-05-14 18:16:45'),
(70, 'E', '233456789', 'JULLI', 'GOMEZ', 'SFDGF', '5654', 'GDFGF', 8, '2018-05-14 18:18:55'),
(71, 'E', '76362734', 'KARINA', 'TROMPIZ', 'gfgf', '25424', 'fdgfd', 8, '2018-05-14 21:27:37'),
(72, 'E', '65456789', 'ANGEL', 'PEREZ', 'HGTHGH', '323222', 'GFFGH', 8, '2018-05-18 13:20:57'),
(73, 'E', '345678765', 'WILLIAMS', 'CORONADO', 'SDFD', '21421', 'GFDGF', 8, '2018-05-18 13:29:10'),
(74, 'E', '65434567', 'JESUS', 'GONZALES', 'DFDF', '5655', 'FGVCFV', 8, '2018-05-18 13:42:01'),
(75, 'E', '34567890', 'VERUSKA', 'MEDINA', 'SSCS', '241424', 'DFSDF', 8, '2018-05-18 13:51:02'),
(76, 'E', '54567893', 'FRANK', 'SUAREZ', 'GFGD', '321354', 'FGHFH', 8, '2018-05-24 13:11:22'),
(77, 'E', '45678976', 'YERALDIN', 'NOGUERA', 'ERGTR', '35353', 'GDFGD', 8, '2018-05-24 13:19:15'),
(78, 'E', '34576876', 'NAYLA', 'LANDAETA', 'DGDFG', '54542', 'FDDD', 8, '2018-05-24 13:23:17'),
(79, 'E', '45678975', 'DANIEL', 'ALTUVE', 'FDGDF', '654656', 'HFGHF', 8, '2018-05-24 13:28:42'),
(80, 'E', '345566789', 'DAYANA', 'SANCHES', 'RDGFDG', '3213221', 'DFDFD', 8, '2018-05-24 13:43:59'),
(81, 'E', '435345', 'MARVAREZ', 'ROMERO', 'DFDSF', '53223', 'SDFDG', 8, '2018-05-24 13:54:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compras`
--

CREATE TABLE IF NOT EXISTS `tb_compras` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `valor_bolivares` double NOT NULL,
  `paiz` varchar(100) NOT NULL,
  `moneda_paiz` varchar(100) NOT NULL,
  `valor_tasa` double NOT NULL,
  `tasa_ofertar` double NOT NULL,
  `cant_moneda` int(20) NOT NULL,
  `id_banco_emisor` int(11) NOT NULL,
  `banco_receptor` varchar(100) NOT NULL,
  `n_referencia` int(50) NOT NULL,
  `id_representante` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra`),
  KEY `id_banco_emisor` (`id_banco_emisor`),
  KEY `id_representante` (`id_representante`,`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Volcado de datos para la tabla `tb_compras`
--

INSERT INTO `tb_compras` (`id_compra`, `valor_bolivares`, `paiz`, `moneda_paiz`, `valor_tasa`, `tasa_ofertar`, `cant_moneda`, `id_banco_emisor`, `banco_receptor`, `n_referencia`, `id_representante`, `id_cliente`, `fecha_compra`) VALUES
(2, 90000, 'Chile', 'Peso chileno', 595, 605, 15000, 0, '', 0, 8, 20, '2018-05-04 19:19:37'),
(3, 90000, 'Chile', 'Peso chileno', 595, 605, 4000, 0, '', 0, 8, 21, '2018-05-04 19:24:20'),
(4, 90000, 'Chile', 'Peso chileno', 595, 650, 10000, 0, '', 0, 8, 20, '2018-05-04 19:26:20'),
(5, 90000, 'Chile', 'Peso chileno', 595, 510, 10000, 0, '', 0, 8, 18, '2018-05-04 19:31:52'),
(6, 90000, 'Chile', 'Peso chileno', 595, 510, 10000, 0, '', 0, 8, 19, '2018-05-04 19:33:13'),
(7, 90000, 'Chile', 'Peso chileno', 595, 650, 10000, 0, '', 0, 8, 4, '2018-05-04 19:34:42'),
(8, 90000, 'Chile', 'Peso chileno', 595, 860, 2000, 0, '', 0, 8, 5, '2018-05-04 19:35:58'),
(12, 90000, 'Chile', 'Peso chileno', 595, 910, 20000, 0, '', 0, 8, 24, '2018-05-07 14:03:24'),
(13, 90000, 'Chile', 'Peso chileno', 595, 510, 20000, 0, '', 0, 8, 25, '2018-05-07 14:08:35'),
(14, 90000, 'Chile', 'Peso chileno', 595, 950, 3000, 0, '', 0, 8, 26, '2018-05-07 14:11:22'),
(15, 90000, 'Chile', 'Peso chileno', 595, 950, 3000, 0, '', 0, 8, 27, '2018-05-07 14:14:29'),
(17, 90000, 'Chile', 'Peso chileno', 595, 950, 15000, 0, '', 0, 8, 28, '2018-05-07 14:22:42'),
(19, 90000, 'Chile', 'Peso chileno', 595, 1020, 5000, 0, '', 0, 8, 9, '2018-05-07 14:27:40'),
(20, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 29, '2018-05-07 14:35:03'),
(22, 90000, 'Chile', 'Peso chileno', 595, 1020, 5000, 0, '', 0, 8, 10, '2018-05-07 14:39:42'),
(24, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 24, '2018-05-07 14:45:04'),
(28, 90000, 'Chile', 'Peso chileno', 595, 1150, 30000, 0, '', 0, 8, 13, '2018-05-07 15:02:55'),
(29, 90000, 'Chile', 'Peso chileno', 595, 1150, 20000, 0, '', 0, 8, 14, '2018-05-07 15:05:04'),
(31, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 31, '2018-05-07 15:17:41'),
(32, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 32, '2018-05-07 15:20:51'),
(33, 90000, 'Chile', 'Peso chileno', 595, 1000, 5000, 0, '', 0, 8, 23, '2018-05-07 15:22:05'),
(34, 90000, 'Chile', 'Peso chileno', 595, 1000, 5000, 0, '', 0, 8, 33, '2018-05-07 15:26:51'),
(35, 90000, 'Chile', 'Peso chileno', 595, 1000, 20000, 0, '', 0, 8, 13, '2018-05-07 15:31:42'),
(37, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 34, '2018-05-07 15:35:53'),
(38, 90000, 'Chile', 'Peso chileno', 595, 1100, 25000, 0, '', 0, 8, 20, '2018-05-07 15:37:19'),
(39, 90000, 'Chile', 'Peso chileno', 595, 1080, 25000, 0, '', 0, 8, 35, '2018-05-07 15:55:24'),
(42, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 15, '2018-05-07 16:01:01'),
(43, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 36, '2018-05-07 17:11:20'),
(44, 90000, 'Chile', 'Peso chileno', 613, 1100, 30000, 0, '', 0, 8, 37, '2018-05-07 17:15:02'),
(45, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 38, '2018-05-07 17:18:13'),
(46, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 39, '2018-05-07 17:57:38'),
(48, 90000, 'Chile', 'Peso chileno', 613, 1100, 10000, 0, '', 0, 8, 40, '2018-05-07 18:01:39'),
(49, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 41, '2018-05-07 18:05:49'),
(50, 90000, 'Chile', 'Peso chileno', 613, 1100, 10000, 0, '', 0, 8, 42, '2018-05-07 18:09:04'),
(51, 90000, 'Chile', 'Peso chileno', 613, 1100, 4000, 0, '', 0, 8, 15, '2018-05-07 18:10:37'),
(52, 90000, 'Chile', 'Peso chileno', 613, 1100, 126500, 0, '', 0, 8, 43, '2018-05-07 18:14:05'),
(53, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 44, '2018-05-07 18:27:05'),
(55, 90000, 'Chile', 'Peso chileno', 613, 1100, 20000, 0, '', 0, 8, 45, '2018-05-07 18:44:18'),
(56, 90000, 'Chile', 'Peso chileno', 595, 700, 25000, 0, '', 0, 8, 22, '2018-05-09 15:02:11'),
(57, 90000, 'Chile', 'Peso chileno', 595, 1020, 10000, 0, '', 0, 8, 46, '2018-05-09 15:09:02'),
(59, 90000, 'Chile', 'Peso chileno', 595, 1060, 10000, 0, '', 0, 8, 47, '2018-05-09 15:20:18'),
(60, 90000, 'Chile', 'Peso chileno', 595, 1150, 10000, 0, '', 0, 8, 12, '2018-05-09 15:24:08'),
(62, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 48, '2018-05-09 15:34:55'),
(63, 90000, 'Chile', 'Peso chileno', 610, 1100, 5000, 0, '', 0, 8, 48, '2018-05-09 17:40:18'),
(64, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 31, '2018-05-10 21:06:46'),
(65, 0, 'Chile', 'Peso chileno', 610, 1100, 3000, 8, '0134-BANESCO BANCO UNIVERSAL', 221223, 8, 51, '2018-05-14 14:05:27'),
(67, 0, 'Chile', 'Peso chileno', 610, 1100, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 4354, 8, 22, '2018-05-14 14:30:06'),
(70, 0, 'Chile', 'Peso chileno', 610, 1100, 5000, 8, '0134-BANESCO BANCO UNIVERSAL', 65656, 8, 53, '2018-05-14 14:46:23'),
(71, 0, 'Chile', 'Peso chileno', 610, 1000, 5000, 8, '0134-BANESCO BANCO UNIVERSAL', 656565, 8, 55, '2018-05-14 15:06:11'),
(72, 0, 'Chile', 'Peso chileno', 610, 1000, 6000, 8, '0134-BANESCO BANCO UNIVERSAL', 4545, 8, 18, '2018-05-14 15:10:19'),
(73, 0, 'Chile', 'Peso chileno', 610, 1000, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 5656, 8, 56, '2018-05-14 15:14:13'),
(74, 0, 'Chile', 'Peso chileno', 610, 1000, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 6577, 8, 28, '2018-05-14 15:16:19'),
(75, 0, 'Chile', 'Peso chileno', 610, 1000, 15000, 8, '0134-BANESCO BANCO UNIVERSAL', 3464565, 8, 57, '2018-05-14 15:33:04'),
(76, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 43545, 8, 58, '2018-05-14 15:37:51'),
(77, 0, 'Chile', 'Peso chileno', 610, 1000, 12000, 8, '0134-BANESCO BANCO UNIVERSAL', 65657, 8, 59, '2018-05-14 15:40:43'),
(78, 0, 'Chile', 'Peso chileno', 610, 1000, 30000, 8, '0134-BANESCO BANCO UNIVERSAL', 3455, 8, 60, '2018-05-14 15:43:26'),
(79, 0, 'Chile', 'Peso chileno', 610, 1000, 35000, 8, '0134-BANESCO BANCO UNIVERSAL', 565656, 8, 61, '2018-05-14 15:51:15'),
(80, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 56666, 8, 15, '2018-05-14 15:54:17'),
(82, 0, 'Chile', 'Peso chileno', 610, 1000, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 43534, 8, 62, '2018-05-14 15:59:47'),
(83, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 54646, 8, 63, '2018-05-14 16:02:02'),
(84, 0, 'Chile', 'Peso chileno', 610, 1100, 2000, 8, '0134-BANESCO BANCO UNIVERSAL', 5656, 8, 64, '2018-05-14 17:45:24'),
(85, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 45665, 8, 65, '2018-05-14 17:53:51'),
(86, 0, 'Chile', 'Peso chileno', 610, 1000, 30000, 8, '0134-BANESCO BANCO UNIVERSAL', 5657, 8, 66, '2018-05-14 17:57:25'),
(87, 0, 'Chile', 'Peso chileno', 610, 1000, 15000, 8, '0134-BANESCO BANCO UNIVERSAL', 89797, 8, 31, '2018-05-14 17:59:07'),
(88, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 5465765, 8, 67, '2018-05-14 18:01:55'),
(89, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 766878, 8, 39, '2018-05-14 18:04:52'),
(90, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 454546, 8, 12, '2018-05-14 18:06:58'),
(91, 0, 'Chile', 'Peso chileno', 610, 1000, 5000, 8, '0134-BANESCO BANCO UNIVERSAL', 87767, 8, 15, '2018-05-14 18:08:35'),
(92, 0, 'Chile', 'Peso chileno', 610, 1000, 8000, 8, '0134-BANESCO BANCO UNIVERSAL', 676767, 8, 68, '2018-05-14 18:12:37'),
(93, 0, 'Chile', 'Peso chileno', 610, 1000, 5000, 8, '0134-BANESCO BANCO UNIVERSAL', 54655, 8, 69, '2018-05-14 18:18:01'),
(94, 0, 'Chile', 'Peso chileno', 610, 1000, 2000, 8, '0134-BANESCO BANCO UNIVERSAL', 78787, 8, 70, '2018-05-14 18:20:40'),
(95, 0, 'Chile', 'Peso chileno', 610, 1000, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 45646, 8, 9, '2018-05-14 18:25:54'),
(97, 0, 'Chile', 'Peso chileno', 595, 1150, 3000, 8, '0134-BANESCO BANCO UNIVERSAL', 565, 8, 71, '2018-05-14 21:28:55'),
(98, 0, 'Chile', 'Peso chileno', 595, 950, 3000, 8, '0134-BANESCO BANCO UNIVERSAL', 65567, 8, 23, '2018-05-16 13:47:09'),
(99, 0, 'Chile', 'Peso chileno', 610, 1000, 15000, 8, '0134-BANESCO BANCO UNIVERSAL', 6565, 8, 35, '2018-05-18 13:11:05'),
(100, 0, 'Chile', 'Peso chileno', 610, 1000, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 89898, 8, 72, '2018-05-18 13:23:05'),
(101, 0, 'Chile', 'Peso chileno', 610, 1000, 2000, 8, '0134-BANESCO BANCO UNIVERSAL', 6555, 8, 73, '2018-05-18 13:30:37'),
(102, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 7676, 8, 74, '2018-05-18 13:46:00'),
(103, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 878, 8, 23, '2018-05-18 13:48:58'),
(104, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 8888, 8, 75, '2018-05-18 14:01:29'),
(105, 0, 'Chile', 'Peso chileno', 595, 605, 30000, 8, '0134-BANESCO BANCO UNIVERSAL', 7676, 8, 74, '2018-05-18 14:54:48'),
(106, 0, 'Chile', 'Peso chileno', 595, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 765768, 8, 74, '2018-05-18 15:05:31'),
(107, 0, 'Chile', 'Peso chileno', 595, 1100, 8000, 8, '0134-BANESCO BANCO UNIVERSAL', 676, 8, 74, '2018-05-18 15:07:03'),
(108, 0, 'Chile', 'Peso chileno', 610, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 676, 8, 74, '2018-05-18 15:09:32'),
(111, 0, 'Chile', 'Peso chileno', 595, 1000, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 76766, 8, 74, '2018-05-18 15:23:27'),
(112, 0, 'Chile', 'Peso chileno', 595, 1020, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 8766, 8, 74, '2018-05-18 15:31:22'),
(113, 0, 'Chile', 'Peso chileno', 595, 1020, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 7676, 8, 74, '2018-05-18 15:38:28'),
(114, 0, 'Chile', 'Peso chileno', 610, 1100, 30000, 8, '0134-BANESCO BANCO UNIVERSAL', 76464, 8, 13, '2018-05-23 19:26:18'),
(115, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 654768, 8, 76, '2018-05-24 13:13:23'),
(116, 0, 'Chile', 'Peso chileno', 610, 1100, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 45657, 8, 28, '2018-05-24 13:15:12'),
(117, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 78797, 8, 60, '2018-05-24 13:16:59'),
(118, 0, 'Chile', 'Peso chileno', 610, 1100, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 656574, 8, 77, '2018-05-24 13:20:55'),
(119, 0, 'Chile', 'Peso chileno', 610, 1100, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 456575, 8, 78, '2018-05-24 13:25:07'),
(120, 0, 'Chile', 'Peso chileno', 610, 1100, 4000, 8, '0134-BANESCO BANCO UNIVERSAL', 45657, 8, 58, '2018-05-24 13:26:34'),
(121, 0, 'Chile', 'Peso chileno', 610, 1100, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 575676, 8, 79, '2018-05-24 13:39:59'),
(122, 0, 'Chile', 'Peso chileno', 610, 1100, 91000, 8, '0134-BANESCO BANCO UNIVERSAL', 454546, 8, 80, '2018-05-24 13:46:42'),
(123, 0, 'Chile', 'Peso chileno', 610, 1300, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 4645657, 8, 24, '2018-05-24 13:49:59'),
(124, 0, 'Chile', 'Peso chileno', 610, 1300, 30000, 8, '0134-BANESCO BANCO UNIVERSAL', 435435, 8, 74, '2018-05-24 13:52:04'),
(125, 0, 'Chile', 'Peso chileno', 610, 1250, 10000, 8, '0134-BANESCO BANCO UNIVERSAL', 345346, 8, 81, '2018-05-24 13:56:40'),
(126, 0, 'Chile', 'Peso chileno', 610, 1250, 1000, 8, '0134-BANESCO BANCO UNIVERSAL', 675568, 8, 5, '2018-05-24 13:58:32'),
(127, 0, 'Chile', 'Peso chileno', 610, 1100, 20000, 8, '0134-BANESCO BANCO UNIVERSAL', 45367, 8, 14, '2018-05-24 14:05:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compra_dolar`
--

CREATE TABLE IF NOT EXISTS `tb_compra_dolar` (
  `id_compra_dolar` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(100) NOT NULL,
  `bolivares_dolar` double NOT NULL,
  `cant_moneda` double NOT NULL,
  `id_banco_emisor` int(11) NOT NULL,
  `banco_receptor` varchar(100) NOT NULL,
  `n_referencia` varchar(100) NOT NULL,
  `id_representante` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `tipo_pago` varchar(100) NOT NULL,
  `fecha_cd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra_dolar`),
  KEY `id_representante` (`id_representante`,`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tb_compra_dolar`
--

INSERT INTO `tb_compra_dolar` (`id_compra_dolar`, `pais`, `bolivares_dolar`, `cant_moneda`, `id_banco_emisor`, `banco_receptor`, `n_referencia`, `id_representante`, `id_cliente`, `tipo_pago`, `fecha_cd`) VALUES
(1, '', 830000, 1574, 10, '0134-BANESCO BANCO UNIVERSAL', '215121451', 9, 16, '', '2018-05-03 20:27:34'),
(2, '', 825000, 300, 10, '0134-BANESCO BANCO UNIVERSAL', '1508477037', 9, 16, '', '2018-05-03 20:31:41'),
(3, '', 833731, 67, 10, '0134-BANESCO BANCO UNIVERSAL', '1510233217', 9, 16, '', '2018-05-03 20:33:25'),
(4, 'Estados Unidos', 920, 200, 0, '--', '', 10, 50, 'Efectivo guardado', '2018-05-11 16:19:01'),
(5, 'Estados Unidos', 880, 1, 8, '0134-BANESCO BANCO UNIVERSAL', '1512173397', 9, 16, 'Transferencia', '2018-05-11 16:33:51'),
(6, 'Estados Unidos', 880, 1, 10, '0134-BANESCO BANCO UNIVERSAL', '1512173397', 9, 16, 'Transferencia', '2018-05-11 16:35:48'),
(7, 'Estados Unidos', 900, 1, 8, '0115-BANCO EXTERIOR C.A.', '151515454', 10, 50, 'Transferencia', '2018-05-11 18:18:36'),
(8, 'Estados Unidos', 920, 3, 8, '0171-BANCO ACTIVO BANCO COMERCIAL, C.A.', '5353535', 10, 50, 'Transferencia', '2018-05-11 18:20:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_dato_persona`
--

CREATE TABLE IF NOT EXISTS `tb_dato_persona` (
  `id_data_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(300) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `estado` varchar(400) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_data_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_desincorporar`
--

CREATE TABLE IF NOT EXISTS `tb_desincorporar` (
  `id_desincorporar` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `cod_especial` varchar(50) NOT NULL,
  `valor_bolivares` double NOT NULL,
  `paiz` varchar(100) NOT NULL,
  `moneda_paiz` varchar(100) NOT NULL,
  `valor_tasa` double NOT NULL,
  `tasa_ofertar` double NOT NULL,
  `cant_moneda` int(20) NOT NULL,
  `id_banco_emisor` int(11) NOT NULL,
  `banco_receptor` varchar(100) NOT NULL,
  `n_referencia` int(50) NOT NULL,
  `id_representante` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_compra_des` varchar(50) NOT NULL,
  `fecha_desin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_desincorporar`),
  KEY `id_banco_emisor` (`id_banco_emisor`),
  KEY `id_representante` (`id_representante`,`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_entrega`
--

CREATE TABLE IF NOT EXISTS `tb_entrega` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_dato_persona` int(11) NOT NULL,
  `estado` varchar(300) NOT NULL,
  `fecha_entrega` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_inventario`
--

CREATE TABLE IF NOT EXISTS `tb_inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `fecha_inventario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_inventario`),
  KEY `id_categoria` (`id_categoria`,`id_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_representante`
--

CREATE TABLE IF NOT EXISTS `tb_representante` (
  `id_representante` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(10) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `paiz` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `fecha_rep` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_representante`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tb_representante`
--

INSERT INTO `tb_representante` (`id_representante`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `paiz`, `telefono`, `correo`, `fecha_rep`) VALUES
(8, 'V', '18620559', 'NESTOR ALI ', 'MEDINA VIELMA', 'AV ALBERTO ARENAS ', 'Chile', '+56990186402', 'NAMV2210@GMAIL.COM', '2018-04-30 19:43:50'),
(9, 'V', '17510764', 'jhonman jose ', 'lopez zabedra', 'chabasquen av 17 de ', 'Venezuela', '0018589478545', 'lopezjhonman0719@gmail.com', '2018-05-03 20:20:09'),
(10, 'V', '18250169', 'emmanuel jose', 'lopez gonzalez', 'av 17 de diciembre', 'Venezuela', '04265586979', 'elopez.plasticpet@gmail.com', '2018-05-03 20:41:23'),
(11, '', '', '', '', '', '', '', '', '2018-05-10 17:48:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tasa_diaria`
--

CREATE TABLE IF NOT EXISTS `tb_tasa_diaria` (
  `id_tasa_diaria` int(11) NOT NULL AUTO_INCREMENT,
  `bolivares_dolar` double NOT NULL,
  `paiz` varchar(100) NOT NULL,
  `moneda_paiz` varchar(50) NOT NULL,
  `peso_dolar` double NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tasa_diaria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_tasa_diaria`
--

INSERT INTO `tb_tasa_diaria` (`id_tasa_diaria`, `bolivares_dolar`, `paiz`, `moneda_paiz`, `peso_dolar`, `fecha_reg`) VALUES
(1, 610, 'Chile', 'Peso chileno', 1100, '2018-05-14 13:51:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_unidad`
--

CREATE TABLE IF NOT EXISTS `tb_unidad` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `cant_uni` varchar(200) NOT NULL,
  `simbolo_uni` varchar(50) NOT NULL,
  `nombre_uni` varchar(255) NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE IF NOT EXISTS `tb_ventas` (
  `id_ventas` int(11) NOT NULL AUTO_INCREMENT,
  `valor_bolivares` double NOT NULL,
  `paiz` varchar(100) NOT NULL,
  `moneda_paiz` varchar(100) NOT NULL,
  `valor_tasa` double NOT NULL,
  `casa_cambio` varchar(100) NOT NULL,
  `porsentaje_casa` double NOT NULL,
  `cant_moneda` double NOT NULL,
  `tasa_cambio` double NOT NULL,
  `total_dolares` double NOT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD CONSTRAINT `tb_cliente_ibfk_1` FOREIGN KEY (`id_represetante`) REFERENCES `tb_representante` (`id_representante`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
