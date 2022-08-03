-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-08-2022 a las 08:56:11
-- Versión del servidor: 10.7.4-MariaDB-1:10.7.4+maria~focal
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `nombre` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`codigo`, `nombre`, `descripcion`) VALUES
(1000, 'Secretaría Privada y Protocolo', NULL),
(1001, 'Dirección de Asuntos Legales', NULL),
(1002, 'Dirección de Control de Gestión', NULL),
(1003, 'Dirección de Comunicación y Prensa', NULL),
(1004, 'Juzgados de Tránsito', NULL),
(1005, 'Secretaria de Gobierno', ''),
(1006, 'Secretaria de Obras', ''),
(1007, 'Secretaria de Hacienda', ''),
(1008, 'Intendencia', ''),
(1009, 'Patrimonio', ''),
(1010, 'Apoderados Municipales', ''),
(1011, 'Escribanía Municipal', ''),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`) VALUES
(1, 4002, 'Asignacion directa para renzo.bavetta', '', 'RENZO BAVETTA', '2615555', NULL, '2022-07-26 10:26:06', NULL, 5, 4005, 0, NULL, 'Prueba', '2022-08-01 13:42:37', 4, '2022-07-26'),
(2, 4011, 'baklbabakakba', '', '', '', 'bla...bla...bla...', '2022-08-01 10:13:56', '2022-08-02 07:32:31', 5, 4006, 28700618, NULL, 'prueba', '2022-08-02 08:43:46', 4, '2022-08-01'),
(3, 3004, 'Nitro', '192.168.2.2', 'Evelyn', '261000', 'Instalacion de programa exitosa', '2022-08-01 13:45:48', '2022-08-01 13:47:34', 5, 4000, 36768171, NULL, '123', '2022-08-01 13:54:27', 3, '2022-08-01'),
(4, 3006, 'sdgeragasdf\r\nSOLICITAR IP, LA MISMA ES INCORRECTA', '1123', 'regrweg', '645641', NULL, '2022-08-01 13:48:44', NULL, 5, 3002, 0, NULL, '123', '2022-08-01 13:54:33', 3, '2022-08-01'),
(5, 3005, 'Area Accidentología (Terminal de Omnibus)\r\nLos saca del Sistema cuando van a cargar en Tránsito (InfoGob). Son 3 PCs: 15.92 , 15.97 y 15.76------------- las personas comparten usuarios , problema de contraseña y no de software ', '192.168.15.92', 'German Zotelo', '222222222', 'problema de usuarios , no es de software ', '2022-08-02 08:37:58', '2022-08-02 09:42:50', 3, 4004, 29112717, NULL, NULL, NULL, 3, '2022-08-02'),
(6, 3002, 'Conectar Pc e Impresora. Roxana Lobos', '', 'Roxana Lobos', '156669905', 'Cableado e instalacion de impresora en pc de Roxana Lobos', '2022-08-02 08:48:42', '2022-08-02 11:00:52', 3, 3001, 41191664, NULL, NULL, NULL, 3, '2022-08-02'),
(7, 3003, 'Remplazar monitor. ', '', 'Alejandro Latorre - Liquidación de Haberes ', '2616561597', 'cambio de monitor', '2022-08-02 08:57:13', '2022-08-02 11:17:12', 3, 2003, 36768171, NULL, NULL, NULL, 3, '2022-08-02'),
(8, 2000, 'Retirar Pantalla para proyeccción de la Biblioteca Almafuerte y llevarla al 6to piso para capacitaciones. POR FAVOR antes de las 13:30. ', '', 'Carlos Gatica', '2615357587', 'Se retiro el proyector y se llevo al 6to piso', '2022-08-02 09:09:06', '2022-08-02 13:47:17', 3, 2003, 41191664, NULL, NULL, NULL, 2, '2022-08-02'),
(9, 3002, 'El monitor no prende cuando encienden el cpu. Si la reinician en ese caso si arranca.', '192.168.45.181', 'Micaela Tobares - Centro Verde', '2614184227', 'NO SE PUDO SOLUCIONAR YA QUE LA PERSONONA NO DEJA TRABAJAR, SE LE INFORMO X MEDIO DEL CHAT DEL VNC QUE PARA LA PROXIMA QUE LE SUCEDA, TENDRA QUE HACER UNA NOTA ELECTRONICA FIRMADA X EL DIRECTOR ASI VAMOS A VERLA ALLA\r\n', '2022-08-02 09:24:34', '2022-08-02 11:20:22', 3, 3008, 36768171, NULL, NULL, NULL, 3, '2022-08-02'),
(10, 3002, 'Sin internet. Ayer se comunicó por el mismo problema.', '192.168.41.228', 'Melani de Defensa del Consumidor', '222222222', 'Se reinicio la pc', '2022-08-02 09:33:41', '2022-08-02 11:56:48', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-08-02'),
(11, 3000, 'No puede imprimir, le da error.', '192.168.176.72', 'Escribana Paola Rodriguez', '222222222', 'instalacion de impresora', '2022-08-02 10:06:02', '2022-08-02 11:25:52', 3, 1001, 29112717, NULL, NULL, NULL, 3, '2022-08-02'),
(12, 3002, 'La PC esta imprimiendo en la impresora de Inspectores y necesita que imprima en la impresora de Despacho', '192.168.110.113', 'Roxana Lobos', '222222222', 'Impresora configurada', '2022-08-02 10:37:20', '2022-08-02 10:57:01', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-08-02'),
(13, 3002, 'Una de las PC está fija y no puede trabajar', '', 'Biblioteca Municipal', '123', 'se le desintalo el driver de wifi\r\n', '2022-08-02 10:41:16', '2022-08-02 13:25:27', 3, 4003, 36768171, NULL, NULL, NULL, 3, '2022-08-02'),
(14, 3002, 'Mirna (Bromatología): Necesita conectar la Notebook a internet, lo habia pedido el 29-07.', '', 'Mirna', '222222222', 'Cable conectado para darle red a la notebook', '2022-08-02 11:01:28', '2022-08-02 13:12:02', 3, 4007, 35871182, NULL, NULL, NULL, 3, '2022-08-02'),
(15, 3002, 'Una PC ha sido actualizada a Win 7, y la misma no puede transferir un expediente en el Sistema de Civitas. ', '', 'Escibania', '123', 'cambio de navegador ', '2022-08-02 11:40:00', '2022-08-02 11:58:37', 3, 1001, 29112717, NULL, NULL, NULL, 3, '2022-08-02'),
(16, 4000, 'Se crea usuario web para expediente estructurado', '', 'Sergio Martin Vicchi', '', 'reclamo resuelto', '2022-08-02 11:54:00', '2022-08-02 11:56:08', 3, 4005, 29148522, NULL, NULL, NULL, 4, '2022-08-02'),
(17, 4004, 'Probar version 14.5.3.1\r\n\r\nse revisa y prueba la unidad secundaria, el inconveniente de esto es que si se asignan PA a la bandeja personal, no hay una vista rápida para saber de que UO proviene.', '192.168.41.228', '', '', NULL, '2022-08-02 12:41:24', NULL, 2, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-02'),
(18, 4001, '24 usuarios. Revisar legajos, pedir decretos', '', '', '', 'se crean con permisos de administración y creación de PA, se responde al correo con instructivo adjunto', '2022-08-02 12:48:39', '2022-08-02 12:59:21', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-08-02'),
(19, 4017, 'Javier Masso no puede firmar Resoluciones autonumeradas, le aparece la leyenda \"no existe responsable asignado\"', '', '', '', 'con la actualización 14.5.2 se desconfiguró, se vuelve a asignar responsable', '2022-08-02 12:50:35', '2022-08-02 12:54:18', 3, 2002, 29148522, NULL, NULL, NULL, 4, '2022-08-02'),
(20, 4013, 'El profesional  solicita el desarchivo del  EE-10153-2022', '', 'Cristian Cantalejos', '', 'Reclamo resuelto', '2022-08-02 12:51:48', '2022-08-02 12:52:12', 3, 4005, 29148522, NULL, NULL, NULL, 4, '2022-08-02'),
(21, 4003, 'Colocar asignacion directa a vanina.gauna hasta las 12hrs', '12', 'Vanina Gauna', '', 'resuelto', '2022-08-02 12:51:50', '2022-08-02 12:56:59', 3, 2003, 29148522, NULL, NULL, NULL, 4, '2022-08-02'),
(22, 4017, 'Pestaña visible: \"Bajas contaduria general\"', '', '', '', 'Realizado', '2022-08-02 12:52:55', '2022-08-02 14:08:54', 3, 1009, 29148522, NULL, NULL, NULL, 4, '2022-08-02'),
(23, 4002, 'se inactiva ruben vidal y se otorgan permisos a lucia.frugoni por nota 03/08/2022 // dec-2664/2022', '192.168.41.228', 'lucia frugoni // ruben vidal', '', 'realizado', '2022-08-03 08:10:52', '2022-08-03 08:15:52', 3, 3008, 28700618, NULL, NULL, NULL, 4, '2022-08-03'),
(24, 3002, 'Cristina de Contabilidad Central, ayer le iban a instalar Windows 10 y no estuvo, en este momento pregunta si pueden ir ahora a instalarlo.\r\nRaúl', '', 'Cristina', '222222222', NULL, '2022-08-03 08:12:50', NULL, 1, 1007, 0, NULL, NULL, NULL, 3, '2022-08-03'),
(25, 3002, 'Cristina de Contabilidad Central, ayer fueron a instalarle en su PC windows 10 y no estuvo, pregunta si podrian instalarle ahora el Sistema Operativo.', '', 'Cristina', '222222222', NULL, '2022-08-03 08:17:33', NULL, 5, 1007, 0, 'Repetido', 'Duplicado', '2022-08-03 08:41:36', 3, '2022-08-03'),
(26, 1002, 'Mabel de la Sala de Arte, estan sin internet.', '', 'Mabel', '222222222', NULL, '2022-08-03 08:36:18', NULL, 1, 4003, 0, NULL, NULL, NULL, 1, '2022-08-03'),
(27, 3000, 'Configurar para que la pc 192.168.20.184 imprima desde la impresora 192.168.20.15', '192.168.20.184', 'Joaquin Rubio', '', 'listo', '2022-08-03 08:39:12', '2022-08-03 08:48:54', 3, 4002, 38101303, NULL, NULL, NULL, 3, '2022-08-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idrol` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `motivoBaja` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`dni`, `nombre`, `apellido`, `correo`, `usuario`, `contraseña`, `idRol2`, `motivoBaja`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000, 'Reclamos', 'ST', 'ejemplo@gmail.com', 'reclamos', '$2y$10$/u8oZKm/xNswIicsb4ZC2ONgDo3AuFZNq/ulv.Fx47FXLpulV0no6', 1, NULL),
(2000000, 'Agente', 'Ag', 'alguien@gmail.com', 'agente', '$2y$10$WYKtVVo27UNn044KHkmBwuWFenzX/Zn8JRcGkrNP6kAH17gEOV/im', 2, NULL),
(3000000, 'Admin', 'AD', 'adminst@correo.com', 'admin', '$2y$10$aLqdvXR8sYLUsXwH/B/NqeFcWUCFTaUVQ6sPuSWFksxJ/0i36vBoK', 3, NULL),
(4000000, 'Supervisor', 'SU', 'alguien@gmail.com', 'supervisor', '$2y$10$7B1xJ.MwWMUKOgqoKB1S..im/76v5W/HnncZowyrzk5Od5Hll3h1q', 4, NULL),
(12345667, 'Agente', 'Infraestructura', 'alguien@gmail.com', 'agenteinfr', '$2y$10$z60iSgNERwmQzu1TLnigWOpF9S5srVwH1Ga5.N6kRU59TTAvnYnbm', 2, NULL),
(16179758, 'Sonia', 'ROMAN', '', 'sonia.roman', '$2y$10$tQfRlCHKUgSAAJ1JTMFGB.0g8YWc0pW4yArEnFBKVny2x.MJOqBh.', 1, NULL),
(16222799, 'Raul', 'SORIA', '', 'raul.soria', '$2y$10$52Ih7O06NHyd6wJ6MiMuq.unbXAY2L6FdhLDcakLST6k1tAj0sYY6', 1, NULL),
(18079575, 'Pedro', ' GARBARINO', '', 'pedro.garbarino', '$2y$10$ScILno.6Y3ymFYQvaXSN.emg9hMJ73FJpL4ajTY3hFrfXDhr8g0BG', 2, NULL),
(24207076, 'Javier', 'Crayachichi', 'javier.crayachichi@guaymallen.gob.ar', 'javier.crayachichi', '$2y$10$InkqYRHI5TVq.2bx29j9R.mjAOjdPpuC3lZcQ..ie.RZoqkPae63i', 2, NULL),
(24925742, 'Monica', 'LIVOLSI', '', 'monica.livolsi', '$2y$10$f5bZHuKZagtQdBMC0M9z5uojoaS/JKzYH9GPdfITFKlz62M51nnOq', 1, NULL),
(28700618, 'German', 'SANCHEZ', '', 'german.sanchez', '$2y$10$HS7RVZ59x.bqKfDdIvB3ouo0Vum0gvNRzv8Etf9CaEM1Sz/DsZkf.', 4, NULL),
(28757006, 'Mauricio', 'SCARAVILLI', '', 'mauricio.scaravilli', '$2y$10$YwYosNnkthhqYTAzoWFgp.qcN93Kl6QwKzt4P/diTYgYgYpSU5HoK', 1, NULL),
(29112717, 'Lucas', 'SALEME', '', 'lucas.saleme', '$2y$10$qhQ3rYPzHHQrQmhnjKhrtuY5aRifpJSI6CJAHcBCv0TGoVGHyTv1K', 4, NULL),
(29148522, 'Nicolas', 'MAURE', '', 'nicolas.maure', '$2y$10$oDtCtvEhbNcJQ1qsflTqjeAOpIOQwo8sbZw0/47lFbJCU8JgIh77W', 2, NULL),
(30839932, 'Marcelo', 'ALARCON', 'marcelo.alarcon@gmail.com', 'marcelo.alarcon', '$2y$10$7KccNJPq5IOo4qEB3QNDZulL.ue8hUdSotixicoc2fGIByDvMPerC', 2, NULL),
(33966823, 'Evelyn', 'CARDENAS', '', 'evelyn.cardenas', '$2y$10$E0TlAsgGDGnEji3iIAc0MOvnRB8uvl9ZpFr0zMB1.ESchS2nlbd9G', 1, NULL),
(35871182, 'Leandro', 'BORQUEZ', '', 'leandro.borquez', '$2y$10$68/hJFosD2RTKkJI77czXen4/ux8LLobk4WLB0qYfZxyAvIlyy3.6', 2, NULL),
(36768171, 'Cristian', 'BARRERA', '', 'barrera.cristian', '$2y$10$lKVpNCBhb0hRPpN2.VlzkOIlqFRLDUK0bPOciRdl1aSkSXe0OPaze', 2, NULL),
(37513387, 'Renzo', 'BAVETTA', '', '37513387', '$2y$10$U.VcWhp.lu97D2Omg/TYuOOe2EoBYBAsefmQJ4UTRHOMM1lK7vxWK', 1, NULL),
(38101303, 'Emanuel', 'GARCIA', '', 'emanuel.garcia', '$2y$10$E/zZC8afK6l1dqs.9J51QeZa4c7hywcbxGhpxnkaraCBlOmm7nTde', 2, NULL),
(41191664, 'Franco', 'Moreno', 'franco.moreno@guaymallen.gob.ar', 'franco.moreno', '$2y$10$gZoVZEKJSH5/VCOu.0djju5kFbeUIceYGLI0aNxFdyvLz3uioGKu6', 2, NULL),
(42913695, 'Agustin', 'Videla', 'agustinvidela835@gmail.com', 'agustinvidela', '$2y$10$hlvaCVn742FJJumABLaqHOKrqclW5pxJqWGPwySvv0IjDzUxUDl/O', 3, NULL),
(78782782, 'Agente', 'Requerimientos', '', 'agentereq', '$2y$10$yoLsB0Yupo7yH5EfENMBI.1gd4WuWrQRFUX8JXpcBH2ZvgitJLWCW', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_area`
--

CREATE TABLE `usuario_area` (
  `id` int(11) NOT NULL,
  `usuario_dni2` int(11) DEFAULT NULL,
  `codigo_area2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_area`
--

INSERT INTO `usuario_area` (`id`, `usuario_dni2`, `codigo_area2`) VALUES
(1, 2000000, 2),
(2, 2000000, 3),
(3, 4000000, 3),
(4, 12345667, 2),
(5, 18079575, 1),
(6, 28700618, 4),
(7, 29112717, 3),
(8, 29148522, 4),
(9, 30839932, 1),
(11, 35871182, 3),
(12, 36768171, 3),
(13, 38101303, 3),
(14, 24207076, 2),
(15, 24207076, 7),
(16, 41191664, 2),
(17, 41191664, 3);

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
  ADD KEY `fk_usuario_rol_idx` (`idRol2`);

--
-- Indices de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_dni2` (`usuario_dni2`),
  ADD KEY `fk_codigo_area2` (`codigo_area2`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7008;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `nroArreglo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  ADD CONSTRAINT `fk_idRol2` FOREIGN KEY (`idRol2`) REFERENCES `tipousuario` (`idrol`);

--
-- Filtros para la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD CONSTRAINT `fk_codigo_area2` FOREIGN KEY (`codigo_area2`) REFERENCES `areas` (`codigo`),
  ADD CONSTRAINT `fk_usuario_dni2` FOREIGN KEY (`usuario_dni2`) REFERENCES `usuario` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
