-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-10-2022 a las 13:49:54
-- Versión del servidor: 10.6.7-MariaDB-2ubuntu1.1
-- Versión de PHP: 8.1.2

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
(1012, 'Externos', 'Identificar tareas realizadas para los que estén relacionados con el sistema de PA Sayges.'),
(1013, 'Mesa general de entradas', 'Dependencia'),
(1020, 'Direccion de Prensa', '.'),
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
(3010, 'Oficina de Proyectos', 'Área'),
(4000, 'Dirección de Delegaciones Municipales', NULL),
(4001, 'Dirección de Educación y Deportes', NULL),
(4002, 'Dirección de Desarrollo Económico', NULL),
(4003, 'Dirección de Cultura', NULL),
(4004, 'Dirección de Servicios Comunitarios, y Seguridad Vial', NULL),
(4005, 'Dirección de Sistemas', NULL),
(4006, 'Dirección de Desarrollo Social', NULL),
(4007, 'Dirección de Salud', NULL),
(5000, 'Cementerio', 'Entidad externa'),
(5001, 'Comisiones', 'Entidad externa'),
(5002, 'Las Cañas', 'Entidad externa'),
(5003, 'Belgrano', 'Entidad externa'),
(5004, 'Los Troncos', 'Entidad externa'),
(5005, 'Desarrollo Social', 'Entidad externa'),
(5006, 'Puente', 'Entidad externa'),
(5007, 'Nicolino', 'Entidad externa'),
(5008, 'Corralitos', 'Entidad externa'),
(5009, 'Dorrego', 'Entidad externa'),
(5010, 'Rodeo', 'Entidad externa'),
(5011, 'Buena Nueva', 'Entidad externa'),
(5012, 'Automotor', 'Entidad externa'),
(5013, 'Jesús Nazareno', 'Entidad externa'),
(5014, 'Bermejo', 'Entidad externa'),
(5015, 'Bodega', 'Entidad externa'),
(5016, 'SSPP', 'Entidad externa'),
(5017, 'SUM Congreso', 'Entidad externa'),
(5018, 'Lauriente', 'Entidad externa'),
(5019, 'Luminaria', 'Entidad externa'),
(5020, 'Vivienda', 'Entidad externa'),
(5021, 'Cine Teatro', 'Entidad externa'),
(5022, 'Ambiental', 'Entidad externa'),
(5023, 'CIC Paraguay', 'Entidad externa'),
(5024, 'Estrada y Cangayo', 'Entidad externa'),
(5025, 'Vivero Municipal', 'Entidad externa'),
(5026, 'Poliguay', 'Entidad externa'),
(5027, 'Playa de secuestro', 'Entidad externa'),
(5028, 'Colonia Segovia', 'Entidad externa'),
(5029, 'Obras por administración', 'Entidad externa'),
(5030, 'Predio de la Virgen', 'Entidad externa'),
(5031, 'Nebot', 'Entidad externa'),
(5032, 'Molina Pico', 'Entidad externa'),
(5033, 'Call Center', 'Entidad externa'),
(5034, 'Accidentología Terminal', 'Entidad externa'),
(5035, 'Jardin Ojitos Dulces', 'Entidad externa'),
(5036, 'Jardin Arroz con Leche', 'Entidad externa'),
(5037, 'Defensa del Consumidor', 'Área de Legales'),
(5038, 'Mediación', 'Legales'),
(10000, 'Honorable Concejo Deliberante', 'HCD');

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
(7005, 'Grabaciones', 7),
(7008, 'Interno desconectado', 5),
(7009, 'Asistencia de telefonia', 5),
(7010, 'Reseteo de clave - WEBMAIL', 4),
(7011, 'Interno ', 5),
(7012, 'Instalacion de telefono', 2),
(7013, 'Cambios Generales - SAYGES', 4),
(7014, 'Desarchivo', 4),
(7015, 'Baja de bienes', 3),
(7016, 'Colocar insumo', 3),
(7017, 'VPN', 1),
(7018, 'Armado de PC Completa', 3),
(7019, 'Lentitud y/o caida de la Red', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `nroArreglo` int(11) NOT NULL,
  `id_motivos` int(11) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
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
  `fechaCreada` date DEFAULT NULL,
  `usuarioCreado` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`, `usuarioCreado`) VALUES
(1, 4002, 'Asignacion directa para renzo.bavetta', '', 'RENZO BAVETTA', '2615555', NULL, '2022-07-26 10:26:06', NULL, 5, 4005, 0, NULL, 'Prueba', '2022-08-01 13:42:37', 4, '2022-07-26', NULL),
(2, 4011, 'baklbabakakba', '', '', '', 'bla...bla...bla...', '2022-08-01 10:13:56', '2022-08-02 07:32:31', 5, 4006, 28700618, NULL, 'prueba', '2022-08-02 08:43:46', 4, '2022-08-01', NULL),
(3, 3004, 'Nitro', '192.168.2.2', 'Evelyn', '261000', 'Instalacion de programa exitosa', '2022-08-01 13:45:48', '2022-08-01 13:47:34', 5, 4000, 36768171, NULL, '123', '2022-08-01 13:54:27', 3, '2022-08-01', NULL),
(4, 3006, 'sdgeragasdf\r\nSOLICITAR IP, LA MISMA ES INCORRECTA', '1123', 'regrweg', '645641', NULL, '2022-08-01 13:48:44', NULL, 5, 3002, 0, NULL, '123', '2022-08-01 13:54:33', 3, '2022-08-01', NULL),
(5, 3005, 'Area Accidentología (Terminal de Omnibus)\r\nLos saca del Sistema cuando van a cargar en Tránsito (InfoGob). Son 3 PCs: 15.92 , 15.97 y 15.76------------- las personas comparten usuarios , problema de contraseña y no de software ', '192.168.15.92', 'German Zotelo', '222222222', 'problema de usuarios , no es de software ', '2022-08-02 08:37:58', '2022-08-02 09:42:50', 3, 4004, 29112717, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(6, 3002, 'Conectar Pc e Impresora. Roxana Lobos', '', 'Roxana Lobos', '156669905', 'Cableado e instalacion de impresora en pc de Roxana Lobos', '2022-08-02 08:48:42', '2022-08-02 11:00:52', 3, 3001, 41191664, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(7, 3003, 'Remplazar monitor. ', '', 'Alejandro Latorre - Liquidación de Haberes ', '2616561597', 'cambio de monitor', '2022-08-02 08:57:13', '2022-08-02 11:17:12', 3, 2003, 36768171, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(8, 2000, 'Retirar Pantalla para proyeccción de la Biblioteca Almafuerte y llevarla al 6to piso para capacitaciones. POR FAVOR antes de las 13:30. ', '', 'Carlos Gatica', '2615357587', 'Se retiro el proyector y se llevo al 6to piso', '2022-08-02 09:09:06', '2022-08-02 13:47:17', 3, 2003, 41191664, NULL, NULL, NULL, 2, '2022-08-02', NULL),
(9, 3002, 'El monitor no prende cuando encienden el cpu. Si la reinician en ese caso si arranca.', '192.168.45.181', 'Micaela Tobares - Centro Verde', '2614184227', 'NO SE PUDO SOLUCIONAR YA QUE LA PERSONONA NO DEJA TRABAJAR, SE LE INFORMO X MEDIO DEL CHAT DEL VNC QUE PARA LA PROXIMA QUE LE SUCEDA, TENDRA QUE HACER UNA NOTA ELECTRONICA FIRMADA X EL DIRECTOR ASI VAMOS A VERLA ALLA\r\n', '2022-08-02 09:24:34', '2022-08-02 11:20:22', 3, 3008, 36768171, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(10, 3002, 'Sin internet. Ayer se comunicó por el mismo problema.', '192.168.41.228', 'Melani de Defensa del Consumidor', '222222222', 'Se reinicio la pc', '2022-08-02 09:33:41', '2022-08-02 11:56:48', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(11, 3000, 'No puede imprimir, le da error.', '192.168.176.72', 'Escribana Paola Rodriguez', '222222222', 'instalacion de impresora', '2022-08-02 10:06:02', '2022-08-02 11:25:52', 3, 1001, 29112717, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(12, 3002, 'La PC esta imprimiendo en la impresora de Inspectores y necesita que imprima en la impresora de Despacho', '192.168.110.113', 'Roxana Lobos', '222222222', 'Impresora configurada', '2022-08-02 10:37:20', '2022-08-02 10:57:01', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(13, 3002, 'Una de las PC está fija y no puede trabajar', '', 'Biblioteca Municipal', '123', 'se le desintalo el driver de wifi\r\n', '2022-08-02 10:41:16', '2022-08-02 13:25:27', 3, 4003, 36768171, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(14, 3002, 'Mirna (Bromatología): Necesita conectar la Notebook a internet, lo habia pedido el 29-07.', '', 'Mirna', '222222222', 'Cable conectado para darle red a la notebook', '2022-08-02 11:01:28', '2022-08-02 13:12:02', 3, 4007, 35871182, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(15, 3002, 'Una PC ha sido actualizada a Win 7, y la misma no puede transferir un expediente en el Sistema de Civitas. ', '', 'Escibania', '123', 'cambio de navegador ', '2022-08-02 11:40:00', '2022-08-02 11:58:37', 3, 1001, 29112717, NULL, NULL, NULL, 3, '2022-08-02', NULL),
(16, 4000, 'Se crea usuario web para expediente estructurado', '', 'Sergio Martin Vicchi', '', 'reclamo resuelto', '2022-08-02 11:54:00', '2022-08-02 11:56:08', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(17, 4004, 'Probar version 14.5.3.1\r\n.\r\nse revisa y prueba la unidad secundaria, el inconveniente de esto es que si se asignan PA a la bandeja personal, no hay una vista rápida para saber de que UO proviene.', '192.168.41.228', '', '', 'Probado', '2022-08-02 12:41:24', '2022-08-03 12:48:25', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(18, 4001, '24 usuarios. Revisar legajos, pedir decretos', '', '', '', 'se crean con permisos de administración y creación de PA, se responde al correo con instructivo adjunto', '2022-08-02 12:48:39', '2022-08-02 12:59:21', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(19, 4017, 'Javier Masso no puede firmar Resoluciones autonumeradas, le aparece la leyenda \"no existe responsable asignado\"', '', '', '', 'con la actualización 14.5.2 se desconfiguró, se vuelve a asignar responsable', '2022-08-02 12:50:35', '2022-08-02 12:54:18', 3, 2002, 29148522, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(20, 4013, 'El profesional  solicita el desarchivo del  EE-10153-2022', '', 'Cristian Cantalejos', '', 'Reclamo resuelto', '2022-08-02 12:51:48', '2022-08-02 12:52:12', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(21, 4003, 'Colocar asignacion directa a vanina.gauna hasta las 12hrs', '12', 'Vanina Gauna', '', 'resuelto', '2022-08-02 12:51:50', '2022-08-02 12:56:59', 3, 2003, 29148522, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(22, 4017, 'Pestaña visible: \"Bajas contaduria general\"', '', '', '', 'Realizado', '2022-08-02 12:52:55', '2022-08-02 14:08:54', 3, 1009, 29148522, NULL, NULL, NULL, 4, '2022-08-02', NULL),
(23, 4002, 'se inactiva ruben vidal y se otorgan permisos a lucia.frugoni por nota 03/08/2022 // dec-2664/2022', '192.168.41.228', 'lucia frugoni // ruben vidal', '', 'realizado', '2022-08-03 08:10:52', '2022-08-03 08:15:52', 3, 3008, 28700618, NULL, NULL, NULL, 4, '2022-08-03', NULL),
(24, 3002, 'Cristina de Contabilidad Central, ayer le iban a instalar Windows 10 y no estuvo, en este momento pregunta si pueden ir ahora a instalarlo.\r\nRaúl', '', 'Cristina', '222222222', 'cambio de disco a un ssd\r\n', '2022-08-03 08:12:50', '2022-08-03 12:37:19', 3, 1007, 36768171, NULL, NULL, NULL, 3, '2022-08-03', NULL),
(25, 3002, 'Cristina de Contabilidad Central, ayer fueron a instalarle en su PC windows 10 y no estuvo, pregunta si podrian instalarle ahora el Sistema Operativo.', '', 'Cristina', '222222222', NULL, '2022-08-03 08:17:33', NULL, 5, 1007, 0, 'Repetido', 'Duplicado', '2022-08-03 08:41:36', 3, '2022-08-03', NULL),
(26, 1002, 'Mabel de la Sala de Arte, estan sin internet.', '', 'Mabel', '222222222', 'Los ap se desasociaron, ya estan activos nuevamente', '2022-08-03 08:36:18', '2022-08-03 10:48:27', 3, 4003, 30839932, NULL, NULL, NULL, 1, '2022-08-03', NULL),
(27, 3000, 'Configurar para que la pc 192.168.20.184 imprima desde la impresora 192.168.20.15', '192.168.20.184', 'Joaquin Rubio', '', 'listo', '2022-08-03 08:39:12', '2022-08-03 08:48:54', 3, 4002, 38101303, NULL, NULL, NULL, 3, '2022-08-03', NULL),
(28, 1002, 'En sala de Arte de calle Libertad no tienen Internet', '', 'Silvina Muscio', '2616790155', 'Los ap se desasociaron, ya estan activos nuevamente', '2022-08-03 09:10:04', '2022-08-03 10:48:34', 3, 4003, 30839932, NULL, NULL, NULL, 1, '2022-08-03', NULL),
(29, 3002, 'Roxana de Obras Privadas necesita que los trabajos de escaneo se guarden en la computadora que esta usando y no en la anterior que la tiene otro empleado.', '192.168.110.113', 'Roxana', '222222222', 'Listo ', '2022-08-03 09:36:15', '2022-08-03 12:54:04', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-03', NULL),
(30, 3002, 'Andrea de Salud Laboral no tiene internet.', '192.168.172.186', 'Andrea', '222222222', 'proxy', '2022-08-03 09:39:00', '2022-08-03 09:47:44', 3, 4007, 29112717, NULL, NULL, NULL, 3, '2022-08-03', NULL),
(31, 4013, 'el profesional consulta por la demora en su trámite', '', 'Damian Policelli', '', 'Le informo que su trámite está en la Dirección de Ambiente y Energía, y que debe comunicarse con ellos.', '2022-08-04 07:44:24', '2022-08-04 07:45:33', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(32, 4013, 'La profesional no puede subir planos eléctricos en el EE-570-2020', '', 'Silvina Dolcemascolo', '', 'Le informo que debe colocar un año anterior en el filtro de búsqueda, de este modo podrá visualizar el expte.', '2022-08-04 07:47:03', '2022-08-04 07:49:19', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(33, 3000, 'adwwdaawd', '', '', '', NULL, '2022-08-04 08:54:00', NULL, 5, 1006, 0, NULL, 'Requerimiento no claro', '2022-08-04 08:55:15', 3, '2022-08-04', NULL),
(34, 4013, 'el profesional manifiesta que no puede acceder al sistema. le dice Usuario Inhabilitado', '', 'Cristian Borgia', '', 'Le reseteo la clave', '2022-08-04 09:26:33', '2022-08-04 09:27:22', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(35, 3003, 'Marisa de Compras, se le apaga la computadora.', '', 'Marisa', '222222222', 'listorti', '2022-08-04 10:00:17', '2022-08-05 09:38:35', 3, 2001, 38101303, NULL, NULL, NULL, 3, '2022-08-04', NULL),
(36, 4013, 'La persona dice que no puede activar el usuario', '', 'Lucas Castellano, dni 38299039', '', 'Le informo que ese usuario se generó cuando inició el expediente en Mesa de Entradas y que no sirve por el momento para interactuar con el sistema.', '2022-08-04 10:18:29', '2022-08-04 10:19:43', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(37, 3005, 'José Luis de Electrotécnica, no puede abrir el administrador de archivos. Necesita sacar información de una carpeta para entregar a un contribuyente pero el administrador se bloquea.\r\nLLAMA de vuelta porque estan esperando los contribuyentes la información que tiene esa carpeta.', '192.168.110.83', 'José Luis', '222222222', 'listo', '2022-08-04 10:40:29', '2022-08-04 13:18:29', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-04', NULL),
(38, 4001, 'creación de 2 usuarios con roles de factibilidad.\r\nPedido por vanina correas', '', 'ivana rivas/natalia sanchez', '', 'se crean con lo ee en el legajo', '2022-08-04 12:06:12', '2022-08-04 12:49:31', 3, 3004, 28700618, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(39, 3005, 'Hay un PC en el 1er piso Obras Privadas, atención al público, necesitan que urgente vayan a revisar la PC.\r\nLa misma se tilda, no abre programas, se reinicia y no pueden atender al público.\r\n', '192.168.110.83', 'Obras Privadas', '8241', 'lista', '2022-08-04 12:11:11', '2022-08-04 13:17:35', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-04', NULL),
(40, 3002, 'La PC necesita que coloquen la hora exacta.', '192.168.130.107', 'Compras y Suministos', '8238', 'se coloco la hora correcta, ', '2022-08-04 12:28:53', '2022-08-04 12:35:33', 3, 2001, 36768171, NULL, NULL, NULL, 3, '2022-08-04', NULL),
(41, 4003, 'se desarchivan 10 PA de tesorería asignandolos a marina.', '', 'Marina Tesorería', '', 'se asignan directamente para que desarchiven. Se explica como proceder.', '2022-08-04 12:51:34', '2022-08-04 12:52:20', 3, 2004, 28700618, NULL, NULL, NULL, 4, '2022-08-04', NULL),
(42, 3003, 'PC de Salud Laboral sin internet nuevamente', '', 'Andrea Portabella', '', 'Se coloco un switch de manera momentanea hasta que se cablee de forma correcta', '2022-08-05 08:41:30', '2022-08-05 11:16:55', 3, 4007, 36768171, NULL, NULL, NULL, 3, '2022-08-05', NULL),
(43, 7010, 'reseteo de claves a pedido whatsapp:\r\nplanificación\r\n', '', '', '', 'creados', '2022-08-05 11:45:24', '2022-08-08 08:08:56', 3, 3004, 28700618, NULL, NULL, NULL, 4, '2022-08-05', NULL),
(44, 3004, 'Infogov', '', 'DRA. Marcela Amarillo', '123', 'Instalación de Infogov 1 y 3', '2022-08-05 12:27:50', '2022-08-05 12:33:55', 3, 1001, 35871182, NULL, NULL, NULL, 3, '2022-08-05', NULL),
(45, 3005, 'Despues del cambio de disco en las PC no pueden ingresar a civitas, son 2 PC de Cont Central 192.168.130.122 y 192.168.130.192', '192.168.130.122', 'Loper Maria Cristina ', '2222', 'Configuracion de proxy', '2022-08-05 13:28:53', '2022-08-08 08:20:51', 3, 2006, 36768171, NULL, NULL, NULL, 3, '2022-08-05', NULL),
(46, 1002, 'PRUEBA MARCELO', '', 'Leila Guizzardi', '2615772331', NULL, '2022-08-08 08:39:39', NULL, 4, 4005, 0, 'Era soilo una pruba', NULL, NULL, 1, '2022-08-08', NULL),
(47, 4013, 'Se asiste desincorporación del ne-11567-2022 dentro de ee-6347-2022 (Padre) a pedido de Florencia – Mesa de entradas(WHP) .', '', 'florencia /mesa de entradas', '', 'realizado', '2022-08-08 09:42:39', '2022-08-08 10:54:12', 3, 1013, 28700618, NULL, NULL, NULL, 4, '2022-08-08', NULL),
(48, 1002, 'Habilitar youtube y redes sociales a notebook de salud', '192.168.172.182', 'Gabriela Salatino', '2615339049', 'Se habilito bajo pedido de dirección. ', '2022-08-08 09:59:52', '2022-08-08 13:23:31', 3, 4007, 30839932, NULL, NULL, NULL, 1, '2022-08-08', NULL),
(49, 3004, 'Necesita que le instalen el GIS Municipio', '192.168.110.133', 'Roxana', '222222222', 'http://172.30.0.23/desarrollo_guaymallen/public/', '2022-08-08 10:03:22', '2022-08-08 10:21:08', 3, 3001, 29112717, NULL, NULL, NULL, 3, '2022-08-08', NULL),
(50, 3004, 'no crea pdf', '192.168.100.68', '', '', 'instalacion de infogov ', '2022-08-08 10:47:32', '2022-08-08 10:47:50', 3, 2000, 29112717, NULL, NULL, NULL, 3, '2022-08-08', NULL),
(51, 3002, 'Leila: Se solicita la instalación de una PC que se encuentra en la Dirección de Compras, para instalarla en sector de Tesorería, con los sistemas de SAYGES, ZIMBRA, PUTTY, acceso a Dropbox, gmail, con configuración de cuenta para Candela Martinez DNI 43.278.268, perteneciente a la Secretaria de Hacienda, pero con acceso a Sayges a la UO Subdirección de RRHH.', '123', 'Carlos Gatica', '2615357587', 'Se instalo una nueva pc slim ', '2022-08-08 11:07:09', '2022-08-11 13:59:45', 3, 1007, 38101303, NULL, NULL, NULL, 3, '2022-08-08', NULL),
(52, 4015, 'Petición #2815 creada para actualizar a ver. 14.6', '', 'micaela martinez', '', 'se crea petición para iniciar pruebas.', '2022-08-08 12:01:17', '2022-08-08 12:20:29', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-08', NULL),
(53, 3003, 'La computadora no enciende.', '', 'Marcela', '222222222', 'se cambio la pc', '2022-08-08 12:35:16', '2022-08-09 12:56:40', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-08-08', NULL),
(54, 3003, 'No enciende el monitor.\r\nRaúl', '', 'Miriam', '0', 'fuente del monitor', '2022-08-09 08:13:21', '2022-08-09 08:59:02', 3, 2004, 41191664, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(55, 3002, 'Leila: Y cito textual \"nec que una de las compu tenga internet pero que se de red y no de WIFI por que con el wifi es más lerdo descargar los expedientes para revisar.\"', '123', 'ALICIA ZARATE', '', 'se le puso un cable de red ', '2022-08-09 09:09:15', '2022-08-09 09:55:11', 3, 1007, 38101303, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(56, 1002, 'Leila: Patrimonio sin internet ', '192.168.90.56', 'Lorena Videla ', '2614602314', 'La pc ya tenia internet', '2022-08-09 09:16:58', '2022-08-09 09:22:59', 3, 1009, 30839932, NULL, NULL, NULL, 1, '2022-08-09', NULL),
(57, 3002, 'Monitor no da imagen en Higiene y Seguridad', '', '', '', 'Cambié el cable de puerto HDMI y dio imagen', '2022-08-09 09:34:26', '2022-08-09 09:34:56', 3, 1002, 35871182, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(58, 3001, 'no funciona la impresora en infogov ', '192.168.100.68', 'carlos gallo ', '', 'reinstalacion de pdf creator', '2022-08-09 10:12:19', '2022-08-09 10:12:43', 3, 2000, 29112717, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(59, 3005, 'Cuando va a utilizar el WhatSapp Web le aparece un cartel de que esta vencido, y no puede enviar los boletos a los contribuyentes. Raúl', '192.168.100.105', 'Erica', '0', 'configuracion', '2022-08-09 10:19:38', '2022-08-09 11:55:33', 3, 2000, 29112717, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(60, 1002, 'En la isla de los inspectores de Obras Municipales no tienen internet. Raúl', '', 'Ana', '0', 'Problema con la fibra optica, ya esta resuelto', '2022-08-09 10:55:20', '2022-08-09 11:21:28', 3, 3000, 30839932, NULL, NULL, NULL, 1, '2022-08-09', NULL),
(61, 4001, 'creación de 3 usuarios nuevos sayges/mail', '192.168.130.72', 'pedido por jimena pereyra', '', 'realizado', '2022-08-09 11:56:15', '2022-08-09 12:14:47', 3, 3002, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(62, 4008, 'cambio de dirección para usuario susana.dutto pedido por mayra lamanuzzi de dop a mayordomía', '', 'susana dutto', '', 'realizado', '2022-08-09 11:58:59', '2022-08-09 12:15:03', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(63, 4003, 'se asigna desde Archivo a marina.sosa de tesorería el 7040-2022 y 12436-2022', '', 'marina sosa', '', 'realizado', '2022-08-09 12:02:17', '2022-08-09 12:15:16', 3, 2004, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(64, 7010, 'usuario sergio villaruel reseteo de clave pendiente a revisión por pedido realizado agente juan savina, aparente error de login.', '', 'sergio villaruel', '', 'realizado', '2022-08-09 12:04:37', '2022-08-09 12:15:23', 3, 3007, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(65, 4014, 'ee-7597-2022 informan problema de asignación, se comprueba tarea archivo rentas, se informa el proceder al agente para transmitir al profesional, se facilitan medios de comunicación para resolver (pedido de whp)', '', 'micaela - control de gestión', '', 'realizado', '2022-08-09 12:07:42', '2022-08-09 12:15:30', 3, 1002, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(66, 1002, 'Leila: Javier Masso no tiene internet luego del corte de esta mañana', '192.168.90.91', 'Javier Masso', '2613032602', 'Cuando se reviso, el usurio estaba trabajando en la red', '2022-08-09 12:10:42', '2022-08-10 08:16:44', 3, 2002, 30839932, NULL, NULL, NULL, 1, '2022-08-09', NULL),
(67, 3004, 'Necesita que instalen Nitro. Raúl', '192.168.150.125', 'Exequiel', '0', 'Nitro instalado', '2022-08-09 12:35:51', '2022-08-09 12:55:45', 3, 1001, 35871182, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(68, 7010, 'reseteo clave tecnica.vivienda@guaymallen.gob.ar', '', 'Marcela Alcaraz', '', 'realizado\r\n', '2022-08-09 12:48:38', '2022-08-09 13:06:09', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-08-09', NULL),
(69, 3000, 'No sale la impresión en PDF de Infogov. \r\nEn el área de Publicidad.', '', 'Carlos Gallo - ', '....', 're instalacion de pdf creator', '2022-08-09 13:21:51', '2022-08-10 09:42:34', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-08-09', NULL),
(70, 4013, 'La profesional solicita el desarchivo del EE-10792-2021', '', 'Silvia Gonzalez', '', 'Le informo que debe comunicarse con Obras Privadas para solicitar el desarchivo y le paso los contactos.', '2022-08-10 08:07:03', '2022-08-10 08:07:39', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(71, 3001, 'siguen sin poder imprimir', '', 'Masso sergio', '123', 'cambio de unidad de imagen', '2022-08-10 08:16:27', '2022-08-10 08:41:49', 3, 2002, 36768171, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(72, 3002, 'Sistema Integrado no tienen teléfono ni Internet. Griselda de Rentas (Catastro) no tiene teléfono ni Internet. Raúl', '0', 'Erica y Griselda', '0', NULL, '2022-08-10 08:46:33', NULL, 4, 2000, 0, 'Corresponde a servicio tecnico, problemas fisicos en la pc', NULL, NULL, 3, '2022-08-10', NULL),
(73, 3002, 'Sistema Integrado no tienen teléfono ni Internet. Griselda de Rentas (Catastro) no tiene teléfono ni Internet. Raúl', '', 'Erica y Griselda', '0', 'se cableo la pc  de nuevo', '2022-08-10 08:55:30', '2022-08-10 10:47:34', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(74, 3002, 'Lento o Nulo acceso a Internet en las PCs de Mesa de Entradas. Raúl.', '192.168.100.99', 'Florencia', '0', 'Regla proxy ', '2022-08-10 08:58:07', '2022-08-10 09:45:35', 3, 1013, 38101303, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(75, 3002, 'No puede acceder para consulta a una web de salud. Le sale un error de protocolo, antes lo podia hacer. Raúl', '192.168.172.193', 'Dr. Zapata', '0', 'Cambiar direccion de pagina ', '2022-08-10 09:33:44', '2022-08-10 11:04:25', 3, 4007, 38101303, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(76, 3002, 'Oficina de Proyectos: Una de las computadoras que comparte los archivos se reinicio para actualizarse. Se actualizó pero no comparte los archivos ahora. No puede decir el IP porque no tienen la contraseña, supuestamente los técnicos la saben. Raúl', '', 'Juan José', '0', 'Actualización desinstalada', '2022-08-10 09:39:03', '2022-08-10 12:33:16', 3, 1006, 35871182, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(77, 3001, 'En la impresora de la Dirección no funciona la fotocopiadora luego de cambiarle el toner a la misma.\r\nNo me especificó cual es la impresora sólo dijo que es grande.', '', 'Comercio', '8130', 'Listo', '2022-08-10 10:23:39', '2022-08-10 10:46:52', 3, 2002, 38101303, NULL, NULL, NULL, 3, '2022-08-10', NULL),
(78, 4014, 'análisis del sistema de baja de comercio, se verifcan los roles a fin de obtener usuarios, se crea un grupo de whatsapp para realizar foro de participación para unificar criterios', '61', 'germán sanchez', '', 'finalizado', '2022-08-10 11:57:15', '2022-08-10 12:23:05', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(79, 7010, 'jonathan villarruel , se resetea clave a pedido por correo', '', 'juan c. savina', '', 'realizado', '2022-08-10 12:01:02', '2022-08-10 12:23:17', 3, 3007, 28700618, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(80, 4002, 'se agrega a jose.lobos para resolver estructurados de rentas- sistema integrado', '', 'jose lobos', '', 'agregado', '2022-08-10 12:16:00', '2022-08-10 12:23:28', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(81, 4016, 'se realiza reunión meet con alejandro noli para unificar criterios de práctica del sistema estructurado \"baja comercio\"\r\n', '', 'req y relev', '', 'finalizada, falta explicar como se hace el registro del usuario nuevo externo.', '2022-08-10 12:17:29', '2022-08-10 12:23:57', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(82, 4016, 'se acuerda reunión con micaela de sayges el día martes para explicar la modalidad de interacción del sistema con usuarios externos.', '', 'area de req. y relev.', '', 'acordada', '2022-08-10 12:22:13', '2022-08-10 12:24:15', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-10', NULL),
(83, 4016, 'Se realiza reunión con Sergio Pelegrina, Mauricio Real y Mauricio Carceller a fin de verificar tareas y modalidades de uso del sistema estructurado, se tienen en cuenta modalidades para realizar procedimientos administrativos. reunión del día 10/8/2022 a las 10 hs. ', '10', 'Germán Sanchez, Nicolás Maure, Sergio Pelegrina, Mauricio Real y Mauricio Carceller', '', 'realizada', '2022-08-11 07:35:40', '2022-08-11 08:00:24', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(84, 4013, 'El profesional solicita el alta de usuario en el sistema Sayges', '', 'Daniel Quintana', '', 'Le informo cuáles son los requisitos.', '2022-08-11 07:52:26', '2022-08-11 07:54:15', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(85, 4013, 'El profesional solicita el alta de usuario en el sistema Sayges', '', 'Jose Pittella', '', 'Le informo los requisitos.', '2022-08-11 07:58:50', '2022-08-11 07:59:43', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(86, 7010, 'se resetea clave de robledo, a pedido de jimena pereyra', '', 'robledo', '', 'realizado', '2022-08-11 08:05:57', '2022-08-11 09:05:22', 3, 3002, 28700618, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(87, 3002, 'Eve: no pueden utilizar los compartidos que se encuentran en su máquina.\r\n2do Piso en Proyecto', '', 'Julián Fernandez', '11111', 'Se entregó un SSD con Windows 10 nuevo', '2022-08-11 08:32:25', '2022-08-12 11:29:27', 3, 3000, 35871182, NULL, NULL, NULL, 3, '2022-08-11', NULL),
(88, 4017, 'Crear pestañas visibles para Intendencia y Hacienda:\r\nContato locación \r\nAlquileres\r\nMes base \r\nProvisión continúa\r\nObras\r\nMateriales', '', 'Emiliano Gobbi', '0', 'Se crean las pestañas en Intendencia y Hacienda', '2022-08-11 09:05:23', '2022-08-11 09:07:57', 3, 1008, 29148522, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(89, 4013, 'se rompe relación de incorporado en el ee-896-2022 con una ne que debía ser incorporada al ee-8962-2022. ', '', 'Cecilia Oruez', '', 'realizado, vino personalmente', '2022-08-11 09:09:41', '2022-08-11 09:10:33', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(90, 3002, 'Inspectores de Obras necesita se configuren todas las pc de la isla para scanear desde la impresora. Leila', '', 'Ruben Guerrero', '', 'Se coloco el escaner\r\n', '2022-08-11 10:40:19', '2022-08-12 11:13:28', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-08-11', NULL),
(91, 4004, 'Release 14.6\r\n\r\n* En la opción para cambiar de UO está visible la opción de \"TODAS\", la cual si se elije no ejecuta ninguna acción aparente.  Tampoco se describe en el release.(se pide explicar acción o quitar opción)\r\n\r\n* En identifican dos check ubicados dentro de \"observaciones\" en las PA, 1)está la opción de mantener las dos excluyentes, 2) si se elige una u otra funcionan de manera excluyente, es decir, hay tres modalidades de elección pero no se interpreta la función (Se pide explicar).\r\n*', '10', 'Genus', '', 'Revisado', '2022-08-11 11:37:07', '2022-08-16 10:24:27', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(92, 4000, 'El profesional envía los datos requeridos para creación de usuario', '', 'Jorge Granata', '', 'Doy de alta y le informo los datos de acceso', '2022-08-11 11:49:34', '2022-08-11 11:50:09', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-11', NULL),
(93, 1002, 'No tiene internet una pc de la dirección de delegaciones.-', '', 'GRACIELA', '2613382549', NULL, '2022-08-11 13:56:07', NULL, 4, 4000, 0, 'Repetida con la de Raul', NULL, NULL, 1, '2022-08-11', NULL),
(94, 3002, 'Graciela de Dirección de Delegaciones, no tiene internet. Raúl', '192.168.90.163', 'Graciela', '0', 'proxy', '2022-08-11 13:59:17', '2022-08-12 08:32:32', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-08-11', NULL),
(95, 1002, 'No puede navegar.-', '192.168.130.109', 'MARIVI', '..33', 'Problemas con el 172.30.0.25, disco lleno, ya ha sido solucionado y queda todo normalizado', '2022-08-11 14:16:49', '2022-08-11 14:49:21', 3, 2001, 18079575, NULL, NULL, NULL, 1, '2022-08-11', NULL),
(96, 4013, 'El profesional solicita el desarchivo del EE-4913-2022', '', 'Fabian Arce', '', 'Le informo que los desarchivos debe solicitarlos al área donde se encuentra el expediente y le paso los contactos.', '2022-08-12 07:38:07', '2022-08-12 07:42:05', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(97, 4013, 'Alta de usuario remoto sayges', '', 'Inan Campos', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-12 07:52:14', '2022-08-12 07:52:47', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(98, 4013, 'El profesional solicita alta de usuario remoto en sayges', '', 'Florencia Casado', '', 'Le informo cuáles son los requisitos', '2022-08-12 08:03:35', '2022-08-12 08:05:49', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(99, 4014, 'Análisis de documento del \"Sistema de Reservas de Turnos\r\npara salas de Conferencias\".', '', 'Germán Sanchez', '', 'Se informa por correo las sugerencias', '2022-08-12 08:14:39', '2022-08-17 11:29:44', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(100, 4000, 'El profesional envía lo solicitado para el alta', '', 'Daniel Quintana', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-12 08:29:14', '2022-08-12 08:29:55', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(101, 3002, 'Necesitan que la computadora, que le han actualizado Windows, comparta la carpeta con los archivos que utilizan las demás PCs de la dirección. Antes de la actualización lo hacia e igualmente los archivos que eran escaneados. Raúl', '192.168.110.65', 'Santos', '0', 'realizamos el compartido', '2022-08-12 08:31:56', '2022-08-12 11:12:54', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-08-12', NULL),
(102, 3002, 'Delegación Las Cañas: cambiaron de posición la computadora y ahora no le reconoce el monitor. Raúl', '', 'Estefanía', '0', 'vga', '2022-08-12 11:23:50', '2022-08-16 10:07:49', 3, 1005, 29112717, NULL, NULL, NULL, 3, '2022-08-12', NULL),
(103, 3000, 'Necesita que le cambien el toner. Impresora Xerox 405. Raúl', '', 'Roberto', '0', 'Se reemplazo', '2022-08-12 12:11:09', '2022-08-12 12:48:04', 3, 3000, 38101303, NULL, NULL, NULL, 3, '2022-08-12', NULL),
(104, 4013, 'El profesional manifiesta que no puede visualizar un expte con su usuario, pero dice que lo inició en Mesa de Entradas', '', 'Gabriel Paigo', '', 'Le informo que los expedientes que se inician en Mesa de Entradas no pueden visualizarse desde los usuarios profesionales', '2022-08-12 12:14:26', '2022-08-12 12:15:59', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(105, 4016, 'Se realiza una reunión con la Dirección de Sistemas para acordar funciones del pedido de una aplicación con el nombre de RCP YA, en la misma se acuerdan dos posibilidades de programación en la cual la directora da preferencias en apk android, las funciones son relevadas y se realizará una nueva diagramación para ultimar detalles.', '', 'Cecilia Tamarit, Alexander Bordon, Javier Garcia y Germán Sanchez', '', 'realizado', '2022-08-12 12:39:31', '2022-08-17 08:11:17', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-12', NULL),
(106, 4012, 'El profesional manifiesta que no puede ingresar al sistema', '', 'Cesar Morales', '', 'Le reseteo la clave', '2022-08-16 08:07:55', '2022-08-16 08:08:41', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-16', NULL),
(107, 3001, 'Impresora de Rentas Xerox Versalink 7030 no esta imprimiendo da error.', '', 'Erica', '', 'Xerox B405 pedía papel por bandeja especial', '2022-08-16 08:28:25', '2022-08-16 10:07:07', 3, 2000, 35871182, NULL, NULL, NULL, 3, '2022-08-16', 'Raul SORIA'),
(108, 3001, 'Nicolas de Prensa llama porque se ha trabado la impresora Xerox con un papel y no pueden destrabarla', '', 'NIcolas ', '', 'Papel atascado atrás de los rodillos', '2022-08-16 09:45:24', '2022-08-16 10:11:26', 3, 1003, 35871182, NULL, NULL, NULL, 3, '2022-08-16', 'Sonia ROMAN'),
(109, 3002, 'Cartel en la pantalla que no les permite trabajar', '192.168.20.174', 'Eugenia Barrera', '', NULL, '2022-08-16 10:21:32', NULL, 4, 4002, 0, 'Deben traer el equipo a la direccion para mejor revision', NULL, NULL, 3, '2022-08-16', 'Admin AD'),
(110, 2000, 'Delegación de Dorrego, necesita que le cambien el telefono ip ya que se corta las llamadas. Puede ser tema de cableado, ficha.\r\n', '', 'Norma HUT', '2615088119', 'Se coloco', '2022-08-16 11:40:33', '2022-09-01 07:46:51', 3, 4000, 41191664, NULL, NULL, NULL, 2, '2022-08-16', 'Evelyn CARDENAS'),
(111, 3004, 'El Sistema de Recaudación no imprime los códigos de barra de los boletos (necesita instalarse una fuente) Raúl', '192.168.100.177', 'Nieves', '0', NULL, '2022-08-16 11:46:33', NULL, 4, 2000, 35871182, 'Me conecté por VNC e intenté instalar, pero repetidas veces me cerraron el chat y no me dejaron trabajar', NULL, NULL, 3, '2022-08-16', 'Raul SORIA'),
(112, 7010, 'Se resetean clave solicitadas al webmail, no se resetean quienes enviaron desde correos no oficiales ni whp, se les solicita enviar como corresponde para poder realizarlo', '', 'vebmail/whp', '', 'se actualizan claves a comercio y compras', '2022-08-16 12:36:28', '2022-08-16 12:37:35', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-16', 'German SANCHEZ'),
(113, 4016, 'Se realiza reunión desde las 8:30 a 10:00 con micaela de sayges, se muestra la forma de creación de usuarios externos para tramites de baja de comercio y de externos en general, ahún inactivo hasta se de aviso.', '', 'sayges', '', 'se realiza reunión y se esperan pruebas en ind. y comercio', '2022-08-16 12:39:42', '2022-08-16 12:40:21', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-16', 'German SANCHEZ'),
(114, 3000, 'no funciona el pdf creator ', '192.168.130.192', '', '', 'configuracion de impresora con pdf creator', '2022-08-16 13:51:01', '2022-08-16 13:51:26', 3, 2001, 29112717, NULL, NULL, NULL, 3, '2022-08-16', 'Lucas SALEME'),
(115, 2001, 'Cecilia Soria de Catastro - Rentas puede navegar en su maquina. No entra a los sistemas', '192.168.100.156', 'Cecilia Soria', '', NULL, '2022-08-16 13:53:20', NULL, 4, 2000, 0, 'Pedido reiterado', NULL, NULL, 2, '2022-08-16', ''),
(116, 3002, 'De los troncos dicen que vinieron a retirar una máquina pero ahora no le deja ingresar a internet \r\n', '192.168.19.176', 'Támula Daniel', '8151', 'Proxy', '2022-08-16 14:04:21', '2022-08-17 08:15:01', 3, 3003, 38101303, NULL, NULL, NULL, 3, '2022-08-16', 'Sonia ROMAN'),
(117, 3002, 'No puede navegar', '', 'Cecilia', '', 'Tenía un antivirus que le hacía caer la conexión', '2022-08-16 14:08:49', '2022-08-16 14:09:21', 3, 3009, 35871182, NULL, NULL, NULL, 3, '2022-08-16', 'Leandro BORQUEZ'),
(118, 4000, 'el profesional envía lo necesario para el alta de usuario', '', 'Maria Florencia Lopez Casado', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-17 08:15:21', '2022-08-17 08:15:43', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-17', 'Nicolas MAURE'),
(119, 4013, 'El profesional solicita el desarchivo del EE-16-2020', '', 'Matias Riveros', '', 'Le informo que los desarchivos se solicitan al área donde se encuentra el expediente.', '2022-08-17 08:18:08', '2022-08-17 08:18:49', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-17', 'Nicolas MAURE'),
(120, 3002, 'De Catastro Rentas una pc no tiene internet ', '19.168.19.176', 'Elba', '', 'al verla ya funcionaba', '2022-08-17 08:47:01', '2022-08-17 11:08:37', 3, 3009, 36768171, NULL, NULL, NULL, 3, '2022-08-17', ''),
(121, 3002, 'El Sistema de Recaudación no imprime los códigos de barra de los boletos (necesita instalarse una fuente) Raúl', '192.168.100.177', 'Nieves', '0', 'instalacion de codigo fuente ', '2022-08-17 08:53:02', '2022-08-17 09:09:10', 3, 2000, 29112717, NULL, NULL, NULL, 3, '2022-08-17', 'Raul SORIA'),
(122, 3004, 'instalacion de Google Earth', '192.168.120.173', '', '', 'instalacion de google', '2022-08-17 09:05:01', '2022-08-17 09:08:58', 3, 3004, 29112717, NULL, NULL, NULL, 3, '2022-08-17', 'Lucas SALEME'),
(123, 3002, 'Abel de Inspectores de Obras, no tiene acceso a Internet. Raúl', '192.168.110.98', 'Abel', '192.168.110.98', 'configuracion de proxy', '2022-08-17 09:34:51', '2022-08-17 09:49:18', 3, 3001, 29112717, NULL, NULL, NULL, 3, '2022-08-17', 'Raul SORIA'),
(124, 4014, 'Mauricio Carceller de Obras privadas nos envía correo donde manifiesta que observa anomalía en el EE-9990-2022. Al investigar, nos damos cuenta que el profesional Miguel Arce inició el expte en mesa de entradas pero con el dni de Emilia pritz (29974477) y está interactuando en un Genus cuando esos usuarios no están habilitados para tal fin. No sabemos como hizo para activar el usuario, por lo tanto procedemos a desactivar el usuario 29974477', '', 'Miguel Arce', '', 'se da aviso a mauricio carceller el proceder administrativo a tener en cuenta, se envía por correo explicando procedimiento actual y futuro', '2022-08-17 10:34:17', '2022-08-17 11:29:17', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-17', ''),
(125, 3000, 'no imprime en word y excel ', '192.168.27.130', '', '', 'instalacion de 405', '2022-08-17 11:26:34', '2022-08-17 11:26:48', 3, 1012, 29112717, NULL, NULL, NULL, 3, '2022-08-17', 'Lucas SALEME'),
(126, 3002, 'PC en Escribanía Municipal con problemas para navegar', '192.168.176.72', '', '', 'Cambio de proxy y configuracion de navegadores', '2022-08-17 11:28:46', '2022-08-17 11:29:32', 3, 1011, 35871182, NULL, NULL, NULL, 3, '2022-08-17', 'Leandro BORQUEZ'),
(127, 2000, 'se cablearon 3 puestos de trabajo nuevos', '', 'Luis Quevedo', '', 'tarea realizada', '2022-08-18 08:35:44', '2022-08-18 08:36:40', 3, 4004, 2000001, NULL, NULL, NULL, 2, '2022-08-18', 'Agente CCTV - Infraestructura'),
(128, 3001, 'De obras privadas electrotecnica piden que vayan a ver la impresora Xerox que esta trabada y no puden trabajar', '', 'Santos', '', 'Se coloco código de activación ', '2022-08-18 08:41:35', '2022-08-18 09:41:59', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-18', ''),
(129, 2000, 'cableado de 17 puestos de trabajo por mudanza de oficina', '', 'Vanina (planificacion)', '', 'tarea realizada', '2022-08-18 08:44:36', '2022-08-18 08:45:21', 3, 3004, 2000001, NULL, NULL, NULL, 2, '2022-08-18', 'Agente CCTV - Infraestructura'),
(130, 3002, 'Marco de Tránsito, no puede acceder a la web https://organismos.sugit.com.ar:2481/ \r\nAntes podía acceder.', '192.168.15.136', 'Marco', '0', 'configuracion de proxy ', '2022-08-18 08:47:26', '2022-08-18 08:56:44', 3, 1004, 29112717, NULL, NULL, NULL, 3, '2022-08-18', ''),
(131, 3002, 'Marco de Tránsito, otra computadora que no puede acceder a la web https://organismos.sugit.com.ar:2481/ ', '192.168.15.102', 'Marco', '0', 'configuracion de proxy ', '2022-08-18 08:58:44', '2022-08-18 09:05:03', 3, 1004, 29112717, NULL, NULL, NULL, 3, '2022-08-18', ''),
(132, 2001, 'reparacion cable de red telefono ip(interno 8270-8225)', '', '', '', 'tarea realizada', '2022-08-18 08:59:21', '2022-08-18 08:59:42', 3, 2000, 2000001, NULL, NULL, NULL, 2, '2022-08-18', 'Agente CCTV - Infraestructura'),
(133, 2001, 'Poliguay- reparacion conectividad rack principal a container de empresa constructora, averiado por traslado de container', '', 'Arquitecta Alejandra', '', 'tarea realizada\r\n', '2022-08-18 09:02:10', '2022-08-18 09:02:40', 3, 1005, 2000001, NULL, NULL, NULL, 2, '2022-08-18', 'Agente CCTV - Infraestructura'),
(134, 4000, 'El profesional envía los datos solicitados', '', 'Carlos Tercero', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-18 09:05:32', '2022-08-18 09:05:59', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-18', 'Nicolas MAURE'),
(135, 4000, 'El profesional envía los datos solicitados', '', 'Patricia Sanchez Valkovic', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-18 09:08:43', '2022-08-18 09:09:04', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-18', 'Nicolas MAURE'),
(136, 3002, 'de ambiente no puede navegar ', '192.168.90.147', '', '', 'configuracion de proxy ', '2022-08-18 09:15:32', '2022-08-18 09:15:51', 3, 3000, 29112717, NULL, NULL, NULL, 3, '2022-08-18', 'Lucas SALEME'),
(137, 3002, 'De la delegación  Bermjo llaman que tiene una impresora Samsung  M371 que no la ven en la pc 192.168.19.176 por lo que no pueden imprimir. ', '192.168.19.176', 'Daniel', '', 'Se reinstalo impresora ', '2022-08-18 10:53:01', '2022-08-18 11:34:59', 3, 4000, 38101303, NULL, NULL, NULL, 3, '2022-08-18', 'Sonia ROMAN'),
(138, 3001, 'De prensa que ayer fueron a arreglar una impresora ahora no la ven el las pc ,  las ip son 192,168.150.92 y .108', '', 'Nicolás', '', 'se desconecto de la red\r\n', '2022-08-18 10:55:54', '2022-08-18 11:56:11', 3, 1003, 36768171, NULL, NULL, NULL, 3, '2022-08-18', 'Sonia ROMAN'),
(139, 3004, 'Marisa de Compras: necesita que le instalen el Nitro en su computadora, el que tiene no la deja editar. Raúl', '192.168.130.89', 'Marisa', '0', 'Ya estaba instalado y funcionando ', '2022-08-18 12:16:00', '2022-08-18 12:57:57', 3, 2001, 38101303, NULL, NULL, NULL, 3, '2022-08-18', 'Raul SORIA'),
(140, 3005, 'LLama Carina Meneguelli del Juagado que necesita trabajar con el siste BOSH para mirar las cámaras y no puede ingresar tambie tiene problemas con otras p.aginas ', '192.168.15.249', 'Carina Meneguelli', '', 'Se instalo programa bosch y navega con normalidad ', '2022-08-18 12:38:50', '2022-08-18 12:53:02', 3, 1004, 38101303, NULL, NULL, NULL, 3, '2022-08-18', 'Sonia ROMAN'),
(141, 4000, 'El profesional solicita alta de usuario', '', 'Guillermo Pelaia', '', 'Le informo cuáles son los requisitos.', '2022-08-19 07:36:25', '2022-08-19 07:36:54', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-19', 'Nicolas MAURE'),
(142, 4000, 'La profesional solicita alta de usuario', '', 'Mirna Andrada', '', 'Le creo usuario y paso los datos de acceso', '2022-08-19 07:42:58', '2022-08-19 08:34:10', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-19', 'Nicolas MAURE'),
(143, 4006, 'Desarrollo:\r\n18/8/2022: se comprueba en ind y comercio que los usuarios no veían los expedientes. se solicitan los usuarios intervinientes y se procede a revisión.\r\n19/8 se agregan roles para prueba al personal del área coordinadora.', '', 'area coord.', '0', 'realizado', '2022-08-19 08:35:46', '2022-08-22 12:00:01', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-19', 'German SANCHEZ'),
(144, 3001, 'De Rentas piden que vayan a ver una impresora Xerox que está haciendo mucho ruido y no saben que hacer ', '', 'Carolina Herrera', '', 'Se solicita a Quatro asistencia y cambio de fusor', '2022-08-19 09:00:29', '2022-08-19 10:37:58', 3, 2000, 35871182, NULL, NULL, NULL, 3, '2022-08-19', 'Sonia ROMAN'),
(145, 3002, 'De tesoreria hay una  pc de la que imprimen pero no pueden scanear', '192.168.130..125', 'Mirian', '', 'Computadora configurada', '2022-08-19 09:27:40', '2022-08-19 11:16:13', 3, 2004, 35871182, NULL, NULL, NULL, 3, '2022-08-19', 'Sonia ROMAN'),
(146, 3004, 'En la Oficina de Proyecto necesita le instalen el programa Revit2020 ', '192.168.120.102', 'Cecilia', '', 'Se instalo el programa solicitado ', '2022-08-19 09:32:03', '2022-08-22 11:19:15', 3, 3004, 38101303, NULL, NULL, NULL, 3, '2022-08-19', 'Sonia ROMAN'),
(147, 3003, 'Del area de finanzas en Contabilidad central llama Laura  por que le dijeron que iban a ir de servicio técnico a buscar su pc. ', '', 'Laura', '', 'Cambio de HDD por SSD. Reinstalación y backup', '2022-08-19 10:13:29', '2022-08-22 14:35:31', 3, 2006, 35871182, NULL, NULL, NULL, 3, '2022-08-19', 'Sonia ROMAN'),
(148, 4013, 'De Rentas reclaman el pedido de coneccion remorta para Pamela Jofre Expediente NE-7997-2022  del 28/05/2022', '', 'Sol Samira', '', 'Dirección de Sistemas:\r\nPor medio de la presente se solicita la instalación de una PC, con el\r\nprograma ANYDESK, para la Agente Municipal perteneciente a la Dirección de Rentas; Jofre\r\nPamela Angélica a los efectos de realizar trabajo Home Office.\r\nDNI: 27.879.070\r\nLegajo: 11772\r\nDomicilio: Martin Rodríguez Nº 121- Barrio Kolton- Dorrego- Guaymallen\r\nCorreo electrónico: pamela.jofre@guaymallen.gob.ar\r\nTeléfono: 261-2045566\r\nServicio de Internet: Claro, Fibra Óptica.', '2022-08-19 10:17:30', '2022-08-19 10:58:33', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-08-19', 'Sonia ROMAN'),
(149, 4001, 'se crean dos usuarios, el tercero no posee legajo, se observa y se responde solicitando decreto.', '', 'vivienda', '', 'terminados esperando el ultimo\r\n', '2022-08-19 10:50:59', '2022-08-22 11:58:19', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-08-19', 'German SANCHEZ'),
(150, 3000, 'Del Area de electrotecnica en el primer piso piden que vayan a ver la impresora Xerox que no pueden ni imprimir ni sacar fotocopias.', '', 'Dario', '', 'Papel atascado', '2022-08-19 10:55:19', '2022-08-22 09:50:00', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-08-19', 'Sonia ROMAN'),
(151, 4000, 'El profesional envía los datos solicitados', '', 'Cristian Bressia', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-19 10:56:06', '2022-08-19 10:56:30', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-19', 'Nicolas MAURE'),
(152, 4000, 'El profesional envía los datos solicitados', '', 'Guillermo Pelaia', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-19 12:52:28', '2022-08-19 12:52:52', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-19', 'Nicolas MAURE'),
(153, 3001, 'Impresora de Desarrollo Economico pide contraseña para continuar imprimendo. ', '192.168.20.15', 'Eugenia Barrera', '2615 16-917', 'configuracion de bandeja ', '2022-08-19 13:06:18', '2022-08-22 08:41:31', 3, 4002, 29112717, NULL, NULL, NULL, 3, '2022-08-19', 'Admin AD'),
(154, 1001, 'Migración de máquina virtual de García Coca a los servidores KVM para alojarla en el DataCenter', '', 'Javier García Coca', '', 'La maquina fue migrada al datacenter y fueron pasado los datos \"filiatorios\" a Javier García, el solicitante.', '2022-08-19 13:15:27', '2022-08-24 19:31:46', 3, 4005, 18079575, NULL, NULL, NULL, 1, '2022-08-19', 'Pedro  GARBARINO'),
(155, 2000, 'Se cableo 1 puesto de trabajo y se agrego un switch que se comparte con red de tesoreria', '', 'Carlos Gatica', '', 'tarea finalizada', '2022-08-19 13:23:03', '2022-08-19 13:23:29', 3, 2003, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(156, 2000, 'Oficina de Notificaciones, Se cablearon 8 puesto de trabajo, se agrego switch 8 bocas', '', '', '', 'Tarea resuelta', '2022-08-19 13:25:37', '2022-08-19 13:26:02', 3, 2003, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(157, 2000, 'Cableado de 5 puestos de trabajo, armado de la red de subdireccion utilizando nano estation para la conectividad  con el edificio principal.. Se preparo tambien rack para instalacion de sistemas de monitoreo', '', 'Franco Granjeto', '', 'tarea teminada', '2022-08-19 13:28:33', '2022-08-19 13:28:59', 3, 3007, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(158, 2000, 'instalacion de 2 puestosa para pc, mas  reconfiguracion de unifi para conectividad wifi', '', 'Alejandro Dutto', '', 'tarea finalizada', '2022-08-19 13:30:30', '2022-08-19 13:30:44', 3, 1012, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(159, 2009, 'instalacion de wifi, equipo unifi', '', 'Alejandro Dutto', '', 'tarea finalizada\r\n', '2022-08-19 13:32:11', '2022-08-19 13:32:24', 3, 1012, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(160, 2000, 'instalacionde 1 puesto de trabajo', '', 'Sandra Vanzo', '', 'tarea finalizada\r\n', '2022-08-19 13:33:55', '2022-08-19 13:34:08', 3, 4001, 2000001, NULL, NULL, NULL, 2, '2022-08-19', 'Agente CCTV - Infraestructura'),
(161, 3003, 'La PC no enciende ', '', 'Maeva Schuster', '2613 8396', 'se coloco un disco ssd', '2022-08-22 08:08:13', '2022-08-22 12:24:34', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-08-22', 'Admin AD'),
(162, 1002, 'Sandra punto digital en su máquina no tiene internet le da la ip 169.254.115.129', '', 'SANDRA FUNES', '', 'Se envió a personal de cableado a verificar conectividad', '2022-08-22 08:29:53', '2022-08-22 12:01:17', 3, 4005, 30839932, NULL, NULL, NULL, 1, '2022-08-22', 'Evelyn CARDENAS'),
(163, 1002, 'Mariana Echeaverrieta dice no tener internet.', '192.168.34.192', 'Mariana Echeaverrieta', '2615920974', 'se soluciono', '2022-08-22 08:36:35', '2022-08-23 08:41:08', 3, 5014, 30839932, NULL, NULL, NULL, 1, '2022-08-22', 'Admin AD'),
(164, 3001, 'De obras privadas velve a llamar Santos porque la imoresora tiene atasco de papel y en el mismo piso Bibiana Di Cesare  pide que vaya un tecnico porque su máquina no enciende y no puede trabajar ', '', '', '', 'PC desenchufada,  y atasco de papel en impresora', '2022-08-22 08:50:15', '2022-08-22 09:49:28', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-08-22', 'Sonia ROMAN'),
(165, 3002, 'Mesa de Entradas no tiene internet\r\nuna ip de referncia es 100.99 pero en ninguna máquina hay internet ', '', 'Flor', '', 'proxy', '2022-08-22 09:20:16', '2022-08-22 09:49:25', 3, 1005, 29112717, NULL, NULL, NULL, 3, '2022-08-22', 'Sonia ROMAN'),
(166, 3002, 'Noemí de Comercio: han trasladado un computadora y necesitan que la conecten. Raúl', '', 'Noemí', '', 'pc cableada', '2022-08-22 09:21:45', '2022-08-22 11:33:29', 3, 2002, 36768171, NULL, NULL, NULL, 3, '2022-08-22', 'Raul SORIA'),
(167, 3002, 'Cecilia Soria de Catastro  dice su pc esta muy lenta  y no le permite abrir aplicaciones', '192.168.10.155', '', '', 'proxy', '2022-08-22 09:38:29', '2022-08-22 09:49:12', 3, 3009, 29112717, NULL, NULL, NULL, 3, '2022-08-22', 'Sonia ROMAN'),
(168, 3001, 'De presa la impresora Xerox traba el primer papel  lo sacan sale arrugado y sigue diciendo  que hay papel trabado  ', '', 'Nicolas', '', 'atasco de papel ', '2022-08-22 09:51:18', '2022-08-22 12:00:31', 3, 1003, 29112717, NULL, NULL, NULL, 3, '2022-08-22', 'Sonia ROMAN'),
(169, 3002, 'Linda de Rentas: Mesa de Entradas y SayGes se demoran en conectarse y terminan saliendo. Esto sucede en varias computadoras. Raúl', '192.168.100.123', 'Linda Quevedo', '0', 'proxy', '2022-08-22 10:00:29', '2022-08-22 12:00:19', 3, 2000, 29112717, NULL, NULL, NULL, 3, '2022-08-22', 'Raul SORIA'),
(170, 3001, 'De Rentas siguen teniedo problemas con la impresora traba el papel', '', 'Carlos Gallo', '', 'atasco de papel\r\n', '2022-08-22 10:07:09', '2022-08-22 10:58:26', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-08-22', 'Sonia ROMAN'),
(171, 7010, 'solicitan reseteo desde defensa al consumidor.\r\nivanna atencio para francisco nuñez', '', 'francisco.nunez', '', 'resuelto', '2022-08-22 12:04:48', '2022-08-22 12:52:59', 3, 1001, 28700618, NULL, NULL, NULL, 4, '2022-08-22', 'German SANCHEZ'),
(172, 4002, 'se pide reasignación de área a Maria alejandra perez', '', 'maria.perez', '', 'Resuelto', '2022-08-22 12:06:39', '2022-08-22 12:53:09', 3, 4004, 28700618, NULL, NULL, NULL, 4, '2022-08-22', 'German SANCHEZ'),
(173, 7010, 'reseteo de clave a susana.dutto pedido nuevamente por mayra lamanuzzi\r\n\r\nmayordomía', '', 'susana dutto', '', 'Resuelto', '2022-08-22 12:11:55', '2022-08-22 12:53:17', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-08-22', 'German SANCHEZ');
INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`, `usuarioCreado`) VALUES
(174, 4013, 'se desincorpora NE- 13388-2022 del EE- 16345-2021, ya que se necesita adjuntar otra documentación y luego incorporar.', '', 'Cecilia Oruez', '', 'resuelto', '2022-08-23 09:17:39', '2022-08-23 09:25:51', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(175, 4000, 'la profesional solicita alta de usuario remoto', '', 'Pilar gavasci', '', 'resuelto', '2022-08-23 09:19:28', '2022-08-23 12:56:52', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-23', 'Nicolas MAURE'),
(176, 4002, 'se activa a jimena pereyra para desvincular el EE 2206 2021 de la NE 6490 2022', '', 'jimena pereyra', '', 'resuelto', '2022-08-23 09:20:11', '2022-08-23 12:57:04', 3, 3002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(177, 3001, 'Claudia del Juzgado: tiene la impresora xerox que no toma el papel.', '', 'Claudia Cola', '0', 'Pedido de asistencia hecho a Quatro', '2022-08-23 09:46:49', '2022-08-24 09:14:00', 3, 1004, 35871182, NULL, NULL, NULL, 3, '2022-08-23', 'Raul SORIA'),
(178, 3004, 'Elizabeth de Comercio, no tiene instalado FireFox y no puede hacer transferencias multiples en sistema de mesa de entradas. Raúl', '192.168.90.176', 'Elizabeth', '0', 'instalacion de navegador ', '2022-08-23 11:38:08', '2022-08-23 12:11:23', 3, 2002, 29112717, NULL, NULL, NULL, 3, '2022-08-23', 'Raul SORIA'),
(179, 4013, 'se desincorpora la NE- 13424-2022 del EE- 337-2021 por pedido de cecilia oruez, error de incorporación', '', 'Cecilia Oruez', '', 'resuelto', '2022-08-23 12:27:10', '2022-08-23 12:57:12', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(180, 4002, 'se da asignación directa a Silvia Fabas - Mesa de Entrada General, por ee-3157-2022 de jefa Florencia mesa de entradas', '', 'silvia fabas', '', 'resuelto', '2022-08-23 12:29:16', '2022-08-23 12:58:07', 3, 1013, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(181, 4000, 'El profesional solicita alta de usuario remoto', '', 'Lucas Gill', '', 'Le informo los datos requeridos', '2022-08-24 07:53:32', '2022-08-24 07:57:16', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Nicolas MAURE'),
(182, 4013, 'El profesional solicita el desarchivo del EE-9348-2022', '', 'Exequiel Pagano', '', 'Le informo que debe comunicarse con el área donde se encuentra el expte para solicitar el desarchivo', '2022-08-24 07:56:15', '2022-08-24 07:56:51', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Nicolas MAURE'),
(183, 4000, 'El profesional solicita alta de usuario remoto', '', 'Eduardo Morales', '', 'Le informo los datos requeridos', '2022-08-24 08:01:33', '2022-08-24 08:01:53', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Nicolas MAURE'),
(184, 4000, 'El profesional solicita alta de usuario', '', 'Walter Alaniz', '', 'Le informo los datos requeridos', '2022-08-24 08:23:00', '2022-08-24 08:23:20', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Nicolas MAURE'),
(185, 3004, 'Alejandra de Planificación: necesita que le instalen alguna aplicación que pase fotos que descarga desde Whatsapp a PDF. Raúl', '192.168.38.118', 'Alejandra Perez', '0', 'Se dejó el convertidor de JPG a PDF en la barra de marcadores del navegador', '2022-08-24 08:48:56', '2022-08-24 09:19:02', 3, 3004, 35871182, NULL, NULL, NULL, 3, '2022-08-24', 'Raul SORIA'),
(186, 1002, 'Desde la playa de secuestro me informan que no tienen WIFI... \r\ndesde el día ayer 4pm', '', 'Andrea', '2613847182', 'Se llamo a ITC estaba apagado el servicio wifi', '2022-08-24 08:51:49', '2022-08-24 08:53:37', 3, 4004, 30839932, NULL, NULL, NULL, 1, '2022-08-24', 'Evelyn CARDENAS'),
(187, 3001, 'Buenos Dias. Del juzgado vial vuelven a llamar porque la impresora que avisaron ayer que tenia problemas sigue con los problemas pero ahora la que está arriba, que tambien es una xerox tiene problemas, ella llama a quatro y no la atienden y necesita que vaya alguien a resolver ese problema. ', '', 'Claudia Cola', '', 'Pedido de asistencia hecho a Quatro', '2022-08-24 08:55:11', '2022-08-24 09:14:26', 3, 1004, 35871182, NULL, NULL, NULL, 3, '2022-08-24', 'Sonia ROMAN'),
(188, 3003, ' De Gobiero llaman porque hay un monitor que no conecta con la pc creen que es el cable, pide que vaya un técnico.', '', 'Gerardo', '', 'cambio de hdmi', '2022-08-24 08:58:27', '2022-08-24 10:25:44', 3, 1005, 29112717, NULL, NULL, NULL, 3, '2022-08-24', 'Sonia ROMAN'),
(189, 3001, 'De Rentas vuelven a llamar por la xerox que esta cerca de publicidad y propaganda  no toma de 1 papel si de muchos.', '', 'Graciela Fernandez', '', 'Pedido de asistencia hecho a Quatro    \r\n', '2022-08-24 09:01:05', '2022-08-24 13:05:54', 3, 2000, 35871182, NULL, NULL, NULL, 3, '2022-08-24', 'Sonia ROMAN'),
(190, 4002, 'se escribe al delegado el siguiente pedido:\r\n\r\nBuen día, solicito si puede enviarnos el decreto de posesión del cargo de delegado de belgrano a fin de asentar los cambios en el sistema de expedientes Sayges, to pedido se debe a que figura como delegado de buena nueva y se duplica con la nueva delegada de buena nueva la cual ya presentó su decreto.\r\nSin mas saludo atte. -', '', 'carlos cobos', '', 'enviado', '2022-08-24 10:07:26', '2022-08-24 11:57:15', 3, 5003, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(191, 4002, 'Cambio de firma segun nuevo decreto para fernanda sabbatini', '', 'fernanda sabbatini', '', 'realizado', '2022-08-24 10:08:59', '2022-08-24 11:57:33', 3, 5011, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(192, 4013, 'Desincorporacion solicitada por viviana cadile, via whatsapp.\r\n\r\nee-14487-2022\r\nMotiva la solicitud un pedido de compras quien le pide le agreguen la nota el expediente original, tomando la acción de luego de la desvinculación eliminar dicha pa.\r\nexpediente en poseción de olmos (de su misma uo)', '', 'viviana cadile', '', 'realizado', '2022-08-24 10:12:37', '2022-08-24 11:58:28', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(193, 4000, 'El profesional solicita alta de usuario remoto', '', 'Daniel Lopez', '', 'El profesional envía lo requerido, le creo usuario y paso datos de acceso', '2022-08-24 11:21:16', '2022-08-25 07:43:43', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Nicolas MAURE'),
(194, 4013, 'mayordomia\r\nse asiste remotamente a susana.dutto para ver problema.\r\nconclusión: no había problema\r\nusaba una clave que creía que era, al conectarnos se pudo constatar el error.', '', 'susana dutto', '', 'resuelto', '2022-08-24 11:56:51', '2022-08-24 11:59:26', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(195, 4013, 'fernanda sabbatini solicita asistencia remota visto que no tomaba la firma, se asiste con ip 192.168.28.186 y se comprueba que tiene tildada la opción de token, se destilda y se solicita intentar nuevamente dando como resultado una firma existosa.', '', 'fernanda sabbatini', '', 'resuelto', '2022-08-24 12:01:57', '2022-08-24 12:04:57', 3, 5011, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(196, 7010, 'catastro/rentas: se resetea clave de luis vargas vista la necesidad de cambio por cambio de pc.', '', 'luis vargas', '', 'resuelto', '2022-08-24 12:04:31', '2022-08-24 12:05:13', 3, 3009, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(197, 4012, 'Se habla personalmente con las agentes de intendencia para explicar el accionar frente a los expedientes externos para su mejor uso y trazabilidad.  Se explica el inconveniente de usar asignación directa para esos casos y sus posibles problemas.', '', 'laura dantonio y cia', '', 'realizado 10:30 a 11:00', '2022-08-24 12:11:08', '2022-08-24 12:11:39', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-08-24', 'German SANCHEZ'),
(198, 7005, 'Planificacion no puede reproducir filmacion entregada por seguridad interna.', '', 'Cintia Brucky', '', 'solucionado', '2022-08-24 13:38:18', '2022-08-30 08:26:18', 3, 3004, 2000001, NULL, NULL, NULL, 7, '2022-08-24', 'Admin AD'),
(199, 3003, 'Problemas con el mouse inalambrico', '', 'ALICIA ZARATE', '', 'configruacion de tv', '2022-08-24 13:40:56', '2022-08-26 08:30:11', 3, 1007, 29112717, NULL, NULL, NULL, 3, '2022-08-24', 'Admin AD'),
(200, 4002, 'Habilitarla para crear NE y EE a Maeva.shuster', '', 'Maeva Schuster', '', 'permisos otorgados', '2022-08-24 13:41:48', '2022-08-25 07:36:01', 3, 1005, 29148522, NULL, NULL, NULL, 4, '2022-08-24', 'Admin AD'),
(201, 3005, 'De mesa de entradas llama por que la pc se traba en todos los programas', '192.168.100.103', 'Analía', '', 'era el proxy del navegador', '2022-08-24 13:54:59', '2022-08-25 10:19:57', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-08-24', 'Sonia ROMAN'),
(202, 1002, 'Implementación de programa de rescate de relojes biométricos.\r\nSe solicita, por la gente de Horizont, una script que rescate los registros de marcaciones de los relojes biométricos de todo el municipio', '', 'Cesar Luzzi', '', 'Se implementa una script en Python que, mediante una librería de zkteco rescata los registros de los relojes y los transfiere a un filesystem compartido con la VM Windows de Horizont donde pueden ser procesados por el sistema de personal. De esta forma queda terminada la tarea. Ya se informó a Cesar Luzzi quien va a hacer las pruebas de procesar la información en su base de datos.', '2022-08-24 19:33:48', '2022-08-24 19:35:37', 3, 4005, 18079575, NULL, NULL, NULL, 1, '2022-08-24', 'Pedro  GARBARINO'),
(203, 4013, 'El profesional solicita los datos de acceso a sayges ya que no los recuerda', '', 'Luis Luna', '', 'Le informo que el mail declarado en su usuario no coincide con el que manda ahora. Le pido que nos adjunte imagen del dni para validad identidad.', '2022-08-25 07:37:06', '2022-08-25 07:37:52', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-25', 'Nicolas MAURE'),
(204, 4000, 'El profesional solicita alta de usuario remoto', '', 'Lautaro Rios', '', 'Le informo los requisitos necesarios', '2022-08-25 07:59:03', '2022-08-25 07:59:22', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-25', 'Nicolas MAURE'),
(205, 4000, 'El profesional solicita alta de usuario y envía la documentación', '', 'Diego Villalba', '', 'Le creo usuario y paso datos de acceso.\r\nNota: no le otorgo permiso para iniciar expedientes porque es Lic. en higiene y seguridad', '2022-08-25 08:09:57', '2022-08-25 08:10:53', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-25', 'Nicolas MAURE'),
(206, 3005, 'Alejandra de Planificación Vial: ayer le instalaron el Nitro (por solicitud de ella) pero no puede convertir archivos jpg a Pdf para subir las multas de tránsito. Necesita ver como lo hacen para subir los arhivos a SayGes. Raúl', '192.168.38.118', 'Alejandra Perez', '0', NULL, '2022-08-25 08:27:39', NULL, 4, 4004, 0, 'Se ingreso y por chat informaron que ya estaba solucionado el problema ', NULL, NULL, 3, '2022-08-25', 'Raul SORIA'),
(207, 3002, 'De rentas llaman porque 2 máquinas la de Natalia Barrionuevo y la de Nieves de defunciones no tiene internet y no les da ip.', '', '', '', 'se colgo el switch', '2022-08-25 08:42:32', '2022-08-25 11:21:33', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-08-25', 'Sonia ROMAN'),
(208, 7016, 'Colocar telefono IP en Personal HCD.', '', '', '', 'Equipo colocado', '2022-08-25 08:46:27', '2022-09-01 11:28:56', 3, 10000, 38101303, NULL, NULL, NULL, 3, '2022-08-25', 'Admin AD'),
(209, 4000, 'El profesional solicita alta de usuario', '', 'Lucas Gill', '', 'le creo el usuario y paso datos de acceso', '2022-08-25 08:54:50', '2022-08-25 08:55:12', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-25', 'Nicolas MAURE'),
(210, 4000, 'La profesional envía los datos requeridos', '', 'Silvana Roberti', '', 'creo el usuario y paso los datos de acceso', '2022-08-25 08:59:26', '2022-08-25 08:59:47', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-25', 'Nicolas MAURE'),
(211, 3002, 'Del juzgado vial dice que cuando manda a imprimir del sistema de jat en vez imprimir le aparece la carpeta de escritorio para guardar  ', '192.168.40.15.83', 'Marcos', '', 'Se reconfiguró', '2022-08-25 09:20:00', '2022-08-25 10:45:33', 3, 1004, 35871182, NULL, NULL, NULL, 3, '2022-08-25', 'Sonia ROMAN'),
(212, 3002, 'De Apremio piden que instalen el la pc el ANY DESCK  para poder trabajar de su casa', '192.1968.100.80', 'Belen Aceña', '', 'se instalo el programa solicitado ', '2022-08-25 09:34:52', '2022-08-25 10:35:19', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-08-25', 'Sonia ROMAN'),
(213, 1002, 'Carla Dominguez de Ambiente no puede ingresar al sistema de stock', '192.168.45.180', 'Carla Dominguez', '', 'Problemas con la configuración del proxy, ya fue solucionado', '2022-08-25 09:58:49', '2022-08-25 10:46:06', 3, 3008, 30839932, NULL, NULL, NULL, 1, '2022-08-25', 'Evelyn CARDENAS'),
(214, 3002, 'La Directora necesita subir un video a Sayges', '', 'Cintia Brucky', '', 'Se comprimió el archivo en partes para que pudiera ser cargado', '2022-08-25 10:46:18', '2022-08-25 10:46:42', 3, 3004, 35871182, NULL, NULL, NULL, 3, '2022-08-25', 'Leandro BORQUEZ'),
(215, 3002, 'De rentas llaman porque 2 máquinas la de Natalia Barrionuevo y la de Nieves de defunciones no tiene internet y no les da ip. Repiten el mismo problema. Raúl', '', 'Nieves y Natalia Barrionuevo', '', 'reinicio de switch', '2022-08-25 11:38:45', '2022-08-26 13:37:04', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-08-25', 'Raul SORIA'),
(216, 3003, 'De Mediacion la maquina de Melani no enciende ya han probado todo y no prende necesitan a alguien urgente', '', 'Pipi', '', 'corte de corriente en la fuente apretada x el mueble', '2022-08-25 11:39:36', '2022-08-25 12:11:58', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-08-25', 'Sonia ROMAN'),
(217, 3002, 'Cuando quieren generar un boleto en infogov se cierra la aplicación', '192.168.16.191', '', '', 'Problema de configuración de formato de fecha y hora', '2022-08-25 12:01:57', '2022-08-25 12:11:22', 3, 5002, 35871182, NULL, NULL, NULL, 3, '2022-08-25', 'Leandro BORQUEZ'),
(218, 3003, 'El monitor no tiene imagen. Jimena dice que es el cable HDMI', '', 'Jimena Leon', '2612 5524', 'Se coloco el cable en la placa de video ', '2022-08-25 13:17:43', '2022-08-25 13:32:56', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-08-25', 'Admin AD'),
(219, 4000, 'El profesional envía los datos solicitados', '', 'Lautaro Rios Marziali', '', 'Creo el usuario y le paso los datos de acceso', '2022-08-26 08:33:09', '2022-08-26 08:33:31', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-26', 'Nicolas MAURE'),
(220, 3003, 'Del  area de jubilaciones del cuarto piso un monitor no enceinde', '', 'Claudia Montenegro', '', 'se conecto el cable vga ', '2022-08-26 08:40:32', '2022-08-26 08:48:01', 3, 2003, 38101303, NULL, NULL, NULL, 3, '2022-08-26', 'Sonia ROMAN'),
(221, 3001, 'no pueden imprimir ', '', '', '', 'configuracion', '2022-08-26 08:46:34', '2022-08-26 09:45:45', 3, 5000, 29112717, NULL, NULL, NULL, 3, '2022-08-26', 'Lucas SALEME'),
(222, 3003, 'No tiene internet en la pc', '', 'Laura Dántonio', '2615156138', 'se le cambio la pc, funcionaba demasiado mal', '2022-08-26 08:47:01', '2022-08-26 13:36:40', 3, 1008, 36768171, NULL, NULL, NULL, 3, '2022-08-26', 'Admin AD'),
(223, 4013, 'se desincorpora ne-9100-2022 del ee-9637-2022 pedido por cecilia oruez - ind. y comercio', '', 'Cecilia Oruez', '', 'desincorporado', '2022-08-26 09:23:39', '2022-08-26 09:42:05', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(224, 1002, 'De  Obras privadas necesitan en forma urgente se le actulicen los valores del sistema de aforos con la actualización de la UTM que actualmente es de 9,50 .\r\n Las máquinas  donde lo  se debe actualizar son 110.89 y 110.93 ', '', 'Santos', '', 'El problema no es el sistema de aforos, sino una planilla excel que usan para hacer un aforo manual, que tiene la utm protegida, para que no puedan cambiarla.\r\nYa fue actualizado el valor en las dos máquinas que solicitaron.', '2022-08-26 09:24:50', '2022-08-26 12:08:27', 3, 3001, 18079575, NULL, NULL, NULL, 1, '2022-08-26', 'Sonia ROMAN'),
(225, 4016, 'Se realizan consultas del funcionamiento y de algunos detalles que ocasionan dudas en el accionar de mesa de entradas. Realizada virtualmente 20 min. \r\nSe explica como impactan los incorporados de un ne a un ee generado en mesa de entradas.', '', 'florencia /mesa de entradas', '', 'se acuerdan formas de proceder', '2022-08-26 09:26:57', '2022-08-26 09:42:38', 3, 1013, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(226, 7010, 'se resetea a pedido de mauricio cappa la clave de paque.automotor@guaymallen.gob.ar', '', 'mauricio cappa', '', 'se resetea y da aviso via whp', '2022-08-26 09:35:27', '2022-08-26 09:42:58', 3, 3006, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(227, 7013, 'Se traslada de UO a veronica.quiroga de padrón de extranjeros a cultura.\r\nSe recibe por mail resol. de traslado ', '', 'veronica quiroga', '', 'resuleto y avisado', '2022-08-26 09:41:28', '2022-08-26 09:43:10', 3, 4003, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(228, 7010, 'se asiste a claudio peralta para evitar reseteo de clave, se explica como proceder.\r\n', '', 'claudio peralta', '0', 'la persona estaba colocando @guaymallen.gob.ar en el usuario sayges', '2022-08-26 09:44:29', '2022-08-26 09:45:26', 3, 2000, 29148522, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(229, 4007, 'Se comiezan algunas pruebas del sistema de desarrollo 14.6.1\r\nse encuentran detalles:\r\n\r\nGermán: cuando se crea un expediente genus desde usuario profesional (externo) al adjuntar un archivo y pedir elejir tipo, no aparecen \"Tipos\" para seleccionar, no dejando adjuntar.\r\nGermán: otro detalle es que si cambio el cuil, colocando uno invalido aparece un cartel rojo que el cuil es invalido, pero continúa aparece el cartel de [se iniciará un tramite electrónico si/no]\r\n\r\nse envian al grupo de genus', '', 'micaela martinez', '', 'accionando', '2022-08-26 10:15:43', '2022-08-26 11:33:44', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(230, 4004, 'sistema de industria y comercio: se empiezan algunas pruebas para verificar y dar el ok para iniciar pruebas en las primeras tareas de ind. y com.\r\nse charla en el whp con todos por la actualización', '', 'sayges desarrollo', '', 'realizado - continúa luego', '2022-08-26 10:31:09', '2022-08-26 11:34:11', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(231, 3002, 'Nieves de defunciones nercesita compartir un archivo que es de uso interno que esta en esl escritorio de su maquina y se llama \"Pases Buevos 2017\"  ip 192.168.100.177 con las ip 192.168.100.62 y 192.168.111', '', 'NIeves', '', 'Se compartieron los archivos solicitados ', '2022-08-26 10:54:55', '2022-08-29 10:08:13', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-08-26', 'Sonia ROMAN'),
(232, 3001, 'Nicolas de Prensa tiene problemas con la impresora Xerox, arruga el papel o lo rompe y lo hace cada 2 o 3 hojas. Es de suma importancia porque estan imprimiendo continuamente a los medios de comunicación. Raúl', '', 'Nicolas', '0', 'Pedido de asistencia hecho a Quatro    \r\n', '2022-08-26 11:17:34', '2022-08-26 11:26:46', 3, 1003, 35871182, NULL, NULL, NULL, 3, '2022-08-26', 'Raul SORIA'),
(233, 4004, 'redmine 2937\r\nDescripción:\r\n1) Aparente error: Ingresando con nuestro usuario externo Profesional: Cambio el cuil colocando uno erróneo(para probar) y aparece un cartel rojo que el cuil es invalido, pero continúa procesando y aparece el cartel de [se iniciará un tramite electrónico si no] tapando el cartel de error.\r\n2)Probable cambio: Al crear una pa de genus aparece un cartel de encuesta que contiene un link que direcciona a google forms de ATM. (se propone reemplazar)si se crea un nuevo form compartir previamente con Leila Guizzardi.\r\n3) Observación: dentro del serv. de desarrollo cuando se crea un expediente genus desde usuario profesional (externo) al adjuntar un archivo y pedir elejir tipo, no aparecen \"Tipos\" para seleccionar, no dejando adjuntar. (en la versión anterior teníamos la opción otros).', '', 'micaela martinez', '', 'cargada', '2022-08-26 11:33:24', '2022-08-26 11:34:32', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(234, 1002, 'PC sin internet nuevamente. Sale de IP 127.0.0.1', '127.0.0.1', 'Gabriela Giacovazzo', '2612 1651', NULL, '2022-08-26 11:45:33', NULL, 5, 3006, 0, NULL, 'Cable desconectado', '2022-08-26 13:07:56', 1, '2022-08-26', 'Admin AD'),
(235, 4000, 'El profesional solicita alta de usuario remoto', '', 'Edgardo Chavez', '', 'Le informo los datos necesarios', '2022-08-26 11:52:04', '2022-08-26 11:52:26', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-26', 'Nicolas MAURE'),
(236, 7013, ' Se elimina la carpeta \"cargo de y \"retenidos\" de Sec. gobierno y se agrega la \"ordenanzas y declaraciones\" - visible', '', 'Secretaría de Gobierno', '', 'creado', '2022-08-26 12:18:06', '2022-08-26 12:18:21', 3, 1005, 28700618, NULL, NULL, NULL, 4, '2022-08-26', 'German SANCHEZ'),
(237, 3004, 'Instalar adobe photoshop', '192.168.150.66', 'Candela Lembo', '2615 7651', 'instalado', '2022-08-26 13:07:32', '2022-08-26 13:36:15', 3, 1008, 36768171, NULL, NULL, NULL, 3, '2022-08-26', 'Admin AD'),
(238, 3002, 'No puede escanear desde la Xerox B405', '', 'Angie Yañez', '', 'Reconfigurado', '2022-08-26 13:15:23', '2022-08-26 13:15:34', 3, 1008, 35871182, NULL, NULL, NULL, 3, '2022-08-26', 'Leandro BORQUEZ'),
(239, 4013, 'El profesional solicita información sobre un expte Genus, EE-12183-2022', '', 'Javier Silva', '', 'Le informo en qué situación se encuentra', '2022-08-29 08:11:14', '2022-08-29 08:11:41', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-29', 'Nicolas MAURE'),
(240, 4000, 'El profesional envía los datos solicitados', '', 'Gerardo Lopez', '', 'Le creo usuario y paso datos de acceso', '2022-08-29 08:19:21', '2022-08-29 08:19:43', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-29', 'Nicolas MAURE'),
(241, 3005, 'Sistema Denwa no funcionando en una PC del call center', '192.168.48.185', 'Pablo Nuñez', '2616531404', 'no tiene el programa denwa,tiene el microsip..y abria ', '2022-08-29 08:49:33', '2022-08-29 09:45:40', 3, 5033, 36768171, NULL, NULL, NULL, 3, '2022-08-29', 'Admin AD'),
(242, 4017, 'creación de cuenta webmail para mauro.dominguez (no posee sayges hasta el momento)', '', 'mauro dominguez', '', 'creado', '2022-08-29 09:06:34', '2022-08-29 09:08:42', 3, 4004, 28700618, NULL, NULL, NULL, 4, '2022-08-29', 'German SANCHEZ'),
(243, 4014, 'Se revisa y comprueba que está impactado el cambio de la solicitud realizada #2937 ', '', 'sayges', '', 'realizado', '2022-08-29 09:08:28', '2022-08-29 09:10:50', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-29', 'German SANCHEZ'),
(244, 1002, 'Sin conexión playa de Secuestro', '', 'Andrea', '2613847182', 'Se hizo lo que se debia hacer\r\n', '2022-08-29 09:13:49', '2022-09-01 07:46:26', 3, 5027, 18079575, NULL, NULL, NULL, 1, '2022-08-29', 'Evelyn CARDENAS'),
(245, 1002, 'Intermitencia en la conexión. Terminal ', '192.168.46.192', 'Luciana Tello', '..', 'Ya se soluciono desde ITC', '2022-08-29 09:15:43', '2022-08-31 10:59:01', 3, 1002, 30839932, NULL, NULL, NULL, 1, '2022-08-29', 'Evelyn CARDENAS'),
(246, 3002, 'De mesa entradas llaman porque no pueden trabajar por lo lenta que están las máquinas, le es imporsible habrir alguna página ', '', 'Silvia', '', 'configuracion del proxy', '2022-08-29 09:27:34', '2022-08-29 10:04:33', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(247, 3002, 'Una arquitecta de obras no tiene internet', '192.168.120.112', 'Anita', '', 'proxy', '2022-08-29 09:29:03', '2022-08-29 09:43:06', 3, 3000, 29112717, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(248, 3002, 'De comercio llaman porque una pc esta muy lenta no le permitecargar la aplicaciones pide que alguien se acerque', '192.168.90.65', 'Marta', '', 'configuracion de proxy', '2022-08-29 09:34:41', '2022-08-29 09:44:01', 3, 2002, 36768171, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(249, 4013, 'La profesional manifiesta que no puede solicitar inspección porque le dice que ya hay una en curso.', '', 'Laura Piñeiro', '', 'Alejandro Lecerassi dice que lo pasa a programación y que el se va a comunicar con la profesional para avisarle que está resuelto', '2022-08-29 09:42:37', '2022-08-29 12:41:07', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-29', 'Nicolas MAURE'),
(250, 3002, 'No tiene internet', '', 'Horacio', '', 'Se cambio cable de red ', '2022-08-29 10:36:15', '2022-08-29 10:37:32', 3, 2004, 38101303, NULL, NULL, NULL, 3, '2022-08-29', 'Leandro BORQUEZ'),
(251, 3002, 'de defensa de consumido no puede entrar al SasyGers  le dijeron wque entrara por chrome pero no puede trabar ke sujerí el momozilla pero dice que se queda cargando y no pasa nada ', '192.168.90.153', 'Facundo', '', 'No tenía las excepciones en el proxy', '2022-08-29 10:42:12', '2022-08-29 10:53:05', 3, 1001, 35871182, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(252, 3002, 'Funciona muy mal internet se corta y vuelve y esta muy lento.', '192.168.150.184', 'Angi', '', 'proxy', '2022-08-29 10:54:38', '2022-08-29 13:49:18', 3, 1008, 29112717, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(253, 3003, 'Delegacion Dorrego solicita que actualicen las pc´s, reparen el cpu de una de las maquinas y un cable de video dañado. Para mas info ver la NE-13843-22 (Programen para ir a la Delegacion)', '', 'Norma Hut', '', 'cambio de disco hdd a ssd', '2022-08-29 11:25:36', '2022-09-05 09:09:53', 3, 5009, 29112717, NULL, NULL, NULL, 3, '2022-08-29', 'Admin AD'),
(254, 1002, 'De la Dirección de Obras Privadas, intentan ingresar al sistemas de stock y NO pueden ingresar a la página.\r\nhttp://http://compras.guaymallen.gob.ar:1000\r\n', '192.168.110.132', 'Obras Privadas', '8258', 'Error en las excepciones del proxy', '2022-08-29 11:44:55', '2022-08-31 10:58:35', 3, 3001, 30839932, NULL, NULL, NULL, 1, '2022-08-29', 'Monica LIVOLSI'),
(255, 3003, 'Buenos días, una PC de Salud Laboral, no enciende. Y no se pueden atender al público. Necesitan urgente que alguien se acerque y resuelva el problema.', '', '', '8311', 'se ordenaron los cable de alimentación de la pc ', '2022-08-29 12:18:43', '2022-08-29 12:55:15', 3, 4007, 38101303, NULL, NULL, NULL, 3, '2022-08-29', 'Monica LIVOLSI'),
(256, 3002, 'Intentan entrar por el mozilla al SayGes y solo salen letras ', '192.168.110.106', 'Rodrigo', '', 'Se instalo Firefox y se coloco regla de proxy ', '2022-08-29 13:21:56', '2022-08-29 13:48:19', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(257, 3002, 'Eugenia de desarrollo Economico necesita urgente usar Sayges y no lo puede hacer porque  se le sale del sistema', '192.168.20.129', 'Eugenia', '', 'Intentaba entrar por el enlace público. Lo modifiqué por la IP del servidor', '2022-08-29 13:42:03', '2022-08-29 13:47:27', 3, 4002, 35871182, NULL, NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(258, 3001, 'Del Pascual Lauriente necesitan imprimir y la impresora esta como atascada y no imprime necesitan un técnico.', '', 'Carolina Ruiz', '', NULL, '2022-08-29 13:44:19', NULL, 4, 4003, 0, 'no han vuelto a reclamar\r\n', NULL, NULL, 3, '2022-08-29', 'Sonia ROMAN'),
(259, 1002, 'Generar archivo para OSEP a pedido de Matias Cacace. Por inconvenientes en la generación la gente de OSEP pidió el archivo nuevamente, como Matías está de licencia me pidió que lo genere y se lo envie para él remitirlo a OSEP', '', 'OSEP y Matías Cacace', '', 'El archivo fue generado y remitido a Cacace.', '2022-08-29 18:41:16', '2022-08-29 18:41:55', 3, 2003, 18079575, NULL, NULL, NULL, 1, '2022-08-29', 'Pedro  GARBARINO'),
(260, 4000, 'El profesional solicita alta de usuario remoto', '', 'Joshua Villarreal', '', 'Le informo los datos requeridos.', '2022-08-30 07:54:27', '2022-08-30 07:55:06', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-30', 'Nicolas MAURE'),
(261, 4002, 'Se coloca al usuario leandro.picon, perteneciente a la U.O. \"DIR. OBRAS MUNICIPALES - PERSONAL Y RRHH como supervisor de ambas, pedido realizado por helvio grili por correo', '', 'leandro.picon', '', 'realizado\r\n', '2022-08-30 07:59:07', '2022-08-30 07:59:25', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(262, 7013, 'Se desincorpora la ne-13084-2022 del ee14293-2021 a pedido de Viviana Cadile por correo\r\n', '', 'viviana cadile', '', 'realizado', '2022-08-30 08:02:47', '2022-08-30 08:03:07', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(263, 3005, 'Buen dia chicos de obras privadas necesitan que vayan urgente porque aye fuerona arreglar los importes de LA UTM para los aforos pero ahora no suma a las 10 vienen los profesionales a buscarlos para pagar.  Además tienen  dicen que desde ayer que se corto SayGes no puden imprimir.', '', 'Santos', '', 'Finalizado', '2022-08-30 08:50:57', '2022-09-01 11:32:09', 3, 3001, 41191664, NULL, NULL, NULL, 3, '2022-08-30', 'Sonia ROMAN'),
(264, 4004, 'se confinuan pruebas en cambios realizados según informe redmine', '', 'micaela martinez', '', 'realizado', '2022-08-30 09:14:09', '2022-08-30 11:38:00', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(265, 3001, 'El Sub Director de Comercio, tiene problemas con el scaner de la impresora. No pueden trabajar con el scaner y solucionar los problemas de la oficina. Necesitan que se acerquen a solucionarlo.', '', '', '8142', 'Se reemplazo tonner ', '2022-08-30 09:35:57', '2022-08-30 09:54:51', 3, 2002, 38101303, NULL, NULL, NULL, 3, '2022-08-30', 'Monica LIVOLSI'),
(266, 4016, 'se acuerda reunión con garbarino para ver como proceder con turnero (problema de tiempo para entregar el ticket)', '', 'pedro, german s y nico', '', 'se comienzan pruebas 6/6/22', '2022-08-30 09:49:50', '2022-09-06 09:54:06', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(267, 4013, 'Asistencia para romper relación de una PA anexada.', '', 'marcela werkalec', '', 'realizado', '2022-08-30 09:51:38', '2022-08-30 10:14:01', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(268, 3001, 'Cristina de Defensa del Consumidor, tiene trabada la impresora con papel. Raúl', '', 'Cristina', '', 'atasco de papeliño sacadiño', '2022-08-30 09:53:53', '2022-08-30 10:26:37', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-08-30', 'Raul SORIA'),
(269, 3002, 'Lidia de Defunción cuando quiere acceder a un archivo compartido le pide: Nombre de Usuario.\r\nIP pc Lidia 192.168.100.62\r\nIP pc propietario 192.168.100.177', '192.168.100.62', 'Lidia', '0', 'Se agrego el compartido que necesitaba el usuario ', '2022-08-30 10:04:31', '2022-08-30 10:07:23', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-08-30', 'Raul SORIA'),
(270, 3000, 'Matias Fernandez (HCD) necesita le instalen el scanner en su pc. Ya tiene el scanner en la oficina.', '', 'Matias Fernandez', '', NULL, '2022-08-30 10:32:51', NULL, 4, 10000, 0, 'las veces q fue emanuel, no lo dejan trabajar\r\n', NULL, NULL, 3, '2022-08-30', 'Admin AD'),
(271, 7013, 'solicitud de planif.: ee-12567-2021 necesitan activar tarea recurso \"Inactiva\" (factibilidad de obra).\r\n5/9/22 se recuerda a alejandro para activar.', '', 'planificación / alejandro lecerassi', '', 'se realiza pase a claudia navarrete 9:30 hs.', '2022-08-30 10:45:58', '2022-09-05 09:33:47', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(272, 1002, 'Llaman varias personas del juzgado  anda muy lento y mal internet y no pueden trabajar con el sistema JAT', '', 'PAULA DE MIGUEL', '', 'Se bloquearon conexiones a NVR para probar el consumo de ancho de banda y descartar problemas de conectividad, se realiza monitoreo de consumo para implementar nuevas soluciones ', '2022-08-30 12:04:00', '2022-08-31 10:57:59', 3, 1004, 30839932, NULL, NULL, NULL, 1, '2022-08-30', 'Sonia ROMAN'),
(273, 7014, 'se desarchiva listado de tesoreria enviado por marina al whp:\r\nee863-22\r\nee864-22\r\nee865-22\r\nee6746-22\r\nee7034-22\r\nee8759-22\r\nee8755-22\r\nee8758-22\r\nee8760-22\r\nee8757-22\r\nee13842-22', '', 'marina sosa', '', 'realizado', '2022-08-30 12:25:40', '2022-08-30 12:31:54', 3, 2004, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(274, 7014, 'se desarchiva ne-12620-2022 a pedido de eliana.bertani para trabajarlo', '', 'eliana bertani', '', 'realizado\r\n', '2022-08-30 12:31:38', '2022-08-30 12:32:04', 3, 5029, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(275, 4013, 'se solicita asistencia para romper relación desde el concejo deliberante (alejandro.mercuri) a fin de desvincular pa. se corrobora que ya posee permisos y se explica via whp hasta lograr realizarlo hora: 9:15hs', '', 'alejandro mercuri', '', 'resuelto', '2022-08-30 12:39:28', '2022-08-30 12:39:42', 3, 10000, 28700618, NULL, NULL, NULL, 4, '2022-08-30', 'German SANCHEZ'),
(276, 7013, 'Planificación solicita que se deshabilite el usuario beatriz.toledo, legajo 8480.', '', 'Beatriz Toledo', '', 'Se procede a poner como inactivo.', '2022-08-30 12:53:47', '2022-08-30 12:54:17', 3, 3004, 29148522, NULL, NULL, NULL, 4, '2022-08-30', 'Nicolas MAURE'),
(277, 7013, 'cambio de firma según procedimiento administrativo a cargo de la Municipalidad', '', 'Intendencia Ejecutivo/legislativo', '', 'realizado en conjunto', '2022-08-31 09:00:34', '2022-08-31 09:03:15', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-08-31', 'German SANCHEZ'),
(278, 3006, 'Me llaman de Secretaría de Gobierno, que una pc no tiene conexión. Si pueden subir URGENTE\r\n', '', 'Gonzalo Barrera', '333', 'configurar proxy', '2022-08-31 09:00:52', '2022-08-31 09:37:02', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-08-31', 'Evelyn CARDENAS'),
(279, 3001, ' De Mediacion en la calle Benavente donde esta Pipi la impresora xerox no anda porque dice que tiene un papel atascado y no encuentran ningun papel', '', '', '', 'despapelado destrabado', '2022-08-31 09:22:09', '2022-08-31 09:52:07', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-08-31', 'Sonia ROMAN'),
(280, 3002, 'Necesita le instalen el Nitro para trabajar los pdf', '192.168.110.127', 'Ignacio Lopresti', '', 'Nitro instalado', '2022-08-31 09:27:06', '2022-08-31 09:51:37', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-08-31', 'Sonia ROMAN'),
(281, 3002, 'Cuandio quiere imprimir no imprime y si busca la impresora no esta ', '192.168.110.106', 'Rodrigo', '', 'Reinicié el servicio de cola de impresión', '2022-08-31 09:28:56', '2022-08-31 10:01:02', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-08-31', 'Sonia ROMAN'),
(282, 4016, 'En el día de la fecha tuvimos una reunión con Alejandro Ortiz de Comercio y Germán Montenegro. Asunto, turnos online para \"curso manipulación de alimentos\"', '', '', '', 'Quedamos en que el lunes 05-09-2022 comenzamos el relevamiento en Bromatología', '2022-08-31 10:49:03', '2022-08-31 10:55:29', 3, 2002, 29148522, NULL, NULL, NULL, 4, '2022-08-31', 'Nicolas MAURE'),
(283, 4015, 'se crea petición: Falla de servicio #2957\r\n\r\nError en buscador dentro de Organigrama.', '', 'micaela martinez', '', 'listo para seguir en redmine, se avisa a micaela para accionar', '2022-08-31 10:56:21', '2022-08-31 10:56:52', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-31', 'German SANCHEZ'),
(284, 4017, 'Agregar carpeta en Direccion de Sistemas llamada \"VARIOS\" - No visible', '', 'Leila Guizzardi', '', 'Se crea carpeta', '2022-08-31 11:04:00', '2022-08-31 11:40:26', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-31', 'Admin AD'),
(285, 7015, 'Según NE-13545-22, la Direccion de Obras Privadas solicita la baja de 3 monitores que en este momento se encuentran en Patrimonio. Ver si los mismos se encuentran en condiciones de irreparabilidad para continuar con la baja.', '', '', '', 'SE DETERMINO LA BAJA DE LOS 3 MONITORES POR IRREPARABILIDAD TOTAL', '2022-08-31 11:16:22', '2022-09-01 13:40:56', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-08-31', 'Admin AD'),
(286, 3003, 'La lectograbadora no funciona correctamente y la necesita para realizar su trabajo diario. ', '', 'Eugenia Miranda', '2615199131', 'cambio de lectora\r\n', '2022-08-31 13:49:16', '2022-09-01 11:22:39', 3, 1020, 36768171, NULL, NULL, NULL, 3, '2022-08-31', 'Admin AD'),
(287, 4002, 'Habilitar a gonzalo.barrera para usar el buscador de forma tradicional', '', 'Gonzalo Barrera', '', 'ya tenía ese permiso', '2022-08-31 13:51:17', '2022-09-01 07:34:34', 3, 1005, 29148522, NULL, NULL, NULL, 4, '2022-08-31', 'Admin AD'),
(288, 3001, 'No puede imprimir desde la PC. No sabe sacar IP. ', '', 'Fernanda Orellano', '', 'Soluciono Dutto', '2022-08-31 13:52:23', '2022-09-01 12:08:35', 3, 10000, 38101303, NULL, NULL, NULL, 3, '2022-08-31', 'Admin AD'),
(289, 4017, 'raul.barrera figura como \"deshabilitado\"', '', 'Raul Barrera', '', 'no veo ningún problema con el usuario', '2022-08-31 13:54:19', '2022-09-01 07:33:37', 3, 1005, 29148522, NULL, NULL, NULL, 4, '2022-08-31', 'Admin AD'),
(290, 4000, 'La profesional solicita alta de usuario remoto', '', 'Florencia Rodaro', '', 'Le informo los datos requeridos', '2022-09-01 07:37:01', '2022-09-01 07:37:23', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-01', 'Nicolas MAURE'),
(291, 3001, 'Tiene atascado un papel la impresora Xerox.', '', 'Rodrigo', '', 'destrabe la impresora\r\n', '2022-09-01 09:53:02', '2022-09-02 11:05:27', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-09-01', 'Raul SORIA'),
(292, 7013, 'Natalia Templado de Catastro viene a la oficina y manifiesta que necesita trabajar el EE-6701-2021, pero vemos que no tiene tarea activa', '', 'Natalia Templado', '', 'paso reclamo al grupo de Genus, lo reactivan y se lo asigno a natalia.templado', '2022-09-01 10:24:45', '2022-09-01 10:25:18', 3, 3009, 29148522, NULL, NULL, NULL, 4, '2022-09-01', 'Nicolas MAURE'),
(293, 7016, 'Llevar monitor 24\" NAXIDO a Secretaria de Obras. Tiene ya el muchacho un monitor y hay que dejarle los dos andando.', '', 'Leandro Bergamin', '', 'Monitor instalado', '2022-09-01 10:49:36', '2022-09-01 12:03:25', 3, 1006, 38101303, NULL, NULL, NULL, 3, '2022-09-01', 'Admin AD'),
(294, 3001, 'En la isla nueva de jubilaciones no puede imprimir', '', 'Claudia Montenegro', '000', 'se cambio puerto', '2022-09-01 10:53:13', '2022-09-01 12:01:43', 3, 2003, 38101303, NULL, NULL, NULL, 3, '2022-09-01', 'Evelyn CARDENAS'),
(295, 3000, 'Soledad Castellano necesita que revisen su impresora. Papel trabado y no toma el tonner', '', 'Soledad Castellano', '', 'se retiro la impresora, hay q destrabarla', '2022-09-01 12:29:39', '2022-09-05 10:22:59', 3, 10000, 36768171, NULL, NULL, NULL, 3, '2022-09-01', 'Admin AD'),
(296, 3003, 'Desarrollo Economico necesita que vayan por varios motivos, entre ellos la lentitud de las pc. Coordinen fecha para visita', '', 'Luis Quiroga', '', NULL, '2022-09-01 12:34:06', NULL, 4, 4002, 0, 'Las comenzaron a traer para ponerles discos', NULL, NULL, 3, '2022-09-01', 'Admin AD'),
(297, 3003, 'Se apago y no volvio a prender la pc', '', 'Laura Dántonio', '', 'fuente de pc quemada,.se cambio la pc\r\n', '2022-09-01 12:42:14', '2022-09-02 10:23:20', 3, 1008, 36768171, NULL, NULL, NULL, 3, '2022-09-01', 'Admin AD'),
(298, 4000, 'La profesional envía los datos requeridos', '', 'Florencia Rodaro', '', 'Creo el usuario y le envío los datos de acceso', '2022-09-01 13:03:17', '2022-09-01 13:03:48', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-01', 'Nicolas MAURE'),
(299, 4001, 'De la Dirección de Vivienda solicitan la creación de dos usuarios, envían la planilla con los datos.', '', 'Marcela Werkalec', '', 'Se crean los usuarios luis.buenanueva e ignacio.guisasola, ambos con permisos para iniciar exptes/notas.', '2022-09-02 10:03:08', '2022-09-02 10:04:06', 3, 3005, 29148522, NULL, NULL, NULL, 4, '2022-09-02', 'Nicolas MAURE'),
(300, 4008, 'De la sub Dirección de Catastro Económico Jurídico, solicitan que se modifique el rol que resuelve el trámite externo \"Pedidos Varios Catastro\". Envían correo a soportegenus pidiendo que los usuarios asociados al rol sean:\r\n\r\n* natalia.templado\r\n* fernando.falcon\r\nAsí mismo también solicitan se desafecte del rol a lucas.bruno', '', 'Natalia Templado', '', 'Realizo los cambios solicitados', '2022-09-02 10:08:30', '2022-09-02 10:09:31', 3, 3009, 29148522, NULL, NULL, NULL, 4, '2022-09-02', 'Nicolas MAURE'),
(301, 3000, 'de escribanía del 2do piso de la calle Benavente piden que vaya un técnico porque tiene una impresora guardada y necesitan se la vayan a conectar para poder usarla.', '', 'Escribana Paola Rodriguez', '', 'es una impresora a tinta, y la necesitan xq es mucho trabajo para ellas levantarse hasta la otra oficina a imprimir', '2022-09-02 10:47:54', '2022-09-05 10:22:30', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-09-02', 'Sonia ROMAN'),
(302, 3002, 'De Rentas manda a imprimir por PDF y como se tarda mucho y no imprime nada ', '192.168.100.129', 'Samira Sol', '', 'Se reinició el proceso del PDF Creator', '2022-09-02 10:50:07', '2022-09-02 11:14:31', 3, 2000, 35871182, NULL, NULL, NULL, 3, '2022-09-02', 'Sonia ROMAN'),
(303, 2001, 'Reparacion de cableado de red de salud', '', '', '', 'reparado el cable afectado\r\n', '2022-09-02 12:35:15', '2022-09-02 12:35:47', 3, 4007, 41191664, NULL, NULL, NULL, 2, '2022-09-02', 'Franco Moreno'),
(304, 4001, 'solicita modernización por whp /\r\ncontabilidad central', '', 'felipe estruch', '', 'realizado', '2022-09-05 08:02:29', '2022-09-05 08:02:43', 3, 2005, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(305, 7013, 'se ayuda al procedimiento para desanexar pa a Juan Carlos Rodriguez/jefe inspectores', '', 'juan carlos Rodriguez', '', 'realizado en 4 pa', '2022-09-05 08:23:39', '2022-09-05 08:57:30', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(306, 4013, 'se asiste a mauricio real por ee-4980-2021 a fin de constatar que no puede finalizar, también se detecta que en la tarea electrica tampoco lo hace. se solicita a lecerassi que lo informe a programación', '', 'mauricio real', '', 'solucionado y avisado a mauricio.real a las 10:30hs', '2022-09-05 08:59:29', '2022-09-05 10:35:33', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(307, 7017, 'Mediante NE-14282-22 se solicita la conexion de agente Pamela Jofre ', '', 'Pamela Jofre', '26120455566', 'Se conecto al agente municipal\r\n', '2022-09-05 09:03:57', '2022-09-05 10:47:54', 3, 2000, 30839932, NULL, NULL, NULL, 1, '2022-09-05', 'Admin AD'),
(308, 3003, ' De legales pide que se acerque un técnico porque no el monitor no prende y no lo pueden hacer que prenda.', '', 'Ezequiel', '', 'trafo del monitor desenchufado', '2022-09-05 09:22:41', '2022-09-05 10:21:46', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-09-05', 'Sonia ROMAN'),
(309, 3002, 'Estan todas las máquinas sin internet. Se quejan que todos los dias le pasa lo mismo.', '', 'Alicia', '', 'jaja 1 sola pc y estaba desenchufado el cable\r\n', '2022-09-05 09:48:11', '2022-09-05 10:21:30', 3, 1007, 36768171, NULL, NULL, NULL, 3, '2022-09-05', 'Sonia ROMAN'),
(310, 3002, 'Claudio Boullaude de la oficina del Apoderado tiene la computadora muy lenta. Necesita que la vean.', '192.168.176.69', 'Claudio Boullaude', '0', 'lentitud ', '2022-09-05 10:04:39', '2022-09-06 09:16:07', 3, 1010, 29112717, NULL, NULL, NULL, 3, '2022-09-05', 'Raul SORIA'),
(311, 3003, 'Revisar pc, supuestamente se apaga.', '', 'Norma Moran', '', 'Llave de corte de corriente', '2022-09-05 10:13:33', '2022-09-05 10:51:17', 3, 2003, 38101303, NULL, NULL, NULL, 3, '2022-09-05', 'Admin AD'),
(312, 7018, 'Cambiar las PC de Adriana Penessi y Melisa Ortiz. Recuperar esas dos, y preparalas para que vayan a la misma Direccion con una impresora Lexmark.', '', '', '', NULL, '2022-09-05 10:29:00', NULL, 2, 4004, 36768171, NULL, NULL, NULL, 3, '2022-09-05', 'Admin AD'),
(313, 3002, 'de salud en una máquina no pueden trabaja y no pueden imprimir las recetas está demasiado lenta', '192.168.172.186', 'Andrea', '', 'Funciona con normalidad tanto la impresora como la red ', '2022-09-05 10:39:25', '2022-09-05 10:56:50', 3, 4007, 38101303, NULL, NULL, NULL, 3, '2022-09-05', 'Sonia ROMAN'),
(314, 3002, 'no pueden los inspectores entrar al sistema de gis desde las table´s.', '', 'Abel', '', 'No podran ingresar desde afuera hasta nuevo aviso-', '2022-09-05 10:41:08', '2022-09-05 11:32:40', 3, 2002, 4000000, NULL, NULL, NULL, 3, '2022-09-05', 'Sonia ROMAN'),
(315, 4016, 'se acuerda para realizar reunión con bromatología a fin de relevar turnos web, para acordar documentación necesaria, modalidad, fechas y punto de quiebre. \r\nReunion: lunes26 a las 9hs.', '', 'Alejandro Ortiz', '', 'se realiza reunión y se acuerda enviar la doc correspondiente para proceder', '2022-09-05 10:43:01', '2022-09-27 07:53:31', 3, 2002, 0, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(316, 4002, 'se modifican los permisos para toda la UO con Historial completo, pedido por leila whp.', '', 'toda la uo', '', 'realizado en conjunto con nicolas', '2022-09-05 10:49:57', '2022-09-05 10:50:18', 3, 1010, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(317, 7018, 'i7+monitor 19\" para vivienda. Instalar bien todos los programas que necesitan. Ante consultas de cuales son llamar a Marcela', '', 'Marcela Werckelak', '', 'lista para retirar\r\n', '2022-09-05 10:53:39', '2022-09-06 11:04:18', 3, 3005, 38101303, NULL, NULL, NULL, 3, '2022-09-05', 'Admin AD'),
(318, 3002, 'Anda lenta y no tiene conexión', '', 'Miqueas Burgoa', '', 'Limpieza del Windows. Cambio de la ficha RJ45 del cable de red', '2022-09-05 10:56:43', '2022-09-07 12:44:34', 3, 10000, 35871182, NULL, NULL, NULL, 3, '2022-09-05', 'Leandro BORQUEZ'),
(319, 4001, 'se crea usuario miguel.martin con Decreto 3101-2022\r\npedido por leila via whp. se reenvía', '', 'miguel.martin', '', 'creado e informado', '2022-09-05 11:03:18', '2022-09-05 11:03:34', 3, 1009, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(320, 1002, 'Se quejan del primer piso que esta muy lenta la página de notificaciones/catastro  y se pierden la modificaciones me dieron una de la ip pero para todos los que la usan están con elmismo problema', '192.168.100.126', 'Florencia y Nilda', '', 'Problema en la red, ya fue resuelto ', '2022-09-05 11:14:58', '2022-09-14 14:18:11', 3, 2000, 30839932, NULL, NULL, NULL, 1, '2022-09-05', 'Sonia ROMAN'),
(321, 7010, 'ind. y comercio (alejandro ortiz) solicita reseteo\r\n\r\nusuario: fernando.gutierrez\r\n', '', 'fernando ortiz', '', 'reseteado e informado', '2022-09-05 11:27:28', '2022-09-05 11:27:45', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(322, 1002, 'No puede ingresar a ilovepfd', '192.168.140.190', 'Maria Lourdes Diaz', '26150688', 'La máquina en cuestión está en lista blanca, porque ha sido de personal, pero han cambiado toda una isla y las ips han quedado registradas como de personal, por eso los problemas. En el caso puntual de esta ip ya la removí de la lista y pedí que me manden un listado de todas las ips que tienen estos problemas, de ese piso esa isla.', '2022-09-05 11:47:56', '2022-09-07 17:51:42', 3, 1005, 18079575, NULL, NULL, NULL, 1, '2022-09-05', 'Admin AD'),
(323, 4015, 'pedido de como solicitar usuarios desde la dir. de delegaciones, se explica como proceder y se envía plantilla adjunta.', '', 'graciela', '', 'concluido', '2022-09-05 12:03:58', '2022-09-05 12:04:13', 3, 4000, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(324, 7010, 'se resetea clave de victoria.diaz a pedido de helvio grilli', '', 'victoria.diaz', '', 'realizado', '2022-09-05 12:26:57', '2022-09-05 12:54:31', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(325, 7010, 'se pide resetear desde vivienda resetear claves de:\r\nviviana.ucotich\r\ngisela.munoz\r\nluis.buenanueva\r\nflorencia.castillo\r\n', '', 'marcela werkalec', '', 'RESUELTO', '2022-09-05 12:57:30', '2022-09-06 07:29:57', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-09-05', 'German SANCHEZ'),
(326, 4015, 'se solicita pedido a claudia navarrete:\r\n\r\nbuen día Claudia, el profesional Rodrigo Gallardo nos envía un mail solicitando le habilitemos Permiso de Construcción para el ee-696-2019, teniendo en cuenta los inconvenientes que causó y causaría activar esto, necesito nos envíen un correo pidiendo activar el permiso de construcción a esta persona sabiendo los inconvenientes que esto ocasiona.', '', 'claudia navarrete', '', 'se comprueba que Alejandro Lecerassi activó el permiso de construcción', '2022-09-06 07:58:49', '2022-09-07 08:02:27', 3, 3004, 28700618, NULL, NULL, NULL, 4, '2022-09-06', 'German SANCHEZ'),
(327, 4015, 'solicitan crear membrete, se avisa que no se puede poner pié de página.\r\n', '', 'Desarrollo Social', '', 'realizado y avisado por correo a ferri', '2022-09-06 08:05:19', '2022-09-06 08:23:33', 3, 4006, 28700618, NULL, NULL, NULL, 4, '2022-09-06', 'German SANCHEZ'),
(328, 7019, 'Control de Gestión ubicado en la terminal dice tener problemas con la red desde la semana pasada. No caidas pero si furiosa lentitud', '192.168.46.189', 'Pablo Raddi', '', 'Solucionado por J. Crayachichi', '2022-09-06 08:53:44', '2022-09-06 09:54:58', 3, 1002, 18079575, NULL, NULL, NULL, 1, '2022-09-06', 'Admin AD'),
(329, 3001, 'De Dirección de Legales: la impresora Xerox no le reconoce el toner y necesitan imprimir un documento con urgencia.', '', '', '', 'Se reemplazo tonner ', '2022-09-06 09:03:15', '2022-09-06 09:35:10', 3, 1001, 38101303, NULL, NULL, NULL, 3, '2022-09-06', 'Raul SORIA'),
(330, 3002, 'De Obras privadas dicen que quedaron de ir a instalarle unos Auto Cad´s a los ingenieros y no han ido. ', '', 'Anita', '', 'no es en obras privadas..es en municipales..no me deja trabajar, le escribo x la aplicacion y me ignora..le pedi q haga una nota firmada x el director', '2022-09-06 09:05:11', '2022-09-06 09:20:08', 3, 3001, 36768171, NULL, NULL, NULL, 3, '2022-09-06', 'Sonia ROMAN');
INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`, `usuarioCreado`) VALUES
(331, 3002, 'De Mesa de entradas otra vez sin internet,  se quejan que todos los dias pueden empezar a trabaja a partir de la 10  HS  por este problema y la gente se enoja. ', '', 'Florencia', '', 'PROSI', '2022-09-06 09:13:27', '2022-09-08 13:06:46', 3, 1007, 36768171, NULL, NULL, NULL, 3, '2022-09-06', 'Sonia ROMAN'),
(332, 3001, 'De escribania dicen que ayer fueron ayer a arreglar la imporesora y ahora tienen el mismo problema que por favor se acerquen porque no pueden imprimir.', '', 'Angi', '', 'Impresora instalada. No tiene cartuchos, les indiqué que los pidan por NE', '2022-09-06 09:20:46', '2022-09-07 12:43:38', 3, 1001, 35871182, NULL, NULL, NULL, 3, '2022-09-06', 'Sonia ROMAN'),
(333, 3002, 'de Dorrego dice que ayer fueron a ver unos problemas pero que en una máquinas no pueden ingresar a niguna aplicación nopuede sacar ni los boletos de tránsito', '192.168.24.189', 'Laura', '', 'proxy', '2022-09-06 09:54:01', '2022-09-06 10:31:46', 3, 5009, 38101303, NULL, NULL, NULL, 3, '2022-09-06', 'Sonia ROMAN'),
(334, 3001, 'Directora de Compras no puede imprimir desde su pc. No sabe sacar la IP', '', 'Cecilia Abatte', '', 'llegue y estaba imprimiendo\r\n', '2022-09-06 09:54:16', '2022-09-06 10:15:45', 3, 2001, 36768171, NULL, NULL, NULL, 3, '2022-09-06', 'Admin AD'),
(335, 7013, 'crear membrete dae', '', 'juan correa', '', 'relalizado', '2022-09-06 10:06:26', '2022-09-06 10:06:40', 3, 3007, 28700618, NULL, NULL, NULL, 4, '2022-09-06', 'German SANCHEZ'),
(336, 3001, 'La impresora que esta en rentas  parece que tiene el cable de red roto piden que vayan a ver y si lo puedes arreglar o reemplazar ya que se desconecta permanentemente ', '', 'Nilda', '', 'cambio de ficha\r\n', '2022-09-06 10:17:36', '2022-09-06 12:59:17', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-09-06', 'Sonia ROMAN'),
(337, 3002, 'Salud no puede ingresar a compras.guaymallen.gob.ar:1000/', '', 'Claudio Bazaes', '2615183311', 'listo\r\n', '2022-09-06 10:47:57', '2022-09-06 12:59:02', 3, 4007, 36768171, NULL, NULL, NULL, 3, '2022-09-06', 'Admin AD'),
(338, 4015, 'se crea petición #3021 para pedir instalación de cups a fin de realizar impresiones dado que no está.', '', 'marcos tognon', '', 'realizada y avisado', '2022-09-06 11:22:49', '2022-09-06 11:23:07', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-06', 'German SANCHEZ'),
(339, 1002, 'Cuando intenta ingresar a http://compras.guaymallen.gob.ar:1000 le figura \"problema para conectar con el servidor\" ', '192.168.24.198', 'Luciana Fornes', '2612056865', NULL, '2022-09-06 14:17:18', NULL, 4, 5009, 0, '...', NULL, NULL, 1, '2022-09-06', 'Admin AD'),
(340, 4013, 'se asiste a Adolfo para crear accesos de sistema Sayges y reclamos que se salieron ', '', 'adolfo', '', 'accesos creados\r\n', '2022-09-07 07:15:33', '2022-09-07 08:01:47', 3, 5013, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(341, 4013, 'El profesional solicita que se le habilite el expediente para subir una corrección en el plano eléctrico', '', 'Jose Cartofiel', '', 'Le informo que no podemos hacerlo y debe esperar a que le observen el trámite', '2022-09-07 07:37:10', '2022-09-07 07:37:53', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(342, 4000, 'La profesional solicita conocer el procedimiento para iniciar un trámite en este municipio', '', 'Mary Valdivia', '', 'le informo que debe especificar qué tipo de trámite necesita iniciar para ver si nos corresponde a nosotros crear usuario', '2022-09-07 07:41:20', '2022-09-07 07:42:03', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(343, 7013, 'Se crea nueva bandeja de grupo \"SIG SOBRETASA RENTAS\"', '', 'Lucas Bruno', '', 'creado', '2022-09-07 08:01:17', '2022-09-07 08:01:30', 3, 3004, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(344, 4000, 'La profesional solicita alta de usuario remoto', '', 'Mirta Almenara', '', 'Le informo los datos necesarios', '2022-09-07 08:02:03', '2022-09-07 08:02:29', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(345, 4013, 'La profesional solicita desarchivo de expedientes', '', 'Sofia Binci', '', 'Le informo que nosotros no desarchivamos expedientes, debe solicitarlo al área donde se encuentra el mismo', '2022-09-07 08:08:23', '2022-09-07 08:09:32', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(346, 7013, 'se realiza primera hoja de listado de rrhh (lista pasada por leila)', '', 'bajas/jubilaciones/etc..', '', 'primera pag. creada', '2022-09-07 09:10:28', '2022-09-07 09:14:13', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(347, 7013, 'se realiza primera hoja de listado de rrhh (lista pasada por leila)', '', 'bajas/jubilaciones/etc..', '', 'realizada primer pag.', '2022-09-07 09:11:25', '2022-09-07 09:14:27', 3, 2003, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(348, 7013, 'se activa creación de PA a ignacio.conte', '', 'Ignacio Conte', '', 'activado', '2022-09-07 10:21:48', '2022-09-07 10:23:54', 3, 10000, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(349, 7013, 'Membrete pedido por Cecilia abate', '', 'cecilia abate (compras)', '', 'Se crea membrete para todo compras y suministros', '2022-09-07 10:36:21', '2022-09-07 10:36:46', 3, 2001, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(350, 7013, 'se activan todos los usuarios para generar PA de hcd-concejales', '', 'hcd', '', 'realizado', '2022-09-07 11:01:45', '2022-09-07 11:02:18', 3, 10000, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(351, 1000, 'de gobierno piden se pueda ingresar a la página ilovepdf que es de donde todos trabajan el pdf ', '192.168.140.190', 'MAria', '', 'Solucionado', '2022-09-07 11:04:54', '2022-09-14 08:52:25', 3, 1005, 18079575, NULL, NULL, NULL, 1, '2022-09-07', 'Sonia ROMAN'),
(352, 4013, 'La profesional manifiesta que no puede continuar trámite porque el sistema le dice que hay una inspección en curso. Derivamos el reclamo a Alejandro Lecerassi', '', 'Solido Arquitectura', '', 'Alejandro Lecerassi nos informa que ya está solucionado, le avisamos al profesional', '2022-09-07 12:02:40', '2022-09-09 11:29:42', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(353, 4001, 'se crea usuario de necropolis, pedido por pereyra. El mismo se pide por ne-13632-2022', '', 'marcela.alarcon', '', 'creado y respondido', '2022-09-07 12:18:27', '2022-09-07 12:21:10', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(354, 4013, 'Ayudo a un profesional que vino a la oficina porque no podía iniciar un trámite de factibilidad', '', 'Jorge Leiva', '', 'el problema era el navegador de su computadora (safari). Lo iniciamos desde mi pc sin problemas', '2022-09-07 12:40:33', '2022-09-07 12:41:06', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-07', 'Nicolas MAURE'),
(355, 4013, 'se asiste para finalizar el ee-4980-2021 con inconvenientes en asignación', '', 'mauricio carceller', '', 'realizado', '2022-09-07 12:46:23', '2022-09-07 12:50:22', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(356, 7013, 'Se autoasigna a sergio pelegrina el ee-4980-2021 por inconvenientes en asignación', '', 'sergio pelegrina', '', 'se avisa a francisca fresno para que comunique los pasos a seguir', '2022-09-07 12:52:21', '2022-09-07 12:54:46', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-07', 'German SANCHEZ'),
(357, 3001, 'La Impresora dice atascatada no funciona pero no encuentran ningun papel  necesitan vaya un técnico\r\nDESPACHO GENERAL. ', '', 'Mauricio CABAÑEZ', '', 'Configuración de papel A4', '2022-09-07 13:07:29', '2022-09-08 10:20:16', 3, 2003, 38101303, NULL, NULL, NULL, 3, '2022-09-07', 'Sonia ROMAN'),
(358, 3002, 'Tienen una PC nueva y necesitan conectarla', '', '', '', 'Computadora armada y conectada', '2022-09-07 13:08:27', '2022-09-07 13:08:42', 3, 3008, 35871182, NULL, NULL, NULL, 3, '2022-09-07', 'Leandro BORQUEZ'),
(359, 1002, 'Averiguar donde están las bases de datos de la gente de DivGIS, para Cesar Luzzi, y encontrar las claves de los usuarios administrador, para que pueda accesar las bases y ver los datos.', '', 'Cesar Luzzi', '', 'Se consigue el usuario administrador de la base de datos de DivGIS en el 172.30.0.23 y se le pasa a Cesar, con el que puede accesar las bases y ver la info que le hacía falta.', '2022-09-07 17:53:45', '2022-09-07 17:54:53', 3, 1012, 18079575, NULL, NULL, NULL, 1, '2022-09-07', 'Pedro  GARBARINO'),
(360, 4013, 'La profesional solicita le habilitemos la edición en los datos del proyecto porque le faltó agregar datos de FOS y FOT', '', 'Mariela Azello', '', 'Le informo que no se puede hacer tal cosa, deberá esperar que le observen el trámite', '2022-09-08 07:37:07', '2022-09-08 07:37:39', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'Nicolas MAURE'),
(361, 3002, 'La maqquina se demora y cuando empiza a salir algo la mitada de la pantalla queda en negro .', '19.168.130.134', 'Eleonora', '', 'Cable vga ', '2022-09-08 08:26:17', '2022-09-08 09:15:36', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-09-08', 'Sonia ROMAN'),
(362, 4013, 'Inspector del IPV se presenta en la oficina y manifiesta que no puede pedir inspecciones en dos expedientes porque no los visualiza', '', 'Ernesto Berli', '', 'le explico que el profesional que inició el trámite no los agregó en la caja de profesionales remotos. le paso el celular de Alejandro Lecerassi para que lo soliciten', '2022-09-08 08:56:16', '2022-09-08 08:57:14', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'Nicolas MAURE'),
(363, 7019, 'Las aplicaciones del geoserver se ponen muy lentas y no responden', '', 'general', '', 'Se depura el swap.\r\nSe ve que hay poco espacio en el disco, debido a, gran parte, por los logs del tomcat, el cual comprime y también a backups que se hacen en el propio disco de la máquina, por lo que se borran las copias de julio.\r\nSe reinicia el tomcat y hoy se lo ve más normalizado.', '2022-09-08 09:00:32', '2022-09-08 09:02:32', 3, 4005, 18079575, NULL, NULL, NULL, 1, '2022-09-08', 'Pedro  GARBARINO'),
(364, 3000, 'Desde la Delegación Bermejo (Delegada), solicita que le configuren a la pc la impresora HP 426.-\r\nSi la pueden llamar y enseñarle como sacar la ip.', '192.168.34.193', 'Cecilia Mercado', '2613465433', 'Me conecté, el Windows tiene problemas porque le faltan actualizaciones. Le indiqué que necesitamos que la traigan', '2022-09-08 09:02:56', '2022-09-08 11:03:57', 3, 5014, 35871182, NULL, NULL, NULL, 3, '2022-09-08', 'Evelyn CARDENAS'),
(365, 7008, 'Problemas desde el día de hoy con la línea telefónica. Delegación Bermejo\r\n4498329.\r\nDejo el cel de Ceci Mercado que está en la delegación', '', 'Mariana Echevarrieta', '2613465433', 'Cable de red desconectado ', '2022-09-08 09:08:26', '2022-09-08 12:37:09', 3, 5014, 28757006, NULL, NULL, NULL, 5, '2022-09-08', 'Evelyn CARDENAS'),
(366, 3002, 'De padrones piden que le configuren la impresora samsung a una pc', '192.168.100.113', 'Liliana', '', 'instalacion de impresora\r\n', '2022-09-08 09:14:34', '2022-09-08 11:29:30', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-09-08', 'Sonia ROMAN'),
(367, 4008, 'Defensa del consumidor pide la creación de dos pestañas en la bandeja de grupo', '', '', '', 'Creo las pestañas Archivo y Sumarios Provincia', '2022-09-08 09:15:01', '2022-09-08 09:15:45', 3, 5037, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'Nicolas MAURE'),
(368, 3001, 'Eugenia de Catastro (Rentas) solicita cambio de cilindro y tonner para una impresora Xerox 7030', '', 'Eugenia', '', 'Se reemplazo lo solicitado\r\n', '2022-09-08 09:15:15', '2022-09-08 10:09:38', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-09-08', 'Raul SORIA'),
(369, 4008, 'Mediación pide la creación de una pestaña en la bandeja de grupo', '', '', '', 'Creo la pestaña Archivo', '2022-09-08 09:16:12', '2022-09-08 09:16:26', 3, 5038, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'Nicolas MAURE'),
(370, 7013, 'se continúa listado de bajas', '', 'rrhh', '', 'planilla completa realizada. total 96 agentes', '2022-09-08 11:50:45', '2022-09-08 11:53:15', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-09-08', 'German SANCHEZ'),
(371, 4014, 'se rastrean correos provenientes de mayordomía para verificar pedidos realizados y se informan. - MAYORDOMÍA', '', 'leila', '', 'realizado', '2022-09-08 11:56:27', '2022-09-08 11:56:38', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-09-08', 'German SANCHEZ'),
(372, 4014, 'Se realiza la solicitud de creación de una planilla con los trámites externos existentes en el sistema y los usuarios que actualmente intervienen. Duración del procesamiento manual de 3hs. reloj ', '', 'Trámites Externos', '', 'realizado y enviado a whp requerimiento', '2022-09-08 12:44:51', '2022-09-08 12:45:41', 3, 4005, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'German SANCHEZ'),
(373, 4013, 'El profesional solicita se le habilite el formulario de Permiso de Construcción para iniciar expediente sin pasar por factibilidad', '', 'Claudio Dominguez', '', 'Le informo que no se puede hacer tal cosa, si o si debe iniciar desde factibilidad', '2022-09-08 12:52:01', '2022-09-08 12:52:32', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-08', 'Nicolas MAURE'),
(374, 4013, 'desarchivar el EE-12504-2022 a belen de apremios, tenia problemas con carpetas creadas en su bandeja', '', 'belen aceña', '', 'listo', '2022-09-09 07:39:55', '2022-09-09 07:40:12', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(375, 3002, 'Erica de Tesoreria se le reinica la PC y se bloquea, necesita descargar información de los bancos.', '', '', '', 'listo', '2022-09-09 08:26:45', '2022-09-12 08:09:08', 3, 2004, 36768171, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(376, 3005, 'Cintia de Tesorería no puede escanear desde SayGes.', '192.168.130.193', 'Cintia', '', 'se le enseño a adjuntar desde sayges', '2022-09-09 08:48:00', '2022-09-09 12:37:05', 3, 2004, 36768171, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(377, 4013, 'se crea petición #3045', '', 'producción / Martin peña', '', 'pasada', '2022-09-09 09:04:17', '2022-09-09 11:31:54', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(378, 3004, 'Necesitan que le actualicen AutoCAD.', '192.168.110.95', '', '', 'Se instaló AutoCAD 2022', '2022-09-09 09:19:56', '2022-09-09 10:29:55', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(379, 3002, 'Alejandra de Prensa, tiene un virus que no la deja trabajar en la computadora.', '190.168.150.60', 'Alejandra', '', 'Publicidad de virus, se elemino lo solicitado ', '2022-09-09 09:22:47', '2022-09-09 09:57:00', 3, 1020, 38101303, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(380, 1002, 'Mabel de Sala de Arte, estan sin internet. Raúl', '', 'Mabel', '', 'Ya esta solucionado el problema, ap bloqueado', '2022-09-09 09:55:01', '2022-09-14 14:17:36', 3, 4003, 30839932, NULL, NULL, NULL, 1, '2022-09-09', 'Raul SORIA'),
(381, 3005, 'Juan Pavez de Adopción (Poliguay) cuando abre un pdf se cierra a los 4 segundos.', '192.168.27.153', 'Juan Pavez', '', 'Se cambio a navegador edge ', '2022-09-09 11:04:54', '2022-09-09 14:33:08', 3, 4006, 38101303, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(382, 4013, 'Se asiste al profesional para el ee-1240-2019, problemas para ver las observaciones en expedientes viejos', '', 'profesional', '', 'Solucionado', '2022-09-09 11:15:04', '2022-09-09 11:15:24', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(383, 7013, 'se modifican los datos de usuarios del HCD incompletos a fin de evitar inconvenientes en los usuarios de baja del sistema por repitencia de nombres.', '', 'HCD', '', 'se cargan todas las modificaciones solicitadas a leila y recibidas en minutos!', '2022-09-09 11:38:15', '2022-09-09 11:39:25', 3, 10000, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(384, 3001, 'De Escribania necesitan que le instalen los cartuchos que han traido para la impresora. Tienen que imprimir un acta que estan esperando.', '', '', '', 'Jose lo siguio', '2022-09-09 11:38:30', '2022-09-20 08:34:52', 3, 1011, 29112717, NULL, NULL, NULL, 3, '2022-09-09', 'Raul SORIA'),
(385, 4000, 'El profesional solicita alta de usuario', '', 'Sebastian Torres', '', 'Le informo los datos necesarios', '2022-09-09 11:41:26', '2022-09-09 11:41:57', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-09', 'Nicolas MAURE'),
(386, 4016, 'nos reunimos con Macos Polo y Adriana Pena, a fin de acordar posibles cambios en el estructurado, se acuerda elevar una nota a dirección para empezar a analizar las posibilidades que están elaborando a fin de mejorar el procedimiento.', '', 'Marcos Polo / Adriana Pena / Nicolas Maure / German Sanchez', '', 'se espera NE', '2022-09-09 11:45:46', '2022-09-09 11:46:19', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(387, 4013, 'La profesional pide que se le vincule un expte Genus a su usuario', '', 'Laura Mateo', '', 'Le informo que no se puede hacer tal cosa y le explico como proceder para adjuntar información.', '2022-09-09 11:47:34', '2022-09-09 11:48:14', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-09', 'Nicolas MAURE'),
(388, 4013, 'para realizar filtros de expedientes por fecha a vivienda', '', 'marcela werkalec', '', 'realizado', '2022-09-09 13:06:20', '2022-09-09 13:06:32', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-09-09', 'German SANCHEZ'),
(389, 7013, 'modificación de usuarios en trámites externos\r\n	NOMBRE DEL TRAMITE	USUARIOS QUE LO RESUELVEN\r\nrol_ext_bajacomercio	Baja/desestimiento de comercio	ricardo.sallagua\r\n		raul.baez\r\n		carina.genioli\r\n		\r\nrol_ext_inspeccioncomercial	Denuncias	cecilia.oruez\r\n		noemi.quinteros\r\n		\r\n		\r\nrol_ext_levantamientoclausura	Levantamiento de clausura	graciela.guaquinchay\r\n		noemi.quinteros\r\n		cecilia.oruez\r\n		\r\nrol_ext_plazosdescargos	Pedidos de plazos, prorrogas, descargos o excepciones	graciela.guaquinchay\r\n		noemi.quinteros\r\n		cecilia.oruez\r\n		 maria.ibazeta\r\nrol_ext_comercvarios	Pedidos varios comercio	paola.mercado\r\n		noemi.quinteros\r\n		cecilia.oruez\r\n', '', 'alejandro ortiz', '', 'cambios realizados e informados', '2022-09-12 08:13:17', '2022-09-12 08:13:54', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(390, 4000, 'se piden crear usuarios pero está incompleta la planilla y faltan decretos, se da aviso de docs faltantes', '', 'dir de administración', '', 'se espera respuesta completa', '2022-09-12 08:23:40', '2022-09-12 08:24:08', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(391, 7013, 'Se crea membrete de tesorería y se aclara la modalidad de su función.', '', 'mercedes yañez', '', 'realizado', '2022-09-12 08:35:08', '2022-09-12 08:35:24', 3, 2004, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(392, 4001, 'se responde a vanina correa pedido de alta sin decreto. a la espera.', '', 'pilar gavasci', '', 'se queda a la espera', '2022-09-12 08:41:22', '2022-09-12 08:41:38', 3, 3004, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(393, 4004, 'se hacen algunas pruebas en conjunto con modernización para verificar algunos errores,.', '', 'sistema prod', '', 'se seguirán viendo en los procesos diarios', '2022-09-12 09:23:39', '2022-09-16 08:06:31', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(394, 4000, 'se responden correos a externos consultas de estados', '', 'externos', '', 'realizado', '2022-09-12 09:31:47', '2022-09-12 09:32:01', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(395, 1002, 'EL jefe de inspectores  dice que hace mas de 10 dias no funciona el sistema de SayGes en forma externa y lo necesitan urgente', '', 'Rodriguez', '', 'Se probo el sistema desde fuera de la red municipal y esta funcionando. ', '2022-09-12 11:14:49', '2022-09-14 14:16:46', 3, 3007, 30839932, NULL, NULL, NULL, 1, '2022-09-12', 'Sonia ROMAN'),
(396, 4016, 'se asiste a las 10 am para ver el procedimiento de cambios a usuarios de TG, se repite mañana a la mañana para verificar errores que sucedieron en la prueba', '', 'Germán Sanchez', '', 'se pasa para mañana, hoy duró hasta las 11:20', '2022-09-12 11:26:27', '2022-09-12 11:26:59', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(397, 3001, 'No imprime desde su PC', '', 'Angie ', '', 'sd', '2022-09-12 11:27:21', '2022-09-12 12:15:21', 3, 1008, 36768171, NULL, NULL, NULL, 3, '2022-09-12', 'Admin AD'),
(398, 3003, 'Anda lenta, se traba, no le permite trabajar. Urgente', '', 'MARCOS CALVENTE', '', 'cambio de disco ', '2022-09-12 11:27:57', '2022-09-14 09:04:43', 3, 1006, 29112717, NULL, NULL, NULL, 3, '2022-09-12', 'Admin AD'),
(399, 3001, 'No le permite imprimir PDF, y tira la IP 169.254.29.20', '', 'Romina Zampieri', '', NULL, '2022-09-12 11:28:39', NULL, 4, 4004, 0, 'Fueron al lugar', NULL, NULL, 3, '2022-09-12', 'Admin AD'),
(400, 3002, 'No puede imprimir', '192.168.130.114', 'Belen', '', 'Impresora configurada en Carta', '2022-09-12 11:39:07', '2022-09-12 12:15:28', 3, 2001, 35871182, NULL, NULL, NULL, 3, '2022-09-12', 'Leandro BORQUEZ'),
(401, 4013, 'se asiste a patentes-rentas para solicitar expedientes', '', 'patentes', '', 'resuelto', '2022-09-12 12:34:56', '2022-09-12 12:35:07', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(402, 4013, 'se asiste a la secretaria de secretaría de obras a fin de instalar firma digital a daniela lembo por pedido de dirección', '', 'daniela lembo', '', 'realizado', '2022-09-12 12:36:31', '2022-09-12 12:36:44', 3, 1006, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(403, 7010, 'se resetea a norma.maure por mail de ale ortiz', '', 'norma maure', '', 'realizado', '2022-09-12 12:37:31', '2022-09-12 12:37:43', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(404, 4013, 'se asiste al usuario Jorge Granata (externo) para iniciar factibilidad', '', 'jorge granata', '', 'realizado', '2022-09-12 12:46:35', '2022-09-12 12:47:15', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(405, 4017, 'se asigna a renzo como admin del grupo de sistema de stock, esto lo pide javier garcia porque el se salió del grupo hace tiempo y no podía hacerlo.', '', 'renzo', '', 'realizado', '2022-09-12 12:50:31', '2022-09-12 12:50:42', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-09-12', 'German SANCHEZ'),
(406, 3004, ' Direccion de Desarrollo Social necesita que una impresora Samsung esté configurada en una PC. Se adjunta IP\r\nTambién coloco otra PC con su IP 192.168.20.113 que en esta sí está configurado la impresora.', '192.168.20.95', 'Dirección de Desarrollo Social - Discapacidad', '', 'Impresora configurada', '2022-09-12 13:41:03', '2022-09-12 14:13:33', 3, 4006, 35871182, NULL, NULL, NULL, 3, '2022-09-12', 'Monica LIVOLSI'),
(407, 1002, 'Mapear la unidad de red para Contaduria, para Ferry.\r\nSe ha creado un recurso compartido en el 192.168.40.118 que se llama contaduria y las credenciales son: usuario de conexión: contaduria clave: CuentaCuentos.\r\nEsto tendría que mapearse en todas las máquinas que van a compartir información (principalmente en la de Ferry). La info que dejen en ese directorio se va a copiar todas las noches. Que no dejen música, imágenes ni cosas raras que no sea extrictamente laborales, porque SERÁN BORRADAS SIN AVISO PREVIO.', '', 'Contaduria', '', NULL, '2022-09-12 18:37:55', NULL, 1, 4005, 0, NULL, NULL, NULL, 1, '2022-09-12', 'Pedro  GARBARINO'),
(408, 7013, 'se agregan 5 usuarios al tramite externo de espacios verdes', '', 'tramites varios espacios verdes', '', 'realizado', '2022-09-13 08:21:16', '2022-09-13 08:23:50', 3, 3003, 28700618, NULL, NULL, NULL, 4, '2022-09-13', 'German SANCHEZ'),
(409, 4001, 'se desvinculan de la UO a lina.gonzales y susana.gonzalez según correo enviado por leila de origen \"daniela lembo\" de SO... ambas jubiladas pero todavía no se sabe decreto', '', 'lina.gonzales y susana.gonzalez', '', 'realizado', '2022-09-13 08:23:38', '2022-09-13 08:24:07', 3, 1006, 28700618, NULL, NULL, NULL, 4, '2022-09-13', 'German SANCHEZ'),
(410, 3001, 'Hay una impresora alquilada Xerox en la Dirección Desarrollo - Trabajo Social , está parada, que no toma el papel y cuando lo realiza lo saca roto.', '', 'Dirección de Desarrollo Social - Trabajo Social', '', 'se envio mail a xerox y fueron a verla', '2022-09-13 08:41:54', '2022-09-14 08:58:07', 3, 4006, 36768171, NULL, NULL, NULL, 3, '2022-09-13', 'Monica LIVOLSI'),
(411, 4013, 'La profesional solicita desarchivo de EE-281-2020', '', 'Melina Maccari', '', 'le informo que los desarchivos se solicitan al área donde se encuentra el expediente', '2022-09-13 08:51:39', '2022-09-13 08:54:05', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-13', 'Nicolas MAURE'),
(412, 3003, '\r\nVolvieron a llamar porque ya son mas máquinas las que tienen problemas.\r\n\r\nSilvia de Legales, la computadora se reinicia continuamente y no puede trabajar.', '', 'Silvia', '', 'Reparacion automatica ', '2022-09-13 09:02:30', '2022-09-13 12:52:22', 3, 1001, 38101303, NULL, NULL, NULL, 3, '2022-09-13', 'Raul SORIA'),
(413, 3001, 'De escribanía tienen que hacer las certificaciones y desde el jueves que piden que vaya alguien a ver el problema de la impresora. Que por favor se acerquen.', '', 'Inocenti Silvana', '', NULL, '2022-09-13 09:08:12', NULL, 5, 1001, 0, NULL, 'Pedido duplicado reiteradas veces', '2022-09-14 08:53:06', 3, '2022-09-13', 'Sonia ROMAN'),
(414, 3001, 'En Ecribanía tienen una impresora HP 5525 y no pueden cambiar el cartucho CYAN. El carro no puede moverse al centro. Dicen que es URGENTE!!!!!', '', '', '', 'cartuchos', '2022-09-13 09:41:11', '2022-09-19 11:26:39', 3, 1011, 29112717, NULL, NULL, NULL, 3, '2022-09-13', 'Monica LIVOLSI'),
(415, 3002, 'De salud llaman porque necesitan le instalen el winds pro que fue ante un técnico y grabó la instalación en un pen drive y ahora debe bajarse en otras máquinas', '', 'Andrea y Silvana', '', 'se instalo el programa requirido', '2022-09-13 09:44:00', '2022-09-15 10:12:00', 3, 4007, 41191664, NULL, NULL, NULL, 3, '2022-09-13', 'Sonia ROMAN'),
(416, 7013, 'inconveniente en finalizar ee', '', 'guadalupe control de gestion', '', 'se asiste por whp', '2022-09-13 09:54:47', '2022-09-13 09:55:01', 3, 1002, 28700618, NULL, NULL, NULL, 4, '2022-09-13', 'German SANCHEZ'),
(417, 4015, 'se solicita intervención en ee-11942-2022 no se encuentra en busqueda, no puede cargar permiso de construcción', '', 'externo', '', 'realizado por whp grupo alejandro le.\r\n', '2022-09-13 12:07:12', '2022-09-13 12:07:36', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-13', 'German SANCHEZ'),
(418, 4016, 'reunion a de 10 a 11:30  en TG para resolver problema de configuración ', '', 'sistemas - redes', '', 'realizada primera prueba', '2022-09-13 12:09:38', '2022-09-13 12:09:55', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-09-13', 'German SANCHEZ'),
(419, 4013, 'La tramitadora dice que no puede solicitar inspeccion en EE-1218-2020', '', '', '', 'le informo que hay una tarea archivada desde el 2021, Archivo Arquitectura, se la asigno a Alexandra Maza y le digo que vaya a pedirlo a Obras Privadas', '2022-09-13 12:15:32', '2022-09-13 12:16:27', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-13', 'Nicolas MAURE'),
(420, 3002, 'De la Biblioteca Alma Fuerte no pueden conectarse al wfi que por favor se arrimen.', '', 'Hugo Nadim', '', 'contraseñas', '2022-09-13 12:22:11', '2022-09-19 10:22:32', 3, 4003, 29112717, NULL, NULL, NULL, 3, '2022-09-13', 'Sonia ROMAN'),
(421, 7013, 'Se activa firma de autonumerados momentaneamente al legislativo.', '', 'Presidencia del leg.', '', 'realizado', '2022-09-14 07:15:15', '2022-09-14 07:15:37', 3, 10000, 28700618, NULL, NULL, NULL, 4, '2022-09-14', 'German SANCHEZ'),
(422, 4001, 'se crea usuario para salud', '', 'yanina rodriguez', '', 'realizado', '2022-09-14 07:25:29', '2022-09-14 07:25:41', 3, 4007, 28700618, NULL, NULL, NULL, 4, '2022-09-14', 'German SANCHEZ'),
(423, 4000, 'El profesional solicita alta de usuario', '', 'Sebastian Torres', '', 'Le informo que ya tenía usuario creado y le paso datos de acceso', '2022-09-14 07:33:37', '2022-09-14 07:33:59', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(424, 4000, 'El profesional solicita alta de usuario', '', 'Orlando Ruben Ivars', '', 'Le informo los requisitos necesarios', '2022-09-14 07:35:42', '2022-09-14 07:35:59', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(425, 4013, 'El profesional solicita el desarchivo de EE-4795-2021', '', '', '', 'Derivo reclamo a Alejandro Lecerasi ya que es Archivo Recurso', '2022-09-14 07:44:25', '2022-09-14 07:45:02', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(426, 4000, 'El profesional solicita alta de usuario', '', 'Eduardo Carrion', '', 'le informo los requisitos necesarios', '2022-09-14 07:46:57', '2022-09-14 07:47:21', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(427, 4000, 'La profesional solicita alta de usuario', '', 'Agustina Costabile', '', 'le informo los requisitos necesarios', '2022-09-14 07:49:17', '2022-09-14 07:49:37', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(428, 7013, 'se agregan legajos y cargos a dos agentes\r\n\r\nROSALES SOLEDAD LEGAJO 12089\r\nSOTO MARTINA LEGAJO 12101\r\n\r\nsolicita: carlos.gatica', '', 'rrhh y hacienda', '', 'realizado', '2022-09-14 07:50:08', '2022-09-14 07:50:22', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-09-14', 'German SANCHEZ'),
(429, 4000, 'El profesional solicita alta de usuario', '', 'Emanuel Pereyra', '', 'le informo los requisitos necesarios', '2022-09-14 08:00:07', '2022-09-14 08:00:30', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(430, 4013, 'La profesional solicita reseteo de clave', '', 'Dana Chapini', '', 'le reseteo la clave, previo pedido de dni para validar la identidad', '2022-09-14 08:07:02', '2022-09-14 08:07:31', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(431, 4000, 'El profesional solicita alta de usuario', '', 'Abel Salteño', '', 'le informo los requisitos necesarios', '2022-09-14 08:08:26', '2022-09-14 08:08:44', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(432, 3003, 'El Director de Obras Privadas no le esta funcionando el teclado. Necesita que alguien lo vea o se lo cambie. Raúl', '', 'Rodrigo', '', 'Cable pòwer', '2022-09-14 08:27:12', '2022-09-14 09:10:29', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-09-14', 'Raul SORIA'),
(433, 3003, 'De Manteniento Incendio en el 1er piso la computadora enciende y se apaga continumanete piden que alquien vaya', '', 'Viviana', '', 'se reemplazo teclado', '2022-09-14 08:28:59', '2022-09-14 09:10:19', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-09-14', 'Sonia ROMAN'),
(434, 3004, 'Instalar el google chrome en pc.', '192.168.12.185', 'Macarena Vivares', '2615459143', 'Se instalo Chrome', '2022-09-14 08:41:49', '2022-09-14 08:56:06', 3, 3007, 38101303, NULL, NULL, NULL, 3, '2022-09-14', 'Evelyn CARDENAS'),
(435, 3000, 'Configurar la impresora 192.168.27.193(405) a la pc 192.168.27.131', '192.168.27.131', 'Joel Moyano ', '2615900519', 'instalacion de impresora', '2022-09-14 08:48:43', '2022-09-14 09:04:29', 3, 4001, 29112717, NULL, NULL, NULL, 3, '2022-09-14', 'Admin AD'),
(436, 3001, 'Tiene una impresora XCerox que se atasta continuamente y tiene que cargar papel por la bandeja 1 ', '', 'Macarena', '', 'Pedido de asistencia hecho a Xerox', '2022-09-14 08:52:15', '2022-09-15 13:41:17', 3, 3007, 35871182, NULL, NULL, NULL, 3, '2022-09-14', 'Sonia ROMAN'),
(437, 3006, 'no accede a paginas', '192.168.110.133', '', '', 'proxy', '2022-09-14 10:25:26', '2022-09-14 10:25:39', 3, 3001, 29112717, NULL, NULL, NULL, 3, '2022-09-14', 'Lucas SALEME'),
(438, 7019, 'Dicen no tener internet.\r\nLa pc no se encuentra conectada a la red', '192.168.20.143', 'Joaquin Rubio', '', 'La pc no se encuentra conectada a la red', '2022-09-14 10:29:41', '2022-09-14 14:14:53', 3, 4002, 30839932, NULL, NULL, NULL, 1, '2022-09-14', 'Admin AD'),
(439, 3002, 'no pueden ingresar al compras.guaymallen.gob.ar se queda cargando y le sale error parece que hay problema de conexion con el servidor', '192.168.24.198', 'Sabrina', '', 'proxy', '2022-09-14 10:39:43', '2022-09-14 10:56:06', 3, 5009, 29112717, NULL, NULL, NULL, 3, '2022-09-14', 'Sonia ROMAN'),
(440, 3002, 'Belén de Tránsito, en una de las computadoras nuevas no puede ingresar al correo y whatsapp web. Le aparece un error de Proxy. Raúl', '192.168.15.76', 'Belén', '', 'proxy 192.168.*;172.30.*;*.guaymallen.gob.ar*', '2022-09-14 10:43:08', '2022-09-14 10:58:34', 3, 1004, 29112717, NULL, NULL, NULL, 3, '2022-09-14', 'Raul SORIA'),
(441, 1002, 'Llamn de prensa que no pueden usar el wfi', '', 'Nicolás', '', 'El wifi estaba bloqueado, ya esta funcionando\r\n', '2022-09-14 10:48:32', '2022-09-14 14:15:29', 3, 1020, 30839932, NULL, NULL, NULL, 1, '2022-09-14', 'Sonia ROMAN'),
(442, 4000, 'El profesional envía los datos solicitados', '', 'Orlando Ivars', '', 'creo el usuario y le paso los datos de acceso', '2022-09-14 11:29:01', '2022-09-14 11:29:24', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-14', 'Nicolas MAURE'),
(443, 4014, 'se crea Petición #3076  por inconveniente en Estructurado de Planificación/obras privadas.', '', 'alejandro lecerassi', '', 'Creado', '2022-09-14 12:44:13', '2022-09-14 12:46:03', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-14', 'German SANCHEZ'),
(444, 3000, 'No puede imprimir', '192.168.16.192', '', '', 'Impresora apuntando a un puerto WSD', '2022-09-15 09:27:01', '2022-09-15 09:27:15', 3, 5002, 35871182, NULL, NULL, NULL, 3, '2022-09-15', 'Leandro BORQUEZ'),
(445, 3002, 'Chicos de presupuesto llaman que se desaparecio Infogov3', '192.168.130.153', '', '', 'se instalo infogov', '2022-09-15 09:28:30', '2022-09-15 09:48:39', 3, 1007, 38101303, NULL, NULL, NULL, 3, '2022-09-15', 'Sonia ROMAN'),
(446, 7019, 'De Corralitos se quejan que infogob esta muy lento y a veces se va del sistema en todas las máquinas', '', 'Rodrigo', '', NULL, '2022-09-15 09:34:17', NULL, 1, 5008, 0, NULL, NULL, NULL, 1, '2022-09-15', 'Sonia ROMAN'),
(447, 3005, 'el infogob3 no abre porque le dice que no encuentra ruta de actualización', '192.168.24.194', 'Carla Zamora', '', 'Se instalo InfoGov 3', '2022-09-15 10:12:07', '2022-09-15 11:18:55', 3, 5009, 38101303, NULL, NULL, NULL, 3, '2022-09-15', 'Sonia ROMAN'),
(448, 7013, 'se modifican roles externos de rentas - patentes / Apremios / Dirección', '', 'Varios', '', 'realizado e informado por correo', '2022-09-15 12:07:56', '2022-09-15 12:08:12', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-09-15', 'German SANCHEZ'),
(449, 4000, 'El profesional solicita alta de usuario y adjunta la \"documentación\"', '', 'Eduardo Carrion', '', 'Creo el usuario y le paso los ´datos de acceso´', '2022-09-15 12:47:54', '2022-09-15 12:48:29', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-09-15', 'Nicolas MAURE'),
(450, 4015, 'se crea petición#3093 para actualizar desarrollo', '', 'alejandro lecerassi', '', 'realizado', '2022-09-16 07:48:14', '2022-09-16 07:55:10', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(451, 7013, 'se informa el r-128-2022 con creación sin dar tarea activa. whp al grupo genus', '', 'micaela martinez', '', 'realizado', '2022-09-16 08:06:08', '2022-09-16 08:28:23', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(452, 4003, 'se asigna el r-128-2022 a florencia.garcia a pedido de maria rios de SG para darle continuidad', '', 'r-128-2022', '', 'realizado', '2022-09-16 08:27:59', '2022-09-16 08:28:10', 3, 1013, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(453, 4001, 'se dan de baja agentes pasantes de hacienda.\r\n\r\n● Constanza BUTTERFIELD dni 39.952.773\r\n● Agustín AMADIO dni 39.377.717\r\n● Matías BONANNO dni 40.560.944\r\n\r\ncon decretos de bajas\r\nM. Bernarda Krause\r\ntodo por mail.', '', 'hacienda', '', 'falta dar de alta ', '2022-09-16 08:42:24', '2022-09-16 08:43:01', 3, 1007, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(454, 7014, 'Se desarchiva el ee-13982-2021 y se asigna a elena.silvestrini', '', 'elena.silvestrini', '', 'realizado', '2022-09-16 08:54:07', '2022-09-16 08:54:29', 3, 3008, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(455, 3002, 'No puede imprimir de su máquina ', '192.168.200.102', 'Erica', '', 'Fui y no me reclamaron\r\n', '2022-09-16 09:26:00', '2022-09-19 09:53:03', 3, 2000, 36768171, NULL, NULL, NULL, 3, '2022-09-16', 'Sonia ROMAN'),
(456, 3002, 'De Escribanía dicen que le habian dejado configurado para que entrara del chrome a algunos sitios, por ejemplo a la página de ATM, ayer lo pudo hacer y hoy no le permite entrar a ninguna página.', '192.168.176.72', 'Escribana Paola Rodriguez', '', 'Proxy', '2022-09-16 09:29:18', '2022-09-16 09:44:19', 3, 1011, 38101303, NULL, NULL, NULL, 3, '2022-09-16', 'Sonia ROMAN'),
(457, 4015, '#3094\r\nreclamamos que quiten el envío de correo generando nuevo usuario para los contribuyentes externos.', '', 'micaela martinez', '', 'solicitado y esperando resolución', '2022-09-16 10:07:24', '2022-09-16 10:07:44', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(458, 4000, 'se crea usuario abril.milani a pedido de bernarda de sh\r\n', '', 'abril milani', '', 'creado e informado correo y sayges', '2022-09-16 10:32:26', '2022-09-16 10:32:47', 3, 1007, 28700618, NULL, NULL, NULL, 4, '2022-09-16', 'German SANCHEZ'),
(459, 3003, 'La pc no enciende, el monitor si. Necesita que alguien de acerque', '', 'Mauricio', '', 'Cambio de fuente, la pc pertenece a Despacho, no a Gobierno', '2022-09-19 09:07:00', '2022-09-19 10:09:18', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-09-19', 'Sonia ROMAN'),
(460, 7016, 'Subir 9:50 a ayudar a intendencia a conectar un proyector al 6to', '', 'Emiliano Gobbi', '', 'se conecto el proyector', '2022-09-20 08:59:10', '2022-09-20 10:46:09', 3, 1008, 38101303, NULL, NULL, NULL, 3, '2022-09-20', 'Admin AD'),
(461, 3003, 'De Legales dicen que la pc que le llevaron esta haciendo mucho ruido  si alguien puede ir a verla \r\n\r\nTambien necesitan que vayan porque tiene problemas con el equipo lector no saben si es problema del equipo o de la pc y necesitan que le digan porque si es del equipo tiene garantia y lo tienen que reclamar', '', 'Daniela i Vanina', '', 'cooler con ruido', '2022-09-20 09:02:56', '2022-09-20 10:45:34', 3, 1001, 36768171, NULL, NULL, NULL, 3, '2022-09-20', 'Sonia ROMAN'),
(462, 4000, 'se crea usuario web MANUEL JESUS CARRIZO', '', 'MANUEL JESUS CARRIZO', '', 'realizado', '2022-09-20 09:05:12', '2022-09-20 12:18:09', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(463, 4001, 'se crea listado de 9 usuarios de desarrollo económico, solicitado por whp leila.', '', 'desarrollo económico', '', 'realizado', '2022-09-20 09:06:55', '2022-09-20 12:19:06', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(464, 4013, 'Buen día estimado, para poder ayudarlo necesitamos capture el cartel que le sale y explique el proceso que realiza para que suceda, ya que es muy dificil replicar para ver. entiendo que el problema debe ser al adjuntar, pero tiene la tarea \"solicitud de inspección\" par realizar, entonces necesito saber que quiere adjuntar y para que así lo informo, y como le dije, la imagen del cartel que le sale al hacerlo.\r\n', '', 'externo', '', 'realizado', '2022-09-20 09:25:37', '2022-09-20 12:18:59', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(465, 3002, 'no puede entrar a las paginas de ATM las demas máquinas entran sin problemas', '192.168.100.155', 'Clsudia Lopez', '', 'Servidor de atm', '2022-09-20 09:54:11', '2022-09-20 10:46:32', 3, 3009, 38101303, NULL, NULL, NULL, 3, '2022-09-20', 'Sonia ROMAN'),
(466, 3002, 'Llaman porque dicen que le llevaron una pc reacondicionada pero ahora no puede imprmir ni de word ni de los sistemas La ip que puede imprimir normalmente como referencia 192.168.24.194', '192.168.24.190', 'Sabrina', '', 'listo\r\n', '2022-09-20 10:00:27', '2022-09-20 11:06:51', 3, 5009, 36768171, NULL, NULL, NULL, 3, '2022-09-20', 'Sonia ROMAN'),
(467, 4010, 'se crean correos para usuarios de desarrollo económico y se resetean en total 20 correos para ingresar nuevamente', '', 'desarrollo económico', '', 'realizado', '2022-09-20 10:51:32', '2022-09-20 12:18:21', 3, 4002, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(468, 4000, 'se crean dos usuarios nuevos, a uno se lo asiste para realizar consultas con electrotécnica de dop.', '', 'ext.', '', 'realizado', '2022-09-20 10:53:04', '2022-09-20 12:18:16', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(469, 7013, 'se cambian los permisos de maximiliano.azcurra a fin de generar expedientes y notas.', '', 'maximiliano azcurra', '0', 'realizado', '2022-09-20 10:54:57', '2022-09-20 12:18:54', 3, 10000, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(470, 4000, ' baja del usuario victor.moreno y se asignen los EE que tenga asignado al agente edgardo.armoa', '', 'leandro.picon', '', 'realizado', '2022-09-20 11:01:08', '2022-09-20 12:18:49', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(471, 7013, 'Buen día, se traslada de Unidad Organizativa a matias.oleda perteneciendo actualmente a servicios públicos.\r\n', '', 'leandro picón', '', 'realizado', '2022-09-20 11:06:06', '2022-09-20 12:18:42', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(472, 4000, 'Se crea la agente y se cambian los usuarios de UO, también te ponemos como Unidad Organizativa Secundaria la \"Mesa única de habilitación de comercio\" a mayra arrieta', '', 'mayra arrieta', '', 'realizado', '2022-09-20 11:21:31', '2022-09-20 12:18:37', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(473, 4001, 'Buen día, se completan datos a bruno y se crea nuevo usuario sergio.nievas\r\n', '', 'sergio.nievas', '', 'realizado', '2022-09-20 11:30:46', '2022-09-20 12:18:32', 3, 3007, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(474, 4002, 'Se agrega a analia.rojas en las dos UO solicitadas.\r\n', '', 'analia.rojas', '', 'realizado', '2022-09-20 12:17:00', '2022-09-20 12:18:27', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(475, 4014, 'se controla en DG (sebastian alvarez) la \"Nota estilo despacho - administración y parsonal\" a fin de verificar su uso, se da aviso en intendencia que no modifiquen la plantilla (solo a modo de sugerencia para evitar un problema).', '', 'dg e intendencia', '', 'realizado', '2022-09-20 12:22:00', '2022-09-21 09:45:29', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-09-20', 'German SANCHEZ'),
(476, 3003, 'De Dorrego llaman porque le entregaron una pc que vino por arreglo pero ahora le no tiene el scanner ni las carpetas loscales ExpedienteLu ExpedienteRoxi NotasElectronicasLu NotasElectronicasRoxi Varios y el acceso a la carpeta compartida Dorrego. La ip de la maquina es 192.168.24.190 y en la ip 24.198 falta tambien el scann y la carpeta comprtida Dorrego.', '192.168.24.190', 'ROXANA Y LUCIANA FORNES', '', 'Se soluciono lo solicitado, salvo la ip 198 que no conecta! ', '2022-09-20 13:41:37', '2022-09-20 14:55:00', 3, 5009, 38101303, NULL, NULL, NULL, 3, '2022-09-20', 'Sonia ROMAN'),
(477, 3002, 'De Recaudaciones varias dicen que no puede acceder a la calculadora ya que cuando ingresa queda en blanco y la necesitan para trabajar', '192.168.100.126', 'Nilda', '', 'Se reeinstalo la calculadora ', '2022-09-20 13:44:07', '2022-09-22 08:53:05', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-09-20', 'Sonia ROMAN'),
(478, 4013, 'se logra resolver el problema en ee-13901-2022, se asiste al profesional y se manda por correo el proceder.', '', 'Alexis', '', 'realizado', '2022-09-21 08:03:35', '2022-09-21 08:10:41', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(479, 4013, 'EE-1110-2019, se informa que puede acceder con demoras, aparente problema por el año de la pieza, se avisa al profesional para probar nuevamente.', '', 'ext', '', 'realizado', '2022-09-21 08:26:48', '2022-09-21 09:45:37', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(480, 4000, 'se crea usuario (que también es empleado municipal)\r\nRoberto Luna como MMO', '', 'roberto luna', '', 'realizado', '2022-09-21 08:35:36', '2022-09-21 09:45:43', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(481, 3000, 'Ricardo Diaz no puede imprimir. Es una 405 \r\nIP IMPRESORA: 192.168.150.5\r\nIP PC: 192.168.150.52', '', 'Ricardo Diaz', '', 'sin cocesion inprezora', '2022-09-21 08:41:54', '2022-09-22 08:21:36', 3, 1007, 36768171, NULL, NULL, NULL, 3, '2022-09-21', 'Admin AD'),
(482, 4013, 'se asiste usuario profesional para visualizar expedientes antiguos:\r\nBuen día, podemos ver que el expediente se encuentra en su bandeja para solicitud de inspección, en caso de no poder verla recuerde cambiar la fecha de inicio, esta permite filtrar la vista, cambie el año a 2019.\r\n', '', 'ext', '', 'realizado', '2022-09-21 08:50:31', '2022-09-21 09:45:48', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(483, 4014, 'se investiga y desincorpora nota referente 136/2022 al EE. 15432/2022. pedido por cecilia.', '', 'Cecilia Oruez', '', 'realizado', '2022-09-21 08:54:55', '2022-09-21 09:45:54', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(484, 3005, 'No puede ingresar a Excel, le sale un cartel \"error de activacion de producto\"', '192.168.100.10', 'Franco Grangetto', '2613021390', NULL, '2022-09-21 09:01:49', NULL, 4, 3007, 0, 'la ip 100.10 no corresponde a una pc..si es 100 de ip deberia ser rentas, patentes o algo en planta baja..y no OBRAS POR ADMINISTRACION como dice en el reclamo..y si fuese asi, el cartel de activacion no afecta al ingresar al excel, word, power point...', NULL, NULL, 3, '2022-09-21', 'Admin AD'),
(485, 3001, 'De Cementerio llaman porque parece que han dado impresión de un libro muchas veces y no pueden cancelarlo  . Han abierto la bandeja de la impresora para que no siga imprimiento , si pueden cancelar la impresión. Ademán necetia si pueden ponerle una clave para usar la impresorta o si se puede saber el usuario.', '', '', '', 'q termine de imprimir nomas', '2022-09-21 09:27:26', '2022-09-23 09:29:52', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-09-21', 'Sonia ROMAN'),
(486, 4000, 'se informan a dos profesionales para proceder con la creación de usuarios.', '', 'ext', '', 'realizado', '2022-09-21 09:44:44', '2022-09-21 09:46:00', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(487, 4015, 'Se crea petición #3115 nuevamente por los problemas de que al finalizar factibilidad, no abre permiso de construcción.', '', 'alejandro lecerassi', '', 'realizado', '2022-09-21 09:54:05', '2022-09-21 10:26:24', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(488, 3004, 'Necesitan que Instalen:\r\n192.168.20.63 S.I.A.P. (Última Versión) y poder Escanear en la HP Laserjet MFP 425\r\n192.168.20.104 S.I.A.P. (Última Versión)\r\n192.168.20.35 Impresora Xerox PCL6 y poder escanear con mejor calidad', '', 'Patricia Henriquez', '', NULL, '2022-09-21 10:23:25', NULL, 4, 4006, 0, 'Me conecté varias veces y no respondieron en el chat de ninguna computadora para trabajar remoto', NULL, NULL, 3, '2022-09-21', 'Raul SORIA'),
(489, 4009, 'se resetea clave de usuario, puso mal la clave muchas veces..\r\nrelaciones con la comunidad', '', 'natalia pizzolatto', '', 'resuelto', '2022-09-21 11:25:33', '2022-09-21 11:37:12', 3, 4006, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(490, 4000, 'se resetea clave, informa que a partir de hoy no pudo ingresar. se informa', '', 'gabriela gomez', '', 'realizado', '2022-09-21 11:38:26', '2022-09-21 11:42:43', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(491, 4006, 'se cambian credenciales de natalia pizzolatto, se asiste remotamente visto que no sabía como hacerlo...', '', 'natalia pizzolatto', '', 'resuelto\r\n', '2022-09-21 12:57:54', '2022-09-21 12:58:08', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-21', 'German SANCHEZ'),
(492, 4014, 'sE COMUNICA sONIA rOMAN A FIN DE INFORMAR QUE:\r\nha hablado un profesional  muchas veces que dice que en 72 le contestarían y hace más de 90 horas que no puede ingresar al sistema y no puede trabajar su correo es hugocm13@yahoo.com // se envía un correo y rebota como inexistente, se revisan los correos y no hay ningún pedido de reseteo de clave. no se sabe mas información del mismo', '', '', '', 'realizado\r\n', '2022-09-22 08:13:25', '2022-09-22 08:13:40', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-22', 'German SANCHEZ'),
(493, 3002, 'LLaman de Salud que le instalaron una pc pero no tiene internet si alguien puede ir', '', 'Silvia', '', 'estaba solucionado ', '2022-09-22 08:31:45', '2022-09-22 10:23:04', 3, 4007, 38101303, NULL, NULL, NULL, 3, '2022-09-22', 'Sonia ROMAN'),
(494, 3003, 'De Mesa de entradas la pc se apagó y no saduvo mas', '', 'Uriel', '', 'se le cambia la pc xq se quemo la placa madre', '2022-09-22 08:52:21', '2022-09-23 09:30:14', 3, 1013, 36768171, NULL, NULL, NULL, 3, '2022-09-22', 'Sonia ROMAN'),
(495, 3004, 'De defensa al consumidor solicitan se instale lector de pantallas para agente no vidente.\r\nNE-15710-22', '', 'Facundo Dispenza', '', 'se instalo el programa solicitado', '2022-09-22 09:28:07', '2022-09-26 11:09:09', 3, 5037, 38101303, NULL, NULL, NULL, 3, '2022-09-22', 'Admin AD');
INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`, `usuarioCreado`) VALUES
(496, 4013, 'Se asiste para romper la relación anexada de nota, corresponde incorporar.\r\nee-15562-2022', '', 'Caludia Cola', '', 'realizado', '2022-09-22 10:17:13', '2022-09-22 10:17:37', 3, 4004, 28700618, NULL, NULL, NULL, 4, '2022-09-22', 'German SANCHEZ'),
(497, 4001, 'se da de baja por jubilación al agente por jubilación, pasado por leila whp grupo req. bender', '', 'Viviana Calderon', '', 'realizado', '2022-09-22 10:54:12', '2022-09-22 10:54:25', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-09-22', 'German SANCHEZ'),
(498, 3005, 'De Auditoria de Transito en la bodega dice que le trajeron una pc para arreglar y no encuentra los planos de todos los años que tenia si pueden guiarles donde los puede encontrar.\r\nNo le da ip la máquina', '', 'Diego Appon', '2614724408', 'Se le explicó donde están guardados los archivos del backup', '2022-09-22 12:19:00', '2022-09-28 11:59:43', 3, 1004, 35871182, NULL, NULL, NULL, 3, '2022-09-22', 'Sonia ROMAN'),
(499, 3002, 'Gerardo de Secretaría de Gobierno tiene una computadora que no enciende', '', 'Gerardo', '', 'Enciende', '2022-09-22 12:22:22', '2022-09-23 11:13:42', 3, 1005, 36768171, NULL, NULL, NULL, 3, '2022-09-22', 'Raul SORIA'),
(500, 3002, 'Gerardo de Secretaría de Gobierno no puede escanear desde la computadora.', '192.168.140.180', 'Gerardo', '', 'se soluciono lo del escaner', '2022-09-22 12:24:50', '2022-09-23 11:12:50', 3, 1005, 38101303, NULL, NULL, NULL, 3, '2022-09-22', 'Raul SORIA'),
(501, 4013, 'se asiste a marcela de vivienda para ingresar al webmail del usuario Guisasola Ignacio', '', 'Guisasola Ignacio', '0', 'realizado', '2022-09-22 12:38:08', '2022-09-22 12:38:18', 3, 3005, 28700618, NULL, NULL, NULL, 4, '2022-09-22', 'German SANCHEZ'),
(502, 4000, 'se crean dos nuevos usuarios para Dirección de comercio e industria, solicitado por alejandro\r\n\r\njoaquin.moyano	Guaymallen22\r\nangel.fiorentini	Guaymallen22\r\n', '', 'alejandro ortiz', '', 'realizado', '2022-09-22 13:02:50', '2022-09-22 13:03:05', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-22', 'German SANCHEZ'),
(503, 4010, 'se crea correo habilitacion.comercio@guaymallen.gob.ar para mayra arrieta ya avisado en dirección.', '', 'mayra arrieta', '', 'realizado', '2022-09-23 08:14:51', '2022-09-23 08:17:18', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-23', 'German SANCHEZ'),
(504, 4002, 'se cambian los permisos de vista del historial y se actualizan los datos de la persona. Coordinador de Ámbito de Identidad Originaria ', '', 'Adrian Carreño', '', 'realizado\r\n', '2022-09-23 08:17:03', '2022-09-23 08:53:30', 3, 1005, 28700618, NULL, NULL, NULL, 4, '2022-09-23', 'German SANCHEZ'),
(505, 3002, 'De mesa de entrada necesitan le insatlen la aplicacion para scanear desde la xerox', '192.168.100.181', 'URIEL', '', 'f en el chat', '2022-09-23 09:03:19', '2022-09-26 11:09:13', 3, 1013, 36768171, NULL, NULL, NULL, 3, '2022-09-23', 'Sonia ROMAN'),
(506, 3002, 'Entra a su correo gmail  entra y se le sale .', '192.168.120.151', 'Florencia', '', 'me meti y tiene el correo abierto', '2022-09-23 09:08:08', '2022-09-23 09:31:03', 3, 3004, 36768171, NULL, NULL, NULL, 3, '2022-09-23', 'Sonia ROMAN'),
(507, 3000, 'Sabrina de Delegación Dorrego la impresora esta imprimiento los boletos en doble faz y no puede configurarlo para que no lo haga.', '192.168.24.190', 'Sabrina', '', 'Se configuró la impresora para imprimir simple faz', '2022-09-23 09:39:13', '2022-09-23 11:00:29', 3, 5009, 35871182, NULL, NULL, NULL, 3, '2022-09-23', 'Raul SORIA'),
(508, 3001, 'Daniela de Dirección de Asuntos Legales tiene problemas con Gmail y Google Drive. Ademas de la lentitud en general de Internet.', '192.168.150.87', 'Daniela', '', 'proxy', '2022-09-23 09:49:47', '2022-09-23 12:53:03', 3, 1001, 38101303, NULL, NULL, NULL, 3, '2022-09-23', 'Raul SORIA'),
(509, 4016, 'luego de la reunión se responde expediente de salud a fin de modificar los trámites externos de dicha dirección, se necesita aclarar los detalles en cada cambio y filtrar lo que no corresponde', '', 'basaez c', '', 'realizado', '2022-09-23 10:03:21', '2022-09-23 10:03:39', 3, 4007, 28700618, NULL, NULL, NULL, 4, '2022-09-23', 'German SANCHEZ'),
(510, 3002, 'Franco Grangetto está en home office y tiene error de activación de producto en Office', '', 'Franco Grangetto', '', 'Me conecté por Anydesk y lo activé', '2022-09-23 10:46:50', '2022-09-23 10:47:33', 3, 3007, 35871182, NULL, NULL, NULL, 3, '2022-09-23', 'Leandro BORQUEZ'),
(511, 3002, 'de la oficina de comercio piden asistencia porque todo internet esta muy lento y no pueden  trabajar,  tambien tienen problemas las demas oficinas', '', 'Paola', '', NULL, '2022-09-23 12:25:52', NULL, 4, 2002, 0, 'Problema general de la red ya solucionado', NULL, NULL, 3, '2022-09-23', 'Sonia ROMAN'),
(512, 3002, 'No tienen internet, sistema SayGes ni Whatsapp Web', '192.168.100.182', '', '', 'Proxy', '2022-09-26 08:31:34', '2022-09-26 08:37:44', 3, 1013, 38101303, NULL, NULL, NULL, 3, '2022-09-26', 'Raul SORIA'),
(513, 1002, 'Liberarle para usar facebook', '192.168.140.195', 'Gonzalo Barrera', '', 'RESUELTO', '2022-09-26 08:46:08', '2022-09-26 09:09:41', 3, 1005, 30839932, NULL, NULL, NULL, 1, '2022-09-26', 'Admin AD'),
(514, 3000, 'no funciona al imprimir', '192.168.20.4', '', '', 'instalacion de driver ', '2022-09-26 09:10:57', '2022-09-26 09:38:59', 3, 4002, 29112717, NULL, NULL, NULL, 3, '2022-09-26', 'Lucas SALEME'),
(515, 3002, 'Necesita instalar SketchUp', '192.168.12.170', '', '', 'Instalación por VNC', '2022-09-26 13:40:31', '2022-09-26 13:41:59', 3, 3007, 35871182, NULL, NULL, NULL, 3, '2022-09-26', 'Leandro BORQUEZ'),
(516, 4012, 'Se da capacitación a mesa única de hab. de comercio a fin de arrancar el 27/9, en ella se comprueba la necesidad de un trámite externo, a fin de otorgar un comprobante al solicitante.', '', 'mesa única de hab. de comercio', '', 'realizado', '2022-09-27 07:58:29', '2022-09-27 09:58:16', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(517, 4008, 'se crea nuevo trámite externo para la mesa única de hab. de comercio, ésta se relaciona con la mesa de entradas de planificación. para realizar la revisión de documentación', '', 'mayra arrieta', '', 'realizado', '2022-09-27 08:00:08', '2022-09-27 09:58:21', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(518, 4008, 'Se crea membrete secretaría de obras  para su UO / correo', '', 'daniela lembo', '', 'realizado', '2022-09-27 08:16:27', '2022-09-27 09:58:34', 3, 1006, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(519, 4008, 'Se realiza cambio del usuario francisco.jung de la unidad Contabilidad Central a la unidad Contaduría General.', '', 'fernando ferri', '', 'realizado', '2022-09-27 08:19:15', '2022-09-27 09:58:11', 3, 2005, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(520, 4008, 'se dan de baja a diaz y esqueda, solicitado al correo por decreto.', '', 'pasantes', '', 'realizado', '2022-09-27 08:20:45', '2022-09-27 09:58:04', 3, 2006, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(521, 7010, 'comision.clasificadora  piden resetear nuevamente la clave, sucede dos veces en el día', '', 'alejandro ortiz', '', 'realizado', '2022-09-27 08:21:51', '2022-09-27 09:58:43', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(522, 7013, 'solicita se rompa la relación de Anexados de las NE-15909-20222 y NE-15911-2022, del Expte. EE-12435-2022, atento a que se anexó por error siendo necesario realizar una incorporación.', '', 'leandro picon', '', 'realizado', '2022-09-27 08:33:20', '2022-09-27 09:57:57', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(523, 4014, 'se configura trámite externo para mesa unica de atención, se releva planificación a fin de aclarar las personas que resuelven la nueva tarea y se informa a fin de dar conocimiento. también se da aviso a florencia de mesa de entradas para derivar a las personas que soliciten en mesa de entradas el inicio de una fact. de comercio', '', 'mesa única y mesa de entradas', '', 'realizado', '2022-09-27 08:50:05', '2022-09-27 09:57:52', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(524, 4000, 'se crean 4 nuevos usuarios web para permiso de construcción.', '', 'externos 27/9', '', 'realizado', '2022-09-27 08:59:14', '2022-09-27 09:57:45', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(525, 4008, 'protocolo \"águila c abandona el nido\" hasta el día miércoles a las 7am (día que también vuelve Verónica Cancela)', '', 'cancela iglesias', '', 'realizado a las 7:10', '2022-09-27 09:57:10', '2022-09-28 07:45:44', 3, 1008, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(526, 4013, 'se asiste a claudia para hacer este chat...\r\n\r\n[12:09, 27/9/2022] Claudia Secretaria De Gobierno: Necesito continuar el Expediente 15562, lo q hice fue anular la nota de Excel\r\n[12:10, 27/9/2022] Claudia Secretaria De Gobierno: Ahora necesito q vaya primero la nota 14481 y luego la nota de Excel con el detalle y especificaciones técnicas', '', 'claudia cola', '', 'se explica como proceder.', '2022-09-27 12:32:35', '2022-09-28 07:46:52', 3, 1004, 28700618, NULL, NULL, NULL, 4, '2022-09-27', 'German SANCHEZ'),
(527, 3002, 'De servicio al usuario que se han mudado al primer piso y trabajan realizando aforos y boletos son 4 puestos necesitan que alguien se arrime a configurales el sistema de infogov a que imprima en pdf  y que ellos lo puedan imprimir y a que puedan tambien imprimir por impresora que no la tiene asignada.', '', 'Brenda', '', 'Se configuro los parámetros generales ', '2022-09-27 12:38:16', '2022-09-28 11:03:31', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-09-27', 'Sonia ROMAN'),
(528, 3002, 'Hace 3 semanas le entregaron su máquina ella utiliza el Corel que es lo que ella utiliza para trabaja pero al parecer era una versión de prueba y no lo puede utilizar más . Si pueden intalarle el que tenia nates.', '192.168.37.83', 'Marisa', '', 'listo', '2022-09-27 12:47:55', '2022-09-28 12:30:37', 3, 3002, 36768171, NULL, NULL, NULL, 3, '2022-09-27', 'Sonia ROMAN'),
(529, 4002, 'se activa de la licencia a Octavio Puppetto a pedido de leila', '', 'puppetto', '', 'se activa usuario según pedido', '2022-09-28 08:13:05', '2022-09-28 08:13:46', 3, 1010, 28700618, NULL, NULL, NULL, 4, '2022-09-28', 'German SANCHEZ'),
(530, 4013, 'mauricio soler (profesional) solicita ver expediente para comprender el proceder de sanitarios a fin de verifica.', '', '', '', 'se demuestra como porceder en rentas y en dop para proceder a fin de finalizar dicho ee', '2022-09-28 08:46:19', '2022-09-28 09:49:53', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-28', 'German SANCHEZ'),
(531, 4014, 'Se revisan los trámites externos de DOP luego de recibir cambios para ellos por marcos polo (mail reenviado por leila). Se responde al mismo y se deja contancia a leila por correo.', '', 'marcos polo', '', 'realizado.', '2022-09-28 09:49:11', '2022-09-28 09:50:08', 3, 3001, 28700618, NULL, NULL, NULL, 4, '2022-09-28', 'German SANCHEZ'),
(532, 3002, 'Necesitan que le instalen en la pc el HP-scan\r\ntiene una hp 426', '192.168.24.189', 'Laura', '', 'Se instalo HP Scan', '2022-09-28 11:28:57', '2022-09-28 13:00:18', 3, 5009, 38101303, NULL, NULL, NULL, 3, '2022-09-28', 'Sonia ROMAN'),
(533, 3002, 'Necesitan le asistan para poder scanear del sayges ya que no lo puede hacer desde el sistema', '192.168.90.77', 'Joaquin Moyano', '', 'Se instaló Dynamsoft', '2022-09-28 11:46:09', '2022-09-28 12:04:45', 3, 2002, 35871182, NULL, NULL, NULL, 3, '2022-09-28', 'Sonia ROMAN'),
(534, 4015, 'duplicidad de archivos dentro de expedientes de un mismo usuario.  Análisis #3173', '', 'Genus', '', 'se realiza petición y se espera respuesta por sistema de reclamos.', '2022-09-29 07:45:36', '2022-09-29 08:04:23', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(535, 4016, 'Día lunes 26 se realiza la Reunión con Bromatología a fin de crear el turnero web para los cursos de manipulación de alimentos. Se explica el funcionamiento y el alcance del mismo, sin embargo se le pide a la encargada de dictar estas charlas que mande un correo electrónico con todas las ideas que quiera plasmar a fin de ver las posibilidades de hacerlo en pasos previos de la solicitud del turno (página web). quedamos a la espera de esta información que llegará a soportegenus@guaymallen.gob.ar //// responde el día 29/9 y se imprime la documentación para revisar y armar una plantilla para mostrar el alcance del sistema.....', '', 'Mirna Vega', '', NULL, '2022-09-29 07:51:54', NULL, 2, 2002, 29148522, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(536, 4017, 'Agregar en Dirección o entidad la nueva \"Mesa única de habilitación de comercio\". ', '', 'agustin', '', 'no funciona el pase', '2022-09-29 07:53:51', '2022-09-30 07:25:44', 3, 4005, 88888889, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(537, 4014, 'Se detecta asignado a juliana garcia (dada de baja y pertenecía a Planificación) el ee-234-2021 que pertenece a obras privadas.', '', 'obras privadas y el profesional', '', 'se asigna a melocchi quien resuleve revisión arquitectura', '2022-09-29 08:47:26', '2022-09-29 08:48:32', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(538, 7010, 'se resetea clave de flores.alexis quien vino personalmente. clave de webmail usuario gllen', '', 'alexis flores', '', 'realizado', '2022-09-29 09:09:47', '2022-09-29 09:09:58', 3, 5005, 28700618, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(539, 3005, 'No puede trabajar con Nitro', '', 'Sebastian Alvarez', '', 'Solucionado problema para combinar archivos', '2022-09-29 09:23:07', '2022-09-30 10:01:31', 3, 2003, 35871182, NULL, NULL, NULL, 3, '2022-09-29', 'Admin AD'),
(540, 4016, '17/10/2022 lanzar el sistema de baja de comercio en desarrollo (tomas fiori/ale noli)', '', 'german sanchez', '0', NULL, '2022-09-29 10:50:00', NULL, 2, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-29', 'German SANCHEZ'),
(541, 3004, 'Instalar Infogov3 en pc de vivienda para que patrimonio pueda gestionar las transferencias. DEBE ESTAR LISTO PARA EL LUNES 3 DE OCTUBRE ', '192.168.15.110', 'Catherine Chaparro', '', 'Se instalo infogov 3\r\n', '2022-09-29 12:49:08', '2022-10-03 08:33:30', 3, 1009, 38101303, NULL, NULL, NULL, 3, '2022-09-29', 'Admin AD'),
(542, 4008, 'se crea membrete para obras municipales', '', 'leandro picon', '', 'se pone en las dos uo solicitadas', '2022-09-30 07:35:44', '2022-09-30 08:52:17', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-30', 'German SANCHEZ'),
(543, 3003, 'En Obras Privadas hay una pc que necesitan vean el estado en debido a lentitud. Buscar a Victor Marifili o Canceller', '', '', '', 'Limpieza, optimización y reinstalación de AutoCAD', '2022-09-30 08:28:38', '2022-10-04 13:11:29', 3, 3001, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Admin AD'),
(544, 7014, 'a pedido de marcela cornejo se desarchiva el ee-1656-2022 para continuar, se archivó de manera involuntaria.', '', 'Marcela Cornejo', '', 'realizado', '2022-09-30 08:54:50', '2022-09-30 08:55:06', 3, 3008, 28700618, NULL, NULL, NULL, 4, '2022-09-30', 'German SANCHEZ'),
(545, 3003, 'LA pc no prende cree que es el cable de corriente si alguien se puede aceracar', '', 'Guadalupe', '', 'Cable VGA conectado en el puerto on board', '2022-09-30 09:54:26', '2022-09-30 11:08:39', 3, 1002, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Sonia ROMAN'),
(546, 3000, 'Dice que cada vez que imprime un boleto le sale como que la impresora no está conectada le da ok y ok a la impresora ya que es como que quiere imprimir en papel carta  y ahi larga el boleto', '192.168.24.189', 'Laura', '', 'Impresora reconfigurada', '2022-09-30 10:05:03', '2022-09-30 10:50:45', 3, 5009, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Sonia ROMAN'),
(547, 4002, 'se modifican los permisos de angela.perez y otro agente pasado por marcelo a. para poder crear P.A.\r\n-Por otra parte se controlan permisos de marcela cornejo y juan manuel correa a fin de corroborar la posibilidad de realizar desarchivo. están correctos', '', 'marcela cornejo', '', 'realizado', '2022-09-30 10:05:58', '2022-09-30 10:06:11', 3, 3000, 28700618, NULL, NULL, NULL, 4, '2022-09-30', 'German SANCHEZ'),
(548, 3002, 'Necesita instalar impresora HP P2055', '192.168.38.100', '', '', 'Impresora instalada', '2022-09-30 10:46:46', '2022-09-30 10:47:13', 3, 5019, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Leandro BORQUEZ'),
(549, 3002, 'Necesita instalar impresora HP P2055', '192.168.38.100', '', '', NULL, '2022-09-30 10:46:53', NULL, 4, 5019, 0, 'Tarea duplicada', NULL, NULL, 3, '2022-09-30', 'Leandro BORQUEZ'),
(550, 3000, 'Dirección de Delegaciones (Calle Benavente) Necesitan que le instalen una impresora al Director.', '', '', '', 'Impresora instalada', '2022-09-30 10:51:52', '2022-09-30 12:25:37', 3, 4000, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Raul SORIA'),
(551, 3003, 'Problema con computadora lenta', '', '', '', 'Se reemplazo el jack', '2022-09-30 11:13:42', '2022-10-04 10:54:50', 3, 2002, 38101303, NULL, NULL, NULL, 3, '2022-09-30', 'Leandro BORQUEZ'),
(552, 3002, 'Ponerle contraseña a la computadora de una de las secretarias de la directora', '192.168.120.88', '', '', 'PC configurada', '2022-09-30 12:45:01', '2022-09-30 12:45:20', 3, 3004, 35871182, NULL, NULL, NULL, 3, '2022-09-30', 'Leandro BORQUEZ'),
(553, 4000, 'se crean dos nuevos usuarios miriam teani y mariana poppi\r\n\r\n\r\nse edita el nombre de un profesional web balentin chanvi por valentin , error de tipeo aparentemente en la carga.\r\n', '', 'chanvi', '', 'realizado', '2022-09-30 13:03:10', '2022-09-30 13:03:32', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-09-30', 'German SANCHEZ'),
(554, 3003, 'De incendio primer piso tienen una pc que la prenden y se apaga, si por favor pueden ir ', '', 'VIVIANA', '', 'se cambio la fuente', '2022-10-03 08:32:20', '2022-10-03 10:03:16', 3, 3001, 38101303, NULL, NULL, NULL, 3, '2022-10-03', 'Sonia ROMAN'),
(555, 3002, 'En comercio-despacho  una máquina no tiene internet y no le da ip', '', 'Alejandra', '', 'se reparo el jack', '2022-10-03 08:41:50', '2022-10-03 12:04:26', 3, 2002, 38101303, NULL, NULL, NULL, 3, '2022-10-03', 'Sonia ROMAN'),
(556, 3002, 'En atencion a público en infogob no ven la impresora y tampoco pueden mandar a pdf  la impresiones es urgente', '192.168.100.63', 'Silvia', '', NULL, '2022-10-03 09:57:46', NULL, 4, 2000, 0, 'Se ingresó por VNC y no nos permitieron trabajar', NULL, NULL, 3, '2022-10-03', 'Sonia ROMAN'),
(557, 7010, 'se resetea clave de web mail, también se reactiva el usuario de sayges y se envía info al grupo de req. sistemas', '', 'raul bustos', '', 'realizado', '2022-10-03 10:21:05', '2022-10-04 08:42:46', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-10-03', 'German SANCHEZ'),
(558, 7016, 'del Sistema Integrado necesitan en forma urgente!!! el cambio del cilindro.\r\nImpresora Xerox 7030.', '', '', '', 'se reemplazo unidad de imagen\r\n', '2022-10-03 10:47:25', '2022-10-03 11:31:08', 3, 2000, 38101303, NULL, NULL, NULL, 3, '2022-10-03', 'Monica LIVOLSI'),
(559, 3000, 'Configuración de Impresora 7030 en computadora.\r\nIP Impresora 192.168.36.6\r\nLicencia de Conducir', '192.168.36.111', 'Diego ', '2614724408', NULL, '2022-10-03 12:32:51', NULL, 4, 4004, 38101303, 'no permite conectar ', NULL, NULL, 3, '2022-10-03', 'Evelyn CARDENAS'),
(560, 4013, 'El profesional dice que no puede ingresar al sistema', '', 'Pablo Gonzalez', '', 'Reseteo la clave', '2022-10-04 08:14:23', '2022-10-04 08:14:44', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(561, 4000, 'El profesional solicita alta de usuario', '', 'Rodrigo Sarruf', '', 'Le informo los requisitos necesarios', '2022-10-04 08:18:10', '2022-10-04 08:18:34', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(562, 4000, 'La profesional solicita alta de usuario y envía la documentación', '', 'Maria Valdivia', '', 'Creo el usuario y le paso los datos de acceso', '2022-10-04 08:25:35', '2022-10-04 08:25:56', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(563, 4000, 'El profesional envía los datos necesarios', '', 'Juan Pablo Ingrassia', '', 'Creo el usuario y le paso los datos de acceso', '2022-10-04 08:32:32', '2022-10-04 08:33:15', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(564, 4008, 'se cambia de uo a zahira kemelmajer en rentas apremios, tiene roles externos que so reseteados al momento de cambiar de área.\r\n', '', 'zahira kemelmajer', '', 'realizado', '2022-10-04 08:42:27', '2022-10-04 08:43:14', 3, 2000, 28700618, NULL, NULL, NULL, 4, '2022-10-04', 'German SANCHEZ'),
(565, 4013, 'El profesional solicita desarchivo de EE-11012-2022', '', '', '', 'Le informo que debe comunicarse al área correspondiente y le paso el contacto', '2022-10-04 09:22:16', '2022-10-04 09:24:15', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(566, 4000, 'El profesional solicita alta de usuario y envía la documentación necesaria', '', 'Enrique Giaquinta', '', 'Creo el usuario y le paso los datos de acceso', '2022-10-04 10:42:26', '2022-10-04 10:42:44', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-04', 'Nicolas MAURE'),
(567, 4001, 'Cabral Marcia para dar alta en sistema', '', 'Cabral Marcia', '', 'se crea usuario', '2022-10-04 11:30:46', '2022-10-04 11:31:01', 3, 2006, 28700618, NULL, NULL, NULL, 4, '2022-10-04', 'German SANCHEZ'),
(568, 3002, 'Solicita verificar programas que no le funcionan', '192.168.34.193', 'Rios Hugo', '', 'proxy', '2022-10-05 08:35:34', '2022-10-05 08:52:04', 3, 5014, 29112717, NULL, NULL, NULL, 3, '2022-10-05', 'Emanuel GARCIA'),
(569, 4013, 'La profesional manifiesta que no puede ingresar al sistema, le dice usuario incorrecto', '', 'Laura Pierandrei', '', 'Le reseteo la clave', '2022-10-05 08:42:29', '2022-10-05 08:42:59', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-05', 'Nicolas MAURE'),
(570, 3003, 'No enciende la máquina. Ya la cambió de enchufes y sigue con el mismo problema.\r\nDESPACHO GENERAL', '', 'Sebastian Alvarez', '....', 'Se quemó la placa madre con el corte de luz en el cuarto piso', '2022-10-05 08:47:35', '2022-10-05 13:52:58', 3, 2003, 35871182, NULL, NULL, NULL, 3, '2022-10-05', 'Evelyn CARDENAS'),
(571, 4013, 'La profesional solicita desarchivo de expediente', '', 'Rocio Esteban', '', 'Le informo que debe comunicarse al área donde se encuentra el expediente', '2022-10-05 08:48:53', '2022-10-05 08:49:25', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-05', 'Nicolas MAURE'),
(572, 4013, 'El profesional solicita desarchivo de expediente', '', '', '', 'le informo que debe comunicarse con el area donde se encuentra el expte', '2022-10-05 09:07:27', '2022-10-05 09:07:53', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-10-05', 'Nicolas MAURE'),
(573, 3004, 'Colocar INFOGOV a PC entregada el dia de la fecha', '192.168.18.90', 'Gabriel Pergolino', '', NULL, '2022-10-05 10:40:36', NULL, 4, 5003, 0, 'Me conecté para empezar a instalarlo y desconectaron la computadora', NULL, NULL, 3, '2022-10-05', 'Admin AD'),
(574, 4016, 'reunión con intendencia para ver procedimientos administrativos el dia lunes y hoy miercoles en horario de 10 a 12 hs para ver procedimientos administrativos del area de relevamiento y requerimiento.', '', 'german sanchez', '', 'se termina relevamiento ', '2022-10-05 12:03:25', '2022-10-05 12:04:00', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-10-05', 'German SANCHEZ'),
(575, 3000, 'Configurar la pc  192.168.18.90 a la impresora 192.168.18.4, e instalar infogov', '192.168.18.90', 'Gabriel Pergolino', '', 'instalacion de impresora\r\n', '2022-10-06 08:06:34', '2022-10-06 08:32:44', 3, 5003, 36768171, NULL, NULL, NULL, 3, '2022-10-06', 'Admin AD'),
(576, 1002, 'Habilitar el uso de facebook ', '192.168.120.138', 'Facundo Lopez', '', NULL, '2022-10-06 08:09:13', NULL, 1, 3004, 0, NULL, NULL, NULL, 1, '2022-10-06', 'Admin AD'),
(577, 3002, 'Solucionar resolución de monitor, usuario alvarez Sebastián ', '', 'Sebastian Alvarez', '', 'se instalo driver de video', '2022-10-06 09:34:50', '2022-10-06 10:20:56', 3, 2003, 38101303, NULL, NULL, NULL, 3, '2022-10-06', 'Emanuel GARCIA'),
(578, 3002, 'Problemas con ventanas emergentes, y problema con autocad (Electrotécnica)  ', '192.168.110.83', 'Jose Luis Bartoliccu', '', NULL, '2022-10-06 09:36:58', NULL, 1, 3001, 0, NULL, NULL, NULL, 3, '2022-10-06', 'Emanuel GARCIA'),
(579, 3005, 'Usuario: Zuloaga, Jose - Sanitaria - Direccion de Obras Privadas. No puede acceder desde su navegador al sistema GIS ?', '', 'Zuloaga, Jose', '2616045898', NULL, '2022-10-06 12:03:37', NULL, 1, 3001, 0, NULL, NULL, NULL, 3, '2022-10-06', 'Mariano Perez'),
(580, 3002, 'Usuario: Rodriguez, Paola - Escribania. intenta trabajar en un documento pero no puede ingresar datos debido a que tiene el teclado trabado ??', '192.168.176.72', 'Rodriguez, Paola', '', NULL, '2022-10-06 12:12:40', NULL, 1, 1011, 0, NULL, NULL, NULL, 3, '2022-10-06', 'Mariano Perez');

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
  `motivoBaja` varchar(500) DEFAULT NULL,
  `ultimoAcceso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`dni`, `nombre`, `apellido`, `correo`, `usuario`, `contraseña`, `idRol2`, `motivoBaja`, `ultimoAcceso`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000000, 'Reclamos', 'ST', 'ejemplo@gmail.com', 'reclamos', '$2y$10$/u8oZKm/xNswIicsb4ZC2ONgDo3AuFZNq/ulv.Fx47FXLpulV0no6', 1, NULL, '2022-09-05 13:05:59'),
(2000000, 'Agente', 'Ag', 'alguien@gmail.com', 'agente', '$2y$10$WYKtVVo27UNn044KHkmBwuWFenzX/Zn8JRcGkrNP6kAH17gEOV/im', 2, NULL, '2022-10-06 10:09:53'),
(2000001, 'Agente', 'CCTV - Infraestructura', '', 'infr.cctv', '$2y$10$y5pNkqgrxN5LPBV22s6BIuEE0.kV3pXPOA70wT3xEtCUOjhb6ve.u', 2, NULL, '2022-09-20 08:18:49'),
(3000000, 'Admin', 'AD', 'adminst@correo.com', 'admin', '$2y$10$aLqdvXR8sYLUsXwH/B/NqeFcWUCFTaUVQ6sPuSWFksxJ/0i36vBoK', 3, NULL, '2022-10-06 11:09:15'),
(4000000, 'Supervisor', 'SU', 'alguien@gmail.com', 'supervisor', '$2y$10$7B1xJ.MwWMUKOgqoKB1S..im/76v5W/HnncZowyrzk5Od5Hll3h1q', 4, NULL, '2022-09-14 09:18:45'),
(12345667, 'Agente', 'Infraestructura', 'alguien@gmail.com', 'agenteinfr', '$2y$10$z60iSgNERwmQzu1TLnigWOpF9S5srVwH1Ga5.N6kRU59TTAvnYnbm', 2, NULL, NULL),
(16179758, 'Sonia', 'ROMAN', '', 'sonia.roman', '$2y$10$Zemt4.UBxxDUaLahDU.8a.EFWNAaSBXhps49zlaCogii6UbNsxrfq', 1, NULL, '2022-10-03 09:55:48'),
(16222799, 'Raul', 'SORIA', '', 'raul.soria', '$2y$10$52Ih7O06NHyd6wJ6MiMuq.unbXAY2L6FdhLDcakLST6k1tAj0sYY6', 1, NULL, '2022-09-30 10:45:00'),
(18079575, 'Pedro', ' GARBARINO', '', 'pedro.garbarino', '$2y$10$ScILno.6Y3ymFYQvaXSN.emg9hMJ73FJpL4ajTY3hFrfXDhr8g0BG', 2, NULL, '2022-09-13 11:59:11'),
(24207076, 'Javier', 'Crayachichi', 'javier.crayachichi@guaymallen.gob.ar', 'javier.crayachichi', '$2y$10$InkqYRHI5TVq.2bx29j9R.mjAOjdPpuC3lZcQ..ie.RZoqkPae63i', 2, NULL, '2022-09-20 08:18:58'),
(24925742, 'Monica', 'LIVOLSI', '', 'monica.livolsi', '$2y$10$f5bZHuKZagtQdBMC0M9z5uojoaS/JKzYH9GPdfITFKlz62M51nnOq', 1, NULL, '2022-10-03 10:45:13'),
(28225713, 'Mariano', 'Perez', NULL, 'mperez', '$2y$10$5ejXgWRuPIv/tRxYCYsEYeL1y2DDw8JDTmV7qiMKLeoA.DGpyi8se', 1, NULL, '2022-10-06 11:54:16'),
(28700618, 'German', 'SANCHEZ', '', 'german.sanchez', '$2y$10$HS7RVZ59x.bqKfDdIvB3ouo0Vum0gvNRzv8Etf9CaEM1Sz/DsZkf.', 4, NULL, '2022-10-05 12:01:25'),
(28757006, 'Mauricio', 'SCARAVILLI', '', 'mauricio.scaravilli', '$2y$10$YwYosNnkthhqYTAzoWFgp.qcN93Kl6QwKzt4P/diTYgYgYpSU5HoK', 2, NULL, '2022-09-08 12:36:21'),
(29112717, 'Lucas', 'SALEME', '', 'lucas.saleme', '$2y$10$cbBlqJeKhIOOPWRnT3V7Tuk5r3nq0yhM5ahqi1PZSQSEReDiZsgf.', 4, NULL, '2022-10-05 08:43:12'),
(29148522, 'Nicolas', 'MAURE', '', 'nicolas.maure', '$2y$10$oDtCtvEhbNcJQ1qsflTqjeAOpIOQwo8sbZw0/47lFbJCU8JgIh77W', 2, NULL, '2022-10-05 08:17:29'),
(30839932, 'Marcelo', 'ALARCON', 'marcelo.alarcon@gmail.com', 'marcelo.alarcon', '$2y$10$7KccNJPq5IOo4qEB3QNDZulL.ue8hUdSotixicoc2fGIByDvMPerC', 2, NULL, '2022-09-21 13:11:08'),
(33966823, 'Evelyn', 'CARDENAS', '', 'evelyn.cardenas', '$2y$10$E0TlAsgGDGnEji3iIAc0MOvnRB8uvl9ZpFr0zMB1.ESchS2nlbd9G', 1, NULL, '2022-10-05 12:24:29'),
(35871182, 'Leandro', 'BORQUEZ', '', 'leandro.borquez', '$2y$10$68/hJFosD2RTKkJI77czXen4/ux8LLobk4WLB0qYfZxyAvIlyy3.6', 2, NULL, '2022-10-06 10:40:21'),
(36768171, 'Cristian', 'BARRERA', '', 'barrera.cristian', '$2y$10$5/0.J37eUX5Tjy6zL2fUVOyU615MlrEDxK/x5/RkK0S9M.NLhwz4W', 2, NULL, '2022-10-06 08:13:34'),
(37513387, 'Renzo', 'BAVETTA', '', '37513387', '$2y$10$U.VcWhp.lu97D2Omg/TYuOOe2EoBYBAsefmQJ4UTRHOMM1lK7vxWK', 1, NULL, NULL),
(38101303, 'Emanuel', 'GARCIA', '', 'emanuel.garcia', '$2y$10$E/zZC8afK6l1dqs.9J51QeZa4c7hywcbxGhpxnkaraCBlOmm7nTde', 2, NULL, '2022-10-06 12:27:31'),
(41191664, 'Franco', 'Moreno', 'franco.moreno@guaymallen.gob.ar', 'franco.moreno', '$2y$10$gZoVZEKJSH5/VCOu.0djju5kFbeUIceYGLI0aNxFdyvLz3uioGKu6', 2, NULL, '2022-10-06 10:44:13'),
(42913695, 'Agustin', 'Videla', 'agustinvidela835@gmail.com', 'agustinvidela', '$2y$10$hlvaCVn742FJJumABLaqHOKrqclW5pxJqWGPwySvv0IjDzUxUDl/O', 3, NULL, '2022-10-06 13:48:36'),
(88888889, 'Agente', 'Req', '', 'agentereq', '$2y$10$30/pBVceIhp5alJ1GemNFOdXxD8WuBu0OzvaATEX0GHeHgLF0AduK', 2, NULL, '2022-09-09 08:29:29');

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
(17, 41191664, 3),
(20, 2000001, 2),
(21, 2000001, 7),
(22, 41191664, 7),
(25, 88888889, 4),
(26, 28757006, 5);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7020;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `nroArreglo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
