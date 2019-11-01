-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2019 a las 15:09:50
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_actividad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(50) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descp` varchar(150) NOT NULL,
  `estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `cod_usuariofk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `fecha`, `hora`, `cod_usuariofk`) VALUES
(1, '2018-11-04', '20:05:04.023070', 5),
(6, '2018-12-06', '22:22:00.000000', 3),
(7, '2018-12-06', '23:12:00.000000', 3),
(8, '2018-12-06', '23:18:00.000000', 3),
(9, '2018-12-06', '23:19:00.000000', 3),
(10, '2018-12-06', '23:22:00.000000', 3),
(11, '2018-12-06', '23:45:00.000000', 3),
(12, '2018-12-06', '23:50:00.000000', 3),
(13, '2018-12-06', '23:55:00.000000', 3),
(14, '2018-12-06', '01:51:00.000000', 3),
(15, '2018-12-06', '02:09:00.000000', 3),
(16, '2019-02-21', '23:48:00.000000', 3),
(17, '2019-02-21', '00:02:00.000000', 3),
(18, '2019-02-21', '00:26:00.000000', 3),
(19, '2019-02-21', '00:30:00.000000', 3),
(20, '2019-02-21', '00:41:00.000000', 3),
(21, '2019-02-21', '00:45:00.000000', 3),
(22, '2019-02-21', '01:49:00.000000', 3),
(23, '2019-02-21', '01:52:00.000000', 3),
(24, '2019-02-22', '00:54:00.000000', 3),
(25, '2019-03-06', '02:57:00.000000', 3),
(26, '2019-03-07', '12:53:00.000000', 3),
(27, '2019-03-13', '18:23:00.000000', 3),
(28, '2019-04-27', '03:22:00.000000', 3),
(29, '2019-05-17', '20:00:00.000000', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `cod_usuariofk` int(11) NOT NULL,
  `cod_rolfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`cod_usuariofk`, `cod_rolfk`) VALUES
(1, 1),
(3, 1),
(2, 1),
(4, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 3),
(9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(150) NOT NULL,
  `nom_pr` varchar(150) NOT NULL,
  `cat_pr` varchar(150) NOT NULL,
  `descp_pr` varchar(300) NOT NULL,
  `id_cat_fk_pr` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo_rol` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `modulo` varchar(25) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `codigo_rol`, `modulo`) VALUES
(1, 'estudiante', 'e1', 'm1'),
(2, 'empleador', 'em1', 'm2'),
(3, 'admin', 'ad1', 'mad1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pass_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `identificacion_usuario` int(11) NOT NULL,
  `sexo_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_usuario` int(11) NOT NULL,
  `estado_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `foto_usuario` varchar(25) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `pass_usuario`, `nombre_usuario`, `apellido_usuario`, `identificacion_usuario`, `sexo_usuario`, `telefono_usuario`, `estado_usuario`, `foto_usuario`) VALUES
(1, 'moneyonlineglobal@gmail.c', '6', 'Anyi', '', 0, '', 0, 'registrado', ''),
(2, 'neyis68@hotmail.com', '9', 'Edwin', '', 0, '', 0, 'registrado', ''),
(3, 'ana@email.com', '5', 'Ana', '', 9546788, '', 9875433, 'registrado', ''),
(4, 'qe@gmail.com', '4', 'qwe', '', 0, '', 0, 'registrado', ''),
(5, 'empleador@email.com', '1', 'empleador', '', 4325788, '', 876588666, 'registrado', ''),
(6, 'estu@email.com', '1', 'usuarioe', '', 0, '', 0, 'registrado', ''),
(7, 'ena@email.com', '1', 'enyi', '', 0, '', 0, 'registrado', ''),
(8, 'usuario.admi@sipuedeshazlo.com', 'admin', 'administrador', '', 7865788, '', 0, '', ''),
(9, 'rattman.c@gmail.com', '5', 'Andres Ayala', '', 0, '', 0, 'registrado', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `cod_usuariofk` (`cod_usuariofk`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD KEY `cod_rolfk` (`cod_rolfk`),
  ADD KEY `cod_usuariofk` (`cod_usuariofk`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat_fk_pr` (`id_cat_fk_pr`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cod_usuariofk`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
