-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2022 a las 19:26:31
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
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`codigo`, `nombre`) VALUES
(1, 'Administración de Redes y Seguridad'),
(2, 'Infraestructura'),
(3, 'Servicio Técnico'),
(4, 'Requerimientos'),
(5, 'Firma Digital'),
(6, 'Punto Digital'),
(7, 'CCTV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`codigo`, `nombre`, `descripcion`) VALUES
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
(4, 'Cancelado'),
(5, 'Eliminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos`
--

CREATE TABLE `motivos` (
  `id` int(11) NOT NULL,
  `motivos` varchar(250) DEFAULT NULL,
  `codigoArea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `motivos`
--

INSERT INTO `motivos` (`id`, `motivos`, `codigoArea`) VALUES
(1000, 'Lista blanca', 1),
(1001, 'Máquinas virtuales', 1),
(1002, 'Otros', 1),
(2000, 'Cableado nuevo', 2),
(2001, 'Reparación cableado red', 2),
(2002, 'Cambio UPS', 2),
(2003, 'Colocación de antena punto a punto', 2),
(2004, 'Cambio de antena punto a punto', 2),
(2005, 'Reparación punto a punto', 2),
(2006, 'Colocación conectividad wifi', 2),
(2007, 'Colocación reloj biométrico', 2),
(2008, 'Retiro de reloj biométrico', 2),
(2009, 'Crear punto nuevo de conectividad', 2),
(3000, 'Configuración de impresora', 3),
(3001, 'Problema de impresora', 3),
(3002, 'Configuración de PC', 3),
(3003, 'Reparación de PC', 3),
(3004, 'Instalación de programas en PC', 3),
(3005, 'Problema con un programa de PC', 3),
(3006, 'Configuración general del Proxy', 3),
(3007, 'Configuración de Home Office', 3),
(4000, 'Creación de usuario web – SAYGES', 4),
(4001, 'Creación de usuario agente municipal – SAYGES/GENUS', 4),
(4002, 'Modificación de permisos – SAYGES', 4),
(4003, 'Movimientos de expedientes por asignación directa', 4),
(4004, 'Pruebas por actualización SAYGES', 4),
(4005, 'Creación de usuario agente municipal - SISTEMA RECLAMOS', 4),
(4006, 'Modificación de permisos - SISTEMA RECLAMOS', 4),
(4007, 'Pruebas por actualización - SISTEMA RECLAMOS', 4),
(4008, 'CONFIGURACIÓN/CREACIÓN – SAYGES', 4),
(4009, 'CONFIGURACIÓN/CREACIÓN - SISTEMA DE RECLAMOS', 4),
(4010, 'Creación de Correo Electrónico', 4),
(4011, 'Elaboración de documentos', 4),
(4012, 'Capacitación', 4),
(4013, 'Asistencia remota', 4),
(4014, 'Investigación', 4),
(4015, 'Carga de pedidos OPENSAYGES', 4),
(4016, 'Reuniones', 4),
(4017, 'Configuración', 4),
(6000, 'Turnos', 6),
(7000, 'Colocación de Sistema CCTV', 7),
(7001, 'Reparación cableado CCTV', 7),
(7002, 'Colocación de cámara', 7),
(7003, 'Cambio de cámara', 7),
(7004, 'Cambio de NVR', 7),
(7005, 'Grabaciones', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `nroArreglo` int(11) NOT NULL,
  `id_motivos` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `nombreApellidoAfectado` varchar(100) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `solucion` varchar(500) DEFAULT NULL,
  `fechaProblema` datetime DEFAULT NULL,
  `fechaSolucion` datetime DEFAULT NULL,
  `estadoTarea_id` int(11) DEFAULT NULL,
  `direccion_codigo` int(11) DEFAULT NULL,
  `usuario_dni` int(11) DEFAULT NULL,
  `motivoCancelacion` varchar(500) DEFAULT NULL,
  `motivoEliminacion` varchar(500) DEFAULT NULL,
  `fechaEliminado` datetime DEFAULT NULL,
  `codigoArea3` int(11) DEFAULT NULL,
  `fechaCreada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`) VALUES
(54, 6000, 'addwazsd', '192.168.0.20', 'awdsfawf', '2612634028', 'adwwdawadwd', '2022-06-27 08:28:52', '2022-06-27 11:57:49', 3, 4005, 2000000, NULL, NULL, NULL, 6, '2022-07-04'),
(55, 3000, 'klakldaklwdklm', '192.168.70.55', 'Ejemplo Persona', '2612634082', NULL, '2022-06-27 08:32:38', NULL, 2, 4007, 2000000, NULL, NULL, NULL, 3, '2022-07-04'),
(56, 3004, 'dvaegwefaafwefaweawf', '192.168.10.80', 'Ejemplo Persona', '2612634096', NULL, '2022-06-27 10:35:03', NULL, 1, 3005, 0, NULL, NULL, NULL, 3, '2022-07-04'),
(59, 3003, 'adwfasdadwa', '192.168.20.10', '', '', NULL, '2022-06-27 13:28:37', NULL, 1, 3004, 0, NULL, NULL, NULL, 3, '2022-07-05'),
(64, 2001, 'awdawdweaf', '', 'Ejemplo', '2612634090', NULL, '2022-06-29 13:13:06', NULL, 2, 3004, 12345667, NULL, NULL, NULL, 2, '2022-07-05'),
(65, 3002, 'awdwafaawdwad', '', '', '', NULL, '2022-07-05 20:42:46', NULL, 4, 3001, 0, 'awdwdawadwaawd', NULL, NULL, 3, '2022-07-05'),
(66, 2003, 'dawdawdwdaawd', '', '', '', NULL, '2022-07-05 21:18:42', NULL, 5, 3003, 0, NULL, 'wdawdafwa', '2022-07-05 21:18:52', 2, '2022-07-05'),
(67, 3000, 'wffeewaddwaawd', '', 'Apellido', '2612634096', NULL, '2022-07-06 11:43:40', NULL, 1, 3005, 0, NULL, NULL, NULL, 3, '2022-07-05'),
(69, 1000, 'dwadawdwawdawdawda', '', '', '', NULL, '2022-07-06 12:24:14', NULL, 1, 3005, 0, NULL, NULL, NULL, 1, '2022-07-05'),
(70, 1001, 'dawwdawdawda', '', '', '', NULL, '2022-07-06 12:24:30', NULL, 1, 2002, 0, NULL, NULL, NULL, 1, '2022-07-06'),
(71, 1002, 'dwaddwawadwda', '', '', '', NULL, '2022-07-06 12:27:08', NULL, 1, 1001, 0, NULL, NULL, NULL, 1, '2022-07-06'),
(72, 4004, 'awddwawadwdawadwad', '', '', '', NULL, '2022-07-06 14:11:27', NULL, 1, 3004, 0, NULL, NULL, NULL, 4, '2022-07-06'),
(73, 4001, 'wdawdwfawda', '', 'asdfg', '2612634090', NULL, '2022-07-06 14:11:56', NULL, 1, 3003, 0, NULL, NULL, NULL, 4, '2022-07-06'),
(74, 4017, 'wdawddwawad', '', '', '', NULL, '2022-07-06 14:25:46', NULL, 1, 3004, 0, NULL, NULL, NULL, 4, '2022-07-06'),
(75, 4008, 'adwwdadwaawdwdawad', '', 'asdfg', '2612634082', NULL, '2022-07-06 14:30:07', NULL, 1, 3003, 0, NULL, NULL, NULL, 4, '2022-07-07'),
(76, 4012, 'dawwdaawddwawad', '', '', '', 'dawawwdawdaawd', '2022-07-06 14:30:31', '2022-07-07 14:03:37', 3, 3003, 78782782, NULL, NULL, NULL, 4, '2022-07-07'),
(77, 7004, 'wdawdadwadwadwa', '', '', '', NULL, '2022-07-07 08:26:22', NULL, 1, 3003, 0, NULL, NULL, NULL, 7, '2022-07-07'),
(78, 7000, 'dwawdawadwda', '', '', '', NULL, '2022-07-07 09:20:26', NULL, 1, 3003, 0, NULL, NULL, NULL, 7, '2022-07-07'),
(80, 3004, 'adwdaawddwaawd', '', '', '', NULL, '2022-07-07 12:47:46', NULL, 4, 2004, 2000000, 'acwadawwd', NULL, NULL, 3, '2022-07-07');

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
(3, 'Admin'),
(4, 'Supervisor');

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
  `contraseña` varchar(200) DEFAULT NULL,
  `idRol2` int(11) DEFAULT NULL,
  `motivoBaja` varchar(500) DEFAULT NULL,
  `codigoArea2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`dni`, `nombre`, `apellido`, `correo`, `usuario`, `contraseña`, `idRol2`, `motivoBaja`, `codigoArea2`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000, 'Reclamos', 'ST', 'ejemplo@gmail.com', 'reclamos', '$2y$10$aBwwtzVpyabi1kDBhBZUhOIOgiLhOAZGfyqVvCuzkW2dDGwBQe1BG', 1, NULL, 3),
(2000000, 'Agente', 'Ag', 'alguien@gmail.com', 'agente', '$2y$10$fTydZAorPh.XWBjLmQWQUOdC2XeHJw/xhsYM.cX6FynDxxKP4qNtK', 2, NULL, 3),
(3000000, 'Admin', 'AD', 'adminst@correo.com', 'admin', '$2y$10$aLqdvXR8sYLUsXwH/B/NqeFcWUCFTaUVQ6sPuSWFksxJ/0i36vBoK', 3, NULL, NULL),
(4000000, 'Supervisor', 'SU', 'alguien@gmail.com', 'supervisor', '$2y$10$T7wcE1CIiWG/FzB935dV3.fTmE4czGoyJiayAHe.SzvAHGNbw/3Ri', 4, NULL, 3),
(12345667, 'Agente', 'Infraestructura', 'alguien@gmail.com', 'agenteinfr', '$2y$10$z60iSgNERwmQzu1TLnigWOpF9S5srVwH1Ga5.N6kRU59TTAvnYnbm', 2, NULL, 2),
(42913695, 'Agustin', 'Videla', 'agustinvidela835@gmail.com', 'agustinvidela', '$2y$10$1tmOsQbiLA.DjY0OSYCEN.cqWcd0x0zdf8OsGPrLSoF.p9xe5NyK.', 3, NULL, NULL),
(78782782, 'Agente', 'Requerimientos', '', 'agentereq', '$2y$10$yoLsB0Yupo7yH5EfENMBI.1gd4WuWrQRFUX8JXpcBH2ZvgitJLWCW', 2, NULL, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigoArea` (`codigoArea`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`nroArreglo`),
  ADD KEY `fk_usuario_dni` (`usuario_dni`),
  ADD KEY `fk_tareas_estadoTarea1_idx` (`estadoTarea_id`),
  ADD KEY `fk_id_motivos` (`id_motivos`),
  ADD KEY `fk_tareas_area1_idx` (`direccion_codigo`),
  ADD KEY `fk_codigoArea3` (`codigoArea3`);

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
  ADD KEY `fk_usuario_rol_idx` (`idRol2`),
  ADD KEY `fk_codigoArea2` (`codigoArea2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `motivos`
--
ALTER TABLE `motivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7007;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `nroArreglo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `motivos`
--
ALTER TABLE `motivos`
  ADD CONSTRAINT `codigoArea` FOREIGN KEY (`codigoArea`) REFERENCES `areas` (`codigo`);

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `fk_codigoArea3` FOREIGN KEY (`codigoArea3`) REFERENCES `areas` (`codigo`),
  ADD CONSTRAINT `fk_id_motivos` FOREIGN KEY (`id_motivos`) REFERENCES `motivos` (`id`),
  ADD CONSTRAINT `fk_tareas_direccion` FOREIGN KEY (`direccion_codigo`) REFERENCES `direcciones` (`codigo`),
  ADD CONSTRAINT `fk_tareas_estadoTarea1` FOREIGN KEY (`estadoTarea_id`) REFERENCES `estadotarea` (`id`),
  ADD CONSTRAINT `fk_usuario_dni` FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_codigoArea2` FOREIGN KEY (`codigoArea2`) REFERENCES `areas` (`codigo`),
  ADD CONSTRAINT `fk_idRol2` FOREIGN KEY (`idRol2`) REFERENCES `tipousuario` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
