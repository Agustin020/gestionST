-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-08-2022 a las 13:34:30
-- Versión del servidor: 10.8.4-MariaDB-1:10.8.4+maria~ubu2004
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
(1012, 'Externos', 'Identificar tareas realizadas para los que estén relacionados con el sistema de PA Sayges.'),
(1013, 'Mesa general de entradas', 'Dependencia'),
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
(5036, 'Jardin Arroz con Leche', 'Entidad externa');

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
(7011, 'Interno ', 5);

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
(110, 2000, 'Delegación de Dorrego, necesita que le cambien el telefono ip ya que se corta las llamadas. Puede ser tema de cableado, ficha.\r\n', '', 'Norma HUT', '2615088119', NULL, '2022-08-16 11:40:33', NULL, 1, 4000, 0, NULL, NULL, NULL, 2, '2022-08-16', 'Evelyn CARDENAS'),
(111, 3004, 'El Sistema de Recaudación no imprime los códigos de barra de los boletos (necesita instalarse una fuente) Raúl', '192.168.100.177', 'Nieves', '0', NULL, '2022-08-16 11:46:33', NULL, 4, 2000, 35871182, 'Me conecté por VNC e intenté instalar, pero repetidas veces me cerraron el chat y no me dejaron trabajar', NULL, NULL, 3, '2022-08-16', 'Raul SORIA'),
(112, 7010, 'Se resetean clave solicitadas al webmail, no se resetean quienes enviaron desde correos no oficiales ni whp, se les solicita enviar como corresponde para poder realizarlo', '', 'vebmail/whp', '', 'se actualizan claves a comercio y compras', '2022-08-16 12:36:28', '2022-08-16 12:37:35', 3, 4005, 28700618, NULL, NULL, NULL, 4, '2022-08-16', 'German SANCHEZ'),
(113, 4016, 'Se realiza reunión desde las 8:30 a 10:00 con micaela de sayges, se muestra la forma de creación de usuarios externos para tramites de baja de comercio y de externos en general, ahún inactivo hasta se de aviso.', '', 'sayges', '', 'se realiza reunión y se esperan pruebas en ind. y comercio', '2022-08-16 12:39:42', '2022-08-16 12:40:21', 3, 1012, 28700618, NULL, NULL, NULL, 4, '2022-08-16', 'German SANCHEZ'),
(114, 3000, 'no funciona el pdf creator ', '192.168.130.192', '', '', 'configuracion de impresora con pdf creator', '2022-08-16 13:51:01', '2022-08-16 13:51:26', 3, 2001, 29112717, NULL, NULL, NULL, 3, '2022-08-16', 'Lucas SALEME'),
(115, 2001, 'Cecilia Soria de Catastro - Rentas puede navegar en su maquina. No entra a los sistemas', '192.168.100.156', 'Cecilia Soria', '', NULL, '2022-08-16 13:53:20', NULL, 1, 2000, 0, NULL, NULL, NULL, 2, '2022-08-16', ''),
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
(154, 1001, 'Migración de máquina virtual de García Coca a los servidores KVM para alojarla en el DataCenter', '', 'Javier García Coca', '', NULL, '2022-08-19 13:15:27', NULL, 1, 4005, 0, NULL, NULL, NULL, 1, '2022-08-19', 'Pedro  GARBARINO'),
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
(173, 7010, 'reseteo de clave a susana.dutto pedido nuevamente por mayra lamanuzzi\r\n\r\nmayordomía', '', 'susana dutto', '', 'Resuelto', '2022-08-22 12:11:55', '2022-08-22 12:53:17', 3, 2003, 28700618, NULL, NULL, NULL, 4, '2022-08-22', 'German SANCHEZ'),
(174, 4013, 'se desincorpora NE- 13388-2022 del EE- 16345-2021, ya que se necesita adjuntar otra documentación y luego incorporar.', '', 'Cecilia Oruez', '', 'resuelto', '2022-08-23 09:17:39', '2022-08-23 09:25:51', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ');
INSERT INTO `tareas` (`nroArreglo`, `id_motivos`, `descripcion`, `ip`, `nombreApellidoAfectado`, `celular`, `solucion`, `fechaProblema`, `fechaSolucion`, `estadoTarea_id`, `direccion_codigo`, `usuario_dni`, `motivoCancelacion`, `motivoEliminacion`, `fechaEliminado`, `codigoArea3`, `fechaCreada`, `usuarioCreado`) VALUES
(175, 4000, 'la profesional solicita alta de usuario remoto', '', 'Pilar gavasci', '', 'resuelto', '2022-08-23 09:19:28', '2022-08-23 12:56:52', 3, 1012, 29148522, NULL, NULL, NULL, 4, '2022-08-23', 'Nicolas MAURE'),
(176, 4002, 'se activa a jimena pereyra para desvincular el EE 2206 2021 de la NE 6490 2022', '', 'jimena pereyra', '', 'resuelto', '2022-08-23 09:20:11', '2022-08-23 12:57:04', 3, 3002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(177, 3001, 'Claudia del Juzgado: tiene la impresora xerox que no toma el papel.', '', 'Claudia Cola', '0', NULL, '2022-08-23 09:46:49', NULL, 1, 1004, 0, NULL, NULL, NULL, 3, '2022-08-23', 'Raul SORIA'),
(178, 3004, 'Elizabeth de Comercio, no tiene instalado FireFox y no puede hacer transferencias multiples en sistema de mesa de entradas. Raúl', '192.168.90.176', 'Elizabeth', '0', 'instalacion de navegador ', '2022-08-23 11:38:08', '2022-08-23 12:11:23', 3, 2002, 29112717, NULL, NULL, NULL, 3, '2022-08-23', 'Raul SORIA'),
(179, 4013, 'se desincorpora la NE- 13424-2022 del EE- 337-2021 por pedido de cecilia oruez, error de incorporación', '', 'Cecilia Oruez', '', 'resuelto', '2022-08-23 12:27:10', '2022-08-23 12:57:12', 3, 2002, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ'),
(180, 4002, 'se da asignación directa a Silvia Fabas - Mesa de Entrada General, por ee-3157-2022 de jefa Florencia mesa de entradas', '', 'silvia fabas', '', 'resuelto', '2022-08-23 12:29:16', '2022-08-23 12:58:07', 3, 1013, 28700618, NULL, NULL, NULL, 4, '2022-08-23', 'German SANCHEZ');

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
(1000000, 'Reclamos', 'ST', 'ejemplo@gmail.com', 'reclamos', '$2y$10$/u8oZKm/xNswIicsb4ZC2ONgDo3AuFZNq/ulv.Fx47FXLpulV0no6', 1, NULL, '2022-08-23 13:11:22'),
(2000000, 'Agente', 'Ag', 'alguien@gmail.com', 'agente', '$2y$10$WYKtVVo27UNn044KHkmBwuWFenzX/Zn8JRcGkrNP6kAH17gEOV/im', 2, NULL, '2022-08-23 13:05:54'),
(2000001, 'Agente', 'CCTV - Infraestructura', '', 'infr.cctv', '$2y$10$y5pNkqgrxN5LPBV22s6BIuEE0.kV3pXPOA70wT3xEtCUOjhb6ve.u', 2, NULL, '2022-08-19 13:20:47'),
(3000000, 'Admin', 'AD', 'adminst@correo.com', 'admin', '$2y$10$aLqdvXR8sYLUsXwH/B/NqeFcWUCFTaUVQ6sPuSWFksxJ/0i36vBoK', 3, NULL, '2022-08-23 08:33:33'),
(4000000, 'Supervisor', 'SU', 'alguien@gmail.com', 'supervisor', '$2y$10$7B1xJ.MwWMUKOgqoKB1S..im/76v5W/HnncZowyrzk5Od5Hll3h1q', 4, NULL, '2022-08-23 13:00:12'),
(12345667, 'Agente', 'Infraestructura', 'alguien@gmail.com', 'agenteinfr', '$2y$10$z60iSgNERwmQzu1TLnigWOpF9S5srVwH1Ga5.N6kRU59TTAvnYnbm', 2, NULL, NULL),
(16179758, 'Sonia', 'ROMAN', '', 'sonia.roman', '$2y$10$Zemt4.UBxxDUaLahDU.8a.EFWNAaSBXhps49zlaCogii6UbNsxrfq', 1, NULL, '2022-08-22 08:42:30'),
(16222799, 'Raul', 'SORIA', '', 'raul.soria', '$2y$10$52Ih7O06NHyd6wJ6MiMuq.unbXAY2L6FdhLDcakLST6k1tAj0sYY6', 1, NULL, '2022-08-23 11:34:31'),
(18079575, 'Pedro', ' GARBARINO', '', 'pedro.garbarino', '$2y$10$ScILno.6Y3ymFYQvaXSN.emg9hMJ73FJpL4ajTY3hFrfXDhr8g0BG', 2, NULL, '2022-08-19 13:12:59'),
(24207076, 'Javier', 'Crayachichi', 'javier.crayachichi@guaymallen.gob.ar', 'javier.crayachichi', '$2y$10$InkqYRHI5TVq.2bx29j9R.mjAOjdPpuC3lZcQ..ie.RZoqkPae63i', 2, NULL, '2022-08-16 08:43:35'),
(24925742, 'Monica', 'LIVOLSI', '', 'monica.livolsi', '$2y$10$f5bZHuKZagtQdBMC0M9z5uojoaS/JKzYH9GPdfITFKlz62M51nnOq', 1, NULL, NULL),
(28700618, 'German', 'SANCHEZ', '', 'german.sanchez', '$2y$10$HS7RVZ59x.bqKfDdIvB3ouo0Vum0gvNRzv8Etf9CaEM1Sz/DsZkf.', 4, NULL, '2022-08-23 12:25:38'),
(28757006, 'Mauricio', 'SCARAVILLI', '', 'mauricio.scaravilli', '$2y$10$YwYosNnkthhqYTAzoWFgp.qcN93Kl6QwKzt4P/diTYgYgYpSU5HoK', 1, NULL, NULL),
(29112717, 'Lucas', 'SALEME', '', 'lucas.saleme', '$2y$10$qhQ3rYPzHHQrQmhnjKhrtuY5aRifpJSI6CJAHcBCv0TGoVGHyTv1K', 4, NULL, '2022-08-23 12:46:03'),
(29148522, 'Nicolas', 'MAURE', '', 'nicolas.maure', '$2y$10$oDtCtvEhbNcJQ1qsflTqjeAOpIOQwo8sbZw0/47lFbJCU8JgIh77W', 2, NULL, '2022-08-23 09:18:16'),
(30839932, 'Marcelo', 'ALARCON', 'marcelo.alarcon@gmail.com', 'marcelo.alarcon', '$2y$10$7KccNJPq5IOo4qEB3QNDZulL.ue8hUdSotixicoc2fGIByDvMPerC', 2, NULL, '2022-08-23 08:40:51'),
(33966823, 'Evelyn', 'CARDENAS', '', 'evelyn.cardenas', '$2y$10$E0TlAsgGDGnEji3iIAc0MOvnRB8uvl9ZpFr0zMB1.ESchS2nlbd9G', 1, NULL, '2022-08-23 12:22:01'),
(35871182, 'Leandro', 'BORQUEZ', '', 'leandro.borquez', '$2y$10$68/hJFosD2RTKkJI77czXen4/ux8LLobk4WLB0qYfZxyAvIlyy3.6', 2, NULL, '2022-08-23 12:44:47'),
(36768171, 'Cristian', 'BARRERA', '', 'barrera.cristian', '$2y$10$5/0.J37eUX5Tjy6zL2fUVOyU615MlrEDxK/x5/RkK0S9M.NLhwz4W', 2, NULL, '2022-08-23 10:18:40'),
(37513387, 'Renzo', 'BAVETTA', '', '37513387', '$2y$10$U.VcWhp.lu97D2Omg/TYuOOe2EoBYBAsefmQJ4UTRHOMM1lK7vxWK', 1, NULL, NULL),
(38101303, 'Emanuel', 'GARCIA', '', 'emanuel.garcia', '$2y$10$E/zZC8afK6l1dqs.9J51QeZa4c7hywcbxGhpxnkaraCBlOmm7nTde', 2, NULL, '2022-08-23 09:47:22'),
(41191664, 'Franco', 'Moreno', 'franco.moreno@guaymallen.gob.ar', 'franco.moreno', '$2y$10$gZoVZEKJSH5/VCOu.0djju5kFbeUIceYGLI0aNxFdyvLz3uioGKu6', 2, NULL, '2022-08-22 08:10:24'),
(42913695, 'Agustin', 'Videla', 'agustinvidela835@gmail.com', 'agustinvidela', '$2y$10$hlvaCVn742FJJumABLaqHOKrqclW5pxJqWGPwySvv0IjDzUxUDl/O', 3, NULL, '2022-08-23 13:11:39'),
(88888889, 'Agente', 'Req', '', 'agentereq', '$2y$10$30/pBVceIhp5alJ1GemNFOdXxD8WuBu0OzvaATEX0GHeHgLF0AduK', 2, NULL, '2022-08-19 10:07:34');

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
(25, 88888889, 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7012;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `nroArreglo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
