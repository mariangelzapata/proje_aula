-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2018 a las 00:01:07
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tb_billetes`
--

INSERT INTO `tb_billetes` (`id_billetes`, `id_compra_dolar`, `denominacion`, `codigo`) VALUES
(1, 4, '100', '500.'),
(2, 4, '100', '500ghhj'),
(3, 5, '20', '545454'),
(4, 5, '10', '54545LOL4'),
(5, 5, '20', '54545LOL4JJ'),
(6, 5, '50', '54545445');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'cafe', 'calidad_la');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `telefono`, `correo`, `id_represetante`, `fecha_cli`) VALUES
(4, 'V', '19809572', 'GENESIS', 'FLORES', 'CHILE', '000', 'NO TIENE', 8, '2018-04-30 19:47:12'),
(5, 'V', '18003093', 'CARMEN', 'ORELLAN', 'CHILE', '0001', 'NO TIENE', 8, '2018-04-30 19:50:09'),
(6, 'V', '18956025', 'YORVIN', 'BENITEZ', 'CHILE', '0002', 'NO TIENE', 8, '2018-04-30 19:52:49'),
(7, 'V', '21666943', 'JESUS ', 'GONZALEZ', 'CHILE', '0003', 'NO TIENE', 8, '2018-04-30 19:53:52'),
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
(48, 'E', '4567890', 'CARMEN', 'LUISA HERNANDEZ', 'DDFGF', '21354', 'FDFD', 8, '2018-05-09 15:32:55');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `tb_compras`
--

INSERT INTO `tb_compras` (`id_compra`, `valor_bolivares`, `paiz`, `moneda_paiz`, `valor_tasa`, `tasa_ofertar`, `cant_moneda`, `id_banco_emisor`, `banco_receptor`, `n_referencia`, `id_representante`, `id_cliente`, `fecha_compra`) VALUES
(1, 90000, 'Chile', 'Peso chileno', 595, 605, 30000, 0, '', 0, 8, 7, '2018-05-04 19:14:15'),
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
(18, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 7, '2018-05-07 14:24:42'),
(19, 90000, 'Chile', 'Peso chileno', 595, 1020, 5000, 0, '', 0, 8, 9, '2018-05-07 14:27:40'),
(20, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 29, '2018-05-07 14:35:03'),
(21, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 7, '2018-05-07 14:37:31'),
(22, 90000, 'Chile', 'Peso chileno', 595, 1020, 5000, 0, '', 0, 8, 10, '2018-05-07 14:39:42'),
(23, 90000, 'Chile', 'Peso chileno', 595, 1020, 3000, 0, '', 0, 8, 11, '2018-05-07 14:42:11'),
(24, 90000, 'Chile', 'Peso chileno', 595, 1020, 20000, 0, '', 0, 8, 24, '2018-05-07 14:45:04'),
(28, 90000, 'Chile', 'Peso chileno', 595, 1150, 30000, 0, '', 0, 8, 13, '2018-05-07 15:02:55'),
(29, 90000, 'Chile', 'Peso chileno', 595, 1150, 20000, 0, '', 0, 8, 14, '2018-05-07 15:05:04'),
(30, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 7, '2018-05-07 15:06:26'),
(31, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 31, '2018-05-07 15:17:41'),
(32, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 32, '2018-05-07 15:20:51'),
(33, 90000, 'Chile', 'Peso chileno', 595, 1000, 5000, 0, '', 0, 8, 23, '2018-05-07 15:22:05'),
(34, 90000, 'Chile', 'Peso chileno', 595, 1000, 5000, 0, '', 0, 8, 33, '2018-05-07 15:26:51'),
(35, 90000, 'Chile', 'Peso chileno', 595, 1000, 20000, 0, '', 0, 8, 13, '2018-05-07 15:31:42'),
(37, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 34, '2018-05-07 15:35:53'),
(38, 90000, 'Chile', 'Peso chileno', 595, 1100, 25000, 0, '', 0, 8, 20, '2018-05-07 15:37:19'),
(39, 90000, 'Chile', 'Peso chileno', 595, 1080, 25000, 0, '', 0, 8, 35, '2018-05-07 15:55:24'),
(41, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 7, '2018-05-07 15:59:25'),
(42, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 15, '2018-05-07 16:01:01'),
(43, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 36, '2018-05-07 17:11:20'),
(44, 90000, 'Chile', 'Peso chileno', 613, 1100, 30000, 0, '', 0, 8, 37, '2018-05-07 17:15:02'),
(45, 90000, 'Chile', 'Peso chileno', 595, 1100, 10000, 0, '', 0, 8, 38, '2018-05-07 17:18:13'),
(46, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 39, '2018-05-07 17:57:38'),
(47, 90000, 'Chile', 'Peso chileno', 613, 1100, 8000, 0, '', 0, 8, 7, '2018-05-07 17:59:03'),
(48, 90000, 'Chile', 'Peso chileno', 613, 1100, 10000, 0, '', 0, 8, 40, '2018-05-07 18:01:39'),
(49, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 41, '2018-05-07 18:05:49'),
(50, 90000, 'Chile', 'Peso chileno', 613, 1100, 10000, 0, '', 0, 8, 42, '2018-05-07 18:09:04'),
(51, 90000, 'Chile', 'Peso chileno', 613, 1100, 4000, 0, '', 0, 8, 15, '2018-05-07 18:10:37'),
(52, 90000, 'Chile', 'Peso chileno', 613, 1100, 127000, 0, '', 0, 8, 43, '2018-05-07 18:14:05'),
(53, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 44, '2018-05-07 18:27:05'),
(55, 90000, 'Chile', 'Peso chileno', 613, 1100, 20000, 0, '', 0, 8, 45, '2018-05-07 18:44:18'),
(56, 90000, 'Chile', 'Peso chileno', 595, 700, 25000, 0, '', 0, 8, 22, '2018-05-09 15:02:11'),
(57, 90000, 'Chile', 'Peso chileno', 595, 1020, 10000, 0, '', 0, 8, 46, '2018-05-09 15:09:02'),
(59, 90000, 'Chile', 'Peso chileno', 595, 1060, 10000, 0, '', 0, 8, 47, '2018-05-09 15:20:18'),
(60, 90000, 'Chile', 'Peso chileno', 595, 1150, 10000, 0, '', 0, 8, 12, '2018-05-09 15:24:08'),
(62, 90000, 'Chile', 'Peso chileno', 613, 1100, 5000, 0, '', 0, 8, 48, '2018-05-09 15:34:55'),
(63, 90000, 'Chile', 'Peso chileno', 610, 1100, 5000, 0, '', 0, 8, 48, '2018-05-09 17:40:18'),
(64, 90000, 'Chile', 'Peso chileno', 595, 1000, 10000, 0, '', 0, 8, 31, '2018-05-10 21:06:46');

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
  `tipo_compra` varchar(100) NOT NULL,
  `fecha_cd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra_dolar`),
  KEY `id_representante` (`id_representante`,`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tb_compra_dolar`
--

INSERT INTO `tb_compra_dolar` (`id_compra_dolar`, `pais`, `bolivares_dolar`, `cant_moneda`, `id_banco_emisor`, `banco_receptor`, `n_referencia`, `id_representante`, `id_cliente`, `tipo_compra`, `fecha_cd`) VALUES
(1, 'Estados Unidos', 830000, 1574, 10, '0134-BANESCO BANCO UNIVERSAL', '215121451', 9, 16, 'Efectivo', '2018-05-03 20:27:34'),
(2, 'Estados Unidos', 825000, 300, 10, '0134-BANESCO BANCO UNIVERSAL', '1508477037', 9, 16, 'Efectivo', '2018-05-03 20:31:41'),
(3, 'Estados Unidos', 833731, 67, 10, '0134-BANESCO BANCO UNIVERSAL', '1510233217', 9, 16, 'Efectivo', '2018-05-03 20:33:25'),
(4, 'Estados Unidos', 900, 200, 0, '--', '', 8, 4, 'Efectivo guardado', '2018-05-10 23:31:06'),
(5, 'Estados Unidos', 900, 100, 0, '--', '', 8, 4, 'Efectivo guardado', '2018-05-10 23:39:07'),
(6, 'Estados Unidos', 900, 5, 8, '0171-BANCO ACTIVO BANCO COMERCIAL, C.A.', '500', 8, 4, 'Transferencia', '2018-05-11 17:50:34'),
(7, '', 0, 0, 0, '', '', 0, 0, '', '2018-05-11 18:39:33'),
(8, '', 0, 0, 0, '', '', 0, 0, '', '2018-05-11 18:49:34'),
(9, 'Estados Unidos', 920, 10, 0, '--', '', 9, 16, 'Efectivo', '2018-05-11 18:50:27'),
(10, 'Estados Unidos', 900, 600, 8, '0172-BANCAMIGA BANCO MICROFINANCIERO, C.A.', '152535', 8, 4, 'Efectivo', '2018-05-11 18:51:45'),
(11, 'Estados Unidos', 920000, 10000, 8, '0196-ABN AMRO BANK', '0151213', 8, 5, 'Transferencia', '2018-05-11 18:59:04');

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
-- Estructura de tabla para la tabla `tb_desincorporar_dolar`
--

CREATE TABLE IF NOT EXISTS `tb_desincorporar_dolar` (
  `id_desincorporar_dolar` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra_dolar` int(11) NOT NULL,
  `cod_especial` varchar(50) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `bolivares_dolar` double NOT NULL,
  `cant_moneda` double NOT NULL,
  `id_banco_emisor` int(11) NOT NULL,
  `banco_receptor` varchar(100) NOT NULL,
  `n_referencia` varchar(100) NOT NULL,
  `id_representante` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `tipo_compra` varchar(100) NOT NULL,
  `fecha_cd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_desincorporar_dolar`),
  KEY `id_representante` (`id_representante`,`id_cliente`),
  KEY `id_compra_dolar` (`id_compra_dolar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
(9, 'V', '17510764', 'jhonman jose', 'lopez zabedra', 'chabasquen av 17 de ', 'Venezuela', '0018589478545', 'lopezjhonman0719@gmail.com', '2018-05-03 20:20:09'),
(10, 'V', '18250169', 'emmanuel jose', 'lopez gonzalez', 'av 17 de diciembre', 'Venezuela', '04265586979', 'elopez.plasticpet@gmail.com', '2018-05-03 20:41:23');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tb_tasa_diaria`
--

INSERT INTO `tb_tasa_diaria` (`id_tasa_diaria`, `bolivares_dolar`, `paiz`, `moneda_paiz`, `peso_dolar`, `fecha_reg`) VALUES
(1, 520000, 'Chile', 'Peso chileno', 320, '2018-05-10 23:02:13'),
(2, 582, 'Chile', 'Peso chileno', 525, '2018-05-10 23:02:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`id_ventas`, `paiz`, `moneda_paiz`, `valor_tasa`, `casa_cambio`, `porsentaje_casa`, `cant_moneda`, `tasa_cambio`, `total_dolares`, `fecha_venta`) VALUES
(2, 'Chile', 'Peso chileno', 520, 'coloso', 10, 10000, 572, 17.482517482517, '2018-05-11 15:47:56'),
(3, 'Chile', 'Peso chileno', 520, 'gfhfgh', 10, 10000, 572, 17.482517482517, '2018-05-11 15:59:35'),
(4, 'Chile', 'Peso chileno', 520, 'dfgdfg', 10, 4000, 572, 6.993006993007, '2018-05-11 16:01:48');

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
