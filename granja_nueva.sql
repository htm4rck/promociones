-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-07-2019 a las 11:21:12
-- Versión del servidor: 5.6.43
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lagranja_gv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(5) NOT NULL,
  `nombres` varchar(40) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `int_tipo` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperarcontrasena`
--

CREATE TABLE `recuperarcontrasena` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuarios` int(10) UNSIGNED NOT NULL,
  `txt_nombre` varchar(15) NOT NULL,
  `token` varchar(64) NOT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cupon`
--

CREATE TABLE `tbl_cupon` (
  `id_cupon` int(10) UNSIGNED NOT NULL,
  `txt_val1` varchar(50) DEFAULT NULL,
  `txt_val2` varchar(50) DEFAULT NULL,
  `txt_val3` varchar(50) DEFAULT NULL,
  `txt_val4` varchar(50) DEFAULT NULL,
  `txt_val5` varchar(50) DEFAULT NULL,
  `txt_des1` text,
  `txt_des2` text,
  `txt_des3` text,
  `txt_des4` text,
  `txt_des5` text,
  `fecha_impi` date DEFAULT NULL,
  `fecha_impf` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuponsel`
--

CREATE TABLE `tbl_cuponsel` (
  `id_cuponsel` int(11) NOT NULL,
  `id_usuarios` int(11) DEFAULT NULL,
  `id_fotocupon` int(11) DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_encuesta`
--

CREATE TABLE `tbl_encuesta` (
  `id_encuesta` int(10) UNSIGNED NOT NULL,
  `txt_encuesta` varchar(150) DEFAULT NULL,
  `txt_fecha` varchar(30) DEFAULT NULL,
  `int_stado` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotocupon`
--

CREATE TABLE `tbl_fotocupon` (
  `id_fotocupon` int(10) UNSIGNED NOT NULL,
  `id_opc` int(10) UNSIGNED DEFAULT NULL,
  `txt_titulo` varchar(150) DEFAULT NULL,
  `txt_foto` varchar(150) DEFAULT NULL,
  `int_stado` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_galeria`
--

CREATE TABLE `tbl_galeria` (
  `id_galeria` int(5) NOT NULL,
  `txt_titulo` varchar(600) DEFAULT NULL,
  `txt_foto` varchar(100) DEFAULT NULL,
  `int_estado` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_imprimir`
--

CREATE TABLE `tbl_imprimir` (
  `id_imprimir` int(10) UNSIGNED NOT NULL,
  `id_cupon` int(10) UNSIGNED NOT NULL,
  `id_socio` int(10) UNSIGNED NOT NULL,
  `fecha_fimp1` date DEFAULT NULL,
  `fecha_fimp2` date DEFAULT NULL,
  `fecha_fimp3` date DEFAULT NULL,
  `fecha_fimp4` date DEFAULT NULL,
  `fecha_fimp5` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_imprimir0`
--

CREATE TABLE `tbl_imprimir0` (
  `id_imprimir` int(10) UNSIGNED NOT NULL,
  `id_cupon` int(10) UNSIGNED NOT NULL,
  `id_socio` int(10) UNSIGNED NOT NULL,
  `fecha_fimp1` date DEFAULT NULL,
  `fecha_fimp2` date DEFAULT NULL,
  `fecha_fimp3` date DEFAULT NULL,
  `fecha_fimp4` date DEFAULT NULL,
  `fecha_fimp5` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_log` int(10) UNSIGNED NOT NULL,
  `txt_ip` varchar(150) DEFAULT NULL,
  `txt_server` varchar(150) DEFAULT NULL,
  `txt_time` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_log2`
--

CREATE TABLE `tbl_log2` (
  `id_log` int(10) UNSIGNED NOT NULL,
  `txt_ip` varchar(150) DEFAULT NULL,
  `txt_server` varchar(150) DEFAULT NULL,
  `txt_time` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menbresia`
--

CREATE TABLE `tbl_menbresia` (
  `id_menbresia` int(10) UNSIGNED NOT NULL,
  `id_socio` int(10) UNSIGNED NOT NULL,
  `fecha_fnac` date DEFAULT NULL,
  `int_local` int(1) DEFAULT NULL,
  `txt_op` varchar(40) DEFAULT NULL,
  `fecha_fpago` date DEFAULT NULL,
  `int_stado` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_noticia_tc`
--

CREATE TABLE `tbl_noticia_tc` (
  `id_noticia_tc` int(10) UNSIGNED NOT NULL,
  `txt_titulo` varchar(200) DEFAULT NULL,
  `txt_fecha` varchar(20) DEFAULT NULL,
  `txt_resumen` text,
  `txt_descripcion` text,
  `txt_foto` varchar(100) DEFAULT NULL,
  `int_estado` int(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_respuesta`
--

CREATE TABLE `tbl_respuesta` (
  `id_respuesta` int(10) UNSIGNED NOT NULL,
  `id_encuesta` int(10) UNSIGNED DEFAULT NULL,
  `txt_respuesta` varchar(150) DEFAULT NULL,
  `txt_color` char(7) DEFAULT NULL,
  `int_votos` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_socio`
--

CREATE TABLE `tbl_socio` (
  `id_socio` int(10) UNSIGNED NOT NULL,
  `txt_codsocio` varchar(20) DEFAULT NULL,
  `txt_codtarjeta` varchar(50) DEFAULT NULL,
  `txt_apellidos` varchar(70) DEFAULT NULL,
  `txt_nombres` varchar(70) DEFAULT NULL,
  `txt_direccion` varchar(200) DEFAULT NULL,
  `txt_telefono` varchar(20) DEFAULT NULL,
  `txt_email` varchar(70) DEFAULT NULL,
  `txt_fechanac` varchar(12) DEFAULT NULL,
  `txt_cantptos` varchar(8) DEFAULT NULL,
  `txt_tipo` varchar(20) DEFAULT NULL,
  `txt_usuario` varchar(10) DEFAULT NULL,
  `txt_psw` varchar(10) DEFAULT NULL,
  `txt_fechareg` varchar(20) DEFAULT NULL,
  `int_stado` int(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuarios` int(10) UNSIGNED NOT NULL,
  `txt_nombre` varchar(100) DEFAULT NULL,
  `txt_apellido` varchar(100) DEFAULT NULL,
  `txt_fecnac` varchar(50) DEFAULT NULL,
  `txt_telefono` varchar(20) DEFAULT NULL,
  `txt_direccion` varchar(200) DEFAULT NULL,
  `txt_distrito` varchar(100) DEFAULT NULL,
  `txt_email` varchar(100) DEFAULT NULL,
  `txt_usuario` varchar(20) DEFAULT NULL,
  `txt_password` varchar(20) DEFAULT NULL,
  `id_opc` int(10) DEFAULT '0',
  `id_extreme` int(180) DEFAULT NULL,
  `clientdni` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'DNI del Usuario'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`),
  ADD UNIQUE KEY `id_administrador` (`id_administrador`),
  ADD KEY `id_administrador_2` (`id_administrador`);

--
-- Indices de la tabla `recuperarcontrasena`
--
ALTER TABLE `recuperarcontrasena`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `tbl_cupon`
--
ALTER TABLE `tbl_cupon`
  ADD PRIMARY KEY (`id_cupon`);

--
-- Indices de la tabla `tbl_cuponsel`
--
ALTER TABLE `tbl_cuponsel`
  ADD PRIMARY KEY (`id_cuponsel`);

--
-- Indices de la tabla `tbl_encuesta`
--
ALTER TABLE `tbl_encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `tbl_fotocupon`
--
ALTER TABLE `tbl_fotocupon`
  ADD PRIMARY KEY (`id_fotocupon`);

--
-- Indices de la tabla `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  ADD PRIMARY KEY (`id_galeria`),
  ADD UNIQUE KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `tbl_imprimir`
--
ALTER TABLE `tbl_imprimir`
  ADD PRIMARY KEY (`id_imprimir`,`id_cupon`,`id_socio`);

--
-- Indices de la tabla `tbl_imprimir0`
--
ALTER TABLE `tbl_imprimir0`
  ADD PRIMARY KEY (`id_imprimir`,`id_cupon`,`id_socio`);

--
-- Indices de la tabla `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `tbl_log2`
--
ALTER TABLE `tbl_log2`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `tbl_menbresia`
--
ALTER TABLE `tbl_menbresia`
  ADD PRIMARY KEY (`id_menbresia`,`id_socio`);

--
-- Indices de la tabla `tbl_noticia_tc`
--
ALTER TABLE `tbl_noticia_tc`
  ADD PRIMARY KEY (`id_noticia_tc`);

--
-- Indices de la tabla `tbl_respuesta`
--
ALTER TABLE `tbl_respuesta`
  ADD PRIMARY KEY (`id_respuesta`);

--
-- Indices de la tabla `tbl_socio`
--
ALTER TABLE `tbl_socio`
  ADD PRIMARY KEY (`id_socio`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recuperarcontrasena`
--
ALTER TABLE `recuperarcontrasena`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cupon`
--
ALTER TABLE `tbl_cupon`
  MODIFY `id_cupon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cuponsel`
--
ALTER TABLE `tbl_cuponsel`
  MODIFY `id_cuponsel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_encuesta`
--
ALTER TABLE `tbl_encuesta`
  MODIFY `id_encuesta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_fotocupon`
--
ALTER TABLE `tbl_fotocupon`
  MODIFY `id_fotocupon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  MODIFY `id_galeria` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_imprimir`
--
ALTER TABLE `tbl_imprimir`
  MODIFY `id_imprimir` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_imprimir0`
--
ALTER TABLE `tbl_imprimir0`
  MODIFY `id_imprimir` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_log2`
--
ALTER TABLE `tbl_log2`
  MODIFY `id_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_menbresia`
--
ALTER TABLE `tbl_menbresia`
  MODIFY `id_menbresia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_noticia_tc`
--
ALTER TABLE `tbl_noticia_tc`
  MODIFY `id_noticia_tc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_respuesta`
--
ALTER TABLE `tbl_respuesta`
  MODIFY `id_respuesta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_socio`
--
ALTER TABLE `tbl_socio`
  MODIFY `id_socio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
