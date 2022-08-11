/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - gestionst
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gestionst` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `gestionst`;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areas` */

insert  into `areas`(`codigo`,`nombre`) values 
(1,'Administración de Redes y Seguridad'),
(2,'Infraestructura'),
(3,'Servicio Técnico'),
(4,'Requerimientos'),
(5,'Firma Digital'),
(6,'Punto Digital'),
(7,'CCTV');

/*Table structure for table `direcciones` */

DROP TABLE IF EXISTS `direcciones`;

CREATE TABLE `direcciones` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `direcciones` */

insert  into `direcciones`(`codigo`,`nombre`,`descripcion`) values 
(1000,'Secretaría Privada y Protocolo',NULL),
(1001,'Dirección de Asuntos Legales',NULL),
(1002,'Dirección de Control de Gestión',NULL),
(1003,'Dirección de Comunicación y Prensa',NULL),
(1004,'Juzgados de Tránsito',NULL),
(1005,'Secretaria de Gobierno',''),
(1006,'Secretaria de Obras',''),
(1007,'Secretaria de Hacienda',''),
(1008,'Intendencia',''),
(1009,'Patrimonio',''),
(1010,'Apoderados Municipales',''),
(1011,'Escribanía Municipal',''),
(2000,'Dirección de Rentas',NULL),
(2001,'Dirección de Compras y Suministros',NULL),
(2002,'Dirección de Comercio e Industria',NULL),
(2003,'Dirección de Administración y Recursos Humanos',NULL),
(2004,'Tesorería Municipal',NULL),
(2005,'Contaduría General',NULL),
(2006,'Finanzas y Presupuesto',NULL),
(3000,'Dirección de Obras Municipales',NULL),
(3001,'Dirección de Obras Privadas',NULL),
(3002,'Dirección de Servicios Públicos',NULL),
(3003,'Dirección de Espacios Verdes',NULL),
(3004,'Dirección de Planificación',NULL),
(3005,'Dirección de Vivienda',NULL),
(3006,'Parque Automotor',NULL),
(3007,'Dirección de Obras por Administración',NULL),
(3008,'Dirección de Ambiente y Energía',NULL),
(3009,'Dirección de Catastro',NULL),
(4000,'Dirección de Delegaciones Municipales',NULL),
(4001,'Dirección de Educación y Deportes',NULL),
(4002,'Dirección de Desarrollo Económico',NULL),
(4003,'Dirección de Cultura',NULL),
(4004,'Dirección de Servicios Comunitarios, y Seguridad Vial',NULL),
(4005,'Dirección de Sistemas',NULL),
(4006,'Dirección de Desarrollo Social',NULL),
(4007,'Dirección de Salud',NULL);

/*Table structure for table `estadotarea` */

DROP TABLE IF EXISTS `estadotarea`;

CREATE TABLE `estadotarea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `estadotarea` */

insert  into `estadotarea`(`id`,`nombre`) values 
(1,'Pendiente'),
(2,'En Progreso'),
(3,'Completo'),
(4,'Cancelado'),
(5,'Eliminado');

/*Table structure for table `motivos` */

DROP TABLE IF EXISTS `motivos`;

CREATE TABLE `motivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivos` varchar(250) DEFAULT NULL,
  `codigoArea` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codigoArea` (`codigoArea`),
  CONSTRAINT `codigoArea` FOREIGN KEY (`codigoArea`) REFERENCES `areas` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7008 DEFAULT CHARSET=utf8mb4;

/*Data for the table `motivos` */

insert  into `motivos`(`id`,`motivos`,`codigoArea`) values 
(1000,'Lista blanca',1),
(1001,'Máquinas virtuales',1),
(1002,'Otros',1),
(2000,'Cableado nuevo',2),
(2001,'Reparación cableado red',2),
(2002,'Cambio UPS',2),
(2003,'Colocación de antena punto a punto',2),
(2004,'Cambio de antena punto a punto',2),
(2005,'Reparación punto a punto',2),
(2006,'Colocación conectividad wifi',2),
(2007,'Colocación reloj biométrico',2),
(2008,'Retiro de reloj biométrico',2),
(2009,'Crear punto nuevo de conectividad',2),
(3000,'Configuración de impresora',3),
(3001,'Problema de impresora',3),
(3002,'Configuración de PC',3),
(3003,'Reparación de PC',3),
(3004,'Instalación de programas en PC',3),
(3005,'Problema con un programa de PC',3),
(3006,'Configuración general del Proxy',3),
(3007,'Configuración de Home Office',3),
(4000,'Creación de usuario web – SAYGES',4),
(4001,'Creación de usuario agente municipal – SAYGES/GENUS',4),
(4002,'Modificación de permisos – SAYGES',4),
(4003,'Movimientos de expedientes por asignación directa',4),
(4004,'Pruebas por actualización SAYGES',4),
(4005,'Creación de usuario agente municipal - SISTEMA RECLAMOS',4),
(4006,'Modificación de permisos - SISTEMA RECLAMOS',4),
(4007,'Pruebas por actualización - SISTEMA RECLAMOS',4),
(4008,'CONFIGURACIÓN/CREACIÓN – SAYGES',4),
(4009,'CONFIGURACIÓN/CREACIÓN - SISTEMA DE RECLAMOS',4),
(4010,'Creación de Correo Electrónico',4),
(4011,'Elaboración de documentos',4),
(4012,'Capacitación',4),
(4013,'Asistencia remota',4),
(4014,'Investigación',4),
(4015,'Carga de pedidos OPENSAYGES',4),
(4016,'Reuniones',4),
(4017,'Configuración',4),
(6000,'Turnos',6),
(7000,'Colocación de Sistema CCTV',7),
(7001,'Reparación cableado CCTV',7),
(7002,'Colocación de cámara',7),
(7003,'Cambio de cámara',7),
(7004,'Cambio de NVR',7),
(7005,'Grabaciones',7);

