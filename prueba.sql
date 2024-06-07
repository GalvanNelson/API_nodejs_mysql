-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 21:37:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth`
--

INSERT INTO `auth` (`id`, `usuario`, `password`) VALUES
(7, 'felipe', '$2b$05$huiVq1..oj3tO3hrFw4HqehVSysLTEq5zCdCfeeUAydhjOgV1XqQW'),
(8, 'fabian2', '$2b$05$HMzGmh/JX.62A3JKXedo/e1ksXuNb6pyNwOYQXs0dzCL1pplOzaGC'),
(9, 'fabian2', '$2b$05$/cx6FSeD.EtySJtm5fwe2OuGOz3OIBdKQlFPypsXqKpG83gOUa0wm'),
(10, 'fabian2', '$2b$05$6ul/mSpaPS.1J91/STkZFu1gruTaHibP1CUeL3N9Ma2kdPXAlEsNi'),
(11, 'fabian2', '$2b$05$QOHtSA9w77P8WuZq.S4y8.iJwAvF.iiqJFi9UwWN0C1tC/HKOlREK'),
(12, 'fabian2', '$2b$05$.s5Zd3ybDVLP4LUuUFxUeu0fpFHVrS8B4JPJtMAJKLAHxYbWGBMEO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `edad` varchar(20) NOT NULL,
  `profesion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `edad`, `profesion`) VALUES
(1, 'alias', '20', 'ingeniero'),
(2, 'alias', '20', 'ingeniero'),
(3, 'alias', '20', 'ingeniero'),
(4, 'alias', '20', 'ingeniero'),
(5, 'alias', '15', 'ingeniero'),
(6, 'alias', '15', 'ingeniero'),
(7, 'alias', '15', 'ingeniero'),
(8, 'alias', '15', 'ingeniero'),
(9, 'alias', '15', 'ingeniero'),
(10, 'alias', '20', 'ingeniero'),
(11, 'alias', '15', 'ingeniero'),
(12, 'matrias', '15', 'ingeniero'),
(13, 'insolente', '15', 'ingeniero'),
(14, 'insolente', '15', 'ingeniero'),
(30, 'hola asd', '20', 'ingeniero'),
(31, 'insolente', '15', 'ingeniero'),
(32, 'insolente', '15', 'ingeniero'),
(33, 'soy antiguo aqui', '20', 'ingeniero'),
(34, 'soy nuevo aqui', '15', 'ingeniero'),
(35, 'soy nuevo aqui', '15', 'ingeniero'),
(36, 'soy nuevo aqui', '15', 'ingeniero'),
(37, 'soy nuevo aqui', '15', 'ingeniero'),
(38, 'soy nuevo aqui', '15', 'ingeniero'),
(39, 'soy nuevo aqui', '15', 'ingeniero'),
(40, 'soy nuevo aqui', '15', 'ingeniero'),
(41, 'soy nuevo aqui', '15', 'ingeniero'),
(42, 'soy nuevo aqui', '15', 'ingeniero'),
(43, 'soy nuevo aqui', '15', 'ingeniero'),
(44, 'soy nuevo aqui', '15', 'ingeniero'),
(45, 'soy nuevo aqui', '15', 'ingeniero'),
(46, 'soy nuevo aqui', '15', 'ingeniero'),
(47, 'soy nuevo aqui', '15', 'ingeniero'),
(48, 'soy virgen aqui', '20', 'ingeniero'),
(49, 'soy nuevo aqui', '15', 'ingeniero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `activo`) VALUES
(7, 'fabian', 1),
(8, 'fabian2', 1),
(9, 'fabian2', 1),
(10, 'fabian2', 1),
(11, 'fabian2', 1),
(12, 'fabian2', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
