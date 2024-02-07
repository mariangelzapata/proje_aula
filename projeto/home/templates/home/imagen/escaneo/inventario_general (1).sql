-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2018 a las 15:47:38
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario_general`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'cafe', 'lavado'),
(14, 'dscfa', 'sdsd'),
(19, 'dsdds', 'jhhm'),
(20, 'dsdds', 'jhhm'),
(21, '1111', '22222'),
(23, 'camb', 'mad'),
(24, 'camb', 'mad'),
(25, 'fdrf', 'gfh'),
(26, 'vvvv', 'vvv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_datos_personas`
--

CREATE TABLE IF NOT EXISTS `tb_datos_personas` (
  `id_datos_personas` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(300) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `estado` varchar(400) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_datos_personas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `tb_datos_personas`
--

INSERT INTO `tb_datos_personas` (`id_datos_personas`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `estado`, `fecha_registro`) VALUES
(1, 'V', '6565', 'gfhg', 'ghg', 'ghg', 'hgjg', '2018-05-17 20:11:49'),
(3, 'v', '56 5', 'fff', 'bbb', 'bbb', 'bbb', '2018-05-17 20:57:37'),
(7, 'v', 'v', 'v', 'v', 'v', 'v', '2018-05-21 13:45:01'),
(8, 'b', 'b', 'b', 'b', 'b', 'b', '2018-05-21 15:10:55'),
(12, 'V', '7667', 'gfdg', 'gfh', 'gdf', 'Anzoategui', '0000-00-00 00:00:00'),
(15, 'E', '67654345', 'maria', 'martines', 'hasdhajd', 'Barinas', '0000-00-00 00:00:00'),
(17, 'E', '6576767', 'yuyiuy', 'gjgh', 'ghj', 'Delta Amacuro', '0000-00-00 00:00:00'),
(18, '', '4', '650', '566', '', '', '0000-00-00 00:00:00'),
(19, 'E', '56565', 'pedro', 'prez', 'gh', 'Apure', '0000-00-00 00:00:00'),
(21, 'E', '54656', 'juan', 'perez', 'vgdf', 'Barinas', '0000-00-00 00:00:00'),
(22, 'E', '657', '999', '99', 'gfh', 'Bolivar', '0000-00-00 00:00:00'),
(23, 'V', '5465', 'try', 'gh', 'hfgh', 'Apure', '0000-00-00 00:00:00'),
(24, 'V', '5465', 'try', 'gh', 'hfgh', 'Apure', '0000-00-00 00:00:00'),
(25, 'V', '656', 'hjh', 'ghg', 'fhg', 'Barinas', '0000-00-00 00:00:00'),
(26, 'E', '76786', 'jkjk', 'gjh', 'hjgj', 'Anzoategui', '0000-00-00 00:00:00'),
(27, 'V', '2322222222', 'vghfhg', 'gfhfg', 'gggg', 'Anzoategui', '0000-00-00 00:00:00'),
(28, 'V', '2322222222', 'vghfhg', 'gfhfg', 'gggg', 'Anzoategui', '0000-00-00 00:00:00'),
(29, 'V', '51564', 'cgfghdfh', 'fghfgh', 'fghfg', 'Amazonas', '0000-00-00 00:00:00'),
(30, 'V', '5456546', 'fdgfg', 'dfgdfg', 'fgdg', 'Anzoategui', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_entrega`
--

INSERT INTO `tb_entrega` (`id_inventario`, `id_dato_persona`, `estado`, `fecha_entrega`) VALUES
(1, 4, '4', '2018-05-17 14:51:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tb_inventario`
--

INSERT INTO `tb_inventario` (`id_inventario`, `id_categoria`, `id_unidad`, `cantidad`, `precio`, `fecha_inventario`) VALUES
(1, 0, 0, 50, 4000, '2018-05-22 19:45:42'),
(3, 0, 0, 3, 3000, '0000-00-00 00:00:00'),
(4, 0, 0, 3, 3000, '0000-00-00 00:00:00'),
(5, 0, 0, 3, 3000, '0000-00-00 00:00:00'),
(7, 0, 0, 5, 2000, '0000-00-00 00:00:00'),
(8, 0, 0, 6, 6000, '0000-00-00 00:00:00'),
(9, 0, 0, 5, 8000, '0000-00-00 00:00:00'),
(10, 0, 0, 5, 4000, '0000-00-00 00:00:00'),
(11, 0, 0, 88, 88, '0000-00-00 00:00:00'),
(12, 1, 1, 45546, 500, '2018-05-23 17:01:13');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `tb_unidad`
--

INSERT INTO `tb_unidad` (`id_unidad`, `cant_uni`, `simbolo_uni`, `nombre_uni`) VALUES
(1, '60', 'kg', 'kilo'),
(6, '2', 'jjjjjjjj', 'cafe'),
(30, 'XAS', 'ASXA', 'SXAXS'),
(31, 'vbvn', 'bvnbvn', 'vbv'),
(32, 'sxs', 'zxzsx', 'zxz'),
(33, 'gfgf', 'gfg', 'gfgf'),
(34, 'fdd', 'sdfsd', 'fdf'),
(35, 'ghf', 'hg', 'gfhgf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