/*Table structure for table `tareas` */

DROP TABLE IF EXISTS `tareas`;

CREATE TABLE `tareas` (
  `nroArreglo` int(11) NOT NULL AUTO_INCREMENT,
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
  `usuarioCreado` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`nroArreglo`),
  KEY `fk_usuario_dni` (`usuario_dni`),
  KEY `fk_tareas_estadoTarea1_idx` (`estadoTarea_id`),
  KEY `fk_id_motivos` (`id_motivos`),
  KEY `fk_tareas_area1_idx` (`direccion_codigo`),
  KEY `fk_codigoArea3` (`codigoArea3`),
  CONSTRAINT `fk_codigoArea3` FOREIGN KEY (`codigoArea3`) REFERENCES `areas` (`codigo`),
  CONSTRAINT `fk_id_motivos` FOREIGN KEY (`id_motivos`) REFERENCES `motivos` (`id`),
  CONSTRAINT `fk_tareas_direccion` FOREIGN KEY (`direccion_codigo`) REFERENCES `direcciones` (`codigo`),
  CONSTRAINT `fk_tareas_estadoTarea1` FOREIGN KEY (`estadoTarea_id`) REFERENCES `estadotarea` (`id`),
  CONSTRAINT `fk_usuario_dni` FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `tareas` */

/*Table structure for table `tipousuario` */

DROP TABLE IF EXISTS `tipousuario`;

CREATE TABLE `tipousuario` (
  `idrol` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipousuario` */

insert  into `tipousuario`(`idrol`,`nombre`) values 
(1,'Encargado'),
(2,'Agente'),
(3,'Admin'),
(4,'Supervisor');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  `idRol2` int(11) DEFAULT NULL,
  `motivoBaja` varchar(500) DEFAULT NULL,
  `ultimoAcceso` datetime DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `fk_usuario_rol_idx` (`idRol2`),
  CONSTRAINT `fk_idRol2` FOREIGN KEY (`idRol2`) REFERENCES `tipousuario` (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`dni`,`nombre`,`apellido`,`correo`,`usuario`,`contraseña`,`idRol2`,`motivoBaja`,`ultimoAcceso`) values 
(0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1000000,'Reclamos','ST','ejemplo@gmail.com','reclamos','$2y$10$/u8oZKm/xNswIicsb4ZC2ONgDo3AuFZNq/ulv.Fx47FXLpulV0no6',1,NULL,'2022-08-05 21:04:53'),
(2000000,'Agente','Ag','alguien@gmail.com','agente','$2y$10$WYKtVVo27UNn044KHkmBwuWFenzX/Zn8JRcGkrNP6kAH17gEOV/im',2,NULL,NULL),
(3000000,'Admin','AD','adminst@correo.com','admin','$2y$10$aLqdvXR8sYLUsXwH/B/NqeFcWUCFTaUVQ6sPuSWFksxJ/0i36vBoK',3,NULL,NULL),
(4000000,'Supervisor','SU','alguien@gmail.com','supervisor','$2y$10$7B1xJ.MwWMUKOgqoKB1S..im/76v5W/HnncZowyrzk5Od5Hll3h1q',4,NULL,NULL),
(42913695,'Agustin','Videla','agustinvidela835@gmail.com','agustinvidela','$2y$10$hlvaCVn742FJJumABLaqHOKrqclW5pxJqWGPwySvv0IjDzUxUDl/O',3,NULL,'2022-08-05 21:07:27');

/*Table structure for table `usuario_area` */

DROP TABLE IF EXISTS `usuario_area`;

CREATE TABLE `usuario_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_dni2` int(11) DEFAULT NULL,
  `codigo_area2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_dni2` (`usuario_dni2`),
  KEY `fk_codigo_area2` (`codigo_area2`),
  CONSTRAINT `fk_codigo_area2` FOREIGN KEY (`codigo_area2`) REFERENCES `areas` (`codigo`),
  CONSTRAINT `fk_usuario_dni2` FOREIGN KEY (`usuario_dni2`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario_area` */

insert  into `usuario_area`(`id`,`usuario_dni2`,`codigo_area2`) values 
(1,2000000,2),
(2,2000000,3),
(3,4000000,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
