-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.41 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.13.0.7147
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mini_bodegas
CREATE DATABASE IF NOT EXISTS `mini_bodegas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mini_bodegas`;

-- Volcando estructura para tabla mini_bodegas.bitacora
CREATE TABLE IF NOT EXISTS `bitacora` (
  `id_bitacora` int NOT NULL AUTO_INCREMENT,
  `tabla` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_registro` int NOT NULL,
  `operacion` enum('INSERT','UPDATE','DELETE','ACCION') COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `detalle` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id_bitacora`),
  KEY `idx_tabla` (`tabla`,`id_registro`),
  KEY `idx_fecha` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.bitacora: ~331 rows (aproximadamente)
INSERT INTO `bitacora` (`id_bitacora`, `tabla`, `id_registro`, `operacion`, `usuario`, `fecha`, `detalle`) VALUES
	(1, 'bodegas', 1, 'UPDATE', 'root@localhost', '2025-12-02 01:27:49', 'Estado bodega: LIBRE -> RESERVADA'),
	(2, 'reservas', 1, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:49', 'Reserva creada para bodega 1'),
	(3, 'contratos', 1, 'INSERT', 'root@localhost', '2025-12-02 01:27:49', 'Contrato creado para cliente 1'),
	(4, 'bodegas', 1, 'UPDATE', 'root@localhost', '2025-12-02 01:27:49', 'Estado bodega: RESERVADA -> OCUPADA'),
	(5, 'contratos', 1, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:49', 'Contrato creado desde reserva 1'),
	(6, 'cargos_mensuales', 1, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:49', 'Cargo generado para periodo 2024-01'),
	(7, 'cargos_mensuales', 1, 'UPDATE', 'root@localhost', '2025-12-02 01:27:49', 'Estado cargo: PENDIENTE -> PAGADO'),
	(8, 'pagos', 1, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:49', 'Pago de $640.00 registrado'),
	(9, 'bodegas', 2, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(10, 'reservas', 2, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 2'),
	(11, 'contratos', 2, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 2'),
	(12, 'bodegas', 2, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(13, 'contratos', 2, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 2'),
	(14, 'cargos_mensuales', 2, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(15, 'cargos_mensuales', 2, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(16, 'pagos', 2, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $720.00 registrado'),
	(17, 'bodegas', 3, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(18, 'reservas', 3, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 3'),
	(19, 'contratos', 3, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 3'),
	(20, 'bodegas', 3, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(21, 'contratos', 3, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 3'),
	(22, 'cargos_mensuales', 3, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(23, 'cargos_mensuales', 3, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(24, 'pagos', 3, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $800.00 registrado'),
	(25, 'bodegas', 4, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(26, 'reservas', 4, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 4'),
	(27, 'contratos', 4, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 4'),
	(28, 'bodegas', 4, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(29, 'contratos', 4, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 4'),
	(30, 'cargos_mensuales', 4, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(31, 'cargos_mensuales', 4, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(32, 'pagos', 4, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $960.00 registrado'),
	(33, 'bodegas', 5, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(34, 'reservas', 5, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 5'),
	(35, 'contratos', 5, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 5'),
	(36, 'bodegas', 5, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(37, 'contratos', 5, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 5'),
	(38, 'cargos_mensuales', 5, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(39, 'bodegas', 6, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(40, 'reservas', 6, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 6'),
	(41, 'contratos', 6, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 6'),
	(42, 'bodegas', 6, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(43, 'contratos', 6, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 6'),
	(44, 'cargos_mensuales', 6, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(45, 'cargos_mensuales', 6, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(46, 'pagos', 5, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $1200.00 registrado'),
	(47, 'bodegas', 7, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(48, 'reservas', 7, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 7'),
	(49, 'contratos', 7, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 7'),
	(50, 'bodegas', 7, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(51, 'contratos', 7, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 7'),
	(52, 'cargos_mensuales', 7, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(53, 'cargos_mensuales', 7, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(54, 'pagos', 6, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $1440.00 registrado'),
	(55, 'bodegas', 8, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(56, 'reservas', 8, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 8'),
	(57, 'contratos', 8, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 8'),
	(58, 'bodegas', 8, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(59, 'contratos', 8, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 8'),
	(60, 'cargos_mensuales', 8, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(61, 'cargos_mensuales', 8, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(62, 'pagos', 7, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $1680.00 registrado'),
	(63, 'bodegas', 9, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(64, 'reservas', 9, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 9'),
	(65, 'contratos', 9, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 9'),
	(66, 'bodegas', 9, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(67, 'contratos', 9, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 9'),
	(68, 'cargos_mensuales', 9, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(69, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(70, 'reservas', 10, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 10'),
	(71, 'contratos', 10, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 10'),
	(72, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(73, 'contratos', 10, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 10'),
	(74, 'cargos_mensuales', 10, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-01'),
	(75, 'cargos_mensuales', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(76, 'pagos', 8, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $2320.00 registrado'),
	(77, 'cargos_mensuales', 11, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(78, 'cargos_mensuales', 12, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(79, 'cargos_mensuales', 13, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(80, 'cargos_mensuales', 14, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(81, 'cargos_mensuales', 15, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(82, 'cargos_mensuales', 16, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(83, 'cargos_mensuales', 17, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(84, 'cargos_mensuales', 18, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(85, 'cargos_mensuales', 19, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(86, 'cargos_mensuales', 20, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-02'),
	(87, 'cargos_mensuales', 11, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(88, 'pagos', 9, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $680.00 registrado'),
	(89, 'cargos_mensuales', 12, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(90, 'pagos', 10, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $900.00 registrado'),
	(91, 'cargos_mensuales', 13, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(92, 'pagos', 11, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $1000.00 registrado'),
	(93, 'cargos_mensuales', 14, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(94, 'pagos', 12, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $1200.00 registrado'),
	(95, 'cargos_mensuales', 5, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(96, 'cargos_mensuales', 9, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(97, 'contratos', 5, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cambiado: ACTIVO -> SUSPENDIDO'),
	(98, 'cargos_mensuales', 15, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(99, 'cargos_mensuales', 16, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(100, 'cargos_mensuales', 17, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(101, 'cargos_mensuales', 18, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(102, 'contratos', 9, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cambiado: ACTIVO -> SUSPENDIDO'),
	(103, 'cargos_mensuales', 19, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(104, 'cargos_mensuales', 20, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(105, 'bodegas', 31, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(106, 'reservas', 11, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 31'),
	(107, 'contratos', 11, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 11'),
	(108, 'bodegas', 31, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(109, 'contratos', 11, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 11'),
	(110, 'cargos_mensuales', 21, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Cargo generado para periodo 2024-03'),
	(111, 'cargos_mensuales', 21, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado cargo: PENDIENTE -> PAGADO'),
	(112, 'pagos', 13, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:50', 'Pago de $750.00 registrado'),
	(113, 'bodegas', 32, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(114, 'reservas', 12, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Reserva creada para bodega 32'),
	(115, 'contratos', 12, 'INSERT', 'root@localhost', '2025-12-02 01:27:50', 'Contrato creado para cliente 12'),
	(116, 'bodegas', 32, 'UPDATE', 'root@localhost', '2025-12-02 01:27:50', 'Estado bodega: RESERVADA -> OCUPADA'),
	(117, 'contratos', 12, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:50', 'Contrato creado desde reserva 12'),
	(118, 'cargos_mensuales', 22, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-03'),
	(119, 'cargos_mensuales', 22, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(120, 'pagos', 14, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $850.00 registrado'),
	(121, 'bodegas', 33, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(122, 'reservas', 13, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 33'),
	(123, 'contratos', 13, 'INSERT', 'root@localhost', '2025-12-02 01:27:51', 'Contrato creado para cliente 13'),
	(124, 'bodegas', 33, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: RESERVADA -> OCUPADA'),
	(125, 'contratos', 13, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Contrato creado desde reserva 13'),
	(126, 'cargos_mensuales', 23, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-03'),
	(127, 'cargos_mensuales', 23, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(128, 'pagos', 15, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $950.00 registrado'),
	(129, 'bodegas', 34, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(130, 'reservas', 14, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 34'),
	(131, 'contratos', 14, 'INSERT', 'root@localhost', '2025-12-02 01:27:51', 'Contrato creado para cliente 14'),
	(132, 'bodegas', 34, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: RESERVADA -> OCUPADA'),
	(133, 'contratos', 14, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Contrato creado desde reserva 14'),
	(134, 'cargos_mensuales', 24, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-03'),
	(135, 'cargos_mensuales', 24, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(136, 'pagos', 16, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $1150.00 registrado'),
	(137, 'bodegas', 35, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(138, 'reservas', 15, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 35'),
	(139, 'contratos', 15, 'INSERT', 'root@localhost', '2025-12-02 01:27:51', 'Contrato creado para cliente 15'),
	(140, 'bodegas', 35, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: RESERVADA -> OCUPADA'),
	(141, 'contratos', 15, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Contrato creado desde reserva 15'),
	(142, 'cargos_mensuales', 25, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-03'),
	(143, 'cargos_mensuales', 25, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(144, 'pagos', 17, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $1300.00 registrado'),
	(145, 'cargos_mensuales', 26, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(146, 'cargos_mensuales', 27, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(147, 'cargos_mensuales', 28, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(148, 'cargos_mensuales', 29, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(149, 'cargos_mensuales', 30, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(150, 'cargos_mensuales', 31, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(151, 'cargos_mensuales', 32, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(152, 'cargos_mensuales', 33, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(153, 'cargos_mensuales', 34, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(154, 'cargos_mensuales', 35, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(155, 'cargos_mensuales', 36, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(156, 'cargos_mensuales', 37, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(157, 'cargos_mensuales', 38, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-04'),
	(158, 'cargos_mensuales', 26, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(159, 'pagos', 18, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $800.00 registrado'),
	(160, 'cargos_mensuales', 27, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(161, 'pagos', 19, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $900.00 registrado'),
	(162, 'cargos_mensuales', 28, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cargo: PENDIENTE -> PAGADO'),
	(163, 'pagos', 20, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Pago de $1000.00 registrado'),
	(164, 'cargos_mensuales', 39, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(165, 'cargos_mensuales', 40, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(166, 'cargos_mensuales', 41, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(167, 'cargos_mensuales', 42, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(168, 'cargos_mensuales', 43, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(169, 'cargos_mensuales', 44, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(170, 'cargos_mensuales', 45, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(171, 'cargos_mensuales', 46, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(172, 'cargos_mensuales', 47, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(173, 'cargos_mensuales', 48, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(174, 'cargos_mensuales', 49, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(175, 'cargos_mensuales', 50, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(176, 'cargos_mensuales', 51, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-05'),
	(177, 'cargos_mensuales', 52, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(178, 'cargos_mensuales', 53, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(179, 'cargos_mensuales', 54, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(180, 'cargos_mensuales', 55, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(181, 'cargos_mensuales', 56, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(182, 'cargos_mensuales', 57, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(183, 'cargos_mensuales', 58, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(184, 'cargos_mensuales', 59, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(185, 'cargos_mensuales', 60, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(186, 'cargos_mensuales', 61, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(187, 'cargos_mensuales', 62, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(188, 'cargos_mensuales', 63, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(189, 'cargos_mensuales', 64, 'INSERT', 'usuario_cobranza', '2025-12-02 01:27:51', 'Cargo generado para periodo 2024-06'),
	(190, 'contratos', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado cambiado: ACTIVO -> TERMINADO'),
	(191, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: OCUPADA -> LIBRE'),
	(192, 'contratos', 10, 'UPDATE', 'usuario_gerencia', '2025-12-02 01:27:51', 'Contrato terminado: Cliente solicitó terminación anticipada'),
	(193, 'bodegas', 61, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(194, 'reservas', 16, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 61'),
	(195, 'bodegas', 62, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(196, 'reservas', 17, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 62'),
	(197, 'bodegas', 63, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: LIBRE -> RESERVADA'),
	(198, 'reservas', 18, 'INSERT', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva creada para bodega 63'),
	(199, 'bodegas', 63, 'UPDATE', 'root@localhost', '2025-12-02 01:27:51', 'Estado bodega: RESERVADA -> LIBRE'),
	(200, 'reservas', 18, 'UPDATE', 'usuario_ventas', '2025-12-02 01:27:51', 'Reserva cancelada'),
	(201, 'bodegas', 74, 'UPDATE', 'root@localhost', '2025-12-02 01:28:32', 'Estado bodega: LIBRE -> RESERVADA'),
	(202, 'reservas', 19, 'INSERT', 'usuario_ventas', '2025-12-02 01:28:32', 'Reserva creada para bodega 74'),
	(203, 'bodegas', 74, 'UPDATE', 'root@localhost', '2025-12-02 01:29:19', 'Estado bodega: RESERVADA -> LIBRE'),
	(204, 'reservas', 19, 'UPDATE', 'usuario_ventas', '2025-12-02 01:29:19', 'Reserva cancelada'),
	(205, 'cargos_mensuales', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:34:15', 'Estado cargo: PAGADO -> VENCIDO'),
	(206, 'contratos', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:34:38', 'Estado cambiado: TERMINADO -> ACTIVO'),
	(207, 'contratos', 10, 'UPDATE', 'root@localhost', '2025-12-02 01:34:43', 'Estado cambiado: ACTIVO -> SUSPENDIDO'),
	(208, 'contratos', 10, 'UPDATE', 'usuario_gerencia', '2025-12-02 01:34:43', 'Contrato suspendido por morosidad'),
	(209, 'contratos', 16, 'INSERT', 'root@localhost', '2025-12-02 01:35:29', 'Contrato creado para cliente 21'),
	(210, 'bodegas', 62, 'UPDATE', 'root@localhost', '2025-12-02 01:35:29', 'Estado bodega: RESERVADA -> OCUPADA'),
	(211, 'contratos', 16, 'INSERT', 'usuario_ventas', '2025-12-02 01:35:29', 'Contrato creado desde reserva 17'),
	(212, 'bodegas', 74, 'UPDATE', 'root@localhost', '2025-12-02 10:30:46', 'Estado bodega: LIBRE -> RESERVADA'),
	(213, 'reservas', 20, 'INSERT', 'usuario_ventas', '2025-12-02 10:30:46', 'Reserva creada para bodega 74'),
	(214, 'contratos', 17, 'INSERT', 'root@localhost', '2025-12-02 10:31:49', 'Contrato creado para cliente 21'),
	(215, 'bodegas', 74, 'UPDATE', 'root@localhost', '2025-12-02 10:31:49', 'Estado bodega: RESERVADA -> OCUPADA'),
	(216, 'contratos', 17, 'INSERT', 'usuario_ventas', '2025-12-02 10:31:49', 'Contrato creado desde reserva 20'),
	(217, 'bodegas', 61, 'UPDATE', 'root@localhost', '2025-12-02 10:38:50', 'Estado bodega: RESERVADA -> LIBRE'),
	(218, 'reservas', 16, 'UPDATE', 'usuario_ventas', '2025-12-02 10:38:50', 'Reserva cancelada'),
	(219, 'contratos', 1, 'UPDATE', 'root@localhost', '2025-12-02 10:39:42', 'Estado cambiado: ACTIVO -> TERMINADO'),
	(220, 'bodegas', 1, 'UPDATE', 'root@localhost', '2025-12-02 10:39:42', 'Estado bodega: OCUPADA -> LIBRE'),
	(221, 'contratos', 1, 'UPDATE', 'usuario_gerencia', '2025-12-02 10:39:42', 'Contrato terminado: por puto'),
	(222, 'bodegas', 1, 'UPDATE', 'root@localhost', '2025-12-02 11:13:26', 'Estado bodega: LIBRE -> RESERVADA'),
	(223, 'contratos', 18, 'INSERT', 'root@localhost', '2025-12-02 11:13:30', 'Contrato creado para cliente 1'),
	(224, 'bodegas', 1, 'UPDATE', 'root@localhost', '2025-12-02 11:13:30', 'Estado bodega: RESERVADA -> OCUPADA'),
	(225, 'contratos', 18, 'INSERT', 'usuario_ventas', '2025-12-02 11:13:30', 'Contrato creado desde reserva 1'),
	(226, 'cargos_mensuales', 65, 'INSERT', 'usuario_cobranza', '2025-12-02 11:19:28', 'Cargo generado para periodo 2025-02'),
	(227, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 11:53:08', 'Estado bodega: LIBRE -> RESERVADA'),
	(228, 'reservas', 21, 'INSERT', 'usuario_ventas', '2025-12-02 11:53:08', 'Reserva creada para bodega 10'),
	(229, 'contratos', 19, 'INSERT', 'root@localhost', '2025-12-02 11:53:41', 'Contrato creado para cliente 1'),
	(230, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 11:53:41', 'Estado bodega: RESERVADA -> OCUPADA'),
	(231, 'contratos', 19, 'INSERT', 'usuario_ventas', '2025-12-02 11:53:41', 'Contrato creado desde reserva 21'),
	(232, 'contratos', 19, 'UPDATE', 'root@localhost', '2025-12-02 11:54:49', 'Estado cambiado: ACTIVO -> TERMINADO'),
	(233, 'bodegas', 10, 'UPDATE', 'root@localhost', '2025-12-02 11:54:49', 'Estado bodega: OCUPADA -> LIBRE'),
	(234, 'contratos', 19, 'UPDATE', 'usuario_gerencia', '2025-12-02 11:54:49', 'Contrato terminado: se mudo del pais'),
	(235, 'bodegas', 61, 'UPDATE', 'root@localhost', '2025-12-03 16:25:12', 'Estado bodega: LIBRE -> RESERVADA'),
	(236, 'reservas', 22, 'INSERT', 'Ventas', '2025-12-03 16:25:12', 'Reserva creada para bodega 61'),
	(237, 'bodegas', 81, 'UPDATE', 'root@localhost', '2025-12-03 16:36:31', 'Estado bodega: LIBRE -> RESERVADA'),
	(238, 'reservas', 23, 'INSERT', 'Ventas', '2025-12-03 16:36:31', 'Reserva creada para bodega 81'),
	(239, 'bodegas', 86, 'UPDATE', 'root@localhost', '2025-12-03 16:39:30', 'Estado bodega: LIBRE -> RESERVADA'),
	(240, 'reservas', 24, 'INSERT', 'Ventas', '2025-12-03 16:39:30', 'Reserva creada para bodega 86'),
	(241, 'bodegas', 75, 'UPDATE', 'root@localhost', '2025-12-03 16:40:34', 'Estado bodega: LIBRE -> RESERVADA'),
	(242, 'reservas', 25, 'INSERT', 'Ventas', '2025-12-03 16:40:34', 'Reserva creada para bodega 75'),
	(243, 'bodegas', 63, 'UPDATE', 'root@localhost', '2025-12-03 16:41:11', 'Estado bodega: LIBRE -> RESERVADA'),
	(244, 'reservas', 26, 'INSERT', 'Ventas', '2025-12-03 16:41:11', 'Reserva creada para bodega 63'),
	(245, 'bodegas', 73, 'UPDATE', 'root@localhost', '2025-12-03 16:43:25', 'Estado bodega: LIBRE -> RESERVADA'),
	(246, 'reservas', 27, 'INSERT', 'Ventas', '2025-12-03 16:43:25', 'Reserva creada para bodega 73'),
	(247, 'contratos', 20, 'INSERT', 'root@localhost', '2025-12-03 16:44:22', 'Contrato creado para cliente 5'),
	(248, 'bodegas', 63, 'UPDATE', 'root@localhost', '2025-12-03 16:44:22', 'Estado bodega: RESERVADA -> OCUPADA'),
	(249, 'contratos', 20, 'INSERT', 'Ventas', '2025-12-03 16:44:22', 'Contrato creado desde reserva 26'),
	(250, 'bodegas', 75, 'UPDATE', 'root@localhost', '2025-12-03 16:44:33', 'Estado bodega: RESERVADA -> LIBRE'),
	(251, 'reservas', 25, 'UPDATE', 'Ventas', '2025-12-03 16:44:33', 'Reserva cancelada'),
	(252, 'contratos', 10, 'UPDATE', 'root@localhost', '2025-12-03 16:44:55', 'Estado cambiado: SUSPENDIDO -> TERMINADO'),
	(253, 'contratos', 10, 'UPDATE', 'Ventas', '2025-12-03 16:44:55', 'Contrato terminado: Terminación de contrato'),
	(254, 'bodegas', 21, 'UPDATE', 'root@localhost', '2025-12-03 16:54:23', 'Estado bodega: LIBRE -> RESERVADA'),
	(255, 'reservas', 28, 'INSERT', 'Ventas', '2025-12-03 16:54:23', 'Reserva creada para bodega 21'),
	(256, 'contratos', 21, 'INSERT', 'root@localhost', '2025-12-03 16:54:53', 'Contrato creado para cliente 1'),
	(257, 'bodegas', 21, 'UPDATE', 'root@localhost', '2025-12-03 16:54:53', 'Estado bodega: RESERVADA -> OCUPADA'),
	(258, 'contratos', 21, 'INSERT', 'Ventas', '2025-12-03 16:54:53', 'Contrato creado desde reserva 28'),
	(259, 'bodegas', 73, 'UPDATE', 'root@localhost', '2025-12-03 16:55:49', 'Estado bodega: RESERVADA -> LIBRE'),
	(260, 'reservas', 27, 'UPDATE', 'Ventas', '2025-12-03 16:55:49', 'Reserva cancelada'),
	(261, 'cargos_mensuales', 66, 'INSERT', 'Cobranza', '2025-12-03 16:56:45', 'Cargo generado para periodo 2023-03'),
	(262, 'bodegas', 22, 'UPDATE', 'root@localhost', '2025-12-03 17:15:46', 'Estado bodega: LIBRE -> RESERVADA'),
	(263, 'reservas', 29, 'INSERT', 'Ventas', '2025-12-03 17:15:46', 'Reserva creada para bodega 22'),
	(264, 'bodegas', 22, 'UPDATE', 'root@localhost', '2025-12-03 17:15:53', 'Estado bodega: RESERVADA -> LIBRE'),
	(265, 'reservas', 29, 'UPDATE', 'Ventas', '2025-12-03 17:15:53', 'Reserva cancelada'),
	(266, 'bodegas', 22, 'UPDATE', 'root@localhost', '2025-12-03 17:16:03', 'Estado bodega: LIBRE -> RESERVADA'),
	(267, 'reservas', 30, 'INSERT', 'Ventas', '2025-12-03 17:16:03', 'Reserva creada para bodega 22'),
	(268, 'contratos', 22, 'INSERT', 'root@localhost', '2025-12-03 17:16:10', 'Contrato creado para cliente 1'),
	(269, 'bodegas', 61, 'UPDATE', 'root@localhost', '2025-12-03 17:16:10', 'Estado bodega: RESERVADA -> OCUPADA'),
	(270, 'contratos', 22, 'INSERT', 'Ventas', '2025-12-03 17:16:10', 'Contrato creado desde reserva 22'),
	(271, 'contratos', 23, 'INSERT', 'root@localhost', '2025-12-03 17:17:45', 'Contrato creado para cliente 22'),
	(272, 'bodegas', 22, 'UPDATE', 'root@localhost', '2025-12-03 17:17:45', 'Estado bodega: RESERVADA -> OCUPADA'),
	(273, 'contratos', 23, 'INSERT', 'Ventas', '2025-12-03 17:17:45', 'Contrato creado desde reserva 30'),
	(274, 'cargos_mensuales', 67, 'INSERT', 'Cobranza', '2025-12-03 17:21:40', 'Cargo generado para periodo 2026-01'),
	(275, 'cargos_mensuales', 68, 'INSERT', 'Cobranza', '2025-12-03 17:22:15', 'Cargo generado para periodo 2026-01'),
	(276, 'cargos_mensuales', 68, 'UPDATE', 'root@localhost', '2025-12-03 17:24:20', 'Estado cargo: PENDIENTE -> PAGADO'),
	(277, 'pagos', 21, 'INSERT', 'Cobranza', '2025-12-03 17:24:20', 'Pago de $1912.50 registrado'),
	(278, 'cargos_mensuales', 4, 'UPDATE', 'root@localhost', '2025-12-03 17:25:51', 'Estado cargo: PAGADO -> VENCIDO'),
	(279, 'contratos', 4, 'UPDATE', 'root@localhost', '2025-12-03 17:26:30', 'Estado cambiado: ACTIVO -> SUSPENDIDO'),
	(280, 'cargos_mensuales', 14, 'UPDATE', 'root@localhost', '2025-12-03 17:26:30', 'Estado cargo: PAGADO -> VENCIDO'),
	(281, 'contratos', 4, 'UPDATE', 'root@localhost', '2025-12-03 17:28:01', 'Estado cambiado: SUSPENDIDO -> TERMINADO'),
	(282, 'bodegas', 4, 'UPDATE', 'root@localhost', '2025-12-03 17:28:01', 'Estado bodega: OCUPADA -> LIBRE'),
	(283, 'contratos', 4, 'UPDATE', 'Gerencia', '2025-12-03 17:28:01', 'Contrato terminado: Terminación de contrato'),
	(284, 'bodegas', 10, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:16:05', 'Estado bodega: LIBRE -> RESERVADA'),
	(285, 'reservas', 31, 'INSERT', 'Admin', '2025-12-04 11:16:05', 'Reserva creada para bodega 10'),
	(286, 'contratos', 24, 'INSERT', 'usuario_total@192.168.9.1', '2025-12-04 11:16:35', 'Contrato creado para cliente 3'),
	(287, 'bodegas', 10, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:16:35', 'Estado bodega: RESERVADA -> OCUPADA'),
	(288, 'contratos', 24, 'INSERT', 'Admin', '2025-12-04 11:16:35', 'Contrato creado desde reserva 31'),
	(289, 'bodegas', 86, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:17:09', 'Estado bodega: RESERVADA -> LIBRE'),
	(290, 'reservas', 24, 'UPDATE', 'Admin', '2025-12-04 11:17:09', 'Reserva cancelada'),
	(291, 'cargos_mensuales', 69, 'INSERT', 'Admin', '2025-12-04 11:19:20', 'Cargo generado para periodo 2026-01'),
	(292, 'pagos', 22, 'INSERT', 'Admin', '2025-12-04 11:20:15', 'Pago de $1500.00 registrado'),
	(293, 'cargos_mensuales', 69, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:22:08', 'Estado cargo: PENDIENTE -> PAGADO'),
	(294, 'pagos', 23, 'INSERT', 'Admin', '2025-12-04 11:22:08', 'Pago de $965.00 registrado'),
	(295, 'cargos_mensuales', 29, 'UPDATE', 'root@localhost', '2025-12-04 11:26:37', 'Estado cargo: PENDIENTE -> VENCIDO'),
	(296, 'cargos_mensuales', 19, 'UPDATE', 'root@localhost', '2025-12-04 11:29:23', 'Estado cargo: VENCIDO -> PAGADO'),
	(297, 'cargos_mensuales', 10, 'UPDATE', 'root@localhost', '2025-12-04 11:29:28', 'Estado cargo: VENCIDO -> PAGADO'),
	(298, 'cargos_mensuales', 9, 'UPDATE', 'root@localhost', '2025-12-04 11:29:30', 'Estado cargo: VENCIDO -> PAGADO'),
	(299, 'contratos', 9, 'UPDATE', 'root@localhost', '2025-12-04 11:29:36', 'Estado cambiado: SUSPENDIDO -> ACTIVO'),
	(300, 'contratos', 9, 'UPDATE', '9', '2025-12-04 11:29:36', 'Contrato reactivado'),
	(301, 'cargos_mensuales', 9, 'UPDATE', 'root@localhost', '2025-12-04 11:30:06', 'Estado cargo: PAGADO -> VENCIDO'),
	(302, 'contratos', 9, 'UPDATE', 'root@localhost', '2025-12-04 11:30:09', 'Estado cambiado: ACTIVO -> SUSPENDIDO'),
	(303, 'cargos_mensuales', 19, 'UPDATE', 'root@localhost', '2025-12-04 11:30:09', 'Estado cargo: PAGADO -> VENCIDO'),
	(304, 'contratos', 9, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:31:22', 'Estado cambiado: SUSPENDIDO -> TERMINADO'),
	(305, 'bodegas', 9, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:31:22', 'Estado bodega: OCUPADA -> LIBRE'),
	(306, 'contratos', 9, 'UPDATE', 'Admin', '2025-12-04 11:31:22', 'Contrato terminado: no pago'),
	(307, 'contratos', 11, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:33:14', 'Estado cambiado: ACTIVO -> TERMINADO'),
	(308, 'bodegas', 31, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:33:14', 'Estado bodega: OCUPADA -> LIBRE'),
	(309, 'contratos', 11, 'UPDATE', 'Gerencia', '2025-12-04 11:33:14', 'Contrato terminado: pocoyo'),
	(310, 'bodegas', 86, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:41:27', 'Estado bodega: LIBRE -> RESERVADA'),
	(311, 'reservas', 32, 'INSERT', 'Ventas', '2025-12-04 11:41:27', 'Reserva creada para bodega 86'),
	(312, 'bodegas', 75, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:50:21', 'Estado bodega: LIBRE -> RESERVADA'),
	(313, 'reservas', 33, 'INSERT', 'Ventas', '2025-12-04 11:50:21', 'Reserva creada para bodega 75'),
	(314, 'contratos', 25, 'INSERT', 'usuario_total@192.168.9.1', '2025-12-04 11:52:08', 'Contrato creado para cliente 19'),
	(315, 'bodegas', 75, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 11:52:08', 'Estado bodega: RESERVADA -> OCUPADA'),
	(316, 'contratos', 25, 'INSERT', 'Ventas', '2025-12-04 11:52:08', 'Contrato creado desde reserva 33'),
	(317, 'cargos_mensuales', 70, 'INSERT', 'Cobranza', '2025-12-04 11:56:56', 'Cargo generado para periodo 2026-01'),
	(318, 'pagos', 24, 'INSERT', 'Cobranza', '2025-12-04 11:59:04', 'Pago de $1000.00 registrado'),
	(319, 'pagos', 25, 'INSERT', 'Cobranza', '2025-12-04 11:59:54', 'Pago de $30.00 registrado'),
	(320, 'cargos_mensuales', 70, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 12:00:16', 'Estado cargo: PENDIENTE -> PAGADO'),
	(321, 'pagos', 26, 'INSERT', 'Cobranza', '2025-12-04 12:00:16', 'Pago de $20.00 registrado'),
	(322, 'cargos_mensuales', 12, 'UPDATE', 'root@localhost', '2025-12-04 12:04:46', 'Estado cargo: PAGADO -> VENCIDO'),
	(323, 'contratos', 3, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 12:05:15', 'Estado cambiado: ACTIVO -> TERMINADO'),
	(324, 'bodegas', 3, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 12:05:15', 'Estado bodega: OCUPADA -> LIBRE'),
	(325, 'contratos', 3, 'UPDATE', 'Gerencia', '2025-12-04 12:05:15', 'Contrato terminado: me cael mal'),
	(326, 'bodegas', 81, 'UPDATE', 'usuario_total@192.168.9.1', '2025-12-04 12:10:57', 'Estado bodega: RESERVADA -> LIBRE'),
	(327, 'reservas', 23, 'UPDATE', 'Ventas', '2025-12-04 12:10:57', 'Reserva cancelada'),
	(328, 'bodegas', 76, 'UPDATE', 'root@localhost', '2025-12-13 18:31:50', 'Estado bodega: LIBRE -> RESERVADA'),
	(329, 'reservas', 34, 'INSERT', 'Ventas', '2025-12-13 18:31:50', 'Reserva creada para bodega 76'),
	(330, 'bodegas', 64, 'UPDATE', 'root@localhost', '2025-12-13 18:39:13', 'Estado bodega: LIBRE -> RESERVADA'),
	(331, 'reservas', 35, 'INSERT', 'Ventas', '2025-12-13 18:39:13', 'Reserva creada para bodega 64');

-- Volcando estructura para tabla mini_bodegas.bodegas
CREATE TABLE IF NOT EXISTS `bodegas` (
  `id_bodega` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tamano_m2` decimal(6,2) NOT NULL,
  `ubicacion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_base` decimal(10,2) NOT NULL,
  `estado` enum('LIBRE','RESERVADA','OCUPADA','MANTENIMIENTO') COLLATE utf8mb4_unicode_ci DEFAULT 'LIBRE',
  `estado_operativo` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_bodega`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `idx_estado` (`estado`),
  KEY `idx_ubicacion` (`ubicacion`),
  KEY `idx_tamano` (`tamano_m2`),
  CONSTRAINT `chk_precio` CHECK ((`precio_base` >= 0)),
  CONSTRAINT `chk_tamano` CHECK ((`tamano_m2` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.bodegas: ~120 rows (aproximadamente)
INSERT INTO `bodegas` (`id_bodega`, `codigo`, `tamano_m2`, `ubicacion`, `precio_base`, `estado`, `estado_operativo`, `fecha_registro`) VALUES
	(1, 'BOD-N001', 3.50, 'Zona Norte', 800.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(2, 'BOD-N002', 4.00, 'Zona Norte', 900.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(3, 'BOD-N003', 5.00, 'Zona Norte', 1000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(4, 'BOD-N004', 6.00, 'Zona Norte', 1200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(5, 'BOD-N005', 7.50, 'Zona Norte', 1400.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(6, 'BOD-N006', 8.00, 'Zona Norte', 1500.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(7, 'BOD-N007', 10.00, 'Zona Norte', 1800.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(8, 'BOD-N008', 12.00, 'Zona Norte', 2100.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(9, 'BOD-N009', 15.00, 'Zona Norte', 2500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(10, 'BOD-N010', 18.00, 'Zona Norte', 2900.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(11, 'BOD-N011', 20.00, 'Zona Norte', 3200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(12, 'BOD-N012', 25.00, 'Zona Norte', 3800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(13, 'BOD-N013', 30.00, 'Zona Norte', 4500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(14, 'BOD-N014', 3.50, 'Zona Norte', 800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(15, 'BOD-N015', 4.50, 'Zona Norte', 950.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(16, 'BOD-N016', 5.50, 'Zona Norte', 1100.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(17, 'BOD-N017', 6.50, 'Zona Norte', 1250.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(18, 'BOD-N018', 8.50, 'Zona Norte', 1550.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(19, 'BOD-N019', 9.00, 'Zona Norte', 1650.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(20, 'BOD-N020', 11.00, 'Zona Norte', 1950.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(21, 'BOD-N021', 13.00, 'Zona Norte', 2250.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(22, 'BOD-N022', 14.00, 'Zona Norte', 2400.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(23, 'BOD-N023', 16.00, 'Zona Norte', 2700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(24, 'BOD-N024', 22.00, 'Zona Norte', 3400.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(25, 'BOD-N025', 28.00, 'Zona Norte', 4200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(26, 'BOD-N026', 4.00, 'Zona Norte', 900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(27, 'BOD-N027', 7.00, 'Zona Norte', 1350.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(28, 'BOD-N028', 10.50, 'Zona Norte', 1850.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(29, 'BOD-N029', 15.50, 'Zona Norte', 2600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(30, 'BOD-N030', 35.00, 'Zona Norte', 5000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(31, 'BOD-S001', 3.00, 'Zona Sur', 750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(32, 'BOD-S002', 4.00, 'Zona Sur', 850.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(33, 'BOD-S003', 5.00, 'Zona Sur', 950.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(34, 'BOD-S004', 6.00, 'Zona Sur', 1150.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(35, 'BOD-S005', 7.00, 'Zona Sur', 1300.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(36, 'BOD-S006', 8.00, 'Zona Sur', 1450.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(37, 'BOD-S007', 10.00, 'Zona Sur', 1750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(38, 'BOD-S008', 12.00, 'Zona Sur', 2000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(39, 'BOD-S009', 15.00, 'Zona Sur', 2400.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(40, 'BOD-S010', 18.00, 'Zona Sur', 2800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(41, 'BOD-S011', 20.00, 'Zona Sur', 3100.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(42, 'BOD-S012', 25.00, 'Zona Sur', 3700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(43, 'BOD-S013', 30.00, 'Zona Sur', 4400.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(44, 'BOD-S014', 3.50, 'Zona Sur', 780.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(45, 'BOD-S015', 4.50, 'Zona Sur', 900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(46, 'BOD-S016', 5.50, 'Zona Sur', 1050.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(47, 'BOD-S017', 6.50, 'Zona Sur', 1200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(48, 'BOD-S018', 8.50, 'Zona Sur', 1500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(49, 'BOD-S019', 9.00, 'Zona Sur', 1600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(50, 'BOD-S020', 11.00, 'Zona Sur', 1900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(51, 'BOD-S021', 13.00, 'Zona Sur', 2150.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(52, 'BOD-S022', 14.00, 'Zona Sur', 2300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(53, 'BOD-S023', 16.00, 'Zona Sur', 2600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(54, 'BOD-S024', 22.00, 'Zona Sur', 3300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(55, 'BOD-S025', 28.00, 'Zona Sur', 4100.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(56, 'BOD-S026', 4.00, 'Zona Sur', 850.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(57, 'BOD-S027', 7.50, 'Zona Sur', 1350.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(58, 'BOD-S028', 10.50, 'Zona Sur', 1800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(59, 'BOD-S029', 15.50, 'Zona Sur', 2550.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(60, 'BOD-S030', 32.00, 'Zona Sur', 4700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(61, 'BOD-C001', 3.50, 'Zona Centro', 900.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(62, 'BOD-C002', 4.00, 'Zona Centro', 1000.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(63, 'BOD-C003', 5.00, 'Zona Centro', 1100.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(64, 'BOD-C004', 6.00, 'Zona Centro', 1300.00, 'RESERVADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(65, 'BOD-C005', 7.50, 'Zona Centro', 1500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(66, 'BOD-C006', 8.00, 'Zona Centro', 1600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(67, 'BOD-C007', 10.00, 'Zona Centro', 1900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(68, 'BOD-C008', 12.00, 'Zona Centro', 2200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(69, 'BOD-C009', 15.00, 'Zona Centro', 2600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(70, 'BOD-C010', 18.00, 'Zona Centro', 3000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(71, 'BOD-C011', 20.00, 'Zona Centro', 3300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(72, 'BOD-C012', 25.00, 'Zona Centro', 3900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(73, 'BOD-C013', 30.00, 'Zona Centro', 4600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(74, 'BOD-C014', 3.50, 'Zona Centro', 900.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(75, 'BOD-C015', 4.50, 'Zona Centro', 1050.00, 'OCUPADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(76, 'BOD-C016', 5.50, 'Zona Centro', 1200.00, 'RESERVADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(77, 'BOD-C017', 6.50, 'Zona Centro', 1350.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(78, 'BOD-C018', 8.50, 'Zona Centro', 1650.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(79, 'BOD-C019', 9.00, 'Zona Centro', 1750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(80, 'BOD-C020', 11.00, 'Zona Centro', 2050.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(81, 'BOD-C021', 13.00, 'Zona Centro', 2350.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(82, 'BOD-C022', 14.00, 'Zona Centro', 2500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(83, 'BOD-C023', 16.00, 'Zona Centro', 2800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(84, 'BOD-C024', 22.00, 'Zona Centro', 3500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(85, 'BOD-C025', 28.00, 'Zona Centro', 4300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(86, 'BOD-C026', 4.00, 'Zona Centro', 1000.00, 'RESERVADA', 'ACTIVO', '2025-12-02 01:27:49'),
	(87, 'BOD-C027', 7.00, 'Zona Centro', 1450.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(88, 'BOD-C028', 10.50, 'Zona Centro', 1950.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(89, 'BOD-C029', 15.50, 'Zona Centro', 2700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(90, 'BOD-C030', 40.00, 'Zona Centro', 5500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(91, 'BOD-E001', 3.00, 'Zona Este', 700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(92, 'BOD-E002', 4.00, 'Zona Este', 800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(93, 'BOD-E003', 5.00, 'Zona Este', 900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(94, 'BOD-E004', 6.00, 'Zona Este', 1100.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(95, 'BOD-E005', 7.00, 'Zona Este', 1250.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(96, 'BOD-E006', 8.00, 'Zona Este', 1400.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(97, 'BOD-E007', 10.00, 'Zona Este', 1700.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(98, 'BOD-E008', 12.00, 'Zona Este', 1950.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(99, 'BOD-E009', 15.00, 'Zona Este', 2350.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(100, 'BOD-E010', 18.00, 'Zona Este', 2750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(101, 'BOD-E011', 20.00, 'Zona Este', 3000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(102, 'BOD-E012', 25.00, 'Zona Este', 3600.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(103, 'BOD-E013', 30.00, 'Zona Este', 4300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(104, 'BOD-E014', 3.50, 'Zona Este', 750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(105, 'BOD-E015', 4.50, 'Zona Este', 850.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(106, 'BOD-E016', 5.50, 'Zona Este', 1000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(107, 'BOD-E017', 6.50, 'Zona Este', 1150.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(108, 'BOD-E018', 8.50, 'Zona Este', 1450.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(109, 'BOD-E019', 9.00, 'Zona Este', 1550.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(110, 'BOD-E020', 11.00, 'Zona Este', 1850.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(111, 'BOD-E021', 13.00, 'Zona Este', 2100.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(112, 'BOD-E022', 14.00, 'Zona Este', 2250.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(113, 'BOD-E023', 16.00, 'Zona Este', 2550.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(114, 'BOD-E024', 22.00, 'Zona Este', 3200.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(115, 'BOD-E025', 28.00, 'Zona Este', 4000.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(116, 'BOD-E026', 4.00, 'Zona Este', 800.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(117, 'BOD-E027', 7.50, 'Zona Este', 1300.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(118, 'BOD-E028', 10.50, 'Zona Este', 1750.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(119, 'BOD-E029', 15.50, 'Zona Este', 2500.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49'),
	(120, 'BOD-E030', 35.00, 'Zona Este', 4900.00, 'LIBRE', 'ACTIVO', '2025-12-02 01:27:49');

-- Volcando estructura para tabla mini_bodegas.cargos_mensuales
CREATE TABLE IF NOT EXISTS `cargos_mensuales` (
  `id_cargo` int NOT NULL AUTO_INCREMENT,
  `id_contrato` int NOT NULL,
  `periodo` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Formato YYYY-MM',
  `monto_base` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) DEFAULT '0.00',
  `monto_final` decimal(10,2) NOT NULL,
  `id_promocion` int DEFAULT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` enum('PENDIENTE','PAGADO','VENCIDO','CONDONADO') COLLATE utf8mb4_unicode_ci DEFAULT 'PENDIENTE',
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cargo`),
  UNIQUE KEY `uk_contrato_periodo` (`id_contrato`,`periodo`),
  KEY `id_promocion` (`id_promocion`),
  KEY `idx_estado` (`estado`),
  KEY `idx_periodo` (`periodo`),
  KEY `idx_vencimiento` (`fecha_vencimiento`),
  KEY `idx_contrato_estado` (`id_contrato`,`estado`),
  CONSTRAINT `cargos_mensuales_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contratos` (`id_contrato`),
  CONSTRAINT `cargos_mensuales_ibfk_2` FOREIGN KEY (`id_promocion`) REFERENCES `promociones` (`id_promocion`),
  CONSTRAINT `chk_descuento` CHECK ((`descuento` >= 0)),
  CONSTRAINT `chk_monto_base` CHECK ((`monto_base` >= 0)),
  CONSTRAINT `chk_monto_final` CHECK ((`monto_final` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.cargos_mensuales: ~70 rows (aproximadamente)
INSERT INTO `cargos_mensuales` (`id_cargo`, `id_contrato`, `periodo`, `monto_base`, `descuento`, `monto_final`, `id_promocion`, `fecha_vencimiento`, `estado`, `fecha_creacion`) VALUES
	(1, 1, '2024-01', 800.00, 160.00, 640.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:49'),
	(2, 2, '2024-01', 900.00, 180.00, 720.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(3, 3, '2024-01', 1000.00, 200.00, 800.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(4, 4, '2024-01', 1200.00, 240.00, 960.00, 1, '2024-01-31', 'VENCIDO', '2025-12-02 01:27:50'),
	(5, 5, '2024-01', 1400.00, 280.00, 1120.00, 1, '2024-01-31', 'VENCIDO', '2025-12-02 01:27:50'),
	(6, 6, '2024-01', 1500.00, 300.00, 1200.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(7, 7, '2024-01', 1800.00, 360.00, 1440.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(8, 8, '2024-01', 2100.00, 420.00, 1680.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(9, 9, '2024-01', 2500.00, 500.00, 2000.00, 1, '2024-01-31', 'VENCIDO', '2025-12-02 01:27:50'),
	(10, 10, '2024-01', 2900.00, 580.00, 2320.00, 1, '2024-01-31', 'PAGADO', '2025-12-02 01:27:50'),
	(11, 1, '2024-02', 800.00, 120.00, 680.00, 2, '2024-02-29', 'PAGADO', '2025-12-02 01:27:50'),
	(12, 2, '2024-02', 900.00, 0.00, 900.00, 3, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(13, 3, '2024-02', 1000.00, 0.00, 1000.00, NULL, '2024-02-29', 'PAGADO', '2025-12-02 01:27:50'),
	(14, 4, '2024-02', 1200.00, 0.00, 1200.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(15, 5, '2024-02', 1400.00, 0.00, 1400.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(16, 6, '2024-02', 1500.00, 0.00, 1500.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(17, 7, '2024-02', 1800.00, 0.00, 1800.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(18, 8, '2024-02', 2100.00, 0.00, 2100.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(19, 9, '2024-02', 2500.00, 0.00, 2500.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(20, 10, '2024-02', 2900.00, 0.00, 2900.00, NULL, '2024-02-29', 'VENCIDO', '2025-12-02 01:27:50'),
	(21, 11, '2024-03', 750.00, 0.00, 750.00, NULL, '2024-03-31', 'PAGADO', '2025-12-02 01:27:50'),
	(22, 12, '2024-03', 850.00, 0.00, 850.00, NULL, '2024-03-31', 'PAGADO', '2025-12-02 01:27:51'),
	(23, 13, '2024-03', 950.00, 0.00, 950.00, NULL, '2024-03-31', 'PAGADO', '2025-12-02 01:27:51'),
	(24, 14, '2024-03', 1150.00, 0.00, 1150.00, NULL, '2024-03-31', 'PAGADO', '2025-12-02 01:27:51'),
	(25, 15, '2024-03', 1300.00, 0.00, 1300.00, NULL, '2024-03-31', 'PAGADO', '2025-12-02 01:27:51'),
	(26, 1, '2024-04', 800.00, 0.00, 800.00, NULL, '2024-04-30', 'PAGADO', '2025-12-02 01:27:51'),
	(27, 2, '2024-04', 900.00, 0.00, 900.00, NULL, '2024-04-30', 'PAGADO', '2025-12-02 01:27:51'),
	(28, 3, '2024-04', 1000.00, 0.00, 1000.00, NULL, '2024-04-30', 'PAGADO', '2025-12-02 01:27:51'),
	(29, 4, '2024-04', 1200.00, 0.00, 1200.00, NULL, '2024-04-30', 'VENCIDO', '2025-12-02 01:27:51'),
	(30, 6, '2024-04', 1500.00, 0.00, 1500.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(31, 7, '2024-04', 1800.00, 0.00, 1800.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(32, 8, '2024-04', 2100.00, 0.00, 2100.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(33, 10, '2024-04', 2900.00, 0.00, 2900.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(34, 11, '2024-04', 750.00, 0.00, 750.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(35, 12, '2024-04', 850.00, 0.00, 850.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(36, 13, '2024-04', 950.00, 0.00, 950.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(37, 14, '2024-04', 1150.00, 0.00, 1150.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(38, 15, '2024-04', 1300.00, 0.00, 1300.00, NULL, '2024-04-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(39, 1, '2024-05', 800.00, 0.00, 800.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(40, 2, '2024-05', 900.00, 0.00, 900.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(41, 3, '2024-05', 1000.00, 0.00, 1000.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(42, 4, '2024-05', 1200.00, 0.00, 1200.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(43, 6, '2024-05', 1500.00, 0.00, 1500.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(44, 7, '2024-05', 1800.00, 0.00, 1800.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(45, 8, '2024-05', 2100.00, 0.00, 2100.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(46, 10, '2024-05', 2900.00, 0.00, 2900.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(47, 11, '2024-05', 750.00, 0.00, 750.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(48, 12, '2024-05', 850.00, 0.00, 850.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(49, 13, '2024-05', 950.00, 0.00, 950.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(50, 14, '2024-05', 1150.00, 0.00, 1150.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(51, 15, '2024-05', 1300.00, 0.00, 1300.00, NULL, '2024-05-31', 'PENDIENTE', '2025-12-02 01:27:51'),
	(52, 1, '2024-06', 800.00, 200.00, 600.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(53, 2, '2024-06', 900.00, 200.00, 700.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(54, 3, '2024-06', 1000.00, 200.00, 800.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(55, 4, '2024-06', 1200.00, 200.00, 1000.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(56, 6, '2024-06', 1500.00, 200.00, 1300.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(57, 7, '2024-06', 1800.00, 200.00, 1600.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(58, 8, '2024-06', 2100.00, 200.00, 1900.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(59, 10, '2024-06', 2900.00, 200.00, 2700.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(60, 11, '2024-06', 750.00, 200.00, 550.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(61, 12, '2024-06', 850.00, 200.00, 650.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(62, 13, '2024-06', 950.00, 200.00, 750.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(63, 14, '2024-06', 1150.00, 200.00, 950.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(64, 15, '2024-06', 1300.00, 200.00, 1100.00, 3, '2024-06-30', 'PENDIENTE', '2025-12-02 01:27:51'),
	(65, 2, '2025-02', 900.00, 0.00, 900.00, NULL, '2025-02-28', 'PENDIENTE', '2025-12-02 11:19:28'),
	(66, 21, '2023-03', 2250.00, 0.00, 2250.00, NULL, '2023-03-31', 'PENDIENTE', '2025-12-03 16:56:45'),
	(67, 22, '2026-01', 900.00, 0.00, 900.00, NULL, '2026-01-31', 'PENDIENTE', '2025-12-03 17:21:40'),
	(68, 21, '2026-01', 2250.00, 337.50, 1912.50, 2, '2026-01-31', 'PAGADO', '2025-12-03 17:22:15'),
	(69, 24, '2026-01', 2900.00, 435.00, 2465.00, 2, '2026-01-31', 'PAGADO', '2025-12-04 11:19:20'),
	(70, 25, '2026-01', 1050.00, 0.00, 1050.00, NULL, '2026-01-31', 'PAGADO', '2025-12-04 11:56:56');

-- Volcando estructura para tabla mini_bodegas.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `identificacion_fiscal` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `identificacion_fiscal` (`identificacion_fiscal`),
  KEY `idx_estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.clientes: ~80 rows (aproximadamente)
INSERT INTO `clientes` (`id_cliente`, `identificacion_fiscal`, `nombre_completo`, `telefono`, `email`, `direccion`, `estado`, `fecha_registro`) VALUES
	(1, 'RFC001', 'Juan Carlos Pérez López', '555-0101', 'jperez@email.com', 'Av. Principal 123', 'ACTIVO', '2025-12-02 01:27:49'),
	(2, 'RFC002', 'María Elena García Ruiz', '555-0102', 'mgarcia@email.com', 'Calle Secundaria 456', 'ACTIVO', '2025-12-02 01:27:49'),
	(3, 'RFC003', 'Roberto Martínez Sánchez', '555-0103', 'rmartinez@email.com', 'Blvd. Central 789', 'ACTIVO', '2025-12-02 01:27:49'),
	(4, 'RFC004', 'Ana Patricia Hernández', '555-0104', 'ahernandez@email.com', 'Av. Norte 321', 'ACTIVO', '2025-12-02 01:27:49'),
	(5, 'RFC005', 'Luis Fernando Ramírez', '555-0105', 'lramirez@email.com', 'Calle Sur 654', 'ACTIVO', '2025-12-02 01:27:49'),
	(6, 'RFC006', 'Carmen Sofía Torres', '555-0106', 'ctorres@email.com', 'Av. Este 987', 'ACTIVO', '2025-12-02 01:27:49'),
	(7, 'RFC007', 'José Miguel Flores', '555-0107', 'jflores@email.com', 'Calle Oeste 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(8, 'RFC008', 'Laura Beatriz Morales', '555-0108', 'lmorales@email.com', 'Blvd. Industrial 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(9, 'RFC009', 'Pedro Antonio Castillo', '555-0109', 'pcastillo@email.com', 'Av. Comercial 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(10, 'RFC010', 'Diana Isabel Vargas', '555-0110', 'dvargas@email.com', 'Calle Residencial 741', 'ACTIVO', '2025-12-02 01:27:49'),
	(11, 'RFC011', 'Francisco Javier Ortiz', '555-0111', 'fortiz@email.com', 'Av. Reforma 852', 'ACTIVO', '2025-12-02 01:27:49'),
	(12, 'RFC012', 'Gabriela Monserrat Cruz', '555-0112', 'gcruz@email.com', 'Calle Juárez 963', 'ACTIVO', '2025-12-02 01:27:49'),
	(13, 'RFC013', 'Héctor Manuel Reyes', '555-0113', 'hreyes@email.com', 'Blvd. Hidalgo 159', 'ACTIVO', '2025-12-02 01:27:49'),
	(14, 'RFC014', 'Isabel Cristina Jiménez', '555-0114', 'ijimenez@email.com', 'Av. Morelos 357', 'ACTIVO', '2025-12-02 01:27:49'),
	(15, 'RFC015', 'Jorge Alberto Mendoza', '555-0115', 'jmendoza@email.com', 'Calle Allende 486', 'ACTIVO', '2025-12-02 01:27:49'),
	(16, 'RFC016', 'Karla Alejandra Rojas', '555-0116', 'krojas@email.com', 'Av. Insurgentes 753', 'ACTIVO', '2025-12-02 01:27:49'),
	(17, 'RFC017', 'Leonardo Daniel Guzmán', '555-0117', 'lguzman@email.com', 'Calle Madero 951', 'ACTIVO', '2025-12-02 01:27:49'),
	(18, 'RFC018', 'Mónica Fernanda Aguilar', '555-0118', 'maguilar@email.com', 'Blvd. Revolución 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(19, 'RFC019', 'Nicolás Sebastián Medina', '555-0119', 'nmedina@email.com', 'Av. Constitución 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(20, 'RFC020', 'Olivia Valentina Ramos', '555-0120', 'oramos@email.com', 'Calle Independencia 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(21, 'RFC021', 'Pablo Rodrigo Herrera', '555-0121', 'pherrera@email.com', 'Av. Libertad 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(22, 'RFC022', 'Raquel Adriana Vega', '555-0122', 'rvega@email.com', 'Calle Victoria 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(23, 'RFC023', 'Santiago Emilio Castro', '555-0123', 'scastro@email.com', 'Blvd. Progreso 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(24, 'RFC024', 'Teresa Guadalupe Ríos', '555-0124', 'trios@email.com', 'Av. Esperanza 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(25, 'RFC025', 'Ulises Mauricio Chávez', '555-0125', 'uchavez@email.com', 'Calle Unión 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(26, 'RFC026', 'Verónica Daniela Núñez', '555-0126', 'vnunez@email.com', 'Av. Fraternidad 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(27, 'RFC027', 'William Arturo Ponce', '555-0127', 'wponce@email.com', 'Calle Paz 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(28, 'RFC028', 'Ximena Carolina Soto', '555-0128', 'xsoto@email.com', 'Blvd. Armonía 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(29, 'RFC029', 'Yolanda Maritza Campos', '555-0129', 'ycampos@email.com', 'Av. Concordia 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(30, 'RFC030', 'Zacarías Ernesto Paredes', '555-0130', 'zparedes@email.com', 'Calle Solidaridad 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(31, 'RFC031', 'Adrián Gustavo Salazar', '555-0131', 'asalazar@email.com', 'Av. Progreso 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(32, 'RFC032', 'Blanca Estela Domínguez', '555-0132', 'bdominguez@email.com', 'Calle Desarrollo 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(33, 'RFC033', 'César Octavio Fuentes', '555-0133', 'cfuentes@email.com', 'Blvd. Futuro 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(34, 'RFC034', 'Dulce María Contreras', '555-0134', 'dcontreras@email.com', 'Av. Horizonte 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(35, 'RFC035', 'Eduardo Benjamín Velasco', '555-0135', 'evelasco@email.com', 'Calle Aurora 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(36, 'RFC036', 'Fabiola Lucía Sandoval', '555-0136', 'fsandoval@email.com', 'Av. Amanecer 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(37, 'RFC037', 'Gerardo Ignacio Ibarra', '555-0137', 'gibarra@email.com', 'Calle Alba 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(38, 'RFC038', 'Hilda Rosario Maldonado', '555-0138', 'hmaldonado@email.com', 'Blvd. Cielo 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(39, 'RFC039', 'Iván Alejandro Pacheco', '555-0139', 'ipacheco@email.com', 'Av. Estrella 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(40, 'RFC040', 'Julia Angélica Cordero', '555-0140', 'jcordero@email.com', 'Calle Luna 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(41, 'RFC041', 'Kevin Rodrigo Navarro', '555-0141', 'knavarro@email.com', 'Av. Sol 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(42, 'RFC042', 'Lidia Marcela Escobar', '555-0142', 'lescobar@email.com', 'Calle Nube 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(43, 'RFC043', 'Mario Enrique Carrillo', '555-0143', 'mcarrillo@email.com', 'Blvd. Viento 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(44, 'RFC044', 'Natalia Paola Delgado', '555-0144', 'ndelgado@email.com', 'Av. Lluvia 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(45, 'RFC045', 'Omar Felipe Gallegos', '555-0145', 'ogallegos@email.com', 'Calle Tormenta 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(46, 'RFC046', 'Patricia Lorena Acosta', '555-0146', 'pacosta@email.com', 'Av. Trueno 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(47, 'RFC047', 'Quintín Salvador Barrera', '555-0147', 'qbarrera@email.com', 'Calle Rayo 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(48, 'RFC048', 'Rocío Angélica Cabrera', '555-0148', 'rcabrera@email.com', 'Blvd. Arcoíris 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(49, 'RFC049', 'Sergio David Cervantes', '555-0149', 'scervantes@email.com', 'Av. Brisa 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(50, 'RFC050', 'Tatiana Melissa Duarte', '555-0150', 'tduarte@email.com', 'Calle Marea 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(51, 'RFC051', 'Uriel Maximiliano Espinoza', '555-0151', 'uespinoza@email.com', 'Av. Ola 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(52, 'RFC052', 'Vanessa Brenda Figueroa', '555-0152', 'vfigueroa@email.com', 'Calle Cascada 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(53, 'RFC053', 'Walter Ismael Garza', '555-0153', 'wgarza@email.com', 'Blvd. Río 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(54, 'RFC054', 'Xóchitl Berenice Guerrero', '555-0154', 'xguerrero@email.com', 'Av. Lago 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(55, 'RFC055', 'Yahir Cristian Hinojosa', '555-0155', 'yhinojosa@email.com', 'Calle Mar 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(56, 'RFC056', 'Zulema Angélica Ibáñez', '555-0156', 'zibanez@email.com', 'Av. Océano 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(57, 'RFC057', 'Alberto Ramón Lara', '555-0157', 'alara@email.com', 'Calle Playa 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(58, 'RFC058', 'Beatriz Cecilia León', '555-0158', 'bleon@email.com', 'Blvd. Costa 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(59, 'RFC059', 'Carlos Humberto Mejía', '555-0159', 'cmejia@email.com', 'Av. Bahía 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(60, 'RFC060', 'Delia Francisca Miranda', '555-0160', 'dmiranda@email.com', 'Calle Puerto 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(61, 'RFC061', 'Emilio Claudio Molina', '555-0161', 'emolina@email.com', 'Av. Muelle 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(62, 'RFC062', 'Flor de María Montoya', '555-0162', 'fmontoya@email.com', 'Calle Ancla 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(63, 'RFC063', 'Gilberto Tomás Mora', '555-0163', 'gmora@email.com', 'Blvd. Faro 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(64, 'RFC064', 'Hortensia Silvia Muñoz', '555-0164', 'hmunoz@email.com', 'Av. Navegante 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(65, 'RFC065', 'Ignacio Rubén Nava', '555-0165', 'inava@email.com', 'Calle Barco 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(66, 'RFC066', 'Josefina Amparo Nieto', '555-0166', 'jnieto@email.com', 'Av. Velero 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(67, 'RFC067', 'Karina Leticia Ochoa', '555-0167', 'kochoa@email.com', 'Calle Yate 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(68, 'RFC068', 'Lorenzo Vicente Oliva', '555-0168', 'loliva@email.com', 'Blvd. Navío 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(69, 'RFC069', 'Magdalena Rosa Orozco', '555-0169', 'morozco@email.com', 'Av. Timón 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(70, 'RFC070', 'Norberto Aurelio Padilla', '555-0170', 'npadilla@email.com', 'Calle Proa 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(71, 'RFC071', 'Ofelia Consuelo Palma', '555-0171', 'opalma@email.com', 'Av. Popa 936', 'ACTIVO', '2025-12-02 01:27:49'),
	(72, 'RFC072', 'Porfirio Esteban Peña', '555-0172', 'ppena@email.com', 'Calle Quilla 147', 'ACTIVO', '2025-12-02 01:27:49'),
	(73, 'RFC073', 'Rebeca Alicia Peralta', '555-0173', 'rperalta@email.com', 'Blvd. Mástil 258', 'ACTIVO', '2025-12-02 01:27:49'),
	(74, 'RFC074', 'Samuel Martín Prado', '555-0174', 'sprado@email.com', 'Av. Vela 369', 'ACTIVO', '2025-12-02 01:27:49'),
	(75, 'RFC075', 'Tania Irene Prieto', '555-0175', 'tprieto@email.com', 'Calle Cabo 471', 'ACTIVO', '2025-12-02 01:27:49'),
	(76, 'RFC076', 'Ubaldo Jacinto Quiroz', '555-0176', 'uquiroz@email.com', 'Av. Nudo 582', 'ACTIVO', '2025-12-02 01:27:49'),
	(77, 'RFC077', 'Victoria Elvira Rangel', '555-0177', 'vrangel@email.com', 'Calle Amarra 693', 'ACTIVO', '2025-12-02 01:27:49'),
	(78, 'RFC078', 'Wilfredo Teodoro Rivas', '555-0178', 'wrivas@email.com', 'Blvd. Eslabón 714', 'ACTIVO', '2025-12-02 01:27:49'),
	(79, 'RFC079', 'Yesenia Dolores Rubio', '555-0179', 'yrubio@email.com', 'Av. Cadena 825', 'ACTIVO', '2025-12-02 01:27:49'),
	(80, 'RFC080', 'Zaira Guadalupe Salas', '555-0180', 'zsalas@email.com', 'Calle Eslora 936', 'ACTIVO', '2025-12-02 01:27:49');

-- Volcando estructura para tabla mini_bodegas.contratos
CREATE TABLE IF NOT EXISTS `contratos` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_bodega` int NOT NULL,
  `id_reserva` int DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` enum('ACTIVO','SUSPENDIDO','TERMINADO') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `motivo_terminacion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contrato`),
  KEY `id_reserva` (`id_reserva`),
  KEY `idx_estado` (`estado`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_bodega_activo` (`id_bodega`,`estado`),
  KEY `idx_fechas` (`fecha_inicio`,`fecha_fin`),
  CONSTRAINT `contratos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `contratos_ibfk_2` FOREIGN KEY (`id_bodega`) REFERENCES `bodegas` (`id_bodega`),
  CONSTRAINT `contratos_ibfk_3` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.contratos: ~25 rows (aproximadamente)
INSERT INTO `contratos` (`id_contrato`, `id_cliente`, `id_bodega`, `id_reserva`, `fecha_inicio`, `fecha_fin`, `estado`, `motivo_terminacion`, `observaciones`, `fecha_creacion`) VALUES
	(1, 1, 1, 1, '2024-01-05', '2025-12-02', 'TERMINADO', 'por puto', NULL, '2025-12-02 01:27:49'),
	(2, 2, 2, 2, '2024-01-06', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:50'),
	(3, 3, 3, 3, '2024-01-07', '2025-12-04', 'TERMINADO', 'me cael mal', NULL, '2025-12-02 01:27:50'),
	(4, 4, 4, 4, '2024-01-08', '2025-12-03', 'TERMINADO', 'Terminación de contrato', NULL, '2025-12-02 01:27:50'),
	(5, 5, 5, 5, '2024-01-10', NULL, 'SUSPENDIDO', NULL, NULL, '2025-12-02 01:27:50'),
	(6, 6, 6, 6, '2024-01-12', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:50'),
	(7, 7, 7, 7, '2024-01-15', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:50'),
	(8, 8, 8, 8, '2024-01-18', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:50'),
	(9, 9, 9, 9, '2024-01-20', '2025-12-04', 'TERMINADO', 'no pago', NULL, '2025-12-02 01:27:50'),
	(10, 10, 10, 10, '2024-01-22', '2025-12-03', 'TERMINADO', 'Terminación de contrato', NULL, '2025-12-02 01:27:50'),
	(11, 11, 31, 11, '2024-03-01', '2025-12-04', 'TERMINADO', 'pocoyo', NULL, '2025-12-02 01:27:50'),
	(12, 12, 32, 12, '2024-03-05', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:50'),
	(13, 13, 33, 13, '2024-03-10', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:51'),
	(14, 14, 34, 14, '2024-03-15', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:51'),
	(15, 15, 35, 15, '2024-03-20', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:27:51'),
	(16, 21, 62, 17, '2024-06-26', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 01:35:29'),
	(17, 21, 74, 20, '2025-12-02', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 10:31:49'),
	(18, 1, 1, 1, '2024-01-05', NULL, 'ACTIVO', NULL, NULL, '2025-12-02 11:13:30'),
	(19, 1, 10, 21, '2025-12-02', '2025-12-02', 'TERMINADO', 'se mudo del pais', NULL, '2025-12-02 11:53:41'),
	(20, 5, 63, 26, '2025-12-03', NULL, 'ACTIVO', NULL, NULL, '2025-12-03 16:44:22'),
	(21, 1, 21, 28, '2025-12-03', NULL, 'ACTIVO', NULL, NULL, '2025-12-03 16:54:53'),
	(22, 1, 61, 22, '2025-12-03', NULL, 'ACTIVO', NULL, NULL, '2025-12-03 17:16:10'),
	(23, 22, 22, 30, '2025-12-03', NULL, 'ACTIVO', NULL, NULL, '2025-12-03 17:17:45'),
	(24, 3, 10, 31, '2025-12-04', NULL, 'ACTIVO', NULL, NULL, '2025-12-04 11:16:35'),
	(25, 19, 75, 33, '2025-12-04', NULL, 'ACTIVO', NULL, NULL, '2025-12-04 11:52:08');

-- Volcando estructura para función mini_bodegas.fn_bodega_disponible
DELIMITER //
CREATE FUNCTION `fn_bodega_disponible`(
    p_id_bodega INT
) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_estado VARCHAR(20);
    DECLARE v_reservas_activas INT;
    
    SELECT estado INTO v_estado
    FROM bodegas
    WHERE id_bodega = p_id_bodega;
    
    IF v_estado != 'LIBRE' THEN
        RETURN FALSE;
    END IF;
    
    SELECT COUNT(*) INTO v_reservas_activas
    FROM reservas
    WHERE id_bodega = p_id_bodega
    AND estado = 'ACTIVA'
    AND fecha_expiracion > NOW();
    
    RETURN v_reservas_activas = 0;
END//
DELIMITER ;

-- Volcando estructura para función mini_bodegas.fn_calcular_renta_mensual
DELIMITER //
CREATE FUNCTION `fn_calcular_renta_mensual`(
    p_id_bodega INT,
    p_id_promocion INT,
    p_mes_numero INT
) RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_precio_base DECIMAL(10,2);
    DECLARE v_descuento DECIMAL(10,2) DEFAULT 0;
    DECLARE v_tipo_promo VARCHAR(20);
    DECLARE v_valor_promo DECIMAL(10,2);
    DECLARE v_condicion VARCHAR(100);
    
    -- Obtener precio base
    SELECT precio_base INTO v_precio_base
    FROM bodegas
    WHERE id_bodega = p_id_bodega;
    
    IF v_precio_base IS NULL THEN
        RETURN 0;
    END IF;
    
    -- Si hay promoción, calcular descuento
    IF p_id_promocion IS NOT NULL THEN
        SELECT tipo, valor, condicion 
        INTO v_tipo_promo, v_valor_promo, v_condicion
        FROM promociones
        WHERE id_promocion = p_id_promocion
        AND estado = 'ACTIVA'
        AND CURDATE() BETWEEN fecha_desde AND fecha_hasta;
        
        IF v_tipo_promo IS NOT NULL THEN
            -- Validar si aplica según condición
            IF v_condicion = 'PRIMER_MES' AND p_mes_numero = 1 THEN
                SET v_descuento = IF(v_tipo_promo = 'PORCENTAJE', 
                    v_precio_base * v_valor_promo / 100, 
                    v_valor_promo);
            ELSEIF v_condicion LIKE 'N_MESES:%' THEN
                SET @n_meses = CAST(SUBSTRING_INDEX(v_condicion, ':', -1) AS UNSIGNED);
                IF p_mes_numero <= @n_meses THEN
                    SET v_descuento = IF(v_tipo_promo = 'PORCENTAJE', 
                        v_precio_base * v_valor_promo / 100, 
                        v_valor_promo);
                END IF;
            ELSEIF v_condicion = 'TODAS' THEN
                SET v_descuento = IF(v_tipo_promo = 'PORCENTAJE', 
                    v_precio_base * v_valor_promo / 100, 
                    v_valor_promo);
            END IF;
        END IF;
    END IF;
    
    -- Evitar descuento mayor al precio
    IF v_descuento > v_precio_base THEN
        SET v_descuento = v_precio_base;
    END IF;
    
    RETURN v_precio_base - v_descuento;
END//
DELIMITER ;

-- Volcando estructura para función mini_bodegas.fn_contar_periodos_vencidos
DELIMITER //
CREATE FUNCTION `fn_contar_periodos_vencidos`(
    p_id_contrato INT
) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_vencidos INT DEFAULT 0;
    
    SELECT COUNT(*) INTO v_vencidos
    FROM cargos_mensuales
    WHERE id_contrato = p_id_contrato
    AND estado = 'VENCIDO';
    
    RETURN v_vencidos;
END//
DELIMITER ;

-- Volcando estructura para tabla mini_bodegas.movimientos_estado_contrato
CREATE TABLE IF NOT EXISTS `movimientos_estado_contrato` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_contrato` int NOT NULL,
  `estado_anterior` enum('ACTIVO','SUSPENDIDO','TERMINADO') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_nuevo` enum('ACTIVO','SUSPENDIDO','TERMINADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_movimiento`),
  KEY `idx_contrato` (`id_contrato`),
  KEY `idx_fecha` (`fecha`),
  CONSTRAINT `movimientos_estado_contrato_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contratos` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.movimientos_estado_contrato: ~39 rows (aproximadamente)
INSERT INTO `movimientos_estado_contrato` (`id_movimiento`, `id_contrato`, `estado_anterior`, `estado_nuevo`, `motivo`, `usuario`, `fecha`) VALUES
	(1, 1, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:49'),
	(2, 2, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(3, 3, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(4, 4, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(5, 5, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(6, 6, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(7, 7, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(8, 8, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(9, 9, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(10, 10, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(11, 5, 'ACTIVO', 'SUSPENDIDO', 'Morosidad automática: 2 periodos', 'SYSTEM', '2025-12-02 01:27:50'),
	(12, 9, 'ACTIVO', 'SUSPENDIDO', 'Morosidad automática: 2 periodos', 'SYSTEM', '2025-12-02 01:27:50'),
	(13, 11, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(14, 12, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:50'),
	(15, 13, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:51'),
	(16, 14, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:51'),
	(17, 15, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:27:51'),
	(18, 10, 'ACTIVO', 'TERMINADO', 'Cliente solicitó terminación anticipada', 'usuario_gerencia', '2025-12-02 01:27:51'),
	(19, 10, 'ACTIVO', 'SUSPENDIDO', 'Morosidad: 2 periodos vencidos', 'usuario_gerencia', '2025-12-02 01:34:43'),
	(20, 16, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 01:35:29'),
	(21, 17, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 10:31:49'),
	(22, 1, 'ACTIVO', 'TERMINADO', 'por puto', 'usuario_gerencia', '2025-12-02 10:39:42'),
	(23, 18, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 11:13:30'),
	(24, 19, NULL, 'ACTIVO', 'Creación de contrato', 'usuario_ventas', '2025-12-02 11:53:41'),
	(25, 19, 'ACTIVO', 'TERMINADO', 'se mudo del pais', 'usuario_gerencia', '2025-12-02 11:54:49'),
	(26, 20, NULL, 'ACTIVO', 'Creación de contrato', 'Ventas', '2025-12-03 16:44:22'),
	(27, 10, 'SUSPENDIDO', 'TERMINADO', 'Terminación de contrato', 'Ventas', '2025-12-03 16:44:55'),
	(28, 21, NULL, 'ACTIVO', 'Creación de contrato', 'Ventas', '2025-12-03 16:54:53'),
	(29, 22, NULL, 'ACTIVO', 'Creación de contrato', 'Ventas', '2025-12-03 17:16:10'),
	(30, 23, NULL, 'ACTIVO', 'Creación de contrato', 'Ventas', '2025-12-03 17:17:45'),
	(31, 4, 'ACTIVO', 'SUSPENDIDO', 'Morosidad automática: 2 periodos', 'SYSTEM', '2025-12-03 17:26:30'),
	(32, 4, 'SUSPENDIDO', 'TERMINADO', 'Terminación de contrato', 'Gerencia', '2025-12-03 17:28:01'),
	(33, 24, NULL, 'ACTIVO', 'Creación de contrato', 'Admin', '2025-12-04 11:16:35'),
	(34, 9, 'SUSPENDIDO', 'ACTIVO', 'Regularización de pagos', '9', '2025-12-04 11:29:36'),
	(35, 9, 'ACTIVO', 'SUSPENDIDO', 'Morosidad automática: 2 periodos', 'SYSTEM', '2025-12-04 11:30:09'),
	(36, 9, 'SUSPENDIDO', 'TERMINADO', 'no pago', 'Admin', '2025-12-04 11:31:22'),
	(37, 11, 'ACTIVO', 'TERMINADO', 'pocoyo', 'Gerencia', '2025-12-04 11:33:14'),
	(38, 25, NULL, 'ACTIVO', 'Creación de contrato', 'Ventas', '2025-12-04 11:52:08'),
	(39, 3, 'ACTIVO', 'TERMINADO', 'me cael mal', 'Gerencia', '2025-12-04 12:05:15');

-- Volcando estructura para tabla mini_bodegas.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_cargo` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` enum('EFECTIVO','TARJETA','TRANSFERENCIA','CHEQUE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_pago` datetime DEFAULT CURRENT_TIMESTAMP,
  `referencia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci,
  `usuario_registro` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `idx_fecha` (`fecha_pago`),
  KEY `idx_cargo` (`id_cargo`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargos_mensuales` (`id_cargo`),
  CONSTRAINT `chk_monto_pago` CHECK ((`monto` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.pagos: ~26 rows (aproximadamente)
INSERT INTO `pagos` (`id_pago`, `id_cargo`, `monto`, `metodo_pago`, `fecha_pago`, `referencia`, `observaciones`, `usuario_registro`) VALUES
	(1, 1, 640.00, 'TRANSFERENCIA', '2025-12-02 01:27:49', 'REF001', NULL, 'usuario_cobranza'),
	(2, 2, 720.00, 'EFECTIVO', '2025-12-02 01:27:50', 'REF002', NULL, 'usuario_cobranza'),
	(3, 3, 800.00, 'TARJETA', '2025-12-02 01:27:50', 'REF003', NULL, 'usuario_cobranza'),
	(4, 4, 960.00, 'TRANSFERENCIA', '2025-12-02 01:27:50', 'REF004', NULL, 'usuario_cobranza'),
	(5, 6, 1200.00, 'EFECTIVO', '2025-12-02 01:27:50', 'REF006', NULL, 'usuario_cobranza'),
	(6, 7, 1440.00, 'TARJETA', '2025-12-02 01:27:50', 'REF007', NULL, 'usuario_cobranza'),
	(7, 8, 1680.00, 'TRANSFERENCIA', '2025-12-02 01:27:50', 'REF008', NULL, 'usuario_cobranza'),
	(8, 10, 2320.00, 'EFECTIVO', '2025-12-02 01:27:50', 'REF010', NULL, 'usuario_cobranza'),
	(9, 11, 680.00, 'TRANSFERENCIA', '2025-12-02 01:27:50', 'REF101', NULL, 'usuario_cobranza'),
	(10, 12, 900.00, 'EFECTIVO', '2025-12-02 01:27:50', 'REF102', NULL, 'usuario_cobranza'),
	(11, 13, 1000.00, 'TARJETA', '2025-12-02 01:27:50', 'REF103', NULL, 'usuario_cobranza'),
	(12, 14, 1200.00, 'TRANSFERENCIA', '2025-12-02 01:27:50', 'REF104', NULL, 'usuario_cobranza'),
	(13, 21, 750.00, 'TRANSFERENCIA', '2025-12-02 01:27:50', 'REF201', NULL, 'usuario_cobranza'),
	(14, 22, 850.00, 'EFECTIVO', '2025-12-02 01:27:51', 'REF202', NULL, 'usuario_cobranza'),
	(15, 23, 950.00, 'TARJETA', '2025-12-02 01:27:51', 'REF203', NULL, 'usuario_cobranza'),
	(16, 24, 1150.00, 'TRANSFERENCIA', '2025-12-02 01:27:51', 'REF204', NULL, 'usuario_cobranza'),
	(17, 25, 1300.00, 'EFECTIVO', '2025-12-02 01:27:51', 'REF205', NULL, 'usuario_cobranza'),
	(18, 26, 800.00, 'TRANSFERENCIA', '2025-12-02 01:27:51', 'REF301', NULL, 'usuario_cobranza'),
	(19, 27, 900.00, 'EFECTIVO', '2025-12-02 01:27:51', 'REF302', NULL, 'usuario_cobranza'),
	(20, 28, 1000.00, 'TARJETA', '2025-12-02 01:27:51', 'REF303', NULL, 'usuario_cobranza'),
	(21, 68, 1912.50, 'EFECTIVO', '2025-12-03 17:24:20', '', NULL, 'Cobranza'),
	(22, 69, 1500.00, 'EFECTIVO', '2025-12-04 11:20:15', '', NULL, 'Admin'),
	(23, 69, 965.00, 'EFECTIVO', '2025-12-04 11:22:08', '', NULL, 'Admin'),
	(24, 70, 1000.00, 'TRANSFERENCIA', '2025-12-04 11:59:04', 'pago1', NULL, 'Cobranza'),
	(25, 70, 30.00, 'TRANSFERENCIA', '2025-12-04 11:59:54', 'pago2', NULL, 'Cobranza'),
	(26, 70, 20.00, 'EFECTIVO', '2025-12-04 12:00:16', 'pago3', NULL, 'Cobranza');

-- Volcando estructura para tabla mini_bodegas.promociones
CREATE TABLE IF NOT EXISTS `promociones` (
  `id_promocion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('PORCENTAJE','MONTO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date NOT NULL,
  `condicion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ej: PRIMER_MES, N_MESES:3, TODAS',
  `aplicable_a` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ej: TODAS, ID_BODEGA:123',
  `estado` enum('ACTIVA','INACTIVA') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVA',
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_promocion`),
  KEY `idx_vigencia` (`fecha_desde`,`fecha_hasta`),
  CONSTRAINT `chk_fechas_promo` CHECK ((`fecha_hasta` >= `fecha_desde`)),
  CONSTRAINT `chk_valor_promo` CHECK ((`valor` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.promociones: ~4 rows (aproximadamente)
INSERT INTO `promociones` (`id_promocion`, `nombre`, `tipo`, `valor`, `fecha_desde`, `fecha_hasta`, `condicion`, `aplicable_a`, `estado`, `fecha_creacion`) VALUES
	(1, 'Descuento Primer Mes 20%', 'PORCENTAJE', 20.00, '2024-01-01', '2025-12-31', 'PRIMER_MES', 'TODAS', 'ACTIVA', '2025-12-02 01:27:49'),
	(2, 'Promoción 3 Meses 15%', 'PORCENTAJE', 15.00, '2024-01-01', '2026-06-30', 'N_MESES:3', 'TODAS', 'ACTIVA', '2025-12-02 01:27:49'),
	(3, 'Descuento Fijo $200', 'MONTO', 200.00, '2024-06-01', '2026-12-31', 'TODAS', 'TODAS', 'ACTIVA', '2025-12-02 01:27:49'),
	(4, 'Promo Verano 10%', 'PORCENTAJE', 10.00, '2024-06-01', '2026-08-31', 'PRIMER_MES', 'TODAS', 'ACTIVA', '2025-12-02 01:27:49');

-- Volcando estructura para tabla mini_bodegas.reservas
CREATE TABLE IF NOT EXISTS `reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_bodega` int NOT NULL,
  `fecha_reserva` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_inicio_prevista` date NOT NULL,
  `fecha_expiracion` datetime NOT NULL,
  `estado` enum('ACTIVA','CONVERTIDA','EXPIRADA','CANCELADA') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVA',
  `observaciones` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id_reserva`),
  KEY `id_cliente` (`id_cliente`),
  KEY `idx_estado` (`estado`),
  KEY `idx_bodega_activa` (`id_bodega`,`estado`),
  KEY `idx_expiracion` (`fecha_expiracion`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_bodega`) REFERENCES `bodegas` (`id_bodega`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.reservas: ~35 rows (aproximadamente)
INSERT INTO `reservas` (`id_reserva`, `id_cliente`, `id_bodega`, `fecha_reserva`, `fecha_inicio_prevista`, `fecha_expiracion`, `estado`, `observaciones`) VALUES
	(1, 1, 1, '2025-12-02 01:27:49', '2024-01-05', '2025-12-04 01:27:49', 'CONVERTIDA', NULL),
	(2, 2, 2, '2025-12-02 01:27:50', '2024-01-06', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(3, 3, 3, '2025-12-02 01:27:50', '2024-01-07', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(4, 4, 4, '2025-12-02 01:27:50', '2024-01-08', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(5, 5, 5, '2025-12-02 01:27:50', '2024-01-10', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(6, 6, 6, '2025-12-02 01:27:50', '2024-01-12', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(7, 7, 7, '2025-12-02 01:27:50', '2024-01-15', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(8, 8, 8, '2025-12-02 01:27:50', '2024-01-18', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(9, 9, 9, '2025-12-02 01:27:50', '2024-01-20', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(10, 10, 10, '2025-12-02 01:27:50', '2024-01-22', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(11, 11, 31, '2025-12-02 01:27:50', '2024-03-01', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(12, 12, 32, '2025-12-02 01:27:50', '2024-03-05', '2025-12-04 01:27:50', 'CONVERTIDA', NULL),
	(13, 13, 33, '2025-12-02 01:27:51', '2024-03-10', '2025-12-04 01:27:51', 'CONVERTIDA', NULL),
	(14, 14, 34, '2025-12-02 01:27:51', '2024-03-15', '2025-12-04 01:27:51', 'CONVERTIDA', NULL),
	(15, 15, 35, '2025-12-02 01:27:51', '2024-03-20', '2025-12-04 01:27:51', 'CONVERTIDA', NULL),
	(16, 20, 61, '2025-12-02 01:27:51', '2024-06-25', '2025-12-04 01:27:51', 'CANCELADA', NULL),
	(17, 21, 62, '2025-12-02 01:27:51', '2024-06-26', '2025-12-04 01:27:51', 'CONVERTIDA', NULL),
	(18, 22, 63, '2025-12-02 01:27:51', '2024-06-27', '2025-12-04 01:27:51', 'CANCELADA', NULL),
	(19, 74, 74, '2025-12-02 01:28:32', '2025-12-02', '2025-12-04 01:28:32', 'CANCELADA', NULL),
	(20, 21, 74, '2025-12-02 10:30:46', '2025-12-02', '2025-12-04 10:30:46', 'CONVERTIDA', NULL),
	(21, 1, 10, '2025-12-02 11:53:08', '2025-12-02', '2025-12-04 11:53:08', 'CONVERTIDA', NULL),
	(22, 1, 61, '2025-12-03 16:25:12', '2025-12-03', '2025-12-05 16:25:12', 'CONVERTIDA', NULL),
	(23, 1, 81, '2025-12-03 16:36:31', '2025-12-03', '2025-12-05 16:36:31', 'CANCELADA', NULL),
	(24, 1, 86, '2025-12-03 16:39:30', '2025-12-03', '2025-12-05 16:39:30', 'CANCELADA', NULL),
	(25, 5, 75, '2025-12-03 16:40:34', '2025-12-03', '2025-12-05 16:40:34', 'CANCELADA', NULL),
	(26, 5, 63, '2025-12-03 16:41:11', '2025-12-03', '2025-12-05 16:41:11', 'CONVERTIDA', NULL),
	(27, 73, 73, '2025-12-03 16:43:25', '2025-12-03', '2025-12-05 16:43:25', 'CANCELADA', NULL),
	(28, 1, 21, '2025-12-03 16:54:23', '2025-12-03', '2025-12-05 16:54:23', 'CONVERTIDA', NULL),
	(29, 22, 22, '2025-12-03 17:15:46', '2025-12-03', '2025-12-05 17:15:46', 'CANCELADA', NULL),
	(30, 22, 22, '2025-12-03 17:16:03', '2025-12-03', '2025-12-05 17:16:03', 'CONVERTIDA', NULL),
	(31, 3, 10, '2025-12-04 11:16:05', '2025-12-04', '2025-12-06 11:16:05', 'CONVERTIDA', NULL),
	(32, 19, 86, '2025-12-04 11:41:27', '2025-12-04', '2025-12-06 11:41:27', 'EXPIRADA', 'lol'),
	(33, 19, 75, '2025-12-04 11:50:21', '2025-12-04', '2025-12-06 11:50:21', 'CONVERTIDA', NULL),
	(34, 1, 76, '2025-12-13 18:31:50', '2025-12-13', '2025-12-15 18:31:50', 'ACTIVA', NULL),
	(35, 1, 64, '2025-12-13 18:39:13', '2025-12-13', '2025-12-15 18:39:13', 'ACTIVA', NULL);

-- Volcando estructura para procedimiento mini_bodegas.sp_cancelar_reserva
DELIMITER //
CREATE PROCEDURE `sp_cancelar_reserva`(
    IN p_id_reserva INT,
    IN p_usuario VARCHAR(50),
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_estado_reserva VARCHAR(20);
    DECLARE v_id_bodega INT;
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al cancelar reserva';
        END IF;
    END;
    
    START TRANSACTION;
    
    SELECT estado, id_bodega INTO v_estado_reserva, v_id_bodega
    FROM reservas
    WHERE id_reserva = p_id_reserva
    FOR UPDATE;
    
    IF v_estado_reserva IS NULL THEN
        SET p_mensaje = 'Reserva no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_reserva != 'ACTIVA' THEN
        SET p_mensaje = CONCAT('Reserva no se puede cancelar, estado: ', v_estado_reserva);
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Cancelar reserva
    UPDATE reservas
    SET estado = 'CANCELADA'
    WHERE id_reserva = p_id_reserva;
    
    -- Liberar bodega
    UPDATE bodegas
    SET estado = 'LIBRE'
    WHERE id_bodega = v_id_bodega;
    
    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('reservas', p_id_reserva, 'UPDATE', p_usuario, 'Reserva cancelada');
    
    SET p_mensaje = 'Reserva cancelada exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_convertir_reserva_a_contrato
DELIMITER //
CREATE PROCEDURE `sp_convertir_reserva_a_contrato`(
    IN p_id_reserva INT,
    IN p_usuario VARCHAR(50),
    OUT p_id_contrato INT,
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_id_cliente INT;
    DECLARE v_id_bodega INT;
    DECLARE v_estado_reserva VARCHAR(20);
    DECLARE v_fecha_expiracion DATETIME;
    DECLARE v_fecha_inicio DATE;
    DECLARE v_estado_bodega VARCHAR(20);
    DECLARE v_contratos_activos INT;
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al convertir reserva';
        END IF;
    END;
    
    SET p_id_contrato = NULL;
    START TRANSACTION;
    
    -- Obtener datos de reserva con bloqueo
    SELECT id_cliente, id_bodega, estado, fecha_expiracion, fecha_inicio_prevista
    INTO v_id_cliente, v_id_bodega, v_estado_reserva, v_fecha_expiracion, v_fecha_inicio
    FROM reservas
    WHERE id_reserva = p_id_reserva
    FOR UPDATE;
    
    IF v_estado_reserva IS NULL THEN
        SET p_mensaje = 'Reserva no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_reserva != 'ACTIVA' THEN
        SET p_mensaje = CONCAT('Reserva no está activa, estado: ', v_estado_reserva);
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_fecha_expiracion < NOW() THEN
        SET p_mensaje = 'Reserva expirada';
        UPDATE reservas SET estado = 'EXPIRADA' WHERE id_reserva = p_id_reserva;
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Verificar que bodega esté reservada
    SELECT estado INTO v_estado_bodega
    FROM bodegas
    WHERE id_bodega = v_id_bodega
    FOR UPDATE;
    
    IF v_estado_bodega != 'RESERVADA' THEN
        SET p_mensaje = 'Bodega no está en estado RESERVADA';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Verificar que no haya otro contrato activo
    SELECT COUNT(*) INTO v_contratos_activos
    FROM contratos
    WHERE id_bodega = v_id_bodega
    AND estado = 'ACTIVO';
    
    IF v_contratos_activos > 0 THEN
        SET p_mensaje = 'Ya existe un contrato activo para esta bodega';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Crear contrato
    INSERT INTO contratos (id_cliente, id_bodega, id_reserva, fecha_inicio, estado)
    VALUES (v_id_cliente, v_id_bodega, p_id_reserva, v_fecha_inicio, 'ACTIVO');
    
    SET p_id_contrato = LAST_INSERT_ID();
    
    -- Actualizar reserva
    UPDATE reservas
    SET estado = 'CONVERTIDA'
    WHERE id_reserva = p_id_reserva;
    
    -- Actualizar bodega
    UPDATE bodegas
    SET estado = 'OCUPADA'
    WHERE id_bodega = v_id_bodega;
    
    -- Registrar movimiento de estado
    INSERT INTO movimientos_estado_contrato (id_contrato, estado_anterior, estado_nuevo, motivo, usuario)
    VALUES (p_id_contrato, NULL, 'ACTIVO', 'Creación de contrato', p_usuario);
    
    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('contratos', p_id_contrato, 'INSERT', p_usuario, 
            CONCAT('Contrato creado desde reserva ', p_id_reserva));
    
    SET p_mensaje = 'Contrato creado exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_evaluar_reactivacion
DELIMITER //
CREATE PROCEDURE `sp_evaluar_reactivacion`(
    IN p_id_contrato INT,
    IN p_usuario VARCHAR(50)
)
proc_label: BEGIN
    DECLARE v_periodos_vencidos INT;
    DECLARE v_estado_actual VARCHAR(20);
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    SELECT estado INTO v_estado_actual
    FROM contratos
    WHERE id_contrato = p_id_contrato
    FOR UPDATE;
    
    IF v_estado_actual != 'SUSPENDIDO' THEN
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    SET v_periodos_vencidos = fn_contar_periodos_vencidos(p_id_contrato);
    
    IF v_periodos_vencidos < 2 THEN
        -- Reactivar
        UPDATE contratos
        SET estado = 'ACTIVO'
        WHERE id_contrato = p_id_contrato;
        
        INSERT INTO movimientos_estado_contrato (
            id_contrato, estado_anterior, estado_nuevo, motivo, usuario
        )
        VALUES (
            p_id_contrato, 'SUSPENDIDO', 'ACTIVO',
            'Regularización de pagos', p_usuario
        );
        
        INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
        VALUES ('contratos', p_id_contrato, 'UPDATE', p_usuario,
                'Contrato reactivado');
    END IF;
    
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_generar_cargo_mensual
DELIMITER //
CREATE PROCEDURE `sp_generar_cargo_mensual`(
    IN p_id_contrato INT,
    IN p_periodo VARCHAR(7),
    IN p_id_promocion INT,
    IN p_usuario VARCHAR(50),
    OUT p_id_cargo INT,
    OUT p_mensaje VARCHAR(200)
)
sp_generar_cargo_mensual: BEGIN
    DECLARE v_existe_cargo INT;
    DECLARE v_estado_contrato VARCHAR(20);
    DECLARE v_id_bodega INT;
    DECLARE v_monto_base DECIMAL(10,2);
    DECLARE v_descuento DECIMAL(10,2) DEFAULT 0;
    DECLARE v_monto_final DECIMAL(10,2);
    DECLARE v_fecha_vencimiento DATE;
    DECLARE v_meses_contrato INT;
    DECLARE v_fecha_inicio DATE;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_mensaje = 'Error inesperado al generar cargo';
        SET p_id_cargo = NULL;
    END;

    -- Inicializar variables OUT
    SET p_id_cargo = NULL;
    SET p_mensaje = '';

    START TRANSACTION;

    -- Validar que no exista cargo para ese periodo
    SELECT COUNT(*) INTO v_existe_cargo
    FROM cargos_mensuales
    WHERE id_contrato = p_id_contrato
    AND periodo = p_periodo;

    IF v_existe_cargo > 0 THEN
        SET p_mensaje = 'Ya existe un cargo para este periodo';
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    -- Obtener datos del contrato
    SELECT c.estado, c.id_bodega, b.precio_base, c.fecha_inicio,
    TIMESTAMPDIFF(MONTH, c.fecha_inicio, CONCAT(p_periodo, '-01')) + 1
    INTO v_estado_contrato, v_id_bodega, v_monto_base, v_fecha_inicio, v_meses_contrato
    FROM contratos c
    INNER JOIN bodegas b ON c.id_bodega = b.id_bodega
    WHERE c.id_contrato = p_id_contrato
    FOR UPDATE;

    IF v_estado_contrato IS NULL THEN
        SET p_mensaje = 'El contrato no existe';
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    IF v_estado_contrato = 'TERMINADO' THEN
        SET p_mensaje = 'No se puede generar cargo para contrato terminado';
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    -- Validar que el periodo no sea muy antiguo (más de 3 meses atrás)
    IF CONCAT(p_periodo, '-01') < DATE_SUB(CURDATE(), INTERVAL 3 MONTH) THEN
        SET p_mensaje = CONCAT('No se pueden generar cargos de más de 3 meses atrás. Periodo: ', p_periodo);
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    -- ⭐ MODIFICADO: Permitir generar cargos del mes actual y del próximo mes
    IF CONCAT(p_periodo, '-01') > DATE_ADD(LAST_DAY(CURDATE()), INTERVAL 1 DAY) THEN
        SET p_mensaje = 'No se pueden generar cargos de más de un mes en el futuro';
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    -- Validar que el periodo no sea anterior a la fecha de inicio del contrato
    IF CONCAT(p_periodo, '-01') < v_fecha_inicio THEN
        SET p_mensaje = CONCAT('El periodo ', p_periodo, ' es anterior al inicio del contrato (', DATE_FORMAT(v_fecha_inicio, '%Y-%m'), ')');
        SET p_id_cargo = NULL;
        ROLLBACK;
        LEAVE sp_generar_cargo_mensual;
    END IF;

    -- Calcular monto con promoción
    SET v_monto_final = fn_calcular_renta_mensual(v_id_bodega, p_id_promocion, v_meses_contrato);
    SET v_descuento = v_monto_base - v_monto_final;

    -- Fecha de vencimiento: último día del mes
    SET v_fecha_vencimiento = LAST_DAY(CONCAT(p_periodo, '-01'));

    -- Crear cargo
    INSERT INTO cargos_mensuales (
        id_contrato, periodo, monto_base, descuento, monto_final,
        id_promocion, fecha_vencimiento, estado
    )
    VALUES (
        p_id_contrato, p_periodo, v_monto_base, v_descuento, v_monto_final,
        p_id_promocion, v_fecha_vencimiento, 'PENDIENTE'
    );

    SET p_id_cargo = LAST_INSERT_ID();

    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('cargos_mensuales', p_id_cargo, 'INSERT', p_usuario,
    CONCAT('Cargo generado para periodo ', p_periodo));

    SET p_mensaje = 'Cargo generado exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_registrar_pago
DELIMITER //
CREATE PROCEDURE `sp_registrar_pago`(
    IN p_id_cargo INT,
    IN p_monto DECIMAL(10,2),
    IN p_metodo_pago VARCHAR(20),
    IN p_referencia VARCHAR(100),
    IN p_usuario VARCHAR(50),
    OUT p_id_pago INT,
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_monto_final DECIMAL(10,2);
    DECLARE v_pagado DECIMAL(10,2) DEFAULT 0;
    DECLARE v_estado_cargo VARCHAR(20);
    DECLARE v_id_contrato INT;
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al registrar pago';
        END IF;
    END;
    
    SET p_id_pago = NULL;
    START TRANSACTION;
    
    -- Obtener datos del cargo
    SELECT monto_final, estado, id_contrato
    INTO v_monto_final, v_estado_cargo, v_id_contrato
    FROM cargos_mensuales
    WHERE id_cargo = p_id_cargo
    FOR UPDATE;
    
    IF v_monto_final IS NULL THEN
        SET p_mensaje = 'Cargo no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_cargo = 'PAGADO' THEN
        SET p_mensaje = 'El cargo ya está pagado';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_cargo = 'CONDONADO' THEN
        SET p_mensaje = 'El cargo está condonado';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Calcular total pagado
    SELECT COALESCE(SUM(monto), 0) INTO v_pagado
    FROM pagos
    WHERE id_cargo = p_id_cargo;
    
    -- Validar que no se pague de más
    IF (v_pagado + p_monto) > v_monto_final THEN
        SET p_mensaje = 'El monto excede el saldo pendiente';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Registrar pago
    INSERT INTO pagos (id_cargo, monto, metodo_pago, referencia, usuario_registro)
    VALUES (p_id_cargo, p_monto, p_metodo_pago, p_referencia, p_usuario);
    
    SET p_id_pago = LAST_INSERT_ID();
    
    -- Actualizar estado del cargo si está completamente pagado
    IF (v_pagado + p_monto) >= v_monto_final THEN
        UPDATE cargos_mensuales
        SET estado = 'PAGADO'
        WHERE id_cargo = p_id_cargo;
    END IF;
    
    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('pagos', p_id_pago, 'INSERT', p_usuario,
            CONCAT('Pago de $', p_monto, ' registrado'));
    
    SET p_mensaje = 'Pago registrado exitosamente';
    COMMIT;
    
    -- Evaluar reactivación (fuera de la transacción principal)
    CALL sp_evaluar_reactivacion(v_id_contrato, p_usuario);
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_reservar_bodega
DELIMITER //
CREATE PROCEDURE `sp_reservar_bodega`(
    IN p_id_cliente INT,
    IN p_id_bodega INT,
    IN p_fecha_inicio_prevista DATE,
    IN p_usuario VARCHAR(50),
    OUT p_id_reserva INT,
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_estado_bodega VARCHAR(20);
    DECLARE v_estado_cliente VARCHAR(20);
    DECLARE v_reservas_activas INT;
    DECLARE v_fecha_expiracion DATETIME;
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al procesar la reserva';
        END IF;
    END;
    
    SET p_id_reserva = NULL;
    START TRANSACTION;
    
    -- Validar cliente activo
    SELECT estado INTO v_estado_cliente
    FROM clientes
    WHERE id_cliente = p_id_cliente
    FOR UPDATE;
    
    IF v_estado_cliente IS NULL THEN
        SET p_mensaje = 'Cliente no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_cliente = 'INACTIVO' THEN
        SET p_mensaje = 'Cliente inactivo';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Validar bodega disponible (con bloqueo)
    SELECT estado INTO v_estado_bodega
    FROM bodegas
    WHERE id_bodega = p_id_bodega
    AND estado_operativo = 'ACTIVO'
    FOR UPDATE;
    
    IF v_estado_bodega IS NULL THEN
        SET p_mensaje = 'Bodega no existe o está inactiva';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_bodega != 'LIBRE' THEN
        SET p_mensaje = CONCAT('Bodega no disponible, estado: ', v_estado_bodega);
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Verificar que no haya otra reserva activa
    SELECT COUNT(*) INTO v_reservas_activas
    FROM reservas
    WHERE id_bodega = p_id_bodega
    AND estado = 'ACTIVA'
    AND fecha_expiracion > NOW();
    
    IF v_reservas_activas > 0 THEN
        SET p_mensaje = 'Ya existe una reserva activa para esta bodega';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Calcular fecha de expiración (48 horas)
    SET v_fecha_expiracion = DATE_ADD(NOW(), INTERVAL 48 HOUR);
    
    -- Crear reserva
    INSERT INTO reservas (id_cliente, id_bodega, fecha_inicio_prevista, fecha_expiracion, estado)
    VALUES (p_id_cliente, p_id_bodega, p_fecha_inicio_prevista, v_fecha_expiracion, 'ACTIVA');
    
    SET p_id_reserva = LAST_INSERT_ID();
    
    -- Actualizar estado de bodega
    UPDATE bodegas
    SET estado = 'RESERVADA'
    WHERE id_bodega = p_id_bodega;
    
    -- Registrar en bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('reservas', p_id_reserva, 'INSERT', p_usuario, 
            CONCAT('Reserva creada para bodega ', p_id_bodega));
    
    SET p_mensaje = 'Reserva creada exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_suspender_contrato
DELIMITER //
CREATE PROCEDURE `sp_suspender_contrato`(
    IN p_id_contrato INT,
    IN p_usuario VARCHAR(50),
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_periodos_vencidos INT;
    DECLARE v_estado_actual VARCHAR(20);
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al suspender contrato';
        END IF;
    END;
    
    START TRANSACTION;
    
    -- Obtener estado actual
    SELECT estado INTO v_estado_actual
    FROM contratos
    WHERE id_contrato = p_id_contrato
    FOR UPDATE;
    
    IF v_estado_actual IS NULL THEN
        SET p_mensaje = 'Contrato no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_actual = 'TERMINADO' THEN
        SET p_mensaje = 'Contrato terminado, no se puede suspender';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_actual = 'SUSPENDIDO' THEN
        SET p_mensaje = 'Contrato ya está suspendido';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Contar periodos vencidos
    SET v_periodos_vencidos = fn_contar_periodos_vencidos(p_id_contrato);
    
    IF v_periodos_vencidos < 2 THEN
        SET p_mensaje = CONCAT('No aplica suspensión, periodos vencidos: ', v_periodos_vencidos);
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Suspender contrato
    UPDATE contratos
    SET estado = 'SUSPENDIDO'
    WHERE id_contrato = p_id_contrato;
    
    -- Registrar movimiento
    INSERT INTO movimientos_estado_contrato (
        id_contrato, estado_anterior, estado_nuevo, motivo, usuario
    )
    VALUES (
        p_id_contrato, v_estado_actual, 'SUSPENDIDO', 
        CONCAT('Morosidad: ', v_periodos_vencidos, ' periodos vencidos'), 
        p_usuario
    );
    
    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('contratos', p_id_contrato, 'UPDATE', p_usuario,
            'Contrato suspendido por morosidad');
    
    SET p_mensaje = 'Contrato suspendido exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento mini_bodegas.sp_terminar_contrato
DELIMITER //
CREATE PROCEDURE `sp_terminar_contrato`(
    IN p_id_contrato INT,
    IN p_motivo VARCHAR(200),
    IN p_usuario VARCHAR(50),
    OUT p_mensaje VARCHAR(200)
)
proc_label: BEGIN
    DECLARE v_estado_actual VARCHAR(20);
    DECLARE v_id_bodega INT;
    DECLARE v_error INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET v_error = 1;
        ROLLBACK;
        IF p_mensaje IS NULL OR p_mensaje = '' THEN
            SET p_mensaje = 'Error al terminar contrato';
        END IF;
    END;
    
    START TRANSACTION;
    
    SELECT estado, id_bodega INTO v_estado_actual, v_id_bodega
    FROM contratos
    WHERE id_contrato = p_id_contrato
    FOR UPDATE;
    
    IF v_estado_actual IS NULL THEN
        SET p_mensaje = 'Contrato no existe';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    IF v_estado_actual = 'TERMINADO' THEN
        SET p_mensaje = 'Contrato ya está terminado';
        ROLLBACK;
        LEAVE proc_label;
    END IF;
    
    -- Terminar contrato
    UPDATE contratos
    SET estado = 'TERMINADO',
        fecha_fin = CURDATE(),
        motivo_terminacion = p_motivo
    WHERE id_contrato = p_id_contrato;
    
    -- Liberar bodega
    UPDATE bodegas
    SET estado = 'LIBRE'
    WHERE id_bodega = v_id_bodega;
    
    -- Registrar movimiento
    INSERT INTO movimientos_estado_contrato (
        id_contrato, estado_anterior, estado_nuevo, motivo, usuario
    )
    VALUES (p_id_contrato, v_estado_actual, 'TERMINADO', p_motivo, p_usuario);
    
    -- Bitácora
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('contratos', p_id_contrato, 'UPDATE', p_usuario,
            CONCAT('Contrato terminado: ', p_motivo));
    
    SET p_mensaje = 'Contrato terminado exitosamente';
    COMMIT;
END//
DELIMITER ;

-- Volcando estructura para tabla mini_bodegas.usuarios_sistema
CREATE TABLE IF NOT EXISTS `usuarios_sistema` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` enum('ventas','cobranza','gerencia','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_rol` (`rol`),
  KEY `idx_estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mini_bodegas.usuarios_sistema: ~0 rows (aproximadamente)

-- Volcando estructura para vista mini_bodegas.vw_bodegas_disponibles
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_bodegas_disponibles` (
	`id_bodega` INT NOT NULL,
	`codigo` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tamano_m2` DECIMAL(6,2) NOT NULL,
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`precio_base` DECIMAL(10,2) NOT NULL,
	`estado` ENUM('LIBRE','RESERVADA','OCUPADA','MANTENIMIENTO') NULL COLLATE 'utf8mb4_unicode_ci',
	`estado_operativo` ENUM('ACTIVO','INACTIVO') NULL COLLATE 'utf8mb4_unicode_ci',
	`categoria_tamano` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
);

-- Volcando estructura para vista mini_bodegas.vw_bodegas_ocupadas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_bodegas_ocupadas` (
	`id_bodega` INT NOT NULL,
	`codigo_bodega` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tamano_m2` DECIMAL(6,2) NOT NULL,
	`precio_base` DECIMAL(10,2) NOT NULL,
	`id_contrato` INT NOT NULL,
	`fecha_inicio` DATE NOT NULL,
	`estado_contrato` ENUM('ACTIVO','SUSPENDIDO','TERMINADO') NULL COLLATE 'utf8mb4_unicode_ci',
	`id_cliente` INT NOT NULL,
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`telefono` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`meses_ocupacion` BIGINT NULL
);

-- Volcando estructura para vista mini_bodegas.vw_cartera_vencida
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_cartera_vencida` (
	`id_contrato` INT NOT NULL,
	`estado_contrato` ENUM('ACTIVO','SUSPENDIDO','TERMINADO') NULL COLLATE 'utf8mb4_unicode_ci',
	`id_cliente` INT NOT NULL,
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`telefono` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`codigo_bodega` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`periodos_vencidos` BIGINT NOT NULL,
	`total_adeudado` DECIMAL(32,2) NULL,
	`fecha_vencimiento_mas_antigua` DATE NULL,
	`dias_atraso_maximo` INT NULL,
	`periodos` TEXT NULL COLLATE 'utf8mb4_unicode_ci'
);

-- Volcando estructura para vista mini_bodegas.vw_contratos_activos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_contratos_activos` (
	`id_contrato` INT NOT NULL,
	`fecha_inicio` DATE NOT NULL,
	`meses_vigencia` BIGINT NULL,
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`telefono` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`codigo_bodega` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tamano_m2` DECIMAL(6,2) NOT NULL,
	`precio_base` DECIMAL(10,2) NOT NULL,
	`estado` ENUM('ACTIVO','SUSPENDIDO','TERMINADO') NULL COLLATE 'utf8mb4_unicode_ci',
	`total_cargos` BIGINT NOT NULL,
	`cargos_vencidos` DECIMAL(23,0) NULL,
	`total_pagado` DECIMAL(32,2) NULL
);

-- Volcando estructura para vista mini_bodegas.vw_historial_contrato
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_historial_contrato` (
	`id_contrato` INT NOT NULL,
	`tipo_evento` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`fecha` DATETIME NULL,
	`descripcion` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`monto` DECIMAL(10,2) NULL,
	`usuario` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci'
);

-- Volcando estructura para vista mini_bodegas.vw_ingresos_por_periodo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_ingresos_por_periodo` (
	`periodo` VARCHAR(1) NOT NULL COMMENT 'Formato YYYY-MM' COLLATE 'utf8mb4_unicode_ci',
	`contratos_facturados` BIGINT NOT NULL,
	`total_facturado` DECIMAL(32,2) NULL,
	`total_cobrado` DECIMAL(32,2) NULL,
	`total_pendiente` DECIMAL(32,2) NULL,
	`total_vencido` DECIMAL(32,2) NULL,
	`porcentaje_cobranza` DECIMAL(38,2) NULL
);

-- Volcando estructura para vista mini_bodegas.vw_ocupacion_por_tamano
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_ocupacion_por_tamano` (
	`categoria` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total` BIGINT NOT NULL,
	`libres` DECIMAL(23,0) NULL,
	`ocupadas` DECIMAL(23,0) NULL,
	`porc_ocupacion` DECIMAL(29,2) NULL,
	`precio_promedio` DECIMAL(11,2) NULL
);

-- Volcando estructura para vista mini_bodegas.vw_ocupacion_por_ubicacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_ocupacion_por_ubicacion` (
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`total` BIGINT NOT NULL,
	`libres` DECIMAL(23,0) NULL,
	`ocupadas` DECIMAL(23,0) NULL,
	`reservadas` DECIMAL(23,0) NULL,
	`porc_ocupacion` DECIMAL(29,2) NULL
);

-- Volcando estructura para vista mini_bodegas.vw_reporte_ocupacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_reporte_ocupacion` (
	`total_bodegas` BIGINT NOT NULL,
	`bodegas_libres` DECIMAL(23,0) NULL,
	`bodegas_reservadas` DECIMAL(23,0) NULL,
	`bodegas_ocupadas` DECIMAL(23,0) NULL,
	`bodegas_mantenimiento` DECIMAL(23,0) NULL,
	`porcentaje_ocupacion` DECIMAL(29,2) NULL,
	`porcentaje_disponible` DECIMAL(29,2) NULL
);

-- Volcando estructura para vista mini_bodegas.vw_reservas_pendientes
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vw_reservas_pendientes` (
	`id_reserva` INT NOT NULL,
	`fecha_reserva` DATETIME NULL,
	`fecha_inicio_prevista` DATE NOT NULL,
	`fecha_expiracion` DATETIME NOT NULL,
	`horas_restantes` BIGINT NULL,
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`telefono` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`codigo_bodega` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ubicacion` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tamano_m2` DECIMAL(6,2) NOT NULL,
	`precio_base` DECIMAL(10,2) NOT NULL
);

-- Volcando estructura para disparador mini_bodegas.trg_bitacora_bodegas_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bitacora_bodegas_update` AFTER UPDATE ON `bodegas` FOR EACH ROW BEGIN
    IF OLD.estado != NEW.estado THEN
        INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
        VALUES ('bodegas', NEW.id_bodega, 'UPDATE', USER(),
                CONCAT('Estado bodega: ', OLD.estado, ' -> ', NEW.estado));
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_bitacora_cargos_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bitacora_cargos_update` AFTER UPDATE ON `cargos_mensuales` FOR EACH ROW BEGIN
    IF OLD.estado != NEW.estado THEN
        INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
        VALUES ('cargos_mensuales', NEW.id_cargo, 'UPDATE', USER(),
                CONCAT('Estado cargo: ', OLD.estado, ' -> ', NEW.estado));
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_bitacora_contratos_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bitacora_contratos_insert` AFTER INSERT ON `contratos` FOR EACH ROW BEGIN
    INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
    VALUES ('contratos', NEW.id_contrato, 'INSERT', USER(),
            CONCAT('Contrato creado para cliente ', NEW.id_cliente));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_bitacora_contratos_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bitacora_contratos_update` AFTER UPDATE ON `contratos` FOR EACH ROW BEGIN
    IF OLD.estado != NEW.estado THEN
        INSERT INTO bitacora (tabla, id_registro, operacion, usuario, detalle)
        VALUES ('contratos', NEW.id_contrato, 'UPDATE', USER(),
                CONCAT('Estado cambiado: ', OLD.estado, ' -> ', NEW.estado));
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_bodegas_validar_estados
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bodegas_validar_estados` BEFORE UPDATE ON `bodegas` FOR EACH ROW BEGIN
    DECLARE v_contratos_activos INT;
    
    -- Si se intenta poner OCUPADA, validar que haya contrato activo
    IF NEW.estado = 'OCUPADA' AND OLD.estado != 'OCUPADA' THEN
        SELECT COUNT(*) INTO v_contratos_activos
        FROM contratos
        WHERE id_bodega = NEW.id_bodega
        AND estado = 'ACTIVO';
        
        IF v_contratos_activos = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede poner bodega OCUPADA sin contrato ACTIVO';
        END IF;
    END IF;
    
    -- No permitir cambio directo de OCUPADA a RESERVADA
    IF OLD.estado = 'OCUPADA' AND NEW.estado = 'RESERVADA' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transición inválida: OCUPADA -> RESERVADA';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_cargos_actualizar_vencidos
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_cargos_actualizar_vencidos` BEFORE UPDATE ON `cargos_mensuales` FOR EACH ROW BEGIN
    IF NEW.estado = 'PENDIENTE' AND NEW.fecha_vencimiento < CURDATE() THEN
        SET NEW.estado = 'VENCIDO';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_cargos_evaluar_morosidad
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_cargos_evaluar_morosidad` AFTER UPDATE ON `cargos_mensuales` FOR EACH ROW BEGIN
    DECLARE v_periodos_vencidos INT;
    DECLARE v_estado_contrato VARCHAR(20);
    
    -- Solo evaluar si cambió el estado
    IF OLD.estado != NEW.estado THEN
        SELECT estado INTO v_estado_contrato
        FROM contratos
        WHERE id_contrato = NEW.id_contrato;
        
        -- Contar periodos vencidos
        SELECT COUNT(*) INTO v_periodos_vencidos
        FROM cargos_mensuales
        WHERE id_contrato = NEW.id_contrato
        AND estado = 'VENCIDO';
        
        -- Si tiene 2 o más vencidos y está activo, suspender
        IF v_periodos_vencidos >= 2 AND v_estado_contrato = 'ACTIVO' THEN
            UPDATE contratos
            SET estado = 'SUSPENDIDO'
            WHERE id_contrato = NEW.id_contrato;
            
            INSERT INTO movimientos_estado_contrato (
                id_contrato, estado_anterior, estado_nuevo, motivo, usuario
            )
            VALUES (
                NEW.id_contrato, 'ACTIVO', 'SUSPENDIDO',
                CONCAT('Morosidad automática: ', v_periodos_vencidos, ' periodos'),
                'SYSTEM'
            );
        END IF;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_contratos_unicidad_activo
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_contratos_unicidad_activo` BEFORE INSERT ON `contratos` FOR EACH ROW BEGIN
    DECLARE v_contratos_activos INT;
    
    IF NEW.estado = 'ACTIVO' THEN
        SELECT COUNT(*) INTO v_contratos_activos
        FROM contratos
        WHERE id_bodega = NEW.id_bodega
        AND estado = 'ACTIVO';
        
        IF v_contratos_activos > 0 THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Ya existe un contrato ACTIVO para esta bodega';
        END IF;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_contratos_unicidad_activo_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_contratos_unicidad_activo_update` BEFORE UPDATE ON `contratos` FOR EACH ROW BEGIN
    DECLARE v_contratos_activos INT;
    
    IF NEW.estado = 'ACTIVO' AND OLD.estado != 'ACTIVO' THEN
        SELECT COUNT(*) INTO v_contratos_activos
        FROM contratos
        WHERE id_bodega = NEW.id_bodega
        AND estado = 'ACTIVO'
        AND id_contrato != NEW.id_contrato;
        
        IF v_contratos_activos > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe un contrato ACTIVO para esta bodega';
        END IF;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_pagos_validar_monto
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_pagos_validar_monto` BEFORE INSERT ON `pagos` FOR EACH ROW BEGIN
    DECLARE v_monto_final DECIMAL(10,2);
    DECLARE v_total_pagado DECIMAL(10,2);
    
    SELECT monto_final INTO v_monto_final
    FROM cargos_mensuales
    WHERE id_cargo = NEW.id_cargo;
    
    SELECT COALESCE(SUM(monto), 0) INTO v_total_pagado
    FROM pagos
    WHERE id_cargo = NEW.id_cargo;
    
    IF (v_total_pagado + NEW.monto) > v_monto_final THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El monto del pago excede el saldo pendiente del cargo';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_reservas_no_duplicadas
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_reservas_no_duplicadas` BEFORE INSERT ON `reservas` FOR EACH ROW BEGIN
    DECLARE v_reservas_activas INT;
    
    IF NEW.estado = 'ACTIVA' THEN
        SELECT COUNT(*) INTO v_reservas_activas
        FROM reservas
        WHERE id_bodega = NEW.id_bodega
        AND estado = 'ACTIVA'
        AND fecha_expiracion > NOW();
        
        IF v_reservas_activas > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe una reserva ACTIVA para esta bodega';
        END IF;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador mini_bodegas.trg_reservas_verificar_expiracion
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_reservas_verificar_expiracion` BEFORE UPDATE ON `reservas` FOR EACH ROW BEGIN
    IF NEW.estado = 'ACTIVA' AND NEW.fecha_expiracion < NOW() THEN
        SET NEW.estado = 'EXPIRADA';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_bodegas_disponibles`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_bodegas_disponibles` AS select `b`.`id_bodega` AS `id_bodega`,`b`.`codigo` AS `codigo`,`b`.`tamano_m2` AS `tamano_m2`,`b`.`ubicacion` AS `ubicacion`,`b`.`precio_base` AS `precio_base`,`b`.`estado` AS `estado`,`b`.`estado_operativo` AS `estado_operativo`,(case when (`b`.`tamano_m2` <= 5) then 'PEQUEÑA' when (`b`.`tamano_m2` <= 15) then 'MEDIANA' else 'GRANDE' end) AS `categoria_tamano` from `bodegas` `b` where ((`b`.`estado` = 'LIBRE') and (`b`.`estado_operativo` = 'ACTIVO')) order by `b`.`ubicacion`,`b`.`tamano_m2`
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_bodegas_ocupadas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_bodegas_ocupadas` AS select `b`.`id_bodega` AS `id_bodega`,`b`.`codigo` AS `codigo_bodega`,`b`.`ubicacion` AS `ubicacion`,`b`.`tamano_m2` AS `tamano_m2`,`b`.`precio_base` AS `precio_base`,`c`.`id_contrato` AS `id_contrato`,`c`.`fecha_inicio` AS `fecha_inicio`,`c`.`estado` AS `estado_contrato`,`cl`.`id_cliente` AS `id_cliente`,`cl`.`nombre_completo` AS `cliente`,`cl`.`telefono` AS `telefono`,timestampdiff(MONTH,`c`.`fecha_inicio`,curdate()) AS `meses_ocupacion` from ((`bodegas` `b` join `contratos` `c` on((`b`.`id_bodega` = `c`.`id_bodega`))) join `clientes` `cl` on((`c`.`id_cliente` = `cl`.`id_cliente`))) where ((`b`.`estado` = 'OCUPADA') and (`c`.`estado` in ('ACTIVO','SUSPENDIDO'))) order by `b`.`ubicacion`,`b`.`codigo`
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_cartera_vencida`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_cartera_vencida` AS select `c`.`id_contrato` AS `id_contrato`,`c`.`estado` AS `estado_contrato`,`cl`.`id_cliente` AS `id_cliente`,`cl`.`nombre_completo` AS `cliente`,`cl`.`telefono` AS `telefono`,`cl`.`email` AS `email`,`b`.`codigo` AS `codigo_bodega`,`b`.`ubicacion` AS `ubicacion`,count(`cm`.`id_cargo`) AS `periodos_vencidos`,sum(`cm`.`monto_final`) AS `total_adeudado`,min(`cm`.`fecha_vencimiento`) AS `fecha_vencimiento_mas_antigua`,(to_days(curdate()) - to_days(min(`cm`.`fecha_vencimiento`))) AS `dias_atraso_maximo`,group_concat(`cm`.`periodo` order by `cm`.`periodo` ASC separator ', ') AS `periodos` from (((`contratos` `c` join `clientes` `cl` on((`c`.`id_cliente` = `cl`.`id_cliente`))) join `bodegas` `b` on((`c`.`id_bodega` = `b`.`id_bodega`))) join `cargos_mensuales` `cm` on((`c`.`id_contrato` = `cm`.`id_contrato`))) where (`cm`.`estado` = 'VENCIDO') group by `c`.`id_contrato`,`c`.`estado`,`cl`.`id_cliente`,`cl`.`nombre_completo`,`cl`.`telefono`,`cl`.`email`,`b`.`codigo`,`b`.`ubicacion` order by `dias_atraso_maximo` desc,`total_adeudado` desc
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_contratos_activos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_contratos_activos` AS select `c`.`id_contrato` AS `id_contrato`,`c`.`fecha_inicio` AS `fecha_inicio`,timestampdiff(MONTH,`c`.`fecha_inicio`,curdate()) AS `meses_vigencia`,`cl`.`nombre_completo` AS `cliente`,`cl`.`telefono` AS `telefono`,`cl`.`email` AS `email`,`b`.`codigo` AS `codigo_bodega`,`b`.`ubicacion` AS `ubicacion`,`b`.`tamano_m2` AS `tamano_m2`,`b`.`precio_base` AS `precio_base`,`c`.`estado` AS `estado`,count(`cm`.`id_cargo`) AS `total_cargos`,sum((case when (`cm`.`estado` = 'VENCIDO') then 1 else 0 end)) AS `cargos_vencidos`,sum((case when (`cm`.`estado` = 'PAGADO') then `cm`.`monto_final` else 0 end)) AS `total_pagado` from (((`contratos` `c` join `clientes` `cl` on((`c`.`id_cliente` = `cl`.`id_cliente`))) join `bodegas` `b` on((`c`.`id_bodega` = `b`.`id_bodega`))) left join `cargos_mensuales` `cm` on((`c`.`id_contrato` = `cm`.`id_contrato`))) where (`c`.`estado` in ('ACTIVO','SUSPENDIDO')) group by `c`.`id_contrato`,`c`.`fecha_inicio`,`cl`.`nombre_completo`,`cl`.`telefono`,`cl`.`email`,`b`.`codigo`,`b`.`ubicacion`,`b`.`tamano_m2`,`b`.`precio_base`,`c`.`estado` order by `c`.`fecha_inicio` desc
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_historial_contrato`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_historial_contrato` AS select `c`.`id_contrato` AS `id_contrato`,'CONTRATO' AS `tipo_evento`,`c`.`fecha_inicio` AS `fecha`,concat('Creación - Estado: ',`c`.`estado`) AS `descripcion`,NULL AS `monto`,'SYSTEM' AS `usuario` from `contratos` `c` union all select `mc`.`id_contrato` AS `id_contrato`,'MOVIMIENTO_ESTADO' AS `tipo_evento`,`mc`.`fecha` AS `fecha`,concat('Cambio estado: ',`mc`.`estado_anterior`,' -> ',`mc`.`estado_nuevo`,if((`mc`.`motivo` is not null),concat(' (',`mc`.`motivo`,')'),'')) AS `descripcion`,NULL AS `monto`,`mc`.`usuario` AS `usuario` from `movimientos_estado_contrato` `mc` union all select `cm`.`id_contrato` AS `id_contrato`,'CARGO' AS `tipo_evento`,`cm`.`fecha_creacion` AS `fecha`,concat('Cargo generado - Periodo: ',`cm`.`periodo`,' - Estado: ',`cm`.`estado`) AS `descripcion`,`cm`.`monto_final` AS `monto`,'SYSTEM' AS `usuario` from `cargos_mensuales` `cm` union all select `cm`.`id_contrato` AS `id_contrato`,'PAGO' AS `tipo_evento`,`p`.`fecha_pago` AS `fecha`,concat('Pago recibido - Método: ',`p`.`metodo_pago`,if((`p`.`referencia` is not null),concat(' - Ref: ',`p`.`referencia`),'')) AS `descripcion`,`p`.`monto` AS `monto`,coalesce(`p`.`usuario_registro`,'SYSTEM') AS `usuario` from (`pagos` `p` join `cargos_mensuales` `cm` on((`p`.`id_cargo` = `cm`.`id_cargo`))) order by `id_contrato`,`fecha`
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_ingresos_por_periodo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_ingresos_por_periodo` AS select `cm`.`periodo` AS `periodo`,count(distinct `cm`.`id_contrato`) AS `contratos_facturados`,sum(`cm`.`monto_final`) AS `total_facturado`,sum((case when (`cm`.`estado` = 'PAGADO') then `cm`.`monto_final` else 0 end)) AS `total_cobrado`,sum((case when (`cm`.`estado` = 'PENDIENTE') then `cm`.`monto_final` else 0 end)) AS `total_pendiente`,sum((case when (`cm`.`estado` = 'VENCIDO') then `cm`.`monto_final` else 0 end)) AS `total_vencido`,round(((sum((case when (`cm`.`estado` = 'PAGADO') then `cm`.`monto_final` else 0 end)) * 100.0) / nullif(sum(`cm`.`monto_final`),0)),2) AS `porcentaje_cobranza` from `cargos_mensuales` `cm` group by `cm`.`periodo` order by `cm`.`periodo` desc
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_ocupacion_por_tamano`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_ocupacion_por_tamano` AS select (case when (`bodegas`.`tamano_m2` <= 5) then 'PEQUEÑA (≤5m²)' when (`bodegas`.`tamano_m2` <= 15) then 'MEDIANA (6-15m²)' else 'GRANDE (>15m²)' end) AS `categoria`,count(0) AS `total`,sum((case when (`bodegas`.`estado` = 'LIBRE') then 1 else 0 end)) AS `libres`,sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) AS `ocupadas`,round(((sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) * 100.0) / count(0)),2) AS `porc_ocupacion`,round(avg(`bodegas`.`precio_base`),2) AS `precio_promedio` from `bodegas` where (`bodegas`.`estado_operativo` = 'ACTIVO') group by `categoria` order by (case when (`bodegas`.`tamano_m2` <= 5) then 1 when (`bodegas`.`tamano_m2` <= 15) then 2 else 3 end)
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_ocupacion_por_ubicacion`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_ocupacion_por_ubicacion` AS select `bodegas`.`ubicacion` AS `ubicacion`,count(0) AS `total`,sum((case when (`bodegas`.`estado` = 'LIBRE') then 1 else 0 end)) AS `libres`,sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) AS `ocupadas`,sum((case when (`bodegas`.`estado` = 'RESERVADA') then 1 else 0 end)) AS `reservadas`,round(((sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) * 100.0) / count(0)),2) AS `porc_ocupacion` from `bodegas` where (`bodegas`.`estado_operativo` = 'ACTIVO') group by `bodegas`.`ubicacion` order by `bodegas`.`ubicacion`
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_reporte_ocupacion`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reporte_ocupacion` AS select count(0) AS `total_bodegas`,sum((case when (`bodegas`.`estado` = 'LIBRE') then 1 else 0 end)) AS `bodegas_libres`,sum((case when (`bodegas`.`estado` = 'RESERVADA') then 1 else 0 end)) AS `bodegas_reservadas`,sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) AS `bodegas_ocupadas`,sum((case when (`bodegas`.`estado` = 'MANTENIMIENTO') then 1 else 0 end)) AS `bodegas_mantenimiento`,round(((sum((case when (`bodegas`.`estado` = 'OCUPADA') then 1 else 0 end)) * 100.0) / count(0)),2) AS `porcentaje_ocupacion`,round(((sum((case when (`bodegas`.`estado` = 'LIBRE') then 1 else 0 end)) * 100.0) / count(0)),2) AS `porcentaje_disponible` from `bodegas` where (`bodegas`.`estado_operativo` = 'ACTIVO')
;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vw_reservas_pendientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_reservas_pendientes` AS select `r`.`id_reserva` AS `id_reserva`,`r`.`fecha_reserva` AS `fecha_reserva`,`r`.`fecha_inicio_prevista` AS `fecha_inicio_prevista`,`r`.`fecha_expiracion` AS `fecha_expiracion`,timestampdiff(HOUR,now(),`r`.`fecha_expiracion`) AS `horas_restantes`,`cl`.`nombre_completo` AS `cliente`,`cl`.`telefono` AS `telefono`,`b`.`codigo` AS `codigo_bodega`,`b`.`ubicacion` AS `ubicacion`,`b`.`tamano_m2` AS `tamano_m2`,`b`.`precio_base` AS `precio_base` from ((`reservas` `r` join `clientes` `cl` on((`r`.`id_cliente` = `cl`.`id_cliente`))) join `bodegas` `b` on((`r`.`id_bodega` = `b`.`id_bodega`))) where ((`r`.`estado` = 'ACTIVA') and (`r`.`fecha_expiracion` > now())) order by `r`.`fecha_expiracion`
;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
