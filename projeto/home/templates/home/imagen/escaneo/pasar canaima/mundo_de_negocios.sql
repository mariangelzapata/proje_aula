-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2018 a las 23:50:56
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mundo_de_negocios`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `tb_bancos`
--

INSERT INTO `tb_bancos` (`id_bancos`, `nombre_bancos`, `numero_cuenta`, `tipo_cuenta`, `nacionalidad`, `ced_propietario`, `propietario`) VALUES
(8, 'BANCO BANESCO', '01340414304141012365', 'Corriente', 'J', 400360218, 'PLASTIC PET CA'),
(9, 'BANCO PROVINCIAL BBVA', '01080389680100030892', 'Corriente', 'J', 400360218, 'PLASTIC PET CA'),
(11, 'BANCO PROVINCIAL BBVA', '01080389610100010123', 'Corriente', 'V', 18250169, 'EMMANUEL JOSE LOPEZ'),
(12, 'Banesco', '111111111111111111111111111111', 'corrriente', 'V', 1555, 'dhashd'),
(14, 'hyuhy', '55255', 'Corriente', 'V', 555, 'jkjkj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bitacora`
--

CREATE TABLE IF NOT EXISTS `tb_bitacora` (
  `id_Bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `desc_bitacora` varchar(200) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `fecha_bitacora` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_Bitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` varchar(200) NOT NULL,
  `rif_ced` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `empresa` varchar(400) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono_movil` varchar(100) NOT NULL,
  `telefono_casa` varchar(200) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nacionalidad`, `rif_ced`, `nombre`, `apellido`, `empresa`, `correo`, `telefono_movil`, `telefono_casa`, `direccion`, `usuario`, `clave`) VALUES
(1, 'jy', 0, 'jyj', 'jy', 'jyy', 'yjy', '56', 'yu', 'yty', 'yty', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_control_acceso`
--

CREATE TABLE IF NOT EXISTS `tb_control_acceso` (
  `id_control_acceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `rango` varchar(100) NOT NULL,
  `nivel_acceso` varchar(200) NOT NULL,
  `conexion` varchar(100) NOT NULL,
  `intento` varchar(200) NOT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_control_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_pago`
--

CREATE TABLE IF NOT EXISTS `tb_detalle_pago` (
  `id_detalle_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(200) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `cod_ref` varchar(400) NOT NULL,
  `monto_pago` varchar(400) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_detalle_pedido` (
  `id_detalle_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` varchar(400) NOT NULL,
  `precio` varchar(200) NOT NULL,
  PRIMARY KEY (`id_detalle_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_empresa`
--

CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rif` varchar(50) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `vision` varchar(400) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `id_imagen` varchar(100) NOT NULL,
  `color1` int(11) NOT NULL,
  `color2` int(11) NOT NULL,
  `color3` int(11) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_imagen`
--

CREATE TABLE IF NOT EXISTS `tb_imagen` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_impreso_producto` varchar(200) NOT NULL,
  `nombre_imagen` varchar(200) NOT NULL,
  PRIMARY KEY (`id_imagen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_transporte` int(11) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `modo_pago` double NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE IF NOT EXISTS `tb_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_imag` int(11) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `precio` double NOT NULL,
  `iva` double NOT NULL,
  `estado_precio` varchar(400) NOT NULL,
  `estado_producto` varchar(400) NOT NULL,
  `comentario` varchar(400) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `color` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `tb_transporte`
--

INSERT INTO `tb_transporte` (`id_transporte`, `nacionalidad`, `cedula`, `nombre_apellido`, `tipo_vehiculo`, `n_placa`, `color`, `id_usuario`) VALUES
(2, 'V', 22222, 'dsadsd', 'asdda', 'asdasd', '', 0),
(3, 'V', 22222222, 'pedro perez', 'murcielago', '123-npg', '', 0),
(4, 'V', 33333333, 'mario', 'chebrolet', '123-456', '', 0),
(5, 'V', 11111111, 'maria canelon', 'for', '456-lkj', '', 0),
(6, 'V', 11111111, 'francisco', 'for', '789-klj', '', 37),
(7, 'V', 11111111, 'cdsfsdf', 'sdfsdf', 'sdfsdfsdf', '', 37),
(8, 'E', 22222111, 'deddd', 'dddd', 'dddd', '', 34),
(9, 'V', 11111111, 'dddd', 'dddd', '123qwe', 'verde', 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nacionalidad` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `ci_rif` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'usuario.jpeg',
  `rango` int(11) NOT NULL,
  `conexion` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `intentos` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `ci_rif` (`ci_rif`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nacionalidad`, `ci_rif`, `nombre`, `apellido`, `cargo`, `direccion`, `telefono`, `email`, `usuario`, `clave`, `imagen`, `rango`, `conexion`, `intentos`, `estado`) VALUES
(38, 'V', 22095923, 'mariangel', 'zapata', 'ing informatica', '17 de diciembre', '04165561121', 'mariangelzapata38@gmail.com', 'mariangel', '81dc9bdb52d04dc20036dbd8313ed055', 'usuario.jpeg', 1, 'ON', 0, 1),
(39, 'V', 22222222, 'marcos', 'perez', 'secretario', 'sss', '46455454', 'ssdfsdf', 'secretario', '81dc9bdb52d04dc20036dbd8313ed055', 'usuario.jpeg', 2, 'off', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
