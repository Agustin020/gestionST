-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2022 a las 19:25:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestionst`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`codigo`, `nombre`, `descripcion`) VALUES
(1000, 'Secretaría Privada y Protocolo', NULL),
(1001, 'Dirección de Asuntos Legales', NULL),
(1002, 'Dirección de Control de Gestión', NULL),
(1003, 'Dirección de Comunicación y Prensa', NULL),
(1004, 'Juzgados de Tránsito', NULL),
(2000, 'Dirección de Rentas', NULL),
(2001, 'Dirección de Compras y Suministros', NULL),
(2002, 'Dirección de Comercio e Industria', NULL),
(2003, 'Dirección de Administración y Recursos Humanos', NULL),
(2004, 'Tesorería Municipal', NULL),
(2005, 'Contaduría General', NULL),
(2006, 'Finanzas y Presupuesto', NULL),
(3000, 'Dirección de Obras Municipales', NULL),
(3001, 'Dirección de Obras Privadas', NULL),
(3002, 'Dirección de Servicios Públicos', NULL),
(3003, 'Dirección de Espacios Verdes', NULL),
(3004, 'Dirección de Planificación', NULL),
(3005, 'Dirección de Vivienda', NULL),
(3006, 'Parque Automotor', NULL),
(3007, 'Dirección de Obras por Administración', NULL),
(3008, 'Dirección de Ambiente y Energía', NULL),
(3009, 'Dirección de Catastro', NULL),
(4000, 'Dirección de Delegaciones Municipales', NULL),
(4001, 'Dirección de Educación y Deportes', NULL),
(4002, 'Dirección de Desarrollo Económico', NULL),
(4003, 'Dirección de Cultura', NULL),
(4004, 'Dirección de Servicios Comunitarios, y Seguridad Vial', NULL),
(4005, 'Dirección de Sistemas', NULL),
(4006, 'Dirección de Desarrollo Social', NULL),
(4007, 'Dirección de Salud', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadotarea`
--

CREATE TABLE `estadotarea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadotarea`
--

INSERT INTO `estadotarea` (`id`, `nombre`) VALUES
(1, 'Pendiente'),
(2, 'En Progreso'),
(3, 'Completo'),
(4, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos`
--

CREATE TABLE `motivos` (
  `id` int(11) NOT NULL,
  `motivos` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `motivos`
--

INSERT INTO `motivos` (`id`, `motivos`) VALUES
(1, 'Configuración de impresora'),
(2, 'Problema de impresora'),
(3, 'Configuración de PC'),
(4, 'Problema con la PC'),
(5, 'Instalación de programas en PC'),
(6, 'Problema con un programa de la PC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `nroArreglo` int(11) NOT NULL,
  `id_motivos` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `solucion` varchar(500) DEFAULT NULL,
  `fechaProblema` datetime DEFAULT NULL,
  `fechaSolucion` datetime DEFAULT NULL,
  `estadoTarea_id` int(11) DEFAULT NULL,
  `area_codigo` int(11) DEFAULT NULL,
  `usuario_dni` int(11) DEFAULT NULL,
  `motivoCancelacion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `area_codigo`, `usuario_dni`, `motivoCancelacion`) VALUES
(1, 2, 'asd', '192.168.0.20', NULL, '2022-05-12 18:58:00', NULL, 4, 3004, 0, '12345689'),
(2, 2, 'Ejemplo', '192.168.19.20', NULL, '2022-05-12 20:40:21', NULL, 4, 3004, 0, '1234'),
(3, 3, 'Ejemplo', '192.168.10.70', NULL, '2022-05-13 08:22:16', NULL, 2, 2002, 2, NULL),
(4, 4, 'qwert', '192.168.0.20', '', '2022-05-17 08:30:24', NULL, 1, 4005, 0, NULL),
(7, 6, 'poiu', '192.168.10.10', 'Terminadou', '2022-05-17 11:40:31', '2022-05-17 12:44:32', 3, 1000, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idrol` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idrol`, `nombre`) VALUES
(1, 'Encargado'),
(2, 'Agente'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `idRol2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`dni`, `nombre`, `apellido`, `correo`, `usuario`, `contraseña`, `idRol2`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'Encargado', 'EN', 'alguien@gmail.com', 'encargado', '1234', 1),
(2, 'Evaluador', 'EV', NULL, 'evaluador', '1234', 2),
(3, 'Admin', 'AD', NULL, 'admin', 'admin', 3),
(25091300, 'Ruben', 'Diaz', 'ruben@gmail.com', 'ruben45', '1234', 2),
(42913555, 'Fernando', 'Airoldi', 'fernando@gmail.com', 'fer22', '1234', 1),
(42913599, 'Agustin', 'Videla', 'agustinvidq@gmail.com', 'agusss', '1234', 1),
(42913695, 'Agustin', 'Videla', 'agustinvidela835@gmail.com', 'agustinvidela', '1234', 3),
(42913799, 'Sebastian', 'Gomez', 'sebas@gmail.com', 'sebas2222', '1234', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `estadotarea`
--
ALTER TABLE `estadotarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivos`
--
ALTER TABLE `motivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`nroArreglo`),
  ADD KEY `fk_usuario_dni` (`usuario_dni`),
  ADD KEY `fk_tareas_estadoTarea1_idx` (`estadoTarea_id`),
  ADD KEY `fk_tareas_area1_idx` (`area_codigo`),
  ADD KEY `fk_id_motivos` (`id_motivos`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `fk_usuario_rol_idx` (`idRol2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `motivos`
--
ALTER TABLE `motivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `nroArreglo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `fk_id_motivos` FOREIGN KEY (`id_motivos`) REFERENCES `motivos` (`id`),
  ADD CONSTRAINT `fk_tareas_area1` FOREIGN KEY (`area_codigo`) REFERENCES `areas` (`codigo`),
  ADD CONSTRAINT `fk_tareas_estadoTarea1` FOREIGN KEY (`estadoTarea_id`) REFERENCES `estadotarea` (`id`),
  ADD CONSTRAINT `fk_usuario_dni` FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_idRol2` FOREIGN KEY (`idRol2`) REFERENCES `tipousuario` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
