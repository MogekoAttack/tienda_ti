-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2018 a las 01:43:00
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID_empleado` int(8) NOT NULL,
  `ID_foto` int(8) NOT NULL,
  `ID_salario` int(8) NOT NULL,
  `nombres` varchar(64) COLLATE utf8_bin NOT NULL,
  `apellido_paterno` varchar(64) COLLATE utf8_bin NOT NULL,
  `apellido_materno` varchar(64) COLLATE utf8_bin NOT NULL,
  `tipo_empleado` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'cajero',
  `horario` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '12/24',
  `fecha_ingreso` int(11) NOT NULL,
  `fecha_egreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_prodcuto` int(8) NOT NULL,
  `nombre_largo` varchar(64) COLLATE utf8_bin NOT NULL,
  `nombre_corto` varchar(64) COLLATE utf8_bin NOT NULL,
  `cantidad` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `precio` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_proveedor` int(8) NOT NULL,
  `nombre` varchar(64) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(64) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(64) COLLATE utf8_bin NOT NULL,
  `numero_llegadas` varchar(64) COLLATE utf8_bin NOT NULL,
  `fecha_llegada` date NOT NULL,
  `id_productos` varchar(64) COLLATE utf8_bin NOT NULL,
  `cantidad_productos_total` varchar(64) COLLATE utf8_bin NOT NULL,
  `total_pagar` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salarios`
--

CREATE TABLE `salarios` (
  `ID_salario` int(8) NOT NULL,
  `ID_empleado` int(8) NOT NULL,
  `salario_hora` varchar(64) COLLATE utf8_bin NOT NULL,
  `horas` varchar(64) COLLATE utf8_bin NOT NULL,
  `salario_total` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_prodcuto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_proveedor`);

--
-- Indices de la tabla `salarios`
--
ALTER TABLE `salarios`
  ADD PRIMARY KEY (`ID_salario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `ID_empleado` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_prodcuto` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_proveedor` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salarios`
--
ALTER TABLE `salarios`
  MODIFY `ID_salario` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
