-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2023 a las 18:04:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_unitic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` date DEFAULT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombres`, `apellidos`, `email`, `foto`, `password`, `created_at`, `update_at`, `roles_id`) VALUES
(1, 'Brian', 'Lozano', 'blozanoguar@uniminuto.edu.co', NULL, '1111', '2023-05-25 18:20:40', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrantes`
--

CREATE TABLE `integrantes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `cvlac` varchar(100) DEFAULT NULL,
  `linkedln` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `update_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `integrantes`
--

INSERT INTO `integrantes` (`id`, `nombres`, `apellidos`, `email`, `foto`, `cvlac`, `linkedln`, `fecha_ingreso`, `fecha_retiro`, `roles_id`, `estado`, `update_at`, `created_at`) VALUES
(1, 'brian', 'lozano guarin', 'lozanodavid10@hotmail.com', 'IMG_20220930_072210.jpg', 'scsdcsdfd', 'dvsdvsdf', '2023-05-03', '0000-00-00', 2, 1, NULL, '2023-05-26 04:14:40'),
(2, 'Edwin Reinel ', 'perdomo Sedano ', 'blozanoguar@uniminuto.edu.co', '20170522_212128__1646453399_190.109.9.108.jpg', 'nfgbfgn', 'lkl.jk', '2023-05-03', '0000-00-00', 2, 1, NULL, '2023-05-25 23:14:27'),
(3, 'brian', 'juana', 'lozanodavid10@hotmail.com', 'estudiante1.jpg', 'sxascS', 'bfgvdfvdfvds', '2023-05-02', '0000-00-00', 2, 1, NULL, '2023-05-25 23:14:32'),
(4, 'brian', 'lozano', 'lozanodavid10@hotmail.com', 'estudiante3.jpg', 'bgfbfgnf', 'ngfnbdfg', '2023-05-02', NULL, 2, 1, NULL, '2023-05-25 15:16:36'),
(5, 'gdgbdf', 'ghgfhfgh', 'admin@sistematiozacion.com', 'integrante-foto2.jpg', 'htgftgrg', 'csdcsd', '2023-05-02', '0000-00-00', 2, 1, NULL, '2023-05-26 04:11:15'),
(6, 'leandro', 'cubillos', 'lozanodavid10@hotmail.com', 'estudiante1.jpg', 'bgfbfgnf', 'ngfnbdfg', '2023-05-03', NULL, 2, 1, NULL, '2023-05-25 15:54:34'),
(7, 'dcscs', 'dscsdvdsfv', 'lozanodavid10@hotmail.com', 'estudiante3.jpg', 'zxczsdvdv', 'vdcsdc', '2023-05-03', NULL, 2, 1, NULL, '2023-05-25 18:25:47'),
(8, 'camila', 'andrea', 'lozanodavid10@hotmail.com', 'estudiante1.jpg', 'bgfbfgnf', 'ngfnbdfg', '2023-05-02', '0000-00-00', 2, 2, NULL, '2023-05-25 19:28:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

CREATE TABLE `portafolio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `programa` varchar(100) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `archivo` varchar(250) NOT NULL,
  `integrantes` int(11) DEFAULT NULL,
  `administrador` int(11) DEFAULT NULL,
  `tipo_trabajo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `titulo`, `created_at`) VALUES
(1, 'administrador', '2023-04-30 17:53:54'),
(2, 'estudiante', '2023-04-30 17:53:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_trabajo`
--

CREATE TABLE `tipo_trabajo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_trabajo`
--

INSERT INTO `tipo_trabajo` (`id`, `titulo`) VALUES
(1, 'proyectos'),
(2, 'monografias'),
(3, 'productos'),
(4, 'integrantes'),
(5, 'desarrollo'),
(6, 'articulos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `integrantes`
--
ALTER TABLE `integrantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_id` (`roles_id`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `integrantes` (`integrantes`),
  ADD KEY `administrador` (`administrador`),
  ADD KEY `tipo_trabajo` (`tipo_trabajo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `integrantes`
--
ALTER TABLE `integrantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_trabajo`
--
ALTER TABLE `tipo_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `integrantes`
--
ALTER TABLE `integrantes`
  ADD CONSTRAINT `integrantes_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `integrantes_ibfk_2` FOREIGN KEY (`estado`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD CONSTRAINT `portafolio_ibfk_1` FOREIGN KEY (`integrantes`) REFERENCES `integrantes` (`id`),
  ADD CONSTRAINT `portafolio_ibfk_2` FOREIGN KEY (`administrador`) REFERENCES `administrador` (`id`),
  ADD CONSTRAINT `portafolio_ibfk_3` FOREIGN KEY (`tipo_trabajo`) REFERENCES `tipo_trabajo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
