-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2025 a las 01:49:28
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
-- Base de datos: `flotillainterna`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `nombre_area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `id_direccion`, `nombre_area`) VALUES
(1, 1, 'SIN ASIGNAR'),
(2, 2, 'COMERCIAL / VEHICULOS ELECTRICOS'),
(3, 3, 'COMERCIAL / VEHICULOS ELECTRICOS'),
(4, 4, 'BUSES'),
(5, 4, 'COMERCIAL'),
(6, 4, 'LIGHT & MEDIUM DUTY'),
(7, 4, 'SIN ASIGNAR'),
(8, 4, 'VANS Y PICKUP´S'),
(9, 4, 'BUSES'),
(10, 4, 'CARGA'),
(11, 5, 'SIN ASIGNAR'),
(12, 6, 'SIN ASIGNAR'),
(13, 7, 'CONSEJO'),
(14, 8, 'DESARROLLO DE DISTRIBUIDORES'),
(15, 35, 'PLAN PISO'),
(16, 8, 'SIN ASIGNAR'),
(17, 9, 'DIRECCION'),
(18, 10, 'SIN ASIGNAR'),
(19, 11, 'MARKETING'),
(20, 12, 'ALMACEN'),
(21, 12, 'COMPRAS'),
(22, 12, 'DETALLADO Y PINTURA'),
(23, 12, 'ENTREGAS'),
(24, 12, 'MANEJO DE MATERIALES'),
(25, 12, 'MANTENIMIENTO'),
(26, 12, 'MANUFACTURA'),
(27, 12, 'PRODUCCION'),
(28, 12, 'REPARACIONES'),
(29, 12, 'SEGURIDAD E HIGIENE'),
(30, 12, 'SISTEMA DE GESTION DE CALIDAD'),
(31, 12, 'SOPORTE TECNICO'),
(32, 12, 'MANTENIMIENTO'),
(33, 13, 'SIN ASIGNAR'),
(34, 14, 'SIN ASIGNAR'),
(35, 15, 'SIN ASIGNAR'),
(36, 16, 'SIN ASIGNAR'),
(37, 17, 'SIN ASIGNAR'),
(38, 18, 'SIN ASIGNAR'),
(39, 19, 'SIN ASIGNAR'),
(40, 20, 'SIN ASIGNAR'),
(41, 21, 'COMERCIAL'),
(42, 21, 'DETALLADO Y PINTURA'),
(43, 21, 'ENTREGAS'),
(44, 21, 'MANEJO DE MATERIALES'),
(45, 21, 'MANTENIMIENTO'),
(46, 21, 'MANUFACTURA'),
(47, 21, 'PLANTA / MANEJO DE MATERIALES'),
(48, 21, 'PLANTA / PRODUCCION'),
(49, 21, 'PLANTA / REPARACIONES'),
(50, 21, 'POSVENTA'),
(51, 21, 'PRODUCCION'),
(52, 21, 'REFACCIONES'),
(53, 48, 'VENTAS GOBIERNO'),
(54, 23, 'COMERCIAL'),
(55, 24, 'COMERCIAL'),
(56, 24, 'DIRECCION'),
(57, 25, 'MANTENIMIENTO'),
(58, 26, 'COMERCIAL'),
(59, 26, 'SIN ASIGNAR'),
(60, 27, 'DESARROLLO DE DISTRIBUIDORES'),
(61, 27, 'SIN ASIGNAR'),
(62, 28, 'DIRECCION'),
(63, 28, 'SIN ASIGNAR'),
(64, 29, 'MARKETING'),
(65, 30, 'COMERCIAL'),
(66, 30, 'DESARROLLO DE DISTRIBUIDORES'),
(67, 30, 'DIRECCION GENERAL'),
(68, 30, 'POSVENTA'),
(69, 30, 'REFACCIONES'),
(70, 31, 'SIN ASIGNAR'),
(71, 32, 'CONSEJO'),
(72, 33, 'DIRECCION'),
(73, 34, 'SIN ASIGNAR'),
(74, 35, 'FINANZAS'),
(75, 35, 'SIN ASIGNAR'),
(76, 36, 'AUDITORIA INTERNA'),
(77, 36, 'JURIDICO'),
(78, 37, 'MARKETING'),
(79, 38, 'MARKETING INTELLIGENCE'),
(80, 39, 'CALIDAD'),
(81, 39, 'LOGÍSTICA'),
(82, 39, 'INGENIERIA DE PRODUCTO'),
(83, 39, 'OPERACIONES'),
(84, 39, 'INGENIERIA DE PRODUCTO'),
(85, 40, 'MANEJO DE MATERIALES'),
(86, 41, 'BUSES'),
(87, 41, 'CUSTOMER EXPERIENCE'),
(88, 41, 'GARANTIAS'),
(89, 41, 'OPERACIONES DE CAMPO'),
(90, 41, 'POSVENTA'),
(91, 41, 'REFACCIONES'),
(92, 41, 'SERVICIO'),
(93, 41, 'SIN ASIGNAR'),
(94, 41, 'TRACTOS'),
(95, 41, 'VENTAS Y MARKETING DE REFACCIONES'),
(96, 41, 'GARANTIAS'),
(97, 41, 'REFACCIONES'),
(98, 42, 'SIN ASIGNAR'),
(99, 43, 'SIN ASIGNAR'),
(100, 44, 'SIN ASIGNAR'),
(101, 45, 'SIN ASIGNAR'),
(102, 46, 'ATRACCION DE TALENTO'),
(103, 46, 'COMUNICACION ORGANIZACIONAL'),
(104, 46, 'DESARROLLO ORGANIZACIONAL Y CAPACITACION'),
(105, 46, 'NOMINA'),
(106, 46, 'RECURSOS HUMANOS'),
(107, 46, 'SIN ASIGNAR'),
(108, 47, 'SIN ASIGNAR'),
(109, 48, 'RELACIONES INSTITUCIONALES'),
(110, 46, 'SERVICIOS GENERALES'),
(111, 50, 'CONTRALORIA'),
(112, 50, 'FINANZAS'),
(113, 50, 'POSVENTA'),
(114, 50, 'RECURSOS HUMANOS'),
(115, 50, 'SISTEMA DE GESTION DE CALIDAD'),
(116, 39, 'TECNOLOGIAS DE LA INFORMACION'),
(117, 52, 'DIRECCION'),
(118, 53, 'OPERACIONES'),
(119, 54, 'OPERACIONES'),
(120, 55, 'CONSEJO'),
(121, 56, 'SIN ASIGNAR'),
(122, 57, 'SIN ASIGNAR'),
(123, 58, 'MARKETING'),
(124, 59, 'TELEMETRIA'),
(125, 60, 'TELEMETRIA'),
(126, 61, 'SIN ASIGNAR'),
(127, 62, 'TELEMETRIA'),
(128, 63, 'SIN ASIGNAR'),
(131, 41, 'SOPORTE TECNICO'),
(132, 64, 'COMPRAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arrendadora`
--

CREATE TABLE `arrendadora` (
  `id_arrendadora` int(11) NOT NULL,
  `arrendadora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arrendadora`
--

INSERT INTO `arrendadora` (`id_arrendadora`, `arrendadora`) VALUES
(1, 'ACTIVE LEASING'),
(2, 'CORPORACION FINANCIERA ATLAS'),
(3, 'SIN ARRENDAMIENTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguradoras`
--

CREATE TABLE `aseguradoras` (
  `id_aseguradora` int(11) NOT NULL,
  `aseguradora` varchar(100) NOT NULL,
  `razon_social` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aseguradoras`
--

INSERT INTO `aseguradoras` (`id_aseguradora`, `aseguradora`, `razon_social`) VALUES
(1, 'ATLAS', 'CORPORACION FINANCIERA ATLAS'),
(2, 'GNP', 'GRUPO NACIONAL PROVINCIAL'),
(3, 'INBURSA', 'GRUPO FINANCIERO INBURSA'),
(4, 'QUALITAS', 'COMPAÑÍA DE SEGUROS'),
(5, 'SIN ASIGNAR', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_aseguradora_unidad`
--

CREATE TABLE `asignacion_aseguradora_unidad` (
  `id_asignacion_aseguradora` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_aseguradora` int(11) NOT NULL DEFAULT 5,
  `numero_poliza_aseguradora` int(11) DEFAULT NULL,
  `fecha_alta` date NOT NULL DEFAULT '0000-00-00',
  `fecha_vencimiento` date NOT NULL DEFAULT '0000-00-00',
  `id_estatus_aseguradora` int(11) NOT NULL,
  `id_estado_aseguradora` int(11) NOT NULL,
  `documento_aseguradora` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion_aseguradora_unidad`
--

INSERT INTO `asignacion_aseguradora_unidad` (`id_asignacion_aseguradora`, `id_unidad`, `id_aseguradora`, `numero_poliza_aseguradora`, `fecha_alta`, `fecha_vencimiento`, `id_estatus_aseguradora`, `id_estado_aseguradora`, `documento_aseguradora`) VALUES
(1, 1, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(2, 2, 3, 2147483647, '2024-09-11', '2025-09-11', 1, 5, 'T2 - 200721.pdf'),
(3, 3, 3, 26100, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(4, 4, 4, 150219398, '2024-12-06', '2028-12-06', 1, 5, 'TM 3 - 301163.pdf'),
(5, 5, 4, 150219400, '2024-12-06', '2028-12-06', 1, 5, 'TM 3 - 300878.pdf'),
(6, 6, 4, 150219401, '2024-12-04', '2028-09-04', 1, 5, 'TM 3 - 300884.pdf'),
(7, 7, 4, 150219396, '2024-12-06', '2028-12-06', 1, 5, 'TM 3 - 301160.pdf'),
(8, 8, 4, 150219393, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(9, 9, 4, 150218718, '2024-10-07', '2028-10-06', 1, 5, 'TUNLAND E5 - 012692.pdf'),
(10, 10, 4, 150219402, '2024-12-06', '2028-12-06', 1, 5, 'TM 3 - 300869.pdf'),
(11, 11, 2, 611432485, '2024-05-15', '2025-05-15', 1, 5, 'T2 - 200014.pdf'),
(12, 12, 3, 26100, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(13, 13, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'SIN ASIGNAR'),
(14, 14, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'SIN ASIGNAR'),
(15, 15, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'SIN ASIGNAR'),
(16, 16, 4, 1340355604, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(17, 17, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'licencia_conducir_ejemplo.pdf'),
(18, 18, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'SIN ASIGNAR'),
(19, 19, 4, 1340393340, '2025-03-26', '2026-03-26', 1, 5, 'AUMARK TM - 000505.pdf'),
(20, 20, 4, 150218841, '2024-10-04', '2025-10-07', 1, 5, 'TUNLAND G7 - 303020.pdf'),
(21, 21, 4, 150218833, '2024-07-06', '2025-07-06', 1, 5, 'AUMARK S3 - 002144.pdf'),
(22, 22, 2, 613767045, '2024-05-29', '2025-05-29', 1, 5, 'AUMARK S3 - 002142.pdf'),
(23, 23, 4, 150218844, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(24, 24, 4, 150219260, '2024-12-06', '2025-12-06', 1, 5, 'TOANO - 001359.pdf'),
(25, 25, 4, 150218863, '2024-10-06', '2025-10-06', 1, 5, 'TUNLAND V9 - 307020.pdf'),
(26, 26, 5, 0, '0000-00-00', '0000-00-00', 2, 1, 'licencia_conducir_ejemplo.pdf'),
(27, 27, 4, 2147483647, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(28, 28, 2, 632147203, '2024-10-04', '2025-10-04', 1, 5, 'HR-V - 002056.pdf'),
(29, 29, 2, 619959778, '2024-07-13', '2025-07-13', 1, 5, 'x70 PLUS - 003268.pdf'),
(30, 30, 4, 1340330731, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(31, 31, 4, 1340330740, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(32, 32, 4, 1340330744, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(33, 33, 4, 1340330745, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(34, 34, 4, 1340330746, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(35, 35, 4, 1340330735, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(36, 36, 4, 1340330743, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(37, 37, 4, 1340330733, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(38, 38, 2, 619962962, '2024-07-13', '2025-07-13', 1, 5, 'X70 PLUS - 003294.pdf'),
(39, 39, 4, 1340330741, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(40, 40, 4, 1340338969, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(41, 41, 4, 1340351943, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(42, 42, 5, 0, '0000-00-00', '0000-00-00', 2, 2, 'SIN ASIGNAR'),
(43, 43, 2, 619960925, '2024-07-13', '2026-07-13', 1, 5, 'X70PLUS - 003276.pdf'),
(44, 44, 2, 619961873, '2024-07-13', '2024-07-13', 1, 5, 'X70PLUS - 003271.pdf'),
(45, 45, 2, 619962095, '2024-07-13', '2025-07-13', 1, 5, 'X70 PLUS - 003285.pdf'),
(46, 46, 2, 619962517, '2024-07-13', '2025-07-13', 1, 5, 'X70 PLUS - 003277.pdf'),
(47, 47, 2, 619720576, '2024-07-13', '2025-07-13', 1, 5, '018038.pdf'),
(48, 48, 2, 619710569, '2024-07-13', '2025-07-13', 1, 5, 'X70PLUS - 024531.pdf'),
(49, 49, 2, 619725658, '2024-07-13', '2025-07-13', 1, 5, '018038.pdf'),
(50, 50, 2, 619961220, '2024-07-13', '2025-07-13', 1, 5, 'X70 PLUS - 003291.pdf'),
(51, 51, 2, 619730542, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(52, 52, 2, 619963457, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(53, 53, 2, 627448491, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(54, 54, 4, 2147483647, '2024-11-09', '2025-11-09', 1, 5, 'X70 PLUS - 003297.pdf'),
(55, 55, 4, 2147483647, '2025-11-09', '2025-11-09', 1, 5, 'DASHING - 151012.pdf'),
(56, 56, 4, 2147483647, '2024-08-11', '2025-09-11', 1, 5, 'DASHING - 151705.pdf'),
(57, 57, 4, 2147483647, '2024-11-08', '2025-11-08', 1, 5, 'X70 - 018163.pdf'),
(58, 58, 4, 2147483647, '2024-11-09', '2025-11-09', 1, 5, 'X70- 018105.pdf'),
(59, 59, 4, 2147483647, '2024-09-11', '2025-09-11', 1, 5, 'DASHING - 151741.pdf'),
(60, 60, 4, 2147483647, '2024-11-09', '2025-11-09', 1, 5, 'SIN ASIGNAR'),
(61, 61, 4, 2147483647, '2024-12-24', '2025-12-24', 1, 5, 'X70 PLUS - 025097.pdf'),
(62, 62, 4, 2147483647, '2024-12-20', '2025-12-20', 1, 5, 'X70 PLUS - 350795.pdf'),
(63, 63, 4, 2147483647, '2024-08-12', '2025-08-12', 1, 5, 'DASHING - 151580.pdf'),
(64, 64, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(65, 65, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'x70 - 024495.pdf'),
(66, 66, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 022904.pdf'),
(67, 67, 1, 0, '2025-01-08', '2026-01-08', 1, 5, 'X70 022929.pdf'),
(68, 68, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(69, 69, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(70, 70, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(71, 71, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'DASHING - 151559.pdf'),
(72, 72, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'DASHING - 151537.pdf'),
(73, 73, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(74, 74, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(75, 75, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(76, 76, 1, 0, '2025-01-03', '2026-01-03', 1, 5, '960173 - AVEO.pdf'),
(77, 77, 2, 627449275, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(78, 78, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 024431.pdf'),
(79, 79, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 024448.pdf'),
(80, 80, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 - 024877.pdf'),
(81, 81, 1, 0, '2025-01-21', '2026-01-21', 1, 5, 'X70 023735.pdf'),
(82, 82, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 023772.pdf'),
(83, 83, 1, 0, '2025-01-06', '2026-01-06', 1, 5, 'X70 - 003269.pdf'),
(84, 84, 2, 610724502, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(85, 85, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631779.pdf'),
(86, 86, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631778.pdf'),
(87, 87, 2, 608430443, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(88, 88, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631777.pdf'),
(89, 89, 1, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(90, 90, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631782.pdf'),
(91, 91, 2, 608438016, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(92, 92, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631780.pdf'),
(93, 93, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631773.pdf'),
(94, 94, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631775.pdf'),
(95, 95, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631774.pdf'),
(96, 96, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631784.pdf'),
(97, 97, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631785.pdf'),
(98, 98, 2, 608439527, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(99, 99, 2, 613918770, '2024-05-30', '2026-05-30', 1, 5, 'DASHING  - 176197.pdf'),
(100, 100, 4, 150218914, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 896969.pdf'),
(101, 101, 4, 150218910, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 896970.pdf'),
(102, 102, 4, 150218909, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 880197.pdf'),
(103, 103, 4, 150218919, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 896885.pdf'),
(104, 104, 4, 150218908, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 880198.pdf'),
(105, 105, 4, 150218920, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(106, 106, 4, 150218922, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 897044.pdf'),
(107, 107, 4, 150218915, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 896968.pdf'),
(108, 108, 4, 150218917, '2024-06-01', '2028-06-01', 1, 5, 'BAIC - 897045.pdf'),
(109, 109, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(110, 110, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(111, 111, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(112, 112, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(113, 113, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(114, 114, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(115, 115, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(116, 116, 5, 0, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(117, 117, 4, 1290495296, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(118, 118, 2, 655986388, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(119, 119, 5, 0, '0000-00-00', '0000-00-00', 2, 4, 'SIN ASIGNAR'),
(120, 120, 4, 1340338965, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(121, 121, 4, 1340338967, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(122, 122, 4, 1340338971, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(123, 123, 2, 613914290, '2024-05-30', '2025-05-30', 1, 5, 'T2 - 200017.pdf'),
(124, 124, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(125, 125, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(126, 126, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(127, 127, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(128, 128, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(129, 129, 5, 0, '0000-00-00', '0000-00-00', 2, 3, 'SIN ASIGNAR'),
(130, 130, 2, 621794718, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(131, 131, 4, 1340330742, '0000-00-00', '0000-00-00', 1, 5, 'SIN ASIGNAR'),
(133, 89, 1, 0, '2025-04-26', '2026-04-26', 1, 5, 'D00-1-1-000631781.pdf'),
(134, 133, 1, 6545678, '2025-05-13', '2025-08-13', 1, 5, 'licencia_conducir_ejemplo.pdf'),
(135, 143, 1, 66565, '2025-06-03', '2025-06-24', 1, 5, 'comodato_COMODATO_URIEL (1).pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_catalogos_modelos`
--

CREATE TABLE `asignacion_catalogos_modelos` (
  `id_asignacion_unidades_catalogo_revision` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_catalogo_revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_catalogos_modelos`
--

INSERT INTO `asignacion_catalogos_modelos` (`id_asignacion_unidades_catalogo_revision`, `id_modelo`, `id_catalogo_revision`) VALUES
(1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_modelos_directivos`
--

CREATE TABLE `asignacion_modelos_directivos` (
  `id_asignacion_modelos_directivos` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_tipo_directivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_revisiones_catalogos`
--

CREATE TABLE `asignacion_revisiones_catalogos` (
  `id_revisiones_catalogos` int(11) NOT NULL,
  `id_catalogo_revision` int(11) NOT NULL,
  `id_revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_revisiones_catalogos`
--

INSERT INTO `asignacion_revisiones_catalogos` (`id_revisiones_catalogos`, `id_catalogo_revision`, `id_revision`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 29),
(29, 1, 30),
(30, 1, 31),
(31, 1, 32),
(32, 1, 33),
(33, 1, 34),
(34, 1, 35),
(35, 1, 36),
(36, 1, 37),
(37, 1, 38),
(38, 1, 39),
(39, 1, 40),
(40, 1, 41),
(41, 1, 42),
(42, 1, 43),
(43, 1, 44),
(44, 1, 45),
(45, 1, 46),
(46, 1, 47),
(47, 1, 48),
(48, 1, 49),
(49, 1, 50),
(50, 1, 51),
(51, 1, 52),
(52, 1, 53),
(53, 1, 54),
(54, 1, 55),
(55, 1, 56),
(56, 1, 57),
(57, 1, 58),
(58, 1, 59),
(59, 1, 60),
(60, 1, 61),
(61, 1, 62),
(62, 1, 63),
(63, 1, 64),
(64, 1, 65),
(65, 2, 1),
(66, 2, 2),
(67, 2, 3),
(68, 2, 4),
(69, 2, 5),
(70, 2, 6),
(71, 2, 7),
(72, 2, 8),
(73, 2, 9),
(74, 2, 10),
(75, 2, 11),
(76, 2, 12),
(77, 2, 13),
(78, 2, 14),
(79, 2, 15),
(80, 2, 16),
(81, 2, 17),
(82, 2, 18),
(83, 2, 19),
(84, 2, 20),
(85, 2, 21),
(86, 2, 22),
(87, 2, 23),
(88, 2, 24),
(89, 2, 25),
(90, 2, 26),
(91, 2, 27),
(92, 2, 29),
(93, 2, 30),
(94, 2, 31),
(95, 2, 32),
(96, 2, 33),
(97, 2, 34),
(98, 2, 35),
(99, 2, 36),
(100, 2, 37),
(101, 2, 38),
(102, 2, 39),
(103, 2, 40),
(104, 2, 41),
(105, 2, 42),
(106, 2, 43),
(107, 2, 44),
(108, 2, 45),
(109, 2, 46),
(110, 2, 47),
(111, 2, 48),
(112, 2, 49),
(113, 2, 50),
(114, 2, 51),
(115, 2, 52),
(116, 2, 53),
(117, 2, 54),
(118, 2, 55),
(119, 2, 56),
(120, 2, 57),
(121, 2, 58),
(122, 2, 59),
(123, 2, 60),
(124, 2, 61),
(125, 2, 62),
(126, 2, 63),
(127, 2, 64),
(128, 2, 65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_unidad_colaborador`
--

CREATE TABLE `asignacion_unidad_colaborador` (
  `id_asignaciones` int(11) NOT NULL,
  `id_tipo_asignaciones` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_colaborador` int(11) DEFAULT NULL,
  `id_usuario_externo` int(11) DEFAULT NULL,
  `fecha_asignacion` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `hora_recoleccion` time DEFAULT NULL,
  `hora_devolucion` time DEFAULT NULL,
  `archivo_responsiva_sin_asignar` varchar(200) NOT NULL,
  `politica_aceptada` varchar(20) NOT NULL,
  `archivo_responsiva_firmada` varchar(100) NOT NULL,
  `id_estatus_carta_responsiva` int(11) DEFAULT NULL,
  `motivo_rechazo` varchar(200) NOT NULL,
  `id_creador_comodato` int(11) DEFAULT NULL,
  `fecha_creacion_comodato` date DEFAULT NULL,
  `archivo_comodato_sin_firmar` varchar(100) NOT NULL,
  `id_estatus_comodato` int(11) DEFAULT NULL,
  `archivo_comodato_firmado` varchar(100) NOT NULL,
  `motivo_rechazo_comodato` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_unidad_colaborador`
--

INSERT INTO `asignacion_unidad_colaborador` (`id_asignaciones`, `id_tipo_asignaciones`, `id_unidad`, `id_colaborador`, `id_usuario_externo`, `fecha_asignacion`, `fecha_devolucion`, `hora_recoleccion`, `hora_devolucion`, `archivo_responsiva_sin_asignar`, `politica_aceptada`, `archivo_responsiva_firmada`, `id_estatus_carta_responsiva`, `motivo_rechazo`, `id_creador_comodato`, `fecha_creacion_comodato`, `archivo_comodato_sin_firmar`, `id_estatus_comodato`, `archivo_comodato_firmado`, `motivo_rechazo_comodato`) VALUES
(1, 2, 76, 698, NULL, '2025-05-28', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-22', 'comodato_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL (1).pdf', ' '),
(2, 2, 112, 698, NULL, '2025-05-21', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(3, 2, 114, NULL, 3, '2025-05-28', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-23', 'comodato_externo_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL.pdf', ' '),
(4, 2, 115, 698, NULL, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(5, 2, 103, NULL, 4, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(6, 2, 4, NULL, 5, '2025-05-29', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-23', 'comodato_externo_comodato_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL (1).pdf', ' '),
(7, 2, 5, NULL, 6, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(8, 2, 21, NULL, 7, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(9, 2, 9, NULL, 8, '2025-05-30', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_ANDREA ESPINOZA-X70.pdf', ' '),
(10, 2, 68, NULL, 11, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(11, 2, 69, NULL, 12, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(12, 2, 70, NULL, 13, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_ANDREA ESPINOZA-X70.pdf', ' '),
(13, 2, 73, NULL, 14, '2025-05-22', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-28', 'comodato_externo_comodato_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL.pdf', ' '),
(14, 2, 74, NULL, 15, '2025-05-23', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_ANDREA ESPINOZA-X70.pdf', ' '),
(15, 1, 100, NULL, 16, '2025-05-14', '2025-06-05', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-23', 'comodato_externo_COMODATO_URIEL.pdf', 4, 'comodato_EVELYN CALDERON-X70.pdf', ' '),
(16, 2, 101, NULL, 17, '2025-05-29', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-22', 'comodato_externo_COMODATO_URIEL.pdf', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(17, 2, 51, 202, NULL, '2025-05-26', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-23', 'comodato_COMODATO_URIEL.pdf', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(18, 2, 55, 698, NULL, '2025-05-28', '0000-00-00', '00:00:00', '00:00:00', '', '', '', 2, '', 348, '2025-05-23', 'comodato_comodato_COMODATO_URIEL.pdf', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(19, 1, 10, 698, NULL, '2025-05-28', '2025-06-04', '18:04:00', '18:04:00', 'responsiva_placa_HU1477A_asignacion_19.pdf', 'ACEPTADA', 'FIRMADO_comodato_COMODATO_URIEL (1).pdf', 2, ' ', NULL, NULL, '', 4, '', ''),
(20, 1, 6, 698, NULL, '2025-05-28', '2025-06-03', '18:10:00', '10:00:00', 'responsiva_placa_HU1473A_asignacion_20.pdf', 'ACEPTADA', 'FIRMADO_responsiva_placa_MVH393A_asignacion_1.pdf', 2, ' ', NULL, NULL, '', 4, '', ''),
(21, 1, 3, 698, NULL, '2025-05-28', '2025-06-03', '18:10:00', '10:00:00', 'responsiva_placa_H72BPX_asignacion_21.pdf', '', '', 2, ' ', NULL, NULL, '', 4, '', ''),
(22, 1, 9, 698, NULL, '2025-05-28', '2025-06-05', '18:16:00', '18:16:00', 'responsiva_placa_HU1476A_asignacion_22.pdf', 'ACEPTADA', 'FIRMADO_COMODATO_URIEL.pdf', 3, 'denegar', NULL, NULL, '', 1, '', ''),
(23, 1, 1, 698, NULL, '2025-05-29', '2025-06-04', '10:42:00', '10:42:00', '', 'ACEPTADA', 'FIRMADO_comodato_COMODATO_URIEL (1).pdf', 2, ' ', NULL, NULL, '', 4, '', ''),
(24, 1, 1, 698, NULL, '2025-05-29', '2025-06-04', '10:42:00', '10:42:00', '', 'ACEPTADA', 'FIRMADO_responsiva_placa_MVH393A_asignacion_1_firma.pdf', 3, 'mal', NULL, NULL, '', 1, '', ''),
(25, 1, 1, 698, NULL, '2025-05-29', '2025-06-04', '10:42:00', '10:42:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(26, 1, 1, 698, NULL, '2025-05-29', '2025-06-04', '10:42:00', '10:42:00', '', 'ACEPTADA', 'FIRMADO_comodato_COMODATO_URIEL (1).pdf', 4, ' ', NULL, NULL, '', 1, '', ''),
(27, 1, 1, 698, NULL, '2025-05-29', '2025-06-04', '10:42:00', '10:42:00', 'responsiva_placa_7GPK25_asignacion_27.pdf', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(28, 2, 120, 698, NULL, '2025-05-29', '0000-00-00', NULL, NULL, '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_comodato_COMODATO_URIEL (1).pdf', ' '),
(29, 2, 29, 698, NULL, '2025-05-29', '0000-00-00', NULL, NULL, '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(30, 2, 30, 698, NULL, '2025-05-28', '0000-00-00', NULL, NULL, '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_EVELYN CALDERON-X70.pdf', ' '),
(31, 2, 121, 698, NULL, '2025-05-29', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-05-28', 'comodato_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL.pdf', ' '),
(32, 2, 31, 698, NULL, '2025-06-05', '0000-00-00', NULL, NULL, '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_licencia_conducir_ejemplo.pdf', ' '),
(33, 2, 32, 698, NULL, '2025-06-02', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-06-02', 'comodato_EVELYN CALDERON-X70.pdf', 4, 'comodato_EVELYN CALDERON-X70.pdf', ' '),
(34, 2, 75, 698, NULL, '2025-06-04', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-06-17', 'comodato_comodato_COMODATO_URIEL (1).pdf', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(35, 2, 56, 516, NULL, '2025-06-03', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-05-30', 'comodato_COMODATO_URIEL.pdf', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(36, 1, 7, 698, NULL, '2025-06-04', '2025-07-09', '13:02:00', '13:02:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(37, 1, 7, 698, NULL, '2025-06-04', '2025-07-09', '13:02:00', '13:02:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(38, 1, 7, 698, NULL, '2025-06-04', '2025-07-09', '13:02:00', '13:02:00', 'responsiva_placa_HU1474A_asignacion_38.pdf', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(39, 2, 33, NULL, 20, '2025-06-03', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-06-17', 'comodato_externo_COMODATO_URIEL.pdf', 4, 'comodato_COMODATO_URIEL.pdf', ' '),
(40, 2, 34, 698, NULL, '2025-06-12', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-06-10', 'comodato_comodato_COMODATO_URIEL.pdf', 4, 'comodato_comodato_COMODATO_URIEL (1).pdf', ' '),
(41, 2, 47, 698, NULL, '2025-06-18', '0000-00-00', NULL, NULL, '', '', '', 2, '', NULL, NULL, '', 4, 'comodato_comodato_COMODATO_URIEL (1).pdf', ' '),
(42, 1, 41, 698, NULL, '2025-06-17', '2025-06-25', '16:04:00', '16:10:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(43, 1, 41, 698, NULL, '2025-06-17', '2025-06-25', '16:04:00', '16:10:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(44, 1, 41, 698, NULL, '2025-06-17', '2025-06-25', '16:04:00', '16:10:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(45, 1, 41, 698, NULL, '2025-06-17', '2025-06-25', '16:04:00', '16:10:00', 'responsiva_placa_MJV717A_asignacion_45.pdf', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(46, 2, 60, 698, NULL, '2025-06-19', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-07-23', 'comodato_COMODATO UNIDADES MARKETING_.pdf', 3, '', 'mal'),
(47, 1, 2, 698, NULL, '2025-06-19', '2025-06-25', '11:23:00', '11:23:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(48, 1, 2, 698, NULL, '2025-06-19', '2025-06-25', '11:23:00', '11:23:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(49, 1, 2, 698, NULL, '2025-06-19', '2025-06-25', '11:23:00', '11:23:00', 'responsiva_placa_H37BPS_asignacion_49.pdf', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(50, 1, 2, 698, NULL, '2025-06-19', '2025-06-25', '11:23:00', '11:23:00', 'responsiva_placa_H37BPS_asignacion_50.pdf', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(51, 2, 102, NULL, 21, '2025-06-19', '0000-00-00', NULL, NULL, '', '', '', 2, '', 348, '2025-06-17', 'comodato_externo_COMODATO_URIEL.pdf', 4, 'comodato_ANDREA ESPINOZA-X70.pdf', ' '),
(52, 1, 8, 698, NULL, '2025-06-18', '2025-07-10', '17:32:00', '17:32:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(53, 1, 8, 698, NULL, '2025-06-18', '2025-07-10', '17:32:00', '17:32:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(54, 1, 8, 698, NULL, '2025-06-18', '2025-07-10', '17:32:00', '17:32:00', '', '', '', 1, '', NULL, NULL, '', 1, '', ''),
(55, 1, 8, 698, NULL, '2025-06-18', '2025-07-10', '17:32:00', '17:32:00', 'responsiva_placa_HU1475A_asignacion_55.pdf', '', '', 1, '', NULL, NULL, '', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_unidad_demo`
--

CREATE TABLE `asignacion_unidad_demo` (
  `id_asignacion_unidad_demo` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_colaborador_que_asigna` int(11) NOT NULL,
  `id_persona_fisica` int(11) DEFAULT NULL,
  `id_persona_moral` int(11) DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `objetivo_prestamo` text DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  `solicitar_master_driver` varchar(20) DEFAULT NULL,
  `id_autorizador` int(11) DEFAULT NULL,
  `id_asignar_prueba_demo_master_driver` int(11) DEFAULT NULL,
  `autorizacion` varchar(20) NOT NULL,
  `id_creador_comodato_demo` int(11) DEFAULT NULL,
  `fecha_creacion_comodato` date DEFAULT NULL,
  `archivo_comodato_sin_firmar` varchar(200) NOT NULL,
  `id_estatus_comodato_demo` int(11) DEFAULT NULL,
  `archivo_comodato_firmado` varchar(200) NOT NULL,
  `motivo_rechazo_comodato` varchar(200) NOT NULL,
  `id_estado_prueba_demo` int(11) DEFAULT NULL,
  `id_colaborador_sube_reporte_final` int(11) DEFAULT NULL,
  `reporte_final_prueba` varchar(200) DEFAULT NULL,
  `comentarios_finales` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_unidad_demo`
--

INSERT INTO `asignacion_unidad_demo` (`id_asignacion_unidad_demo`, `id_unidad`, `id_colaborador_que_asigna`, `id_persona_fisica`, `id_persona_moral`, `fecha_prestamo`, `fecha_devolucion`, `objetivo_prestamo`, `comentarios`, `solicitar_master_driver`, `id_autorizador`, `id_asignar_prueba_demo_master_driver`, `autorizacion`, `id_creador_comodato_demo`, `fecha_creacion_comodato`, `archivo_comodato_sin_firmar`, `id_estatus_comodato_demo`, `archivo_comodato_firmado`, `motivo_rechazo_comodato`, `id_estado_prueba_demo`, `id_colaborador_sube_reporte_final`, `reporte_final_prueba`, `comentarios_finales`) VALUES
(1, 17, 202, 4, NULL, '2025-07-30', '2025-08-28', 'Recorrer distancias largas en el menor tiempo posible ', 'Se requiere de un Master driver que este monitoreando fisicamente la prueba ', '1', 39, 516, 'APROVADO', 348, '2025-07-24', 'comodato_demo_COMODATO_URIEL.pdf', 3, '', '', 4, 520, 'reporte_final_1_SmartConnect_Compilado.pdf', 'kakjkjhkhdhvfjabfhaVDK,GNLEABF<'),
(2, 14, 698, NULL, 1, '2025-07-30', '2025-08-13', 'la prueba tiene como objetivo soportar subidas y bajadas de cerros', 'Se requiere d eun master driver', '1', 39, 389, 'APROVADO', 348, '2025-07-24', 'comodato_demo_responsiva_placa_MVH393A_asignacion_1_firma.pdf', 3, '', '', 2, NULL, '', NULL),
(3, 20, 698, NULL, 1, '2025-07-31', '2025-09-04', 'Realizar la prueba completamente y ya ', 'No se requiere de un Master driver para la realización de la prueba', '0', 39, NULL, 'APROVADO', 348, '2025-07-24', 'comodato_demo_COMODATO_UNIDADES_MARKETING_1.pdf', 3, '', '', NULL, NULL, '', NULL),
(4, 11, 698, 2, NULL, '2025-08-06', '2025-09-26', 'Pasar la prueba más difícil de todo el mundo ', 'Se requiere de un Master driver que documento todos los acontecimientos de la unidad', '1', 39, NULL, 'APROVADO', 348, '2025-07-24', 'comodato_demo_comodato_COMODATO_URIEL (1).pdf', 3, '', '', NULL, NULL, '', NULL),
(5, 16, 202, 4, NULL, '2025-08-06', '2025-10-01', 'No tiene objetivo solo la prestamos y ya ', '', '0', 39, NULL, 'APROVADO', 348, '2025-07-24', 'comodato_demo_comodato_COMODATO_URIEL.pdf', 3, '', '', NULL, NULL, '', NULL),
(6, 19, 202, NULL, 3, '2025-07-31', '2025-09-25', 'RECORRER DISTANCIAS LARGAS CON EL MENOR CONSUMO DE DIESEL POSIBLE', 'SE REQUIERE DE UN MASTER DRIVER QUE ESTE EN TODAS LAS PRUEBAS QUE SE REALICEN A LA UNIDAD Y DE CAPACITACION A LOS CONDUCTORES PARA UN MEJOR MANEJO DE LA UNIDAD', '1', 39, 516, 'APROVADO', 348, '2025-07-24', 'comodato_demo_comodato_COMODATO_URIEL.pdf', 3, '', '', 3, 520, NULL, 'cvvcvcvc'),
(7, 25, 202, NULL, 3, '2025-07-24', '2025-08-28', 'AERSTDK.HKHGwetarsutdilytuey', 'qet4eqt3a5yqyq4y5yhehtwey', '1', NULL, NULL, '', NULL, NULL, '', NULL, '', '', NULL, NULL, '', NULL),
(8, 15, 202, 4, NULL, '2025-07-31', '2025-08-28', 'trtrtrtrtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttrrrrrrrrrrrrrrrrrrrr', 'rrbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '1', 39, 389, 'APROVADO', 348, '2025-07-25', 'comodato_demo_comodato_COMODATO_URIEL (1).pdf', 3, '', '', NULL, NULL, '', NULL),
(9, 28, 202, 4, NULL, '2025-07-24', '2025-08-27', 'hhthtthtrhththt', '', '0', NULL, NULL, '', NULL, NULL, '', NULL, '', '', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_revisiones`
--

CREATE TABLE `catalogos_revisiones` (
  `id_catalogo_revision` int(11) NOT NULL,
  `nombre_revision_unidades` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogos_revisiones`
--

INSERT INTO `catalogos_revisiones` (`id_catalogo_revision`, `nombre_revision_unidades`) VALUES
(1, 'unidades chicas'),
(2, 'unidades grandes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id_colaborador` int(11) NOT NULL,
  `numero_colaborador` varchar(6) DEFAULT NULL,
  `nombre_1` varchar(30) DEFAULT NULL,
  `nombre_2` varchar(30) DEFAULT NULL,
  `nombre_fav` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `nss` varchar(11) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `id_tipo_estado_civil` int(10) DEFAULT NULL,
  `numero_hijos` int(11) DEFAULT NULL,
  `telefono_personal` varchar(15) DEFAULT NULL,
  `domicilio` text DEFAULT NULL,
  `id_tipo_sangre` int(11) DEFAULT NULL,
  `operaciones_previas` varchar(200) NOT NULL,
  `enfermedades_cronicas` varchar(200) NOT NULL,
  `email_personal` varchar(200) DEFAULT NULL,
  `id_contacto` int(11) DEFAULT NULL,
  `email_corporativo` varchar(70) DEFAULT NULL,
  `email_corporativo_2` varchar(70) DEFAULT NULL,
  `telefono_corporativo` varchar(21) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_direccion` int(11) DEFAULT NULL,
  `id_sede` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_puesto` int(11) DEFAULT NULL,
  `id_turno_trabajo` int(11) DEFAULT NULL,
  `id_kit_bienvenida` int(11) DEFAULT NULL,
  `id_jefe_directo` int(11) DEFAULT NULL,
  `fecha_alta_imss` date DEFAULT NULL,
  `id_tipo_contrato` int(11) DEFAULT NULL,
  `sueldo_neto` decimal(10,0) DEFAULT NULL,
  `sueldo_bruto` decimal(10,0) DEFAULT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `cuenta_bancaria` varchar(20) DEFAULT NULL,
  `clabe_interbancaria` varchar(18) DEFAULT NULL,
  `id_estado_colaborador` int(11) DEFAULT NULL,
  `id_estatus_colaborador` int(11) DEFAULT NULL,
  `fecha_guardado` date DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `id_colaborador_creacion` int(6) DEFAULT NULL,
  `id_colaborador_ultima_actualizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colaboradores`
--

INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(1, '190001', 'JOSUE', '', 'JOSUE', 'ORTIZ', 'SAUCEDO', '1974-04-06', 'M', 'OISJ740406HJCRCS01', '39927455095', 'OISJ740406B81', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2019-01-16', '2024-05-31', 6, 50, 13, 113, 325, 1, 1, 1, '2019-01-16', 2, 0, 0, 1, 20, '1053511594', '0', 6, 2, '0000-00-00', '0000-00-00', 1, 1),
(2, '190002', 'RAUL', 'FABIAN', 'FABIAN', 'DIAZ', 'GUIA', '1984-05-24', 'M', 'DIGR840524HDFZXL03', '37048400420', 'DIGR840524S95', 4, 0, '', 'CALLE DE LA ROSA 6, LA MALINCHE, CP. 10010, LA MAGDALENA CONTRERAS, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'fabian.diaz@ldrsolutions.com.mx', '', '3312182401', '2019-07-08', '0000-00-00', 6, 41, 13, 94, 274, 1, 1, 2, '2019-07-08', 2, 0, 0, 1, 26, '01175763371', '012028011757633718', 3, 1, '0000-00-00', '2025-06-13', 0, 485),
(3, '190003', 'MARY', 'CARMEN', 'MARY', 'YERENA', 'MENDOZA', '1990-09-24', 'F', 'YEMM900924MJCRNR02', '15109012466', 'YEMM900924MP0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '', 1, 'SIN ASIGNAR', '', '', '2019-07-15', '2024-07-22', 6, 50, 13, 113, 326, 1, 1, 3, '2019-07-15', 2, 0, 0, 1, 26, '012543011546606761', '012543011546606761', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(4, '190004', 'ISAIAS', '', 'ISAIAS', 'TRIGUEROS', 'SALAS', '1991-05-29', 'M', 'TISI910529HVZRLS08', '65119152505', 'TISI910529IZ1', 2, 0, '', 'PTO LIBERTAD 650 ANTES 12 P TODOS LOS SANTOS MIRAMAR 3RA ETAPAC.P.45060 ZAPOPAN,JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'isaias.trigueros@ldrsolutions.com.mx', '', '', '2019-07-22', '0000-00-00', 6, 41, 24, 94, 275, 1, 1, 2, '2019-07-22', 2, 0, 0, 1, 20, '01053511615', '072320010535116154', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(5, '190005', 'EMMANUEL', '', 'EMMANUEL', 'PEDROZA', 'ROMO', '1996-12-23', 'M', 'PERE961223HJCDMM01', '56159648320', 'PERE9612233C9', 4, 0, '', 'MARTIN DE SANTIAGO 104 COL: CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'expassjdios@gmail.com', 1, 'SIN ASIGNAR', '', '', '2019-10-11', '0000-00-00', 10, 62, 36, 127, 348, 1, 1, 4, '2019-10-11', 2, 0, 0, 2, 48, '06457657157', '021362064576571577', 3, 1, '0000-00-00', '2025-06-20', 0, 485),
(6, '190006', 'CANDI', 'ROCIO', 'CANDI', 'JAIMES', 'HERNANDEZ', '1992-05-18', 'F', 'JAHC920518MBCMRN01', '44149264275', 'JAHC920518HL4', 2, 0, '', 'MARTIN DE SANTIAGO 125 COL : CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2019-10-14', '0000-00-00', 3, 12, 25, 131, 395, 1, 1, 5, '2019-10-14', 2, 0, 0, 2, 26, '01571164531', '012180015711645314', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(7, '190007', 'LILIANA', '', 'LILIANA', 'PEREZ', 'MIRANDA', '1984-02-21', 'F', 'PEML840221HDFRRL00', 'SIN ASIGNAR', 'PEML840221ID9', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'prueba@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2019-10-15', '0000-00-00', 6, 32, 24, 71, 141, 1, 1, 0, '2019-10-15', 2, 81713, 112530, 1, 20, '01089066767', '072320010890667678', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(8, '190008', 'CECILIA', 'MARIA CONCEPCION', 'CECILIA', 'CUELLAR', 'MARTINEZ', '1979-12-08', 'F', 'CUMC791208MJCLRC00', '04117906893', 'CUMC791208L21', 4, 0, '', 'SANTO TORIBIO ROMO 141 COL: CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cecilia.cuellar.martinez@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2019-10-22', '2024-10-30', 6, 40, 24, 31, 79, 1, 1, 5, '2019-10-22', 2, 0, 0, 2, 14, '90129897812', '002362901298978129', 3, 1, '0000-00-00', '2025-05-03', 0, 209),
(9, '190009', 'ALEJANDRO', '', 'ALEJANDRO', 'PADILLA', 'VALERIO', '1989-03-05', 'M', 'PAVA890305HJCDLL00', '16118927272', 'PAVA890305LE5', 1, 0, '', 'CAM A SAN JOSE 2, LOC. RIO HONDITO, OCOYOACAC, ESTADO DE MEXICO, CP. 52740', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'expassjdios@gmail.com', 1, 'alejandro.padilla@ldrsolutions.com.mx', '', '3321836098', '2019-11-14', '0000-00-00', 6, 41, 13, 94, 276, 1, 1, 2, '2019-11-14', 2, 0, 0, 1, 26, '01174430425', '012420011744304250', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(10, '190010', 'JORGE', 'ADRIAN', 'ADRIAN', 'ARAUJO', 'VALENCIA', '1995-01-16', 'M', 'AAVJ950116HJCRLR08', '38159585496', 'AAVJ950116PU1', 4, 0, '', 'NICOLAS BRAVO #170 COL EL REFUGIO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adrian.4741084538@gmail.com', 1, 'adrian.araujo@ldrsolutions.com.mx', '', '', '2019-11-25', '0000-00-00', 3, 12, 25, 25, 400, 1, 1, 9, '2019-11-25', 2, 11744, 13353, 2, 26, '01530763522', '012362015307635226', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(11, '190011', 'JOSE', 'MANUEL', 'JOSE', 'ARMENTA', 'RODRIGUEZ', '1959-02-12', 'M', 'AERM590212HJCRDN05', '10815940431', 'AERM5902126C2', 1, 0, '', 'PROL REFORMA 1190, C-804, COL. CRUZ MANCA, CP. 05349, CUAJIMALPA DE MORELOS, CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'jose.armenta@ldrsolutions.com.mx', '', '3312182648', '2019-12-02', '0000-00-00', 6, 48, 13, 109, 313, 1, 1, 0, '2019-12-02', 2, 0, 0, 1, 20, '01094113526', '072320010941135266', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(12, '190012', 'EDUARDO', '', 'EDUARDO', 'RODRIGUEZ', 'RODRIGUEZ', '1992-07-12', 'M', 'RORE920712HJCDDD09', '07169299026', 'RORE920712796', 2, 0, '', 'JALISCO #40 COL: LINDERO C.P 47513', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lalorodriguez217@gmail.com', 1, 'eduardo.rodriguez@ldrsolutions.com.mx', '', '', '2019-12-04', '0000-00-00', 3, 12, 25, 22, 44, 1, 1, 8, '2019-12-04', 2, 9022, 10054, 2, 26, '01560916920', '012362015609169209', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(13, '190013', 'JOSE', 'SALVADOR', 'JOSE', 'CORDOVA', 'MALDONADO', '1971-02-14', 'M', 'COMS710214HJCRLL05', '54947122633', 'COMS710214DL4', 2, 0, '', 'ANACLETO GONZALEZ FLORES 140 CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2019-12-04', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2019-12-04', 2, 0, 0, 2, 26, '01578794173', '012362015787941734', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(14, '190014', 'GERARDO', '', 'GERARDO', 'AGUILERA', 'LOPEZ', '1967-10-03', 'M', 'AULG671003HJCGPR04', '24876777038', 'AULG6710036Y1', 2, 0, '', 'ANACLETO GONZALEZ FLORES #196 COL: CRISTEROS C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gerardoaguileralopez0@gmail.com', 1, 'SIN ASIGNAR', '', '', '2019-12-13', '0000-00-00', 3, 12, 25, 25, 62, 1, 1, 9, '2019-12-13', 2, 9815, 10974, 2, 26, '01580128263', '012362015801282638', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(15, '190015', 'BERTHA', 'ALICIA', 'BERTHA', 'SANTOYO', 'ALCARAZ', '1973-05-18', 'F', 'SAAB730518MJCNLR05', '54947323066', 'SAAB730518DG4', 4, 0, '', 'CAPITAN MARTIN DIAZ #145 COL CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'aliciasantoyo973@gmail.com', 1, 'SIN ASIGNAR', '', '', '2019-12-16', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '2019-12-16', 2, 0, 0, 2, 26, '012362015802822385', '012362015802822385', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(16, '190016', 'SANDRA', 'FABIOLA', 'FABIOLA', 'LOPEZ', 'ATILANO', '1998-11-04', 'F', 'LOAS981104MGTPTN06', '32169813733', 'LOAS9811043V1', 4, 0, '', 'MEZA REDONDA #312COL: CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fabiola_atilano@outlook.es', 1, 'juridico2@ldrsolutions.com.mx', '', '', '2019-12-18', '0000-00-00', 6, 36, 24, 77, 169, 1, 1, 10, '2019-12-18', 2, 18000, 21519, 2, 20, '01213950326', '072362012139503268', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(17, '200017', 'ALFREDO', '', 'ALFREDO', 'ROSAS', 'MENDEZ', '1973-12-05', 'M', 'ROMA731205HDFSNL06', '68937314323', 'ROMA7312059V9', 2, 0, '', 'AV. UNIVERSIDAD 147, DEPTO 404 NARVARTE ORIENTE, CP. 03023, BENITO JUAREZ, CIUDAD DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alfredo.rosas@ldrsolutions.com.mx', '', '3314710367', '2020-01-15', '0000-00-00', 6, 39, 13, 82, 207, 1, 1, 11, '2020-01-15', 2, 0, 0, 1, 14, '04826211933', '002180048262119334', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(18, '200018', 'CESAR', 'ALEJANDRO', 'CESAR', 'CARABEZ', 'RAMOS', '1993-09-30', 'M', 'CARC930930HJCRMS06', '05159322576', 'CARC93093038A', 4, 0, '', 'LA LUNA 14, LAS JUNTAS TLAQUEPAQUE JALISCO CP 45590', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '', 1, 'cesar.carabez@ldrsolutions.com.mx', '', '', '2020-01-15', '0000-00-00', 6, 41, 26, 91, 250, 1, 1, 12, '2020-01-15', 2, 45000, 58780, 1, 20, '01158563238', '072320011585632386', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(19, '200019', 'HECTOR', 'HUGO', 'HECTOR', 'GARCIA', 'GARCIA', '1977-05-17', 'M', 'GAGH770517HJCRRC05', '54937720065', 'GAGH7705171S7', 2, 0, '', 'PRIV DEL VALLE 123 COL: LA CAMPANA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'huego1010@gmail.com', 1, 'SIN ASIGNAR', '', '', '2020-01-17', '0000-00-00', 3, 12, 25, 24, 57, 1, 1, 7, '2020-01-17', 2, 0, 0, 2, 26, '01584210542', '012180015842105422', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(20, '200020', 'RICARDO', '', 'RICARDO', 'MESA', 'VALLARDO', '1989-05-04', 'M', 'MEVR890504HJCSLC08', '03168913337', 'MEVR8905041U1', 4, 0, '', 'AV. REPUBLICA 553 COL SAN JUAN DE DIOS GDL JALISCO CP 44360', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '', 1, 'ricardo.mesa@ldrsolutions.com.mx', '', '3339542856', '2020-01-20', '0000-00-00', 6, 41, 26, 91, 251, 1, 1, 23, '2020-01-20', 2, 22000, 26801, 1, 20, '01097716076', '072320010977160768', 4, 1, '0000-00-00', '2025-05-28', 0, 10000),
(21, '200021', 'FERNANDO', '', 'FERNANDO', 'ROBLEDO', 'NOVOA', '1961-10-24', 'M', 'RONF611024HMNBVR08', 'SIN ASIGNAR', 'RONF611024PQ4', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'fernando.robledo@ldrsolutions.com.mx', '', '3336624576', '2020-03-01', '0000-00-00', 8, 55, 31, 120, 339, 1, 1, 14, '2020-03-01', 2, 20000, 24160, 1, 26, '00180261211', '012320001802612114', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(22, '200022', 'JOSE', 'ALFREDO', 'JOSE', 'RAMOS', 'BARRAGAN', '1966-06-15', 'M', 'RABA660615HJCMRL01', '54846675996', 'RABA660615SW2', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2020-06-15', '0000-00-00', 3, 7, 25, 13, 23, 1, 1, 131, '2020-06-15', 2, 16688, 19786, 1, 20, '01116330832', '072320011163308320', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(23, '200023', 'ROSSELLA', 'GUADALUPE', 'ROSSELLA', 'KORRODI', 'VILLEGAS', '1990-11-07', 'F', 'KOVR901107MSLRLS05', '23129027530', 'KOVR901107LGA', 4, 0, '', 'AV TAMAULIPAS 1190, 301 EDIF B, CORPUS CHRISTHY CP. 01530, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'huego1010@gmail.com', 1, 'rossella.korrodi@ldrsolutions.com.mx', '', '3311292324', '2020-08-01', '0000-00-00', 6, 48, 13, 109, 314, 1, 1, 15, '2020-08-01', 2, 0, 0, 1, 71, '56729672153', '014180567296721539', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(24, '200024', 'NADIA', 'OFELIA', 'NADIA', 'BOTELLO', 'MENDOZA', '1985-06-29', 'F', 'BOMN850629MJCTND04', '04028559575', 'BOMN8506293E9', 2, 0, '', 'CARR A OCOTLAN 3257 MALAGA 98, FRACC RESIDENCIAL LA ALHAMBRA, CP. 45200, ZAPOPAN, JALISCO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'administracion@ldrsolutions.com.mx', '', '', '2020-10-01', '0000-00-00', 6, 35, 24, 74, 151, 1, 1, 0, '2020-10-01', 2, 0, 0, 1, 20, '01202854594', '072320012028545942', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(25, '200025', 'EPIFANIO', '', 'EPIFANIO', 'RIOS', 'MORALES', '1972-12-03', 'M', 'RIME721203HJCSRP07', '54927230281', 'RIME721203TY0', 4, 0, '', 'OLMO #140 COL:VISTAS DEL VALLE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'moralespifanio904@gmail.com', 1, 'SIN ASIGNAR', '', '', '2020-10-14', '0000-00-00', 3, 12, 25, 25, 62, 1, 1, 9, '2020-10-14', 2, 9815, 10974, 2, 14, '90104552071', '002362901045520717', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(26, '200026', 'EDGAR', 'FEDERICO', 'EDGAR', 'FERNANDEZ', 'GUTIERREZ', '1983-09-25', 'M', 'FEGE830925HJCRTD01', 'SIN ASIGNAR', 'FEGE830925H89', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'edgar.fernandez@ldrsolutions.com.mx', '', '', '2020-10-15', '0000-00-00', 6, 32, 24, 71, 142, 1, 1, 0, '2020-10-15', 2, 81713, 112530, 1, 71, '60607039374', '014320606070393749', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(27, '210027', 'EDUARDO', 'JOAQUIN', 'EDUARDO', 'GONZALEZ', 'RODRIGUEZ', '1977-05-28', 'M', 'GORE770528HDFNDD00', '92967701639', 'GORE7705284C5', 2, 0, '', 'CLL CERRITO 100, INTERIOR 5, SANTIAGO AHUIZOTLA, CP. 02760, AZCAPOTZALCO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'eduardo.gonzalez@ldrsolutions.com.mx', '', '3312863213', '2021-02-02', '0000-00-00', 6, 35, 13, 74, 152, 1, 1, 16, '2021-02-02', 2, 0, 0, 1, 14, '90197807368', '002180901978073681', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(28, '210028', 'ANDRES', 'URIEL', 'ANDRES', 'ARENAS', 'GONZALEZ', '1997-07-11', 'M', 'AEGA970711HJCRNN01', '08139708039', 'AEGA970711TN4', 1, 0, '', 'ALVAREZ DEL CASTILLO 429, SAN JUAN BOSCO, GUADALAJARA JALISCO CP 44380', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'soportejuridico@ldrsolutions.com.mx', '', '', '2021-03-01', '0000-00-00', 6, 36, 24, 77, 169, 1, 1, 17, '2021-03-01', 2, 0, 0, 1, 14, '70140424631', '002320701404246311', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(29, '210029', 'SANTOS', '', 'SANTOS', 'LOPEZ', 'GOMEZ', '1971-03-06', 'M', 'LOGS710306HOCPMN08', '45917122033', 'LOGS710306G42', 2, 0, '', 'CLL MIGUEL LAURENT NUM 44 INTERIOR 202, COL. LETRAN VALLE, CP. 03650, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'moralespifanio904@gmail.com', 1, 'santos.lopez@ldrsolutions.com.mx', '', '3312873179', '2021-03-01', '0000-00-00', 6, 41, 13, 89, 401, 1, 1, 62, '2021-03-01', 2, 0, 0, 1, 12, '90000407838', '030180900004078387', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(30, '210030', 'ANGELIKA', '', 'ANGELIKA', 'ACOSTA', 'GUTIERREZ', '1983-10-16', 'F', 'AOGA831016MMCCTN01', '90058312126', 'AOGA831016D70', 1, 0, '', 'CEDROS S/N COL. BARRIO DE SAN MARTIN, HUIXQUILUCAN, ESTADO DE MEXICO, CP. 52760', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'angelika.acosta@ldrsolutions.com.mx', '', '', '2021-03-01', '0000-00-00', 6, 36, 13, 76, 164, 1, 1, 19, '2021-03-01', 2, 0, 0, 1, 26, '01545770408', '012830015457704089', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(31, '210031', 'MIREYA', '', 'MIREYA', 'RESENDIZ', 'ZERMEÑO', '1998-03-03', 'F', 'REZM980303MJCSRR00', '53169830543', 'REZM980303326', 2, 0, '', 'ANDADOR CHABACANO 134 COL:CUESTA BLANCA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mireyaresendiz03@gmail.com', 1, 'mireya.resendiz@ldrsolutions.com.mx', '', '3314476115', '2021-05-03', '0000-00-00', 3, 12, 25, 24, 58, 1, 1, 20, '2021-05-03', 2, 0, 0, 1, 26, '01595705854', '012180015957058545', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(32, '210032', 'LUIS', 'ENRIQUE', 'LUIS', 'PLAZA', 'GUTIERREZ', '1983-06-13', 'M', 'PAGL830613HNELTS04', '03198329363', 'PAGL8306136XA', 2, 0, '', 'CIRCUITO MONTES CERVINO 107 COL:CORDILLERA LEON GUANAJUATO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'luis.plaza@ldrsolutions.com.mx', '', '', '2021-05-24', '0000-00-00', 3, 12, 25, 27, 68, 1, 1, 131, '2021-05-24', 2, 0, 0, 1, 71, '56770915650', '014730567709156504', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(33, '210033', 'VICTOR', 'AUGUSTO', 'VICTOR', 'OLIVO', 'VAZQUEZ', '1997-07-21', 'M', 'OIVV970721HPLLZC00', '84159774540', 'OIVV970721TU4', 1, 0, '', '21 PTE 2103, EDIF 2, DEPTO 302, SANTIAGO, CP. 72410, PUEBLA. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'victor.olivo@ldrsolutions.com.mx', '', '3313963579', '2021-07-12', '0000-00-00', 6, 39, 13, 82, 208, 1, 1, 11, '2021-07-12', 2, 0, 0, 1, 20, '01156858873', '072320011568588732', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(34, '210034', 'CESAR', 'FERNANDO', 'FERNANDO', 'AVILA', 'SANCHEZ', '1990-10-03', 'M', 'AISC901003HDFVNS09', '39139016214', 'AISC9010033C6', 1, 0, '', 'AVENIDA CENTENARIO 1540 I-7 PUERTA GRANDE ALVARO OBREGON, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'fernandoavila@ldrsolutions.com.mx', '', '', '2021-08-09', '0000-00-00', 10, 59, 28, 124, 343, 1, 1, 0, '2021-08-09', 2, 0, 0, 1, 26, '01568245218', '012180015682452186', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(35, '210035', 'ANDREA', '', 'ANDREA', 'GUZMAN', 'ROJAS', '1997-01-24', 'F', 'GURA970124MDFZJN01', '37129701407', 'GURA9701245H4', 4, 0, '', 'CLAVEL 14, DEPTO 306, PUEBLO LA CANDELARIA, CP. 04380, COYOACAN, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mireyaresendiz03@gmail.com', 1, 'andreaguzman@ldrsolutions.com.mx', '', '3319182893', '2021-09-27', '0000-00-00', 6, 37, 13, 78, 188, 1, 1, 71, '2021-09-27', 2, 0, 0, 1, 26, '01545161688', '012180015451616881', 3, 1, '0000-00-00', '2025-06-05', 0, 209),
(36, '210036', 'DANIEL', '', 'DANIEL', 'ANDRADE', 'MENDEZ', '1981-07-19', 'M', 'AAMD810719HJCNNN03', 'SIN ASIGNAR', 'AAMD810719SC6', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'daniel.andrade@ldrsolutions.com.mx', '', '3321842305', '2021-10-01', '0000-00-00', 6, 32, 24, 71, 143, 1, 1, 0, '2021-10-01', 2, 81713, 112530, 1, 20, '01166649940', '072320011666499406', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(37, '210037', 'LAURA', 'ADRIANA', 'ADRIANA', 'VARGAS', 'COVARRUBIAS', '1989-03-05', 'F', 'VACL890305MJCRVR07', '04048850772', 'VACL890305U45', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'importacionylogistica@ldrsolutions.com.mx', '', '', '2021-11-29', '2024-04-15', 5, 30, 3, 69, 139, 1, 1, 23, '2021-11-29', 2, 0, 0, 1, 26, '0', '012320015408100249', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(38, '210038', 'ERNESTO', '', 'ERNESTO', 'OLIVO', 'PEREZ', '1989-05-16', 'M', 'OIPE890516HDFLRR02', '37098914429', 'OIPE890516511', 1, 0, '', 'C REFORMA 28, COL. SAN PABLO CHIMALPA, CP. 05050, CUAJIMALPA, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ernesto.olivo@ldrsolutions.com.mx', '', '', '2021-12-27', '0000-00-00', 6, 36, 13, 76, 165, 1, 1, 24, '2021-12-27', 2, 0, 0, 1, 10, '01328173694', '127180013281736941', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(39, '220039', 'JOSE', 'FRANCISCO', 'FRANCISCO', 'CHAVEZ', 'RIVERA', '1970-04-09', 'M', 'CARF700409HDFHVR04', '92927012564', 'CARF700409TG0', 2, 0, '', 'VIA LATIUM 219, CP. 37 139, LA CAMPINA DEL BOSQUE, CP.  37690, LEON GUANAJUATO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'francisco.chavez@ldrsolutions.com', '', '3310185105', '2022-01-03', '0000-00-00', 3, 9, 11, 17, 32, 1, 1, 0, '2022-01-03', 2, 0, 0, 1, 71, '56736831034', '014438567368310342', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(40, '220040', 'MAURICIO', 'ABEL', 'MAURICIO', 'PERAZA', 'VIVEROS', '1968-02-20', 'M', 'PEVM680220HDFRVR03', '37896801273', 'PEVM6802205U3', 2, 0, '', 'PROLONGACION CONSTITUYENTES 455 INT 13A EL MARQUES QUERETARO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'morris2005@infinitummail.com', 1, 'mauricio.peraza@ldrsolutions.com.mx', '', '3331973085', '2022-02-14', '0000-00-00', 6, 41, 26, 91, 252, 1, 1, 1, '2022-02-14', 2, 93870, 130562, 1, 71, '56764629548', '014680567646295487', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(41, '220041', 'MARISOL', '', 'MARISOL', 'DELGADO', 'MARTINEZ', '1994-06-08', 'F', 'DEMM940608MMCLRR07', '92129431299', 'DEMM9406089B5', 1, 0, '', 'CJON DE LAS ORQUIDEAS 39, FRACC JARDINES DEL ALBA, 54750, CUATITLAN IZCALLI, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'marisol.delgado@ldrsolutions.com.mx', '', '3333912408', '2022-02-15', '0000-00-00', 6, 37, 13, 78, 179, 1, 1, 22, '2022-02-15', 2, 0, 0, 1, 14, '90409546241', '002180904095462415', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(42, '220042', 'IRMA', 'YOLANDA', 'IRMA', 'SOTO', 'RODRIGUEZ', '1985-06-18', 'F', 'SORI850618MASTDR04', '51078509034', 'SORI850618DJ3', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2022-02-15', '2024-08-02', 9, 58, 10, 123, 342, 1, 1, 25, '2022-02-15', 2, 0, 0, 1, 14, '0', '002180700264803193', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(43, '220043', 'LEONARDO', '', 'LEONARDO', 'WAGNER', 'RAYGOZA', '1981-07-23', 'M', 'WARL810723HASGYN05', '51008120498', 'WARL810723EK5', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2022-02-15', '2024-06-24', 9, 58, 10, 123, 342, 1, 1, 26, '2022-02-15', 2, 0, 0, 1, 48, '0', '021010062901448338', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(44, '220044', 'ADRIANA', 'GUADALUPE', 'undefined', 'MARTINEZ', 'SUAREZ', '1994-02-17', 'F', 'MASA940217MTCRRD08', '83139419796', 'MASA940217JZA', 4, 0, '', 'PRIV SAUCEZ 11FRACC COLINAS DE LA PIEDAD, EL MARQUES QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'morris2005@infinitummail.com', 1, 'almacen.general@ldrsolutions.com.mx', '', '3328342138', '2022-02-21', '0000-00-00', 6, 41, 26, 91, 253, 1, 1, 122, '2022-02-21', 2, 22000, 26798, 1, 26, '01568132833', '012180015681328334', 4, 1, '0000-00-00', '2025-05-28', 0, 202),
(45, '220045', 'LUIS', 'TIBURCIO', 'LUIS', 'RODRIGUEZ', 'LOPEZ', '1984-09-09', 'M', 'ROLL840909HJCDPS09', '04028488130', 'ROLL8409099L7', 2, 0, '', 'CALLE ALAMEDA #103 CO: JARDINES DE LAS CEIBAS C.P 47400', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luis.rodrilopez@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2022-02-28', '0000-00-00', 3, 12, 25, 25, 64, 1, 1, 9, '2022-02-28', 2, 10244, 11492, 2, 14, '90265119912', '002362902651199120', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(46, '220046', 'ESTEBAN', 'ULISES', 'ESTEBAN', 'MAYA', 'ARIAS', '1970-12-26', 'M', 'MAAE701226HMCYRS02', '18907002317', 'MAAE701226B33', 2, 0, '', 'PINO SUAREZ 239, COL. SANTA ANA TLAPATITLAN, TOLUCA, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'esteban.maya@ldrsolutions.com.mx', '', '', '2022-03-16', '0000-00-00', 3, 4, 11, 10, 7, 1, 1, 27, '2022-03-16', 2, 0, 0, 1, 26, '01139790810', '012680011397908102', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(47, '220047', 'CRISTOPHER', 'GREGORIO', 'GREGORIO', 'ROSALES', 'XICOTENCATL', '1994-04-01', 'M', 'ROXC940401HHGSCR08', '94129473164', 'ROXC940401IT6', 5, 0, '', 'PUNTA OESTE 113 A COLONIA: LAURELES DEL CAMPANARIO C.P 47530', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'krize94@gmail.com', 1, 'manufactura@ldrsolutions.com.mx', '', '3317492803', '2022-04-04', '0000-00-00', 3, 12, 25, 26, 66, 1, 1, 20, '2022-04-04', 2, 0, 0, 1, 71, '56792080517', '1111', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(48, '220048', 'NORA', 'ADRIANA', 'NORA', 'SEGURA', 'FAVILA', '1988-10-14', 'F', 'SEFN881014MDFGVR02', '37128805902', 'SEFN881014SY4', 2, 0, '', 'AV. PASTORES 126, GRANJAS NAVIDAD, CP. 05219, CUAJIMALPA DE MORELOS, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adrianagmsuarez02@gmail.com', 1, 'nora.segura@ldrsolutions.com', '', '3339563273', '2022-05-23', '0000-00-00', 3, 4, 11, 5, 9, 1, 1, 75, '2022-05-23', 2, 0, 0, 1, 26, '02840416797', '012180028404167976', 3, 1, '0000-00-00', '2025-06-20', 0, 209),
(49, '220049', 'RODRIGO', '', 'RODRIGO', 'GARCIA', 'VARGAS', '1995-12-23', 'M', 'GAVR951223HDFRRD00', '05179525489', 'GAVR951223L70', 1, 0, '', 'CLL GENERO ESTRADA 71, COL. JACARANDAS, CP. 09280, IZTAPALAPA, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luis.rodrilopez@hotmail.com', 1, 'rodrigo.garcia@ldrsolutions.com.mx', '', '3315467982', '2022-06-09', '0000-00-00', 2, 4, 7, 5, 402, 1, 1, 75, '2022-06-09', 2, 0, 0, 1, 26, '01501639010', '012180015016390102', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(50, '220050', 'VALERIA', 'WENDOLINE', 'VALERIA', 'CADENA', 'VALLE', '1990-06-06', 'F', 'CAVV900606MJCDLL03', '75089037925', 'CAVV900606388', 5, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valewcadenavalle@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-06-17', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2022-06-17', 2, 7958, 8370, 2, 26, '01518304381', '012362015183043812', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(51, '220051', 'MARCOS', 'DAVID', 'MARCOS', 'REYES', 'RESENDIZ', '1998-06-26', 'M', 'RERM980626HJCYSR04', '10139880578', 'RERM980626TG0', 5, 0, '', 'LLANO DE MIRANDA #26 COL: VILLA ESMERALDA C.P 47400', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '4741543403m@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-06-17', '2024-08-24', 3, 21, 25, 42, 94, 1, 1, 8, '2022-06-17', 2, 9815, 10973, 2, 26, '01532988577', '012362015329885779', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(52, '220052', 'FRANCISCO', '', 'FRANCISCO', 'MEZA', 'RODRIGUEZ', '1983-12-03', 'M', 'MERF831203HGTZDR07', '12118311302', 'MERF831203VB9', 5, 0, '', 'LA MERCED #42 COL: MUNICIPIO LIBRE C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pakomeza2@gmail.com', 1, 'francisco.meza@ldrsolutions.com.mx', '', '', '2022-06-17', '0000-00-00', 3, 12, 25, 27, 69, 1, 1, 30, '2022-06-17', 2, 11744, 13351, 2, 26, '01504719395', '012232015047193954', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(53, '220053', 'RODRIGO', '', 'RODRIGO', 'TELLEZ', 'RAMIREZ', '1998-10-17', 'M', 'TERR981017HDFLMD00', '03229841725', 'TERR981017PE4', 4, 0, '', 'VERDINES 18 MZ 64 INT. LT 36 36 PARQUE RESIDENCIAL COACALCO ECATEPEC DE MORELOS MEXICO 55014', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'rodrigo.tellez@ldrsolutions.com.mx', '', '', '2022-06-20', '0000-00-00', 6, 33, 13, 72, 146, 1, 1, 0, '2022-06-20', 2, 0, 0, 1, 26, '15740941487', '012180015740941487', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(54, '220054', 'LUZ', 'ADRIANA', 'LUZ', 'MARTINEZ', 'MARTINEZ', '1994-01-06', 'F', 'MAML940106MJCRRZ03', '75129492551', 'MAML940106LX1', 5, 0, '', 'MEZQUITE #48 COL: ARBOLEDAS DEL CARMEN', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'golmos885@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-06-23', '0000-00-00', 3, 12, 25, 24, 59, 1, 1, 7, '2022-06-23', 2, 9815, 10973, 2, 26, '01525629802', '012362015256298028', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(55, '220055', 'JORGE', 'ALFREDO', 'JORGE', 'ENRIQUEZ', 'PADILLA', '1982-03-08', 'M', 'EIPJ820308HJCNDR06', '04988284933', 'EIPJ820308D21', 4, 0, '', 'PEDRO REYES 66 COL: LAS PALMAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chino.gasparin66@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-07-01', '0000-00-00', 3, 12, 25, 31, 79, 1, 1, 5, '2022-07-01', 2, 0, 0, 2, 26, '01599722723', '012180015997227239', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(56, '220056', 'JAVIER', '', 'JAVIER', 'CERRITOS', 'LIRA', '1996-11-16', 'M', 'CELJ961116HMCRRV04', '16119604276', 'CELJ961116SM9', 4, 0, '', 'CLL ELOTE 5 A, CASA 9, COL. REAL DE SAN JAVIER, TOLUCA, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pakomeza2@gmail.com', 1, 'javier.cerritos@ldrsolutions.com.mx', '', '3339717830', '2022-07-11', '0000-00-00', 3, 4, 11, 5, 402, 1, 1, 75, '2022-07-11', 2, 0, 0, 1, 71, '56812444137', '014438568124441373', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(57, '220057', 'JORGE', '', 'JORGE', 'NUÑEZ', 'ALCALA', '1977-02-01', 'M', 'NUAJ770201HJCXLR05', '51007702726', 'NUAJ770201F98', 2, 0, '', 'HUERTOS FAMILIARES SAN PEDRO  20 COL: SAN PEDRO C.P', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jaliscojorge08@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-07-11', '0000-00-00', 3, 12, 25, 24, 57, 1, 1, 7, '2022-07-11', 2, 0, 0, 2, 20, '01229657792', '072362012296577920', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(58, '220058', 'GUSTAVO', 'ADOLFO', 'GUSTAVO', 'GOMEZ', 'QUEZADA', '1985-07-24', 'M', 'GOQG850724HJCMZS03', '75018452328', 'GOQG850724VC0', 2, 0, '', 'PERLA MAVE #125 COL: LA PERLA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gg3130345@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-07-23', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2022-07-23', 2, 8315, 9233, 2, 26, '06554700471', '021362065547004713', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(59, '220059', 'JESUS', 'HABACUC', 'JESUS', 'PIMENTEL', 'MARIN', '1969-01-15', 'M', 'PIMJ690115HDFMRS06', '11896932792', 'PIMJ690115176', 1, 0, '', 'KIOSCO MZ 13 LT 5, LOS LAURELES, CP. 55090, ECATEPEC DE MORELOS, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chino.gasparin66@gmail.com', 1, 'jesus.pimentel@ldrsolutions.com.mx', '', '3313401543', '2022-07-25', '0000-00-00', 6, 32, 32, 71, 403, 1, 1, 131, '2022-07-25', 2, 0, 0, 1, 10, '01379235362', '127180013792353622', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(60, '220060', 'GISELLE', '', 'GISELLE', 'CRUZ', 'SALMORAN', '1993-05-19', 'F', 'CUSG930519MGRRLS05', '72119313632', 'CUSG930519LT3', 4, 0, '', 'AV. DE LA PAZ MZA 32 INTR. 6C VILLAS LA PIEDAD, EL MARQUES, QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'giselle.cruz@ldrsolutions.com.mx', '', '', '2022-08-15', '0000-00-00', 6, 41, 13, 88, 240, 1, 1, 31, '2022-08-15', 2, 0, 0, 1, 20, '01199513209', '072320011995132094', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(61, '220061', 'LUIS', 'ANGEL', 'LUIS', 'RIVERA', 'JUAREZ', '2002-05-03', 'M', 'RIJL020503HGTVRSA6', '38200205243', 'RIJL0205039U9', 5, 0, '', 'LA MERCED #42 COL. MUNICIPIO LIBRE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lj8772111@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-08-31', '2024-06-29', 3, 21, 25, 49, 101, 1, 1, 0, '2022-08-31', 2, 0, 0, 2, 20, '1201816148', '072320012018161488', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(62, '220062', 'GONZALO', '', 'GONZALO', 'ORTEGA', 'DE LA CRUZ', '1996-05-12', 'M', 'OECG960512HJCRRN01', '54149618271', 'OECG960512DG6', 4, 0, '', 'RAMON CORONA 268 COL: CENTRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gonci2017@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2022-09-06', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2022-09-06', 2, 0, 0, 2, 26, '01531490252', '012180015314902522', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(63, '220063', 'LUZ', 'ALBERTO', 'LUZ', 'AGUIÑAGA', 'ABUNDIS', '2001-03-16', 'M', 'AUAL010316HGTGBZA8', '05150125879', 'AUAL010316DX6', 4, 0, '', 'RUBI 17 COL:LA ESMERALDA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luzalbert01101@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-09-22', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '2022-09-22', 2, 0, 0, 2, 20, '01257269675', '072362012572696758', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(64, '220064', 'ENRIQUE', '', 'ENRIQUE', 'SANCHEZ', 'MEDINA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-02-16', 3, 21, 1, 41, 93, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(65, '220065', 'MANUEL', 'GUSTAVO', 'MANUEL', 'GAMAS', 'DAVILA', '1964-08-16', 'M', 'GADM640816HDFMVN02', '63816407918', 'GADM640816HB8', 1, 0, '', 'COLINA DE LAS ORTIGAS 139, FRACC. BOULEVARES CP. 53140, NAUCALPAN DE JUAREZ, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lj8772111@gmail.com', 1, 'manuel.gamas@ldrsolutions.com.mx', '', '', '2022-10-11', '0000-00-00', 3, 4, 11, 4, 4, 1, 1, 33, '2022-10-11', 2, 0, 0, 1, 26, '00164292081', '012180001642920811', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(66, '220066', 'BRENDA', 'EDITH', 'BRENDA', 'JUAREZ', 'LOPEZ', '1997-04-21', 'F', 'JULB970421MGTRPR04', '66159723312', 'JULB970421A28', 4, 0, '', 'LEALTAD  615 COL:ARRAS NORTE C.P 37669', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'brenda_edith2197@hotmail.com', 1, 'brenda.juarez@ldrsolutions.com.mx', '', '3338434588', '2022-10-12', '0000-00-00', 3, 12, 25, 23, 48, 1, 1, 20, '2022-10-12', 2, 0, 0, 1, 14, '90361719556', '002210903617195565', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(67, '220067', 'EDUARDO', '', '', 'SIERRA', 'ROJAS', '1997-04-26', 'M', 'SIRE970426HGTRJD06', '67169784765', 'SIRE970426CH3', 4, 0, '', 'LINAJE 224 COL: REAL PROVIDENCIA LEON GTO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sierra.rojas.eduardo@gmail.com', 1, 'e.sierra@ldrsolutions.com.mx', '', '', '2022-10-12', '0000-00-00', 3, 12, 25, 27, 71, 1, 1, 20, '2022-10-12', 2, 0, 0, 1, 26, '01589050267', '012180015890502679', 6, 2, '0000-00-00', '2025-06-09', 0, 202),
(68, '220068', 'GUILLERMO', '', 'GUILLERMO', 'DAMIAN', 'RUIZ', '1991-03-06', 'M', 'DARG910306HJCMZL04', '04139115630', 'DARG910306976', 5, 0, '', 'C IZTACCIHUATL #313 COL:INDECO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'guillermodamian128@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-10-13', '0000-00-00', 3, 12, 25, 22, 45, 1, 1, 8, '2022-10-13', 2, 12815, 14705, 2, 20, '01207546410', '072320012075464102', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(69, '220069', 'ROBERTO', 'ALEJANDRO', 'ROBERTO', 'TALAVERA', 'MARTINEZ', '1978-01-16', 'M', 'TAMR780116HDFLRB04', '11017814002', 'TAMR780116412', 2, 0, '', 'MANUELA RUIZ MDZ 30 INT 240 CARRET MEX TOLUCA TOLLOCA Y 001001 LA ESTACION LERMA C.P. 52006 LERMA, MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'roberto.talavera@ldrsolutions.com.mx', '', '3331423668/3318254265', '2022-10-17', '0000-00-00', 2, 3, 7, 3, 3, 1, 1, 0, '2022-10-17', 2, 0, 0, 1, 26, '01136855922', '072420011368559227', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(70, '220070', 'ARMANDO', 'NEFTALI', 'ARMANDO', 'NUÑEZ', 'MACIAS', '2000-04-21', 'M', 'NUMA000421HJCXCRA1', '52160032372', 'NUMA000421TV5', 4, 0, '', 'DURAZNO 20 COL: SAN PEDRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'brenda_edith2197@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2022-10-26', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2022-10-26', 2, 0, 0, 2, 26, '1580180303', '012362015801803033', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(71, '220071', 'KARLA', 'LETICIA', 'KARLA', 'AZUA', 'MARTINEZ', '1975-09-15', 'F', 'AUMK750915MMCZRR06', '11937402664', 'AUMK750915HL2', 1, 0, '', 'CLL SUR 4 MZ 140 LT 46, NINOS HEROES 1RA SECCION, VALLE DE CHALCO, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sierra.rojas.eduardo@gmail.com', 1, 'administracionpostventa@ldrsolutions.com.mx', '', '3333927995', '2022-10-26', '0000-00-00', 6, 41, 13, 88, 241, 1, 1, 31, '2022-10-26', 2, 0, 0, 1, 14, '90395873058', '002180903958730586', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(72, '220072', 'ERNESTO', '', 'ERNESTO', 'CORNEJO', 'ENRIQUEZ', '1976-07-12', 'M', 'COEE760712HDFRNR01', '11947626898', 'COEE7607127K2', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'guillermodamian128@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-10-27', '2024-06-03', 3, 21, 11, 41, 93, 1, 1, 21, '2022-10-27', 2, 0, 0, 1, 14, '0', '002680903968741476', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(73, '220073', 'JOSE', 'GUADALUPE', 'JOSE', 'LOPEZ', 'MENDEZ', '1982-09-27', 'M', 'LOMG820927HJCPND03', '41048212140', 'LOMG820927CE2', 2, 0, '', 'LA PERLA MAVE #84 COL:LA PERLA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'paumarz70515@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-01', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2022-11-01', 2, 7958, 8370, 2, 20, '01209233068', '072362012092330688', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(74, '220074', 'REYES', 'GUADALUPE', 'REYES', 'VARGAS', 'GONZALEZ', '1997-12-13', 'M', 'VAGR971213HJCRNY02', '63159747938', 'VAGR971213I53', 4, 0, '', 'HIDALGO 69 COL:REAL DE SAN PEDRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'vargasgonzreyesguadalupe@gmail.com', 1, 'reyes.vargas@ldrsolutions.com.mx', '', '', '2022-11-02', '0000-00-00', 6, 39, 24, 80, 404, 1, 1, 6, '2022-11-02', 2, 0, 0, 2, 20, '01255885512', '072362012558855128', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(75, '220075', 'CHRISTIAN', 'NOE', 'CHRISTIAN', 'ESCOBAR', 'FRAUSTO', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(76, '220076', 'JOSE', 'GUADALUPE', 'JOSE', 'SERRANO', 'PARTIDA', '2000-05-12', 'M', 'SEPG000512HJCRRDA9', '06130069278', 'SEPG000512NU1', 4, 0, '', 'ALBORADA 100 COL: LA AURORA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'joseserrano_8@outclookcom', 1, 'jose.serrano@ldrsolutions.com.mx', '', '', '2022-11-04', '0000-00-00', 3, 12, 25, 22, 46, 1, 1, 20, '2022-11-04', 2, 0, 0, 1, 20, '01209432375', '072362012094323758', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(77, '220077', 'JORGE', 'LUIS', 'JORGE', 'MOLINA', 'ESPINOSA', '1994-11-21', 'M', 'MOEJ941121HJCLSR04', '02229478868', 'MOEJ941121GZ9', 5, 0, '', 'CUESTA BLANCA 14 COL: SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jlmolina14@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-07', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '2022-11-07', 2, 0, 0, 2, 20, '01135364360', '072362011353643604', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(78, '220078', 'ALEJANDRO', '', 'ALEJANDRO', 'GALLARDO', 'PIÑA', '1999-05-09', 'M', 'GAPA990509HJCLXL02', '05159900892', 'GAPA9905098S8', 5, 0, '', 'VIRGEN DE GUADALUPE 277 COL:CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pina65070@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-09', '0000-00-00', 3, 12, 25, 23, 49, 1, 1, 34, '2022-11-09', 2, 0, 0, 2, 71, '56895477443', '014362568954774438', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(79, '220079', 'EFRAIN', '', 'EFRAIN', 'ESCOTO', 'RENTERIA', '1990-07-27', 'M', 'EORE900727HJCSNF06', '75069003897', 'EORE900727289', 5, 0, '', 'CEREZO #16 FRACCIONAMIENTO ARBOLEDAS COL: EL CARMEN', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'efrainescoto.r@gmail.com', 1, 'efrain.escoto@ldrsolutions.com.mx', '', '', '2022-11-09', '0000-00-00', 3, 12, 25, 26, 67, 1, 1, 35, '2022-11-09', 2, 12244, 13983, 2, 20, '01257084252', '072362012570842520', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(80, '220080', 'LUIS', 'ARTURO', 'LUIS', 'GONZALEZ', 'LOPEZ', '2002-02-01', 'M', 'GOLL020201HJCNPSA2', '03180294658', 'GOLL020201LW1', 5, 0, '', 'SECNA 1124 COL: INDECO C.P 47474', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Jg3372908@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-09', '0000-00-00', 3, 12, 25, 23, 49, 1, 1, 34, '2022-11-09', 2, 0, 0, 2, 20, '01246588419', '072362012465884198', 3, 1, '0000-00-00', '2025-05-14', 0, 209),
(81, '220081', 'NANCY', 'PAMELA', 'PAMELA', 'TOVAR', 'ORTIZ', '2000-02-13', 'F', 'TOON000213MJCVRNA9', '45160077108', 'TOON000213BE2', 4, 0, '', 'PRIV SANTO TORIBIO #289 COL: CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'psmelili.poto@gmail.com', 1, 'pamela.tovar@ldrsolutions.com.mx', '', '', '2022-11-10', '0000-00-00', 6, 46, 24, 106, 300, 1, 1, 36, '2022-11-10', 2, 11944, 13604, 2, 26, '01500443278', '012180015004432784', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(82, '220082', 'GERARDO', '', 'GERARDO', 'RAFAEL', 'GARCIA', '1985-05-19', 'M', 'RAGG850519HMCFRR04', '92038539422', 'RAGG8505194VA', 2, 0, '', 'GUSTAVO DIAZ ORDAS #27 COL: SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rafael.gerardo@yahoo.no', 1, 'SIN ASIGNAR', '', '', '2022-11-11', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2022-11-11', 2, 8315, 9233, 2, 20, '01252041773', '072362012520417730', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(83, '220083', 'JORGE', 'EFRAIN', 'JORGE', 'NUÑEZ', 'MACIAS', '2002-07-16', 'M', 'NUMJ020716HASXCRA3', '25190287679', 'NUMJ020716TQ8', 4, 0, '', '5 DE MAYO #666 COL :CENTRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'maciasefrain194@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-11', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2022-11-11', 2, 7958, 8370, 2, 20, '01229850566', '072362012298505660', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(84, '220084', 'JOSE', 'NAZARET', 'JOSE', 'YAÑEZ', 'SANCHEZ', '1996-12-10', 'M', 'YASN961210HVZXNZ07', '16169607260', 'YASN961210697', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Jg3372908@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-11-30', '2024-06-06', 6, 50, 13, 115, 329, 1, 1, 24, '2022-11-30', 2, 0, 0, 1, 48, '0', '021180065320629607', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(85, '220085', 'ENRIQUE', '', 'ENRIQUE', 'NAVARRETE', 'GUZMAN', '1966-04-18', 'M', 'NAGE660418HDFVZN02', '03186600171', 'NAGE660418152', 1, 0, '', 'MIGUEL HIDALGO 100 AV REVOLUCION Y PRIV ZARAGOZA GUADALUPE LA CIENEGA C.P. 52004 COLONIA GUADALUPE, MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'psmelili.poto@gmail.com', 1, 'enrique.navarrete@ldrsolutions.com.mx', '', '', '2022-12-05', '0000-00-00', 6, 48, 13, 109, 315, 1, 1, 15, '2022-12-05', 2, 0, 0, 1, 48, '04054608914', '021180040546089143', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(86, '220086', 'ANGELA', 'JANETH', 'ANGELA', 'PEREZ', 'BECERRA', '1997-12-22', 'F', 'PEBA971222MJCRCN01', '08139757861', 'PEBA9712222N4', 2, 0, '', 'PEDRO MORENO #336 COL:SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'angela22129727@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-12-15', '0000-00-00', 3, 12, 25, 24, 60, 1, 1, 7, '2022-12-15', 2, 11744, 13351, 2, 26, '01510733655', '012180015107336554', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(87, '220087', 'BRENDA', 'PAOLA', 'BRENDA', 'LOPEZ', 'ATILANO', '1998-11-04', 'F', 'LOAB981104MGTPTR01', '32169809384', 'LOAB981104S96', 4, 0, '', 'MESA REDONDA #312 COL:CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'brendys1998@hotmail.com', 1, 'compras3@ldrsolutions.com.mx', '', '3315645940', '2022-12-16', '0000-00-00', 3, 12, 25, 21, 41, 1, 1, 37, '2022-12-16', 2, 12244, 13983, 2, 26, '01548987305', '012362015489873058', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(88, '220088', 'JOSE', 'IVAN', 'JOSE', 'MATA', 'DELGADO', '1997-11-30', 'M', 'MADI971130HJCTLV05', '13169743153', 'MADI971130IW9', 4, 0, '', 'PERLA MAVE #81COL: LA PERLA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ivandelgado75310@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-12-28', '0000-00-00', 3, 12, 25, 28, 75, 1, 1, 5, '2022-12-28', 2, 10247, 11495, 2, 20, '01214236821', '072362012142368212', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(89, '220089', 'HECTOR', 'HUGO', 'HECTOR', 'SANCHEZ', 'SANCHEZ', '1986-08-10', 'M', 'SASH860810HJCNNC07', '04048637757', 'SASH860810HB0', 2, 0, '', 'AZAFRAN #116 COL: BUGAMBILIAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'anahugo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2022-12-29', '0000-00-00', 3, 12, 25, 22, 47, 1, 1, 8, '2022-12-29', 2, 9815, 10973, 2, 20, '01229161758', '072362012291617584', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(90, '230090', 'MICHAEL', 'JOSE DE JESUS', 'MICHAEL', 'VALADEZ', 'GONZALEZ', '1988-05-16', 'M', 'VAGM880516HJCLNC09', '04108844145', 'VAGM880516FG6', 2, 0, '', 'RUIZ CORTINEZ #90 COL: SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'michel127@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-05', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2023-01-05', 2, 7958, 8370, 2, 26, '25605268310', '044362256052683101', 6, 2, '0000-00-00', '0000-00-00', 0, 202),
(91, '230091', 'CESAR', '', 'CESAR', 'MORENO', 'CALVILLO', '1979-09-12', 'M', 'MOCC790912HJCRLS03', '04007914635', 'MOCC790912B48', 4, 0, '', 'MARIANO ESCOBEDO #145 SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cesar.moca@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-09', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-01-09', 2, 7958, 8370, 2, 26, '01526918126', '012362015269181261', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(92, '230092', 'LUZ', 'BEATRIZ', 'LUZ', 'BONILLA', 'ALDANA', '1998-04-01', 'F', 'BOAL980401MJCNLZ01', '73169844120', 'BOAL980401SM0', 4, 0, '', 'PADRE PEDRO EZQUEDA #261 COL: CENTRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luzbonillaaldana@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-12', '0000-00-00', 3, 12, 25, 22, 44, 1, 1, 8, '2023-01-12', 2, 7958, 8370, 2, 20, '01216064792', '072362012160647928', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(93, '230093', 'VICTOR', 'MANUEL', 'VICTOR', 'VILLANUEVA', 'RIVERA', '1955-07-22', 'M', 'VIRV550722HVZLVC05', '16785506243', 'VIRV550722IB4', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'anahugo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-12', '2024-06-03', 5, 30, 8, 67, 137, 1, 1, 25, '2023-01-12', 2, 0, 0, 1, 72, '0', '044420256033212556', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(94, '230094', 'ALVARO', '', 'ALVARO', 'PLASCENCIA', 'ARIAS', '1994-02-19', 'M', 'PAAA940219HJCLRL00', '25169461404', 'PAAA940219614', 2, 0, '', '31 DE JULIO DE 1926 #245 COL: CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alvaroplascensia638@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-12', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2023-01-12', 2, 8958, 9978, 2, 20, '01216033994', '072362012160339948', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(95, '230095', 'SERGIO', '', 'SERGIO', 'CHAVARRIA', 'GUERRERO', '1967-12-30', 'M', 'CAGS671230HDFHRR06', '17836702120', 'CAGS671230943', 2, 0, '', 'CONCORDIA OTE 1901 3, SAN JERONIMO CHICAHUALCO CP. 52170, METEPEX, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cesar.moca@gmail.com', 1, 'sergio.chavarria@ldrsolutions.com.mx', '', '3310957944', '2023-01-12', '0000-00-00', 6, 41, 13, 90, 248, 1, 1, 0, '2023-01-12', 2, 0, 0, 1, 14, '70113167082', '002441701131670825', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(96, '230096', 'ROCIO', 'ADRIANA', 'ROCIO', 'VALADEZ', 'MARTINEZ', '1986-03-07', 'F', 'VAMR860307MJCLRC02', '02228622839', 'VAMR8603079B3', 2, 0, '', 'PADRE TRANQUILINO UBIARCO #125 COL:CRISTEROS 47476', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'reyesvaleria024@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-13', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '2023-01-13', 2, 7958, 8370, 2, 20, '01216059798', '072362012160597984', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(97, '230097', 'GRECIA', 'PAULINA', 'GRECIA', 'MARTINEZ', 'GOMEZ', '1999-09-30', 'F', 'MAGG990930HSPRMR09', '27189930244', 'MAGG990930FE8', 1, 0, '', 'AV. PABLO NERUDA 3245 BIS A DEPTO 2, COL. PROVIDENCIA, CP. 44630, GUADALAJARA, JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'coordinacionjuridica@ldrsolutions.com.mx', '', '', '2023-01-16', '0000-00-00', 6, 36, 24, 77, 170, 1, 1, 17, '2023-01-16', 2, 0, 0, 1, 71, '20014032997', '014320200140329971', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(98, '230098', 'GEMA', 'GABRIELA', 'GEMA', 'REYES', 'ROMERO', '1998-10-02', 'F', 'RERG981002MJCYMM00', '62159866292', 'RERG981002JB4', 4, 0, '', 'NICOLAS BRAVO #61COL: LA ESMERALDA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gemagabrielareyesromero@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-17', '0000-00-00', 3, 12, 25, 27, 104, 1, 1, 32, '2023-01-17', 2, 7958, 8370, 2, 20, '01209347901', '072362012093479014', 4, 1, '0000-00-00', '2025-03-27', 0, 209),
(99, '230099', 'MARIA', 'DEL CARMEN', 'MARIA', 'AVILA', 'SANCHEZ', '1997-03-16', 'F', 'AISC970316MJCVNR09', '56169765098', 'AISC9703162Z9', 4, 0, '', 'QUINTANAROO #76 COL: LA ADELITA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ma4699596@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-17', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2023-01-17', 2, 7958, 8370, 2, 26, '01537621200', '012362015376212007', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(100, '230100', 'CLAUDIA', '', 'CLAUDIA', 'MARTINEZ', 'VILLAGRANA', '1988-07-11', 'F', 'MAVC880711MJCRLL02', '04108816457', 'MAVC880711E47', 4, 0, '', 'TABASCO #60 COL: LA ADELITA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'claus8811villagrana@gmail.com', 1, 'claudia.martinez@ldrsolutions.com.mx', '', '', '2023-01-17', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '2023-01-17', 2, 9815, 10972, 2, 26, '01537618374', '012180015376183745', 4, 1, '0000-00-00', '2025-04-03', 0, 209),
(101, '230101', 'ANA', 'ROCIO', 'ANA', 'MEDINA', 'REA', '1998-05-03', 'F', 'MERA980503MJCDXN05', '34169866315', 'MERA980503RK4', 4, 0, '', 'CAMPAMENTO DE FERROCARRIL #24 COL: LA ESTACION', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'anarociomedina87@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-17', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-01-17', 2, 7958, 8370, 2, 20, '01216289483', '072362012162894834', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(102, '230102', 'FEDERICO', '', 'FEDERICO', 'MENDOZA', 'VAZQUEZ', '1974-02-04', 'M', 'MEVF740204HJCNZD02', '51927415425', 'MEVF740204T59', 5, 0, '', 'CHUCHO NAVARRO 255 COL: ALVAREZ DEL CASTILLO C.P 47473,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gemagabrielareyesromero@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-23', '0000-00-00', 3, 12, 25, 31, 79, 1, 1, 5, '2023-01-23', 2, 0, 0, 2, 26, '01130650005', '012010011306500051', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(103, '230103', 'ISSAC', '', 'ISSAC', 'VALADEZ', 'CHAVEZ', '1999-08-06', 'M', 'VACI990806HJCLHS06', '02209935192', 'GABI001111J31', 4, 0, '', 'CALLE PAPAYO #24 COL: COLINAS DEL VALLE C.P 47460', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'i.ssacchavezz233@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-01-23', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2023-01-23', 2, 7968, 8382, 2, 26, '01544510458', '012680015445104582', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(104, '230104', 'SARAHI', '', 'SARAHI', 'FIGUEROA', 'GONZALEZ', '1991-08-01', 'F', 'FIGS910801MDFGNR04', '39099112623', 'FIGS910801KW0', 2, 0, '', 'ROSA DAMASCO 8 5 COL. MOLINO DE ROSAS, CP. 01470, CIUDAD DE MEXICO, ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'claus8811villagrana@gmail.com', 1, 'sarahi.figueroa@ldrsolutions.com.mx', '', '', '2023-01-24', '0000-00-00', 3, 11, 11, 19, 35, 1, 1, 0, '2023-01-24', 2, 0, 0, 1, 26, '01599022861', '012420015990228610', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(105, '230105', 'CHRISTIAN', 'ALEJANDRO', 'CHRISTIAN', 'RAMIREZ', 'AYALA', '2000-12-02', 'M', 'RAAC001202HMNMYHA5', '66160093481', 'RAAC001202HP3', 4, 0, '', 'PASEO SIERRA MORENA 1273 COL: PASEOS DE LA MONTANA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'christian.ramirez.127@hotmail.com', 1, 'christian.ramirez@ldrsolutions.com.mx', '', '', '2023-01-26', '0000-00-00', 3, 12, 25, 25, 65, 1, 1, 20, '2023-01-26', 2, 0, 0, 2, 26, '01586676189', '012533015866761897', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(106, '230106', 'NATALIA', '', 'NATALIA', 'DE ANDA', 'LUGO', '1987-11-29', 'F', 'AALN871129MDFNGT05', '37118705922', 'AALN8711291V8', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fedemendoza74.fm@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-29', '2024-08-15', 9, 58, 10, 123, 342, 1, 1, 26, '2023-01-29', 2, 0, 0, 1, 26, '2785477522', '012180027854775223', 6, 2, '0000-00-00', '0000-00-00', 0, 0);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(107, '230107', 'SARAI', '', 'SARAI', 'GONZALEZ', 'MARQUEZ', '1999-03-26', 'F', 'GOMS990326MJCNRR08', '61169980085', 'GOMS990326GB5', 4, 0, '', 'RICARDO FLORES MAGON 310 COL:SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sarai.marquez260399@gmail.com', 1, 'compras2@ldrsolutions.com.mx', '', '3318503560', '2023-01-30', '0000-00-00', 3, 12, 25, 21, 42, 1, 1, 20, '2023-01-30', 2, 0, 0, 1, 20, '01217609097', '072362012176090970', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(108, '230108', 'NATALY', 'JOSELYN', 'NATALY', 'ARCOS', 'VERA', '1985-01-21', 'F', 'AOVN850121MDFRRT02', '42028503466', 'AOVN850121UC4', 2, 0, '', 'PROL ALBERT EINSTAIN 407 1 JARDINES DE LA CRESPA, CP. 50016, LA CRESPA ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'nataly.arcos@ldrsolutions.com.mx', '', '3328346210', '2023-02-01', '0000-00-00', 6, 41, 13, 88, 242, 1, 1, 31, '2023-02-01', 2, 0, 0, 1, 26, '01148110085', '012180011481100853', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(109, '230109', 'ALFREDO', 'DE JESUS', 'ALFREDO', 'RODRIGUEZ', 'VELOZ', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'christian.ramirez.127@hotmail.com', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 21, 1, 47, 99, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(110, '230110', 'RAUL', '', 'RAUL', 'PADILLA', 'ROJO', '1987-06-07', 'M', 'PARR870607HJCDJL07', '04058746175', 'PARR870607IV8', 2, 0, '', 'PELEE 1127 COL: INDECO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'videojuegosrulas@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-02-13', '0000-00-00', 3, 12, 25, 31, 79, 1, 1, 5, '2023-02-13', 2, 0, 0, 2, 26, '01590478833', '012180015904788334', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(111, '230111', 'JUAN', 'PABLO', 'JUAN', 'GOMEZ', 'CEDILLO', '2000-07-03', 'M', 'GOCJ000703HJCMDNA4', '46160094341', 'GOCJ000703C8A', 4, 0, '', 'PADRE J TRINIDAD RANGEL #140 COL:CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanpacedillo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-02-14', '0000-00-00', 3, 12, 25, 23, 49, 1, 1, 34, '2023-02-14', 2, 10244, 11491, 2, 20, '01220036675', '072362012200366758', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(112, '230112', 'FRANCISCO', 'JAVIER', 'JAVIER', 'VILLALOBOS', 'JUAREZ', '2001-12-03', 'M', 'VIJF011203HJCLRRA3', '08210187418', 'VIJF011203HH7', 5, 0, '', 'RITA PEREZ #47 COL: CENTRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fjchacorta@gmail.com', 1, 'javier.juarez@ldrsolutions.com.mx', '', '', '2023-02-15', '0000-00-00', 3, 12, 25, 27, 69, 1, 1, 30, '2023-02-15', 2, 11744, 13351, 2, 26, '01557650315', '012180015576503154', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(113, '230113', 'JUAN', 'CARLOS', 'JUANC', 'HERNANDEZ', 'LARIOS', '1991-07-11', 'M', 'HELJ910711HHGRRN08', '13129122233', 'HELJ910711KN0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'juanc.hernandez@ldrsolutions.com.mx', '', '', '2023-02-17', '2024-04-02', 6, 50, 13, 111, 323, 1, 1, 38, '2023-02-17', 2, 0, 0, 1, 26, '0', '012290028875252737', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(114, '230114', 'CARMEN', 'CLARISA', 'CLARISA', 'CONTRERAS', 'DIAZ', '1996-08-01', 'F', 'CODC960801MJCNZR06', '68169638357', 'CODC960801M53', 2, 0, '', 'PRIV DEL VALLE #142 COL: LA CAMPANA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'clarissa_contreras@hotmail.com', 1, 'clarisa.contreras@ldrsolutions.com.mx', '', '3328345233', '2023-02-21', '0000-00-00', 6, 46, 24, 106, 301, 1, 1, 39, '2023-02-21', 2, 14000, 16233, 1, 14, '90485138357', '002225904851383570', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(115, '230115', 'ROGELIO', 'DAVID', 'ROGELIO', 'CORONA', 'PALACIOS', '1977-09-06', 'M', 'COPR770906HDFRLG02', '39937711149', 'COPR770906S62', 2, 0, '', 'CTO ISABEL ALLENDE M 25 LT12 B MIGUEL CERVANTES DE SAVED SAN MARCOS HUIXTOCO. C.P. 56643 IXTAPALUCA, MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanpacedillo@gmail.com', 1, 'rogelio.corona@ldrsolutions.com.mx', '', '3339566641', '2023-02-27', '0000-00-00', 6, 38, 13, 79, 193, 1, 1, 0, '2023-02-27', 2, 0, 0, 1, 26, '01503743908', '012180015037439084', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(116, '230116', 'JORGE', 'MANUEL', 'JORGE', 'HEREDIA', 'ALVARADO', '1992-09-07', 'M', 'HEAJ920907HDFRLR02', '94119218736', 'HEAJ9209077G3', 1, 0, '', 'CDA. CLARIN MZ 12 LT 20, COL. RINCONADA DE ARAGON, CP. 55140, ECATEPEC DE MORELOS, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fjchacorta@gmail.com', 1, 'jorge.heredia@ldrsolutions.com.mx', '', '3311440605', '2023-02-27', '0000-00-00', 3, 4, 11, 8, 18, 1, 1, 40, '2023-02-27', 2, 0, 0, 1, 26, '01567514374', '012180015675143745', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(117, '230117', 'SADAO', '', 'SADAO', 'MOCHIZUKI', 'ASCENCIO', '1998-12-23', 'M', 'MOAS981223HJCCSD07', '08189848073', 'MOAS981223NW2', 1, 0, '', 'ONTARIO 548 HERRERA Y CAIRO, CIRCUNVALACION VALLARTA, GUADALAJARA JALISCO CP 45680', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'juridico@ldrsolutions.com.mx', '', '3310111917', '2023-03-01', '0000-00-00', 6, 36, 24, 77, 170, 1, 1, 17, '2023-03-01', 2, 0, 0, 1, 71, '56736409515', '014320567364095151', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(118, '230118', 'CARLOS', 'ALBERTO', 'CARLOS', 'FERNANDEZ', 'LOPERENA', '1974-04-15', 'M', 'FELC740415HDFRPR02', '39017402312', 'FELC740415MP3', 1, 0, '', 'BLVDVIADUCTOMIGUELALEMAN 159 DEP502 ESCANDON IN 11800 MIGUEL HIDALGO, CIUDAD DE MEXICO C.R.11801', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'clarissa_contreras@hotmail.com', 1, 'carlos.fernandez@ldrsolutions.com.mx', '', '3328325137', '2023-03-01', '0000-00-00', 6, 41, 13, 92, 266, 1, 1, 1, '2023-03-01', 2, 0, 0, 1, 14, '41460049936', '002180414600499363', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(119, '230119', 'JORGE', 'PABLO', 'JORGE', 'MARTINEZ', 'PAEZ', '1976-06-29', 'M', 'MAPJ760629HDFRZR05', '39967617398', 'MAPJ760629DF0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-03-01', '2024-07-15', 6, 50, 13, 113, 326, 1, 1, 41, '2023-03-01', 2, 0, 0, 1, 26, '0', '012180026677049768', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(120, '230120', 'ANA', 'LILIA', 'ANA', 'ALTAMIRANO', 'ACUÑA', '1981-11-23', 'F', 'AAAA811123HDFLCN06', '11058108256', 'AAAA811123644', 2, 0, '', 'C. FRANCISCO JAVIER CLAVIJERO 51, 408, COL. TRANSITO, CP. 06820, CUAUHTEMOC, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ana.altamirano@ldrsolutions.com.mx', '', '3328329434', '2023-03-01', '0000-00-00', 6, 41, 13, 95, 277, 1, 1, 1, '2023-03-01', 2, 0, 0, 1, 26, '01155672147', '012180011556721471', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(121, '230121', 'MICHAEL', '', 'MICHAEL', 'TABLA', 'CRUZ', '1996-10-31', 'F', 'TACM961031MMCBRC08', '96149612655', 'TACM961031HQ0', 1, 0, '', 'C. CAMINO REAL 7, BARR DE LA CAPILLA, CP. 56760, AYAPANGO, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'michael.tabla@ldrsolutions.com.mx', '', '', '2023-03-01', '0000-00-00', 3, 4, 11, 5, 13, 1, 1, 89, '2023-03-01', 2, 0, 0, 1, 10, '01321842915', '127424013218429152', 3, 1, '0000-00-00', '2025-05-19', 0, 202),
(122, '230122', 'CRISTIAN', '', 'CRISTIAN', 'ZAVALA', 'MARTINEZ', '1992-08-23', 'M', 'ZAMC920823HJCVRR06', '75129203123', 'ZAMC920823DJ5', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'zavalacristian2308@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-20', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-03-20', 2, 7968, 8382, 2, 20, '01222402890', '072362012224028904', 7, 1, '0000-00-00', '0000-00-00', 0, 0),
(123, '230123', 'PAOLA', 'BERENICE', 'PAOLA', 'MENDEZ', 'SANCHEZ', '1998-04-26', 'F', 'MESP980426MJCNNL03', '18179839909', 'MESP980426CJA', 4, 0, '', 'CALLE EL PUESTO #900-2 COL:LA ESMERALDA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mendezsanchezpaolaberenice@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-03-06', '0000-00-00', 3, 12, 25, 23, 50, 1, 1, 34, '2023-03-06', 2, 7958, 8370, 2, 17, '10470291317', '137362104702913177', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(124, '230124', 'LAURA', 'ISELA', 'LAURA', 'RANGEL', 'AGUILAR', '1999-06-14', 'F', 'RAAL990614MJCNGR02', '18199933278', 'RAAL990614R88', 4, 0, '', 'BAJA CALIFORNIA SUR 116 COL: LA ADELITA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rangueldamian09@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-03-06', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2023-03-06', 2, 0, 0, 2, 14, '90482092143', '002362904820921431', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(125, '230125', 'YESENIA', 'GUADALUPE', 'YESENIA', 'ALCARAZ', 'VAZQUEZ', '1998-05-26', 'F', 'AAVY980526MJCLZS07', '25169873970', 'AAVY980526P20', 4, 0, '', 'UVA #119 COL: LAS HUERTITAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alcarazyesenia08@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-03-06', '0000-00-00', 3, 12, 25, 23, 50, 1, 1, 34, '2023-03-06', 2, 7958, 8370, 2, 20, '01180629500', '072362011806295004', 5, 1, '0000-00-00', '0000-00-00', 0, 338),
(126, '230126', 'OSCAR', 'JONATHAN', 'OSCAR', 'AYALA', 'RIOS', '1996-10-28', 'M', 'AARO961028HGTYSS03', '64169686538', 'AARO961028HU1', 4, 0, '', 'BARCELONA #611 COL: SAN JUAN BOSCO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elementh_1j@hotmail.com', 1, 'oscar.ayala@ldrsolutions.com.mx', '', '', '2023-03-06', '2024-03-20', 3, 21, 25, 51, 103, 1, 1, 20, '2023-03-06', 2, 0, 0, 1, 26, '0', '012225015226262846', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(127, '230127', 'BAUDELIO', '', 'BAUDELIO', 'GARCIA', 'SILVA', '1976-04-30', 'M', 'GASB760430HGRRLD04', '02227656374', 'GASB760430TI1', 2, 0, '', 'PERLA BLISTER 40 COL: PERLA C.P 47472.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'garciayeyo85@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-03-06', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '2023-03-06', 2, 0, 0, 2, 26, '02990583308', '012446029905833086', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(128, '230128', 'JORGE', '', 'JORGE', 'RIOS', 'CONEJO', '1994-10-19', 'M', 'RICJ941019HMCSNR09', '20099419176', 'RICJ941019179', 1, 0, '', 'AV. FELIPE ANGELES 81, COL. MELCHOR MUZQUIZ, CP. 55240, ECATEPEC DE MORELOS, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rangueldamian09@gmail.com', 1, 'jorge.rios@ldrsolutions.com.mx', '', '3312173298', '2023-03-06', '0000-00-00', 10, 62, 28, 127, 349, 1, 1, 43, '2023-03-06', 2, 0, 0, 1, 14, '70164911592', '002180701649115926', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(129, '230129', 'GABRIEL', '', 'GABRIEL', 'QUEZADA', 'NAVARRETE', '1969-12-31', 'M', 'QUNG691231HDFZVB07', '14876919573', 'QUNG691231AQ2', 2, 0, '', 'VALLE COLORADO 12, VALLE DE ARAGON 1 SECC, CP. 57100, NEZAHUALCOYOTL, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alcarazyesenia08@gmail.com', 1, 'gabriel.quezada@fulongma.com.mx', '', '3331829261', '2023-03-15', '0000-00-00', 4, 24, 12, 55, 111, 1, 1, 15, '2023-03-15', 2, 0, 0, 1, 26, '01184460391', '012180011844603913', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(130, '230130', 'MIGUEL', 'ANGEL', 'MIGUEL', 'DE LA CRUZ', 'ESCAMILLA', '1998-10-25', 'M', 'CUEM981025HMCRSG00', '12169869497', 'CUEM981025GG2', 4, 0, '', 'C. HERMENEGILDO J ALDAMA 141, BARR. SAN ISIDRO, CP. 76803, SAN JUAN DEL RIO, QUERETARO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elementh_1j@hotmail.com', 1, 'migueldelacruz@ldrsolutions.com.mx', '', '3328330748', '2023-03-15', '0000-00-00', 6, 41, 26, 91, 387, 1, 1, 23, '2023-03-15', 2, 17100, 20327, 1, 26, '01562606588', '012685015626065885', 4, 1, '0000-00-00', '2025-05-28', 0, 202),
(131, '230131', 'HECTOR', '', 'HECTOR', 'ORTEGA', 'GUTIERREZ', '1985-09-21', 'M', 'OEGH850921HDFRTC03', '02238529610', 'OEGH8509211Y8', 1, 0, '', 'C. JOSEFA ORTIZ DE DOMINGUEZ 507 16, COL. CASA BLANCA, CP. 52175, METEPEC, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'garciayeyo85@gmail.com', 1, 'hector.ortega@jetourmx.com', '', '', '2023-03-16', '0000-00-00', 5, 26, 8, 58, 114, 1, 1, 44, '2023-03-16', 2, 0, 0, 1, 26, '01523968477', '012441015239684774', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(132, '230132', 'DANIEL', '', 'DANIEL', 'FLORES', 'MARTINEZ', '1998-02-26', 'M', 'FOMD980226HMCLRN04', '08199808653', 'FOMD9802262X1', 1, 0, '', 'RTNO. BOSQUE DE ZAPOTES MZ 45 LT 2 CS 8A, FRACC. BOSQUES DEL VALLE, CP. 55717, COACALCO DE BERRIOZABAL, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'daniel.flores@ldrsolutions.com.mx', '', '3339522368', '2023-03-16', '0000-00-00', 6, 37, 13, 78, 180, 1, 1, 45, '2023-03-16', 2, 0, 0, 1, 26, '01563767269', '012180015637672694', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(133, '230133', 'SILVIA', '', 'SILVIA', 'DAZA', 'MORALES', '1976-05-06', 'F', 'DAMS760506HDFZRL02', '11977608568', 'DAMS760506UF2', 1, 0, '', 'COND. ARANJUEZ 12, FRACC. REAL ESMERALDA, CP. 52930, ATIZAPAN DE ZARAGOZA, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'silvia.daza@jetourmx.com', '', '', '2023-03-21', '2024-10-30', 5, 30, 8, 66, 136, 1, 1, 46, '2023-03-21', 2, 0, 0, 1, 26, '01556462621', '012180015564626218', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(134, '230134', 'NANCI', 'SARAHI', 'SARAHI', 'RUIZ', 'CARRASCO', '1997-01-25', 'F', 'RUCN970125HMCZRN06', '90129718707', 'RUCN970125BB5', 1, 0, '', 'AND. DEL CARMEN 32, COL. SANTA LILIA, CP. 53620, NAUCALPAN DE JUAREZ, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miguelescam2510@gmail.com', 1, 'sarahi.ruiz@ldrsolutions.com.mx', '', '3314094076', '2023-03-21', '0000-00-00', 10, 62, 28, 127, 426, 1, 1, 43, '2023-03-21', 2, 0, 0, 1, 26, '01593638216', '012180015936382164', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(135, '230135', 'MIGUEL', 'ANGEL', 'MIGUEL', 'GRANADOS', 'JUAREZ', '1991-11-11', 'M', 'GAJM911111HQTRRG02', '03149118493', 'GAJM911111DKA', 4, 0, '', 'ALCANFORES 11, COL. COYOTILLOS, CP. 76244, COYOTILLOS, QUERETARO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'miguel.granados@ldrsolutions.com.mx', '', '', '2023-03-29', '0000-00-00', 6, 41, 26, 91, 254, 1, 1, 12, '2023-03-29', 2, 17100, 20327, 1, 12, '90001782966', '030225900017829666', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(136, '230136', 'IVAN', 'DE JESUS', 'IVAN', 'GONZALEZ', 'DIAZ', '1983-12-06', 'M', 'GODI831206HDFNZV08', '92058319754', 'GODI831206FI5', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-04-03', '2024-08-09', 5, 30, 8, 65, 133, 1, 1, 47, '2023-04-03', 2, 0, 0, 1, 14, '0', '002180903740580012', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(137, '230137', 'PAMELA', '', 'PAMELA', 'DAHUSS', 'DELGADO', '1989-03-04', 'F', 'DADP890304MJCHLM04', '04128955228', 'DADP890304I94', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'pamela.dahuss@jetourmx.com', '', '', '2023-04-03', '2024-04-05', 5, 30, 8, 65, 134, 1, 1, 48, '2023-04-03', 2, 0, 0, 1, 71, '56640366477', '014320566403664774', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(138, '230138', 'LUZ', 'ELENA', 'LUZ', 'NIETO', 'RANGEL', '1988-02-09', 'F', 'NIRL880209MNLTNZ05', '43058828534', 'NIRL880209DS6', 2, 0, '', 'C. MONTES PERINEOS 225, COL. INFONAVIT MONTERREAL, CP. 66056, GENERAL ESCOBEDO, NUEVO LEON.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'luz.nieto@ldrsolutions.com.mx', '', '3332504976', '2023-04-03', '0000-00-00', 6, 41, 27, 86, 218, 1, 1, 49, '2023-04-03', 2, 14000, 16233, 1, 10, '01306542035', '127580013065420358', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(139, '230139', 'JOSE', 'MISSAEL', 'MISSAEL', 'FERNANDEZ', 'GASPAR', '1994-09-03', 'M', 'FEGM940903HDFRSS02', '39139425365', 'FEGM940903CG6', 1, 0, '', 'C. DR JIMENEZ 34 B 103, COL. DOCTORES, CP. 06720, CUAUHTEMOC, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'migueangel.gjuarez@gmail.com', 1, 'missael.fernandez@ldrsolutions.com.mx', '', '3318627220', '2023-04-03', '0000-00-00', 10, 62, 28, 127, 350, 1, 1, 43, '2023-04-03', 2, 0, 0, 1, 26, '02978663041', '012180029786630418', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(140, '230140', 'JOSE', 'LEONEL', 'JOSE', 'VENADO', 'MORALES', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-02-10', 3, 21, 1, 52, 105, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(141, '230141', 'JESUS', 'MANUEL', 'JESUS', 'AMEZQUITA', 'DELGADO', '1998-01-17', 'M', 'AEDJ980117HNTMLS07', '48169885992', 'AEDJ980117L61', 4, 0, '', 'LA MERCED 27 COL: MUNICIPIO LIBRE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chuma9817@gmail.com', 1, 'jesus.amezquita@ldrsolutions.com.mx', '', '3314115727', '2023-04-10', '0000-00-00', 3, 11, 25, 19, 36, 1, 1, 45, '2023-04-10', 2, 0, 0, 2, 26, '01570143807', '012362015701438074', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(142, '230142', 'JESSICA', 'BETSABE', 'JESSICA', 'PICHARDO', 'PEREZ', '1994-12-14', 'F', 'PIPJ941214MMCCRS06', '92129433204', 'PIPJ941214DD6', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nietoluzelena141@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-04-17', '2024-05-15', 9, 58, 10, 123, 342, 1, 1, 26, '2023-04-17', 2, 0, 0, 1, 26, '0', '012180015027998522', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(143, '230143', 'OSCAR', 'DAVID', 'OSCAR', 'PEREZ', 'GARCIA', '1966-11-01', 'M', 'PEGO661101HDFRRS03', '89866633947', 'PEGO661101PC2', 1, 0, '', 'U. PRESIDENTE M MZ1 D202 ED H12, COL. PRESIDENTE MADERO, CP. 02430, AZCAPOTZALCO, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'oscar.perez@ldrsolutions.com.mx', '', '3353316536', '2023-04-17', '0000-00-00', 6, 41, 13, 88, 242, 1, 1, 31, '2023-04-17', 2, 0, 0, 1, 26, '01524147599', '012180015241475999', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(144, '230144', 'KARLA', 'BERENICE', 'KARLA', 'ALDANA', 'HERNANDEZ', '1986-05-01', 'F', 'AAHK860501MDFLRR06', '11028605688', 'AAHK860501BZ6', 1, 0, '', 'C. CELESTINO PEREZ 27, COL. MEMETLA, CP. 05330, CUAJIMALPA DE MORELOS, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'karla.aldana@ldrsolutions.com.mx', '', '3320345800', '2023-05-02', '0000-00-00', 6, 35, 13, 74, 153, 1, 1, 52, '2023-05-02', 2, 0, 0, 1, 72, '25604001879', '044180256040018795', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(145, '230145', 'KATIA', 'BERENICE', 'KATIA', 'MENDOZA', 'JARAMILLO', '1994-12-05', 'F', 'MEJK941205MDFNRT01', '94129487024', 'MEJK941205KM3', 1, 0, '', 'C. LAGO DE ZEMPOALA MZA. 8 LT. 7, COL. LLANO DE LOS BAEZ, CP. 55055, ECATEPEC DE MORELOS, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chuma9817@gmail.com', 1, 'katia.mendoza@ldrsolutions.com.mx', '', '', '2023-05-02', '0000-00-00', 6, 41, 13, 95, 279, 1, 1, 53, '2023-05-02', 2, 0, 0, 1, 26, '01581997541', '012180015819975410', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(146, '230146', 'TERESA', '', 'TERESA', 'HERNANDEZ', 'ROSALES', '1996-03-06', 'F', 'HERT960306MDFRSR00', '45119630775', 'HERT9603067T5', 4, 0, '', 'C. PIRUL MZ. 15 LT. 1, COL. SAN MIGUEL TEONTONGO, CP. 09630, IZTAPALAPA, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'teresa.hernandez@ldrsolutions.com.mx', '', '3310188113 / 33395245', '2023-05-02', '0000-00-00', 6, 46, 13, 106, 302, 1, 1, 0, '2023-05-02', 2, 0, 0, 1, 26, '01588038930', '012580015880389305', 3, 1, '0000-00-00', '2025-06-19', 0, 202),
(147, '230147', 'MAURICIO', '', 'MAURICIO', 'DAVILA', 'OROZCO', '2004-01-26', 'M', 'DAOM040126HMCVRRA1', '19230420432', 'DAOM0401267I0', 5, 0, '', 'PADRE PEDRO TORRES ESQUEDA #312, COL: CRISTEROS, C.P 47472.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-05-08', '0000-00-00', 3, 12, 25, 24, 55, 1, 1, 7, '2023-05-08', 2, 8958, 9978, 2, 20, '01228929223', '072362012289292238', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(148, '230148', 'RAUL', 'ALBERTO', 'RAUL', 'MONTEMAYOR', 'TOVAR', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-02-28', 3, 21, 1, 50, 102, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(149, '230149', 'ANDREE', '', 'ANDREE', 'ROBLES', 'ALVAREZ', '1998-01-24', 'M', 'ROAA980124HMCBLN04', '64159860796', 'ROAA980124DX8', 1, 0, '', 'AV. DE LOS PARAJES SN PALMA FINA, B403, UH TLAYAPA, CP. 54120, TLALNEPANTLA, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'andree.robles@ldrsolutions.com.mx', '', '3316057387', '2023-05-16', '0000-00-00', 2, 2, 7, 2, 2, 1, 1, 28, '2023-05-16', 2, 0, 0, 1, 26, '01572489044', '012180015724890444', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(150, '230150', 'PALOMA', 'LIZBETH', 'PALOMA', 'TREJO', 'ONTIVEROS', '2002-09-15', 'F', 'TEOP020915MGTRNLA9', '74170271881', 'TEOP020915M78', 4, 0, '', 'SALVADOR DE ALBA MARTIN #203 COL: LAS PALMAS, C.P 47440.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-05-16', '0000-00-00', 3, 12, 25, 22, 44, 1, 1, 8, '2023-05-16', 2, 7958, 8370, 2, 20, '01229875699', '072362012298756998', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(151, '230151', 'ABIDAN', '', 'ABIDAN', 'NAVARRETE', 'MENDOZA', '1982-11-13', 'M', 'NAMA821113MDFVNB04', '20048201386', 'NAMA821113N17', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mdavilaorozco255@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-05-16', '2024-05-31', 6, 50, 13, 114, 327, 1, 1, 54, '2023-05-16', 2, 0, 0, 1, 26, '0', '012180029557127341', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(152, '230152', 'ISAAC', '', 'ISAAC', 'FRAGOSO', 'VILLAGRAN', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-03-01', 6, 50, 1, 114, 327, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(153, '230153', 'JUAN', 'ANTONIO', 'JUAN', 'GONZALEZ', 'TORRES', '1978-10-26', 'M', 'GOTJ781026HJCNRN07', '02237844366', 'GOTJ781026CF3', 5, 0, '', 'AVENIDA #4 , COL : EL IXTLE C.P 47536.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-05-22', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-05-22', 2, 7958, 8370, 2, 20, '01230566957', '072362012305669570', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(154, '230154', 'EVANGELINA', '', 'EVANGELINA', 'BALTAZAR', 'ZERMEÑO', '1987-01-21', 'F', 'BAZE870121MJCLRV09', '05168718525', 'BAZE870121G49', 2, 0, '', 'BERNALEJO #7 , COL: LA ESMERALDA C.P 47472.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lizethguerralove@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-05-22', '2000-01-01', 3, 21, 25, 48, 100, 1, 1, 0, '2023-05-22', 2, 0, 0, 2, 20, '1230562472', '072362012305624722', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(155, '230155', 'EDUARDO', '', 'EDUARDO', 'RODRIGUEZ', 'VAZQUEZ', '1999-07-08', 'M', 'ROVE990708HMCDZD07', '08149960380', 'ROVE990708MZ8', 1, 0, '', 'MAR IRLANDA 14 INT. 3 TACUBA, MIGUEL HIDALGO, MEXICO 11410', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'eduardo.rodriguez@ldrsolutions.com.mx', '', '3339565498', '2023-05-24', '0000-00-00', 6, 41, 13, 88, 243, 1, 1, 18, '2023-05-24', 2, 0, 0, 1, 10, '00164832417', '127180001648324173', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(156, '230156', 'TOMAS', 'ISAAC', 'ISAAC', 'GOMEZ', 'MENDEZ', '1995-10-22', 'M', 'GOMT951022HDFMNM09', '42109519969', 'GOMT951022NJ6', 1, 0, '', 'BAHIA DE BALLENAS 25 9 VERONICA ANZURES MIGUEL HIDALGO DISTRITO FEDERAL C.P. 11300, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'isaac.gomez@ldrsolutions.com.mx', '', '3339559262', '2023-05-24', '0000-00-00', 6, 41, 27, 86, 219, 1, 1, 55, '2023-05-24', 2, 0, 0, 1, 14, '70121912358', '002180701219123584', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(157, '230157', 'ERICK', '', 'ERICK', 'SANABRIA', 'GARCIA', '1991-04-01', 'M', 'SAGE910401HDFNRR02', '45099154556', 'SAGE910401RY5', 1, 0, '', 'TOTONACAS 6 3 AV TEZOZOMOC Y PIMAS TEZOZOMOC C.P. 02459 AZCAPOTZALCO, D.F', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'marthalopezmontan@gmail.com', 1, 'erick.sanabria@ldrsolutions.com.mx', '', '', '2023-05-25', '0000-00-00', 6, 39, 13, 81, 200, 1, 1, 42, '2023-05-25', 2, 0, 0, 1, 26, '01552045222', '012180015520452222', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(158, '230158', 'ILSE', '', 'ILSE', 'WAGNER', 'RAYGOZA', '1985-01-02', 'F', 'WARI850102MASGYL09', '51018534852', 'WARI850102MA5', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'evangelinabaltazar95@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-05-26', '2024-08-15', 9, 58, 10, 123, 342, 1, 1, 26, '2023-05-26', 2, 0, 0, 1, 20, '1221487069', '072580012214870698', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(159, '230159', 'WALDO', 'DAVID', 'WALDO', 'MENDOZA', 'HERNANDEZ', '1976-12-29', 'M', 'MEHW761229HDFNRL01', '28967611873', 'MEHW761229NF8', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-05-26', '2024-08-07', 9, 58, 10, 123, 342, 1, 1, 26, '2023-05-26', 2, 0, 0, 1, 26, '0', '012180026004166065', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(160, '230160', 'YANETH', '', 'YANETH', 'REA', 'ATILANO', '1984-12-27', 'F', 'REAY841227MJCXTN02', '04028495168', 'REAY841227KH7', 2, 0, '', 'POPOCATEPETL #282, COL: INDECO C.P 47473.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-05-30', '2000-01-01', 3, 21, 25, 45, 97, 1, 1, 9, '2023-05-30', 2, 0, 0, 2, 26, '0', '012680015950604836', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(161, '230161', 'ALFREDO', '', 'ALFREDO', 'PUCHETA', 'CERON', '1966-02-18', 'M', 'PUCA660218HDFCRL05', '01846510442', 'PUCA660218FE0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-06-01', '2024-06-19', 3, 21, 11, 41, 93, 1, 1, 21, '2023-06-01', 2, 0, 0, 1, 20, '1231869664', '072180012318696644', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(162, '230162', 'MIGUEL', 'ANGEL', 'MIGUEL', 'URIBE', 'LANDOIS', '1996-07-01', 'M', 'UILM960701HHGRNG09', '13119619651', 'UILM960701UE9', 1, 0, '', 'C. 5 DE MAYO 502, COL. SANTA JULIA, CP. 42080, PACHUCA DE SOTO, HIDALGO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'miguel.uribe@ldrsolutions.com.mx', '', '3318955950', '2023-06-12', '0000-00-00', 6, 48, 13, 53, 106, 1, 1, 56, '2023-06-12', 2, 0, 0, 1, 26, '01587935580', '012290015879355805', 4, 1, '0000-00-00', '2025-06-09', 0, 209),
(163, '230163', 'FRANCISCO', 'ALFONSO', 'FRANCISCO', 'SALINAS', 'JUAREZ', '1975-11-13', 'M', 'SAJF751113HDFLRR08', '07987503930', 'SAJF751113T26', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'francisco.salinas@jetourmx.com', '', '', '2023-06-12', '2024-04-12', 5, 30, 8, 68, 138, 1, 1, 1, '2023-06-12', 2, 0, 0, 1, 14, '10041657869', '002180701965448694', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(164, '230164', 'MARIA', 'GUADALUPE DE JESUS', 'MARIA', 'GUERRA', 'VELAZQUEZ', '2003-10-09', 'F', 'GUVG031009MJCRLDA7', '56170340949', 'GUVG031009TJ0', 4, 0, '', 'PLUTARCO CONTRERAS #303 COL: CRISTEROS C.P 47472.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lupitavelazquez031@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-12', '2024-08-05', 3, 21, 25, 48, 100, 1, 1, 0, '2023-06-12', 2, 0, 0, 2, 20, '1233047569', '072362012330475690', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(165, '230165', 'LORENZO', '', 'LORENZO', 'DUARTE', 'RIOS', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 1, 1, 1, 1, 1, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(166, '230166', 'ANGEL', 'DE JESUS', 'ANGEL', 'PABLO', 'GOMEZ', '1999-04-03', 'M', 'PAGA990403HGTBMN02', '08139985884', 'PAGA990403EN1', 4, 0, '', 'BOSQUES DE ENCINO 141 COL :VILLAS DE ESMEFRALDA C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'angelgomez9963@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-21', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2023-06-21', 2, 0, 0, 2, 20, '01227903879', '072362012279038790', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(167, '230167', 'FRANCISCO', 'JAVIER', 'FRANCISCO', 'CLAUDIO', 'BECERRA', '1972-07-11', 'M', 'CABF720711HJCLCR05', '20927222701', 'CABF720711TDA', 3, 0, '', 'LOPEZ DELEGASPI#5 COL. SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'javierarrabalerito@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2023-06-26', 2, 7958, 8370, 2, 26, '01542259244', '012362015422592448', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(168, '230168', 'MARIA', 'GUADALUPE', 'MARIA', 'PEDROZA', 'BANDA', '1981-03-04', 'F', 'PEBG810304MJCDND07', '04988136463', 'PEBG810304AS1', 6, 0, '', 'PADRE MIGUEL GOMEZ LOZA #136 COL. CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lupita.banda0481@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-06-26', 2, 7958, 8370, 2, 20, '01234648486', '072362012346484866', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(169, '230169', 'YENIFER', '', 'YENIFER', 'MAGDALENO', 'GOMEZ', '1981-02-17', 'F', 'MAGY810217MJCGMN05', '54978132162', 'MAGY8102171PA', 4, 0, '', 'VALLE DE GUADALUPE 119 COL. HUERTITAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'magdalenoyenifer39@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-06-26', 2, 7958, 8370, 2, 26, '01598770232', '012362015987702320', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(170, '230170', 'JUAN', 'DANIEL', 'JUAN', 'RODRIGUEZ', 'BURCIAGA', '1997-11-24', 'M', 'ROBJ971124HDGDRN05', '01139737801', 'ROBJ971124UA1', 4, 0, '', 'PRIV. NUEVOS AIRES 135 COL. JACALE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '092018ima410002@grupocedva.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '2023-06-26', 2, 0, 0, 2, 20, '01251018107', '072362012510181076', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(171, '230171', 'CARLOS', '', 'CARLOS', 'MIRANDA', 'MIRANDA', '1986-08-23', 'M', 'MIMC860823HJCRRR04', '02158692059', 'MIMC860823DK0', 2, 0, '', 'RITA PEREZ 272 COL. SAN MIGUEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miranda3@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 27, 73, 1, 1, 32, '2023-06-26', 2, 0, 0, 2, 26, '01526692497', '012180015266924975', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(172, '230172', 'CAMILA', 'YAZMIN', 'CAMILA', 'LOPEZ', 'ROBLEDO', '2002-06-13', 'F', 'LORC020613MJCPBMA9', '03180295226', 'LORC020613Q8A', 4, 0, '', 'CALLEJON DE LOS RUFINOS EL REFUGIO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'camilayaz.lr02@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-26', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-06-26', 2, 7958, 8370, 2, 26, '06584449438', '021362065844494385', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(173, '230173', 'FERNANDA', 'GUADALUPE', 'FERNANDA', 'DE ALBA', 'SANTOYO', '2004-06-17', 'F', 'AASF040617MJCLNRA8', '58190478097', 'AASF040617I30', 4, 0, '', 'PADRE RODRIGO GONZALEZ #292 COL. CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'santoyodealba06@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-27', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2023-06-27', 2, 7958, 8370, 2, 20, '01234714390', '072362012347143902', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(174, '230174', 'MARIA', 'CONCEPCION', 'MARIA', 'PLASCENCIA', 'MORENO', '1991-12-14', 'F', 'PAMC911214MJCLRN04', '75119104315', 'PAMC911214DD9', 5, 0, '', 'VALLE DE GUADALUPE #122 COL. HUERTITAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'concepcionplascencia12@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-27', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '2023-06-27', 2, 7958, 8370, 2, 26, '01529402040', '012362015294020407', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(175, '230175', 'JOSE', 'DE JESUS', 'JOSE', 'MEJIA', 'DELGADO', '1978-07-12', 'M', 'MEDJ780712HJCJLS09', '54947830300', 'MEDJ780712UI2', 2, 0, '', 'FRAY SEBASTIAN #118 COL. TEPEYAC', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jmejiafelgado@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-29', '0000-00-00', 3, 12, 25, 21, 43, 1, 1, 37, '2023-06-29', 2, 9459, 10561, 2, 26, '01574188878', '012225015741888789', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(176, '230176', 'ALEJANDRO', '', 'ALEJANDRO', 'TABAREZ', 'TELLEZ', '2005-05-08', 'M', 'TATA050508HJCBLLA5', '25230528249', 'TATA050508J28', 4, 0, '', 'IXLACIHUATL COL. INDECO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandrotabarez006@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-30', '2024-07-12', 3, 21, 25, 47, 99, 1, 1, 0, '2023-06-30', 2, 0, 0, 2, 20, '1235199855', '072362012351998554', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(177, '230177', 'TANIA', 'SELENA', 'TANIA', 'PEDROZA', 'ROMO', '1995-03-07', 'F', 'PERT950307MJCDMN06', '04139565040', 'PERT9503076WA', 4, 0, '', 'MARTIN DE SANTIAGO #104 COL. CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'taniaselena.pedroza@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-06-30', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-06-30', 2, 7958, 8370, 2, 20, '01246288812', '072362012462888126', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(178, '230178', 'JUAN', 'DANIEL', 'JUAN', 'LOPEZ', 'GALLARDO', '2001-05-31', 'M', 'LOGJ010531HJCPLNA5', '05130127599', 'LOGJ010531JDA', 4, 0, '', 'PEDRO ESQUEDA TORIBIO ROMO COL: MARTIRES CRISTEROS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juandalopega@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-07-03', '2024-08-22', 3, 21, 25, 46, 98, 1, 1, 35, '2023-07-03', 2, 10247, 11495, 2, 26, '01570006233', '012180015700062335', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(179, '230179', 'RAUL', '', 'RAUL', 'CARRASCO', 'SANCHEZ', '1972-08-20', 'M', 'CASR720820HOCRNL00', '20967209725', 'CASR72082068A', 1, 0, '', 'CL. CERRO DE LA SILLA NO.97, DR. JORGE JIMENEZ CANTU, CP. 54190, TLALNEPANTLA, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jmejiafelgado@gmail.com', 1, 'raul.carrasco@jetourmx.com', '', '3322551962', '2023-07-11', '0000-00-00', 6, 39, 13, 81, 201, 1, 1, 11, '2023-07-11', 2, 0, 0, 1, 26, '02976812635', '012905029768126358', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(180, '230180', 'JOSE', 'DE JESUS', 'JOSE', 'BARAJAS', 'GARCIA', '1990-08-09', 'M', 'BAGJ900809HJCRRS06', '75089032405', 'BAGJ900809V95', 2, 0, '', 'NUESTRA SENORA DE LA LUZ 20 COL: LAURELES DEL CAMPANARIO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'bjosedejesus926@gmail.com', 1, 'jesus.barajas@ldrsolutions.com.mx', '', '', '2023-07-17', '0000-00-00', 6, 39, 24, 80, 404, 1, 1, 6, '2023-07-17', 2, 0, 0, 2, 26, '06295214136', '021362062952141361', 3, 1, '0000-00-00', '2025-06-27', 0, 202),
(181, '230181', 'ROCIO', 'LILIANA', 'ROCIO', 'CHAVEZ', 'PACHECO', '1987-10-22', 'F', 'CAPR871022MNLHCC03', '90058721920', 'CAPR871022D6A', 1, 0, '', 'AV LAS COLONIAS 6 E EDIF A DEPTO 302 COL LAS COLONIAS, CP. 52953, ATIZAPAN DE ZARAGOZA, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'taniaselena.pedroza@gmail.com', 1, 'rocio.chavez@ldrsolutions.com.mx', '', '', '2023-07-17', '0000-00-00', 6, 46, 13, 106, 303, 1, 1, 25, '2023-07-17', 2, 0, 0, 1, 26, '01500107425', '012180015001074255', 6, 2, '0000-00-00', '2025-06-09', 0, 708),
(182, '230182', 'DAVID', 'ESTEBAN', 'DAVID', 'RAYA', 'ESQUIVEL', '2001-12-03', 'M', 'RAED011203HJCYSVA5', '02190173258', 'RAED01120383A', 4, 0, '', 'IRIS 83 COL: LAURELES DEL CAMPANARIO C.P 47530', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'davidesraes@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-07-24', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '2023-07-24', 2, 0, 0, 2, 20, '01238173650', '072362012381736508', 5, 1, '0000-00-00', '0000-00-00', 0, 338),
(183, '230183', 'MARCO', 'ANTONIO', 'MARCO', 'RAMIREZ', 'GUERRA', '1963-01-20', 'M', 'RAGM630120HDFMRR03', '11916310268', 'RAGM630120HH8', 1, 0, '', 'C. JUAN SARABIA 260, COL. NUEVA SANTA MARIA, CP. 02800, AZCAPOTZALCO, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'marco.ramirez@ldrsolutions.com.mx', '', '', '2023-07-24', '0000-00-00', 3, 8, 11, 14, 24, 1, 1, 57, '2023-07-24', 2, 0, 0, 1, 20, '01179239190', '072180011792391906', 6, 2, '0000-00-00', '2025-06-26', 0, 202),
(184, '230184', 'JORGE', '', 'JORGE', 'HERNANDEZ', 'SANCHEZ', '1982-01-26', 'M', 'HESJ820126HMCRNR06', '37078201300', 'HESJ8201262H1', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'bjosedejesus926@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-07-24', '2024-07-03', 6, 50, 13, 113, 326, 1, 1, 3, '2023-07-24', 2, 0, 0, 1, 14, '0', '002180903828818091', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(185, '230185', 'ALEJANDRO', '', 'ALEJANDRO', 'LARA', 'BOCANEGRA', '2001-06-25', 'M', 'LABA010625HJCRCLA0', '05130114977', 'LABA0106254JA', 4, 0, '', 'EL PUESTO 225 #11 COL: LA ESMERALDA C.P 37360', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandro.larabocanegra@gmail.com', 1, 'alejandro.lara@ldrsolutions.com.mx', '', '', '2023-07-24', '0000-00-00', 3, 12, 25, 27, 69, 1, 1, 30, '2023-07-24', 2, 11744, 13351, 2, 26, '01575389744', '012180015753897447', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(186, '230186', 'RAYMUNDO', 'DANIEL', 'RAYMUNDO', 'AYALA', 'PORTILLO', '1998-08-06', 'M', 'AAPR980806HMCYRY08', '14139855192', 'AAPR9808068J5', 4, 0, '', 'C. JALPAN 32 30, FRACC. GRANJAS BANTHI, CP. 76805, SAN JUAN DEL RIO, QUERETARO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'davidesraes@gmail.com', 1, 'raymundo.ayala@ldrsolutions.com.mx', '', '3318959851', '2023-07-31', '0000-00-00', 6, 41, 26, 91, 253, 1, 1, 122, '2023-07-31', 2, 17100, 20327, 1, 26, '01588236523', '012685015882365235', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(187, '230187', 'FABIAN', 'EDUARDO', 'FABIAN', 'MARTINEZ', 'ARANA', '2002-01-20', 'M', 'MAAF020120HDFRRBA0', '10220231541', 'MAAF020120CI0', 4, 0, '', 'AV. PASEO DE LOS ALCATRACES 700 COL.ZAKIA. QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eduardoarana999@gmail.com', 1, 'fabian.martinez@ldrsolutions.com.mx', '', '3318940369', '2023-07-31', '0000-00-00', 6, 41, 26, 91, 255, 1, 1, 23, '2023-07-31', 2, 0, 0, 1, 26, '01595297926', '012680015952979268', 3, 1, '0000-00-00', '2025-05-29', 0, 202),
(188, '230188', 'JENNY', 'ATZIRI', 'JENNY', 'ABED', 'SERRANO', '1995-01-07', 'F', 'AESJ950107MMCBRN00', '94109557374', 'AESJ950107B22', 1, 0, '', 'C. BOSQUE DE HUNGRIA 20, COL. BOSQUES DE ARAGON, CP. 57170, NEZAHUALCOYOTL, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'jenny.abed@ldrsolutions.com.mx', '', '', '2023-07-31', '0000-00-00', 6, 49, 13, 110, 317, 1, 1, 58, '2023-07-31', 2, 0, 0, 1, 20, '00495371766', '072180004953717666', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(189, '230189', 'MARCO', 'OCTAVIO', 'MARCO', 'BALBUENA', 'ESTRADA', '1975-01-29', 'M', 'BAEM750129HMCLSR06', '16987502552', 'BAEM750129SA3', 1, 0, '', 'CARLOS A. VELEZ 708, COL. CUAUHTEMOC, CP. 50130, TOLUCA, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandro.larabocanegra@gmail.com', 1, 'marco.balbuena@ldrsolutions.com.mx', '', '3312945435', '2023-08-01', '0000-00-00', 3, 4, 11, 4, 5, 1, 1, 21, '2023-08-01', 2, 0, 0, 1, 48, '04068470368', '021420040684703685', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(190, '230190', 'MIGUEL', 'ANGEL', 'MIGUEL', 'VELASCO', 'MARTINEZ', '1970-10-24', 'M', 'VEMM701024HDFLRG06', '39927036895', 'VEMM701024L72', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'raymuneitor@gmail.com', 1, 'miguel.velasco@ldrsolutions.com.mx', '', '', '2023-08-01', '0000-00-00', 6, 32, 13, 71, 145, 1, 1, 0, '2023-08-01', 2, 500000, 751602, 1, 20, '00200898270', '072180002008982704', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(191, '230191', 'VALERIA', '', 'VALERIA', 'MALAGON', 'CASTILLO', '1999-04-15', 'F', 'MACV990415MDFLSL09', '96149967380', 'MACV9904159V4', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eduardoarana999@gmail.com', 1, 'valeria.malagon@ldrsolutions.com.mx', '', '', '2023-08-01', '0000-00-00', 10, 62, 28, 127, 352, 1, 1, 43, '2023-08-01', 2, 0, 0, 1, 71, '56819853623', '014180568198536232', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(192, '230192', 'EMMANUEL', '', 'EMMANUEL', 'VARGAS', 'LOPEZ', '1990-05-29', 'M', 'VALE900529HMCRPM04', '96099010009', 'VALE900529DM8', 1, 0, '', 'AV. PLAZA MAYOR MZ 7 LT 34, PUEBLO NUEVO, CHALCO, CP. 56644, ESTADO DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'emmanuel.vargas@ldrsolutions.com.mx', '', '3316050899', '2023-08-01', '0000-00-00', 10, 62, 28, 127, 353, 1, 1, 4, '2023-08-01', 2, 0, 0, 1, 71, '56854196139', '014180568541961399', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(193, '230193', 'LUIS', 'ANGEL', 'LUIS', 'LOPEZ', 'ESTRADA', '1997-01-09', 'M', 'LOEL970109HJCPSS05', '57159771542', 'LOEL970109P72', 5, 0, '', 'CALLE 2DA DE BARILLEROS #556 COL: EL CARMEN C.P47490', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luislopezestrada1@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-08-04', '0000-00-00', 3, 12, 25, 24, 55, 1, 1, 7, '2023-08-04', 2, 7958, 8370, 2, 71, '56867391120', '', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(194, '230194', 'ISRAEL', '', 'ISRAEL', 'MEJIA', 'GONZALEZ', '1978-11-30', 'M', 'MEGI781130HDFJNS04', '39957840018', 'MEGI781130PSA', 1, 0, '', 'C. FRANCISCO GONZALEZ BOCANEGRA 6, COL. LA CANADA, CP. 01268, ALVARO OBREGON, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'israel.mejia@ldrsolutions.com.mx', '', '', '2023-08-07', '0000-00-00', 6, 36, 13, 76, 166, 1, 1, 59, '2023-08-07', 2, 0, 0, 1, 26, '01539857435', '012180015398574358', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(195, '230195', 'PAULINA', 'VIRIDIANA', 'PAULINA', 'MACHUCA', 'NUÑEZ', '1988-06-06', 'F', 'MANP880606MJCCXL00', '04098836804', 'MANP8806061X2', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-08-14', '2024-04-30', 5, 30, 8, 65, 133, 1, 1, 60, '2023-08-14', 2, 0, 0, 1, 26, '0', '012320015300017702', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(196, '230196', 'LAURA', 'ELIZABETH', 'LAURA', 'RODRIGUEZ', 'LOPEZ', '1991-01-13', 'F', 'ROLL910113MMCDPR08', '26149124682', 'ROLL9101138U6', 1, 0, '', 'AV CHAVERO 40 13 JUAN ALVAREZ Y GUILLERMO PRIETO  CAMPAMENTO 2 DE OCTUBRE  IZTACALCO CIUDAD DE MEXICO CP. 08930', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'laura.rodriguez@ldrsolutions.com.mx', '', '3310131156', '2023-08-14', '0000-00-00', 6, 41, 13, 90, 249, 1, 1, 1, '2023-08-14', 2, 0, 0, 1, 26, '01568865795', '012180015688657956', 3, 1, '0000-00-00', '2025-05-28', 0, 209),
(197, '230197', 'GERARDO', 'JAVIER', 'GERARDO', 'CANALES', 'FRANCO', '1993-12-29', 'M', 'CAFG931229HDFNRR06', '20129320832', 'CAFG931229689', 1, 0, '', 'LEON CAVALLO 115 CARUZO Y TETRAZZINI COL. VALLEJO CIUDAD DE MEXICO  C.P. 07870', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luislopezestrada1@gmail.com', 1, 'gerardo.canales@jetourmx.com', '', '', '2023-08-14', '0000-00-00', 6, 41, 13, 95, 280, 1, 1, 53, '2023-08-14', 2, 0, 0, 1, 26, '01572558524', '012180015725585240', 6, 2, '0000-00-00', '2025-05-23', 0, 485),
(198, '230198', 'VIRIDIANA', '', 'VIRIDIANA', 'BARAJAS', 'DE LA FUENTE', '1986-04-18', 'F', 'BAFV860418MDFRNR03', '92038634603', 'BAFV860418Q37', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-08-14', '2024-06-21', 6, 50, 13, 114, 327, 1, 1, 58, '2023-08-14', 2, 0, 0, 1, 71, '0', '014180605581395558', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(199, '230199', 'SERGIO', '', 'SERGIO', 'ORTEGA', 'NORIEGA', '1966-11-05', 'M', 'OENS661105HDFRRR06', 'SIN ASIGNAR', 'OENS6611052T6', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-08-16', '2024-07-22', 6, 50, 13, 112, 324, 1, 1, 61, '2023-08-16', 2, 0, 0, 1, 72, '0', '044180001034932883', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(200, '230200', 'KARINA', '', 'KARINA', 'PERDOMO', 'CONTRERAS', '1995-12-10', 'F', 'PECK951210MDFRNR04', '30129504673', 'PECK951210C47', 1, 0, '', 'C. MONTE CARMELO MZ. 2 LT. 16, COL. JESUS DEL MONTE, CP. 05260, CUAJIMALPA DE MORELOS, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'karina.perdomo@jetourmx.com', '', '', '2023-08-21', '2024-10-30', 5, 30, 8, 65, 135, 1, 1, 46, '2023-08-21', 2, 0, 0, 1, 26, '01529230708', '012180015292307087', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(201, '230201', 'JOHANA', 'VANESSA', 'JOHANA', 'REAL', 'RODRIGUEZ', '1992-12-05', 'F', 'RERJ921205MQTLDH01', '14079266004', 'RERJ921205MF3', 2, 0, '', 'EL JAGUEY EXT. 43 M. 26 L 47, COL. GRANJAS BANTHI, CP. 76805, SAN JUAN DEL RIO, QUERETARO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'johana.real@ldrsolutions.com.mx', '', '3310112841', '2023-08-21', '0000-00-00', 6, 41, 26, 91, 256, 1, 1, 12, '2023-08-21', 2, 0, 0, 1, 26, '01588912538', '012180015889125384', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(202, '230202', 'JORGE', 'ISAAC', 'JORGE', 'SANCHEZ', 'PEREZ', '1980-03-23', 'M', 'SAPJ800323HDFNRR07', '01088001431', 'SAPJ8003234U7', 1, 0, '', 'OHIO 38, COL. NAPOLES, CP. 03810, BENITO JUAREZ, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jisper.23@gmail.com', 1, 'jorge.sanchez@ldrsolutions.com', '', '3332013933', '2023-08-21', '0000-00-00', 6, 39, 13, 116, 330, 1, 1, 11, '2023-08-21', 2, 0, 0, 1, 26, '02618758905', '012180026187589051', 3, 1, '0000-00-00', '2025-03-26', 0, 636),
(203, '230203', 'URIEL', 'MARGARITO', 'URIEL', 'GARCIA', 'DAVILA', '1980-09-21', 'M', 'GADU800921HCLRVR01', '43998057699', 'GADU800921MDA', 2, 0, '', 'PRIV. HEROES 160, COL. NINOS HEROES, CP. 67190, GUADALUPE, NUEVO LEON.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'uriel.garcia@ldrsolutions.com.mx', '', '', '2023-08-22', '0000-00-00', 6, 41, 27, 91, 257, 1, 1, 23, '2023-08-22', 2, 28000, 34826, 1, 26, '01598142101', '012180015981421012', 3, 1, '0000-00-00', '2025-06-24', 0, 202),
(204, '230204', 'PABLO', '', 'PABLO', 'JASSO', 'CASTRO', '1973-12-14', 'M', 'JACP731214HMSSSB01', '15967302140', 'JACP731214595', 1, 0, '', 'SUR 20 174 B 407, COL. AGRICOLA ORIENTAL, CP. 08500, IZTACALCO, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'pablo.jasso@jetourmx.com', '', '', '2023-08-28', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '2023-08-28', 2, 0, 0, 1, 14, '90090479139', '002180900904791394', 6, 2, '0000-00-00', '2025-04-25', 0, 708),
(205, '230205', 'MARIO', 'ALBERTO', 'MARIO', 'GARCIA', 'MARTINEZ', '1989-11-25', 'M', 'GAMM891125HVZRRR01', '65098944732', 'GAMM891125568', 1, 0, '', 'FRENTE AL MOLINO BV SN JULIAN LT 11 MZ 30 SAN JULIAN. C.P. 91697 SAN JULIAN, VER', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'vane.yded@gmail.com', 1, 'mario.garcia@jetourmx.com', '', '', '2023-09-01', '0000-00-00', 6, 39, 13, 81, 202, 1, 1, 61, '2023-09-01', 2, 0, 0, 1, 26, '01537675658', '012650015376756589', 6, 2, '0000-00-00', '2025-04-22', 0, 708),
(206, '230206', 'JUAN', 'RAMON', 'JUAN', 'SILVA', 'ROMO', '1988-11-20', 'M', 'SIRJ881120HJCLMN07', '04128834399', 'SIRJ8811209Q0', 2, 0, '', 'PUNTA ESMERALDA 104 B COL: DOS PLAZAS C.P 47530', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jrsilva291@gmail.com', 1, 'juan.silva@ldrsolutions.com.mx', '', '', '2023-09-01', '0000-00-00', 3, 12, 25, 31, 81, 1, 1, 20, '2023-09-01', 2, 0, 0, 1, 26, '01157005377', '012362011570053778', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(207, '230207', 'EDUARDO', '', 'EDUARDO', 'GARCIA', 'MENDOZA', '1985-01-02', 'M', 'GAME850102HNLRND00', '43008517393', 'GAME850102GI4', 1, 0, '', 'C MONTE ARAT 219 COL CIMAS DEL PONIENTE 66110 SANTA CATARINA, N.L', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Uurieel23@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-09-08', '2024-10-30', 10, 62, 34, 127, 345, 1, 1, 63, '2023-09-08', 2, 0, 0, 1, 26, '01528651462', '012580015286514622', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(208, '230208', 'ESTEFANIA', 'ARLETTE', 'ARLETTE', 'GARCIA', 'HERRERA', '1998-12-01', 'F', 'GAHE981201MDFRRS01', '39149816439', 'GAHE9812015D5', 4, 0, '', 'COL ATLANTIDA 04370 COYOACAN, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'arlette.garcia@ldrsolutions.com.mx', '', '3310054287', '2023-09-11', '0000-00-00', 6, 46, 13, 102, 384, 1, 1, 39, '2023-09-11', 2, 0, 0, 1, 20, '01135332695', '072180011353326954', 3, 1, '0000-00-00', '2025-05-23', 0, 209),
(209, '230209', 'BETSABE', '', 'BETSABE', 'LEON', 'PEREZ', '1999-03-07', 'F', 'LEPB990307MDFNRT00', '39149910554', 'LEPB990307NR5', 4, 0, '', 'PRIV DE LOS ENCINOS 9 COL EL TIANGUILLO 05400 CUAJIMALPA DE MORELOS, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'betsabe.leon@ldrsolutions.com.mx', '', '', '2023-09-11', '0000-00-00', 6, 46, 13, 104, 295, 1, 1, 39, '2023-09-11', 2, 0, 0, 1, 14, '90491028598', '002180904910285984', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(210, '230210', 'SHERLYN', 'MONSERRAT', 'SHERLYN', 'MIRON', 'BALDERRAMA', '1995-09-22', 'F', 'MIBS950922MNLRLH01', '73169580260', 'MIBS950922E4A', 4, 0, '', 'HACIENDA RIOJA 789 PRIVADA SANTA ISABEL LL, APODACA NUEVO LEON CP. 66612', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jrsilva291@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-09-13', '2024-07-01', 6, 46, 27, 107, 307, 1, 1, 54, '2023-09-13', 2, 0, 0, 1, 26, '0', '012580015046517209', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(211, '230211', 'ANA', 'JULIETTE', 'ANA', 'TORRES', 'TREJO', '1999-01-30', 'F', 'TOTA990130MNLRRN07', '10169980850', 'TOTA9901306H7', 4, 0, '', 'MARIA CURIE 610 RECIDENCIAL LOS ROBLES, APODACA NUEVO LEON. C.P. 66636', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-09-14', '2024-06-03', 6, 41, 27, 93, 270, 1, 1, 64, '2023-09-14', 2, 0, 0, 1, 26, '0', '012180015125104852', 6, 2, '0000-00-00', '0000-00-00', 0, 0);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(212, '230212', 'VERONICA', 'ADRIANA', 'VERONICA', 'RIOS', 'SARABIA', '1989-11-13', 'F', 'RISV891113HDFSRR09', '01078908009', 'RISV891113IL7', 1, 0, '', 'TEPANTONGO 175 REYNOSA TAMAULIPAS 02200 AZCAPOTZALCO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'este_arle@hotmail.com', 1, 'veronica.rios@ldrsolutions.com.mx', '', '3339540511', '2023-09-18', '0000-00-00', 6, 36, 13, 77, 171, 1, 1, 19, '2023-09-18', 2, 0, 0, 1, 71, '60616956843', '014180606169568434', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(213, '230213', 'JESUS', 'ADRIEL', 'ADRIEL', 'CERVANTES', 'ZAMUDIO', '1977-10-28', 'M', 'CEZJ771028HDFRMS00', '11987701353', 'CEZJ7710281H7', 1, 0, '', 'CDA DE LA ROMERIA EXT. 32 INT. 2 COLINAS DEL SUR ALVARO OBREGON 1 C.P. 01430 CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'adriel.cervantes@ldrsolutions.com.mx', '', '3318653506', '2023-09-19', '0000-00-00', 3, 4, 11, 8, 18, 1, 1, 40, '2023-09-19', 2, 0, 0, 1, 10, '00114453847', '127180001144538476', 3, 1, '0000-00-00', '2025-06-04', 0, 202),
(214, '230214', 'JORGE', 'LUIS', 'JORGE', 'MARTINEZ', 'ROMO', '1978-02-16', 'M', 'MARJ780216HDFRMR04', '11027809380', 'MARJ780216QL4', 1, 0, '', 'C RIO AMACUZAC 17 COL IZCALLI DEL RIO 54130 TLALNEPANTLA DE BAZ, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fapsi-smb@hotmail.com', 1, 'jorgel.martinez@ldrsolutions.com', '', '3332501819', '2023-09-19', '0000-00-00', 6, 36, 13, 77, 172, 1, 1, 19, '2023-09-19', 2, 0, 0, 1, 14, '04587400109', '002180045874001095', 3, 1, '0000-00-00', '2025-05-14', 0, 516),
(215, '230215', 'MONICA', '', 'MONICA', 'CERVANTES', 'VAZQUEZ', '1969-01-28', 'F', 'CEVM690128MMCRZN05', '39936902905', 'CEVM690128PK0', 1, 0, '', 'C REAL ECUESTRE 36 FRACC VISTA REAL 76905 CORREGIDORA, QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'annatorrestrejo@gmail.com', 1, 'monica.cervantes@ldrsolutions.com.mx', '', '3318657679', '2023-09-27', '0000-00-00', 3, 8, 11, 14, 25, 1, 1, 21, '2023-09-27', 2, 0, 0, 1, 26, '02866966926', '012180028669669264', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(216, '230216', 'ALMA', 'ALEJANDRA', 'ALEJANDRA', 'LEDEZMA', 'PRADO', '1991-04-12', 'F', 'LEPA910412MMNDRL09', '90099141021', 'LEPA910412JIA', 1, 0, '', 'C LAGO MARACAIBO 68 DEP 101 COL ARGENTINA ANTIGUA 11270 MIGUEL HIDALGO, D.F.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alejandra.ledezma@ldrsolutions.com.mx', '', '', '2023-10-02', '0000-00-00', 6, 33, 13, 72, 147, 1, 1, 25, '2023-10-02', 2, 0, 0, 1, 20, '00257803513', '072294002578035132', 5, 1, '0000-00-00', '2025-04-30', 0, 202),
(217, '230217', 'ZAIRA', 'CARINA', 'ZAIRA', 'NOLASCO', 'VARGAS', '1994-09-08', 'F', 'NOVZ940908MDFLRR02', '01209418928', 'NOVZ9409084N5', 1, 0, '', 'C JOSE VASCONCELOS MZ 82 LT 4 AMPL GABRIEL HERNANDEZ 07080 GUSTAVO A. MADERO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'zaira.nolasco@ldrsolutions.com.mx', '', '', '2023-10-02', '0000-00-00', 6, 37, 13, 78, 181, 1, 1, 22, '2023-10-02', 2, 0, 0, 1, 14, '70161674247', '002180701616742474', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(218, '230218', 'CARLA', 'MONSERRAT', 'CARLA', 'LOPEZ', 'ENCISO', '1997-11-09', 'F', 'LOEC971109MMCPNR04', '20139708786', 'LOEC9711091N7', 1, 0, '', 'AV RICARDO FLORES 338 106 PINO Y DR ENRIQUE GLEZ SANTA MARIA LA RIBERA C.P. 06400 CUAUHTEMOC CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'carla.lopez@ldrsolutions.com.mx', '', '', '2023-10-02', '0000-00-00', 5, 29, 8, 64, 130, 1, 1, 65, '2023-10-02', 2, 0, 0, 1, 20, '01259095300', '072180012590953008', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(219, '230219', 'SAMUEL', '', 'SAMUEL', 'VALERIO', 'COLORADO', '1996-03-20', 'M', 'VACS960320HDFLLM08', '57159674787', 'VACS960320KD9', 1, 0, '', 'CDA DE LA UNION 18A 3RA CERRADA SANTIAGO YANCUITLALPAN. C.P. 52766 SANTIAGO YANCUITLALPAN. MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'samuel.valerio@ldrsolutions.com.mx', '', '3328341896', '2023-10-02', '0000-00-00', 6, 41, 13, 92, 267, 1, 1, 41, '2023-10-02', 2, 0, 0, 1, 71, '56848239792', '014180568482397925', 6, 2, '0000-00-00', '2025-05-22', 0, 485),
(220, '230220', 'LENIN', 'BRANDON', 'LENIN', 'REYES', 'ALVAREZ', '1996-07-03', 'M', 'REAL960703HDFYLN00', '20119657714', 'REAL960703PA0', 4, 0, '', 'LOMA FLORIDA 2185 COL. LOMA LARGA, MONTERREY NUEVO LEON CP. 64710', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'lenin.reyes@ldrsolutions.com.mx', '', '3318350898', '2023-10-02', '0000-00-00', 6, 41, 27, 86, 220, 1, 1, 49, '2023-10-02', 2, 44440, 57939, 1, 26, '01575747178', '012180015757471788', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(221, '230221', 'ARMANDO', '', 'ARMANDO', 'SENA', 'ORTIZ', '1984-06-05', 'M', 'SEOA840605HNTNRR07', '43008482911', 'SEOA840605B17', 2, 0, '', 'FERNADO V 731 FRACC. LOS REYES , BENITO JUAREZ NUEVO LEON CP. 67277 ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'armando.sena@ldrsolutions.com.mx', '', '3316046935', '2023-10-02', '0000-00-00', 6, 41, 27, 86, 221, 1, 1, 66, '2023-10-02', 2, 0, 0, 1, 26, '01575546768', '012580015755467682', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(222, '230222', 'ARBI', 'ONAN', 'ARBI', 'PEREZ', 'HERNANDEZ', '1993-04-08', 'M', 'PEHA930408HCSRRR01', '09169346039', 'PEHA930408GE4', 5, 0, '', 'HACIENDA POTOSI 103 COL. PORTAL DE LA HACIENDA, GUADALUPE NUEVO LEON C.P 66052', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'arbi.perez@ldrsolutions.com.mx', '', '3313601938', '2023-10-02', '0000-00-00', 6, 41, 27, 86, 220, 1, 1, 49, '2023-10-02', 2, 0, 0, 1, 26, '01559786589', '012100015597865893', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(223, '230223', 'JUAN', '', 'JUAN', 'BERMAN', 'CORONADO', '1991-11-30', 'M', 'BECJ911130HMCRRN02', '96119156584', 'BECJ911130UK8', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'mantenimiento@ldrsolutions.com.mx', '', '', '2023-10-05', '0000-00-00', 6, 46, 13, 110, 318, 1, 1, 58, '2023-10-05', 2, 0, 0, 2, 10, '00171437015', '127180001714370158', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(224, '230224', 'LEONA', '', 'LEONA', 'ARELLANO', 'LEON', '1992-09-27', 'F', 'AELL920927MDFRNN09', '37129201101', 'AELL920927KD9', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lbrandon_heartmotor33@yahoo.com', 1, 'SIN ASIGNAR', '', '', '2023-10-05', '0000-00-00', 6, 46, 13, 110, 321, 1, 1, 134, '2023-10-05', 2, 0, 0, 2, 26, '01554649815', '012180015546498150', 4, 1, '0000-00-00', '2025-06-28', 0, 208),
(225, '230225', 'SARAHI', '', 'SARAHI', 'RUIZ', 'CUERVO', '1997-11-28', 'F', 'RUCS971128MDFZRR07', '20139723207', 'RUCS971128S8A', 1, 0, '', 'CLL CADENA AZUL SECC15 FTE 8 PISO 4 EDIF P DEP 401 CHINAMPAC DE JUAREZ UNIDAD CAL IZTAPALAPA, CIUDAD DE MEXICO C.P. 09208-CR-09201', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Senaa8262@gmail.com', 1, 'sarahi.ruizc@ldrsolutions.com.mx', '', '3314704705', '2023-10-09', '0000-00-00', 3, 8, 11, 14, 26, 1, 1, 67, '2023-10-09', 2, 0, 0, 1, 26, '01567923314', '012180015679233143', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(226, '230226', 'ARTURO', 'DANIEL', 'ARTURO', 'VARGAS', 'MACIAS', '1990-10-18', 'M', 'VAMA901018HDFRCR03', '30079015548', 'VAMA901018TX5', 2, 0, '', 'CLL JUAN DE LA BARRERA MZ 7 LT 4 CALZ JALALPA MEXICO, CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Construktwo@gmail.com', 1, 'arturo.vargas@ldrsolutions.com.mx', '', '3310089704', '2023-10-09', '0000-00-00', 3, 8, 11, 14, 26, 1, 1, 57, '2023-10-09', 2, 0, 0, 1, 26, '01578984417', '012180015789844176', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(227, '230227', 'OSCAR', 'IVAN', 'OSCAR', 'MARTINEZ', 'VALADEZ', '1992-07-06', 'M', 'MAVO920706HJCRLS02', '75119293621', 'MAVO920706KT7', 4, 0, '', 'VIRGEN DE GUADALUPE #264 COL CRISTEROS C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valadezscr@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-10-09', '0000-00-00', 3, 12, 25, 22, 47, 1, 1, 8, '2023-10-09', 2, 7968, 8382, 2, 20, '01247116967', '072362012471169674', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(228, '230228', 'DANIEL', '', 'DANIEL', 'LEDEZMA', 'MELENDEZ', '1990-01-29', 'M', 'LEMD900129HDFDLN04', '39119011623', 'LEMD900129GB7', 1, 0, '', 'CALLE 10 DE MAYO, 34, C.P. 10330, ALCALDIA MAGDALENA CONTRERAS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'daniel.ledezma@ldrsolutions.com.mx', '', '', '2023-10-09', '0000-00-00', 6, 37, 13, 78, 182, 1, 1, 68, '2023-10-09', 2, 0, 0, 1, 20, '00467084728', '072180004670847288', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(229, '230229', 'JUAN', 'MANUEL', 'JUAN', 'VELIZ', 'ALBA', '1973-02-08', 'M', 'VEAJ730208HDFLLN05', '68937303599', 'VEAJ730208PC5', 1, 0, '', 'MIGUEL HIDALGO 104 COND 8 C 26 RICARDO FLORES MAGON, SAN MATEO OTZACATIPAN C.P 50220 SAN MATEO OTZACATIPAN, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'juan.veliz@ldrsolutions.com.mx', '', '3338288592', '2023-10-09', '0000-00-00', 6, 41, 13, 89, 247, 1, 1, 1, '2023-10-09', 2, 0, 0, 1, 26, '02683626520', '012180026836265202', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(230, '230230', 'CARLOS', 'CUTBERTO', 'CARLOS', 'ROMAN', 'ESCOBEDO', '1965-11-13', 'M', 'ROEC651113HDFMSR01', '07866504462', 'ROEC651113QT7', 1, 0, '', 'C TEPEYAC 17 COL INDUSTRIAL 07800 GUSTAVO A. MADERO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'carlos.roman@ldrsolutions.com', '', '', '2023-10-09', '0000-00-00', 6, 46, 13, 110, 320, 1, 1, 39, '2023-10-09', 2, 0, 0, 1, 20, '00877069098', '072294008770690984', 5, 1, '0000-00-00', '2025-06-16', 0, 708),
(231, '230231', 'ALEJANDRO', 'JONATHAN', 'ALEJANDRO', 'ORDAZ', 'FLORES', '0000-00-00', 'M', 'OAFA830114HNLRLL01', '43008376089', 'OAFA830114R87', 2, 0, '', 'FRESNOS 325 COL. RECIDENCIAL ESCOBEDO , GENERAL ESCOBEDO NUEVO LEON C.P.66055', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valadezscr@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-10-10', '2024-07-31', 6, 43, 27, 99, 288, 1, 1, 66, '2023-10-10', 2, 0, 0, 1, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(232, '230232', 'EVERARDO', '', 'EVERARDO', 'CRUZ', 'RODRIGUEZ', '1973-02-05', 'M', 'CURE730205HTSRDV07', '49917329572', 'CURE730205EE1', 2, 0, '', 'SAUCES SUR 54 COL. FRANCISCO GARCIA NARANJO, MONTERREY NUEVO LEON CP. 64330', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-10-10', '0000-00-00', 6, 41, 27, 86, 222, 1, 1, 69, '2023-10-10', 2, 0, 0, 1, 26, '4152314172056460', '4152314172056460', 5, 2, '0000-00-00', '0000-00-00', 0, 485),
(233, '230233', 'CARLOS', 'ADRIAN', 'ADRIAN', 'LOPEZ', 'TORRES', '1993-08-12', 'M', 'LOTC930812HTSPRR00', '09129342797', 'LOTC930812QP9', 2, 0, '', 'SAUCES SUR 54 COL. FRANCISCO GARCIA NARANJO, MONTERREY NUEVO LEON CP. 64330', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'adrian.lopez@ldrsolutions.com.mx', '', '3328332398', '2023-10-10', '2024-05-16', 3, 41, 29, 39, 89, 1, 1, 0, '2023-10-10', 2, 0, 0, 1, 26, '0', '012580015301218560', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(234, '230234', 'DAVID', '', 'DAVID', 'AZAMAR', 'ORTIZ', '1990-01-16', 'M', 'AAOD900116HMCZRV04', '92069006291', 'AAOD900116D12', 1, 0, '', 'SIERRA MOJADA MZ 26 LTE 19 DEPTO. 4, COL. VILLAS DEL FRESNO, MELCHOR OCAMPO, ESTADO DE MEXICO C.P. 54890', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'david.azamar@ldrsolutions.com.mx', '', '', '2023-10-11', '0000-00-00', 3, 8, 11, 14, 26, 1, 1, 67, '2023-10-11', 2, 0, 0, 1, 26, '02860836419', '012180028608364193', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(235, '230235', 'CARLOS', '', 'CARLOS', 'LOPEZ', 'RODRIGUEZ', '1980-11-18', 'M', 'LORC801118HDFPDR09', '68978000328', 'LORC801118RR2', 1, 0, '', 'HELIO 9 UH EL ROSARIO, AZCAPOTZALCO CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Otdazjonathan@gmail.com', 1, 'carlos.lopez@ldrsolutions.com.mx', '', '3318652800', '2023-10-16', '0000-00-00', 3, 38, 11, 79, 405, 1, 1, 91, '2023-10-16', 2, 0, 0, 1, 20, '01102084893', '072180011020848930', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(236, '230236', 'ROSALBA', '', 'ROSALBA', 'CHAVEZ', 'LARA', '1989-07-15', 'F', 'CALR890715MOCHRS00', '07088905869', 'CALR890715MG4', 1, 0, '', 'ANTONIO CASO 132 25 ALTAMIRANO Y GABINO BARREDA SAN RAFAEL VMC. C.P. 06470 CUAUHTEMOC CIUDAD DE, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valepao74@gmail.com', 1, 'rosalba.chavez@ldrsolutions.com.mx', '', '3312645040', '2023-10-16', '0000-00-00', 3, 8, 11, 14, 27, 1, 1, 57, '2023-10-16', 2, 0, 0, 1, 26, '01523120158', '012180015231201584', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(237, '230237', 'GLORIA', 'ELIZABETH', 'ELIZABETH', 'TREJO', 'RIVERA', '1969-12-29', 'F', 'TERG691229MDFRVL00', '20946904354', 'TERG691229GI8', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'vivianycarlos0812@gmail.com', 1, 'elizabeth.trejo@ldrsolutions.com.mx', '', '', '2023-10-16', '2024-03-15', 3, 8, 11, 16, 31, 1, 1, 57, '2023-10-16', 2, 0, 0, 1, 26, '0', '012180027499569564', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(238, '230238', 'JUAN', 'ARMANDO', 'JUAN', 'CHAVEZ', 'HERNANDEZ', '1991-09-08', 'M', 'CAHJ910908HMCHRN09', '94079107515', 'CAHJ910908IQA', 4, 0, '', 'JARDIN DE LOS LIRIOS #110 COL: LAS CEIBAS C.P 47440', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'armchavez08@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-10-16', '2024-06-03', 3, 15, 25, 35, 84, 1, 1, 70, '2023-10-16', 2, 0, 0, 2, 20, '1248130522', '072362012481305224', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(239, '230239', 'HUGO', 'ENRIQUE', 'ENRIQUE', 'LOPEZ', 'VANEGAS', '1992-09-06', 'M', 'LOVH920906HMCPNG03', '92119250451', 'LOVH920906UI9', 1, 0, '', 'RTNO DEL LOTO 3 COL VALLE CEYLAN 54150 TLALNEPANTLA DE BAZ, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'enrique.lopez@ldrsolutions.com.mx', '', '', '2023-10-16', '0000-00-00', 6, 37, 13, 78, 183, 1, 1, 71, '2023-10-16', 2, 0, 0, 1, 14, '70148235420', '002180701482354203', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(240, '230240', 'JUAN', 'PABLO', 'PABLO', 'RAMIREZ', 'LOPEZ', '1986-07-09', 'M', 'RALJ860709HCLMPN08', '32028623216', 'RALJ8607094Q8', 1, 0, '', 'CEDRO 602, COL. BENITO JUAREZ, GUADALUPE, N.L CP 67140', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'pablo.ramirez@ldrsolutions.com.mx', '', '', '2023-10-16', '0000-00-00', 6, 41, 27, 86, 223, 1, 1, 49, '0000-00-00', 6, 0, 0, 1, 26, '01513946927', '012580015139469277', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(241, '230241', 'HUGO', 'ALEJANDRO', 'ALEJANDRO', 'REYES', 'ZAMUDIO', '1974-08-18', 'M', 'REZH740818HDFYMG09', '68927441151', 'REZH7408182Q4', 1, 0, '', 'PEDRO ASCENCIO 180 CASA 16 SANTA CRUZ CP 52140 METEPEC, EDO. MEX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alejandro.reyes@ldrsolutions.com.mx', '', '3310088591', '2023-10-17', '0000-00-00', 6, 35, 13, 74, 154, 1, 1, 72, '2023-10-17', 2, 0, 0, 1, 26, '00159115315', '012180001591153153', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(242, '230242', 'MARIA', 'ELENA', 'MARIA', 'BETANCOURT', 'SANTILLAN', '1977-10-21', 'F', 'BESE771021MTSTNL05', '09987722692', 'BESE771021KL0', 2, 0, '', 'SAUCES SUR 54 COL. FRANCISCO GARCIA NARANJO, MONTERREY NUEVO LEON CP. 64330', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'armchavez08@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-10-19', '0000-00-00', 6, 46, 27, 106, 304, 1, 1, 73, '2023-10-19', 2, 0, 0, 2, 26, '01500962998', '012180015009629987', 5, 2, '0000-00-00', '0000-00-00', 0, 485),
(243, '230243', 'OSCAR', '', 'OSCAR', 'FIGUEROA', 'OCAMPO', '1997-09-15', 'M', 'FIOO970915HGRGCS07', '72159705473', 'FIOO970915I55', 1, 0, '', 'AV. PASEO DE LA REFORMA 730 CP 06900 TLATELOLCO CUAUHTEMC CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'oscar.figueroa@ldrsolutions.com.mx', '', '3328321787', '2023-10-23', '0000-00-00', 6, 35, 13, 74, 155, 1, 1, 52, '2023-10-23', 2, 0, 0, 1, 26, '01549525006', '012276015495250065', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(244, '230244', 'MARIA', 'BLANCA ESTELA', 'MARIA', 'RAMIRO', 'JUAREZ', '1981-03-06', 'F', 'RAJB810306MPLMRL06', '07998108406', 'RAJB810306MZ4', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-10-23', '2024-06-05', 6, 35, 13, 75, 163, 1, 1, 72, '2023-10-23', 2, 0, 0, 1, 26, '0', '012180011749197935', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(245, '230245', 'INGRID', 'ABIGAIL', 'INGRID', 'OLVERA', 'MARTINEZ', '2000-05-22', 'F', 'OEMI000522MDFLRNA4', '39150022364', 'OEMI000522J2A', 1, 0, '', 'C SUR 25 MZA 4 LT 38 D COL LEYES DE REFORMA 1RA SECCION 09310 IZTAPALAPA, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ingrid.olvera@ldrsolutions.com.mx', '', '', '2023-10-23', '0000-00-00', 6, 36, 13, 76, 166, 1, 1, 59, '2023-10-23', 2, 0, 0, 1, 26, '01539195259', '012180015391952595', 3, 1, '0000-00-00', '2025-06-06', 0, 209),
(246, '230246', 'EDUARDO', 'EMMANUEL', 'EDUARDO', 'MARTINEZ', 'ONTIVEROS', '1989-01-04', 'M', 'MAOE890104HMCRND05', '92108929180', 'MAOE890104P10', 1, 0, '', 'RET CONVENTO DE COYOACAN 15-A LA PRESA Y COFRAIDA COFRAIDA DE SAN MIGUEL CUATITLAN IZCALLI, EM C.P. 54715', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elenabeta77@gmail.com', 1, 'eduardo.martinez@ldrsolutions.com.mx', '', '3328322460', '2023-10-24', '0000-00-00', 3, 4, 11, 4, 6, 1, 1, 74, '2023-10-24', 2, 0, 0, 1, 71, '56787538847', '014438567875388472', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(247, '230247', 'DANIEL', 'ALEJANDRO', 'DANIEL', 'LAGUNAS', 'AVENDAÑO', '1982-12-16', 'M', 'LAAD821216HMCGVN02', '16038209645', 'LAAD8212162F9', 1, 0, '', 'VIRREINATO MZ 19 21 A ESQ NUEVO MEXICO SAN ANDRES OCOTLAN C.P. 52220 HACIENDA DE LAS FUENTES, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'daniel.lagunas@ldrsolutions.com.mx', '', '', '2023-10-30', '0000-00-00', 3, 11, 11, 19, 37, 1, 1, 21, '2023-10-30', 2, 0, 0, 1, 14, '45770033032', '002441457700330329', 5, 1, '0000-00-00', '2025-05-12', 0, 516),
(248, '230248', 'OMAR', '', 'OMAR', 'MALDONADO', 'RAMIREZ', '1986-05-10', 'M', 'MARO860510HDFLMM00', '90048623640', 'MARO860510ME8', 1, 0, '', 'C PORFIRIO DIAZ 19 EDIF G DEPTO 102 FRACC JARDINES DE ATIZAPAN 52978 ATIZAPAN DE ZARAGOZA, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'omar.maldonado@jetourmx.com', '', '', '2023-10-30', '2024-10-30', 6, 41, 13, 93, 271, 1, 1, 62, '2023-10-30', 2, 0, 0, 1, 26, '01568147759', '012180015681477599', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(249, '230249', 'NANCY', 'PAOLA', 'NANCY', 'AGUILAR', 'HERNANDEZ', '1980-08-26', 'F', 'AUHN800826MDFGRN04', '39008023788', 'AUHN800826MI2', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-10-30', '2024-08-15', 9, 57, 10, 122, 341, 1, 1, 26, '2023-10-30', 2, 0, 0, 1, 20, '1178023486', '072180011780234868', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(250, '230250', 'KARLA', 'VERONICA', 'KARLA', 'LUCIO', 'GONZALEZ', '2000-12-05', 'F', 'LUGK001205MNLCNRA1', '02170006270', 'LUGK001205813', 2, 0, '', 'HONESTIDAD 114 COL. BALCONES DEL NORTE 2 , GENERAL ESCOBEDO CP. 66052', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'karla.lucio@ldrsolutions.com.mx', '', '3313330371', '2023-10-30', '0000-00-00', 6, 41, 27, 86, 224, 1, 1, 49, '2023-10-30', 2, 14000, 16233, 1, 26, '01527343200', '012580015273432005', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(251, '230251', 'JOSE', 'ANDRES', 'JOSE', 'DELGADO', 'LOPEZ', '1991-05-19', 'M', 'DELA910519HJCLPN08', '04059103913', 'DELA910519LP3', 5, 0, '', 'UNIO DE SAN ANTONIO #42 COL: LOS JACALES C.P 37683', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'joseandresdelgadolopez906@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-10-31', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-10-31', 2, 7968, 8382, 2, 20, '01215535464', '072320012155354640', 5, 1, '0000-00-00', '0000-00-00', 0, 338),
(252, '230252', 'JUAN', 'CARLOS', 'JUAN', 'FLORES', 'VALLEJO', '1971-12-04', 'M', 'FOVJ711204HDFLLN02', '39947120109', 'FOVJ711204KG8', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-11-01', '2024-07-08', 3, 4, 11, 7, 16, 1, 1, 21, '2023-11-01', 2, 0, 0, 1, 1, '0196872533', '072180001968725332', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(253, '230253', 'LEOPOLDO', 'HUMBERTO', 'HUMBERTO', 'ARGUELLO', 'PASTRANA', '1987-12-04', 'M', 'AUPL871204HCSRSP01', '71128721637', 'AUPL8712043S4', 1, 0, '', 'C RICARGO FLORES MAGON 8 COL LOS CHOFERES 29277 SAN CRISTOBAL DE LAS CASAS, CHIS', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'humberto.arguello@ldrsolutions.com.mx', '', '3317235685', '2023-11-01', '0000-00-00', 6, 48, 13, 109, 316, 1, 1, 15, '2023-11-01', 2, 0, 0, 1, 14, '90497850036', '002130904978500363', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(254, '230254', 'OCTAVIO', '', 'OCTAVIO', 'PEREZ', 'VELASCO', '1983-04-20', 'M', 'PEVO830420HJCRLC01', '02158372520', 'PEVO830420HL0', 2, 0, '', 'CALLE LUNA 14-A, COL. BRISAS DE CHAPALA, C.P. 45590 TLAQUEPAQUE, JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'verolucio@outlook.es', 1, 'octavio.perez@ldrsolutions.com.mx', '', '', '2023-11-01', '0000-00-00', 10, 62, 36, 127, 348, 1, 1, 4, '2023-11-01', 2, 0, 0, 1, 26, '01578895816', '012320015788958166', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(255, '230255', 'JULIO', 'CESAR', 'JULIO', 'HERNANDEZ', 'GUTIERREZ', '1982-11-19', 'M', 'HEGJ821119HDFRTL03', '92058207801', 'HEGJ8211192P2', 2, 0, '', 'AUTOPISTA MEXICO QUERETARO KM 30 PRIVADA E14 FRACCIONAMIENTO CUMBRE NORTE CP 54769 CUAUTITLAN IZCALLI MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'joseandresdelgadolopez906@gmail.com', 1, 'julio.hernandez@ldrsolutions.com.mx', '', '', '2023-11-01', '2024-10-30', 3, 6, 11, 12, 22, 1, 1, 75, '2023-11-01', 2, 0, 0, 1, 26, '02931379623', '012180029313796233', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(256, '230256', 'JIMENA', '', 'JIMENA', 'PADILLA', 'SANTANA', '2000-08-04', 'F', 'PASJ000804MMCDNMA4', '08230011713', 'PASJ000804JV3', 1, 0, '', 'CTO SN JOSE 120 LT 11 MZ II RESID SN JOSE Y VILLA SAN JOSE GUADALUPE. C.P. 50205 RESIDENCIAL SAN JOSE, MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'jimena.padilla@ldrsolutions.com.mx', '', '3311292324', '2023-11-01', '0000-00-00', 6, 37, 13, 78, 406, 1, 1, 45, '2023-11-01', 2, 0, 0, 1, 26, '01533526693', '012180015335266933', 4, 1, '0000-00-00', '2025-06-04', 0, 202),
(257, '230257', 'GONZALO', '', 'GONZALO', 'PEREZ', 'CORTEZ', '1989-02-22', 'M', 'PECG890222HNLRRN09', '43068970482', 'PECG890222J21', 2, 0, '', 'ESTAMBUL 205 COL.PORTAL DE SAN FRANCISCO, GENERAL ESCOBEDO C.P.66084', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-11-01', '2023-11-01', 6, 41, 27, 93, 270, 1, 1, 64, '2023-11-01', 2, 0, 0, 1, 26, '0', '012580015755466450', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(258, '230258', 'IRVING', 'IVAN', 'IVAN', 'MOTA', 'DURAN', '1983-08-25', 'M', 'MODI830825HDFTRR04', '42028316828', 'MODI8308256T5', 1, 0, '', 'MZ. H EDIF. 6D DEPTO 502 LLANO DE LOS BAEZ ECATEPEC DE MORELOS C.P. 55055', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', '32octaviop@gmail.com', 1, 'ivan.mota@ldrsolutions.com.mx', '', '', '2023-11-01', '0000-00-00', 10, 62, 28, 127, 354, 1, 1, 50, '2023-11-01', 2, 0, 0, 1, 26, '01588625941', '012463015886259417', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(259, '230259', 'JUAN', 'MIGUEL', 'MIGUEL', 'MARTINEZ', 'MORENO', '1985-12-08', 'M', 'MAMJ851208HDFRRN06', '11048501883', 'MAMJ851208SR0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'miguel.martinez@ldrsolutions.com.mx', '', '', '2023-11-01', '2024-04-03', 10, 62, 28, 127, 346, 1, 1, 76, '2023-11-01', 2, 0, 0, 1, 71, '0', '014180567844891853', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(260, '230260', 'ESTEFANIA', '', 'ESTEFANIA', 'DEL ANGEL', 'SERVIN', '1986-05-13', 'F', 'AESE860513HQTNRS07', '14078605327', 'AESE860513NY4', 4, 0, '', 'AVENIDA PASEO DE ZAKIA ORIENTE 1600, 3903 AV ZAKIA CERRADA ZAKIA EL MARQUES C.P. 76120, QUERETARO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'estefania.delangel@ldrsolutions.com.mx', '', '3310057620', '2023-11-06', '0000-00-00', 6, 41, 26, 91, 388, 1, 1, 1, '2023-11-06', 2, 39114, 50000, 1, 26, '02749617329', '012680027496173291', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(261, '230261', 'ARMANDO', '', 'ARMANDO', 'PONCE', 'GARCIA', '1966-02-01', 'M', 'POGA660201HOCNRR04', '16886600473', 'POGA660201UY4', 2, 0, '', 'CTO CUMBRE QUERETARO 282 - 101 C PRIVALIA AMBIENTA COND BETEL 76147 QUERETARO, QRO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gonzaloperezcortez@gmail.com', 1, 'armando.ponce@ldrenta.com', '', '', '2023-11-06', '0000-00-00', 7, 53, 39, 118, 335, 1, 1, 77, '2023-11-06', 2, 0, 0, 1, 26, '01570709550', '012420015707095502', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(262, '230262', 'MARTIN', '', 'MARTIN', 'MORALES', 'GALVEZ', '1994-12-08', 'M', 'MOGM941208HGRRLR05', '49159420410', 'MOGM941208NY2', 5, 0, '', 'ESTAMBUL 205 COL.PORTAL DE SAN FRANCISCO, GENERAL ESCOBEDO C.P.66084', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-11-06', '0000-00-00', 6, 41, 27, 86, 222, 1, 1, 69, '2023-11-06', 2, 0, 0, 1, 20, '01214977339', '072910012149773391', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(263, '230263', 'JOSE', 'ISABEL', 'JOSE', 'ALBA', 'ESTRADA', '1966-04-17', 'M', 'AAEI660417HJCLSS08', '54916630996', 'AAEI660417IY2', 2, 0, '', 'BETULIA #62 COL:MUNICIPIO LIBRE C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'albajose147@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-06', '2000-01-01', 3, 20, 25, 40, 92, 1, 1, 32, '2023-11-06', 2, 0, 0, 2, 20, '0250103456', '072362002501034566', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(264, '230264', 'RAUL', 'ANGEL', 'RAUL', 'DE JESUS', 'MAGDALENO', '2001-10-26', 'M', 'JEMR011026HJCSGLA6', '05180100413', 'JEMR011026CR0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'estefania.delangel@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-06', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2023-11-06', 2, 0, 0, 2, 26, '0', '012712015083377102', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(265, '230265', 'RAFAEL', 'ALEJANDRO', 'RAFAEL', 'TORRES', 'MARTINEZ', '1995-02-04', 'M', 'TOMR950204HDFRRF00', '04199514557', 'TOMR950204J28', 4, 0, '', 'ANDR 1 MZ 19 B INT C 42 CALZ DE LA VIRGEN Y MANUELA CANIZARES CULHUACAN CTM SECCION VI C.P. 04480 COYOACAN, D.F', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'armando.ponce@live.com', 1, 'rafael.torres@ldrsolutions.com.mx', '', '', '2023-11-06', '0000-00-00', 6, 46, 13, 103, 294, 1, 1, 39, '2023-11-06', 2, 0, 0, 1, 26, '01520749284', '012180015207492848', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(266, '230266', 'DAVID', '', 'DAVID', 'MARTINEZ', 'BRAVO', '1992-12-26', 'M', 'MABD921226HMCRRV03', '37119203950', 'MABD921226HHA', 1, 0, '', 'MAESTRANZA LOTE 1 MZ 30 INDUSTRIA MILITAR Y COVE HUIXQUILUCAN MEXICO C.P. 52765 ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'david.martinez@ldrsolutions.com.mx', '', '', '2023-11-07', '0000-00-00', 6, 37, 13, 78, 185, 1, 1, 68, '2023-11-07', 2, 0, 0, 1, 14, '70121264895', '002180701212648956', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(267, '230267', 'JORGE', 'LUIS', 'JORGE', 'ANTONIO', 'SANTIAGO', '1997-12-22', 'M', 'AOSJ971222HSPNNR01', '27169710848', 'AOSJ971222FVA', 5, 0, '', 'CALLE ESTAMBUL 205 COL. PORTAL DE SAN FRANCISCO, GENERAL ESCOBEDO NL. CP. 666084', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'albajose147@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-10', '0000-00-00', 6, 41, 27, 86, 225, 1, 1, 78, '2023-11-10', 2, 0, 0, 1, 26, '01532758878', '012580015327588782', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(268, '230268', 'JESUS', 'OCTAVIO', 'JESUS', 'HERNANDEZ', 'FRANCO', '2002-12-27', 'M', 'HEFJ020127HNLRRSA9', '17170240646', 'HEFJ020127UJ0', 4, 0, '', 'MANUEL M DIEGUEZ 502 COL. MOISEIS SAENZ , APODACA NUEVO LEON CP. 66613', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-11-10', '0000-00-00', 6, 41, 27, 86, 225, 1, 1, 69, '2023-11-10', 2, 0, 0, 1, 17, '10490637309', '137580104906373094', 5, 2, '0000-00-00', '0000-00-00', 0, 485),
(269, '230269', 'ERNESTO', '', 'ERNESTO', 'CALDERON', 'GALINDO', '1967-06-24', 'M', 'CAGE670624HDFLLR01', '11896717169', 'CAGE670624UL3', 1, 0, '', 'ALAMO 4 B SAUCE Y FRESNO EL SAUZALITO C.P. 53117 NAUCALPAN DE JUAREZ, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ernesto.calderon@fulongma.com.mx', '', '', '2023-11-10', '0000-00-00', 4, 23, 12, 54, 407, 1, 1, 99, '2023-11-10', 2, 0, 0, 1, 20, '01111277996', '072180011112779962', 6, 2, '0000-00-00', '2025-06-04', 0, 485),
(270, '230270', 'GABRIEL', '', 'GABRIEL', 'VALADEZ', 'VILLALOBOS', '1999-01-01', 'M', 'VAVG990101HJCLLB06', '44179939937', 'VAVG990101SJ6', 4, 0, '', 'RAMON CORANA 53 COL:SAN MIGUEL II C.P 47420', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gabrielvaladez388@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-13', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2023-11-13', 2, 0, 0, 2, 20, '01235644917', '072222012356449177', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(271, '230271', 'JOSE', 'ALBERTO', 'JOSE', 'PEREZ', 'MERIDA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mzjorge15@gmail.com', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-03-08', 10, 62, 1, 127, 347, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(272, '230272', 'GERSON', '', 'GERSON', 'JIMENEZ', 'SALAZAR', '1985-04-10', 'M', 'JISG850410HDFMLR02', '37048511051', 'JISG850410SQ8', 1, 0, '', 'BARTOLOME DIAZ DE LEON 212 _ INT PB SANTIAGO SUR TLAHUAC DISTRITO FEDERAL C.P. 13360, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jh355211@gmail.com', 1, 'gerson.jimenez@ldrsolutions.com.mx', '', '', '2023-11-13', '0000-00-00', 6, 37, 13, 78, 186, 1, 1, 22, '2023-11-13', 2, 0, 0, 1, 20, '01251543243', '072180012515432436', 3, 1, '0000-00-00', '2025-05-29', 0, 202),
(273, '230273', 'MARISOL', '', 'MARISOL', 'VALLEJO', 'ESPINOSA', '1987-11-22', 'F', 'VAEM871122MVZLSR05', '30138700734', 'VAEM871122TU0', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-11-16', '2024-08-16', 5, 28, 8, 63, 129, 1, 1, 47, '2023-11-16', 2, 0, 0, 1, 1, '1528410521', '12180015284105200', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(274, '230274', 'FEDERICO', '', 'FEDERICO', 'POLO', 'PASCUAL', '1990-10-10', 'M', 'POPF901010HDFLSD01', '96099001065', 'POPF9010105M6', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gabrielvaladez388@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-16', '2024-05-09', 6, 46, 13, 107, 307, 1, 1, 79, '2023-11-16', 2, 0, 0, 1, 1, '56757395874', '14180567573958700', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(275, '230275', 'JESUS', 'ALBERTO', 'ALBERTO', 'JACINTO', 'RIOS', '1995-01-28', 'M', 'JARJ950128HGRCSS02', '02229527128', 'JARJ9501285M7', 1, 0, '', 'C BOSQUE SANTA MARIA 21 C PBLO SANCTORUM 72730 CUAUTLANCINGO, PUE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alberto.jacinto@ldrsolutions.com.mx', '', '', '2023-11-21', '2024-10-30', 5, 27, 8, 61, 126, 1, 1, 80, '2023-11-21', 2, 0, 0, 1, 14, '90487303088', '002668904873030882', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(276, '230276', 'MAURICIO', '', 'MAURICIO', 'CAMARILLO', 'AGUILAR', '1982-06-18', 'M', 'CAAM820618HPLMGR06', '02978279863', 'CAAM8206189W9', 2, 0, '', 'CASO 108 33 COND SUBRA 6 PASEO SOLARE REAL SOLARE 4. C.P. 76246 REAL SOLARE, QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'mauricio.camarillo@ldrsolutions.com.mx', '', '', '2023-11-22', '0000-00-00', 6, 41, 26, 91, 258, 1, 1, 12, '2023-11-22', 2, 42469, 55010, 1, 48, '06406060560', '021225064060605601', 6, 2, '0000-00-00', '2025-04-29', 0, 708),
(277, '230277', 'PATRICIA', '', 'PATRICIA', 'GARCIA', 'RINCON', '2023-11-22', 'F', 'GARP860318MJCRNT06', '04018641599', 'GARP860318N39', 2, 0, '', 'PERLA MABE 73 COL : LA ESMERALDA C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pgr8681@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-22', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '2023-11-22', 2, 0, 0, 2, 20, '01252256942', '072362012522569424', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(278, '230278', 'GERALDINE', 'ELIZABETH', 'GERALDINE', 'ESPARZA', 'PEREZ', '2005-03-31', 'F', 'EAPG050331MJCSRRA3', '18200576652', 'SIN ASIGNAR', 5, 0, '', 'AV. LEONARDO PEREZ LARIOS #232 COL: CRISTEROS C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'linnyelizabethperezl@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-11-24', '2000-01-01', 3, 17, 25, 37, 87, 1, 1, 0, '2023-11-24', 2, 0, 0, 2, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(279, '230279', 'JORGE', 'ALEJANDRO', 'JORGE', 'IBARRA', 'E IBARRA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-03-15', 3, 8, 1, 16, 31, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(280, '230280', 'LUIS', 'REY', 'LUIS', 'PICAZO', 'CAMACHO', '1983-08-25', 'M', 'PICL830825HDFCMS11', '30048319591', 'PICL830825SA0', 1, 0, '', 'C CONDOR 7 12 COL BELLAVISTA 01140 ALVARO OBREGON, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mc.camarillo@gmail.com', 1, 'luis.picazo@ldrsolutions.com.mx', '', '', '2023-11-29', '0000-00-00', 6, 37, 13, 78, 187, 1, 1, 22, '0000-00-00', 6, 0, 0, 1, 10, '00110512079', '127180001105120797', 3, 1, '0000-00-00', '2025-05-29', 0, 202),
(281, '230281', 'PABLO', '', 'PABLO', 'TORREJON', 'BECERRIL', '1975-10-13', 'M', 'TOBP751013HDFRCB09', '37937526210', 'TOBP7510135T3', 1, 0, '', 'VIA DE GAVIA NO. EXT 2235 SUR, LOTE 51, MZA 28 CONJUNTO URBANO CONDADO DEL VALLE SAN MIGUEL TOTOCUITLAPILCO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pgr8681@gmail.com', 1, 'pablo.torrejon@ldrsolutions.com.mx', '', '3318363101', '2024-01-15', '0000-00-00', 3, 4, 11, 5, 11, 1, 1, 21, '0000-00-00', 6, 0, 0, 1, 14, '07770013415', '002180077700134156', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(282, '230282', 'EVER', '', 'EVER', 'HERNANDEZ', 'GUTIERREZ', '1967-09-20', 'M', 'HEGE670920HHGRTV09', '21906753393', 'HEGE670920C41', 1, 0, '', 'RET JALAPA NUM 97 ENTRE AV MEXICO Y JALAPA COL BENITO JUAREZ F B DE SAHAGUN, HG C.P. 43994', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'hever548@aol.com', 1, 'ever.hernandez@ldrsolutions.com.mx', '', '3311930241', '2025-04-28', '0000-00-00', 6, 41, 13, 86, 226, 1, 1, 1, '0000-00-00', 6, 0, 0, 1, 20, '0420128887', '072294004201288872', 4, 1, '0000-00-00', '2025-05-07', 0, 208),
(283, '230283', 'CRISTIAN', '', 'CRISTIAN', 'CORTES', 'RANGEL', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 20, 1, 40, 92, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(284, '230284', 'DIANA', 'PAOLA', 'DIANA', 'MONTALVO', 'PEDROZA', '2004-04-28', 'F', 'MOPD040428MGTNDNA6', '08200474149', 'MOPD040428HI1', 4, 0, '', 'PADRE MIGUEL GOMEZ LOZA #136 COL: CRISTEROS C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'peque.montalvo2804@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-04', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-12-04', 2, 7968, 8382, 2, 20, '01253546976', '072362012535469760', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(285, '230285', 'MARIO', 'AXEL', 'MARIO', 'JIMENEZ', 'DIAZ', '2000-02-09', 'M', 'JIDM000209HJCMZRA2', '51160080092', 'JIDM000209SE1', 4, 0, '', 'PASEOS SIERA MORENA 1273 COL: PASEOS DE LA MONTANA C.P 47463', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-12-04', '0000-00-00', 3, 12, 25, 26, 67, 1, 1, 35, '2023-12-04', 2, 0, 0, 2, 26, '1547895615', '012356015478956154', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(286, '230286', 'OMAR', 'EDUARDO', 'OMAR', 'GONZALEZ', 'CISNEROS', '2000-03-27', 'M', 'GOCO000327HDFNSMA0', '19180078578', 'GOCO000327M43', 1, 0, '', 'CALLE JARIBU 27, COLONIA AMPLIACION TEPEACA, DELEGACION ALVARO OBREGON, CP: 01550', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'omar.gonzalez@ldrsolutions.com.mx', '', '', '2023-12-06', '0000-00-00', 6, 37, 13, 78, 188, 1, 1, 71, '0000-00-00', 6, 0, 0, 1, 14, '90495339555', '002180904953395556', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(287, '230287', 'SERGIO', '', 'SERGIO', 'SAN JUAN', 'ARANGO', '1998-10-06', 'M', 'SAAS981006HMCNRR04', '08219845289', 'SAAS981006VE2', 1, 0, '', 'CALLE CORONA 20 COL. MODELO NAUCALPAN DE JUAREZ C.P.11000, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'sergio.sanjuan@ldrsolutions.com.mx', '', '', '2023-12-11', '0000-00-00', 6, 41, 13, 94, 275, 1, 1, 2, '0000-00-00', 6, 0, 0, 1, 26, '01583963966', '012180015839639668', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(288, '230288', 'JOSE', 'DE JESUS', 'JOSE', 'LOPEZ', 'ALBA', '2005-05-19', 'M', 'LOAJ050519HJCPLSA9', '10220507312', 'SIN ASIGNAR', 4, 0, '', 'AGUSTIN RIVERA 41 COL :CENTRO C.P 47400', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chuyjoaedejesus@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-11', '2024-08-15', 3, 12, 25, 27, 72, 1, 1, 30, '2023-12-11', 2, 0, 0, 2, 1, '1586131773', '012180015861317738', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(289, '230289', 'JESUS', 'AARON', 'JESUS', 'MONTELONGO', 'MUÑOZ', '2002-07-18', 'M', 'MOMJ020718HGTNXSA1', '27210261866', 'SIN ASIGNAR', 4, 0, '', 'HERMION LARIOS #876 COL:EL REFUGIO C.P 47470', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'aronm6392@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-11', '2024-06-14', 3, 18, 25, 38, 88, 1, 1, 32, '2023-12-11', 2, 0, 0, 2, 1, '1176322466', '072362011763224668', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(290, '230290', 'SARAI', '', 'SARAI', 'RAMIREZ', 'MARTINEZ', '1995-07-15', 'F', 'RAMS950715MDFMRR03', '39139541617', 'RAMS950715EF0', 1, 0, '', 'CAMELIAS SN, COL BENITO JUAREZ BARRON, NICOLAS ROMERO, EDO MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'sarai.ramirez@ldrsolutions.com.mx', '', '3334969546', '2023-12-18', '0000-00-00', 3, 4, 11, 5, 12, 1, 1, 89, '0000-00-00', 6, 0, 0, 1, 71, '56805724492', '014180568057244924', 3, 1, '0000-00-00', '2025-06-26', 0, 516),
(291, '230291', 'VICTOR', 'LEVI', 'LEVI', 'ARAUZ', 'ANTONIO', '1990-05-22', 'M', 'AAAV900522HDFRNC06', '42139004966', 'AAAV900522I14', 1, 0, '', 'HACIENDA DE LA PALMA MZ 25 LT 26B, HACIENDA DEL VALLE 2, TOLUCA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'levi.arauz@ldrsolutions.com.mx', '', '3332508956', '2023-12-18', '0000-00-00', 3, 4, 11, 8, 18, 1, 1, 40, '0000-00-00', 6, 0, 0, 1, 26, '01587225623', '012180015872256231', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(292, '230292', 'SUSANA', 'ERANDI', 'ERANDI', 'DE LA CRUZ', 'BIRRUETA', '1997-08-07', 'F', 'CUBS970807MMCRRS07', '16159706411', 'CUBS97080778A', 1, 0, '', 'BAJA CALIFORNIA SUR 14, SANTA MARIA ZOLOTEPEC, XONACATLAN, EDO. DE MEXICO, C.P 52070', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chuyjoaedejesus@gmail.com', 1, 'erandi.delacruz@ldrsolutions.com.mx', '', '', '2023-12-18', '0000-00-00', 6, 37, 13, 78, 189, 1, 1, 71, '0000-00-00', 6, 0, 0, 1, 26, '01577468313', '012180015774683135', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(293, '230293', 'RAUL', 'FERNANDO', 'RAUL', 'MUÑOZ', 'OLALDE', '1976-03-06', 'M', 'MUOR760306HDFXLL00', '39077601050', 'MUOR7603063Q1', 1, 0, '', '3A  CDA DE BAHIA MZA 43 LT 9 COL AMPL AGUILAS 01710 ALVARO OBREGO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'aronm6392@gmail.com', 1, 'raul.munoz@ldrsolutions.com.mx', '', '', '2023-12-18', '0000-00-00', 6, 7, 13, 13, 23, 1, 1, 39, '0000-00-00', 6, 0, 0, 1, 14, '90100599677', '002180901005996770', 3, 1, '0000-00-00', '2025-06-05', 0, 202),
(294, '230294', 'ERICK', 'ARIEL', 'ARIEL', 'SANCHEZ', 'HERNANDEZ', '1999-06-13', 'M', 'SAHE990613HMCNRR07', '08149973433', 'SAHE990613TR1', 1, 0, '', 'MIGUEL ALLENDE 112 SAN RAFAEL CHAMAPA NAULCAPAN DE JUAREZ ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ariel.sanchez@ldrsolutions.com.mx', '', '', '2023-12-18', '0000-00-00', 6, 39, 13, 82, 209, 1, 1, 82, '0000-00-00', 6, 0, 0, 1, 26, '01590290960', '012180015902909607', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(295, '230295', 'JOSE', '', 'JOSE', 'GOMEZ', 'IBARRA', '1971-03-19', 'M', 'GOIJ710319HJCMBS07', '54917147255', 'GOIJ710319UK7', 5, 0, '', 'ISLAS #33 COL: EJIDO C.P 47536', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'josegomezibarra765@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-18', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-12-18', 2, 7968, 8382, 2, 20, '01254937414', '072362012549374142', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(296, '230296', 'EVELYN', 'CRISTAL', 'EVELYN', 'CALDERON', 'GUTIERREZ', '1983-08-22', 'F', 'CAGE830822MDFLTV03', '07038316225', 'CAGE830822HK2', 1, 0, '', 'YUCATAN 20, INT 1 COL. TIZAPAN 01090, ALVARO OBREGON', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'evelyn.calderon@ldrsolutions.com.mx', '', '3339565859', '2023-12-18', '0000-00-00', 6, 35, 13, 74, 156, 1, 1, 16, '0000-00-00', 6, 0, 0, 1, 26, '01589379467', '012180015893794675', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(297, '230297', 'ARLETH', 'GUADALUPE', 'ARLETH', 'MENDEZ', 'SANCHEZ', '2005-04-07', 'F', 'MESA050407MJCNNRA8', '60200580052', 'MESA050407QV1', 4, 0, '', 'ESMERALDA 900-2 COL: LA ESMERALDA C.P 47472,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-12-19', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2023-12-19', 2, 0, 0, 2, 20, '12551114086', '072362012551114086', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(298, '230298', 'EDGAR', 'EMILIANO', 'EDGAR', 'ESPINOSA', 'ARANDA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(300, '230300', 'JAIRO', '', 'JAIRO', 'BRAVO', 'CASTILLO', '2005-02-20', 'M', 'BACJ050220HMCRSRA6', '26210523812', 'BACJ0502203E9', 4, 0, '', 'EDIF 4 DPTO 303 HSB INFONSVIT NORTE CUAUTITLAN IZCALLI MEXICO CP 54720', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'castillobravojairo13@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-11', '2024-03-01', 6, 47, 26, 108, 311, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(302, '230302', 'JAHIR', 'DE JESUS', 'JAHIR', 'GARCIA', 'BRAVO', '1992-07-20', 'M', 'GABJ920720HMCRRH07', '92119292750', 'GABJ920720JK6', 4, 0, '', 'CIRRUS 203 7AUSTRALIA REAL SOLARE CP. 76240', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jahirgarciabravo5@gmail.com', 1, 'jahir.garcia@ldrsolutions.com.mx', '', '', '2023-12-21', '0000-00-00', 6, 41, 26, 91, 259, 1, 1, 23, '0000-00-00', 2, 15000, 17554, 1, 26, '01523844476', '012180015238444768', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(306, '230306', 'JUAN', 'FERNANDO', 'JUAN', 'GARCIA', 'TORRES', '2004-08-21', 'M', 'GATJ040821HJCRRNA6', '46220451960', 'GATJ040821AU0', 4, 0, '', 'PADRE TRANQUILINO #292 COL: CRISTEROS C.P 47476', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'saracampos070751@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-29', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2023-12-29', 2, 7968, 8382, 2, 26, '01591747253', '012180015917472530', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(307, '230307', 'JUAN', 'JOSE', 'JUAN', 'HERNANDEZ', 'MALACARA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 10, 1, 18, 34, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(308, '230308', 'VICTOR', 'JAVIER', 'VICTOR', 'JIMENEZ', 'GOMEZ', '1991-05-20', 'M', 'JIGV910520HJCMMC07', '04109157349', 'SIN ASIGNAR', 2, 0, '', 'BETULIA #125 COL :VILLAS DE SANTA SOFIA C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'vj620993@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-29', '2000-01-01', 3, 12, 25, 24, 56, 1, 1, 7, '2023-12-29', 2, 0, 0, 2, 1, '4807735', '002362904848077354', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(309, '230309', 'MARIA', 'CRISTINA', 'MARIA', 'MONTOYA', 'GUTIERREZ', '1995-07-25', 'F', 'MOGC950725HJCNTR00', '85149560246', 'MOGC950725M89', 3, 0, '', 'FRANCISCO JAVIER LARIOS #14 COL: CAÑADA DE RICOS C.P 47450', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cristinammg25@gmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-29', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2023-12-29', 2, 7968, 8382, 2, 26, '01527059798', '012225015270597981', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(310, '240310', 'JORGE', '', 'JORGE', 'CEBALLOS', 'BALLESTEROS', '0000-00-00', 'M', 'CEBJ800724HDFBLR00', '14998040811', 'CEBJ800724MUA', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'saracampos070751@gmail.com', 1, 'jorge.ceballos@jetourmx.com', '', '', '2024-01-02', '2024-05-31', 6, 41, 1, 93, 272, 1, 1, 85, '0000-00-00', 6, 12000, 13677, 1, 26, '01586797153', '012680015867971539', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(311, '240311', 'LUIS', 'ANTONIO', 'LUIS', 'ESCALONA', 'JUAREZ', '1993-07-19', 'M', 'EAJL930719HNLSRS09', '43119390698', 'EAJL930719H83', 2, 0, '', 'RIO TAMESI 113 COL. PASEO DE LA RIBERA, JUAREZ NUEVO LEON CP. 66250', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-02', '0000-00-00', 6, 41, 27, 86, 227, 1, 1, 66, '2024-01-02', 2, 0, 0, 1, 26, '01518953346', '012580015189533467', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(312, '240312', 'ADRIAN', '', 'ADRIAN', 'BELTRAN', 'MATA', '1996-11-06', 'M', 'BEMA961106HDGLTD04', '31139623164', 'BEMA961106AX7', 2, 0, '', 'OBREROS UNIDOS 1501  MONCLOVA 2 SEC  66085 GRAL. ESCOBEDO N.L. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adrian.belt96@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-02', '0000-00-00', 6, 41, 27, 86, 222, 1, 1, 69, '2024-01-02', 2, 0, 0, 1, 26, '01527396514', '012060015273965144', 5, 2, '0000-00-00', '2025-06-05', 0, 708),
(313, '240313', 'CRISTOBAL', '', 'CRISTOBAL', 'ROCHA', 'DE SANTIAGO', '2005-08-27', 'F', 'ROSC050827HJCCNRA4', '05200506292', 'SIN ASIGNAR', 4, 0, '', 'PLAZA SIMON CELEDON 5 A COL: SAN MIGUEL BUENAVISTA C.P 47513.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'crochadesantiago@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-04', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-01-04', 2, 0, 0, 2, 1, '1256103585', '072362012561035854', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(314, '240314', 'CRISTIAN', 'GABRIEL', 'CRISTIAN', 'LEOS', 'GOMEZ', '1996-09-08', 'M', 'LEGC960908HJCSMR05', '09169620730', 'LEGC960908LD4', 4, 0, '', 'FCO I MADERO EXT. 726 INT. 312 COLONIA CENTRO CP. 47400', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'christotal90@gmail.com', 1, 'cristian.leos@ldrsolutions.com.mx', '', '', '2024-01-08', '0000-00-00', 6, 39, 24, 80, 197, 1, 1, 86, '2024-01-08', 2, 0, 0, 1, 26, '01557114527', '012180015571145274', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(315, '240315', 'SALVADOR', '', 'SALVADOR', 'CARBAJAL', 'MENESES', '1976-05-07', 'M', 'CAMS760507HGRRNL10', '01987614755', 'CAMS7605071E4', 1, 0, '', 'LAGUNA DEL CARMEN 133B, INT 202 COL ANAHUAC, MIGUEL HIDALGO, 11320, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Luis_escalona10@hotmail.com', 1, 'salvador.carbajal@ldrsolutions.com.mx', '', '3331711318', '2024-01-08', '0000-00-00', 3, 8, 11, 14, 24, 1, 1, 87, '0000-00-00', 6, 0, 0, 1, 20, '00016164458', '072180000161644583', 3, 1, '0000-00-00', '2025-06-05', 0, 202),
(316, '240316', 'CARLOS', '', 'CARLOS', 'GARFIAS', 'ROMERO', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adrian.belt96@gmail.com', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-02-06', 6, 46, 1, 107, 307, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(317, '240317', 'ESTEFANI', '', 'ESTEFANI', 'HERNANDEZ', 'CRUZ', '2001-11-12', 'F', 'HECE011112MJCRRSA0', '02230177251', 'HECE011112B33', 4, 0, '', 'TRINIDAD RANGEL 108 COL:CRISTEROS C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'josefinamurguia22@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-08', '0000-00-00', 3, 12, 25, 22, 44, 1, 1, 8, '2024-01-08', 2, 0, 0, 2, 71, '56881164976', '', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(318, '240318', 'NAYELI', 'MARGARITA', 'NAYELI', 'NORIEGA', 'RAMIREZ', '1997-03-06', 'F', 'NORN970306MJCRMY00', '73159759577', 'SIN ASIGNAR', 4, 0, '', 'PADRE TORRES #5 COL: CAPUCHINAS C.P 47430', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nayeli98@idoud.com', 1, 'SIN ASIGNAR', '', '', '2024-01-08', '2000-01-01', 3, 20, 25, 40, 92, 1, 1, 32, '2024-01-08', 2, 0, 0, 2, 1, '6594462298', '021225065944622987', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(319, '240319', 'ANA', 'LUCIA', 'ANA', 'URBINA', 'HERNANDEZ', '2000-07-02', 'F', 'UIHA000702MGTRRNA0', '14130063366', 'UIHA000702133', 4, 0, '', 'MESA DE LOS CABALLOS #175 COL: LOMAS DEL VALLE C.P 47460,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-08', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-01-08', 2, 7968, 8382, 2, 26, '01501787707', '012362015017877073', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(320, '240320', 'DANIEL', '', 'DANIEL', 'SANCHEZ', 'HERNANDEZ', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-01-11', 6, 46, 1, 107, 307, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(321, '240321', 'PEDRO', 'HECTOR', 'PEDRO', 'SERRANO', 'HERRERA', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'josefinamurguia22@gmail.com', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 3, 2, '0000-00-00', '0000-00-00', 0, 0);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(322, '240322', 'KARLA', 'ARACELY', 'KARLA', 'RODRIGUEZ', 'HERNANDEZ', '0000-00-00', 'M', 'ROHK860621MJCDRR02', '04088667763', 'ROHK8606217S9', 1, 0, '', 'OBREROS DE CANANEA 1613 INT 73, COL. LA PALMITA C.P. 45180', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nayeli98@idoud.com', 1, 'karla.rodriguez@ldrsolutions.com.mx', '', '3316022642', '2024-01-10', '0000-00-00', 3, 4, 33, 10, 7, 1, 1, 27, '0000-00-00', 6, 0, 0, 1, 71, '56774287229', '014320567742872297', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(324, '240324', 'JOSE', 'HECTOR', 'JOSE', 'HERNANDEZ', 'CORDERO', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'analuhdz7@gmail.com', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-06-03', 10, 62, 1, 127, 347, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(325, '240325', 'PILAR', 'OSVALDO', 'OSVALDO', 'SARRO', 'PEREZ', '0000-00-00', 'M', 'SAPP891012HTCRRL00', '28078914992', 'SAPP891012LV8', 1, 0, '', 'PRIVADA GIRASOL 2255, FRACC. VILLAS DEL CAMPO, CALIMAYA , EDO MEX CP 52227', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'osvaldo.sarro@ldrsolutions.com.mx', '', '', '2024-01-15', '2024-10-30', 3, 5, 11, 11, 20, 1, 1, 51, '0000-00-00', 6, 0, 0, 1, 48, '06458452921', '021420064584529217', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(326, '240326', 'MARCO', 'ANTONIO', 'MARCO', 'VASQUEZ', 'MARTINEZ', '1989-12-14', 'M', 'VAMM891214HMCSRR00', '96088980386', 'VAMM891214QC0', 1, 0, '', 'AVENIDA MANUEL AVILA CAMACHO LT 16 MZ 93 COL GUADALUPANA VALLE DE CHALCO, C.P 56616 ESTADO MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'marco.vasquez@jetourmx.com', '', '3316027664', '2024-01-15', '0000-00-00', 3, 8, 11, 14, 25, 1, 1, 21, '0000-00-00', 6, 0, 0, 1, 49, '50000573948', '036180500005739485', 3, 1, '0000-00-00', '2025-06-05', 0, 202),
(327, '240327', 'MARIA', 'DEL CARMEN', 'MARIA', 'CRUZ', 'JOSE', '1999-07-16', 'F', 'CUJC990716MOCRSR06', '33139970694', 'CUJC990716U2A', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-15', '0000-00-00', 6, 49, 13, 110, 321, 1, 1, 134, '0000-00-00', 6, 0, 0, 2, 14, '90427242047', '002180904272420474', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(328, '240328', 'SANDRA', 'FABIOLA', 'SANDRA', 'LEON', 'MORALES', '1983-03-25', 'F', 'LEMS830325MDFNRN05', '11078312821', 'LEMS830325M3A', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-15', '0000-00-00', 6, 46, 13, 110, 321, 1, 1, 134, '0000-00-00', 6, 0, 0, 2, 26, '01537299823', '012180015372998235', 3, 1, '0000-00-00', '2025-06-16', 0, 209),
(329, '240329', 'ERICK', 'ISRAEL', 'ERICK', 'SEGURA', 'DE LEON', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-05-24', 10, 62, 1, 127, 347, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(330, '240330', 'BERTHA', '', 'BERTHA', 'EVARISTO', 'JERONIMO', '0000-00-00', 'F', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 6, 46, 1, 107, 308, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(333, '240333', 'KARLA', 'ITZEL', 'KARLA', 'CASTILLO', 'DE LA TORRE', '1998-12-06', 'F', 'CATK981206MMCSRR03', '12169864266', 'CATK981206NQ5', 4, 0, '', 'MIRA LUNA 62, COLONIA CUMBRIA, C.P. 54740, CUAUTITLAN IZCALLI, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'karla.castillo@ldrsolutions.com.mx', '', '3333909999', '2024-01-22', '0000-00-00', 3, 4, 11, 5, 13, 1, 1, 89, '0000-00-00', 6, 0, 0, 1, 26, '01585180600', '012180015851806000', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(334, '240334', 'EDGAR', 'ALAN', 'EDGAR', 'REA', 'ESTRADA', '1992-01-02', 'M', 'REEE920102HDFXSD01', '03209257454', 'REEE920102G3A', 1, 0, '', '6 DE ENERO 41 COL. NAVIDAD, DEL. CUAJIMALPA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'edgar.estrada@ldrsolutions.com.mx', '', '', '2024-01-22', '0000-00-00', 6, 37, 13, 78, 185, 1, 1, 68, '0000-00-00', 6, 0, 0, 1, 14, '90226796265', '002180902267962651', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(336, '240336', 'JORGE', 'DAVID', 'JORGE', 'LOPEZ', 'MALDONADO', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-08-16', 5, 26, 1, 59, 120, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(337, '240337', 'ISAAC', '', 'ISAAC', 'GALVAN', 'BAUTISTA', '2000-11-11', 'M', 'GABI001111HJCLTSA1', '13130003596', 'GABI001111J31', 4, 0, '', 'LA MERCED 10 COL :MUNICIPIO LIBRE C.P 47472', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Issacgb11@outloook.com', 1, 'isaac.galvan@ldrsolutions.com.mx', '', '', '2024-01-26', '0000-00-00', 3, 12, 25, 23, 51, 1, 1, 70, '2024-01-26', 2, 0, 0, 2, 20, '01237206560', '072362012372065602', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(338, '240338', 'ROSA', 'LINDA', 'ROSA', 'PEGUERO', 'RAMIREZ', '1995-10-16', 'F', 'PERR951016MNTGMS07', '31169510851', 'PERR951016534', 4, 0, '', 'ROBLES 131 COL:LOMAS DEL VALLE C.P 47460 LAGOS DE MORENO JALISCO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'rosa.peguero@ldrsolutions.com.mx', '', '', '2024-01-29', '0000-00-00', 6, 46, 24, 106, 301, 1, 1, 39, '2024-01-30', 2, 0, 0, 1, 48, '06540974388', '021362065409743882', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(339, '240339', 'JUAN', 'ANGEL', 'JUAN', 'REYES', 'MALDONADO', '2004-10-08', 'M', 'REMJ041008HNLYLNA4', '10200469475', 'REMJ041008G57', 4, 0, '', 'CASTILLO DE ATRENZA 230 B COL. VILLAS DEL ARCO, EL CARMEN NUEVO LEON CP. 99999', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-29', '0000-00-00', 6, 41, 27, 86, 228, 1, 1, 78, '2024-01-29', 2, 0, 0, 1, 71, '56871273538', '014580568712735381', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(340, '240340', 'VICTOR', 'MANUEL', 'VICTOR', 'VALDEZ', 'GARCIA', '1989-08-10', 'M', 'VAGV890810HDFLRC01', '13118929440', 'VAGV8908106T2', 1, 0, '', 'C HIDALGO NORTE 67 COL CENTRO C.P. 43930 TLANALAPA, HGO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'victor.valdez@ldrsolutions.com.mx', '', '3334953916', '2024-01-29', '0000-00-00', 6, 41, 13, 86, 222, 1, 1, 90, '0000-00-00', 6, 0, 0, 1, 20, '00877069490', '072294008770694906', 3, 1, '0000-00-00', '2025-06-24', 0, 202),
(341, '240341', 'CESAR', 'ALEJANDRO', 'CESAR', 'MOSQUEDA', 'TERAN', '1977-02-25', 'M', 'MOTC770225HJCSRS08', '75927704082', 'MOTC770225AW5', 2, 0, '', 'JUAN TABLADA 1259 INT BIS A MIRAFLORES, CP. 44270, GUADALAJARA JALISCO ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Issacgb11@outloook.com', 1, 'cesarmt@ldrsolutions.com', '', '', '2024-02-01', '0000-00-00', 6, 36, 32, 77, 173, 1, 1, 0, '0000-00-00', 6, 0, 0, 1, 14, '70197725115', '002320701977251150', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(342, '240342', 'OBED', '', 'OBED', 'URBINA', 'DIAZ', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2024-04-10', 3, 41, 1, 39, 90, 1, 1, 0, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(343, '240343', 'JIRE', '', 'JIRE', 'URBINA', 'DIAZ', '0000-00-00', 'M', 'UIDJ040917HNLRZRA8', '19220459556', 'UIDJ040917MZ1', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'reyesreyes5871@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-01', '2024-05-31', 6, 43, 1, 99, 289, 1, 1, 64, '0000-00-00', 6, 14000, 16233, 1, 26, '01541740185', '012180015417401852', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(344, '240344', 'JUAN', 'ANGEL', 'JUAN', 'JARA', 'MORALES', '1983-12-20', 'M', 'JAMJ381220HNLRRN02', '47998351234', 'SIN ASIGNAR', 4, 0, '', 'SIERRA DEL TARILLAL 107 COL SERRANIAS, ESCOBEDO NUEVO PELON CP. 66065', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-02-01', '2024-04-10', 3, 41, 29, 39, 90, 1, 1, 64, '2024-02-01', 2, 0, 0, 1, 1, '1238571537', '72580012385715300', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(345, '240345', 'LUIS', 'ENRIQUE', 'ENRIQUE', 'CASTAÑON', 'VARGAS', '1994-09-19', 'M', 'CAVL940919HDFSRS08', '26149441102', 'CAVL940919FF1', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'enrique.castanon@ldrsolutions.com.mx', '', '3338089371', '2024-02-06', '0000-00-00', 6, 41, 13, 88, 243, 1, 1, 135, '0000-00-00', 6, 0, 0, 1, 20, '01185205301', '072580011852053014', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(346, '240346', 'JOSE', 'ALBERTO', 'ALBERTO', 'SORIANO', 'MORALES', '1995-09-14', 'M', 'SOMA950914HDFRRL03', '01109523389', 'SOMA950914EC6', 1, 0, '', 'IGNACIO ZARAGOZA N.5 COL. CASTILLO CHICO, GUSTAVO A MADERO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alberto.soriano@ldrsolutions.com.mx', '', '', '2024-02-12', '0000-00-00', 6, 38, 13, 79, 409, 1, 1, 91, '2024-02-12', 2, 0, 0, 1, 26, '01552854535', '012180015528545351', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(347, '240347', 'OSCAR', 'EMANUEL', 'EMMANUEL', 'GARCIA', 'RAMIREZ', '1991-08-01', 'M', 'GARO910801HDFRMS01', '11099109339', 'GARO910801IQ9', 1, 0, '', 'RIO MICHIGAN M16 L10 VALLE DE SAN LORNZO DEL: IZTAPALAPA CP:009970', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'emmanuel.garcia@ldrsolutions.com.mx', '', '3313878610', '2024-02-12', '0000-00-00', 6, 41, 13, 86, 229, 1, 1, 55, '2024-02-12', 2, 0, 0, 1, 26, '01547512120', '012180015475121200', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(348, '240348', 'YAEL', 'DANIELA', 'DANIELA', 'BERNAL', 'SANCHEZ', '1998-10-18', 'F', 'BESY981018MMCRNL04', '01179817042', 'BESY981018KF6', 4, 0, '', 'CALLE GLACIAL NUMERO 12, COLONIA ATLANTA SEGUNDA SECCION, CUAUTITLAN IZCALLI, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'tigrecincuentaiuno@gmail.com.mx', 1, 'daniela.bernal@ldrsolutions.com', '', '', '2024-02-12', '0000-00-00', 6, 36, 13, 77, 169, 1, 1, 17, '2024-02-12', 2, 0, 0, 1, 26, '01592389814', '012180015923898140', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(349, '240349', 'SERGIO', 'ARMANDO', 'SERGIO', 'GASCA', 'SOLORIO', '1992-08-23', 'M', 'GASS920823HDFSLR06', '26149236072', 'GASS920823GM3', 4, 0, '', 'ATRIO DEL EMBRUJO 21. COL. BOSQUE ESMERALDA. ATIZAPAN DE ZARAGOZA. ESTADO DE MEXICO. 52930', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'sergio.gasca@ldrsolutions.com.mx', '', '', '2024-02-12', '0000-00-00', 6, 37, 13, 78, 190, 1, 1, 45, '2024-02-12', 2, 0, 0, 1, 14, '90417710948', '002180904177109489', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(350, '240350', 'GERARDO', 'RAFAEL', 'GERARDO', 'CERRITOS', 'ARCE', '1982-11-12', 'M', 'CEAG821112HDFRRR04', '37078203686', 'CEAG821112PW6', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rfa1982@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-12', '2024-06-27', 3, 4, 11, 7, 16, 1, 1, 92, '2024-02-12', 2, 0, 0, 1, 20, '0575661202', '072180005756612022', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(351, '240351', 'JUAN', 'ALBERTO', 'JUAN', 'FACIO', 'FACIO', '1994-12-15', 'M', 'FAFJ941215HJCCCN00', '75139422390', 'FAFJ941215572', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'albertofacio94@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-13', '0000-00-00', 3, 12, 25, 23, 52, 1, 1, 70, '2024-02-13', 2, 11244, 12727, 2, 26, '01587653323', '012180015876533235', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(352, '240352', 'ISAAC', '', 'ISAAC', 'GOMEZ', 'FLORES', '1993-02-15', 'M', 'GOFI930215HDFMLS07', '12109363197', 'GOFI9302155Z7', 4, 0, '', 'SABINO 169, INTERIOR 305, COL. SANTA MARIA LA RIBERA, CUAUHTEMOC, CP 06400, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'isaac.gomezf@ldrsolutions.com.mx', '', '3318250781', '2024-02-19', '0000-00-00', 3, 4, 11, 10, 7, 1, 1, 27, '2024-02-19', 2, 0, 0, 1, 48, '06491388934', '021180064913889347', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(353, '240353', 'ALBERTO', '', 'ALBERTO', 'GARCIA', 'SANTIAGO', '1975-01-24', 'M', 'GASA750124HDFRNL06', '39927581882', 'GASA750124CD2', 2, 0, '', 'LEO 74 UNIDAD MORELOS 3A SECCION TULTITLAN ESTADO DE MEXICO CP 54935', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alberto.garcia75@gmail.com', 1, 'alberto.garcia@ldrsolutions.com.mx', '', '3312181389', '2024-02-19', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '2024-02-19', 2, 40000, 51329, 1, 26, '01160409669', '012180011604096692', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(354, '240354', 'BRANDON', '', 'BRANDON', 'LUNA', 'PEREZ', '1998-09-02', 'M', 'LUPB980902HDFNRR09', '39159813706', 'LUPB980902510', 4, 0, '', 'GRANJAS 20, SAN MIGUEL TOPILEJO, TLALPAN, CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rfa1982@gmail.com', 1, 'brandon.luna@ldrsolutions.com.mx', '', '', '2024-02-19', '0000-00-00', 6, 37, 13, 78, 191, 1, 1, 93, '2024-02-19', 2, 0, 0, 1, 26, '01592270610', '012180015922706107', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(355, '240355', 'OSCAR', 'ALBERTO', 'OSCAR', 'LOPEZ', 'AMADOR', '2000-11-28', 'M', 'LOAO001128HJCPMSA1', '13130053492', 'LOAO0011285M9', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'oscaar_111@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-20', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '2024-02-20', 2, 0, 0, 2, 26, '01537118338', '012362015371183380', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(356, '240356', 'ADRIAN', '', 'ADRIAN', 'REYES', 'LOPEZ', '1992-01-31', 'M', 'RELA920131HJCYPD01', '75129204501', 'RELA920131EW7', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'aadrian.lopez9892@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-20', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-02-20', 2, 7968, 8382, 2, 26, '01542149613', '012362015421496134', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(357, '240357', 'RAUL', '', 'RAUL', 'RODRIGUEZ', 'RUIZ', '1998-02-22', 'M', 'RORR980222HJCDZL00', '03149876686', 'RORR980222MP6', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rr842919@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-22', '2024-06-10', 3, 13, 33, 33, 82, 1, 1, 94, '2024-02-22', 2, 0, 0, 2, 26, '1577900845', '012180015779008456', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(358, '240358', 'JOSE', 'ISRAEL', 'ISRAEL', 'GARDUÑO', 'RUEDA', '1995-01-19', 'M', 'GARI950119HDFRDS05', '30139511817', 'GARI950119T8A', 4, 0, '', 'CERRADA GORRION 5 TACUBAYA DEL. MIGUEL HIDALGO CP. 11870', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'israel.garduno@ldrsolutions.com.mx', '', '3316001588', '2024-02-26', '0000-00-00', 6, 37, 13, 78, 191, 1, 1, 93, '2024-02-26', 2, 0, 0, 1, 20, '11146750706', '072580011146750706', 4, 1, '0000-00-00', '2025-06-10', 0, 209),
(359, '240359', 'ANDRES', 'DE JESUS', 'ANDRES', 'HERNANDEZ', 'HERNANDEZ', '1985-12-24', 'M', 'HEHA851224HDFRRN09', '11078504203', 'HEHA851224MX1', 4, 0, '', 'GOBERNADOR MANUEL GONZALEZ CALDERON 14 INT. 4 COL. OBSERVATORIO MIGUEL HIDALGO C.P.11860', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'oscaar_111@hotmail.com', 1, 'andres.hernandez@ldrsolutions.com.mx', '', '', '2024-02-26', '0000-00-00', 10, 62, 28, 127, 392, 1, 1, 43, '2024-02-26', 2, 0, 0, 1, 71, '60605356817', '014180606053568171', 4, 1, '0000-00-00', '2025-06-03', 0, 209),
(360, '240360', 'JUAN', 'ALEJANDRO', 'ALEJANDRO', 'DUARTE', 'DELGADILLO', '1968-12-05', 'M', 'DUDJ681205HDFRLN09', '07876837563', 'DUDJ681205A14', 4, 0, '', 'C ADELINA PATTI 211 INT 3 COL VALLEJO C.P.07870 GUSTAVO A. MADERO CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'aadrian.lopez9892@gmail.com', 1, 'alejandro.duarte@ldrsolutions.com.mx', '', '', '2024-02-26', '0000-00-00', 10, 62, 28, 127, 356, 1, 1, 43, '2024-02-26', 2, 0, 0, 1, 26, '00469485279', '012180004694852798', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(361, '240361', 'ALAN', 'DIDIER', 'ALAN', 'GONZALEZ', 'SAAVEDRA', '1996-12-14', 'M', 'GOSA950119HDFNVL07', '17199637590', 'GOSA950119EQ8', 4, 0, '', 'AV. JUAN DE DIOS BATIZTICOMAN INT. C 104 COL. SAN JOSE TICOMAN, GAM CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rr842919@gmail.com', 1, 'alan.gonzalez@ldrsolutions.com.mx', '', '3318657322', '2024-02-26', '0000-00-00', 2, 2, 7, 2, 2, 1, 1, 28, '2024-02-26', 2, 0, 0, 1, 71, '20012993253', '039014180200129932', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(362, '240362', 'MARIANO', '', 'MARIANO', 'AGUILAR', 'PEREZ', '1998-06-23', 'M', 'AUPM980623HDFGRR01', '06169878334', 'AUPM980623RV5', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'marianoap677@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-26', '2024-05-24', 6, 35, 13, 75, 163, 1, 1, 52, '2024-02-26', 2, 0, 0, 1, 17, '10439132260', '137180104391322607', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(363, '240363', 'JAIR', 'EMMANUEL', 'JAIR', 'ROMO', 'RAMIREZ', '2000-12-09', 'M', 'RORJ001209HJCMMRA0', '05130098097', 'RORJ001209PJ9', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jair.emmanuel.romo.ramirez@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '2024-02-27', 2, 0, 0, 2, 20, '01262179059', '072362012621790592', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(364, '240364', 'ULISES', 'SAUL', 'ULISES', 'REYES', 'GONZALEZ', '2002-10-02', 'M', 'REGU021002HJCYNLA0', '24160250833', 'REGU021002R94', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'saulglez21002@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '2024-06-18', 3, 16, 1, 36, 85, 1, 1, 7, '2024-02-27', 2, 0, 0, 2, 26, '1510715753', '012180015107157539', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(365, '240365', 'LUIS', 'ENRIQUE', 'LUIS', 'JIMENEZ', 'VEGA', '1998-07-01', 'M', 'JIVL980701HMCMGS06', '21099800746', 'JIVL980701ML7', 5, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'yackenano@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-02-27', 2, 16851, 19998, 2, 26, '01567909128', '012180015679091288', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(366, '240366', 'DANIEL', 'ALBERTO', 'DANIEL', 'GONZALEZ', 'VILLALOBOS', '2003-08-15', 'M', 'GOVD030815HGTNLNA2', '10200352044', 'GOVD030815LZA', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'albertogonzalezvilla18@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-02-27', 2, 0, 0, 2, 71, '56879433759', '014362568794337598', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(367, '240367', 'JAVIER', '', 'JAVIER', 'HERNANDEZ', 'FRANCISCO', '1976-02-23', 'M', 'HEXF760223HJCRXR01', '54947630197', 'HEFR760223I44', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jair.emmanuel.romo.ramirez@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '0000-00-00', 3, 12, 25, 23, 50, 1, 1, 34, '2024-02-27', 2, 0, 0, 2, 20, '01263117777', '072362012631177778', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(368, '240368', 'MARIA', 'TERESA', 'MARIA', 'HERNANDEZ', 'FRANCISCO', '2003-01-28', 'F', 'HEFT030128MJCRRRA7', '13160351154', 'HEFT030128BU2', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'therehernandez28@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-02-27', 2, 7968, 8382, 2, 26, '01562643060', '012320015626430607', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(369, '240369', 'RUBEN', '', 'RUBEN', 'MARTINEZ', 'LOPEZ', '2002-06-01', 'M', 'MALR020601HGTRPBA2', '46200287731', 'MALR0206019NA', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ctyui5154@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '2024-02-27', 2, 7968, 8382, 2, 20, '01222993437', '072362012229934378', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(370, '240370', 'JOSE', 'DE JESUS', 'JOSE', 'RIVAS', 'RODRIGUEZ', '2002-01-08', 'M', 'RIRJ020108HJCVDSA8', '24160282141', 'RIRJ0201084P3', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elbukirodriguez@yahoo.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-02-27', 2, 0, 0, 2, 20, '1262323991', '072362012623239912', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(371, '240371', 'FIORELA', '', 'FIORELA', 'SANCHEZ', 'MEDINA', '1979-06-16', 'F', 'SAMF790616MZSNDR03', '28997902391', 'SAMF790616GH6', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fiorelasame@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-02-27', '2024-07-31', 3, 5, 11, 11, 21, 1, 1, 51, '2024-02-27', 2, 0, 0, 1, 26, '1575500821', '012180015755008218', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(372, '240372', 'ROLANDO', '', 'ROLANDO', 'ELIGIO', 'SALAZAR', '1983-08-27', 'M', 'EISR830827HMCLLL02', '90018323049', 'EISR830827IJ5', 2, 0, '', 'FUENTE DE LA INSPIRACION 11 COL. FUENTE DE SAN JOSE, NICOLAS ROMERO ESTADO DE MEXICO C.P. 54466', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'therehernandez28@gmail.com', 1, 'rolando.eligio@ldrsolutions.com.mx', '', '3318252428', '2024-03-01', '0000-00-00', 3, 4, 11, 5, 7, 1, 1, 27, '2024-03-01', 2, 0, 0, 1, 14, '70027283274', '002180700272832745', 3, 1, '0000-00-00', '2025-05-28', 0, 202),
(373, '240373', 'DANIEL', '', 'DANIEL', 'HERNANDEZ', 'MARTINEZ', '1992-09-18', 'M', 'HEMD920918HPLRRN01', '48129220454', 'HEMD920918LL2', 4, 0, '', 'C IGNACIO COMONFORT 5 A COL SANTA BARBARA C.P. 76906 CORREGIDORA QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'dany.cazul100@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-01', '2024-05-30', 6, 41, 26, 93, 270, 1, 1, 23, '2024-03-01', 2, 0, 0, 1, 26, '1515189792', '012650015151897922', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(374, '240374', 'JAVIER', '', 'JAVIER', 'RODRIGUEZ', 'MURRIETA', '1964-05-06', 'M', 'ROMJ640506HPLDRV02', '62856426069', 'ROMJ640506DA3', 2, 0, '', 'VISTA BELLA 642-8A. LA VISTA COUNTRY CLUB. SAN ANDRES CHOLULA, PUEBLA. CP 72830', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elbukirodriguez@yahoo.com', 1, 'javier.rodriguez@ldrsolutions.com.mx', '', '3316026901', '2024-03-01', '0000-00-00', 6, 39, 13, 83, 211, 1, 1, 0, '2024-03-01', 2, 0, 0, 1, 26, '00468221308', '012650004682213086', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(375, '240375', 'DIEGO', 'FEDERICO', 'DIEGO', 'GONZALEZ', 'GUEVARA', '1995-04-12', 'M', 'GOGD950412HTSNVG02', '09149504434', 'GOGD950412LN8', 4, 0, '', 'PEREZ DE LEON #8 COL. NIÑOS HEROES 03440 ALCALDIA BENITO JUAREZ CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'diegoFD112@gmail.com', 1, 'diego.gonzalez@ldrsolutions.com.mx', '', '', '2024-03-01', '0000-00-00', 6, 41, 13, 88, 243, 1, 1, 135, '2024-03-01', 2, 13824, 16003, 1, 26, '01504620026', '012180015046200262', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(376, '240376', 'PIEDAD', '', 'PIEDAD', 'GUILLEN', 'SAENZ', '1989-08-31', 'F', 'GUSP890831HDFLND02', '30088913527', 'GUSP8908315V3', 4, 0, '', 'CALLE 5 DE FEBRERO MZ.10 LT.10 COL. POLVORA CP 01100', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'piedad.guillen@ldrsolutions.com.mx', '', '', '2024-03-04', '0000-00-00', 10, 62, 28, 127, 411, 1, 1, 95, '2024-03-04', 2, 0, 0, 1, 20, '01066365229', '072180010663652296', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(377, '240377', 'AISLINN', 'ALEJANDRA', 'AISLINN', 'AGUIRRE', 'VELAZQUEZ', '1995-09-06', 'F', 'AUVA950906MMCGLS04', '94129515840', 'AUVA950906H73', 2, 0, '', 'CALLE DOLORES MZ 4 LT 12 CASA 7 HEROES 5TA SECCION ECATEPEC DE MORELOS CP55060', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'dany.cazul100@gmail.com', 1, 'aislinn.aguirre@ldrsolutions.com.mx', '', '', '2024-03-04', '0000-00-00', 10, 62, 28, 127, 351, 1, 1, 141, '2024-03-04', 2, 0, 0, 1, 26, '01567830993', '012180015678309939', 3, 1, '0000-00-00', '2025-06-16', 0, 209),
(378, '240378', 'EMMA', 'DANIELA', 'EMMA', 'ALCANTARA', 'LOPEZ', '1995-01-03', 'F', 'AALE950103MDFLPM03', '45119504038', 'AALE950103L53', 2, 0, '', 'CALLE 34 NUMERO 55, COLONIA OLIVAR DEL CONDE SEGUNDA SECCION, ALVARO OBREGON, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'emma.alcantara@ldrsolutions.com.mx', '', '', '2024-03-04', '0000-00-00', 10, 62, 28, 127, 358, 1, 1, 141, '2024-03-04', 2, 0, 0, 1, 14, '90478264185', '002180904782641853', 3, 1, '0000-00-00', '2025-06-16', 0, 209),
(379, '240379', 'OLIVIA', 'EDITH', 'OLIVIA', 'REYES', 'CORTES', '1987-03-06', 'F', 'RECO870306MDFYRL04', '45098702033', 'RECO870306SN4', 2, 0, '', 'AV. ARBOLEDA NO. 100 PRIV. ABEDUL CASA 21 COL. SAN MATEO OTZACATIPAN. TOLUCA DE LERDO, EDO. DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'diegoFD112@gmail.com', 1, 'olivia.reyes@ldrsolutions.com.mx', '', '3313511572', '2024-03-04', '0000-00-00', 6, 41, 13, 87, 235, 1, 1, 96, '2024-03-04', 2, 25556, 31505, 1, 14, '90103423405', '002180901034234050', 4, 1, '0000-00-00', '2025-03-27', 0, 202),
(380, '240380', 'KIMBERLY', '', 'KIMBERLY', 'GONZALEZ', 'MUSTRI', '1995-10-02', 'F', 'GOMK951002MDFNSM00', '39119506796', 'GOMK95100216A', 4, 0, '', 'C OLMECAS 92 U HAB EL ROSARIO 02100 AZCAPOTZALCO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'kimberly.gonzalez@ldrsolutions.com.mx', '', '', '2024-03-04', '2024-10-30', 6, 46, 13, 107, 309, 1, 1, 54, '2024-03-04', 2, 32000, 40268, 1, 26, '00473006239', '012180004730062390', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(381, '240381', 'JOSE', 'DE JESUS', 'JOSE', 'VALDERRAMA', 'MACIAS', '2004-04-27', 'M', 'VAMJ040427HJCLCSA7', '10190400357', 'VAMJ040427LF0', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cochovalderramamacias@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-05', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2024-03-05', 2, 7968, 8382, 2, 26, '01511531958', '012180015115319589', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(382, '240382', 'GREGORIO', 'FRANCISCO', 'GREGORIO', 'DURAN', 'RODRIGUEZ', '1970-11-13', 'M', 'DURG701113HDFRDR00', '28907018650', 'DURG7011137WA', 2, 0, '', 'NOPATITLA #16 EDIFICIO B-404 PUEBLO SANTA MARIA MALINALCO AZCAPOTZALCO, CDMX CP 02050', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'gregorio.duran@jetourmx.com', '', '', '2024-03-11', '2024-10-30', 6, 44, 13, 100, 291, 1, 1, 96, '2024-03-11', 2, 31809, 40004, 1, 20, '00565606866', '072180005656068666', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(383, '240383', 'SAUL', 'IVAN', 'SAUL', 'TREVIÑO', 'PEREZ', '2001-11-23', 'M', 'TEPS011123HDFRRLA6', '26160193525', 'TEPS011123B27', 4, 0, '', 'MZ. 4 GPO. 36 #28 UNIDAD SANTA FE CP.01170', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'saul.ivan.trev01@gmail.com', 1, 'saul.trevino@jetourmx.com', '', '', '2024-03-11', '0000-00-00', 6, 41, 13, 88, 244, 1, 1, 31, '2024-03-11', 2, 13824, 16003, 1, 26, '01539731410', '012180015397314108', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(384, '240384', 'JOSE', 'SAUL', 'JOSE', 'LOPEZ', 'INFANTE', '1976-10-26', 'M', 'LOIS731026HCSPNL02', '71907433628', 'LOIS731026EL3', 2, 0, '', 'VALLE DE TEHUACAN 361 ENTRE PEÑAFLOR Y VALLE CENTRAL, COL. VALLE DE SANTIAGO III, C.P.76116 QUERETARO, QUERETARO ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'kimberlymustri@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-11', '2024-05-07', 6, 47, 26, 108, 312, 1, 1, 84, '2024-03-11', 2, 0, 0, 1, 48, '6502064087', '021680065020640871', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(385, '240385', 'JUAN', 'PABLO', 'JUAN', 'BARRIENTOS', 'DELGADO', '0000-00-00', 'M', 'BADJ910829HJCRLN07', '05139131121', 'BADJ910829RR5', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pb8964435@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-12', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-03-12', 2, 0, 0, 2, 48, '6572735863', '021362065727358632', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(386, '240386', 'CESAR', 'MANUEL', 'CESAR', 'VALDERRAMA', 'REYES', '2004-12-25', 'M', 'VARC041225HJCLYSA2', '30160472236', 'VARC041225EU6', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'papisvalderrama@.com', 1, 'SIN ASIGNAR', '', '', '2024-03-12', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '2024-03-12', 2, 0, 0, 2, 26, '01512006587', '012180015120065873', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(387, '240387', 'MARIA', 'ISABEL', 'MARIA', 'PEREZ', 'LOPEZ', '1988-06-13', 'F', 'PELI880613MJCRPS07', '04098818687', 'PELI8806139N9', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mariaisabelperezlopez.1306@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-12', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '2024-03-12', 2, 0, 0, 2, 20, '01263871949', '072362012638719498', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(388, '240388', 'LEZLY', 'GUADALUPE', 'LEZLY', 'DOMINGUEZ', 'CORTES', '2000-11-16', 'F', 'DOCL001116MDFMRZA0', '63150088142', 'DOCL001116986', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lezlycortes5@gmail.com', 1, 'lezly.dominguez@ldrsolutions.com.mx', '', '', '2024-03-13', '2024-06-17', 6, 35, 13, 75, 163, 1, 1, 52, '2024-03-13', 2, 0, 0, 1, 26, '1547042196', '012180015470421963', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(389, '240389', 'ISAURA', 'IVETTE', 'ISAURA', 'HERNANDEZ', 'BRAVO', '1990-11-05', 'F', 'HEBI901105MDFRRS00', '07119002892', 'HEBI901105A37', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'isaurahdz05@gmail.com', 1, 'isaura.hernandez@ldrsolutions.com', '', '3331758127', '2024-03-15', '0000-00-00', 6, 39, 13, 116, 332, 1, 1, 79, '2024-03-15', 2, 0, 0, 1, 20, '1308204970', '072180013082049704', 3, 1, '0000-00-00', '2025-06-25', 0, 202),
(390, '240390', 'ERNESTO', '', 'ERNESTO', 'VAZCONES', 'RODRIGUEZ', '1980-09-20', 'M', 'VARE780920HJCZDR08', '04987894567', 'VARE780920IE8', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'papisvalderrama@.com', 1, 'SIN ASIGNAR', '', '', '2024-03-15', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 97, '2024-03-15', 2, 0, 0, 2, 14, '0510298496', '002320905102984962', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(391, '240391', 'FELIPE', '', 'FELIPE', 'MARTINEZ', 'PONCE', '1960-11-16', 'M', 'MAPF601116HDFRNL00', '01786040277', 'MAPF6011161T0', 2, 0, '', 'CONDOMINIO CACTUS 48 EDIFICIO F 201  CP: 76240 COLINAS DE LA CANADA, VILLAS DE LA PIEDAD, LA PIEDAD,QRO ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mariaisabelperezlopez.1306@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-16', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 123, '2024-03-16', 2, 12000, 13677, 1, 17, '10474510960', '137680104745109604', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(392, '240392', 'PEDRO', 'GUILLERMO', 'PEDRO', 'REYES', 'MIRANDA', '1998-06-25', 'M', 'REMP980625HJCYRD08', '32139816063', 'REMP980625JPA', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pr990849@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-19', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-03-19', 2, 0, 0, 2, 48, '6510609873', '021362065106098733', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(393, '240393', 'CESAR', 'IVAN', 'CESAR', 'MARTINEZ', 'OCADIZ', '0000-00-00', 'M', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '0000-00-00', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 6, 0, 0, 3, 1, '0', '0', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(394, '240394', 'CRISTIAN', '', 'CRISTIAN', 'ZAVALA', 'MARTINEZ', '1992-08-23', 'M', 'ZAMC920823HJCVRR06', '75129203123', 'ZAMC920823DJ5', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'zavalacristian2308@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-20', '2000-01-01', 3, 12, 25, 22, 47, 1, 1, 8, '2024-03-20', 2, 0, 0, 2, 20, '1222402890', '072362012224028904', 3, 2, '0000-00-00', '2025-03-26', 0, 209),
(395, '240395', 'ANDREA', '', 'ANDREA', 'GUERRERO', 'GARCIA', '1999-10-21', 'F', 'GUGA991021MMCRRN02', '05199955203', 'GUGA991021217', 4, 0, '', 'AV ALCANFORES 135 COL LOMAS DE SAN MATEO 53200 NAUCALPAN DE JUAREZ, MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'abuelopipe16@gmail.com', 1, 'andrea.guerrero@ldrsolutions.com.mx', '', '3334406750', '2024-03-25', '0000-00-00', 3, 9, 11, 17, 33, 1, 1, 21, '2024-03-25', 2, 16853, 20004, 1, 71, '60623392717', '014180606233927176', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(396, '240396', 'JORGE', 'ANTONIO', 'JORGE', 'HERNANDEZ', 'RODRIGUEZ', '2004-03-13', 'M', 'HERJ040313HJCRDRA4', '73180411081', 'HERJ040313QK3', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jorgeaantonio1@outlook.com', 1, 'SIN ASIGNAR', '', '', '2024-03-25', '0000-00-00', 10, 62, 36, 127, 348, 1, 1, 4, '2024-03-25', 2, 0, 0, 2, 10, '00101855241', '127362001018552416', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(397, '240397', 'ALBERTO', '', 'ALBERTO', 'LOSADA', 'LIZCANO', '1994-01-20', 'M', 'LOLA940120HJCSZL09', '04129426351', 'LOLA940120CU2', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'albertolosadalizcano@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-25', '0000-00-00', 3, 12, 25, 27, 70, 1, 1, 32, '2024-03-25', 2, 0, 0, 2, 20, '01143837047', '072396011438370473', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(398, '240398', 'JOSE', 'ANTONIO', 'JOSE', 'BARRIENTOS', 'DELGADO', '1995-12-05', 'M', 'BADA951205HJCRLN00', '04169553791', 'BADA9512052WA', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mequierovolverchango1995@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-25', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-03-25', 2, 0, 0, 2, 26, '1565995071', '012362015659950714', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(399, '240399', 'FILIBERTO', 'COLOPATZIN', 'FILIBERTO', 'NIETO', 'ZURITA', '1975-02-10', 'M', 'NIZF750210HDFTRL02', '40927509154', 'NIZF750210UW2', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chapesnieto1@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-25', '0000-00-00', 6, 46, 13, 110, 321, 1, 1, 134, '2024-03-25', 2, 0, 0, 2, 20, '01253454017', '072180012534540176', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(400, '240400', 'BRANDON', 'EDUARDO', 'BRANDON', 'CEDILLO', 'BUENO', '2000-02-22', 'M', 'CEBB000222HJCDNRA3', '48160098645', 'CEBB0002228I4', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ediardo.cedillo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-26', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-03-26', 2, 0, 0, 2, 48, '6546446415', '021362065464464151', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(401, '240401', 'OSCAR', 'URIEL', 'OSCAR', 'LOPEZ', 'GONZALEZ', '2001-07-02', 'M', 'LOGO010702HJCPNSA8', '38190108373', 'LOGO010702581', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'oscaruriellopezgonzalez29@.gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-03-26', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-03-26', 2, 0, 0, 2, 26, '1593732718', '012180015937327186', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(402, '240402', 'MAURICIO', '', 'MAURICIO', 'GUZMAN', 'SANCHEZ', '2000-05-10', 'M', 'GUSM000510HMCZNRA8', '90150007012', 'GUSM0005107P5', 4, 0, '', 'CERRADA DE MIXTECA LT3 MZ3, COL. LA MILAGROSA, ALVARO OBREGON. C.P. 01650, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mequierovolverchango1995@gmail.com', 1, 'mauricio.guzman@ldrsolutions.com.mx', '', '3339721499', '2024-04-01', '0000-00-00', 6, 41, 13, 87, 235, 1, 1, 96, '2024-04-01', 2, 0, 0, 1, 26, '01557382094', '012180015573820940', 3, 1, '0000-00-00', '2025-05-14', 0, 209),
(403, '240403', 'MARIA', 'DEL CARMEN', 'CARMEN', 'ARMENTA', 'DE LA ROSA', '1970-02-28', 'F', 'AERC700228MDFRSR05', '01897060479', 'AERC700228GV2', 2, 0, '', 'BELLAVISTA 52 EDIF. D-502, COL. SAN JUAN XALPA, C.P.09850, IZTAPALAPA, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chapesnieto1@gmail.com', 1, 'carmen.armenta@ldrsolutions.com.mx', '', '', '2024-04-01', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '2024-04-01', 2, 0, 0, 1, 26, '01585623479', '012180015856234790', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(404, '240404', 'JUAN', 'ARTURO', 'JUAN', 'ALVAREZ', 'GRANADOS', '1972-12-07', 'M', 'AAGJ721207HDFLRN05', '28907303656', 'AAGJ721207PF8', 4, 0, '', 'AV. YUNKES 205 LOS HEROES, EL MARQUES, QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ediardo.cedillo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-01', '0000-00-00', 6, 41, 26, 91, 393, 1, 1, 23, '2024-04-01', 2, 12000, 13677, 1, 26, '01512295913', '012180015122959136', 4, 1, '0000-00-00', '2025-05-29', 0, 209),
(405, '240405', 'CARLOS', 'ANDRES', 'CARLOS', 'CERVANTES', 'VALADEZ', '1993-12-06', 'M', 'VACC931206HJCLRR07', '04129324796', 'VACC931206TF0', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valadezcervantes58@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-02', '2000-01-01', 3, 12, 25, 27, 72, 1, 1, 30, '2024-04-02', 2, 0, 0, 2, 20, '1263326971', '072362012633269710', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(406, '240406', 'ANDREA', 'TALIA', 'ANDREA', 'VARGAS', 'MORENO', '1989-06-30', 'F', 'VAMA890630MJCRRN05', '04108966500', 'VAMA890630LF0', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ikrandy16@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-03', '0000-00-00', 3, 12, 25, 22, 44, 1, 1, 8, '2024-04-03', 2, 7968, 8382, 2, 14, '70171464178', '002362701714641787', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(407, '240407', 'MARIA', 'BERENICE', 'BERENICE', 'REYES', 'SANTANA', '1988-05-15', 'F', 'RESB880515MDFYNR05', '20118810397', 'RESB880515690', 4, 0, '', 'AV. DEL TRABAJO 20 INT. 204 COL. MORELOS, ALCALDIA VENUSTIANO CARRANZA, C.P. 15270', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'carmenarmenta272@gmail.com', 1, 'berenice.reyes@fulongma.com.mx', '', '3332504977', '2024-04-04', '0000-00-00', 4, 24, 12, 56, 112, 1, 1, 99, '2024-04-04', 2, 20000, 24160, 1, 26, '02922183617', '012180029221836175', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(408, '240408', 'LINO', 'ANTONIO', 'LINO', 'AGUILERA', 'HERNANDEZ', '1991-08-04', 'M', 'AUHL910804HJCGRN01', '12109125067', 'AUHL910804N1A', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'hernandezlinoantonio4@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-04', '0000-00-00', 3, 12, 25, 22, 45, 1, 1, 8, '2024-04-04', 2, 0, 0, 2, 26, '01553644731', '012362015536447311', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(409, '240409', 'FRANCISCO', 'RAMON', 'FRANCISCO', 'SALAS', 'MEDRANO', '1994-05-27', 'M', 'SAMF940527HJCLDR03', '10149499716', 'SAMF9405275B4', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'franciscoramonsalasmedrano@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-04', '2000-01-01', 3, 16, 1, 36, 86, 1, 1, 0, '2024-04-04', 2, 0, 0, 2, 26, '1585111272', '012180015851112723', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(410, '240410', 'JUAN', 'RAMON', 'JUAN', 'CHIN', 'VAZQUEZ', '1976-11-29', 'M', 'CIVJ761129HYNHZN04', '84947605766', 'CIVJ761129757', 2, 0, '', 'C-45 #700 X 94 Y 94 A FRACC. LA ARBOLEDA CIUDAD CAUCEL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanramon20201976@gmail.com', 1, 'juan.chin@ldrsolutions.com.mx', '', '3328328052', '2024-04-08', '0000-00-00', 6, 41, 13, 92, 267, 1, 1, 41, '2024-04-08', 2, 40002, 51332, 1, 26, '01562381451', '012910015623814513', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(411, '240411', 'BRIAN', '', 'BRIAN', 'AVILA', 'ORDOÑEZ', '1991-06-10', 'M', 'AIOB910610HMCVRR06', '90119134600', 'AIOB910610BLA', 4, 0, '', 'C.VEINTIRES NO.19 COL. INDEPENDECIA. NAUCALCAPN , ESTADO DE MEXICO. C.P.53830', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mbrs_garf@hotmail.com', 1, 'brian.avila@jetourmx.com', '', '', '2024-04-08', '2024-08-21', 6, 45, 13, 101, 292, 1, 1, 12, '2024-04-08', 2, 0, 0, 1, 48, '6601111137', '021180066011111371', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(412, '240412', 'EUSEBIO', 'JORGE', 'EUSEBIO', 'GALINDO', 'ARROYO', '1976-08-14', 'M', 'GAAE760814HDFLRS01', '45947640921', 'GAAE7608148P2', 2, 0, '', 'PACHICALCO #67 CJON 13 BARRIO SAN IGNACIO ALCALDIA IZTAPALAPA CDMX, C.P. 09000', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'hernandez linoantonio4@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-08', '2024-05-17', 6, 41, 13, 93, 270, 1, 1, 55, '2024-04-08', 2, 0, 0, 1, 10, '23961329339489', '127180013293394892', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(413, '240413', 'ANA', 'LAURA', 'ANA', 'ALMANZA', 'TOVAR', '1996-07-30', 'F', 'AATA960730MGTLVN09', '64169689045', 'AATA9607303A7', 4, 0, '', 'TRAVERTINO 200 69 CIRC ENCINOS LOS ENCINOS MUNI ESCOBEDO C.P. 76150 LOS ENCINOS QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'almanzatovaranalaura@gmail.com', 1, 'ana.almanza@ldrsolutions.com.mx', '', '', '2024-04-08', '0000-00-00', 6, 46, 26, 106, 301, 1, 1, 39, '2024-04-08', 2, 16853, 20004, 1, 26, '01536266157', '012215015362661573', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(414, '240414', 'LORENA', 'CRISTINA', 'LORENA', 'DELASSE', 'MARTINEZ', '1977-11-06', 'F', 'DEML771106MDFLRR07', '20967729011', 'DEML771106GJ3', 4, 0, '', 'MARQUEZ STERLING 24 - 9 COL. CENTRO CP 06070 DEL CUAUHTEMOC CDMX, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanramon20201976@gmail.com', 1, 'importacionylogistica@ldrsolutions.com.mx\nlorena.d', '', '', '2024-04-08', '2024-10-30', 6, 45, 13, 101, 292, 1, 1, 12, '2024-04-08', 2, 19125, 23005, 1, 26, '02783712419', '012180027837124192', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(415, '240415', 'JOEL', 'BENJAMIN', 'JOEL', 'SUAREZ', 'GUERRERO', '1997-06-05', 'M', 'SUGJ970605HJCRRL06', '08139773413', 'SUGJ9706057C0', 4, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'benjamin.suarez@alumnos.udg.mx', 1, 'SIN ASIGNAR', '', '', '2024-04-09', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '2024-04-09', 2, 0, 0, 2, 26, '01511679101', '012680015116791017', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(416, '240416', 'LUIS', 'JAIME', 'LUIS', 'LOPEZ', 'AMADOR', '1993-07-06', 'M', 'LOAL930706HJCPMS00', '75119397539', 'LOAL930706JF4', 2, 0, '', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ingcivil186@gmail.com', 1, 'luis.lopez@ldrsolutions.com.mx', '', '', '2024-04-09', '0000-00-00', 3, 12, 25, 26, 67, 1, 1, 35, '2024-04-09', 2, 11743, 13352, 2, 26, '01505352915', '012225015053529150', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(417, '240417', 'JOSE', 'ALFREDO', 'JOSE', 'VALDES', 'CRUZ', '1991-03-03', 'M', 'VACA910303HZSLRL01', '90129113529', 'VACA910303LV9', 2, 0, '', 'SALVADOR DALI MZ5 LT 12, COL EL CORTIJO TULPETLAC, ECATEPEC, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'almanzatovaranalaura@gmail.com', 1, 'jose.valdes@ldrsolutions.com.mx', '', '', '2024-04-15', '0000-00-00', 10, 62, 28, 127, 348, 1, 1, 4, '2024-04-15', 2, 0, 0, 1, 20, '01217934294', '072164012179342946', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(418, '240418', 'MIGUEL', 'ANGEL', 'MIGUEL', 'ROMO', 'OLGUIN', '1993-05-03', 'M', 'ROOM930503HDFMLG05', '90119309558', 'ROOM9305038NA', 2, 0, '', 'VIA LACTEA 305, JARDINES DE SATELITE, NAUCALPAN DE JUAREZ, C.P. 53129', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'delasse_mx@hotmail.com', 1, 'miguel.romo@ldrsolutions.com.mx', '', '3334953916', '2024-04-15', '0000-00-00', 6, 37, 13, 78, 192, 1, 1, 45, '2024-04-15', 2, 0, 0, 1, 14, '70084855861', '002180700848558615', 5, 1, '0000-00-00', '0000-00-00', 0, 708),
(419, '240419', 'NICOLE', '', 'NICOLE', 'LEGORRETA', 'LOPEZ', '1994-03-03', 'F', 'LELN940303MDFGPC08', '19149442220', 'LELN940303744', 4, 0, '', 'CARLOS ECHANOVE 88 A JULIAN ADAME Y LAS PALMAS EL MOLINO CUAJIMALPA DE MO. C.P. 05240 NAVIDAD, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'benjamin.suarez@alumnos.udg.mx', 1, 'SIN ASIGNAR', '', '', '2024-04-15', '2024-07-18', 6, 34, 13, 73, 150, 1, 1, 0, '2024-04-15', 2, 0, 0, 1, 14, '70148340259', '002180701483402594', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(420, '240420', 'CESAR', '', 'CESAR', 'GARCIA', 'TORRES', '1989-06-20', 'M', 'GATC890620HJCRRS07', '10168913985', 'GATC8906205J2', 4, 3, '', 'PROLONGACION FRANCISCO ROMO 773 A. COL LOMAS DEL VALE C.P. 47460 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ingcivil186@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-17', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 7968, 8382, 2, 20, '01268355284', '072362012683552846', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(421, '240421', 'LUIS', 'ESAUL', 'LUIS', 'DAVALOS', 'TOVAR', '1995-01-12', 'M', 'DATL950112HJCVVS05', '04169569912', 'DATL950112G30', 4, 0, '', 'CALLE  REVOLUCION 100 LOC. EL TROPEZON MUNICIPIO ENCARNACION DE DIAZ.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'davalosluis95@gmail.com', 1, 'luis.davalos@ldrsolutions.com.mx', '', '3331417526', '2024-04-17', '0000-00-00', 3, 12, 25, 24, 61, 1, 1, 7, '0000-00-00', 2, 11243, 12726, 2, 20, '01032748229', '072349010327482297', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(422, '240422', 'JOSE', 'DANIEL', 'JOSE', 'HERNANDEZ', 'VALDERRAMA', '1992-12-11', 'M', 'HEVD921211HJCRLN00', '04099290159', 'HEVD921211T11', 2, 2, '', 'HIDALGO  1 COL LOMA DEL PRADO C.P. 47472 LAGOS SUBURBANO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miguelromo.olguin@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-19', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 7968, 8382, 2, 71, '56890392758', '0000', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(423, '240423', 'ALEJANDRO', '', 'ALEJANDRO', 'GONZALEZ', 'ARELLANO', '1974-09-23', 'M', 'GOAA740923HGTNRL03', '12987408478', 'GOAA740923FZ6', 2, 4, '', 'CALLE BILBAO 15 FRACC LOMA BONITA C.P. 47450 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nicole_2394@hotmail.com', 1, 'alejandro.gonzalez@ldrsolutions.com.mx', '', '', '2024-04-17', '0000-00-00', 3, 12, 25, 20, 40, 1, 1, 20, '0000-00-00', 2, 0, 0, 1, 14, '90251704812', '002362902517048124', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(424, '240424', 'OSCAR', 'URIEL', 'OSCAR', 'PEREZ', 'ESPINOSA', '2000-11-03', 'M', 'PEEO001103HJCRSSA1', '14130004477', 'PEEO001103SG2', 4, 0, '', 'CALLE ISLAS VIRGENES 77 A COL : EL PLAN C.P 47530,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cg3741813@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-07', '2024-05-13', 3, 14, 25, 34, 83, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '012180015132748476', '012180015132748476', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(425, '240425', 'CHRISTIAN', 'ELEAZAR', 'CHRISTIAN', 'MENA', 'JUAREZ', '2000-08-11', 'M', 'MEJC000811HJCNRHA6', '25170046442', 'MEJC000811NY0', 4, 1, '', '24 DE DICIEMBRE 117 COL: VISTA HERMOSA C.P 47532,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'davalosluis95@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-19', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 26, '06548788467', '021362065487884679', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(426, '240426', 'JOSE', 'DE JESUS', 'JOSE', 'PADILLA', 'GUTIERREZ', '1997-07-28', 'M', 'PAGJ970728HJCDTS02', '74159721351', 'PAGJ970728VDA', 4, 0, '', 'CONTINUACION ALDAMA 884,COL: LOMAS DEL VALLE C.P 47460, LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'angyv5560@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-19', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 7968, 8382, 2, 71, '56824229231', '', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(427, '240427', 'GERARDO', 'ARTURO', 'ARTURO', 'NAJERA', 'GUEVARA', '1976-12-11', 'M', 'NAGG761211HDGJVR01', '32947611227', 'NAGG7612115TA', 2, 0, '', 'CALLE  CUSTIQUES  67 COL. LA CAMPANA C.P 47474,LAGOS DE MORENO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandro.glz0974@gmail.com', 1, 'arturo.najera@ldrsolutions.com.mx', '', '', '2024-04-24', '0000-00-00', 6, 39, 24, 80, 198, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '01532404648', '012362015324046487', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(428, '240428', 'BLANCA', 'SILVIA', 'BLANCA', 'LOMELI', 'RODRIGUEZ', '1977-03-06', 'F', 'LORB770306MJCMDL02', '54967729481', 'LORB7703063ZA', 4, 2, '', 'MARIA GREEVER 1972 COL LA ESMERALDA C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'oscar.uriel150916@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-03', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '0000-00-00', 2, 7468, 7468, 2, 20, '01270128061', '072362012701280618', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(429, '240429', 'JESUS', '', 'JESUS', 'CORTAZAR', 'LEAL', '1998-08-18', 'M', 'COLJ980818HQTRLS02', '03179851930', 'COLJ980818SQ6', 4, 0, '', 'C RIO COATZACOALCOS S/N LOC SAN ILDEFONSO C.P 76295 COLON, QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2023-12-21', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 12000, 13677, 1, 26, '01530283301', '012680015302833019', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(430, '240430', 'EDUARDO', '', 'EDUARDO', 'SANCHEZ', 'AVALOS', '2001-06-24', 'M', 'SAAE010624HHGNVDA0', '46160127943', 'SAAE010624784', 4, 0, '', 'C AZUCENAS S/N COMUNIDAD GALERAS C.P. 76295 COLON, COLON.  QRO.		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'drivers-p2@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-19', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 2, 12000, 13677, 1, 26, '01509036495', '012180015090364950', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(431, '240431', 'ANGEL', 'GUADALUPE', 'ANGEL', 'DELGADO', 'ROJAS', '2005-08-08', 'M', 'DERA050808HGTLJNA7', '02230542421', 'DERA050808PM3', 4, 0, '', 'MARMOL BROCATEL 271 COL. VILLAS ESMERALDA C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'najeragerardo@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-08', '2024-06-17', 3, 18, 25, 38, 88, 1, 1, 30, '0000-00-00', 1, 0, 0, 2, 14, '2203964', '002362905122039648', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(432, '240432', 'RENE', 'ANDREI', 'RENE', 'GONZALEZ', 'GUERRERO', '1984-05-29', 'M', 'GOGR840529HGTNRN07', '02228454613', 'GOGR8405292G6', 4, 2, '', 'HIGO 7 A COL. HUERTOS SAN PEDRO C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lomeliblanca34@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-08', '0000-00-00', 3, 12, 25, 23, 50, 1, 1, 34, '0000-00-00', 1, 0, 0, 2, 14, '90501538808', '002362905015388082', 3, 1, '0000-00-00', '0000-00-00', 0, 0);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(433, '240433', 'JESUS', 'EMMANUEL', 'JESUS', 'TORRES', 'ARAUJO', '2001-02-16', 'M', 'TOAJ010216HQTRRSA7', '10180158445', 'TOAJ010216C62', 4, 0, '', 'C RIO DE LOS TRUENOS SN SAN ILDEFONSO, COLON QUERETARO, QRO. C.P.76295		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-01-19', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 2, 12000, 13677, 1, 71, '56860569795', '014680568605697957', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(434, '240434', 'TOMAS', 'EDUARDO', 'EDUARDO', 'BAUTISTA', 'TAPIA', '1988-01-28', 'M', 'BATT880128HMCTPM01', '16038803876', 'BATT880128PG1', 4, 2, '', 'MIGUEL DE CAMPA 291, FUNDADORES QUERETARO QRO.		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eduardosanchez301019@gmail.com', 1, 'eduardo.bautista@ldrsolutions.com.mx', '', '', '2024-04-29', '0000-00-00', 6, 41, 26, 91, 261, 1, 1, 12, '0000-00-00', 2, 16853, 20004, 1, 26, '01558896653', '012180015588966530', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(435, '240435', 'SERGIO', '', 'SERGIO', 'CORPUS', 'TORRES', '1971-01-06', 'M', 'COTS710106HJCRRR01', '56907196770', 'COTS710106DX3', 2, 1, '', 'AGUSTIN RIVERA  794 EL RETIRO CP 44280', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sergio1corpus@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-08', '0000-00-00', 6, 41, 30, 86, 222, 1, 1, 100, '0000-00-00', 2, 16853, 20004, 1, 26, '01548741608', '012330015487416083', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(436, '240436', 'MICHELL', 'ESTEFANY', 'MICHELL', 'RODRIGUEZ', 'HERAS', '1994-07-17', 'F', 'ROHM940717MDFDRC01', '96099421800', 'ROHM940717RQ0', 4, 0, '', 'GAVILANES 242 6, BENITO JUAREZ CP. 57000, NEZAHUALCOYOTL. EDO. MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'andreigonzalez666@gmail.com', 1, 'michell.rodriguez@ldrsolutions.com.mx', '', '', '2024-05-13', '0000-00-00', 3, 11, 11, 19, 38, 1, 1, 45, '0000-00-00', 2, 0, 0, 1, 26, '01596157144', '012180015961571445', 6, 2, '0000-00-00', '2025-06-24', 0, 202),
(437, '240437', 'MERCEDES', '', 'MERCEDES', 'OLIVA', 'TORRES', '1989-02-24', 'F', 'OITM890224MDFLRR09', '45068910251', 'OITM890224RX5', 2, 2, '', 'GUADALUPE I. RAMIREZ 851 EDIFICIO A DEPTO 101, PUEBLO SANTA MARIA TEPEPAN, C.P. 16020, XOCHIMILCO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'torresaraujojesusemmanuel05@gmail.com', 1, 'mercedes.oliva@ldrsolutions.com.mx', '', '3338095215', '2024-05-13', '0000-00-00', 6, 41, 13, 87, 237, 1, 1, 1, '0000-00-00', 2, 40458, 52003, 1, 71, '20004194603', '014180200041946033', 4, 1, '0000-00-00', '2025-03-27', 0, 202),
(438, '240438', 'RICARDO', '', 'RICARDO', 'GARIBAY', 'TOUSSAINT', '1982-06-05', 'M', 'GATR820605HDFRSC12', '30068210118', 'GATR820605BW7', 2, 0, '', 'AGUSTIN GUTIERREZ 7 INT. 4, COL. GENERAL ANAYA, CP. 03340, BENITO JUAREZ, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eduard.tbb@gmail.com', 1, 'ricardo.garibay@jetourmx.com', '', '', '2024-05-13', '2024-10-30', 5, 26, 8, 59, 121, 1, 1, 46, '0000-00-00', 2, 40002, 51332, 1, 26, '01515996184', '012180015159961841', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(439, '240439', 'NORMA', 'VALERIA', 'VALERIA', 'SANCHEZ', 'LAZCANO', '1991-01-01', 'F', 'SALN910101MDFNZR08', '42109115487', 'SALN910101H89', 4, 0, '', 'SECC II AG 3 EDIF B 504, SANTIAGO SUR, IZTACALCO, C.P. 08800, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sergio1corpus@gmail.com', 1, 'valeria.sanchez@ldrsolutions.com.mx', '', '3318657384', '2024-05-13', '0000-00-00', 6, 35, 13, 74, 157, 1, 1, 72, '0000-00-00', 2, 0, 0, 1, 48, '06585729002', '021180065857290020', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(440, '240440', 'FERNANDA', 'SHAMET', 'FERNANDA', 'RODRIGUEZ', 'JASSO', '2002-09-08', 'F', 'ROJF020908MJCDSRA9', '46160277805', 'ROJF020908431', 4, 0, '', 'PINA 160 COL. LAS HUERTITAS C.P. 47440 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'michell.rdzh@gmail.com', 1, 'fernanda.rodriguez@ldrsolutions.com.mx', '', '', '2024-05-13', '0000-00-00', 6, 36, 32, 77, 174, 1, 1, 10, '0000-00-00', 2, 8977, 10000, 2, 26, '01504863773', '012180015048637736', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(441, '240441', 'JIMENA', '', 'JIMENA', 'MARTINEZ', 'PEREZ', '1988-09-02', 'F', 'MAPJ880902MDFRRM05', '26148829331', 'MAPJ8809027Y6', 4, 1, '', 'PROLONGACION CAIRO 260, RECREOC, C.P 02070, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mer_oliva@yahoo.com.mx', 1, 'jimena.martinez@ldrsolutions.com.mx', '', '', '2024-05-13', '2024-07-31', 6, 31, 13, 70, 140, 1, 1, 56, '0000-00-00', 2, 25000, 30000, 1, 14, '4210683', '002180701642106835', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(442, '240442', 'OSWALDO', 'ALFONSO', 'OSVALDO', 'SANTOS', 'HERNANDEZ', '1991-03-02', 'M', 'SAHO910302HJCNRS06', '04089192894', 'SAHO91030297A', 2, 1, '', 'C. GOMEZ FARIAS 1413, COL SAN ANTONIO, CP. 44410, GUADALAJARA, JALISCO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rgaribayt@gmail.com', 1, 'osvaldo.santos@ldrsolutions.com.mx', '', '', '2024-05-13', '0000-00-00', 6, 41, 30, 86, 225, 1, 1, 100, '0000-00-00', 2, 15338, 18004, 1, 26, '01516355152', '012180015163551522', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(443, '240443', 'ANA', 'CARLOTA', 'ANA', 'PEREZ ARIZTI', 'Y GOMEZ', '2001-01-18', 'F', 'PEGA010118MDFRMNB6', '03240143721', 'PEGA0101184K6', 4, 0, '', 'CERRADA ACUEDUCTO NO. 11 INT. ED. MZ. LT. FRACCIONAMIENTO LOMAS MANUEL AVILA CAMACHO, C.P. 53910, NAUCALPAN DE JUAREZ, MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valeriasl_91@yahoo.com.mx', 1, 'ana.perez@ldrsolutions.com.mx', '', '', '2024-05-14', '2024-08-09', 6, 46, 13, 107, 307, 1, 1, 39, '0000-00-00', 1, 0, 0, 1, 26, '1526262590', '012180015262625906', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(444, '240444', 'DIEGO', 'BENJAMIN', 'DIEGO', 'RESENDIZ', 'ARREOLA', '1993-05-10', 'M', 'READ930510HMCSRG06', '90139332408', 'READ930510C17', 2, 1, '', 'CORREGIDORA 88, VALLE DORADO, C.P. 53690, NAUCALPAN DE JUAREZ, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fernandarodriguezjasso88@gmail.com', 1, 'diego.resendiz@ldrsolutions.com.mx', '', '', '2024-05-20', '0000-00-00', 6, 41, 13, 95, 280, 1, 1, 53, '0000-00-00', 2, 20635, 25000, 1, 26, '01585902843', '012180015859028437', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(445, '240445', 'GUILLERMO', 'GUADALUPE', 'GUILLERMO', 'LOPEZ', 'ESTRADA', '1996-02-01', 'M', 'LOEG960201HJCPSL08', '38149623233', 'LOEG9602O1MJ8', 4, 0, '', 'NICOLAS BRAVO  1368 COL. EL REFUGIO C.P. 47470,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jimena.martinez.perez@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-14', '2024-07-08', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 26, '1514934204', '012180015149342043', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(446, '240446', 'PEDRO', 'EMMANUEL', 'PEDRO', 'ARAUJO', 'LOMELI', '2005-07-19', 'M', 'AALP050719HGTRMDA6', '52210518636', 'AALP0507197X4', 4, 0, '', 'MARIA GREEVER 1901 COL. LA AURORA C.P 47473, LAGOS DE MORENO, JAL. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'santosalfonso323@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-14', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 26, '01510039509', '012180015100395097', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(447, '240447', 'JESUS', 'JUAN', 'JESUS', 'DE LUNA', 'MAYORAL', '1990-08-20', 'M', 'LUMJ900820HJCNYS01', '25149097708', 'LUMJ900820994', 4, 2, '', 'MARTIRES DE SAN JOAQUIN 277 COL CRISTEROS C.P. 47472, LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-05-14', '0000-00-00', 3, 12, 25, 23, 50, 1, 1, 34, '0000-00-00', 2, 0, 0, 2, 20, '01260320585', '072362012603205856', 6, 2, '0000-00-00', '0000-00-00', 0, 202),
(448, '240448', 'EDUARDO', '', 'EDUARDO', 'ALCALA', 'SANTILLAN', '1998-06-04', 'M', 'AASE980604HJCLND07', '94169887257', 'AASE980604PZ0', 4, 0, '', 'PADRE J TRINIDAD RANGEL 265 COL. CRISTEROS C.P.47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'diegoarreola38@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-14', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 26, '06599382392', '021010065993823926', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(449, '240449', 'CARLOS', 'BENJAMIN', 'CARLOS', 'GALVAN', 'RODRIGUEZ', '1972-07-17', 'M', 'GARC720717HDFLDR02', '45887267263', 'GARC720717GMA', 4, 2, '', 'CIRCUITO COLINAS DE LAS FLORES 200 CONDOMINIO TULIPAN, EL MARQUES, QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'memoestrad7@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-04-29', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 124, '0000-00-00', 2, 12000, 13677, 1, 20, '01228090440', '072680012280904401', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(450, '240450', 'CELINA', '', 'CELINA', 'RIVERA', 'PEREZ', '1980-12-29', 'F', 'RIPC801229MQTVRL07', '02238001719', 'RIPC801229QW6', 2, 3, '', 'C RIO COATZACOALCOS, S/N SAN IDELFONSO, COLON, QRO		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-04-29', '0000-00-00', 6, 46, 26, 106, 304, 1, 1, 101, '0000-00-00', 2, 8100, 8534, 2, 26, '01553039183', '012680015530391831', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(451, '240451', 'RIGOBERTO', '', 'RIGOBERTO', 'VAZQUEZ', 'REYES', '1990-12-28', 'M', 'VARR901228HMCZYG04', '94099053343', 'VARR901228FZ3', 2, 0, '', 'PRIVADA HACIENDA DE ROMERO 501 INT. 9 COLONIA HACIENDAS DE SAN JUAN, SAN JUAN DEL RIO, QUERETARO		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'rigoberto.vazquez@ldrsolutions.com.mx', '', '', '2024-01-15', '0000-00-00', 6, 41, 26, 91, 262, 1, 1, 23, '0000-00-00', 2, 0, 0, 1, 26, '1507201887		', '012685015072018871', 8, 1, '0000-00-00', '2025-05-29', 0, 202),
(452, '240452', 'JORGE', '', 'JORGE', 'CEBALLOS', 'BALLESTEROS', '1980-07-24', 'M', 'CEBJ800724HDFBLR00', '14998040811', 'CEBJ800724MUA', 2, 0, '', 'AV. DEL FERROCARRIL NO. 64 RINCONADA EL CAPRICHO CASA C11 LA CANADA, EL MARQUES, QUERETARO.		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'laloalcala040698@gmail.com', 1, 'jorge.ceballos@jetourmx.com', '', '', '2024-01-02', '2024-05-31', 6, 42, 26, 98, 287, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 26, '1586797153		', '012680015867971539', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(453, '240453', 'JULIO', 'CESAR', 'JULIO', 'LOPEZ', 'LOPEZ', '1989-03-28', 'M', 'LOLJ890328HDFPPL08', '92078952063', 'LOLJ890328443', 4, 2, '', 'ANDADOR CORDOBA LOTE 3 EDIFICIO E DEPTO 102, CUAUTITLAN IZCALLI, ESTADO DE MEXICO,CP 54715		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'carlosgalvanro@gmail.com', 1, 'julio.lopez@ldrsolutions.com.mx', '', '3322552571', '2023-12-21', '0000-00-00', 6, 41, 26, 91, 257, 1, 1, 23, '0000-00-00', 2, 30000, 37549, 1, 14, '90462663535', '002180904626635352', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(454, '240454', 'WILIAM', 'GABRIEL', 'WILIAM', 'ESPINOZA', 'SOLIS', '1982-11-13', 'M', 'EISW821113HSPSLL08', '14018207713', 'EISW821113CY5', 2, 2, '', 'VALLE DE SANTIAGO 355 INT 37, 76116, CIUDAD DE SOL ,QUERETARO ,QRO		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'celinariveraperez@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-01-22', '2024-06-03', 6, 41, 26, 93, 270, 1, 1, 23, '0000-00-00', 2, 0, 0, 1, 71, '56876500742		', '014680568765007429', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(455, '240455', 'LENNON', 'RICARDO', 'LENNON', 'RUBIO', 'SORIANO', '1986-04-29', 'M', 'RUSL860429HMCBRN07', '05168665676', 'RUSL8604297M9', 4, 2, '', 'REPUBLICA 30-B LOMAS BOULEVARES TLALNEPANTLA ESTADO DE MEXICO CP 54020', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'daeronrvr.8@gmail.com', 1, 'lennon.rubio@ldrsolutions.com.mx', '', '3322580482', '2023-12-21', '0000-00-00', 6, 41, 26, 91, 263, 1, 1, 23, '0000-00-00', 2, 16851, 19998, 1, 26, '01598266959', '012180015982669598', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(456, '240456', 'LUIS', 'ALONSO', 'LUIS', 'GRANADOS', 'JUAREZ', '1993-03-20', 'M', 'GAJL930320HQTRRS01', '14119343052', 'GAJL930320EV4', 4, 0, '', 'ALCANFORES 11, COL. COYOTILLOS, CP. 76244, COYOTILLOS, QUERETARO.		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ceballosjorge1980@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2023-12-21', '0000-00-00', 6, 41, 26, 91, 264, 1, 1, 83, '0000-00-00', 2, 12000, 13677, 1, 12, '90001855004', '030225900018550044', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(457, '240457', 'IVAN', 'ENRIQUE', 'IVAN', 'JASO', 'VALLARTA', '2001-05-27', 'M', 'JAVI010527HDFSLVA3', 'SIN ASIGNAR', 'JAVI0105278A4', 4, 0, '', 'EJE CENTRAL LAZARO CARDENAS 817, A303, NARVARTE PONIENTE, BENITO JUAREZ, 03020, CIUDAD DE MEXICO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chapa_rron19@hotmail.com', 1, 'ivan.jaso@jetourmx.com', '', '', '2024-05-20', '2024-10-30', 5, 26, 8, 59, 122, 1, 1, 102, '0000-00-00', 1, 7001, 0, 1, 26, '00471815261', '012180004718152617', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(458, '240458', 'RAUL', 'FELIX', 'RAUL', 'TORRES', 'TORRES', '1966-06-11', 'M', 'TOTR630611HMCRRL00', '63836305787', 'TOTR630611TI2', 2, 3, '', ' HDA BARBABOSA Y HDA 3 MARIAS, SANTA ELENA SAN MATEO AC.P.52105,MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'willespinozasolis@gmail.com', 1, 'raul.torres@ldrsolutions.com.mx', '', '', '2024-05-27', '0000-00-00', 6, 41, 26, 91, 265, 1, 1, 126, '0000-00-00', 2, 20000, 24156, 1, 71, '56893285829', '014438568932858297', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(459, '240459', 'JOSE', 'LUIS', 'JOSE', 'MENA', 'JUAREZ', '1998-02-17', 'M', 'MEJL980217HJCNRS07', '85169824746', 'MEJL980217527', 4, 2, '', 'LIMON 123 COL. LAS HUERTITAS C.P. 47440 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-05-17', '2024-06-16', 3, 18, 25, 38, 88, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 26, '1523652006', '012362015236520062', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(460, '240460', 'ADAN', 'FRANCISCO', 'ADAN', 'DE ALBA', 'HERNANDEZ', '1993-07-19', 'M', 'AAHA930719HJCLRD08', '04109344947', 'AAHA930719796', 2, 3, '', 'EVEREST 1275 B COL. NUEVA SANTA MARIA C.P. 47474 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juarez.luis2093@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-17', '2024-07-30', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 26, '1523455861', '012362015234558612', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(461, '240461', 'LUIS', 'ENRIQUE', 'LUIS', 'JUAREZ', 'TORAL', '1998-08-04', 'M', 'JUTL980804HVZRRS07', '19179805627', 'JUTL980804QA5', 4, 0, '', 'SENDA NORPORTIENTE 500. CONDOMINIO BALCANES INT. 55. FRACC. SENDAS. EL MARQUES. QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'enrique_juarezz@outlook.com', 1, 'luis.juarez@ldrsolutions.com.mx', '', '', '2024-05-27', '0000-00-00', 6, 41, 26, 91, 265, 1, 1, 12, '0000-00-00', 2, 16851, 20000, 1, 48, '06588609409', '021680065886094098', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(462, '240462', 'JUAN', 'PABLO', 'JUAN', 'PAJARO', 'PEREZ', '2005-09-24', 'M', 'PAPJ050924HQTJRNA0', '25220588153', 'PAPJ050924CI7', 4, 0, '', 'LINDA VISTA SN, COMUNIDAD LA ESPERANZA,76296 COLON, QRO		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'raulfelixtorres@yahoo.com.mx', 1, 'SIN ASIGNAR', '', '', '2024-05-13', '0000-00-00', 6, 41, 26, 95, 282, 1, 1, 85, '0000-00-00', 2, 12000, 13677, 1, 26, '01516373150', '012180015163731504', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(463, '240463', 'FABIOLA', '', 'FABIOLA', 'BARRON', 'BENITEZ', '1985-07-26', 'F', 'BABF850726MQTRNB03', '14038547916', 'BABF850726SV7', 4, 2, '', 'NOCHE BUENA S/N VIBORILLAS, COLON, QRO		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'notiene@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-20', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 2, 12000, 13677, 1, 26, '01510865682', '012180015108656822', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(464, '240464', 'DANIEL', '', 'DANIEL', 'ALCANTARA', 'RODRIGUEZ', '1978-06-18', 'M', 'AARD780618HDFLDN04', '92977831327', 'AARD780618CJ6', 4, 0, '', 'FRANCISCO I MADERO 70 SAN JERONIMO TEPETLACALCO TLALNEPANTLA DE BAZ MEXICO C.P. 54090, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'panchoh843@gmail.com', 1, 'daniel.alcantara@ldrsolutions.com.mx', '', '3318657276', '2024-05-16', '0000-00-00', 3, 4, 11, 6, 14, 1, 1, 75, '0000-00-00', 2, 73192, 100000, 1, 26, '00170179396', '012180001701793963', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(465, '240465', 'YANIK', '', 'YANIK', 'PADUA', 'GONZALEZ', '1974-04-15', 'M', 'PAGY740415HMCDNN04', '16987407356', 'PAGY740415K86', 2, 1, '', 'NICOLAS BRAVO 192 EDIF 7 204, SAN LORENZO COACALCO, CP. 52140, BARRIO SAN MIGUEL, EDO MEX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'enrique_juarezz@outlook.com', 1, 'yanik.padua@ldrsolutions.com.mx', '', '3311977978/3318934959', '2024-04-29', '0000-00-00', 6, 41, 13, 88, 245, 1, 1, 1, '0000-00-00', 2, 78000, 107070, 1, 48, '06458452814', '021441064584528145', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(466, '240466', 'LEOPOLDO', '', 'LEOPOLDO', 'ROMERO', 'GARCIA', '1988-11-05', 'M', 'ROGL881105HDFMRP09', '01108811272', 'ROGL881105541', 2, 1, '', 'AV POTRERO POPULAR 54 FRACC LAS GARZAS CP. 55718, COACALCO DE BERRIOZABAL, EDO. MEX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanpablopajaroperez@gmail.com', 1, 'leopoldo.romero@ldrsolutions.com.mx', '', '3318657183', '2024-05-02', '0000-00-00', 3, 4, 11, 10, 7, 1, 1, 27, '0000-00-00', 2, 55888, 75000, 1, 20, '01133828309', '072580011338283094', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(467, '240467', 'JUAN', 'ENRIQUE', 'JUAN', 'ALMARAZ', 'MENDOZA', '1995-10-27', 'M', 'AAMJ951027HDFLNN04', '94109524820', 'AAMJ951027NN5', 4, 0, '', 'VALLE DEL SELENGA 120, COLONIA VALLE DE ARAGON 3A SEC, ECATEPEC DE MORELOS, EM, C.P. 55280, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fabiolabarronbenitez052@gmail.com', 1, 'juan.almaraz@ldrsolutions.com.mx', '', '', '2024-05-27', '0000-00-00', 10, 62, 28, 127, 360, 1, 1, 95, '0000-00-00', 2, 0, 0, 1, 14, '90471501149', '002180904715011492', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(468, '240468', 'JUAN', 'JOSE', 'JUAN', 'GARCIA', 'MONTIEL', '1988-07-21', 'M', 'GAMJ880721HPLRNN08', '48088862270', 'GAMJ8807218S0', 2, 1, '', 'PRIV 1RA DE LA 32 NORTE 12 3 COL EMILIANO ZAPATA CP. 72810 SAN ANDRES CHOLULA PUEBLA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jjgm_ingind@hotmail.com', 1, 'juan.garcia@ldrsolutions.com.mx', '', '', '2024-05-27', '0000-00-00', 6, 39, 13, 83, 212, 1, 1, 11, '0000-00-00', 2, 35488, 45000, 1, 14, '90224384385', '002650902243843855', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(469, '240469', 'VICTOR', '', 'VICTOR', 'HERNANDEZ', 'LOPEZ', '1969-08-16', 'M', 'HELV690816HMSRPC03', '37936905332', 'HELV690816GB8', 2, 2, '', 'CAMINO A SANTA FE 1231 14 A 402 COL CUEVITAS CP. 01220 ALVARO OBREGON CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 't5332vh@yahoo.com.mx', 1, 'victor.hernandez@ldrsolutions.com.mx', '', '3328335757', '2024-05-27', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 0, 0, 1, 26, '01115282268', '012180011152822680', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(470, '240470', 'JOSE', 'JORGE ANTONIO', 'JOSE', 'MARTINEZ', 'ROMERO', '1987-07-31', 'M', 'MARJ870731HQTRMR05', '43108731159', 'MARJ870731HF3', 4, 0, '', 'CTO VINEDOS 567 44 FRACC BOSQUES DE SAN JUAN 76803 SAN JUAN DEL RIO QUERETARO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jjorgea.mtzr@gmail.com', 1, 'jose.martinez@ldrsolutions.com.mx', '', '3328326905', '2024-05-27', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 40002, 51320, 1, 26, '01549203628', '012028015492036281', 4, 1, '0000-00-00', '2025-06-12', 0, 485),
(471, '240471', 'TEODORO', '', 'TEODORO', 'RAMOS', 'DURAN', '1968-01-22', 'M', 'RADT680122HHGMRD09', '13936820565', 'RADT680122ED7', 2, 4, '', 'CAMPO REAL 1631 88 01 MATANCILLAS EURIPIDES EL REFUGIO QUERETARO CP. 76120 QUERETARO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'teodororamos@hotmail.com', 1, 'teodoro.ramos@ldrsolutions.com.mx', '', '3332504981', '2024-05-27', '0000-00-00', 6, 41, 13, 86, 230, 1, 1, 55, '0000-00-00', 2, 0, 0, 1, 71, '56819168384', '014290568191683849', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(472, '240472', 'HUGO', '', 'HUGO', 'SANCHEZ', 'MARTINEZ', '1995-08-11', 'M', 'SAMH950811HMCNRG06', '45129513516', 'SAMH950811525', 4, 0, '', 'CANAL SAN LORENZO NUM 25 COL INSURGENTES CP. 09750 IZTAPALAPA CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mshugosm@gmail.com', 1, 'hugo.sanchez@ldrsolutions.com.mx', '', '', '2024-04-22', '0000-00-00', 6, 39, 13, 82, 210, 1, 1, 103, '0000-00-00', 2, 20639, 25004, 1, 14, '90355009717', '002180903550097177', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(473, '240473', 'DANIEL', 'RICARDO', 'DANIEL', 'ROSALES', 'CABALLERO', '1981-03-27', 'M', 'ROCD810327HMCSBN03', '16048106732', 'ROCD810327L91', 2, 1, '', 'JOSE MARIA LUIS MORA 107 B SOR J INES DE LA CRUZ Y LEON GUZMAN IZCALLI TIANGUISTENCOC.P.52605 STGO TIANGUISTENCO D,MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 't5332vh@yahoo.com.mx', 1, 'daniel.rosales@ldrsolutions.com.mx', '', '', '2024-05-02', '2024-08-15', 9, 56, 10, 121, 340, 1, 1, 26, '0000-00-00', 1, 90000, 117365, 1, 14, '77748111', '002453077700481112', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(474, '240474', 'GUSTAVO', 'ANGEL', 'GUSTAVO', 'SALADO', 'DIRCIO', '1994-03-11', 'M', 'SADG940311HGRLRS00', '08149457981', 'SADG940311TI1', 4, 0, '', 'CDA 20 DE AGOSTO 22 2 SN FCO CULHUACAN CP. 04260 COYOACAN CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gustavoangeldircio02@gmail.com', 1, 'gustavo.salado@ldrsolutions.com.mx', '', '', '2024-05-06', '2024-10-30', 6, 43, 13, 99, 290, 1, 1, 90, '0000-00-00', 2, 19000, 22840, 1, 14, '90512701727', '002180905127017274', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(475, '240475', 'BRAYAN', 'ALDAIR', 'BRAYAN', 'BERMAN', 'CELESTINO', '2003-01-21', 'M', 'BECB030121HMCRLRA8', '38190349076', 'BECB030121DZ7', 2, 2, '', '1RA CDA DE XOCUILCO S/N BARR SAN PABLO CP. 56334 CHIMALHUACAN ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'bermanbrayan9@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-22', '2024-08-16', 6, 46, 13, 107, 310, 1, 1, 0, '0000-00-00', 2, 9000, 10261, 2, 10, '11580162875447', '12718000162875447', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(476, '240476', 'IRIS', 'DARIELA', 'IRIS', 'YEPEZ', 'MIRANDA', '1992-02-13', 'F', 'YEMI920213MJCPRR02', '35159254354', 'YEMI920213QU6', 4, 3, '', 'CURA PLUTARCO CONTRERAS 335 COL. CRISTEROS C.P.47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mshugosm@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-31', '0000-00-00', 3, 12, 25, 25, 63, 1, 1, 9, '0000-00-00', 2, 0, 0, 2, 20, '01273485738', '072362012734857380', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(477, '240477', 'ROSENDO', '', 'ROSENDO', 'GARCIA', 'SILVA', '1974-12-14', 'M', 'GASR741214HGRRLS01', '03197452224', 'GASR7412149Z5', 2, 3, '', 'DOROTEO OCHOA 25 B COL. LA AURORA C.P. 47473 LAGOS DE MERENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'danielrosales27@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-31', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 7468, 7468, 2, 26, '01593786873', '012362015937868735', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(478, '240478', 'DAVID', '', 'DAVID', 'FLORES', 'SANTOS', '1995-06-28', 'M', 'FOSD950628HVZLNV08', '75129501815', 'FOSD950628UA9', 4, 0, '', 'PRIV STO TORIBIO 27 COL. LOS JACALES C.P. 37683 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gustavoangeldircio02@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-31', '2024-06-25', 3, 16, 25, 36, 85, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 26, '1508113792', '012180015081137921', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(479, '240479', 'SERGIO', 'EDUARDO', 'SERGIO', 'SOLIS', 'GUILA', '2005-04-06', 'M', 'SOAS050406HGTLGRA4', '46230556204', 'SOAS050406G40', 4, 0, '', 'PADRE TRANQUILINO UBIARCO 237 COL. CRISTEROS C.P. 47476 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'bermanbrayan9@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-31', '2024-08-05', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 26, '1512335575 ', '012362015123355751', 3, 2, '0000-00-00', '0000-00-00', 0, 0),
(480, '240480', 'VICTOR', 'DANIEL', 'VICTOR', 'RAMOS', 'MENDOZA', '1986-04-05', 'M', 'RAMV860405HJCMNC06', '04088659828', 'RAMV860405HU8', 2, 2, '', 'PASE DE LAS CEIBAS 13 COL. LA ESMERALDA C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-06-03', '0000-00-00', 3, 12, 25, 30, 77, 1, 1, 20, '0000-00-00', 2, 0, 0, 1, 26, '01569213462', '012362015692134623', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(481, '240481', 'ROBERTO', '', 'ROBERTO', 'DAVALOS', 'CASTILLO', '1978-11-28', 'M', 'DACR781128HDFVSB01', '37977809377', 'DACR781128RCA', 2, 1, '', 'AV. UNIV. 2014, ED BRASL.D 1401, INTEGRACION LATINOAMERICANA, C.P. 04350, COYOACAN, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'chendo53rs@gmail.com', 1, 'roberto.davalos@ldrsolutions.com.mx', '', '3310409174', '2024-06-03', '0000-00-00', 3, 4, 11, 6, 15, 1, 1, 104, '0000-00-00', 2, 49180, 65000, 1, 14, '90198147019', '002180901981470190', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(482, '240482', 'JOSE', 'OCTAVIANO', 'JOSE', 'AVALOS', 'RODRIGUEZ', '1967-06-11', 'M', 'AARO670611HDFVDC02', '88836700711', 'AARO670611C29', 2, 2, '', 'C, BOCHIL MZA. 313 LOTE 4. COL. TORRES DE PADIERNA, ALCALDIA TLALPAN. CP 14209. CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'jose.avalos@ldrsolutions.com.mx', '', '3312185738', '2024-06-03', '0000-00-00', 6, 41, 13, 94, 276, 1, 1, 1, '0000-00-00', 2, 0, 0, 1, 14, '90124023555', '002456901240235551', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(483, '240483', 'JOSE', 'FERNANDO', 'FERNANDO', 'DIAZ', 'GANDARA', '1985-05-09', 'M', 'DIGF850509HDFZNR03', '01088500820', 'DIGF850509KX6', 4, 0, '', 'AV. ACUEDUCTO 0, PRIVADA SANTA TERESA A303, COLINAS DE SAN JOSE, 54195, TLALNEPANTLA DE BAZ, EDOMEX ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'solisaguilasergioeduardo685@gmail.com', 1, 'fernando.diaz@ldrsolutions.com.mx', '', '3311930241', '2024-06-03', '0000-00-00', 6, 41, 13, 92, 269, 1, 1, 41, '0000-00-00', 2, 0, 0, 1, 26, '02668171440', '012456026681714409', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(484, '240484', 'MARIA', 'EUGENIA', 'MARIA', 'CUEVAS', 'BARRERA', '1970-12-25', 'F', 'CUBE701225MHGVRG03', '66877005059', 'CUBE701225B28', 4, 2, '', 'PROL. ZARAGOZA 1201 39 TROJES DE ALONSO CP. 20116, AGUASCALIENTES,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'maria.cuevas@ldrsolutions.com.mx', '', '3331844339', '2024-06-03', '0000-00-00', 6, 35, 13, 15, 28, 1, 1, 16, '0000-00-00', 2, 92839, 129000, 1, 48, '06391625400', '021010063916254008', 6, 2, '0000-00-00', '2025-03-12', 0, 708),
(485, '240485', 'DIANA', 'LAURA', 'LAURA', 'MARTINEZ', 'MIRANDA', '1994-12-14', 'F', 'MAMD941214MDFRRN19', '01109414043', 'MAMD941214E73', 4, 0, '', 'LAURO VILLAR 159 INT. 10 COL. PROVIDENCIA, AZCAPOTZALCO, CP. 02440', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'robertodavaloscastillo@gmail.com', 1, 'laura.martinez@ldrsolutions.com.mx', '', '', '2024-06-03', '0000-00-00', 6, 46, 13, 105, 297, 1, 1, 136, '0000-00-00', 2, 16851, 20000, 1, 14, '90377840118', '002180903778401189', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(486, '240486', 'ISRAEL', 'ROGELIO', 'ROGELIO', 'ALCALA', 'MORALES', '1980-10-21', 'M', 'AAMI801021HDFLRS04', '96008019562', 'AAMI801021DL1', 2, 1, '', 'AGUSTIN LARA 93, OLIVAR DEL CNDE 2SECVMC, C.P. 01407, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'joseavalos67.ja@gmail.com', 1, 'rogelio.alcala@ldrsolutions.com.mx', '', '3311750442', '2024-06-10', '0000-00-00', 3, 4, 11, 6, 15, 1, 1, 104, '0000-00-00', 2, 42470, 55000, 1, 26, '01518048853', '012180015180488539', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(487, '240487', 'CESAR', 'EDUARDO', 'EDUARDO', 'MUCIÑO', 'MARTINEZ', '2000-08-15', 'M', 'MUMC000815HDFCRSA6', '11150007679', 'MUMC000815147', 4, 0, '', '039PROLONGACION JUAREZ 20, COLONIA SAN PABLO CHIMALPA 05050, CUAJIMALPA DE MORELOS, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jose.diaz.gan@gmail.com', 1, 'eduardo.mucino@ldrsolutions.com.mx', '', '', '2024-06-11', '2024-10-30', 10, 62, 28, 127, 346, 1, 1, 43, '0000-00-00', 2, 12258, 14000, 1, 26, '01529147680', '012180015291476809', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(488, '240488', 'MERARI', '', 'MERARI', 'LIÑAN', 'CARBAJAL', '2001-12-09', 'F', 'LICM011209MMCXRRA8', '62160164166', 'LICM011209M33', 4, 0, '', 'C. CAMPANITAS MZ T LT 34 COL. GRNAJAS NAVIDAD, CUAJIMALPA DE MORELOS, CDMX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eugenianeri70@hotmail.com', 1, 'merari.linan@ldrsolutions.com.mx', '', '', '2024-06-10', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '0000-00-00', 2, 0, 0, 1, 26, '01563109973', '012180015631099736', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(489, '240489', 'VICTOR', 'HUGO', 'HUGO', 'ALVAREZ', 'AGUILAR', '1976-04-11', 'M', 'AAAV760411HDFLGC09', '39977637766', 'AAAV7604111L0', 4, 2, '', '039AKIL 282  LOTE 12 COL. HEROES DE PADIERNA, CP. 14200, ALCALDIA TLALPAN, CIUDAD DE MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'dian27181@gmail.com', 1, 'hugo.alvarez@ldrsolutions.com.mx', '', '', '2024-06-10', '0000-00-00', 3, 8, 11, 15, 29, 1, 1, 106, '0000-00-00', 2, 55888, 75000, 1, 10, '01304660913', '127180013046609132', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(490, '240490', 'JULIO', 'CESAR', 'CESAR', 'CERVANTES', 'ESPITIA', '1992-04-30', 'M', 'CEEJ920430HDFRSL05', '45119212095', 'CEEJ920430PJ4', 4, 1, '', 'EZEQUIEL MONTES MZ.21 LT.7 1ER AMPLIACION SANTIAGO ACAHUALTEPEC IZTAPALAPA CP.09608', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lavoejulio@gmail.com', 1, 'cesar.cervantes@ldrsolutions.com.mx', '', '', '2024-06-10', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '0000-00-00', 2, 0, 0, 1, 26, '01531993904', '012180015319939040', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(491, '240491', 'GONZALO', 'ALEJANDRO', 'GONZALO', 'QUINTERO', 'CORNEJO', '1998-07-01', 'M', 'QUCG980701HJCNRN02', '25179830069', 'QUCG980701F62', 4, 0, '', 'GENERAL SALAZAR 84 FRACC EL PANORAMICO C.P. 45405 TONALA, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alk4pon3.1@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-10', '2024-07-08', 3, 4, 25, 7, 17, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 26, '1531910143', '012320015319101434', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(492, '240492', 'JORGE', 'ALBERTO', 'JORGE', 'PEREZ SIETE', 'ARREDONDO', '1983-04-18', 'M', 'PEAJ830418HDFRRR09', '39078307947', 'PEAJ8304186M9', 4, 0, '', 'CALZADA DE LAS AGUILAS, NUMERO 1127 A, DEPTO: PB 00005, COLONIA SAN CLEMENTE SUR, C.P. 01740, ALVARO OBREGON, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'merarilinan13@gmail.com', 1, 'jorge.perez@ldrsolutions.com.mx', '', '3318657247', '2024-06-17', '0000-00-00', 3, 4, 11, 6, 15, 1, 1, 104, '0000-00-00', 2, 42470, 55000, 1, 26, '02640353035', '012180026403530357', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(493, '240493', 'JULIAN', '', 'JULIAN', 'LOPEZ', 'COLIN', '1993-01-16', 'M', 'LOCJ930116HMCPLL01', '92119329636', 'LOCJ9301161Y3', 4, 0, '', 'MEXICALTZINGO 371 INT, LT4, SOLIDARIDAD 3RA SECCION, TULTITLAN, C.P. 54949, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'victorh.alvarez@hotmail.com', 1, 'julian.lopez@fulongma.com.mx', '', '', '2024-06-17', '0000-00-00', 4, 23, 12, 54, 110, 1, 1, 99, '0000-00-00', 2, 25004, 30765, 1, 14, '90492932522', '002456904929325226', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(494, '240494', 'ANTONIO', 'DE JESUS', 'ANTONIO', 'SOTELO', 'DE ANDA', '2002-11-14', 'M', 'SOAA021114HJCTNNA6', '29160292495', 'SOAA021114SQ0', 4, 0, '', 'PADRE PEDRO ESQUEDA 140,COL. CRISTEROS , CP:47476 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lavoejulio@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-14', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '15182288355', '012180015182288355', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(495, '240495', 'ISAEL', 'ISAIAS', 'ISAEL', 'BAUTISTA', 'LAGUNA', '1989-04-19', 'M', 'BALI890419HASTGS01', '51078920496', 'BALI890419QB4', 4, 0, '', 'CALLE: BALCONES DEL PONIENTE 162  FRACCIONAMIENTO: BALCONES DE OJOCALIENTE AGUASCALIENTES, AGS.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandroquintero3310@gmail.com', 1, 'isael.bautista@ldrsolutions.com.mx', '', '3329669887', '2024-06-17', '0000-00-00', 6, 35, 13, 15, 29, 1, 1, 16, '0000-00-00', 2, 55888, 75000, 1, 48, '6463297378', '021010064632973785', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(496, '240496', 'URIEL', 'MAURICIO', 'MAURICIO', 'DEL ROSARIO', 'ROBLES', '1993-09-22', 'M', 'RORU930922HMCSBR01', '39119340212', 'RORU930922U18', 4, 0, '', 'AV. MATAMOROS 22, SAN CRISTOBAL POXTLA, C.P. 56766, AYAPANGO, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jorgesiete@hotmail.com', 1, 'mauricio.rosario@ldrsolutions.com.mx', '', '', '2024-06-17', '0000-00-00', 6, 35, 13, 74, 155, 1, 1, 52, '0000-00-00', 2, 0, 0, 1, 26, '01580417358', '012180015804173586', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(497, '240497', 'ALEXANDRA', '', 'ALEXANDRA', 'GOMEZ', 'IBARRECHE', '1983-07-23', 'F', 'GOIA830723MDFMBL00', '01028313508', 'GOIA830723AB5', 4, 2, '', 'MOYOBAMBA 315BIS COL.RESIDENCIAL ZACATENCO CP.07360 G.A.M.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alexia235@hotmail.com', 1, 'alexandra.gomez@ldrsolutions.com.mx', '', '', '2024-06-17', '0000-00-00', 6, 35, 13, 74, 158, 1, 1, 52, '0000-00-00', 2, 0, 0, 1, 26, '02712267055', '012180027122670555', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(498, '240498', 'MARIO', 'ALVARO', 'MARIO', 'PEREZ', 'GONZALEZ', '1990-12-14', 'M', 'PEGM901214HDFRNR09', '90119013937', 'PEGM901214EZ7', 2, 0, '', 'RET RAMBULLET 1, BOSQUE DE RAMBULLET, PASEOS DEL BOSQUE C.P. 53297, NAUCALPAN DE JUAREZ, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'antoniosotelo5888@gmail.com', 1, 'mario.perez@ldrsolutions.com.mx', '', '3316998614', '2024-06-17', '0000-00-00', 6, 35, 13, 74, 159, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 48, '04066815713', '021180040668157131', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(499, '240499', 'FERNANDO', '', 'FERNANDO', 'AGUILAR', 'KURI', '1993-05-19', 'M', 'AUKF930519HPLGRR07', '21169342876', 'AUKF930519J30', 4, 0, '', 'PERU 809A, AMERICA SUR, 72340 PUEBLA, PUE.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Isael_bautista@hotmail.com', 1, 'fernando.aguilar@ldrsolutions.com.mx', '', '', '2024-06-17', '0000-00-00', 6, 39, 13, 83, 213, 1, 1, 11, '0000-00-00', 2, 0, 0, 1, 71, '56768142231', '014685567681422317', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(500, '240500', 'JOSE', 'ARTURO', 'ARTURO', 'PULIDO', 'VICTORIA', '1995-07-23', 'M', 'PUVA950723HMCLCR09', '16129527723', 'PUVA95072357A', 4, 2, '', 'PRIVADA DE ARCOS ED. A LT. 10 MZ. 14, SAN JOSE LA PILITAC, C.P. 52149, METEPEC, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'UMauricio_DelRosario@hotmail.com', 1, 'arturo.pulido@ldrsolutions.com.mx', '', '', '2024-06-24', '2024-07-18', 10, 63, 28, 128, 363, 1, 1, 0, '0000-00-00', 2, 18000, 21500, 1, 26, '0474114299', '012441004741142993', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(501, '240501', 'JUAN', 'PABLO', 'JUAN', 'MORENO', 'MARTINEZ', '2002-08-09', 'M', 'MOMJ020809HJCRRNA5', '50170276864', 'MOMJ020809CD8', 4, 0, '', 'PADRE J TRINIDAD R 253 FRACC CRISTEROS C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alexia235@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-21', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '01533276028', '012180015332760283', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(502, '240502', 'JOSE', 'EDUARDO', 'EDUARDO', 'GALINDO', 'MEJIA', '1996-11-16', 'M', 'GAME961116HJCLJD08', '07139647189', 'GAME961116FU2', 4, 0, '', 'PLATA 621 7, SAN ISIDRO RESIDENCIAL, ZAPOPAN JALISCO, C.P. 0, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'perezzmmario@gmail.com', 1, 'eduardo.galindo@ldrsolutions.com.mx', '', '', '2024-06-25', '0000-00-00', 6, 36, 32, 77, 175, 1, 1, 10, '0000-00-00', 2, 11000, 12424, 1, 48, '06587610598', '021320065876105985', 5, 2, '0000-00-00', '0000-00-00', 0, 485),
(503, '240503', 'DANIELLA', 'XCHEL', 'DANIELLA', 'SILVA', 'SEGURA', '1997-09-25', 'F', 'SISD970925MDFLGN07', '02249716792', 'SISD970925RM6', 4, 0, '', 'AV ADOLFO LOPEZ MATEOS NO 817, COL. SAN SALVADOR TIZATLALLI REAL DE AZALEAS II, EDO MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'FERAGUILARKURI@HOTMAIL.COM', 1, 'daniella.silva@ldrsolutions.com.mx', '', '3331987909', '2024-06-24', '0000-00-00', 6, 33, 13, 72, 148, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 14, '90508598873', '002420905085988736', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(504, '240504', 'JORGE', 'ULISES', 'ULISES', 'GUTIERREZ', 'ARCOS', '1969-01-06', 'M', 'GUAJ690106HDFTRR01', '28906903712', 'GUAJ690106GA7', 4, 0, '', 'PRIVADA VERACRUZ 106 INT 801 COL. JESUS DE MONTE, HUIXQUILUCAN EDO MEX. CP 52764', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'arturo.pulido23@outlook.com', 1, 'ulises.gutierrez@ldrsolutions.com.mx', '', '', '2024-06-24', '0000-00-00', 6, 35, 13, 15, 29, 1, 1, 106, '0000-00-00', 2, 55888, 75000, 1, 14, '96560009221', '002180965600092219', 6, 2, '0000-00-00', '2025-03-12', 0, 708),
(505, '240505', 'ALONDRA', 'BERENICE', 'ALONDRA', 'RODRIGUEZ', 'GARCIA', '2002-08-27', 'F', 'ROGA020827MNLDRLA5', 'SIN ASIGNAR', 'ROGA020827SQ5', 4, 0, '', 'IGNACIO ALDAMA 436 COL. INSURGENTES, APODACA NUEVO LEON ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanmartinez020220@gmail.com', 1, 'alondra.rodriguez@ldrsolutions.com.mx', '', '', '2024-05-15', '0000-00-00', 6, 41, 27, 86, 231, 1, 1, 49, '0000-00-00', 1, 7001, 0, 1, 26, '01515776693', '012180015157766938', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(506, '240506', 'LORENZO', '', 'LORENZO', 'PEREZ', 'CRUZ', '2000-08-17', 'M', 'PECL000817HTCRRRA2', '03180023347', 'PECL000817HK3', 2, 2, '', 'SANTA LUCIA 308 B PRIVADA SANTA LUCIA, CIENEGA DE FLORES NL CP. 65555', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lalogm1696@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-27', '2024-07-30', 6, 41, 27, 93, 273, 1, 1, 0, '0000-00-00', 2, 12000, 13674, 1, 26, '1576396324', '012180015763963248', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(507, '240507', 'JOSE', 'ASIS JUNIOR', 'JOSE', 'CARRION', 'AMAYA', '2002-10-03', 'M', 'CAAA021003HTSRMSA4', '27190265614', 'CAAA021003QS0', 4, 0, '', 'SAN JUAN 235 COL SAN MIGUEL RESC.P.67296 ESCOBEDO,N.L.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'danisilseg@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-27', '2024-07-30', 6, 41, 27, 93, 273, 1, 1, 0, '0000-00-00', 2, 12000, 13674, 1, 26, '1536284644', '012709015362846448', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(508, '240508', 'RUSBEL', 'ADRIAN', 'RUSBEL', 'PEREZ', 'CRUZ', '1993-04-16', 'M', 'PECR930416HTCRRS02', '83139327528', 'PECR930416NH9', 2, 0, '', 'MARCO 101 COL. LOS PILARES , SALINAS VICTORIA NL. CP. 66052', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jorgearcos@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-27', '2024-07-31', 1, 1, 1, 1, 1, 1, 1, 64, '0000-00-00', 2, 12000, 13674, 1, 20, '1267631972', '072580012676319726', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(509, '240509', 'ANGEL', 'GABRIEL', 'ANGEL', 'REYES', 'ALBITER', '2005-04-18', 'M', 'REAA050418HVZYLNA3', '19200506640', 'REAA0504188V4', 4, 0, '', 'CIRCUITO MIMBRE 509 FRACC. PASEO DEL ROBLE, CIENEGA DE FLORES CP.65580', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alorodriguez253@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-10', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 1, 14, '90505684345', '002180905056843454', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(510, '240510', 'VICTOR', 'ARNULFO', 'VICTOR', 'TORRES', 'MEDINA', '1996-08-31', 'M', 'TOMV960831HNLRDC01', '43129686929', 'TOMV9608318G3', 2, 2, '', 'CASCADA 614 COL.PASEO DEL CARMEN, EL CARMEN NUEVO LEON CP.66557', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lorenzoperezcruz886@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-05-14', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 1, 26, '01534811256', '012580015348112564', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(511, '240511', 'SERGIO', '', 'SERGIO', 'CEJA', 'DEL ANGEL', '1996-04-19', 'M', 'CEAS960419HPLJNR07', '02189666676', 'CEAS960419J47', 4, 0, '', 'GUANABANA 313A COL FERNANDO AMILPA, GENERAL ESCOBEDO CP.66052', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'amayaasis@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-27', '2024-07-04', 3, 41, 29, 39, 91, 1, 1, 0, '0000-00-00', 2, 16000, 18874, 1, 10, '29730157958616', '127650001579586167', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(512, '240512', 'GERSON', '', 'GERSON', 'JUAREZ', 'PERRUSQUIA', '1996-10-14', 'M', 'JUPG961014HQTRRR02', '05139675945', 'JUPG961014BL1', 4, 0, '', 'PRIVADA UNION 5 LA PALMA, PEDRO ESCOBEDO. QRO.	', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adrian111617@gmail.com', 1, 'gerson.juarez@ldrsolutions.com.mx', '', '', '2024-07-01', '0000-00-00', 6, 41, 26, 95, 278, 1, 1, 23, '0000-00-00', 2, 15000, 17554, 1, 71, '56851847585', '014680568518475855', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(513, '240513', 'MARCO', 'ANTONIO', 'MARCO', 'HERNANDEZ', 'CEDILLO', '2005-03-13', 'M', 'HECM050313HJCRDRA2', '05230577818', 'HECM0503137P2', 4, 0, '', 'PADRE TRANQUILINO UBIARCO 297 COL. CRISTEROS C.P. 47476 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-06-28', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 7468, 7468, 2, 26, '01520033811', '012180015200338116', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(514, '240514', 'MARIO', 'ALBERTO', 'MARIO', 'MARQUEZ', 'ESPINOSA', '2001-01-23', 'M', 'MAEM010123HJCRSRA8', '05130145799', 'MAEM010123MU2', 4, 1, '', 'PERLA MABE 63 FRACC LA PERLA C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'victor213tm@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-06-28', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 7468, 7468, 2, 26, '01519957521', '012180015199575213', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(515, '240515', 'LUIS', 'ISRAEL', 'ISRAEL', 'ACEVEDO', 'SOTO', '1994-06-17', 'M', 'AESL940617HDFCTS02', '20099402511', 'AESL940617PJ8', 4, 0, '', 'BLVD. GRAN SUR 5550 DEPTO 1004 CDMX CP 04800 COYOACAN', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'israel.acevedo.soto@gmail.com', 1, 'israel.acevedo@ldrsolutions.com.mx', '', '3328342142', '2024-07-01', '0000-00-00', 3, 4, 11, 10, 8, 1, 1, 75, '0000-00-00', 2, 105379, 148000, 1, 48, '06467810283', '021180064678102835', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(516, '240516', 'CHRISTIAN', 'YAIR', 'CHRISTIAN', 'REYES', 'GUARNEROS', '2002-05-16', 'M', 'REGC020516HPLYRHA5', '02200274187', 'REGC020516C31', 4, 0, '', '039MEXICO 5, SAN LUCAS ATOYATENCO, 74120 SAN MARTIN TEXMELUCAN DE LABASTIDA, PUE.,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gerson_jp14@outlook.com', 1, 'christian.reyes@ldrsolutions.com', '', '', '2024-07-01', '0000-00-00', 6, 39, 13, 116, 333, 1, 1, 79, '0000-00-00', 2, 0, 0, 1, 20, '01278685739', '072667012786857392', 3, 1, '0000-00-00', '2025-03-10', 0, 0),
(517, '240517', 'TITO', 'ARMANDO', 'ARMANDO', 'DEL CARMEN', 'HERNANDEZ', '1961-07-16', 'M', 'CAHT610716HDFRRT05', 'SIN ASIGNAR', 'CAHT6107169J7', 4, 2, '', 'FUENTE NEPTUNO 114 COL LAS FUENTES CP 76147 SANTIAGO DE QUERETARO, QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'armando.delcarmen@ldrsolutions.com.mx', '', '3318253217', '2024-07-01', '0000-00-00', 6, 39, 13, 83, 214, 1, 1, 11, '0000-00-00', 2, 86792, 120000, 1, 10, '01329740673', '127680013297406736', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(518, '240518', 'CLAUDIA', 'ISIS', 'CLAUDIA', 'VELEZ', 'NARANJO', '1973-04-15', 'F', 'VENC730415MJCLRL01', '04967306921', 'VENC730415UW2', 4, 1, '', 'CALLE GERONA 403 CONDOMINIO BARCELONA, COLONIA NUEVA GALICIA, CP  45645. TLAJOMULCO DE ZUNIGA, JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'marioalbertomarquezespinosa8@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-01', '2024-07-04', 6, 46, 30, 107, 307, 1, 1, 54, '0000-00-00', 2, 40000, 50000, 1, 21, '135969770019', '058320000006804563', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(519, '240519', 'ALBERTO', 'JIBRAN', 'ALBERTO', 'BARRAGAN', 'HERNANDEZ', '1995-10-23', 'M', 'BAHA951023HDFRRL08', '96119503280', 'BAHA9510238U6', 4, 0, '', 'PENSAMIENTO 44, EL PALMAR, NEZAHUALCOYOTL, ESTADO DE MEXICO, CP 57310', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'israel.acevedo.soto@gmail.com', 1, 'alberto.barragan@ldrsolutions.com.mx', '', '', '2024-07-01', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '0000-00-00', 2, 0, 0, 1, 14, '90505168207', '002180905051682076', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(520, '240520', 'ABRAHAM', '', 'ABRAHAM', 'HERNANDEZ', 'FERNANDEZ', '1982-01-21', 'M', 'HEFA820121HHGRRB02', '13118202186', 'HEFA820121IE3', 2, 0, '', 'FRAY SERVANDO TERESA DE MIER NO. 10  COLONIA CARROS CP 43997 CD. SAHAGUN,  TEPEAPULCO, HIDALGO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Christianguarnerosx@gmail.com', 1, 'abraham.hernandez@ldrsolutions.com', '', '', '2024-07-01', '0000-00-00', 6, 39, 13, 83, 215, 1, 1, 11, '0000-00-00', 2, 40000, 51317, 1, 71, '56825704543', '014308568257045433', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(521, '240521', 'ENOC', '', 'ENOC', 'VAZQUEZ', 'SILVA', '1979-05-25', 'M', 'VASE790525HDFZLN05', '45947902982', 'VASE790525HW2', 2, 1, '', 'LISA  70 COL. DEL MAR, TLAHUAC, C.P. 13270, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'adelcarmen4@gmail.com', 1, 'enoc.vazquez@ldrsolutions.com.mx', '', '', '2024-07-15', '0000-00-00', 6, 41, 13, 88, 240, 1, 1, 31, '0000-00-00', 2, 25000, 30759, 1, 26, '01507629953', '012180015076299531', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(522, '240522', 'AXEL', '', 'AXEL', 'GUZMAN', 'VALLEJO', '1994-01-06', 'M', 'GUVA940106HDFZLX07', '92129439524', 'GUVA940106TW0', 4, 0, '', '03913 DE SEPTIEMBRE 9 PRADERAS DE SAN MATEO NAUCALPAN DE JUAREZ C.P. 53228', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'axel.guzman123@gmail.com', 1, 'axel.guzman@ldrsolutions.com.mx', '', '3312422462', '2024-07-01', '0000-00-00', 6, 35, 13, 15, 30, 1, 1, 16, '0000-00-00', 2, 39116, 50000, 1, 26, '01523120272', '012180015231202729', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(523, '240523', 'EDGAR', '', 'EDGAR', 'APARICIO', 'COLIN', '1974-03-18', 'M', 'AACE740318HDFPLD03', '39947453690', 'AACE7403186W3', 2, 2, '', '039IGNACIO ZARAGOZA MIDDOT100 COND 3 C 38, VALLE DE LA HDA,  SAN MATEO OTZACATIPA, TOLUCA EDO MEX CP 50210 ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ajbarraganh@gmil.com', 1, 'edgar.aparicio@ldrsolutions.com.mx', '', '3311930505', '2024-07-08', '0000-00-00', 6, 35, 13, 15, 30, 1, 1, 16, '0000-00-00', 2, 39116, 50000, 1, 26, '00470693545', '012180004706935451', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(524, '240524', 'EDUARDO', '', 'EDUARDO', 'CISNEROS', 'ALVARADO', '1979-09-20', 'M', 'CIAE790920HGTSLD08', '12987918575', 'CIAE7909205A2', 2, 4, '', 'CALLE ANDREA 150, FRAC. LOS ANGELES, EX VINEDOS GUADALUPE, C.P 20300, AGUASCALIENTES 7F, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'abherfer@gmail.com', 1, 'eduardo.cisneros@ldrsolutions.com.mx', '', '3311971663', '2024-07-15', '0000-00-00', 6, 41, 13, 94, 275, 1, 1, 2, '0000-00-00', 2, 21396, 26000, 1, 26, '01570685513', '012320015706855131', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(525, '240525', 'JONATHAN', '', 'JONATHAN', 'SILVERIO', 'DEL ANGEL', '2000-03-17', 'M', 'SIAJ000317HVZLNNA9', '64150088348', 'SIAJ000317TZ5', 4, 0, '', 'PALMA DATILERA 1826,  GENERAL ZUAZUA NUEVO LEON, C.P. 65760, MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'envasi05@hotmail.com', 1, 'jonathan.silverio@ldrsolutions.com.mx', '', '3332504982', '2024-07-15', '0000-00-00', 6, 41, 27, 86, 233, 1, 1, 49, '0000-00-00', 2, 15338, 18000, 1, 71, '26039954600', '014580260399546000', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(526, '240526', 'ARMANDO', '', 'ARMANDO', 'DELGADO', 'PEREZ', '1982-03-22', 'M', 'DEPA820322HPLLRR08', '48068204931', 'DEPA820322CH7', 4, 0, '', 'FAUSTO ORTEGA NO. 22, INT. 12, SAN FRANCISCO OCOTLAN, CORONANGO, C.P. 72690, PUEBLA, MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'axel.guzman123@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-15', '2024-07-24', 3, 4, 11, 7, 16, 1, 1, 51, '0000-00-00', 2, 60000, 75000, 1, 48, '6587401014', '021650065874010140', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(527, '240527', 'DIEGO', 'RAYMUNDO', 'DIEGO', 'SANCHEZ', 'MONTEMAYOR', '1992-06-19', 'M', 'SAMD920619HNTNNG04', '47099208473', 'SAMD9206194Y8', 4, 0, '', '039MANULE M. PONCE 514, COL. LA LUZ, GUADALUPE, N.L', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'edgarapariciocolin@gmail.com', 1, 'diego.sanchez@ldrsolutions.com.mx', '', '', '2024-07-15', '0000-00-00', 6, 46, 27, 106, 301, 1, 1, 39, '0000-00-00', 2, 18000, 21515, 1, 26, '01545569764', '012580015455697642', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(528, '240528', 'FRANCISCO', 'JAVIER', 'FRANCISCO', 'CRUZ', 'CABRERA', '1987-05-11', 'M', 'CUCF870511HOCRBR02', '92058730232', 'CUCF870511UR7', 4, 0, '', 'PRIV HOMBRES ILUSTRES 63B, COL SAN ISIDRO, MELCHOR OCAMPO, ESTADO DE MEXICO, CP 54882', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'edcial.ing@gmail.com', 1, 'francisco.cruz@ldrsolutions.com.mx', '', '', '2024-07-15', '0000-00-00', 6, 46, 13, 105, 298, 1, 1, 39, '0000-00-00', 2, 0, 0, 1, 26, '01589632013', '012180015896320130', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(529, '240529', 'MARIO', '', 'MARIO', 'TORRES', 'PEREZ', '1977-12-14', 'M', 'TOPM771214HQTRRR09', '14967718082', 'TOPM771214UF7', 4, 3, '', 'SAN IDELFONSO S/N', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'torresperezmario953@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-16', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 85, '0000-00-00', 2, 0, 0, 1, 17, '10468066446 ', '039137680104680664', 8, 1, '0000-00-00', '2025-05-29', 0, 202),
(530, '240530', 'DIEGO', 'YOVANY', 'DIEGO', 'MALDONADO', 'ORTIZ', '2004-10-23', 'M', 'MAOD041023HJCLRGA2', '27220412236', 'MAOD041023GC2', 4, 1, '', 'PANAMA 3314 COL. EL VERGEL C.P. 45595 TLAQUEPAQUE, JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'armand.delgado2086@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-15', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 97, '0000-00-00', 2, 0, 0, 2, 26, '01505300028', '012180015053000280', 5, 2, '0000-00-00', '0000-00-00', 0, 0);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(531, '240531', 'JOSE', 'FERNANDO', 'FERNANDO', 'ESTRADA', 'LARA', '1987-04-12', 'M', 'EALF870412HJCSRR00', '75068741224', 'EALF870412GQ7', 4, 0, '', 'DR ATL 36 COL. LOMAS DE TLAQUEPAQUE C.P. 45559 TLAQUEPAQUE, JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'diegomontemayor@outlook.com', 1, 'fernando.estrada@ldrsolutions.com.mx', '', '', '2024-07-16', '0000-00-00', 3, 12, 25, 23, 54, 1, 1, 34, '0000-00-00', 2, 10714, 12071, 2, 26, '01513287745', '012320015132877453', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(532, '240532', 'OSCAR', '', 'OSCAR', 'CORTEZ', 'ORTEGA', '1998-04-17', 'M', 'COOO980417HJCRRS07', '03199806815', 'COOO980417M72', 4, 2, '', 'PADRE J TRINIDAD RANGEL 261 FRACC CRISTEROS C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-07-17', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 7468, 7468, 2, 26, '01521406142', '012362015214061420', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(533, '240533', 'IMANOL', '', 'IMANOL', 'MARTINEZ', 'REYES', '2005-09-12', 'M', 'MARI050912HJCRYMA7', '10200517422', 'MARI050912B27', 4, 0, '', 'PADRE PEDRO ESQUEDA 288 COL. CRISTEROS C.P.47476 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'torresperezmario953@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-17', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 7468, 7468, 2, 20, '1279739358', '072362012797393580', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(534, '240534', 'LUIS', 'FERNANDO', 'LUIS', 'HERNANDEZ', 'MAGAÑA', '2000-11-23', 'M', 'HEML001123HJCRGSA7', '02170040279', 'HEML001123KZ4', 4, 0, '', 'DIAMANTE 479 COL: COLINAS DE SAN JAVIER C.P 47463 LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'fernandomagana477@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-22', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '01537577016', '012180015375770162', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(535, '240535', 'OMAR', '', 'OMAR', 'ESCOBEDO', 'DOMINGUEZ', '1984-09-23', 'M', 'EODO840923HQTSMM06', '14008366545', 'EODO8409231E3', 4, 0, '', 'LAGO DE PATZCUARO 400 COTO BUCAREST CASA 98 FRAC CAPITAL SUR EL MARQUEZ QRO CP 76246		', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'oe202302@gmail.com', 1, 'omar.escobedo@ldrsolutions.com.mx', '', '', '2024-07-22', '0000-00-00', 6, 41, 26, 91, 389, 1, 1, 23, '0000-00-00', 2, 20000, 24156, 1, 71, '6750789854', '014680567507898541', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(536, '240536', 'LORENA', '', 'LORENA', 'RESENDIZ', 'GARCIA', '1978-10-02', 'F', 'REGL781002MMCSRR02', '13947850890', 'REGL781002UY9', 4, 1, '', 'SOLEDAD 50 1, TECAMAC FELIPE VILLANUEVA, C.P. 55740, TECAMAC, EDO. MEX. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-07-19', '0000-00-00', 4, 25, 2, 57, 113, 1, 1, 99, '0000-00-00', 2, 0, 0, 2, 26, '01515602493', '012180015156024930', 3, 1, '0000-00-00', '2025-04-16', 0, 202),
(537, '240537', 'JONATHAN', 'URIEL', 'JONATHAN', 'VAZQUEZ', 'CONTRERAS', '1984-09-17', 'M', 'VACJ840917HVZZNN04', '65018437288', 'VACJ8409172B1', 2, 0, '', 'ROSA VULCANO 95 INT. 14 MOLINO DE ROSAS C.P. 01470, ALVARO OBREGON, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'imanolmartinez463@gmail.com', 1, 'jonathan.vazquez@ldrsolutions.com.mx', '', '3316068536', '2024-07-22', '0000-00-00', 6, 39, 13, 81, 203, 1, 1, 137, '0000-00-00', 2, 0, 0, 1, 26, '02762563290', '012905027625632903', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(538, '240538', 'ALEJANDRO', '', 'ALEJANDRO', 'OLMEDO', 'RODRIGUEZ', '1989-08-26', 'M', 'OERA890826HDFLDL06', '45108907952', 'OERA890826PEA', 4, 0, '', 'CERRO DE LA LIBERTAD 255 COLONIA CAMPESTRE CHURUBUSCO COLONIA COYOACAN CODIGO POSTAL 04200', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alelento89@gmail.com', 1, 'alejandro.olmedo@ldrsolutions.com.m', '', '3322551962', '2024-07-29', '0000-00-00', 6, 41, 13, 86, 222, 1, 1, 90, '0000-00-00', 2, 16000, 18874, 1, 26, '01551601928', '012180015516019284', 4, 1, '0000-00-00', '2025-06-26', 0, 209),
(539, '240539', 'JESUS', '', 'JESUS', 'FARANGO', 'ANGELES', '2003-02-22', 'M', 'FAAJ030222HMCRNSA5', 'SIN ASIGNAR', 'FAAJ030222S38', 4, 0, '', 'SANTA CRUZ AYOTUXCO, HUIXQUILUCAN,MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'OE202302@GMAIL.COM', 1, 'jesus.farango@ldrsolutions.com', '', '', '2024-07-30', '0000-00-00', 6, 36, 13, 77, 176, 1, 1, 10, '0000-00-00', 2, 7385, 0, 1, 26, '01571566234', '012180015715662348', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(540, '240540', 'MAGDIEL', '', 'MAGDIEL', 'CAMACHO', 'LAZARO', '2005-06-01', 'M', 'CALM050601HSPMZGA1', '06160527534', 'CALM050601V69', 4, 0, '', 'VALLE CENTRAL 3955 REAL DE PALMAS GENERAL ZUAZUA NUEVO LEON C.P. 65760, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'resendizlorena387@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-23', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 78, '0000-00-00', 2, 0, 0, 1, 78, '01018397770', '638180010183977701', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(541, '240541', 'MIGUEL', '', 'MIGUEL', 'CASTILLO', 'ZECUA', '1974-09-29', 'M', 'CAZM740929HTCSCG09', '61927405938', 'CAZM7409297S0', 4, 2, '', 'MANUEL GONZALEZ C 103 A PRIVADA DE SANTA LUCIA, CIENEGA DE FLORES NUEVO LEON C.P. 65555, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jonathan.uriel.vazquez.contreras@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-07-23', '0000-00-00', 6, 41, 27, 86, 225, 1, 1, 69, '0000-00-00', 2, 0, 0, 1, 26, '1572228502', '012180015722285022', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(542, '240542', 'JENY', 'ASTRID', 'ASTRID', 'SEBASTIAN', 'OCHOA', '1992-01-11', 'F', 'SEOJ920111MDFBCN04', '37119200832', 'SEOJ920111K22', 2, 2, '', 'CERRADA DE FRESNO 26 COLONIA JESUS DEL MONTE DELEGACION CUAJIMALPA ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'astrid_cherrys24@hotmail.com', 1, 'astrid.sebastian@ldrsolutions.com.mx', '', '3339549891', '2024-08-05', '0000-00-00', 6, 64, 13, 132, 399, 1, 1, 128, '0000-00-00', 2, 0, 0, 1, 71, '56845749375', '014180568457493757', 3, 1, '0000-00-00', '2025-06-03', 0, 209),
(543, '240543', 'ALEXA', 'FERNANDA', 'ALEXA', 'RAMIREZ', 'CHAVEZ', '1995-07-05', 'F', 'RACA950705HJCMHL09', '05179512941', 'RACA950705UE3', 4, 0, '', 'AV. DEL RENO PONIENTE 4591, COLONIA BUGAMBILIAS, C.P. 45237,  ZAPOPAN', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jesusfarango2222@gmail.com', 1, 'alexa.ramirez@ldrsolutions.com.mx', '', '', '2024-08-15', '0000-00-00', 3, 4, 11, 8, 18, 1, 1, 40, '0000-00-00', 2, 63000, 85268, 1, 26, '01523243132', '012320015232431320', 6, 2, '0000-00-00', '2025-04-22', 0, 708),
(544, '240544', 'JULIO', 'FRANCISCO', 'JULIO', 'ASCORVE', 'ZERMEÑO', '1972-06-05', 'M', 'AOZJ720605HDFSRL02', '30917273762', 'AOZJ720605HN6', 2, 2, '', 'AMORES 1643 CASA 7 COLONIA DEL VALLE, ALCALDIA BENITO JUAREZ, CP 03100, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'camacholazaromagdiel@gmail.com', 1, 'julio.ascorve@jetourmx.com', '', '', '2024-08-16', '0000-00-00', 5, 28, 8, 62, 127, 1, 1, 0, '0000-00-00', 2, 275000, 405448, 1, 14, '06600066208', '002180066000662083', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(545, '240545', 'JOSE', 'ARMANDO', 'JOSE', 'GUZMAN', 'BALDOVINOS', '2001-05-08', 'M', 'GUBA010508HMCZLRA9', 'SIN ASIGNAR', 'GUBA010508114', 4, 0, '', 'CALLE LOMA 100 COLONIA SAN JUAN IXCATCALA PLANO NORTE 52928, ATIZAPAN DE ZARAGOZA ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miguelcastillozecua24@gmail.com', 1, 'jose.guzman@jetourmx.com', '', '', '2024-08-16', '0000-00-00', 6, 38, 13, 79, 195, 1, 1, 91, '0000-00-00', 2, 0, 0, 1, 26, '01583983567', '012180015839835679', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(546, '240546', 'SIXTO', 'MARTIN', 'SIXTO', 'GOMEZ', 'PEÑA', '1987-03-30', 'M', 'GOPS870330HMCMXX00', '16078745466', 'GOPS870330FQ9', 2, 2, '', 'TEPETONGO 104 TECAXIC TOLUCA EDO. DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'astrid_cherrys24@hotmail.com', 1, 'sixto.gomez@ldrsolutions.com.mx', '', '', '2024-08-19', '0000-00-00', 6, 39, 13, 83, 216, 1, 1, 107, '0000-00-00', 2, 30000, 37541, 1, 14, '90487883939', '002420904878839394', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(547, '240547', 'PEDRO', '', 'PEDRO', 'LEYVA', 'OJEDA', '1972-03-09', 'M', 'LEOP720309HQTYJD01', '14947201027', 'LEOP720309PT7', 2, 2, '', 'BETELGEUSE 113A, COL. RINCONADA DEL SOL, CP. 76113, SANTIAGO DE QUERETARO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'pedro.leyva@ldrsolutions.com.mx', '', '3311934234', '2024-08-19', '0000-00-00', 6, 39, 13, 83, 216, 1, 1, 107, '0000-00-00', 2, 30000, 37541, 1, 71, '56700134501', '014680567001345011', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(548, '240548', 'MARIO', '', 'MARIO', 'LOPEZ', 'FERNANDEZ', '1976-01-31', 'M', 'LOFM760131HDFPRR08', '28977604892', 'LOFM7601315H1', 4, 2, '', 'RETORNO 36  24, COLONIA AVANTE, DELEG COYOACAN, CP 04460, MEX CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'mario.lopez@ldrsolutions.com.mx', '', '', '2024-08-01', '0000-00-00', 6, 48, 13, 53, 108, 1, 1, 15, '0000-00-00', 2, 40000, 51320, 1, 14, '06278283656', '002180062782836568', 4, 1, '0000-00-00', '2025-06-09', 0, 209),
(549, '240549', 'JOSE', 'CRUZ', 'JOSE', 'LARA', 'DE LOS REYES', '1981-09-23', 'M', 'LARC890923HJCRYR04', '04088991684', 'LARC890923A31', 2, 1, '', 'NARDO 61 ,COL: LAS PINTAS C.P 45690,EL SALTO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-08-22', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '01551225070', '012320015512250700', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(550, '240550', 'BRYAN', '', 'BRYAN', 'AVILA', 'MELCHOR', '2003-11-30', 'M', 'AIMB031130HGRVLRA1', '08190314826', 'AIMB0311307Y6', 4, 1, '', 'QUINTAS  VALPARAISO  232 COL :QUINTAS DEL  VALLE C.P 45655 ,TLAJOMULCO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-08-22', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 94, '0000-00-00', 2, 0, 0, 2, 26, '01567786039', '012180015677860398', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(551, '240551', 'JUAN', 'ANGEL', 'JUAN', 'VAZQUEZ', 'MONTIEL', '2005-01-21', 'M', 'VAMJ050127HJCZNNA6', '18230592471', 'VAMJ050127FJ9', 4, 1, '', 'SAN MATEO 68 COL: LAS JUNTAS C.P 45590,TLAQUEPAQUE JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-08-22', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 97, '0000-00-00', 2, 0, 0, 2, 20, '01237646410', '072320012376464102', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(552, '240552', 'FERNANDO', '', 'FERNANDO', 'ACUÑA', 'RODRIGUEZ', '1972-05-30', 'M', 'AURF720530HDFCDR08', '1907239899', 'AURF720530AVA', 2, 2, '', 'CALLE 24, NUMERO 442, COLONIA ALDANA, DELEGACION AZCAPOTZALCO, C.P. 02910, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'fernando.acuna@ldrsolutions.com.mx', '', '', '2024-04-22', '0000-00-00', 6, 41, 13, 86, 234, 1, 1, 55, '0000-00-00', 2, 0, 0, 1, 26, '1512057773', '012180015120577730', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(553, '240553', 'ERICK', 'ALEXIS', 'ERICK', 'SANTANA', 'BALLESTEROS', '1999-06-25', 'M', 'SABE990625HJCNLR04', '15139979908', 'SABE990625NH9', 4, 0, '', 'CALLE VALLE DE LOS TUCANES 2713 JARDINES DEL VALLE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'tesoreria@ldrsolutions.com.mx', '', '', '2023-08-14', '0000-00-00', 6, 35, 32, 74, 161, 1, 1, 72, '0000-00-00', 2, 0, 0, 1, 71, '56723230955', '039014375567232309', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(554, '240554', 'AMANDA', 'MILDRED', 'AMANDA', 'VILLAGRAN', 'LOPEZ', '1981-03-03', 'F', 'VILA810303MDFLPM05', '28008111156', 'VILA810303JYA', 2, 1, '', 'CORPORATIVO PUNTA SANTA FE, PROL. P.ORDM DE LA REFORMA 1015, SANTA FE, CONTADERO, CUAJIMALPA DE MORELOS, 05348 CIUDAD DE MEXICO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'amanda.villagran@ldrsolutions.com.mx', '', '3311966524', '2024-04-22', '0000-00-00', 6, 37, 13, 78, 189, 1, 1, 71, '0000-00-00', 2, 0, 0, 1, 26, '0391565217088', '039012180015652170', 3, 1, '0000-00-00', '2025-06-09', 0, 146),
(555, '240555', 'FRANCISCO', 'HUMBERTO', 'FRANCISCO', 'MARTINEZ', 'RIOS', '1976-09-15', 'M', 'MARF760915HJCRSR00', '03956937600', 'MARF760915HL8', 2, 2, '', 'REPUBLICA DE PANAMA 28 COLONIAL TLAQUEPAQUE', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'francisco.martinez@ldrsolutions.com.mx', '', '', '2024-04-22', '0000-00-00', 6, 41, 32, 86, 229, 1, 1, 55, '0000-00-00', 2, 0, 0, 1, 26, '0391522450521', '039012320015224505', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(556, '240556', 'JONATHAN', 'IVAN', 'JONATHAN', 'HERNANDEZ', 'IÑIGUEZ', '1996-11-02', 'M', 'HEIJ961102HJCRXN02', '35169653306', 'HEIJ961102EA1', 4, 0, '', 'FRANCISCO MADERO  10, COL:EL CASTILLO C.P 45686, GUADALAJARA JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-08-29', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 26, '1515954401', '039012320015159544', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(557, '240557', 'RAMIRO', '', 'RAMIRO', 'GONZALEZ', 'SANCHEZ', '1977-08-18', 'M', 'GOSR770818HMCNNM09', '1602770453', 'GOSR770818KE9', 2, 2, '', 'AV. REVOLUCION SN, SAN DIEGO DE LOS PADRES OTZACATIPAN, C.P. 50205, TOLUCA ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'ramiro.gonzalez@ldrsolutions.com.mx', '', '', '2024-09-02', '0000-00-00', 10, 62, 28, 127, 361, 1, 1, 43, '0000-00-00', 2, 0, 0, 1, 71, '56821400959', '014438568214009599', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(558, '240558', 'SARAHI', '', 'SARAHI', 'MARTINEZ', 'JIMENEZ', '1996-12-05', 'F', 'MAJS961205MDFRMR03', '42129609881', 'MAJS961205AP0', 4, 0, '', 'PEDRO MARIA ANAYA MZ. 52, LT. 352, COLONIA GUADALUPE TLALTECO,  C.P. 13400, MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'sarahi.martinez@ldrsolutions.com.mx', '', '', '2024-09-02', '0000-00-00', 6, 39, 13, 81, 204, 1, 1, 137, '0000-00-00', 2, 0, 0, 1, 26, '1598287543', '012180015982875434', 6, 2, '0000-00-00', '2025-06-19', 0, 202),
(559, '240559', 'EDGAR', '', 'EDGAR', 'PIÑA', 'CRUZ', '1990-05-24', 'M', 'PICE900524HMCXRD04', '16109057550', 'PICE900524PC3', 2, 2, '', 'LOMA DEL PADRE, CUAJIMALPA DE MORELOS  CIUDAD DE MLXICO 05020', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'edgar.pina@ldrsolutions.com.mx', '', '3318643338', '2024-09-09', '0000-00-00', 6, 36, 13, 76, 168, 1, 1, 19, '0000-00-00', 2, 0, 0, 1, 26, '2658759413', '012426026587594135', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(560, '240560', 'VALERIA', 'BEATRIZ', 'VALERIA', 'ORTIZ', 'MERCADO', '2000-01-19', 'F', 'OIMV000119MDFRRLA8', '35190004735', 'OIMV000119G19', 4, 0, '', 'PANABA 492 ENTRE DZMUL Y VIA DE FERROCARRIL, CP14100 CDMX,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'valeria.ortiz@ldrsolutions.com.mx', '', '3311966768', '2024-09-09', '0000-00-00', 6, 41, 13, 97, 139, 1, 1, 12, '0000-00-00', 1, 0, 0, 1, 26, '	1542849922', '012180015428499222', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(561, '240561', 'LUIS', 'ALBERTO', 'LUIS', 'ORNELAS', 'SANDOVAL', '1983-02-14', 'M', 'OESL830214HDFRNS08', '92068317145', 'OESL830214FQ4', 2, 2, '', 'AVE. BELLAVISTA 155, JARDINES DE BELLAVISTA, TLALNEPANTLA, ESTADO DE MEXICO. 54054', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'luis.ornelas@ldrsolutions.com.mx', '', '3318255495', '2024-09-17', '0000-00-00', 3, 4, 11, 8, 412, 1, 1, 40, '0000-00-00', 2, 0, 0, 1, 95, '12592366', '638180000125923668', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(562, '240562', 'LUIS', 'JARED', 'LUIS', 'ALBA', 'ESTRADA', '2002-07-25', 'M', 'AAEL020725HJCLSSA4', '02170218008', 'AAEL020725KT3', 4, 0, '', 'SANTA ELENA 594 COL: SANTA ELENA  C.P 47480,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-09-11', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 71, '56902818984', '014362569028189848', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(563, '240563', 'JOSE', 'ARTURO', 'JOSE', 'MUÑOZ', 'ANTIMO', '1981-12-16', 'M', 'MUAA811216HJCXNR07', '12068101984', 'MUAA811216GM1', 4, 2, '', 'GUAYABO 430 COL: CENTRO C.P 47400,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'edgarpina2018@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-11', '0000-00-00', 3, 12, 25, 22, 45, 1, 1, 8, '0000-00-00', 2, 0, 0, 2, 71, '014362569030153011', '014362569030153011', 5, 1, '0000-00-00', '0000-00-00', 0, 338),
(564, '240564', 'ALEJANDRO', '', 'ALEJANDRO', 'CRUZ', 'AGUILAR', '1985-08-18', 'M', 'CUAA850818HDFRGL06', '65048545811', 'CUAA850818QY3', 4, 0, '', 'REY MAXTLA 187 INT AGH01, SAN FRANCISCO TETECALA, AZCAPOTZALCO. CP 02730 ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'valeriia.bom@gmail.com', 1, 'alejandro.cruz@jetourmx.com', '', '', '2024-09-17', '0000-00-00', 5, 26, 8, 58, 116, 1, 1, 46, '0000-00-00', 2, 0, 0, 1, 48, '6418494070', '0211800641849407', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(565, '240565', 'SHARON', '', 'SHARON', 'LEON', 'PEREZ', '1991-10-26', 'F', 'LEPS911026MDFNRH03', '11119101563', 'LEPS911026911', 4, 2, '', 'CONST. HECTOR VICTORIA 185 INT B 203, COL. GRANJAS NAVIDAD, ALCALDIA CUAJIMALPA DE MORELOS. C.P. 05210, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sharob_3@hotmail.com', 1, 'sharon.leon@ldrsolutions.com', '', '3334968516', '2024-09-17', '0000-00-00', 6, 46, 13, 110, 317, 1, 1, 58, '0000-00-00', 2, 0, 0, 1, 71, '60613822732', '014180606138227324', 3, 1, '0000-00-00', '2025-06-26', 0, 202),
(566, '240566', 'GLORIA', '', 'GLORIA', 'TORRES', 'MORA', '1991-03-30', 'F', 'TOMG910330MPLRRL02', '96109189389', 'TOMG910330KW2', 4, 1, '', 'CALLE ORQUIDEAS, MZ.2. LOTE 51, SAN MARCOS HUIXTOCO, CHALCO MEXICO. C.P. 56643.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luisjared.alba257@gmail.com', 1, 'gloria.torres@ldrsolutions.com.mx', '', '', '2024-09-17', '0000-00-00', 6, 48, 13, 53, 109, 1, 1, 56, '0000-00-00', 2, 0, 0, 1, 26, '1502249199', '012180015022491998', 4, 1, '0000-00-00', '2025-06-09', 0, 209),
(567, '240567', 'JOSE', 'ALBERTO RAFAEL', 'JOSE', 'PEREZ', 'MARTINEZ', '1999-09-20', 'M', 'PEMA990920HGTRRL07', '57169934460', 'PEMA990920T35', 2, 2, '', '27 DE OCTUIBRE 383 COL:PUEBLO DE MOYA C.P 47430,LAGOS DE MOREJO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'iori13alfa201281@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-18', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56903144654', '014362569031446549', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(568, '240568', 'EDWIN', 'GERARDO', 'EDWIN', 'ROJAS', 'RAMIREZ', '1998-03-18', 'M', 'RORE980318HJCJMD05', '30139813726', 'RORE9803185Z9', 4, 2, '', 'IGNACION LOPEZ RAYON 728 COL:SAN FELIPE C.P 47470,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'er7136280@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-18', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56903002633', '014362569030026339', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(569, '240569', 'CESAR', '', 'CESAR', 'LOPEZ', 'PONCE', '1981-08-03', 'M', 'LOPC810803HJCPNS01', '04068101528', 'LOPC810803S39', 2, 0, '', 'CIRCUITO ENCINO DE MIEL 200, COL PASEO DEL ROBLE 1E, CIENEGA DE FLORES, NUEVO LEON, CP. 65573', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sharob_3@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-18', '0000-00-00', 6, 41, 27, 86, 228, 1, 1, 78, '0000-00-00', 2, 0, 0, 2, 71, '56900227357', '014580569002273578', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(570, '240570', 'ISAAC', 'DAVID', 'ISAAC', 'CASTILLO', 'TLACHIMATZI', '2001-12-30', 'M', 'CATI011230HTLSLSA9', '25200193958', 'CATI011230D7A', 4, 0, '', 'VIRGEN DE GUADALUPE  273 COL: CRISTEROS C.P 47472. LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'TORRES30MORA@GMAIL.COM', 1, 'SIN ASIGNAR', '', '', '2024-09-20', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56903157336', '014362569031573360', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(571, '240571', 'MARTIN', '', 'MARTIN', 'HERNANDEZ', 'GONZALEZ', '1978-08-28', 'M', 'HEGM780828HJCRNR01', '56967819477', 'HEGM7808287X9', 4, 0, '', 'AV. CAMPO BELLO 531 COL:CAMPO BELLO C.P 45685,TLAQUEPAQUE,GDL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'rp2926326@gmail.com', 1, 'martin.hernandez@ldrsolutions.com.mx', '', '', '2024-09-23', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 71, ' 56872168560', '014320568721685608', 3, 1, '0000-00-00', '2025-06-27', 0, 202),
(572, '240572', 'FAUSTO', 'JOSE', 'FAUSTO', 'URIBE', 'ABASCAL', '1971-01-19', 'M', 'UIAF710119HDFRBS00', '30897132749', 'UIAF710119Q43', 2, 0, '', 'NIZA 5, LOMAS DE ANGELOPOLIS III, OCOYUCAN, C.P. 72850, PUEBLA.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'p666cesar@gmail.com', 1, 'fausto.uribe@ldrsolutions.com.mx', '', '', '2024-10-02', '0000-00-00', 6, 41, 13, 94, 274, 1, 1, 2, '0000-00-00', 2, 0, 0, 1, 20, '0261530759', '072650002615307590', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(573, '240573', 'OSCAR', 'DANIEL', 'OSCAR', 'MARTINEZ', 'ORTIZ', '1995-06-18', 'M', 'MAOO950618HJCRRS00', '46149564851', 'MAOO950618AW0', 2, 2, '', 'LA MERCED  98 COL: VILLA SANTA SOFIA  C.P 47472,LAGOS DE MORENO , JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Juanmiguelcastillo124@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-24', '0000-00-00', 3, 12, 25, 24, 55, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56903766708', '014362569037667089', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(574, '240574', 'FREDI', 'JAIR', 'FREDI', 'RAMOS', 'HERNANDEZ', '1997-01-26', 'M', 'RAHF970126HVZMRR05', '56159717653', 'RAHF970126GWA', 4, 1, '', 'CALLE 10 120 VALLE DEL JARAL, EL CARMEN, NUEVO LEON C.P. 66580, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'er7136280@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-25', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 2, 26, '1585483161', '012150015854831617', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(575, '240575', 'CARLOS', 'FRANCISCO', 'CARLOS', 'MARTINEZ', 'ALVARADO', '2005-07-27', 'M', 'MAAC050727HNLRLRA8', '26200542723', 'MAAC050727QN8', 4, 0, '', 'ARCO DE MALAGA 210 A VILLAS DEL ARCO 1S, SALINAS VICTORIA, NUEVO LEON C.P. 66550, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Rusopelos129@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-25', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 78, '0000-00-00', 2, 0, 0, 2, 26, '012180015884755254', '1588475525', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(576, '240576', 'JOSE', 'ANGEL', 'JOSE', 'LUCHO', 'ESTRADA', '2003-05-14', 'M', 'LUEA030514HVZCSNA0', '18180322556', 'LUEA0305143Y3', 4, 0, '', 'CIRCUITO MIMBRE 509 PASEO DEL ROBLE, CIENEGA DE FLORES, NUEVO LEON C.P. 65573, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'faustouribe@yahoo.com', 1, 'SIN ASIGNAR', '', '', '2024-09-25', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 2, 26, '1504693509', '012180015046935090', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(577, '240577', 'JESUS', 'ERANTHI', 'JESUS', 'HIPOLITO', 'SALAS', '2004-06-23', 'M', 'HISJ040623HNLPLSA0', '02180436475', 'HISJ040623G64', 4, 0, '', 'PROFESOR ANASTACIO TREVINO 116 FOMERREY 9, GENERAL ESCOBEDO, NUEVO LEON C.P. 66073, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Oscardo95@outlook.com', 1, 'SIN ASIGNAR', '', '', '2024-09-25', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 78, '0000-00-00', 2, 0, 0, 2, 20, '1250900661', '072580012509006614', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(578, '240578', 'FILIBERTO', '', 'FILIBERTO', 'GONZALEZ', 'SALINAS', '1991-08-02', 'M', 'GOSF910802HQTNLL06', '47109110727', 'GOSF910802Q74', 4, 2, '', 'VIVERO DEL NOGAL 530, PORTAL DE LAS SALINAS, CIENEGA DE FLORES, NUEVO LEON. CP. 99999', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'frediramos1997@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-09-26', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 78, '0000-00-00', 2, 0, 0, 2, 17, '10499563910', '137580104995639105', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(579, '240579', 'CHRISTIAN', 'GERARDO', 'CHRISTIAN', 'ORNELAS', 'LOMELI', '2000-10-03', 'M', 'OELC001003HJCRMHA7', '46160055185', 'OELC001003HV1', 4, 0, '', 'RITA PEREZ 299 COL: SAN MIGUEL II C.P 47420 LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'christianlomeli18@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-03', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56904565464', '014362569045654644', 5, 1, '0000-00-00', '0000-00-00', 0, 338),
(580, '240580', 'MIGUEL', 'EVERARDO', 'MIGUEL', 'MUÑOZ', 'DELGADO', '1992-08-27', 'M', 'MUDM920827HJCXLG03', '04099276844', 'MUDM920827UG2', 4, 0, '', 'CALLE JILGUERO 665 COL: ROMITA C.P 45598 SAN PEDRO TLAQUEPAQUE, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luchoestradaj@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-03', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 97, '0000-00-00', 2, 0, 0, 2, 71, '56904708683', '014320569047086838', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(581, '240581', 'JOSE', 'DE JESUS', 'JESUS', 'MALDONADO', 'FLORES', '1978-11-21', 'F', 'MAFJ781121HJCLLS08', '12017818332', 'MAFJ781121TG8', 2, 1, '', 'SENDERO DE LA PAZ 10 51 CP.000 V MILENIO III 8C.P.76060 QUERETARO,QRO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'hipolitosalasj@gmail.com', 1, 'jesus.maldonado@ldrenta.com', '', '3319183041', '2024-10-03', '0000-00-00', 7, 52, 35, 117, 334, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 49, '50047310496', '036680500473104964', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(582, '240582', 'JOSE', 'RAFAEL', 'JOSE', 'PEREZ', 'HERNANDEZ', '1975-01-13', 'M', 'PEHR750113HQTRRF09', '14927528472', 'PEHR750113KD3', 2, 3, '', 'CALLE JUSTO SIERRA S/N, SAN JOSE LA PENUELA, COLON QRO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gonzalezfiliberto896@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-04', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 2, 12000, 13676, 1, 71, '56848818858', '039014668056848818', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(583, '240583', 'ALEJANDRA', '', 'ALEJANDRA', 'MONTERO', 'ALVAREZ', '1985-04-11', 'F', 'MOAA850411MMCNLL05', '92038525652', 'MOAA8504114K8', 4, 2, '', 'CALLE DEL GAS MIDDOT14 COL SAN PEDRO BARRIENTOS, TLALNEPANTLA. EDO. MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'christianlomeli18@gmail.com', 1, 'alejandra.montero@ldrsolutions.com.mx', '', '', '2024-10-07', '0000-00-00', 6, 39, 13, 81, 205, 1, 1, 137, '0000-00-00', 2, 0, 0, 1, 14, '90465680368', '039002180904656803', 6, 2, '0000-00-00', '2025-06-09', 0, 202),
(584, '240584', 'MIGUEL', 'ANGEL', 'MIGUEL', 'MORALES', 'REYES', '1984-09-30', 'M', 'MORM840930HJCRYG09', '54008482660', 'MORM840930AYA', 2, 3, '', 'PASEO  DE LOS SABINOS 69 COL: LA AURORA C.P 47472 ,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miguelevererardo@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-07', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56902032159', '014362569020321594', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(585, '240585', 'SOFIA', '', 'SOFIA', 'MENCHACA', 'WIESBACH', '1992-02-03', 'F', 'MEWS920203MASNSF06', '51129233972', 'MEWS920203PQ4', 4, 0, '', 'HEROES DE 1821 15, INT. 302,  ESCANDON I SECC, MIGUEL HIDALGO,  CP 11800 CIUDAD DE MEXICO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jmaldonado@alegmaservicios.com', 1, 'sofia.menchaca@ldrsolutions.com.mx', '', '3331989025', '2024-10-16', '0000-00-00', 3, 8, 11, 14, 413, 1, 1, 80, '0000-00-00', 2, 0, 0, 1, 71, '26009311132', '014010260093111324', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(586, '240586', 'JUAN', 'MIGUEL', 'JUAN', 'ZAVALA', 'MARTINEZ', '1989-11-26', 'M', 'ZAMJ891126HJCVRN07', '04058980113', 'ZAMJ891126CU0', 4, 3, '', 'PADRE PEDRO ESQUEDA 128 COL:CRISTEROS C.P 47472,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pjoserafael869@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-08', '0000-00-00', 3, 12, 25, 31, 79, 1, 1, 5, '0000-00-00', 2, 0, 0, 2, 71, '56904959606', '014362569049596067', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(587, '240587', 'JONATHAN', 'CRISTOBAL', 'JONATHAN', 'DE DIOS', 'ROMO', '1998-09-10', 'M', 'DIRJ980910HJCSMN05', '51169847335', 'DIRJ980910MQ3', 4, 0, '', 'CERRADA CIPRES26 COL: COLINAS DEL VALLE C.P 47460,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandra.montero198538@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-08', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '0000-00-00', 2, 0, 0, 2, 71, '56905060441', '014362569050604414', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(588, '240588', 'MARIANA', '', 'MARIANA', 'ORTIZ', 'FRANCISCO', '2001-07-10', 'F', 'OIFM010710MMCRRRA6', '02180122083', 'OIFM010710D89', 4, 0, '', '3A. CDA DE PROL JUAREZ NO. EXT 11, NO. INT 3, LOMAS DE SAN PEDRO,  CUAJIMALPA DE MORELOS,  CP. 05370,  CDMX,', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'moralesangel.mm84@gmail.com', 1, 'mariana.ortiz@ldrsolutions.com.mx', '', '', '2024-10-09', '0000-00-00', 6, 38, 13, 79, 195, 1, 1, 91, '0000-00-00', 2, 0, 0, 1, 26, '1543582253', '012420015435822539', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(589, '240589', 'JONATHAN', 'FRANCISCO', 'JONATHAN', 'ESCALANTE', 'CERRILLO', '1980-10-16', 'M', 'EACJ801016HDFSRN00', '30038010879', 'EACJ801016IEO', 4, 0, '', 'FRANCISCO LABASTIDA IZQUIERDO 6 COL. CONSTITUCION DE 1917 ALCADIA IZTAPALAPA CP 09260', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nieblapaco2023@gmail.com', 1, 'jonathan.escalante@ldrsolutions.com.mx', '', '', '2024-10-14', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '0000-00-00', 2, 0, 0, 1, 71, '60614532047', '014180606145320476', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(590, '240590', 'OMAR', '', 'OMAR', 'MORALES', 'GOMORA', '1993-02-13', 'M', 'MOGO930213HMCRMM08', '90119370816', 'MOGO930213AT7', 4, 0, '', 'CALLE BARBASCO LT. 13 MZ. 207, COLONIA SAN LORENZO TOTOLINGA, NAUCALPAN DE JUAREZ, ESTADO DE MEXICO, C.P. 53426', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jz0199720@gmail.com', 1, 'omar.morales@ldrsolutions.com.mx', '', '', '2024-10-16', '0000-00-00', 6, 41, 13, 88, 240, 1, 1, 31, '0000-00-00', 2, 0, 0, 1, 71, '56726679799', '014180567266797991', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(591, '240591', 'CLAUDIA', 'MARIELA', 'CLAUDIA', 'MENDEZ', 'SANCHEZ', '1994-05-07', 'F', 'MESC940507MJCNNL05', '19169451648', 'MESC940507879', 4, 2, '', 'EL PUESTO 225-4 COL: LA ESMERALDA C.P 47472,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'dedioscristo13@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-14', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56905052355', '014362569050523553', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(592, '240592', 'JOSE', 'MANUEL', 'JOSE', 'GUERRA', 'ROJAS', '1984-12-31', 'M', 'GURM841231HJCRJN04', '04048429304', 'GURM841231Q27', 4, 0, '', 'ALHELI 103 COL: BUGAMBILIAS C.P 47474,LAGIS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mariana.ortiz.francisco@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-17', '0000-00-00', 3, 12, 25, 27, 74, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56905561153', '014362569055611538', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(593, '240593', 'YULIANA', 'MONTSERRAT', 'YULIANA', 'REA', 'PEDROZA', '2001-10-21', 'M', 'REPY011027MGTXDLA6', '05150134962', 'REPY011027P77', 4, 0, '', 'DIVISION DEL NORTE 282 COL: CUESTA BLANCA C.P 47420,LAGOS DE MORENOP JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nieblapaco2023@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-18', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56906023468', '014362569060234683', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(594, '240594', 'FELIX', 'ANTONIO', 'FELIX', 'BAZAN', 'BAUTISTA', '1985-02-06', 'M', 'BABF841205HOCZTL02', '07058400412', 'BABF841205FZ9', 2, 0, '', 'PRIVADA STELA 1 CASA 36, FRACCIONAMIENTO REAL DEL SOL, TECAMAC, EDO DE MEX., C.P. 55740', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'ogomoram.sist.auto@gmail.com', 1, 'felix.bazan@ldrsolutions.com.mx', '', '3311937028', '2024-10-21', '0000-00-00', 3, 4, 11, 5, 414, 1, 1, 21, '0000-00-00', 2, 0, 0, 1, 26, '1563484152', '012180015634841525', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(595, '240595', 'LUIS', 'GERARDO', 'LUIS', 'ORTIZ', 'MARTINEZ', '2001-09-10', 'M', 'OIML010910HJCRRSA5', '25200104948', 'OIML010910UZ7', 4, 0, '', 'PORVENIR 161 COL: SAN MIGUEL II C.P 47420,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'cm1747221@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-22', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '0000-00-00', 2, 0, 0, 2, 71, '56906148175', '014362569061481752', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(596, '240596', 'LUIS', 'FERNANDO', 'LUIS', 'DELGADO', 'CLAUDIO', '1995-09-19', 'M', 'DECL950919HJCLLS03', '05159510675', 'DECL9509198F8', 2, 1, '', 'PRIVADA PARAISO 7 COL: AGUACALIENTE C.P 47430,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'jguerra7844@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-22', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56906129713', '014362569061297137', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(597, '240597', 'JOSE', 'DE JESUS', 'JOSE', 'IBARRA', 'GARCIA', '1998-10-31', 'M', 'IAGJ981031HJCBRS09', '02169816259', 'IAGJ981031GM7', 2, 1, '', 'VALLE DE TOLUCA 116 COL:HUERTITAS C.P 47400,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Yuliana_rea1@outlook.com', 1, 'SIN ASIGNAR', '', '', '2024-10-22', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56894803417', '014362568948034171', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(598, '240598', 'ELIZABETH', '', 'ELIZABETH', 'MARQUEZ', 'MANCILLA', '1999-09-07', 'F', 'MAMX990907MJCRNL03', '57169944436', 'MAMX990907ME3', 4, 0, '', 'NUESTRA SENORA DEL REFUGIO 60 COL: LAURELES DEL CAMPANARIO C.P 47530, LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'bbaf03@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2024-10-22', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56906136957', '014362569061369573', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(599, '240599', 'FRIDA', '', 'FRIDA', 'CALZADA', 'LEVARIO', '2002-08-08', 'F', 'CALF020808MDFLVRA3', '04170266623', 'RACA950705UE3', 4, 0, '', ' EMILIANO ZAPATA 174, EDIFICIO I D 302, COLONIA 10 DE MAYO, CP. 15290, VENUSTIANO CARRANZA, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'monrealfernanda22@gmail.com', 1, 'frida.calzada@ldrsolutions.com.mx', '', '', '2024-10-28', '0000-00-00', 6, 41, 13, 91, 390, 1, 1, 127, '0000-00-00', 1, 0, 0, 1, 26, ' 1558484764', '012180015584847640', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(600, '240600', 'JUAN', 'PABLO', 'PABLO', 'RAMIREZ', 'GUTIERREZ', '1999-01-23', 'M', 'RAGJ990123HGTMTN07', '09139987052', 'RAGJ990123DE2', 4, 0, '', 'ITURBIDE 9A COL: REFORMA Y BUGANBILIA C.P 47570,UNION DE SAN ANTONIO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'luis.fer.delgado199510@gmail.com', 1, 'juanpabloramirezgtz@ldrsolutions.com.mx', '', '3332504978', '2024-10-29', '0000-00-00', 3, 12, 25, 21, 41, 1, 1, 37, '0000-00-00', 2, 0, 0, 1, 71, '56906738860', '014362569067388600', 5, 2, '0000-00-00', '0000-00-00', 0, 338),
(601, '240601', 'EUMIR', 'EDUARDO', 'EUMIR', 'AGUILAR', 'MARTÍNEZ', '1979-01-08', 'M', 'AUME790108HDFGRM08', '28057902570', 'AUME790108JK1', 2, 2, '', 'BOSQUES DE JAPON29 ,FRACC. BOSQUES DE ARAGON , MUNICIPIO DE NEZAHUALCOYOTL C.P 57170', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'pilloibarragarcia1998@gmail.com', 1, 'eumir.aguilar@ldrsolutions.com.mx', '', '', '2024-11-04', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 0, 0, 1, 14, '96732086791', '002180904000803470', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(602, '240602', 'Max', 'Eduardo', 'MAX', 'LINARES', 'SOLER', '1971-10-08', 'M', 'LISM711008HDFNLX09', '39927149086', 'LISM711008RV1', 2, 2, '', 'C. MANZANAS 2 COL. TLACOQUEMECATL DEL VALLE, BENITO JUAREZ, DEP 202, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'elizamm0709@gmail.com', 1, 'max.linares@ldrsolutions.com.mx', '', '3331841899', '2024-10-01', '0000-00-00', 6, 33, 13, 72, 149, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 14, '7492733', '002180034974927336', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(603, '240603', 'DIEGO', '', 'DIEGO', 'RESENDIZ', 'RUIZ', '1999-12-15', 'M', 'RERD991215HDFSZG09', '20149942201', 'RERD991215BG0', 4, 0, '', 'VOLCAN JORULLO 164, PRADERA I SECC, GUSTAVO A. MADERO, 07500 CIUDAD DE MEXICO, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'frida.calev14@gmail.com', 1, 'diego.resendiz@ldrsolutions.com.mx', '', '3331054186', '2024-11-04', '0000-00-00', 3, 4, 11, 8, 415, 1, 1, 65, '0000-00-00', 2, 0, 0, 1, 71, '56858980235', '014180568589802355', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(604, '240604', 'FERNANDO', 'LUCIANO', 'FERNANDO', 'TORRES', 'GUERRA', '2004-09-14', 'M', 'TOGF040914HJCRRRA0', '19230442469', 'TOGF040914J59', 4, 0, '', 'PETRA MARTINEZ 256 COL: LAS PALMAS C.P 47440,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanpabloramirezgtz@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-06', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56907628069', '014362569076280692', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(605, '240605', 'JULIO', 'ANTONIO', 'JULIO', 'RANGEL', 'BENITEZ', '1996-03-13', 'M', 'RABJ960313HNLNNL08', '43119602951', 'RABJ960313SY6', 4, 0, '', 'AV ONCEAVA  1005, VILLAS DEL PROGRESO, CIENEGA DE FLORES, NUEVO LEON, CP 65563', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'eumiraguilar30@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-06', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 2, 26, '1589936664', '012580015899366649', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(606, '240606', 'JOSE', 'LUIS', 'JOSE', 'LEON', 'LUJAN', '2006-10-20', 'M', 'LELL061020HCHNJSA3', '26210623844', 'LELL061020LA4', 4, 0, '', 'CALLE MIGUEL VILLARREAL 204 B, EL JARAL 5A ETAPA, EL CARMEN, NL. CP 99999', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'mlinaressoler@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-06', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 69, '0000-00-00', 2, 0, 0, 2, 95, '00015542861', '638180000155428612', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(607, '240607', 'RODOLFO', 'ALEJANDRO', 'RODOLFO', 'JIMENEZ', 'HERNANDEZ', '1982-08-26', 'M', 'JIHR820826HDFMRD02', '14018237827', 'JIHR8208268B9', 2, 1, '', 'AV REAL DEL POTOSI 116 COL LOMAS 4A SECCION, CP 78216, SAN LUIS POTOSI, SLP.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'diegorr753@gmail.com', 1, 'rodolfo.jimenez@ldrenta.com', '', '', '2024-11-11', '0000-00-00', 7, 53, 35, 118, 336, 1, 1, 77, '0000-00-00', 2, 0, 0, 1, 20, '1248606670', '072680012486066703', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(608, '240608', 'OSWALDO', '', 'OSWALDO', 'HERNANDEZ', 'LOPEZ', '1983-03-06', 'M', 'HELO830306HDFRPS09', '07028312739', 'HELO830306BX2', 2, 4, '', 'CERRADA BERRIOZABAL 11, COLONIA TLALNEPANTLA CENTRO, CP 54000', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Fernandotorresguerra77@gmail.com', 1, 'oswaldo.hernandez@ldrsolutions.com.mx', '', '', '2024-11-11', '0000-00-00', 7, 53, 35, 118, 335, 1, 1, 108, '0000-00-00', 2, 18000, 24000, 1, 71, '56898315148', '014180568983151482', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(609, '240609', 'JUAN', 'MANUEL', 'JUAN', 'RESENDIZ', 'TREJO', '1994-01-29', 'M', 'RETJ940129HQTSRN02', '14119456730', 'RETJ9401294H2', 4, 0, '', 'JACARANDAS S/N EL PARAISO EL MARQUES QUERETARO CP. 76248', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'juanmanuelresendiz105@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-07', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 71, '014680 56900860054 0', '56900860054', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(610, '240610', 'JOSE', 'GUADALUPE', 'JOSE', 'VELAZQUEZ', 'RESENDIZ', '1988-09-12', 'M', 'VERG880912HQTLSD00', '14048824511', 'VERG88091276A', 4, 2, '', 'CALLE RI FUERTE S/N SAN IDELFONSO COLON QUERETARO CP. 76295', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'joseguadalupevelazquezrecendiz@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-08', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 12000, 13767, 2, 71, '56907928290', '014680569079282900', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(611, '240611', 'RODRIGO', '', 'RODRIGO', 'CHAVEZ', 'HURTADO', '1984-07-29', 'M', 'CAHR840729HQTHRD09', '14028427756', 'CAHR840729IL3', 2, 2, '', 'RIO LERMA 4 SAN IDELFONSO, SAN IDELFONSO QUERETARO CP 76244', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'RFXJAGGER@GMAIL.COM', 1, 'SIN ASIGNAR', '', '', '2024-11-08', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 12000, 13676, 2, 71, '56907976456', '014680569079764567', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(612, '240612', 'JUAN', 'CARLOS', 'JUAN', 'GAMIÑO', 'MONTES', '2002-06-24', 'M', 'GAMJ020624HDFMNNA9', '18200250688', 'GAMJ020624MS6', 4, 0, '', 'C RIO DE LOS TRUENOS 3 SAN IDELFONSO COLON QUERETARO CP 76295', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'woengamino@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-08', '0000-00-00', 7, 53, 39, 118, 337, 1, 1, 77, '0000-00-00', 2, 0, 0, 2, 71, '56907954864', '014680569079548644', 6, 2, '0000-00-00', '2025-03-11', 0, 708),
(613, '240613', 'GERARDO', '', 'GERARDO', 'LEON', 'GONZALEZ', '1984-10-03', 'M', 'LEGG841003HQTNNR09', '14038407947', 'LEGG8410033G5', 4, 2, '', 'CONSTITUCION DE 1977 S/N LA PENUELA COLON QUERETARO CP 76288', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gleongonzalez0@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-11', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 71, '56873132107', '014680568731321074', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(614, '240614', 'SALVADOR', '', 'SALVADOR', 'PEREZ', 'JUAREZ', '1983-01-06', 'M', 'PEJS830106HQTRRL09', '14008362379', 'PEJS830106Q41', 2, 3, '', 'LOS PINOS S/N EL PARAISO EL BAJO EL MARQUES QUERETARO CP 76246', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'perezchava.46@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-11', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 12000, 13676, 2, 71, '56885351191', '014180568853511916', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(615, '240615', 'EMIR', 'EMILIANO', 'EMIR', 'TORRES', 'ARAUJO', '2024-10-30', 'M', 'TOAE041030HQTRRMA8', '3230432423', 'TOAE041030PC4', 4, 1, '', 'CONOCIDO S/N SAN IDELFONSO COLON QUERETARO CP 76295', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'araujoemi295@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-11', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 123, '0000-00-00', 1, 0, 0, 2, 71, '56908148703', '014680569081487036', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(616, '240616', 'HUGO', 'RENE', 'HUGO', 'CORTES', 'PORRAS', '1988-04-03', 'M', 'COPH880403HJCRRG00', '03904068874', 'COPH880403KB0', 2, 0, '', 'GERANIO 171 COL: BUGANBILIAS C.P 47474,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Woengamino@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-12', '0000-00-00', 3, 12, 25, 20, 39, 1, 1, 29, '0000-00-00', 2, 0, 0, 2, 71, '56908042734', '014362569080427344', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(617, '240617', 'ANDREA', '', 'ANDREA', 'ESPINOSA', 'DANEL', '1988-03-09', 'F', 'EIDA880903MDFSNN09', '19148850985', 'EIDA8809031S9', 4, 0, '', 'ANILLO PERIFERICO 428 INT 1908, LOS PINOS RENTALS, COL. SAN PEDRO DE LOS PINOS CP 01180 ALVARO OBREGON CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'gleongonzalez0@gmail.com', 1, 'andrea.espinosa@ldrsolutions.com.mx', '', '3318656054', '2024-11-19', '0000-00-00', 3, 4, 11, 8, 416, 1, 1, 40, '0000-00-00', 2, 0, 0, 1, 20, '0266107008', '072691002661070089', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(618, '240618', 'RODOLFO', 'ELIAS', 'RODOLFO', 'PARADA', 'GARCIA', '1996-05-02', 'M', 'PAGR960502HMCRRD06', '66149698426', 'PAGR960502T30', 4, 0, '', 'CERRADA ALCANOFRES MZ. 14 LT. 32C FRACC. RINCONADA SAN FELIPE, COACALCO, EDO DE MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'perezchava.46@gmail.com', 1, 'rodolfo.parada@ldrsolutions.com.mx', '', '', '2024-11-19', '0000-00-00', 10, 62, 28, 127, 351, 1, 1, 141, '0000-00-00', 2, 0, 0, 1, 26, '1511831086', '012180015118310860', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(619, '240619', 'MARIA', 'FERNANDA', 'MARIA', 'MORA', 'VARGAS', '1996-09-16', 'F', 'MOVF960916MMCRRR07', '16149618429', 'MOVF960916QG6', 4, 0, '', 'GUERRERO 15 COL:LA ADELITA C.P 47410,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'araujoemi295@gmail.com', 1, 'maria.mora@ldrsolutions.com.mx', '', '', '2024-11-15', '0000-00-00', 3, 12, 25, 29, 76, 1, 1, 20, '0000-00-00', 2, 0, 0, 1, 71, '56908114289', '014362569081142893', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(620, '240620', 'LUIS', 'AXEL', 'LUIS', 'AGUILAR', 'AREVALO', '1992-12-20', 'M', 'AUAL921220HMCGRS01', '10169279519', 'AUAL921220U20', 4, 0, '', 'MAR DE JAVA 42 LOMAS LINDAS ATIZAPAN DE ZARAGOZA, C.P. 52947, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'hugocortes3488@gmail.com', 1, 'luis.aguilar@ldrsolutions.com.mx', '', '3328322666', '2024-11-19', '0000-00-00', 3, 4, 11, 5, 417, 1, 1, 21, '0000-00-00', 2, 0, 0, 1, 71, '26016824755', '014180260168247558', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(621, '240621', 'SOFIA', '', 'SOFIA', 'ZAMUDIO', 'MOLINA', '1991-08-09', 'F', 'ZAMS9110809MQTMLF0', '14089103635', 'ZAMS9110809BS', 4, 0, '', 'CORREGIDORA 610 PROL SN VICENTE FERRER Y MIGUEL HIDALGO SAN VICENTE FERRER CP 76251', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'sofiazamudio09@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-14', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 12000, 13676, 2, 71, '56753988600', '014680567539886000', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(622, '240622', 'MARCOS', 'MANUEL', 'MARCOS', 'ZAMUDIO', 'MOLINA', '1987-06-18', 'M', 'ZAMM870618HQTMLR06', '14068733600', 'ZAMM870618GI7', 4, 0, '', 'CORREGIDORA 610 PROL SN VICENTE FERRER Y MIGUEL HIDALGO SAN VICENTE FERRER CP 76251', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'marcozamudiomolina@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-14', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 71, ' 56908374048', '014680569083740483', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(623, '240623', 'BEATRIZ', '', 'BEATRIZ', 'LIRA', 'GRANADOS', '1979-03-01', 'F', 'LIGB790301MQTRRT01', '14987909810', 'LIGB790301NB0', 4, 0, '', 'CIPRESES S/N COMINIDAD EL PARAISO, EL MARQUES QUERETARO CP 76248', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'Lcafernanda.mora@gmail.com', 1, 'SIN ASIGNAR', '', '', '2025-05-19', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 123, '0000-00-00', 1, 12000, 0, 2, 26, '1538884997', '012680015388849975', 7, 1, '0000-00-00', '2025-06-06', 0, 209),
(624, '240624', 'PEDRO', 'DAMIAN', 'PEDRO', 'LIRA', 'GRANADOS', '2002-03-02', 'M', 'LIGP020302HQTRRDA7', '26190269436', 'LIGP0203022A8', 4, 0, '', 'SONORA 32 SAN LUIS POTOSI CALAMANDA QUERETARO CP 76247', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'damianlira125@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-15', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 26, '1592553093', '012680015925530935', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(625, '240625', 'JOSE', 'ANTONIO', 'JOSE', 'PEREZ', 'GONZALEZ', '1978-06-20', 'M', 'PEGA780620HQTRNN04', '14987821676', 'PEGA780620C18', 4, 0, '', 'JACARANDAS S/N EL PARAISO EL MARQUES QUERETARO CP. 76248', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'perezgonzalezjoseantonio39@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-16', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 124, '0000-00-00', 1, 0, 0, 2, 26, '1578428347', '012680015784283347', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(626, '240626', 'JULIO', 'CESAR', 'JULIO', 'ORTIZ', 'MIRANDA', '2005-12-22', 'M', 'OIMJ051222HJCRRLA4', '44240527190', 'OIMJ051222FT0', 4, 0, '', 'MARTIN DE SANTIAGO 145 COL. CRISTEROS C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'marcozamudiomolina@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-20', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56908839430', '014362569088394301', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(627, '240627', 'LUIS', 'ALEJANDRO', 'LUIS', 'RODRIGUEZ', 'MUÑOZ', '2004-02-25', 'M', 'ROML040225HGTDXSA9', '08220474715', 'ROML040225T66', 4, 0, '', 'PERLA MABE 7 FRACC LA PERLA C.P. 47472 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'beatrizlira7006@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-21', '0000-00-00', 6, 40, 24, 85, 217, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56908470182', '014362569084701820', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(628, '240628', 'NANCY', 'VANESSA', 'NANCY', 'GAMIÑO', 'MONTES', '1991-07-31', 'F', 'GAMN910731MDFMNN02', '14109136979', 'GAMN910731V34', 4, 3, '', 'RIO LAS PALMAS 12, RIO COLORADO RIO LERMA SAN IDELFONSO COLON QRO CP 76244', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'damianlira125@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-11-22', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 83, '0000-00-00', 1, 0, 0, 2, 17, '10280476086', '137680102804760863', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(629, '240629', 'GERALDINE', '', 'GERALDINE', 'ANGULO', 'SOSA', '1997-05-14', 'F', 'AUSG970514MDFNSR09', '27179714160', 'AUSG970514687', 4, 0, '', 'CTO. HDA. DEL PENON MNZ. 32 LT.17-A, RINCONADA DEL VALLE, TEMOAYA, 50885, ESTADO DE MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'perezgonzalezjoseantonio39@gmail.com', 1, 'geraldine.angulo@ldrsolutions.com.mx', '', '3321836094', '2024-11-25', '0000-00-00', 3, 4, 11, 5, 366, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 71, '56 861199148', '014438568611991488', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(630, '240630', 'SALVADOR', '', 'SALVADOR', 'PORRAS', 'PEREZ', '1958-01-28', 'M', 'POPS580128HDFRRL07', '01785874312', 'POPS5801284YA', 2, 2, '', 'CONDOMINIO NAOS 17 REAL SOLARE QUERETARO CP 76240', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'salvador_porras@outlook.es', 1, 'SIN ASIGNAR', '', '', '2025-05-28', '0000-00-00', 7, 53, 39, 118, 335, 1, 1, 108, '0000-00-00', 1, 0, 0, 2, 20, '1190312285', '072930011903122855', 7, 1, '0000-00-00', '2025-06-04', 0, 732);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(632, '240631', 'ALBERTO', 'ANGEL', 'ALBERTO', 'MARTINEZ', 'GARCIA', '1977-11-12', 'M', 'MAGA771112HDFRRL06', '68937725346', 'MAGA771112', 2, 3, '', 'CALLE TONANTZIN S/N, MANZANA 5, LOTE  23, COLONIA ARENAL 1RA SECCION,  ALCALDIA VENUSTIANO CARRANZA, C.P.  15600, CDMX, MEXICO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'alejandrorodriguez11330@gmail.com', 1, 'alberto.martinez@ldrsolutions.com.mx', '', '', '2024-12-02', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 0, 0, 1, 26, '1508050582', '012180015080505826', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(633, '240632', 'FERMIN', '', 'FERMIN', 'ALONSO', 'RIVERA', '2002-09-01', 'M', 'AORF020901HDFLVRA4', '26160298522', 'AORF020901UJ7', 2, 1, '', 'CALLE MIXTECA 50, COL. TLACUITLAPA, DEL.  ALVARO OBREGON, C.P. 01650, CDMX, MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'nancyvannessagamino@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-12-02', '0000-00-00', 6, 46, 13, 110, 321, 1, 1, 134, '0000-00-00', 2, 0, 0, 2, 71, '60629328196', '014180606293281962', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(634, '240633', 'ARTURO', '', 'ARTURO', 'AGUILAR', 'LEON', '1972-11-20', 'M', 'AULA721120HDFGNR07', '37917214274', 'AULA721120HU8', 2, 3, '', 'CO NO. 48 COL. BENITO JUAREZ, IZTACALCO, C.P. 08930 CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'geral.sosa.14.97@hotmail.com', 1, 'arturo.aguilar@jetourmx.com', '', '', '2024-12-02', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 0, 0, 1, 26, '1515585028', '012180015155850286', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(635, '240634', 'FRANCISCO', 'JAVIER', 'FRANCISCO', 'FRIAS', 'JIMENEZ', '1987-11-12', 'M', 'FIJF871112HMCRMR07', '92078746192', 'FIJF871123C0', 4, 0, '', 'NOGAL 115 , VALLE DE LOS PINOS 1ER SECCION, TLALNEPANTLA DE BAZ, EDO. MEX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'salvador_porras@outlook.es', 1, 'francisco.frias@ldrsolutions.com.mx', '', '', '2024-12-09', '0000-00-00', 6, 36, 13, 77, 177, 1, 1, 10, '0000-00-00', 2, 0, 0, 1, 26, '1512684904', '012180015126849048', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(636, '240635', 'GUSTAVO', '', 'GUSTAVO', 'ZAMORA', 'RAMIREZ', '2001-06-04', 'M', 'ZARG010604HDFMMSA7', '10130179129', 'ZARG010604F64', 4, 0, '', 'PADRE HIDALGO 144, OLIVAR DEL  CONDE 1RA SECC, C.P. 01400 CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'gustavo.zamora@ldrsolutions.com.mx', '', '', '2024-12-09', '0000-00-00', 6, 46, 13, 104, 296, 1, 1, 109, '0000-00-00', 1, 0, 0, 1, 14, '90518516646', '002180905185166468', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(637, '240636', 'LAURENCIO', '', 'LAURENCIO', 'GONZALEZ', 'CASTILLO', '1988-10-16', 'M', 'GOCL881016HJCNSR02', '04088874641', 'GOCL881016PX9', 2, 1, '', 'PRIVADA RIO 13 COL: BRISAS DE CHAPALA C.P 45590,GUADALAJARA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-12-09', '0000-00-00', 3, 12, 25, 22, 45, 1, 1, 8, '0000-00-00', 2, 0, 0, 2, 71, '56909973746', '014320569099737465', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(638, '240637', 'EMMANUEL', '', 'EMMANUEL', 'OLMEDA', 'MARTINEZ', '2002-01-04', 'M', 'OEME010104HGTLRMA6', '05220299175', 'OEME020104V62', 4, 1, '', 'PADRE MIGUEL GOMEZ LOSA 180 C.P 47472,LAGOS DE MORTENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-12-10', '0000-00-00', 6, 40, 24, 85, 217, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56910174254', '014362569101742542', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(639, '240638', 'KEYLA', 'EDITH', 'KEYLA', 'CASTRO', 'LOPEZ', '2000-03-16', 'F', 'CALK000316MVZSPYA1', '01130054396', 'CALK000316498', 4, 0, '', 'SAN JOSE 17, EL ROSARIO, QUERETARO, CP76970', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'keyla.castro@ldrsolutions.com.mx', '', '', '2024-12-11', '0000-00-00', 6, 41, 26, 97, 391, 1, 1, 12, '0000-00-00', 2, 0, 0, 1, 26, '1592089502		', '012180015920895023', 6, 2, '0000-00-00', '2025-05-29', 0, 708),
(642, '240639', 'ALAN', 'EDUARDO', 'EDUARDO', 'RIVERA', 'RODRIGUEZ', '1995-06-02', 'M', 'RIRA950602HNLVDL09', '25149586742', 'RIRA950602HJ1', 4, 0, '', 'SAN RAFAEL 111, COLINAS DE SAN MIGUEL,  APODACA, N.L., C.P. 66648', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'eduardo.rivera@ldrsolutions.com.mx', '', '', '2025-01-06', '0000-00-00', 6, 46, 27, 106, 301, 1, 1, 39, '0000-00-00', 2, 0, 0, 1, 48, '6579338869', '021580065793388696', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(643, '240640', 'CARLOS', '', 'CARLOS', 'REYES', 'MEDINA', '1985-06-23', 'M', 'REMC850623HJCYDR04', '0', 'REMC850623917', 4, 0, '', 'TIERRA BLANCA 206A POZA RICA Y MATA REDONDA, SAN PEDRITO TLAQUEPAQUE, JALISCO CP 45625', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'carlos.reyes@ldrenta.com.mx', '', '', '2024-12-17', '0000-00-00', 7, 53, 38, 118, 335, 1, 1, 108, '0000-00-00', 2, 0, 0, 1, 71, '56883965533', '014320568839655339', 3, 1, '0000-00-00', '2025-06-06', 0, 202),
(646, '240641', 'JAVIER', '', 'JAVIER', 'JIMENEZ', 'SALGADO', '2001-06-26', 'M', 'JISJ010626HGRMLVA4', '09130139950', 'JISJ0106267G8', 4, 0, '', 'CALLE TIZAPAN 245, COLONIA METROPOLITANA 3RA SECCION, C.P. 57750, NEZAHUALCOYOT, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'javier.jimenez@ldrsolutions.com.mx', '', '', '2024-12-23', '0000-00-00', 6, 46, 13, 105, 299, 1, 1, 105, '0000-00-00', 1, 7300, 7610, 1, 26, '1583848911', '012180015838489110', 5, 2, '0000-00-00', '0000-00-00', 0, 485),
(647, '240642', 'JUAN', 'ANTONIO', 'JUAN', 'HIPOLITO', 'ROBLEDO', '1983-12-01', 'M', 'HIRJ831201HJCPBN07', '04008271332', 'HIRJ831201614', 2, 2, '', '27 DE OCTUBRE 219, COL: BARRIO BAJO C.P 47440,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-12-20', '0000-00-00', 3, 12, 25, 24, 55, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 26, '1511560155', '012362015115601552', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(648, '240643', 'MARISOL', '', 'MARISOL', 'DE LUCAS', 'AGUIRRE', '1999-06-01', 'F', 'LUAM990601MMCCGR07', '02239987361', 'LUAM990601MMC', 4, 0, '', 'PRIVADA DEL TRABAJO, 144, GUADALUPE, C.P. 50010, TOLUCA, MEXICO. ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'marisol.delucas@ldrsolutions.com.mx', '', '', '2024-12-23', '0000-00-00', 10, 62, 28, 127, 362, 1, 1, 110, '0000-00-00', 2, 16000, 18875, 1, 26, '1501408181', '012180015014081811', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(650, '240644', 'ARNULFO', '', 'ARNULFO', 'GOMEZ', 'GARCIA', '2005-07-01', 'M', 'GOGA050701HGRMRRA8', '38190591669', 'GOGA050701K3A', 4, 0, '', 'DOROTEO OCHOA 25 B COL. ALVAREZ DEL CASTILLO C.P. 47473 LAGOS DE MERENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2024-12-23', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56911024253', '014362569110242538', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(651, '240645', 'JOSE', 'LUIS', 'JOSELUIS', 'LOPEZ', 'JOAQUIN', '1995-07-10', 'M', 'LOJL950710HMCPQS03', '90109516881', 'LOJL950710499', 4, 0, '', 'MIGUEL ANGEL DE QUEVEDO 7, COL. LA UNIVERSAL, NAUCALPAN DE JUAREZ, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'joseluis.lopez@ldrsolutions.com.mx', '', '', '2024-12-23', '0000-00-00', 10, 62, 28, 127, 354, 1, 1, 43, '0000-00-00', 2, 0, 0, 1, 26, '1584577994', '012180015845779949', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(652, '240646', 'MARIO', 'ARMANDO', 'MARIO', 'NORIEGA', 'ROJAS', '1993-07-18', 'M', 'NORM930718HJCRJR08', '04129308294', 'NORM930718FI5', 4, 3, '', 'PRIVADA PERLA 59 COL: LA PERLA C.P 47472 LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'noriegamario546@gmail.com', 1, 'SIN ASIGNAR', '', '', '2024-12-27', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56911204835', '014362569112048358', 6, 2, '0000-00-00', '0000-00-00', 0, 0),
(653, '250647', 'AARON', '', 'AARON', 'PILAR', 'CALTZONSI', '1989-07-01', 'M', 'PICA890701HQTLLR01', '14068944348', 'PICA8907019Z3', 4, 0, '', 'AV. YUNKES 205 LOS HEROES, EL MARQUES, QRO CP 76150', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-02', '0000-00-00', 6, 41, 26, 91, 260, 1, 1, 123, '0000-00-00', 1, 0, 0, 2, 71, '56911363775', '014000569113637758', 4, 1, '0000-00-00', '2025-05-29', 0, 202),
(654, '250648', 'JOSE', 'ANTONIO', 'ANTONIO', 'RODRIGUEZ', 'LOPEZ', '1979-08-18', 'M', 'ROLA790818HDFDPN05', '92987969778', 'ROLA790818P56', 4, 0, '', 'HACIENDA SAN CRISTOBAL NO. 83  COLONIA VILLAS XALTIPA, CUAUTITLAN  MEXICO, ESTADO DE MEXICO, CP. 54850', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'antonio.rodriguez@ldrsolutions.com.mx', '', '', '2025-01-06', '0000-00-00', 3, 8, 11, 14, 24, 1, 1, 57, '0000-00-00', 2, 0, 0, 1, 20, '1281205502', '072180012812055024', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(655, '250649', 'BRYAN', '', 'BRYAN', 'REYNA', 'MARTINEZ', '2002-12-05', 'M', 'REMB021205HJCYRRA4', '27160202944', 'REMB021205BM7', 4, 0, '', 'ETNA 1364 COL: INDECO C.P 47473 ,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-03', '0000-00-00', 3, 12, 25, 31, 80, 1, 1, 5, '0000-00-00', 2, 0, 0, 2, 71, '56911345634', '014362569113456347', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(656, '250650', 'FELIX', 'GABRIEL', 'FELIX', 'GARCIA', 'GUERRA', '1997-05-09', 'M', 'GAGF970509HGTRRL05', '03189771102', 'GAGF970509LZ9', 4, 0, '', 'MARMOL BLANCO DE PAROS 10 COL: JACALES C.P 47472,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-03', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 32, '0000-00-00', 2, 0, 0, 2, 71, '56911305170', '014362569113051706', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(657, '250651', 'ANTONIO', '', 'ANTONIO', 'BARRERA', 'ALCANTARA', '1968-02-14', 'M', 'BAAA680214HMCRLN01', '18876810567', 'BAAA680214T60', 2, 4, '', 'CALLE 16 DE SEPTIMBRE 28, GUADALUPE YANCUICTLALPAN, MPIO TIANGUISTENCO, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'antonio.barrera@ldrsolutions.com.mx', '', '3312182077', '2025-01-06', '0000-00-00', 6, 35, 13, 15, 29, 1, 1, 16, '0000-00-00', 2, 0, 0, 1, 20, '1300869953', '072453013008699535', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(658, '250652', 'EVA', 'ELIZABETH', 'EVA', 'LEON', 'MORALES', '1973-03-31', 'F', 'LEME730331MDFNRV03', '30917351527', 'LEME7303315L8', 2, 3, '', '2DA CERRADA MTE DE LAS CRUCES 12 C X, LA PILA, C.P. 05750, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-06', '0000-00-00', 6, 46, 13, 110, 321, 1, 1, 134, '0000-00-00', 2, 0, 0, 2, 26, '1137765746', '012180011377657465', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(659, '250653', 'SERGIO', 'EFRAIN', 'SERGIO', 'MESA', 'CILIBERTI', '1972-11-26', 'M', 'MECS721126HNESLR04', '07107200110', 'MESE721126PG6', 2, 0, '', 'CALLE OYAMELES 149 FO LOS ROBLES, LERMA DE VILLADA, EDO MEX. CP. 52005', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'sergio.mesa@ldrsolutions.com.mx', '', '3316049435', '2025-01-07', '0000-00-00', 3, 4, 11, 8, 19, 1, 1, 21, '0000-00-00', 2, 0, 0, 1, 26, '2998497214', '012180029984972143', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(660, '250654', 'CRISTOPHER', '', 'CRISTOPHER', 'HERMOSILLO', 'RONDAN', '2005-09-26', 'M', 'HERC050926HJCRNHA6', '08200517129', 'HERC0509263E8', 4, 0, '', 'PADRE RODRIGO GONZALEZ 160 COL: CRISTEROS, C.P 47472,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-08', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56911680588', '014362569116805885', 5, 2, '0000-00-00', '0000-00-00', 0, 338),
(661, '250655', 'MIGUEL', 'GUADALUPE', 'MIGUEL', 'ESPINOSA', 'MARQUEZ', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'JACARANDA 51 COL: LOMAS DEL VALLE C.P 47460,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-15', '0000-00-00', 6, 39, 24, 80, 196, 1, 1, 6, '0000-00-00', 2, 0, 0, 2, 71, '56896706460', '014362568967064601', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(662, '250656', 'MIGUEL', 'ANGEL', 'MIGUEL', 'SANTOS', 'LAZARO', '1994-01-29', 'M', 'SIN ASIGNAR', '00000000', 'SIN ASIGNAR', 1, 0, '', '1RA. CDA. DE AHUEHUETES LT4 MZ32  COLONIA JESUS DEL MONTE CP 05260  CIUDAD DE MEXICO CUAJIMALPA DE ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'miikesantos1794@gmail.com', 1, 'miguel.santos@ldrsolutions.com.mx', '', '', '2025-01-20', '0000-00-00', 6, 39, 13, 81, 206, 1, 1, 119, '0000-00-00', 2, 0, 0, 1, 26, '9260028290', '012180029600282900', 3, 1, '0000-00-00', '2025-06-26', 0, 636),
(663, '250657', 'MARCO', 'ANTONIO', 'MARCO', 'COSTILLA', 'PRADO', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'CURA PLUTARCO CONTRERAS 347COL: CRISTEROS C.P 47472,LAGOS DE MORENO ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-15', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56912246982', '014362569122469820', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(664, '250658', 'JOSE', 'DE JESUS', 'JOSE', 'CLAUDIO', 'JIMENEZ', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 4, '', 'PADRE RODRIGO GONZALEZ  256,COL: CRISTEROS C.P 47476,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-15', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56910321554 ', '014362569103215543', 5, 2, '0000-00-00', '0000-00-00', 0, 338),
(665, '250659', 'ERIK', '', 'ERIK', 'LOPEZ', 'BOTELLO', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 2, '', 'VALLADOLID  40 INTERIOR 502-A COLONIA ROMA C.P. 06700 ALCALDIA CUAUHTEMOC  CIUDAD DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'erlobot@outlook.com', 1, 'erik.lopez@ldrsolutions.com.mx', '', '3311978652', '2025-01-20', '0000-00-00', 6, 41, 13, 89, 246, 1, 1, 62, '0000-00-00', 2, 0, 0, 1, 26, '1575862892', '012180015758628925', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(666, '250660', 'FRANCISCO', 'RUFINO', 'FRANCISCO', 'BENAVIDES', 'MONTIEL', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'JILGUERO 665 COL: ROMITA C.P 45598,GUADALAJARA JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-16', '0000-00-00', 3, 12, 25, 23, 53, 1, 1, 97, '0000-00-00', 2, 0, 0, 2, 71, '25016757909', '014320250167579097', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(667, '250661', 'EDUARDO', 'ALBERTO', 'EDUARDO', 'MARTINEZ', 'LUNA', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 0, '', 'CONDOMINIO NUESTRA SENORA DEL CARMEN 28 COL:  LAURELES DEL CAMPANARIO C.P47530,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-17', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56912155236', '014362569121552369', 6, 2, '0000-00-00', '0000-00-00', 0, 338),
(668, '250662', 'JOSE', 'DE JESUS', 'JOSE', 'HERNANDEZ', 'VALLEJO', '0000-00-00', 'SIN ASIGNA', 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 3, '', 'NUESTRA SENORA DE GUADALUPE 29 COL:TEPEYAC C.P 47410 ,LAGOS DE MORENO JAL ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-20', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56909150002', '014362569091500027', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(669, '250663', 'RENE', '', 'RENE', 'DIAZ', 'SANCHEZ', '1991-04-04', 'M', 'DISR910404HDFZNN09', '30119107685', 'DISR910404MJ4', 4, 0, '', 'ANDADOR RUBI D-2, NUMERO 4, UNIDAD MOLINO DE SANTO DOMINGO, ALVARO OBREGON, C.P. 01130, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'rene.diaz@ldrsolutions.com.mx', '', '3316027669', '2025-01-20', '0000-00-00', 3, 8, 11, 14, 24, 1, 1, 57, '0000-00-00', 2, 0, 0, 1, 48, '6457665747', '021180064576657479', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(670, '250664', 'JOSE', 'LUIS', 'JOSE', 'DE LA ROSA', 'ALCARAZ', '1970-05-12', 'M', 'ROAL700512HJCSLS08', '54897070014', 'ROAL7005121C9', 2, 4, '', 'DALIA 265 COL:BUGAMBILIAS C.P 47474,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-21', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56898647551', '014362568986475514', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(671, '250665', 'KAREN', 'CITLALLI', 'KAREN', 'BAIZ', 'GRIMALDO', '2003-10-25', 'F', 'BAGK031025MJCZRRA3', '04090300254', 'BAGK031025CI9', 4, 0, '', 'LAS ROSAS 229 COL: TEPEYAC C.P 47410,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-21', '0000-00-00', 3, 12, 25, 30, 78, 1, 1, 111, '0000-00-00', 1, 0, 0, 2, 71, '56912464455', '014362569124644559', 5, 2, '0000-00-00', '0000-00-00', 0, 338),
(672, '250666', 'DAVID', '', 'DAVID', 'CAMARILLO', 'ALANIS', '1988-07-31', 'M', 'CAAD880731HDFMLV00', '01068807021', 'CAAD880731U91', 4, 0, '', 'CALLE JUSTO SIERRA MZ 116, LT 5, COLONIA ZONA ESOLAR ORIENTE, GUSTAVO A MADERO, C.P 07239, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'david.camarillo@ldrsolutions.com.mx', '', '', '2025-01-27', '0000-00-00', 10, 62, 28, 127, 359, 1, 1, 98, '0000-00-00', 2, 0, 0, 1, 26, '2794856015', '012180027948560153', 4, 1, '0000-00-00', '2025-05-07', 0, 208),
(673, '250667', 'FRANCISCO', 'JAVIER', 'FRANCISCO', 'ESPINO', 'NUÑEZ', '1995-04-03', 'M', 'EINF9504036M3', '38169568854', 'EINF9504036M3', 2, 1, '', '5 DE MAYO 666 COL: CENTRO C.P 47400,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-23', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56912910842', '014362569129108427', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(674, '250668', 'ISSAC', 'ISRAEL', 'ISSAC', 'SILVA', 'ESPARZA', '1999-09-25', 'M', 'SIEI990925HJCLSS02', '57169900073', 'SIEI9909259E2', 2, 0, '', 'PRIVADA ALONSO 35 COL:CANADA DE RICOS C.P 47450,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-23', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '60632985093', '014362606329850933', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(676, '250669', 'DAVID', '', 'DAVID', 'BERNAL', 'BERNAL', '1982-05-14', 'M', 'BEBD820514HMCRRV04', '96078204615', 'BEBD820514IF7', 2, 2, '', 'CALLE CRUZ VERDAD 128, AMECAMECA CENTRO, C.P. 56900, ESTADO DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'david.bernal@ldrsolutions.com.mx', '', '', '2025-01-27', '0000-00-00', 6, 39, 13, 83, 216, 1, 1, 107, '0000-00-00', 2, 0, 0, 1, 71, '56818356747', '014010568183567470', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(677, '250670', 'ISAAC', 'EMMANUEL', 'ISAAC', 'PEREZ', 'ORTIZ', '2010-10-17', 'M', 'PEOI041017HJCRRSA7', '23160408946', 'PEOI041017VA6', 4, 0, '', 'AVENIDA DIVISION DEL NORTE 364 COL: SAN MIIGUEL I,LAGOS DE MORENO JAL ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-23', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56912760685', '014362569127606853', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(678, '250671', 'SAMUEL', 'ANTONIO', 'SAMUEL', 'MARTINEZ', 'MONTELONGO', '1997-01-25', 'M', 'MAMS970125HJCRNM13', '05159737864', 'MAMS9701258J4', 2, 2, '', 'ETNA 1131 COL:INDECO C.P 47473,LAGOS DE MORENO JAL ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-24', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56913091656', '014362569130916569', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(679, '250672', 'JOSE', 'ANGEL', 'ANGEL', 'GONZALEZ', 'QUIJADA', '2004-06-08', 'M', 'GOQA040608HJCNJNA4', '09210448586', 'GOQA040608BR6', 4, 0, '', 'SANTA MARGARITA 13330 COL: PARQUES DEL PALMAR C.P 45615, TLAQUEPAQUE JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'angel.gonzalez@ldrsolutions.com.mx', '', '', '2025-01-28', '0000-00-00', 3, 12, 25, 23, 54, 1, 1, 70, '0000-00-00', 2, 0, 0, 2, 71, '56913382245', '014320569133822456', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(680, '250673', 'RODOLFO', '', 'RODOLFO', 'RANGEL', 'CALVILLO', '1976-07-01', 'M', 'RACR760701HJCNLD03', '12947602145', 'RACR760701QU3', 2, 2, '', 'PADRE TRANQUILINO 204 COL: CRISTEROS C.P 47472,LAGOS DE MORENO JAL ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-28', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56913211768', '014362569132117683', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(681, '250674', 'ISRRAEL', '', 'ISRRAEL', 'CALTENCO', 'ESPAÑA', '1995-06-02', 'M', 'CAEI850602HPLLSS07', '96068504388', 'CAEI850602AL9', 2, 0, '', ' CTO V ZACANGO 26B, M23 L18, COFRADIA IVC.P.54715 CUAUTITLAN IZCALLI,MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'isrrael.caltenco@ldrsolutions.com.mx', '', '3328333418', '2025-02-04', '0000-00-00', 6, 41, 13, 94, 275, 1, 1, 2, '0000-00-00', 2, 0, 0, 1, 26, '1595785305', '012180015957853054', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(682, '250675', 'LUIS', 'RAUL', 'LUIS', 'BLANCO', 'CORONADO', '2000-12-19', 'M', 'BACL001219HNLLRSA3', '17190092563', 'BACL001219PJ0', 4, 0, '', 'JUAN PEREZ DE LOS RIOS 120, FUNDADORES, APODACA N.L., C.P.66613', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-01-31', '0000-00-00', 6, 41, 27, 86, 228, 1, 1, 66, '0000-00-00', 2, 0, 0, 2, 71, '56913702288', '014580569137022885', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(689, '250676', 'RICARDO', 'IVAN', 'RICARDO', 'GONZALEZ', 'MORENO', '2000-12-07', 'M', 'GOMR001207HMCNRCA3', '03150043077', 'GOMR001207', 2, 1, '', 'CLL 3 DE MAYO, MZ 12 LT 19, SANTA CRUZ, CHIMALHUACAN, EDO. MEX. CP. 56356', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-04', '0000-00-00', 6, 46, 13, 110, 322, 1, 1, 112, '0000-00-00', 2, 0, 0, 2, 14, '7137821', '002180905071378218', 3, 1, '0000-00-00', '2025-06-16', 0, 209),
(690, '250677', 'JOSE', 'MANUEL', 'MANUEL', 'GARCIA', 'DIAZ', '1989-03-17', 'M', 'GADM890317HDFRZN09', '39108907468', 'GADM8903174K8', 2, 2, '', 'CALLE CONKAL 902 LT 9 PEDREGAL DE SAN NICOLAS 3A SECCION ALCALDIA TLAPAN CP 14100', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'tracmm@outlook.com', 1, 'manuel.garcia@ldrsolutions.com.mx', '', '', '2025-02-10', '0000-00-00', 6, 41, 13, 86, 222, 1, 1, 90, '0000-00-00', 2, 0, 0, 1, 1, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(691, '250678', 'SANTIAGO', 'ALONSO', 'SANTIAGO', 'TRINIDAD', 'SANTES', '1996-01-14', 'M', 'TISS960114HQTRNN08', '63149670372', 'TISS960114HY4', 4, 1, '', 'AV 28 NO.1101 LOMAS DE CASA BLANCA, QRO CP 76120', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-10', '0000-00-00', 7, 53, 39, 118, 337, 1, 1, 113, '0000-00-00', 2, 0, 0, 2, 26, '1551612104', '039012680015516121', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(692, '250679', 'DANIEL', 'ISAI', 'DANIEL', 'JIMENEZ', 'LOPEZ', '1999-01-24', 'M', 'JILD990124HASMPN08', '20139998320', 'JILD990124976', 2, 2, '', 'CHABACANO 106 A COL: CUESTA BLANCA C.P 47420,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-12', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 71, '56914555583', '014362569145555834', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(693, '250680', 'DANIEL', '', 'DANIEL', 'VELAZQUEZ', 'VELASCO', '2001-05-10', 'M', 'VEVD010510HJCLLNA2', '03220127256', 'VEVD010510JN9', 4, 0, '', 'ANDADOR JOSE DE JESUS TORRES 25 COL: CAPUCHINAS C.P 47430 ,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-12', '0000-00-00', 3, 12, 25, 24, 56, 1, 1, 7, '0000-00-00', 2, 0, 0, 2, 20, '1287217815', '072362012872178154', 5, 2, '0000-00-00', '0000-00-00', 0, 0),
(694, '250681', 'JAVIER', '', 'JAVIER', 'ROJAS', 'PEREZ', '1967-11-23', 'M', 'ROPJ671123HDFJRV05', '63846703815', 'ROPJ6711238X9', 2, 0, '', 'CERRADA JACARANDAS MZ 15, LT37 3, SAN CLEMENTE NORTE, C.P. 01740, CDMX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-17', '0000-00-00', 6, 48, 13, 109, 315, 1, 1, 15, '0000-00-00', 2, 0, 0, 1, 20, '0', '0', 6, 2, '0000-00-00', '0000-00-00', 0, 708),
(695, '250682', 'VICTOR', 'ALBERTO', 'VICTOR', 'REYES', 'ZERMEÑO', '2000-12-23', 'M', 'REZV001223HJCYRCA7', '1019009807', 'REZV001223FJ3', 2, 2, '', 'PADRE TRINIDAD RANGEL  188 COL: CRISTEROS C.P 47470,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-18', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56914979542', '014362569149795425', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(696, '250683', 'ANGEL', 'SAMUEL', 'ANGEL', 'HERNANDEZ', 'PEREZ', '2006-08-20', 'M', 'HEPA060820HJCRRNA2', '13160691716', 'HEPA060820MF2', 4, 0, '', 'PADRE RODRIGO GONZALEZ 265 COL: CRISTEROS C.P 47472 ,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-21', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56904924809', '014362569049248098', 4, 1, '0000-00-00', '2025-03-11', 0, 114),
(697, '250684', 'MARYLILYAN', '', 'MARYLILYAN', 'GUZMAN', 'HERRERA', '1997-05-19', 'F', 'GUHM970519MBCZRR09', '16159712559', 'GUHM970519GN9', 4, 0, '', 'CALLE LOS PINOS 246 COLONIA  CAPULTITLAN C.P. 50260 TOLUCA,  EDO. MEX.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'marylilyan.guzman@ldrsolutions.com.mx', '', '', '2025-02-24', '0000-00-00', 6, 35, 13, 74, 155, 1, 1, 52, '0000-00-00', 2, 0, 0, 1, 20, '1116228135', '072580011162281356', 4, 1, '0000-00-00', '2025-03-10', 0, 146),
(698, '250685', 'URIEL', '', 'URIEL', 'CABELLO', 'SOSA', '2002-01-11', 'M', 'CASU020111HPLBSRA0', '02200289029', 'CASU020111CFA', 4, 0, '', 'CALLE EMILIANO ZAPATA 138 A, MORELOS, C.P. 74020, SAN MARTIN TEMELUCAN DE LA BASTIDA, PUEBLA', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'uriel.cabello@ldrsolutions.com.mx', '', '', '2025-02-24', '0000-00-00', 6, 39, 13, 116, 333, 1, 1, 79, '0000-00-00', 1, 0, 0, 1, 26, '1524023597', '012830015240235972', 4, 1, '0000-00-00', '2025-03-10', 0, 146),
(699, '250686', 'OSCAR', '', 'OSCAR', 'DE LA CRUZ', 'GONZALEZ', '1984-05-01', 'M', 'CUGO840501HMCRNS07', '82028405106', 'CUGO840501AY7', 2, 0, '', 'BEGONIA 189,VALLE DEL ROBLE CADEREYTA JIMENEZ, NUEVO LEON.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-21', '0000-00-00', 6, 41, 27, 86, 232, 1, 1, 66, '0000-00-00', 2, 0, 0, 2, 10, '42840176876515', '127580001768765000', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(700, '250687', 'JOSE', 'CARLOS', 'CARLOS', 'MARURE', 'CENA', '1996-02-09', 'M', 'MACC960209HDFRNR02', '27159636086', 'MACC960209E62', 4, 0, '', 'CERRADA JAZMIN, MZ 12 LT 12, COLONIA PUERTA GRANDE, C.P. 01630, ALVARO OBREGON, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'carlos.marure@ldrsolutions.com.mx', '', '', '2025-02-24', '0000-00-00', 4, 23, 12, 54, 110, 1, 1, 99, '0000-00-00', 2, 0, 0, 1, 26, '1414437675', '012180014144376756', 4, 1, '0000-00-00', '2025-03-10', 0, 146),
(701, '250688', 'AKETZALI', '', 'AKETZALI', 'ROSAS', 'ALVAREZ', '1995-11-20', 'F', 'ROAA951120MHGSLK07', '13139529815', 'ROAA951120KW0', 4, 0, '', '5A CERRADA BENITO JUAREZ S/N PROGRESO DE OBREGON, C.P, 42730, CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'aketzali.rosas@ldrsolutions.com.mx', '', '', '2025-02-24', '0000-00-00', 6, 46, 13, 106, 306, 1, 1, 39, '0000-00-00', 2, 0, 0, 1, 26, '1438015511', '012301014380155112', 4, 1, '0000-00-00', '2025-03-10', 0, 146),
(703, '250689', 'BERENICE', 'BETSABE', 'BERENICE', 'SANCHEZ', 'GARCIA', '1988-06-09', 'F', 'SAGB880609MMCNRR01', '16058801982', 'SAGB8806095F9', 4, 0, '', '5TA PRIVADA DE REFORMA, NO. 2, COLONIA CAPULTITLAN, C.P. 50260, TOLUCA, EDO. DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'berenice.sanchez@ldrsolutions.com.mx', '', '3317455075', '2025-03-03', '0000-00-00', 6, 35, 13, 74, 162, 1, 1, 16, '0000-00-00', 2, 0, 0, 1, 71, '56680287472', '014420566802874722', 4, 1, '0000-00-00', '2025-03-14', 0, 146),
(704, '250690', 'GUSTAVO', '', 'GUSTAVO', 'TORRES', 'MARTINEZ', '1974-02-24', 'M', 'TOMG740224HJCRRS05', '54947422728', 'TOMG740224RC9', 2, 0, '', 'GIRASOL 76 COL: BUGAMBILIAS C.P 47474 ,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-26', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56914845453', '014362569148454534', 4, 1, '0000-00-00', '2025-03-10', 0, 114),
(705, '250691', 'ALBERTO', '', 'ALBERTO', 'GONZALEZ', 'ESPINOZA', '1981-08-17', 'M', 'GOEA810817HDFNSL06', '96998008849', 'GOEA8108176Q6', 4, 4, '', 'AGUSTINOS 67 COL: FRACCIONAMIENTO MISION SAN JUAN C.P 47410,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-27', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 30, '0000-00-00', 2, 0, 0, 2, 71, '56915678682', '014362569156786825', 5, 1, '0000-00-00', '0000-00-00', 0, 0),
(706, '250692', 'ERIK', 'MARTIN', 'ERIK', 'TORRES', 'HERNANDEZ', '1993-11-29', 'M', 'TOHE931129HJCRRR07', '03149378204', 'TOHE931129MA9', 4, 2, '', 'ANA CLETO GONZALEZ FLORES 108 COL:CRISTEROS C.P: 47472 ,LAGOS DE MORENO JAL', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-27', '0000-00-00', 3, 12, 25, 27, 72, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56915308868', '014362569153088681', 4, 1, '0000-00-00', '2025-04-25', 0, 114),
(707, '250693', 'MARTIN', 'DE JESUS', 'MARTIN', 'PIÑA', 'ZAMARRIPA', '1988-09-09', 'M', 'PIZM880909HGTXMR04', '12058844833', 'PIZM8809094Z5', 4, 5, '', 'SAN CRISTOBAL 208 COL. VILLAS SANTA SOFIA C.P. 47472, LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-02-27', '0000-00-00', 3, 21, 25, 51, 104, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 26, '1567402968', '012222015674029689', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(708, '250694', 'LAURA', 'MERCEDES', 'LAURA', 'POBLETE', 'CORDOVA', '1981-09-24', 'F', 'POCL810924MDFBRR02', '30998118746', 'POCL810924J88', 4, 2, '', 'PASO FLORENTINO NO. 36 SANTA FE LA MEXICANA 01260 ALVARO OBREGON CDMX', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'lpoca24@outlook.com', 1, 'laura.poblete@ldrsolutions.com.mx', '', '', '2025-03-03', '0000-00-00', 6, 46, 13, 105, 298, 1, 1, 39, '0000-00-00', 2, 0, 0, 1, 71, '60589525970', '014180605895259704', 4, 1, '0000-00-00', '2025-06-06', 0, 202),
(709, '250695', 'JOSE', 'ALBERTO', 'ALBERTO', 'NAVARRETE', 'REYES', '1991-02-01', 'M', 'NARA910201HDFVYL08', '96109190387', 'NARA910201NRA', 4, 0, '', 'CALLE CUATRO MILPAS, 317, COLONIA BENITO JUAREZ, NEZAHUALCOYOLT, C.P. 57000, EDO. DE MEXICO', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'alberto.navarrete@ldrsolutions.com.mx', '', '', '2025-03-03', '0000-00-00', 10, 60, 28, 125, 344, 1, 1, 141, '0000-00-00', 2, 0, 0, 1, 26, '1545143248', '012180015451432489', 4, 1, '0000-00-00', '2025-06-16', 0, 209),
(710, '250696', 'MARCO', 'ANTONIO', 'MARCO', 'ALFARO', 'MORENO', '1989-07-16', 'M', 'AAMM890716HJCLRR06', '75078962521', 'AAMM890716H36', 4, 3, '', 'PERLA BLISTER 29 COL: LA PERLA C.P 47472,LAGOS DE MORENO JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-03-03', '0000-00-00', 3, 21, 25, 51, 104, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56656155166', '014362566561551664', 3, 1, '0000-00-00', '0000-00-00', 0, 0),
(711, '250697', 'GUILLERMO', '', 'GUILLERMO', 'MONDRAGON', 'SOLTERO', '1971-08-11', 'M', 'MOSG710811HJCNLL04', '56897150068', 'MOSG710811BM6', 2, 1, '', 'NICOLAS REGULES  589. COL: MODERNA C.P 44190 GUADALAJARA JALISCO.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'memo_mondragon@hotmail.com', 1, 'SIN ASIGNAR', '', '', '2025-03-03', '0000-00-00', 3, 21, 25, 43, 95, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 71, '56915776169', '039014320569157761', 4, 1, '0000-00-00', '2025-04-11', 0, 114),
(712, '250698', 'FELIX', '', 'FELIX', 'DE LA CRUZ', 'RAMOS', '1981-11-20', 'M', 'CURF811120HTCRML07', '32008137674', 'CURF811120KUA', 2, 4, '', '16 DE SEPTIEMBRE 68, DIAZ ORDAZ, C.P. 96387, AGUA DULCE, VERACRUZ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'felix.delacruz@ldrenta.com', '', '', '2025-03-04', '0000-00-00', 7, 54, 38, 119, 338, 1, 1, 108, '0000-00-00', 2, 0, 0, 1, 17, '10438797659', '137843104387976595', 4, 1, '0000-00-00', '2025-06-20', 0, 208),
(713, '250699', 'JUAN', 'CARLOS', 'JUAN', 'GARCIA', 'OLMOS', '2003-11-04', 'M', 'GAOJ031104HJCRLNA5', '66180354376', 'GAOJ031104DE0', 4, 0, '', 'VIOLETA 32 COL. BUGAMBILIAS C.P. 47474 LAGOS DE MORENO, JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-03-04', '0000-00-00', 3, 21, 25, 51, 104, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56916125871', '014362569161258717', 4, 1, '0000-00-00', '2025-03-07', 0, 114),
(714, '250700', 'JUAN', 'PABLO', 'JUAN', 'CORTES', 'GUERRA', '1998-12-31', 'M', 'COGJ981231HJCRRN03', '08189852216', 'COGJ981231SG9', 2, 0, '', 'JOSE BECERRA 236 COL:ALCALDES C.P 47474,LAGOS DE MORENO JAL ', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'SIN ASIGNAR', '', '', '2025-03-04', '0000-00-00', 3, 21, 25, 51, 104, 1, 1, 0, '0000-00-00', 2, 0, 0, 2, 71, '56916152749', '014362569161527493', 4, 1, '0000-00-00', '2025-03-11', 0, 114),
(715, '250701', 'VICTOR', 'ARNOLDO', 'VICTOR', 'SALGADO', 'GARCIA', '1992-03-09', 'M', 'SAGV920309HJCLRC02', '03904119293', 'SAGV920309CAA', 4, 0, '', 'FEDERICO IBARRA 5083 COL: COLLI CTMC C.P 45070,ZAPOPAN JAL.', 1, 'SIN ASIGNAR', 'SIN ASIGNAR', 'SIN ASIGNAR', 1, 'victor.salgado@ldrsolutions.com.mx', '', '', '2025-03-04', '0000-00-00', 3, 21, 25, 44, 96, 1, 1, 0, '0000-00-00', 2, 0, 0, 1, 71, '56903840744', '014320569038407442', 4, 1, '0000-00-00', '2025-04-10', 0, 114),
(717, '250702', 'JOCELYN', 'ALEJANDRA', 'ALEJANDRA', 'BARRON', 'VARGAS', '1997-11-24', 'F', 'BAVJ971124MMCRRC09', '30149700335', 'BAVJ971124JT2', 4, 0, '552806665', 'AVENIDA PUERTO MEXICO 317 PROV, COLONIA ZENTLAPATL, DELEGACION CUAJIMALPA, C.P. 05010-CR -05501, CIUDAD DE MEXICO', 7, '', '', 'alealiju@gmail.com', 0, 'alejandra.barron@ldrsolutions.com.mx', '', '', '2025-03-10', '0000-00-00', 6, 46, 13, 102, 293, 0, 1, 114, '0000-00-00', 2, 14000, 16234, 1, 10, '87011321704583', '127180013217045839', 6, 2, '2025-03-07', '2025-06-24', 208, 202),
(718, '250703', 'JUAN', 'FRANCISCO', 'JUAN', 'VELEZ', 'MORENO', '1990-05-12', 'M', 'VEMJ900512HJCLRN03', '04079031573', 'VEMJ900512GJ6', 4, 1, '', 'HERMENEGILDO GALEANA 2055, COLONIA MIGUEL HIDALGO, ZAPOPAN, C.P. 45186, JALISCO', 7, '', '', 'avengerzurikato@gmail.com', 0, 'SIN ASIGNAR', '', '', '2025-03-10', '0000-00-00', 7, 53, 38, 118, 337, 0, 1, 115, '0000-00-00', 2, 12000, 13675, 2, 20, '1190460805', '072320011904608056', 4, 1, '2025-03-07', '2025-05-07', 208, 208),
(719, '250704', 'BRENDA', 'LUZ', 'LUZ', 'AGUIRRE', 'DURAN', '1996-07-27', 'F', 'AUDB960727MDFGRR03', '2199617073', 'AUDB960727BG5', 4, 0, '5534158344', 'Vizcainas #58 A, La concordia, Lomas Verdes 5A sección. CP 53126', 3, '', '', 'brendaguirred@gmail.com', 0, 'luz.aguirre@ldrsolutions.com.mx', '', '3331982538', '2025-03-10', '0000-00-00', 6, 37, 13, 78, 365, 0, 1, 22, '2025-03-10', 2, 26000, 30000, 1, 26, '1523796640', '012180015237966409', 4, 1, '2025-03-10', '2025-05-07', 146, 208),
(720, '250705', 'ROSA', 'ELIA', 'ROSA', 'ORTIZ', 'RAMOS', '1985-02-11', 'F', 'OIRR850211MJCRMS02', '04018560831', 'OIRR850211690', 5, 2, '33 2927 32', 'Avenida Cerro de la Turbina #458 Col: Chulavistac C.P 45653,Chulavista Jal.', 7, '', '', 'flakisortiz.286@gmail.com', 0, 'SIN ASIGNAR', '', '', '2025-03-10', '0000-00-00', 2, 39, 16, 80, 196, 0, 1, 6, '0000-00-00', 2, 10285, 10285, 2, 71, '56916787462', '014320569167874629', 5, 2, '2025-03-10', '2025-03-19', 114, 202),
(721, '250706', 'JOSE', 'MARCELINO', 'JOSE', 'DIAZ', 'ALDANA', '1981-06-02', 'M', 'DIAM810602HJCZLR02', '03178165621', 'DIAM810602CEA', 2, 3, '4741263670', 'Privada Júarez #19 Col: Cañada de Ricos C.P47450,Lagos de Moreno Jal', 7, '', '', 'josemarcelinod526@gmail.com', 0, 'jose.diaz@ldrsolutions.com.mx', '', '3313335870', '2025-03-13', '0000-00-00', 3, 12, 25, 21, 43, 0, 1, 37, '0000-00-00', 2, 10428, 10428, 2, 26, '0477923856', '012362004779238563', 4, 1, '2025-03-13', '2025-03-24', 114, 338),
(722, '250707', 'ALAN', 'YAIR', 'YAIR', 'FLORES', 'LOPEZ', '1993-09-01', 'M', 'FOLA930901HMSLPL00', '15159300068', 'FOLA930901RQ6', 4, 0, '7341288934', 'COLINA, MZ49 LT23 1RET ARRECIFE, AMPLIACION LAS AGUILAS CP.01759, ALVARO OBREGON, CDMX', 7, '', '', 'alanyair_13@hotmail.com', 0, 'yair.flores@ldrsolutions.com.mx', '', '', '2025-03-18', '0000-00-00', 6, 35, 13, 74, 155, 0, 1, 52, '0000-00-00', 2, 12300, 25873, 1, 26, '1522695289', '012544015226952895', 4, 1, '2025-03-14', '2025-05-07', 208, 208),
(723, '250708', 'CESAR ', 'OMAR ', 'CESAR ', 'VILLAFUERTE ', 'AVILA', '2003-12-22', 'M', 'VIAC031222HGTLVSA9', '27220397247', 'VIAC031222C41', 4, 0, '4741012329', 'Granada #24 Col:Huertos Familiares de San Pedro C.P 47472,Lagos de Moreno Jal', 7, '', '', 'cvillafuerteavila@gmail.com', 0, 'SIN ASIGNAR', '', '', '2025-03-19', '0000-00-00', 3, 12, 25, 24, 364, 0, 1, 7, '0000-00-00', 5, 3000, 3000, 2, 48, '6605548029', '021362066055480297', 4, 1, '2025-03-19', '2025-03-24', 114, 338),
(724, '250709', 'JOSE', 'RAUL ', 'JOSE', 'TORRES', 'GUERRA', '2003-08-08', 'M', 'TOGR030908HJCRRLA3', '35170333153', 'TOGR0309089TA', 4, 0, '474 279 77', 'Valle de Hidalgo #151 Col: Vista Hermosa C.P 47532 Lagos de Moreno Jal', 7, '', '', 'joseraultorresguerra51@gmail.com', 0, 'SIN ASIGNAR', '', '', '2025-03-19', '0000-00-00', 3, 12, 25, 24, 364, 0, 1, 7, '0000-00-00', 5, 3000, 3000, 2, 26, '1537058224', '012180015370582245', 4, 1, '2025-03-19', '2025-03-24', 114, 338),
(725, '250710', 'VICTOR', 'MANUEL', 'MANUEL', 'HERNANDEZ', 'CARMONA', '1978-09-05', 'M', 'HECV780905HDFRRC03', '45947827460', 'HECV780905B2A', 2, 0, '5535012999', 'CJN LA GLORIA 648, ESQ VENUNTIANO CARRANZA, CAPULHUAC, C.P. 52700, EDO DE MEXICO', 7, '', '', 'vmhernandez1978@gmail.com', 0, 'manuel.hernandez@ldrsolutions.com.mx', '', '', '2025-03-24', '0000-00-00', 3, 41, 11, 39, 89, 0, 1, 90, '0000-00-00', 2, 17000, 20195, 1, 20, '1312043886', '072180013120438866', 6, 2, '2025-03-21', '2025-05-07', 208, 485),
(726, '250711', 'NOE', 'ISAAC', 'NOE', 'CAPULA', 'HERNANDEZ', '1980-10-25', 'M', 'CAHN801025HDFPRX15', '37998000550', 'CAHN801025SQ3', 5, 1, '5526976986', 'Cerrada de Encinos No. 8 Col. Lomas de la Era', 7, '', '', 'noeisaaccapula@gmail.com', 0, 'noe.capula@sin asignar', '', '3318656043', '2025-03-24', '0000-00-00', 1, 1, 6, 1, 1, 0, 1, 15, '2025-03-24', 2, 15000, 18000, 1, 48, '6455813505', '021180064558135058', 5, 1, '2025-03-21', '2025-05-07', 146, 708),
(727, '250712', 'JOSE', 'ANTONIO ', 'JOSE', 'ROMERO ', 'MILLAN', '1968-11-21', 'M', 'ROMA681121HJCMLN05', '04906816360', 'ROMA681121GV2', 6, 3, '33 1021 34', 'Concepción Jurado #2811 Col. Echeverría; C.P 44970 Guadalajara, Jal.', 3, '', '', 'jromeromillan0@gmail.com', 0, 'sin asignar', '', '', '2025-03-25', '0000-00-00', 6, 39, 13, 80, 196, 0, 1, 6, '0000-00-00', 2, 11142, 11142, 2, 26, '1557923511', '012320015579235111', 5, 1, '2025-03-25', '2025-04-14', 114, 338),
(728, '250713', 'GUADALUPE', 'CESAR', 'CESAR', 'SANTAMARIA', 'MARQUEZ', '1988-09-09', 'M', 'SAMG880909HMCNRD02', '11078815435', 'SAMG880909A5', 2, 2, '561391235', 'C AGUSTIN LARA MZ 92 LT 3 COL.  COMPOSITORES MEXICANOS CP. 07130 ALCALDIA GUSTAVO A. ', 7, '', '', 'elguada88.gm@gmail.com', 0, 'cesar.santamaria@ldrsolutions.com.mx', '', '', '2025-04-01', '0000-00-00', 3, 41, 11, 39, 367, 0, 1, 2, '0000-00-00', 2, 17000, 21513, 1, 14, '98247035198', '002180904438139334', 4, 1, '2025-03-29', '2025-05-07', 208, 208),
(729, '250714', 'JESUS FERNANDO', 'RENE', 'JESUS FERNANDO', 'BAJO', 'VEGA', '1999-05-18', 'M', 'BAVJ990518HSLJGS04', '17169929357', 'BAVJ990518QC3', 2, 1, '668163503', 'Valle Cañaveral. Calle. Zacarias Ochoa 2547 Los Mochis Sinaloa', 1, '', '', 'fernandorenebajo@gmail.com', 0, 'fernando.bajo@ldrsolutions.com.mx', '', '', '2025-04-01', '0000-00-00', 3, 41, 11, 39, 367, 0, 1, 2, '0000-00-00', 2, 1700, 21513, 1, 20, '0000', '0000', 4, 1, '2025-03-29', '2025-05-07', 208, 208),
(730, '250715', 'ERICK', 'EDGAR', 'ERICK', 'SOTO', 'CARREÑO', '1979-01-20', 'M', 'SOCE790120HDFTRR02', '39977958915', 'SOCE790120P50', 2, 2, '5566711938', 'CALLE A RUIZ CORTINEZ, LT 8, MZ 104, COLONIA ZONA ESCOLAR, GUSTAVO A MADERO, C.P. 07230, CDMX. ', 2, '', '', 'eerickk906@gmail.com', 0, 'erick.soto@ldrsolutions.com.mx', '', '', '2025-04-01', '0000-00-00', 3, 41, 11, 39, 368, 0, 1, 2, '0000-00-00', 2, 25000, 30756, 1, 10, '01851309622332', '127180013096223322', 6, 2, '2025-03-31', '2025-03-31', 208, 208),
(731, '250716', 'ISRAEL', '', 'ISRAEL', 'LOPEZ', 'PADILLA', '1971-07-03', 'M', 'LOPI710703HDFPDS00', '37877104671', 'LOPI710703DI4', 2, 1, '5535550967', 'AV.AQUILES SERDAN 768 EDIFICIO GRANATE 203 COL SANTO DOMINGO C.P.02160 AZCAPOTZALCO', 1, '', '', 'ILOPEZ_71@YAHOO.COM.MX', 0, 'israel.lopez@ldrsolutions.com.mx', '', '', '2025-04-01', '0000-00-00', 6, 48, 13, 53, 418, 0, 1, 56, '2025-04-01', 2, 100, 100, 1, 71, '56757878553', '014180567578785536', 3, 1, '2025-04-03', '2025-06-09', 146, 209),
(732, '250717', 'JOSE', 'EDUARDO', 'EDUARDO', 'CHAVEZ', 'CALDERON', '1988-07-13', 'M', 'CACE880713HQTHLD09', '14078813749', 'CACE8807137C4', 5, 0, '4461173906', 'ZARAGOZA OTE 1 B, DPTO 302, CENTRO, C.P. 76000, QUERETARO, QRO.', 7, '', '', 'laet.eduardo.chavez@gmail.com', 0, 'eduardo.chavez@ldrsolutions.com.mx', '', '', '2025-04-07', '0000-00-00', 6, 46, 26, 106, 301, 0, 1, 39, '0000-00-00', 2, 17000, 20195, 1, 20, '1177987554', '072680011779875547', 3, 1, '2025-04-04', '2025-04-04', 208, 208),
(733, '250718', 'IVAN', '', 'IVAN', 'VILLA', 'GARCIA', '1997-09-09', 'M', 'VIGI970909HDFLRV05', '39099700021', 'VIGI970909IFA', 2, 1, '558708219', 'AVENIDA FERROCARRIL DE CUERNAVACA, NUMERO 1, COLONIA SAN NICOLAS TOTOLAPAN, ALCALDIA MAGDALENA CONTRERAS, C.P. 10900, CDMX.', 7, '', '', 'ivan_villag97@outlook.com', 0, 'ivan.villa@ldrsolutions.com.mx', '', '', '2025-04-07', '0000-00-00', 6, 39, 13, 116, 333, 0, 1, 79, '0000-00-00', 1, 24426, 30000, 1, 26, '1555723909', '012180015557239094', 6, 2, '2025-04-05', '2025-05-07', 208, 485),
(734, '250719', 'DANIEL', 'ISRRAEL', 'DANIEL', 'MENA', 'EZQUEDA', '1998-12-03', 'M', 'MEED981203HJCNZG08', '16139847988', 'MEED981203LD9', 4, 0, '474 140 39', 'Calle San Isidro #20 Fraccionamiento San Antonio  C.P 47440 Lagos de Moreno Jal.', 1, '', '', 'jjdim98@gmail.com', 0, 'sin asignar', '', '', '2025-04-07', '0000-00-00', 3, 12, 25, 24, 59, 0, 1, 7, '0000-00-00', 2, 9815, 9815, 2, 26, '1592781023', '012362015927810230', 5, 2, '2025-04-07', '2025-04-22', 114, 208),
(735, '250720', 'JUAN', 'MANUEL', 'JUAN', 'CORREA', 'CONTRERAS', '2000-10-07', 'M', 'COCJ001007HDFRNNA9', '04190077331', 'COCJ001007DQ7', 5, 2, '56455267', 'APANTLI, MZ 435, INT 9, BARRIO PLATEROS, CHIMALHUACAN', 7, '', '', 'juanitocorrea56@gmail.com', 0, 'sin asignar', '', '', '2025-04-07', '0000-00-00', 10, 62, 28, 127, 369, 0, 1, 43, '2025-04-06', 2, 11500, 13043, 1, 26, '1540104399', '012180015401043996', 3, 1, '2025-04-07', '2025-04-15', 717, 717),
(736, '250721', 'LLUNELI', '', 'LLUNELI', 'ALCANTAR ', 'MORALES', '1994-05-24', 'M', 'AAML940524MJCLRL03', '63169481510', 'AAML940524BC7', 2, 1, '474 135 56', 'Acacia #232 Col: Villa Esmeralda C.P 47472,Lagos de Moreno Jal', 7, '', '', 'lluneli.alcanatar.m@gmail.com', 0, 'lluneli.alcantar@ldrsolutions.com.mx', '', '3310474680', '2025-04-08', '0000-00-00', 3, 39, 25, 116, 331, 0, 1, 79, '0000-00-00', 2, 13000, 13000, 1, 26, '1513733165', '012225015137331659', 4, 1, '2025-04-08', '2025-06-09', 114, 202),
(737, '250722', 'MIGUEL', 'ANGEL', 'MIGUEL', 'ARELLANO ', 'GARCÍA', '1989-07-19', 'M', 'AEGM890719HBCRRG04', '75078995745', 'AEGM890719U68', 4, 1, '33 2954 84', 'Francico Villa #37 Col: Condominio  ArandanoC.P 45685 Guadalajara  Jal.', 1, '', '', 'miguelerzack42@gmail.com', 0, 'sin asignar', '', '', '2025-04-08', '0000-00-00', 3, 12, 40, 23, 53, 0, 1, 97, '0000-00-00', 2, 9837, 9837, 2, 26, '1516274130', '012320015162741300', 4, 1, '2025-04-08', '2025-04-15', 114, 114),
(738, '250723', 'JOSE', 'JOAQUIN ', 'JOSE', 'AZUELA', 'DE JESUS', '2005-02-09', 'M', 'AUJJ050223HJCZSQA2', '58200598553', 'AUJJ05022325A', 5, 0, '474 126 75', 'Nuestro Señor del Calvario #17 Col: Laureles del Campanario C.P 47530,Lagos de Moreno Jal', 7, '', '', 'azuelajuaquin04@gmail.com', 0, 'sin asignar', '', '', '2025-04-09', '0000-00-00', 6, 40, 24, 85, 217, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1535935753', '012180015359357530', 5, 2, '2025-04-09', '2025-04-16', 114, 338),
(739, '250724', 'CHRISTIAN ', 'JAVIER ', 'CHRISTIAN ', 'LOPEZ', 'REYES', '1992-09-17', 'M', 'LORC920917HJCPYH03', '04139267415', 'LORC920917D83', 5, 1, '474 207 48', 'Calle las Flores #205 Col: Cañada de Ricos C.P 47450,Lagos de Moreno Jal', 7, '', '', 'crisdjcalle@hotmail.com', 0, 'sin asignar', '', '', '2025-04-09', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1541515461', '012180015415154619', 4, 1, '2025-04-09', '2025-04-22', 114, 114),
(740, '250725', 'ISAIAS', '', 'ISAIAS', 'VEGA', 'TORRES', '2003-12-05', 'M', 'VETI031205HJCGRSA8', '31160311234', 'VETI0312052A5', 4, 1, '474 149 47', 'Padre José Trinidad Rangel #252 Col: Cristeros C.P47472,Lagos de Moreno Jal ', 7, '', '', 'mg6906840@gmail.com', 0, 'isaias.vega@ldrsolutions.com.mx', '', '', '2025-04-09', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 71, '56918744973', '014362569187449733', 4, 1, '2025-04-09', '2025-04-16', 114, 114),
(741, '250726', 'ERIK', 'JOSUE', 'ERIK', 'CALVILLO ', 'SOTO', '1993-06-26', 'M', 'CASE930626HJCLTR05', '64169306103', 'CASE930626NL2', 4, 0, '474 100 18', 'Platon # 9 Col: Residencial Santa Elenena C.P 47487, Lagos de Moreno Jal', 1, '', '', 'erik.josue.calvillo.soto@gmail.com', 0, 'erik.calvillo @ldrsolutions.com.mx', '', '', '2025-04-14', '0000-00-00', 3, 12, 25, 21, 41, 0, 1, 37, '0000-00-00', 2, 12500, 12500, 1, 26, '1501454816', '012396015014548164', 4, 1, '2025-04-14', '2025-04-14', 114, 114),
(742, '250727', 'ALEJANDRA', '', 'ALEJANDRA', 'RAMOS', 'LIVERA', '1995-02-06', 'F', 'RALA950206MDFMVL05', '16109507877', 'RALA950206BPA', 4, 0, '7226826714', 'PRIVADA HACIENDA DE LA CONDESA, MZ 11, NUMERO 7, FRACCIONAMIENTO RINCONADFA DEL VALLE, C.P. 50885, TEMOAYA, MEXICO', 5, '', '', 'ale.ramos.ale@gmail.com', 0, 'alejandra.ramos@ldrsolutions.com.mx', '', '', '2025-04-14', '0000-00-00', 10, 62, 28, 127, 370, 0, 1, 43, '0000-00-00', 2, 25000, 30759, 1, 71, '56780130270', '014420567801302702', 4, 1, '2025-04-14', '2025-06-20', 208, 208),
(743, '250728', 'MARIAN', '', 'MARIAN', 'MARTINEZ', 'GOMEZ', '1990-05-22', 'F', 'MAGM900522MDFRMR00', '96099031575', 'MAGM900522691', 4, 0, '5585495548', 'INDUSTRIA 11, COL. NEXTENGO,  AZCAPOTZALCO, C.P. 02070, CDMX', 7, '', '', 'marianmartinezgomez@gmail.com', 0, 'marian.martinez@ldrsolutions.com.mx', '', '', '2025-04-16', '0000-00-00', 6, 46, 13, 103, 294, 0, 1, 39, '0000-00-00', 2, 18000, 21515, 1, 71, '60590470123', '014180605904701237', 4, 1, '2025-04-16', '2025-06-25', 208, 202),
(744, '250729', 'ABRAHAM', '', 'ABRAHAM', 'CERON', 'BALTAZAR', '1981-03-12', 'M', 'CEBA810312HMCRLB05', '16008107274', 'CEBA8103123L8', 2, 1, '5510094817', 'Calle Seris 49, Col. CTM Culhuacan Seccion 1, Coyoacan, CDMX, CP 04440', 1, '', '', 'bca8103@gmail.com', 0, 'abraham.ceron@ldrsolutions.com.mx', '', '3318504577', '2025-05-05', '0000-00-00', 6, 41, 13, 90, 246, 0, 1, 62, '2025-05-05', 2, 40000, 51318, 1, 26, '2987160984', '012180029871609846', 4, 1, '2025-04-23', '2025-06-20', 717, 202),
(745, '250730', 'JUSTINE', 'KIMBERLEY', 'JUSTINE', 'SHAUNA', 'SOUDE', '1998-02-09', 'F', 'SOXJ980209MNEDXS02', '02259844625', 'SOJU980209K89', 2, 0, '5547834073', 'BENITO JUAREZ 23, JESUS DEL MONTE, 52764 HUIXQUILUCAN, ESTADO DE MEXICO', 1, '', '', 'justine.soude09@gmail.com', 0, 'justine.soude@ldrsolutions.com.mx', '', '3311976660', '2025-04-28', '0000-00-00', 6, 33, 13, 72, 148, 0, 1, 15, '2025-04-23', 2, 26000, 32105, 1, 14, '128496020', '002180702064098258', 4, 1, '2025-04-23', '2025-05-07', 717, 208),
(746, '250731', 'BENITO', '', 'BENITO', 'VILLA', 'VELAZQUEZ', '1981-03-21', 'M', 'VIVB810321HDFLLN09', '68978127469', 'VIVB810321AY3', 5, 2, '5548477802', 'FORTUNATO ZUAZUA 61 COL. SAN JUAN TLIHUACA CP 02400 AZCAPOTZALCO, CDMX', 7, '', '', 'balzanii@hotmail.com', 0, 'benito.villa@ldrsolutions.com.mx', '', '', '2025-04-28', '0000-00-00', 10, 62, 28, 127, 396, 0, 1, 117, '2025-04-25', 2, 20000, 24200, 1, 10, '43491360318856', '127180013603188562', 4, 1, '2025-04-26', '2025-06-03', 717, 209),
(747, '250732', 'CARLOS ', 'PAUL', 'CARLOS ', 'RAMIREZ ', 'CORNEJO ', '2025-04-28', 'M', 'RACC821119HJCMRR05', '04998295390', 'RACC821119SI0', 2, 1, '33 3033 63', 'Rio Uruguay #72 Col:Valle de los Sabinos C.P 45876,Guadalaja Jal', 1, '', '', 'wiwynpaul@hotmail.com', 0, 'sin asignar', '', '', '2025-04-28', '0000-00-00', 3, 12, 25, 23, 53, 0, 1, 97, '0000-00-00', 2, 9837, 9837, 2, 14, '5084506', '002346905250845063', 4, 1, '2025-04-28', '2025-05-08', 114, 114);
INSERT INTO `colaboradores` (`id_colaborador`, `numero_colaborador`, `nombre_1`, `nombre_2`, `nombre_fav`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `genero`, `curp`, `nss`, `rfc`, `id_tipo_estado_civil`, `numero_hijos`, `telefono_personal`, `domicilio`, `id_tipo_sangre`, `operaciones_previas`, `enfermedades_cronicas`, `email_personal`, `id_contacto`, `email_corporativo`, `email_corporativo_2`, `telefono_corporativo`, `fecha_ingreso`, `fecha_salida`, `id_empresa`, `id_direccion`, `id_sede`, `id_area`, `id_puesto`, `id_turno_trabajo`, `id_kit_bienvenida`, `id_jefe_directo`, `fecha_alta_imss`, `id_tipo_contrato`, `sueldo_neto`, `sueldo_bruto`, `id_tipo_pago`, `id_banco`, `cuenta_bancaria`, `clabe_interbancaria`, `id_estado_colaborador`, `id_estatus_colaborador`, `fecha_guardado`, `fecha_actualizacion`, `id_colaborador_creacion`, `id_colaborador_ultima_actualizacion`) VALUES
(748, '250733', 'CINTHIA ', 'GUADALUPE ', 'CINTHIA ', 'FRANCO', 'MALDONADO ', '1995-02-07', 'F', 'FAMC950207MJCRLN08', '19159590298', 'FAMC950207UDO', 4, 2, '4742078764', 'Los Azulitos #37 Col:La Esmeralda C.P 47472 ,Lagos de Moreno Jal', 7, '', '', 'cinthiafranco166@gmail.com', 0, 'sin asignar', '', '', '2025-04-28', '0000-00-00', 3, 12, 25, 24, 59, 0, 1, 7, '0000-00-00', 2, 9815, 9815, 2, 26, '1509533556', '012362015095335566', 4, 1, '2025-04-28', '2025-04-28', 114, 114),
(749, '250734', 'JESUS', 'URIEL', 'JESUS', 'CRUZ', 'LEON', '2000-10-14', 'M', 'CULJ001014HDFRNSA2', '03150025306', 'CULJ001014NP2', 5, 2, '5581571149', 'CALLE 309 #837 COLONIA NUEVA ATZACOALCO ALCALDIA GUSTAVO A MADERO CIUDAD DE MEXICO ', 7, '', '', 'mcjesus14102000@gmail.com', 0, 'jesus.cruz@ldrsolutions.com.mx', '', '', '2025-05-05', '0000-00-00', 10, 62, 28, 127, 396, 0, 1, 117, '2025-05-05', 2, 17000, 20192, 1, 26, '1534240666', '012180015342406663', 4, 1, '2025-05-02', '2025-06-03', 717, 209),
(750, '250735', 'GERARDO', '', 'GERARDO', 'HERNANDEZ', 'VALDERRAMA', '1991-02-15', 'M', 'HEVG910215HJCRLR09', '04059100810', 'HEVG910215TY1', 5, 4, '4741757939', 'Hidalgo #1 Col: Lomas de Prado C.P 47472, Lagos de Moreno Jal', 7, '', '', 'dyohana373@gmail.com', 0, 'sin asignar', '', '', '2025-05-08', '0000-00-00', 3, 12, 25, 22, 47, 0, 1, 8, '0000-00-00', 2, 8364, 8364, 2, 71, '56902735111', '014362569027351114', 4, 1, '2025-05-08', '2025-05-15', 114, 114),
(751, '250736', 'FABRICIO', '', 'FABRICIO', 'LEYVAS', 'GARCIA', '1970-09-29', 'M', 'LEGF700929HDFYRB06', '45917011319', 'LEGF700929II3', 2, 0, '55853363', 'AVENIDA DE LA NORIA, NUMERO 20, EDIFICIO A-1, INTERIOR 101, PASEOS DEL SUR, C.P. 16010, XOCHIMILCO, CDMX', 8, '', '', 'fabricio.leyvas@gmail.com', 0, 'fabricio.leyvas@ldrsolutions.com.mx', '', '', '2025-05-12', '0000-00-00', 6, 41, 13, 92, 269, 0, 1, 41, '0000-00-00', 2, 45000, 58768, 1, 72, '00103816471', '044180001038164712', 4, 1, '2025-05-09', '2025-05-19', 208, 208),
(752, '250737', 'SALOMON', '', 'SALOMON', 'HERNANDEZ', 'HERNANDEZ', '1992-04-21', 'M', 'HEHS920421HMCRRL15', '08189270096', 'HEHS920421UE0', 4, 0, '7294908732', 'FEDERICO DAVALOS 173, AND MERCADO Y PUENTE DE GUERRA, SAN JUAN TLIHUACA, C.P.02400. AZCAPOTZALCO, CDMX', 8, '', '', 'salomonhdzpri@gmail.com', 0, 'salomon.hernandez@ldrsolutions.com.mx', '', '3318657366', '2025-05-12', '0000-00-00', 3, 4, 11, 5, 373, 0, 1, 118, '0000-00-00', 2, 15000, 17554, 1, 71, '56847412065', '014427568474120656', 4, 1, '2025-05-09', '2025-06-20', 208, 202),
(753, '250738', 'MAHARBA', 'DEL CARMEN', 'MAHARBA', 'RUIZ', 'CELIS', '1990-10-01', 'F', 'RUCM901001MMCZLH03', '90139008867', 'RUCM901001HCA', 4, 0, '9998021301', 'CARRETERA MÉXICO-TOLUCA, 5095, INT D1607, LA ROSITA, EL YAQUI, CUAJIMALPA DE MORELOS, C.P 05320, CIUDAD DE MEXICO', 7, '', '', 'maharbaruizcelis@gmail.com', 0, 'maharba.ruiz@ldrsolutions.com.mx', '', '3331844339', '2025-05-12', '0000-00-00', 6, 41, 13, 90, 375, 0, 1, 1, '0000-00-00', 2, 26000, 32105, 1, 26, '1571661632', '012180015716616322', 4, 1, '2025-05-09', '2025-06-23', 208, 202),
(754, '250739', 'VICTOR', 'EMMANUEL', 'VICTOR', 'LOPEZ', 'MILLAN', '2025-03-29', 'M', 'LOMV010329HVZPLCA2', '01190134708', 'LOMV010329MI0', 4, 0, '7292957197', 'CALLE 16, MANZANA 29, CASA 14, SAN JOSÉ LA PILA, 52149, METEPEC, ESTADO DE MÉXICO SAN JOSE LA PILA METEPEC Mexico C.P. 52149, MEXICO	', 7, '', '', 'victor.lopezMO1@Outlook.com', 0, 'victor.lopez@ldrsolutions.com.mx', '', '', '2025-05-12', '0000-00-00', 6, 38, 13, 79, 374, 0, 1, 91, '2025-05-12', 2, 18000, 21515, 1, 26, '1536117233', '012180015361172334', 4, 1, '2025-05-09', '2025-05-19', 717, 208),
(755, '250740', 'HECTOR', '', 'HECTOR', 'BALTAZAR', 'PEREZ', '1987-09-15', 'M', 'BAPH870915HMCLRC09', '90048729157', 'BAPH870915MT4', 2, 2, '5512341026', 'CALLE FLOR DE NARDO S/N, LA MAGDALENA CHICHICASPA, HUIXQUILUCAN, ESTADO DE MÉXICO. CP.52773		', 7, '', '', 'HECTORBALTTAZAR@GMAIL.COM', 0, 'héctor.baltazar@ldrsolutions.com.mx', '', '', '2025-05-12', '0000-00-00', 3, 4, 11, 5, 373, 0, 1, 118, '2025-05-12', 2, 15000, 17554, 1, 71, '56856870877', '014180568568708771', 6, 2, '2025-05-09', '2025-05-26', 717, 485),
(756, '250741', 'CRISTIAN', 'JAIR', 'CRISTIAN', 'CONTRERAS', 'ALDANA', '2001-11-01', 'M', 'COAC011101HJCNLRA0', '08190119084', 'COAC011101H59', 4, 0, '4747365230', 'Benito Juarez #46 Col:Plan de los Rodríguez C.P 47536, Lagos de Moreno Jal.', 7, '', '', 'cristiancontreras2024sipues@gmail.com', 0, 'sin asignar', '', '', '2025-05-12', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1523668136', '012362015236681367', 5, 1, '2025-05-12', '2025-05-12', 114, 338),
(757, '250742', 'DANTE', 'GUILLERMO', 'DANTE', 'BARBA', 'HERNANDEZ', '1999-09-21', 'M', 'BAHD990921HJCRRN02', '55169984501', 'BAHD9909213S1', 2, 0, '33 3320 03', 'Av. P. de los Alberos Torre 2-A Int #204, Col. La Purísima C.P. 45694,Guadalajara Jal.', 7, '', '', 'dan.barba.hdz@gmail.com', 0, 'sin asignar', '', '', '2025-05-12', '0000-00-00', 3, 12, 40, 23, 53, 0, 1, 97, '0000-00-00', 2, 9837, 9837, 2, 26, '1511818960', '012180015118189606', 4, 1, '2025-05-12', '2025-05-15', 114, 114),
(758, '250743', 'ALAIN', 'ALEJANDRO', 'ALAIN', 'PEDROZA', 'PEREZ', '1993-06-03', 'M', 'PEPA930603HDFDRL03', '2259347983', 'PEPA9306033N0', 5, 1, '5553769513', 'Vista hermosa 20 , Prado Coapa 2a Sección , Tlalpan , Cp. 14357, Ciudad de México .', 1, '', '', 'alainpedroza@live.com.mx', 0, 'alejandro.pedroza@ldrsolutions.com.mx', '', '3338098309', '2025-05-12', '0000-00-00', 6, 32, 13, 71, 142, 0, 1, 15, '2025-05-12', 2, 20000, 20000, 1, 49, '50065438215', '036180500654382157', 3, 1, '2025-05-12', '2025-05-12', 146, 516),
(759, '250744', 'ARNULFO', '', 'ARNULFO', 'MALDONADO', 'GOMEZ', '1997-05-16', 'M', 'MAGA970516HGLMR09', '03179707975', 'MAGA970516SZ8', 2, 1, '56 3840 97', 'Padre Esqueda #291 Col: Cristeros C.P 47472,Lagos de Moreno Jal', 1, '', '', 'divanhernandez02@gmail.com', 0, 'sin asignar', '', '', '2025-05-15', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1510861200', '012180015108612002', 4, 1, '2025-05-15', '2025-05-15', 114, 114),
(760, '250745', 'FELIPE', 'ALFONSO', 'FELIPE', 'GOMEZ', 'RIVERA', '1986-02-03', 'M', 'GORF860203HMCMVL02', '42078604420', 'GORF8602035G9', 4, 0, '5516513766', 'C.ZAPOPAN MZ 340 LT 35 COL IXTAPALAPA C.P.09690 CIUDAD DE MEXICO', 7, '', '', 'alfgom849@gmail.com', 0, 'felipe.gomez@ldrsolutions.com.mx', '', '', '2025-05-26', '0000-00-00', 6, 41, 13, 90, 376, 0, 1, 31, '2025-05-26', 2, 25000, 30759, 1, 26, '56635823525', '014180566358235252', 4, 1, '2025-05-15', '2025-06-18', 717, 208),
(761, '250746', 'CLAUDIO', '', 'CLAUDIO', 'ROBLES', 'RODRIGUEZ', '1990-11-29', 'M', 'RORC901129HDFBDL06', '16109055745', 'RORC901129LC1', 2, 2, '7221579782', 'PRESA DE COBANO 39, COL. COMISIÓN FEDERAL DE ELECTRICIDAD, C.P 50150, TOLUCA, MÉXICO', 7, '', '', 'robles.claudio@outlook.com', 0, 'claudio.robles@ldrsolutions.com.mx', '', '3322563216', '2025-05-26', '0000-00-00', 6, 39, 13, 81, 377, 0, 1, 11, '0000-00-00', 2, 50000, 66221, 1, 26, '1131132368', '012441011311323698', 4, 1, '2025-05-16', '2025-06-19', 208, 202),
(762, '250747', 'ALEJANDRO', '', 'ALEJANDRO', 'HERNANDEZ', 'CAMPOS', '1971-03-09', 'M', 'HECA710309HDFRML01', '45947126798', 'HECA710309894', 4, 1, '5563196663', 'C. MORELOS 106-1, BO SAN MIGUEL SAN MATEO ATENTO, C.P. 52104, ESTADO DE MEXICO, TOLUCA', 1, '', '', 'alejandro.hdez.campos@gmail.com', 0, 'alejandro.hernandez@ldrsolutions.com.mx', '', '3322551962', '2025-05-19', '0000-00-00', 6, 39, 13, 116, 378, 0, 1, 79, '0000-00-00', 1, 30000, 37539, 1, 26, '1536166485', '012420015361664858', 4, 1, '2025-05-19', '2025-06-18', 208, 208),
(763, '250748', 'ADRIANA', '', 'ADRIANA', 'PARDIÑAS', 'GUERRERO', '2000-07-05', 'F', 'PAGA000705MMCRRDA1', '08210033745', 'PAGA000705L26', 4, 0, '7221228118', 'VOLCAN 3 VIRGENES 3C, COLINAS DEL SOL, ALMOLOYA DE JUAREZ', 7, '', '', 'adrianapardinasguerrero@gmail.com', 0, 'adriana.pardinas@ldrsolutions.com.mx', '', '3331424233', '2025-05-26', '0000-00-00', 6, 39, 13, 81, 202, 0, 1, 137, '2025-05-26', 2, 18000, 21516, 1, 26, '1574436827', '012180105744368273', 4, 1, '2025-05-19', '2025-06-26', 717, 209),
(764, '250749', 'OCTAVIO', '', 'OCTAVIO', 'MENDIOLA', 'VARGAS', '1992-06-03', 'M', 'MEVO920603HDFNRC04', '94119260381', 'MEVO920603GX3', 4, 0, '5633000775', 'MASSACHUSET NUM 56. LAS VEGAS XALOSTOC ECATEPEC ESTADO DE MEXICO', 7, '', '', 'OCTAMENDIOLA@GMAIL.CO', 0, 'octavio. mendiola@ldrsolutions.com.mx', '', '', '2025-05-26', '0000-00-00', 6, 41, 13, 87, 238, 0, 1, 96, '2025-05-26', 2, 32000, 40260, 1, 20, '1224259904', '072180012242599040', 4, 1, '2025-05-19', '2025-06-18', 717, 208),
(765, '250750', 'HUMBERTO', 'ZAID', 'HUMBERTO', 'SANROMAN', 'OLIVARES', '2003-10-21', 'M', 'SAOH031021HJCNLMA7', '62170346845', 'SAOH031021N35', 5, 1, '474 126 75', 'Benito Juarez #48 Col:Plan de los Rodríguez C.P 47536, Lagos de Moreno Jal.', 3, '', '', 'betoolivares159@gmail.com', 0, 'sin asignar', '', '', '2025-05-20', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1510190359', '012180015101903598', 4, 1, '2025-05-20', '2025-05-27', 114, 338),
(766, '250751', 'JUAN', 'CARLOS', 'JUAN', 'GRANADOS', 'TORRES', '1989-09-18', 'M', 'GAJJ891118HQTRRN03', '14058929010', 'GAJJ891118445', 4, 0, '448 120 20', 'FRESNOS 31, AV. FICUS, COYOTILLOS, QRO. ', 7, '', '', 'granadosjuarezjuancarlos7@gmail.com', 0, 'juan.granados@ldrsolutions.com.mx', '', '', '2025-05-19', '0000-00-00', 6, 42, 26, 98, 287, 0, 1, 123, '0000-00-00', 2, 120000, 1, 2, 71, '56893477234', '014680568934772349', 3, 1, '2025-05-20', '2025-06-06', 732, 209),
(767, '250752', 'CYNTHIA', 'BEATRIZ', 'CYNTHIA', 'SILVA', 'MANSO', '1975-08-11', 'F', 'SIM750811MDFLNY01', '42017504160', 'SIMC750811JP8', 5, 0, '552018176', 'XOCONOXTLE 11, INFONAVIT IZTACALCO PEYOTE CERRADA, C.P. 08900, CIUDAD DE MEXICO', 7, '', '', 'cynthiaslv@gmail.com', 0, 'cynthia.silva@ldrsolutions.com.mx', '', '3313070260', '2025-05-21', '0000-00-00', 6, 39, 13, 81, 377, 0, 1, 11, '0000-00-00', 2, 50000, 66221, 1, 71, '60603173692', '014180606031736925', 4, 1, '2025-05-20', '2025-06-09', 208, 202),
(768, '250753', 'PEDRO', '', 'PEDRO', 'MARTINEZ', 'CUEVAS', '1998-09-23', 'M', 'MACP980923HJCRVD08', '30139898420', 'MACP980923UX8', 4, 0, '474 102 21', 'Rita Pérez #549 A  Col: San Miguel  C.P 47420 ,Lagos de Moreno Jal ', 7, '', '', 'pmc3286@gmail.com', 0, 'sin asignar', '', '', '2025-05-22', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1544626477', '012362015446264778', 4, 1, '2025-05-22', '2025-05-27', 114, 338),
(769, '250754', 'HECTOR', 'EDUARDO', 'HECTOR', 'RAMIREZ', 'LOPEZ', '2006-02-03', 'M', 'RALH060203HJCMPCA7', '10240618917', 'RALH060203E7A', 4, 0, '4741083397', 'Av Nicolas Bravo #113 Col: La Perla  C.P 47472,Lagos de Morfeno Jal', 1, '', '', '4741900245hector@gmail.com', 0, 'sin asignar', '', '', '2025-05-22', '0000-00-00', 3, 12, 25, 27, 72, 0, 1, 32, '0000-00-00', 2, 8364, 8364, 2, 71, '56917676293', '014362569176762939', 4, 1, '2025-05-22', '2025-05-27', 114, 338),
(770, '250755', 'CUITLAHUAC', 'AZAEL', 'AZAEL', 'HERNANDEZ', 'URRUTIA', '1995-03-30', 'M', 'HEUC950330HDFRRT07', '39109506194', 'HEUC95033089A', 4, 0, '5586780563', 'VERONA MZ. 3, LT. 1, COLONIA LOS ENCINOS, C.P. 14239, TLALPAN, CDMX.', 7, '', '', 'aza95el@gmail.com', 0, 'azael.hernandez@ldrsolutions.com.mx', '', '', '2025-05-26', '0000-00-00', 10, 62, 28, 127, 381, 0, 1, 43, '0000-00-00', 2, 45000, 58771, 1, 26, '1523781590', '012180015237815903', 3, 1, '2025-05-25', '2025-05-25', 208, 208),
(771, '250756', 'ANGEL', 'GERSAIN', 'ANGEL', 'HERRERA', 'ZARATE', '1996-11-09', 'M', 'HEZA961109HJCRRN00', '50169636813', 'HEZA961109UY6', 4, 0, '3323129712', 'AV PINO 499, HACIENDAS DE SAN JOSE, C.P. 45654, TLAQUEPAQUE, JALISCO', 7, '', '', 'gersain571@gmail.com', 0, 'angel.herrera@ldrenta.com', '', '', '2025-05-26', '0000-00-00', 7, 53, 38, 118, 385, 0, 1, 115, '0000-00-00', 2, 15000, 17554, 1, 21, '958026440032', '058597000041501272', 3, 1, '2025-05-25', '2025-05-25', 208, 208),
(772, '250757', 'ELVIRA', '', 'ELVIRA', 'HERNANDEZ', 'MARTINEZ', '1973-01-08', 'F', 'HEME730108MDFRRL02', '45947364357', 'HEME730108642', 4, 4, '5531215716', 'HDA. DE XALPA, TORRE 6 DEPTO 003HDA. DEL PARQUE 1A SECCION, CUAUTITLAN IZCALLI, CP 54769, ESTADO DE MEXICO', 1, '', '', 'ehermar04@gmail.com', 0, 'elvira.hernandez@ldrsolutions.com.mx', '', '', '2025-05-26', '0000-00-00', 3, 4, 11, 10, 383, 0, 1, 121, '0000-00-00', 2, 15000, 17554, 1, 14, '70207712645', '002180702077126450', 3, 1, '2025-05-26', '2025-05-28', 208, 208),
(773, '250758', 'MARIANA', '', 'MARIANA', 'PEREZ', 'JUAREZ', '2003-11-19', 'F', 'PEJM031119MDFRRRA4', '3170379055', 'PEJM031119IT6', 4, 0, '7298186167', 'MONTE ALBAN, ROSA TORRES, CUAJIMALPA DE MORELOS, CP. 05260, CDMX', 1, '', '', 'mariperezu191103@gmail.com', 0, 'mariana.perez@ldrsolutions.com.mx', '', '', '2025-05-27', '0000-00-00', 6, 35, 13, 15, 382, 0, 1, 120, '0000-00-00', 2, 16000, 18875, 1, 26, '1525685936', '012180015256859364', 3, 1, '2025-05-26', '2025-05-26', 208, 208),
(774, '250759', 'YARITZA', 'FERNANDA', 'YARITZA', 'CADENA', 'VALLE', '1994-04-02', 'F', 'CAVY940402MJCDLR03', '75129425635', 'CAVY9404029M5', 4, 1, '4732062494', 'Agapando #58 Col: Laureles del Campanario C.P 47530,Lagos de Moreno Jal ', 1, '', '', 'yfcvalle@gmail.com', 0, 'yaritza.cadena@ldrsolutions.com.mx', '', '', '2025-05-27', '0000-00-00', 3, 12, 25, 26, 386, 0, 1, 35, '2025-05-27', 1, 3000, 3000, 2, 26, '1594164523', '012362015941645232', 3, 1, '2025-05-27', '2025-05-27', 338, 338),
(775, '250760', 'JENNIFER', '', 'JENNIFER', 'REA', 'ROJAS', '2001-11-27', 'F', 'RERJ011127MDFXJNA4', '27170131844', 'RERJ011127QX5', 2, 0, '7293662811', 'CALLE BENITO JUAREZ, NUMERO109 TOLUCA ESTADO DE MEXICO', 7, 'NO', 'NO', 'Jenniferdnv1253@gmail.com', 0, 'jennifer.rea@ldrsolutions.com.mx', '', '', '2025-06-16', '0000-00-00', 6, 41, 13, 90, 394, 0, 1, 2, '2025-06-16', 2, 18000, 21515, 1, 26, '1595760481', '012180015957604818', 3, 1, '2025-05-29', '2025-05-29', 717, 717),
(776, '250761', 'CARLOS', '', 'CARLOS', 'CRUZ', 'CASTAÑEDA', '1997-08-11', 'M', 'CUCC970811HMCRSR09', '16169729015', 'CUCC970811269', 4, 0, '5572227706', 'AV. LOPEZ PORTILLO, LT K 22, SAN LORENZO TEPALTITLAN CENTC, C.P. 50010, TOLUCA, MEX.', 7, '', '', 'webmaster.ccc@hotmail.com', 0, 'carlos.cruz@ldrsolutions.com.mx', '', '', '2025-06-02', '0000-00-00', 6, 39, 13, 116, 333, 0, 1, 79, '0000-00-00', 1, 28000, 34823, 1, 1, '28170158951390', '127180001589513904', 3, 1, '2025-05-30', '2025-05-30', 208, 208),
(777, '250762', 'MIRIAM', '', 'MIRIAM', 'MORENO', 'MOLINA', '1975-06-06', 'F', 'MOMM750606MDFRLR09', '62937566941', 'MOMM750606ME4', 4, 3, '2215864471', 'CALLE 117 OTE, 1608-40, FRAC. LOS HEROES PUEBLA, C.P. 72590, PUEBLA', 7, '', '', 'mmm.especialista@gmail.com', 0, 'miriam.moreno@ldrsolutions.com.mx', '', '', '2025-06-02', '0000-00-00', 3, 4, 11, 10, 383, 0, 1, 121, '0000-00-00', 2, 15000, 17554, 1, 20, '1318810697', '072650013188106974', 3, 1, '2025-06-01', '2025-06-01', 208, 208),
(778, '250763', 'ARIADNA', '', 'ARIADNA', 'GOMEZ', 'RAMIREZ', '1996-01-26', 'F', 'GORA960126MTSMMR08', '19159698018', 'GORA9601263I3', 4, 1, '833 294 68', 'CALLE ALHELIES 113 FRACC JARDINES DE CHAMPAY', 1, '', '', 'ariadna.gmz@outlook.com', 0, 'ariadna.gomez@ldrsolutions.com.mx', '', '', '2025-06-02', '0000-00-00', 6, 64, 13, 132, 398, 0, 1, 128, '2025-06-02', 2, 22000, 26000, 1, 20, '1021660932', '072375010216609320', 3, 1, '2025-06-02', '2025-06-03', 146, 209),
(779, '250764', 'JORGE', 'RICARDO', 'RICARDO', 'GIL', 'RIZO', '1978-06-07', 'M', 'GIRJ780607HDFLZR02', '42987809011', 'GIRJ780607DM3', 2, 1, '55 1090 92', 'C PEÑUELA 1537 RCIAL EL  REFUGIO 76146, QUERETARO, QRO.', 7, '', '', 'r.gilrizo@gmail.com', 0, 'ricardo.gil@ldrsolutions.com.mx', '', '', '2025-06-05', '0000-00-00', 6, 37, 13, 78, 408, 0, 1, 45, '2025-06-05', 2, 43000, 52000, 1, 26, '0151317121', '012180001513171210', 3, 1, '2025-06-02', '2025-06-05', 146, 209),
(780, '250765', 'ANDREA', '', 'ANDREA', 'FERNANDEZ', 'BARROETA', '1988-08-06', 'F', 'FEBA880806MDFRRN00', '1138803646', 'FEBA8808068I6', 4, 0, '5529405206', 'Salaverry #785, Col. Lindavista, Alcaldía Gustavo A. Madero, C.P.07300, Ciudad de México', 7, '', '', 'afbarroeta@hotmail.com', 0, 'andrea.fernandez@ldrsolutions.com.mx', '', '', '2025-06-05', '0000-00-00', 6, 41, 13, 95, 279, 0, 1, 53, '2025-06-05', 2, 30000, 35000, 1, 20, '1322093899', '072180013220938994', 3, 1, '2025-06-05', '2025-06-13', 146, 485),
(781, '250766', 'OCTAVIO', 'ALBERTO', 'OCTAVIO', 'QUINTO', 'GUADALUPE', '1998-11-20', 'M', 'QUGO981120HVZNDC04', '72169803656', 'QUGO981120FQ3', 4, 0, '5611731203', 'CALZADA TICOMAN 643, EDIFICIO E, DEPARTAMENTO 8, LA LAGUNA TICOMAN, GUSTAVO A MADERO, CP 07340, CDMX', 7, '', '', 'quinto_oqg@hotmail.com', 0, 'octavio.quinto@ldrsolutions.com.mx', '', '', '2025-06-09', '0000-00-00', 6, 43, 13, 99, 420, 0, 1, 90, '0000-00-00', 2, 18000, 21515, 1, 26, '1535570700', '012180015355707003', 3, 1, '2025-06-08', '2025-06-08', 208, 208),
(782, '250767', 'KIMBERLY', 'BERENICE', 'KIMBERLY', 'LICONA', 'GARCIA', '2001-01-28', 'F', 'LIGK010128MDFCRMA9', '01180198762', ' LIGK010128SF', 4, 0, '5611934591', 'CALLE RIO CONGO MZ12, LT2, VALLE DE SAN LORENZO, CP. 09970, IZTAPALAPA, CDMX', 3, '', '', 'kimberlylg.ing@gmail.com', 0, 'kimberly.licona.@ldrsolutions.com.mx', '', '', '2025-06-09', '0000-00-00', 10, 62, 28, 127, 421, 0, 1, 50, '0000-00-00', 2, 15000, 17554, 1, 26, '1580428259', '012180015880428259', 3, 1, '2025-06-09', '2025-06-09', 208, 208),
(783, '250768', 'MARIELA', 'ISABEL', 'ISABEL', 'MEJIA', 'MARTEL', '1998-02-05', 'F', 'MEMM980205MTSJRR06', '82169845730', 'MEMM980205K53', 5, 0, '83341374', 'SEGUNDA CERRADA DE SAN JERONIMO #24 COL.SAN MATEO TLALTENANGO ALCALDIA CUAJIMALPA CP.05600', 1, '', '', 'MARIELAMARTEL33@GMAIL.COM', 0, 'isabel.mejia@ldrsolutions.com.mx', '', '', '2025-06-10', '0000-00-00', 6, 64, 13, 132, 419, 0, 1, 128, '2025-06-10', 2, 15000, 17554, 1, 26, '1508725652', '012811015087256528', 3, 1, '2025-06-09', '2025-06-24', 717, 202),
(784, '250769', 'LIZBETH', '', 'LIZBETH', 'MAYA', 'RAMOS', '1999-06-09', 'F', 'MARL990609MDFYMZ03', '62169991080', 'MARL9906094F8', 4, 0, '5537611635', 'ROSALES MZ. 3 LT.9 COLONIA: 2DA AMPLIACION EL PIRUL CP: 01230, CDMX', 7, '', '', 'lizmayaramos@gmail.com', 0, 'lizbeth.maya@ldrsolutions.com.mx', '', '3338298854', '2025-06-11', '0000-00-00', 6, 46, 13, 102, 293, 0, 1, 114, '0000-00-00', 2, 16000, 18875, 1, 26, '1513459647', '012180015134596477', 3, 1, '2025-06-11', '2025-06-24', 208, 202),
(785, '250770', 'JAIME ', 'EMILIANO', 'JAIME ', 'TORRES', 'GUERRA', '2002-12-11', 'M', 'TOGJ021211HJCRRMA6', '63170299117', 'TOGJ0212114T5', 4, 0, '4741013375', 'Petra Martínez #256 Col: Las Palmas C.P 47440 ,Lagos de Moreno Jal', 7, '', '', 'jimmy111202@gmail.com', 0, 'sin asignar', '', '', '2025-06-11', '0000-00-00', 3, 12, 25, 27, 72, 0, 1, 32, '0000-00-00', 2, 8364, 8364, 2, 26, '1587084361', '012225015870843611', 4, 1, '2025-06-11', '2025-06-18', 114, 114),
(786, '250771', 'JOSE', 'DANIEL', 'JOSE', 'PEREZ', 'LOPEZ', '1974-06-15', 'M', 'PELD740615HJCRPN08', '54927432887', 'PELD7406151G9', 2, 2, '4741480194', 'Platanares # 171 Col: Jardines de las Ceibas C.P 47532, Lagos de Moreno Jal', 7, '', '', 'danypeloz@gmail.com', 0, 'sin asignar', '', '', '2025-06-11', '0000-00-00', 3, 12, 25, 27, 72, 0, 1, 32, '0000-00-00', 2, 8364, 8364, 2, 71, '56923251631', '014362569232516317', 4, 1, '2025-06-11', '2025-06-18', 114, 114),
(787, '250772', 'CITLALLI', 'ALEJANDRA', 'CITLALLI', 'DELGADO', 'HERNANDEZ', '2004-03-28', 'F', 'DEHC040328MJCLRTA1', '57190429258', 'DEHC0403283L5', 4, 0, '474 74 770', 'Cedro #176 Col. Lomas del Valle C.P. 47460, Lagos De Moreno, Jal.', 7, '', '', 'cialdehe28@gmail.com', 0, 'citlalli_delgado@ldrsolutions.com.mx', '', '', '2025-06-12', '0000-00-00', 3, 12, 25, 29, 423, 0, 1, 140, '0000-00-00', 2, 3000, 3000, 2, 26, '1532286853', '012180015322868535', 4, 1, '2025-06-12', '2025-06-17', 114, 114),
(788, '250773', 'JOSE', 'ANTONIO', 'JOSE', 'GARCIA', 'HERNANDEZ', '1992-08-11', 'M', 'GAHA920811HDFRRN03', '1139210262', 'GAHA920811QU1', 5, 2, '5520041558', 'CALLE CERRO MERCEDARIOS, MZ 472, LT 22, COLONIA LAZARO CARDENAS TERCERA SECCION 54189, TLANEPANTLA DE BAZ, EDO. DE MEXICO', 3, '', '', '1108.joseantonio@gmail.com', 0, 'sinasignar@ldrsolutions.com.mx', '', '', '2025-06-16', '0000-00-00', 6, 43, 13, 99, 288, 0, 1, 90, '0000-00-00', 2, 16000, 18875, 1, 26, '1563254448', '012180015632544484', 3, 1, '2025-06-14', '2025-06-20', 208, 208),
(789, '250774', 'HERIBERTO', '', 'HERIBERTO', 'SANCHEZ', 'JIMENEZ', '1972-03-30', 'M', 'SAJH72O330HQTNMR00', '14887223940', 'SAJH720330N85', 2, 0, '44218709', 'CALLE LAUREL S/N, VIBORILLAS, COLÓN, QRO.', 7, '', '', 'heriberto.sanchezjimenez@yahoo.com.mx', 0, 'sin asignar', '', '', '2025-06-12', '0000-00-00', 7, 53, 39, 118, 337, 0, 1, 143, '0000-00-00', 2, 13000, 0, 2, 71, '0', '0', 3, 1, '2025-06-16', '2025-06-26', 732, 209),
(790, '250775', 'ANGEL', 'JAYR', 'ANGEL', 'VELAZQUEZ', 'ESCOBEDO', '2003-03-12', 'M', 'VEEA030312HJCLSNA1', '05190310176', 'VEEA030312SN8', 4, 0, '474 112 11', 'Vigen de Guadalupe # 289 Col: Cristeros C.P 47476 ,Lagos de Moreno Jal', 5, '', '', 'jayr.velazquez10@gmail.com', 0, 'sin asignar', '', '', '2025-06-17', '0000-00-00', 3, 12, 25, 24, 56, 0, 1, 7, '0000-00-00', 2, 8364, 8364, 2, 26, '1533673591', '012180015336735913', 4, 1, '2025-06-17', '2025-06-25', 114, 114),
(791, '250776', 'HECTOR', 'ULISES', 'HECTOR', 'ORNELAS', 'VENEGAS', '1997-12-19', 'M', 'OEVH971219HJCRNC04', '57169796042', 'OEVH971219KU8', 5, 2, '33 1837 13', 'TepeyaTepeyac #19  Col: El Verde C.P 45694, Guadalajara Jal', 5, '', '', 'Ulisesornelasornelasvenegas@gmail.com', 0, 'hector.ornelas@ldrsolutions.com.mx', '', '', '2025-06-17', '0000-00-00', 3, 12, 40, 23, 53, 0, 1, 97, '0000-00-00', 2, 9837, 9837, 2, 26, '1580556818', '012320015805568183', 3, 1, '2025-06-17', '2025-06-17', 114, 114),
(792, '250777', 'ERIKA', '', 'ERIKA', 'CORTES', 'BELLO', '1995-08-18', 'F', 'COBE950818MDFRLR07', '04510954419', 'COBE950818UB7', 4, 0, '5618481208', 'CACALCHEN MZ 7 LTE 5 COL. LOMAS DE PADIERNA 14240', 7, '', '', 'eriikacb.95@gmail.com', 0, 'erika.cortes@ldrsolutions.com.mx', '', '', '2025-06-18', '0000-00-00', 10, 62, 28, 127, 425, 0, 1, 43, '0000-00-00', 2, 20000, 24157, 1, 14, '70192771704', '002212701927717040', 3, 1, '2025-06-17', '2025-06-17', 784, 784),
(793, '250778', 'LUIS', 'ALBERTO', 'LUIS', 'QUIÑONEZ', 'LOMELI', '1967-12-24', 'M', 'QULL671224HJCXMS05', '04876726284', 'QULL671224ND5', 2, 0, '33116443', 'C RIO DANURIO FRACC RIO RESIDENCIAL BY CUMBRES CP 77560', 1, 'NO APLICA', 'NO APLICA', 'albertoqll67@gmail.com', 0, 'alberto.quinonez@ldrenta.com', '', '', '2025-06-18', '0000-00-00', 7, 53, 35, 118, 385, 0, 1, 144, '0000-00-00', 2, 15000, 17554, 1, 48, '6462077714', '021320064620777146', 3, 1, '2025-06-17', '2025-06-26', 784, 209),
(794, '250779', 'FANNY', 'CAROLINA', 'CAROLINA', 'LOPEZ', 'AVALOS', '1995-10-10', 'F', 'LOAF951010MTCPVN04', '3169551508', 'LOAF951010IM3', 5, 0, '6863579180', 'CALLE CANTABRO SMZ 246, MZ 196, LT 5, CASA 3, FRACCIONAMIENTO ALOJA, C.P. 77516, CANCUN QUINTANA ROO', 7, 'NO APLICA', 'NO APLICA', 'carolina.loav@gmail.com', 0, 'carolina.lopez@ldrenta.com', '', '', '2025-06-18', '0000-00-00', 7, 53, 35, 118, 335, 0, 1, 108, '0000-00-00', 2, 20000, 24157, 1, 71, '56823478632', '014790568234786323', 3, 1, '2025-06-17', '2025-06-25', 208, 636),
(795, '250780', 'JUAN', 'MANUEL', 'JUAN', 'FRANCO', 'ALMAZAN', '1976-05-15', 'M', 'FAAJ760515HJCRLN05', '4917546709', 'FAAJ7605159G7', 2, 2, '4917546709', 'SAN CARLOS 1068-13 COL. REAL DEL VALLE TLAJOMULCO DE ZUÑIGA, C.P. 45654, JALISCO', 7, 'NO APLICA', 'NO APLICA', 'juan.franco_@hotmail.com', 0, 'juan.franco@ldrsolutions.com.mx', '', '', '2025-06-18', '0000-00-00', 3, 4, 11, 10, 383, 0, 1, 54, '0000-00-00', 2, 15000, 17554, 1, 20, '1040146923', '072320010401469236', 3, 1, '2025-06-17', '2025-06-18', 208, 516),
(796, '250781', 'LEONARDO', '', 'LEONARDO', 'APOLINAR', 'VARGAS', '2025-06-25', 'M', 'AOVL810930HDFPRN06', '40978164750', 'DEFRGHYJTRGBD', 4, 0, '3345157058', 'LA BARCA 8 B, NUEVO MEXICO JARDINES, C.P. 45138, ZAPOPAN JALISCO', 1, 'NO APLICA', 'NO APLICA', 'leonardoa093081@gmail.com', 0, 'leonardo.apolinar@ldrenta.com', '', '', '2025-06-18', '0000-00-00', 7, 53, 38, 118, 385, 0, 1, 108, '0000-00-00', 2, 15000, 17554, 1, 71, '56872335005', '014320568723350054', 3, 1, '2025-06-17', '2025-06-18', 208, 208),
(797, '250782', 'JAVIER', 'ANTONIO', 'JAVIER', 'VILLAFUERTE', 'ALMARAZ', '1994-07-04', 'M', 'VIAJ940704HDFLLV00', '94129404052', 'VIAJ940704P82', 5, 0, '5523290478', 'CDA CRUZ TETETLA, NUMERO 13, SAN PABLO, C.P. 56334, CHIMALHUACAN, MEXICO', 7, 'NO APLICA', 'NO APLICA', 'x.villa.2801@gmail.com', 0, 'javier.villafuerte@ldrsolutions.com.mx', '', '3331156524', '2025-06-18', '0000-00-00', 6, 43, 13, 99, 290, 0, 1, 90, '0000-00-00', 2, 18000, 21515, 1, 14, '7021000000488926', '002180702104889262', 3, 1, '2025-06-18', '2025-06-24', 208, 202),
(798, '250783', 'FRANCISCO', '', 'FRANCISCO', 'ROMERO', 'ORDOÑEZ', '1991-03-11', 'M', 'ROOF910311HMCMRR07', '16109120846', 'ROOF910311315', 2, 2, '7294900466', 'IGNACIO ZARAGOZA 5 BELLAVISTA METEPEC CP 52172', 4, '', '', 'romfran91@hotmail.com', 0, 'francisco.romero@ldrsolutions.com.mx', '', '', '2025-06-23', '0000-00-00', 6, 39, 13, 116, 410, 0, 1, 79, '2025-06-23', 2, 22000, 28000, 1, 20, '1320059556', '072180013200595564', 3, 1, '2025-06-20', '2025-06-20', 146, 146),
(799, '250784', 'YASMIN', '', 'YASMIN', 'HERNANDEZ', 'FERNANDEZ', '2003-06-18', 'F', 'HEFY030618MMCRRSA3', '38210366068', 'HEFY030618TM9', 4, 0, '7293584651', 'Miguel Hidalgo #19, San Miguel Totocuitlapilco, Metepec', 7, '', '', 'hf.yasmin18@gmail.com', 0, 'yasmin.hernandez@ldrsolutions.com.mx', '', '', '2025-06-23', '0000-00-00', 6, 39, 13, 116, 331, 0, 1, 79, '2025-06-23', 2, 18000, 22000, 1, 26, '1577453315', '012441015774533157', 3, 1, '2025-06-20', '2025-06-20', 146, 146),
(800, '250785', 'KAREN', '', 'KAREN', 'DOMINGUEZ', 'REYES', '2000-03-11', 'F', 'DORK000311MMCMYRA5', '64150015747', 'DORK0003117J4', 4, 0, '7292646125', 'Carretera Acueducto s/n, Colonia Guadalupe Hidalgo, Ocoyoacac, Toluca, Estado de México, CP 52756.', 7, '', '', 'karendominguezreyes111@gmail.com', 0, 'karen.dominguez@ldrsolutions.com.mx', '', '3317002648', '2025-06-23', '0000-00-00', 6, 37, 13, 78, 406, 0, 1, 45, '2025-06-23', 2, 21000, 25000, 1, 14, '100281526091', '002438905022764756', 3, 1, '2025-06-20', '2025-06-26', 146, 516),
(801, '250786', 'LEOPOLDO', '', 'LEOPOLDO', 'ORTEGA', 'LOPEZ', '1999-01-23', 'M', 'OELL990123HDFRPP01', '26189976652', 'OELL9901234E0', 4, 0, '5527069625', 'AV. 497 NUMERO 98, COLONIA SAN JUAN DE ARAGON 7 SECCION, GUSTAVO A MADERO, C.P. 07910, CDMX', 7, '', '', 'leoortegalol23@gmail.com', 0, 'leopoldo.ortega@ldrsolutions.com.mx', '', '', '2025-06-23', '0000-00-00', 6, 43, 13, 99, 422, 0, 1, 90, '0000-00-00', 2, 18000, 21515, 1, 26, '1525197254', '012180015251972547', 3, 1, '2025-06-20', '2025-06-20', 208, 208),
(802, '250787', 'MELISA', '', 'MELISA', 'ALVAREZ', 'ROSALES', '1998-06-04', 'F', 'AARM980604MMCLSL04', '16139805077', 'AARM980604L15', 4, 0, '7227984317', 'MIGUEL HIDALGO NORTE 107, JOSE MA MORELOS, EJ TLACHALOYA LAGUNA, CP 50925', 7, '', '', 'lni.melisa.alvarez@hotmail.com', 0, 'melisa.alvarez@ldrsolutions.com.mx', '', '3316991520', '2025-06-23', '0000-00-00', 3, 4, 11, 5, 373, 0, 1, 118, '0000-00-00', 2, 15000, 17554, 1, 26, '1526917736', '012180015269177363', 3, 1, '2025-06-20', '2025-06-26', 784, 516),
(803, '250788', 'MARLENE', '', 'MARLENE', 'VILLASEÑOR', 'VALENCIA', '1995-07-09', 'F', 'VIVM950709MDFLLR07', '01069500054', 'VIVM9507091E7', 4, 0, '5640041939', 'Cerrada Barriozabal 11#, Col. Tlalnepantla Centro, Estado de México. C.P. 54000', 1, '', '', 'marvillaval09@gmail.com', 0, 'marlene.villasenor@ldrsolutions.com.mx', '', '3317149380', '2025-06-23', '0000-00-00', 6, 46, 13, 103, 294, 0, 1, 39, '2025-06-23', 2, 18000, 21000, 1, 26, '1525319920', '012180015253199205', 3, 1, '2025-06-23', '2025-06-25', 146, 202),
(804, '250789', 'DIANA', 'ELSA', 'DIANA', 'GOMEZ', 'SEGURA', '1984-03-20', 'F', 'GOSD840320MGRMGN02', '03198425781', 'GOSD840320DR4', 2, 4, '4742079686', 'Padre Esqueda #291 Col: Cristeros C.P 47472, Lagos de Moreno Jal', 7, '', '', 'dianitagomez282@gmail.com', 0, 'sin asignar', '', '', '2025-06-23', '0000-00-00', 3, 12, 25, 23, 50, 0, 1, 34, '0000-00-00', 2, 8334, 8334, 2, 26, '1132795493', '012446011327954933', 4, 1, '2025-06-23', '2025-06-26', 114, 114),
(805, '250790', 'ALEXIA', 'MAYRA', 'ALEXIA', 'SALDAÑA', 'TORRIJOS', '1998-10-22', 'F', 'SATA981022MMCLRL06', '1169807342', 'SATA981022EH4', 4, 0, '7223694431', 'UNIÓN 12, SANTIAGO TLACOTEPEC, CP 50255, TOLUCA, EDO MÉX.', 7, '', '', 'alexiasaldana1@gmail.com', 0, 'alexia.saldana@ldrsolutions.com.mx', '', '', '2025-06-23', '0000-00-00', 6, 46, 13, 102, 293, 0, 1, 114, '0000-00-00', 1, 16000, 18875, 1, 71, '56842934903', '014427568429349039', 3, 1, '2025-06-23', '2025-06-23', 208, 208),
(806, '250791', 'JUAN', 'JOSE MARTIN', 'JUAN', 'PEREZ', 'MARTINEZ', '1976-03-20', 'M', 'PEMJ760320HJCRRN06', '04027608183', 'PEMJ760320JC8', 2, 5, '4747364929', 'Nardo #28 Col: Bugambilias C.P 47474 ,Lagos de Moreno Jal', 7, '', '', 'joseperezmartinez003@gmail.com', 0, 'sin asignar', '', '', '2025-06-25', '0000-00-00', 3, 12, 25, 27, 72, 0, 1, 139, '0000-00-00', 2, 8364, 8364, 2, 71, '56924248139', '01436256924248139', 4, 1, '2025-06-25', '2025-06-27', 114, 114),
(807, '250792', 'VICTOR', 'MANUEL', 'VICTOR', 'CUENCA', 'MENDOZA', '1989-12-15', 'M', 'CUMV891215HDFNNC07', '01088903842', 'CUMV891215D38', 4, 2, '5652568128', 'TRAB PREV SOCIAL 115, COL ESTADISTICA, CP 15750', 7, '', '', 'vk3ta23@msn.com', 0, 'victor.cuenca@ldrsolutions.com.mx', '', '', '2025-07-02', '0000-00-00', 10, 62, 28, 127, 359, 0, 1, 98, '0000-00-00', 2, 12258, 13999, 1, 26, '1572756814', '012180015727568142', 3, 1, '2025-06-25', '2025-06-27', 784, 784),
(808, '250793', 'LEONEL', '', 'LEONEL', 'CEFERINO', 'BORJA', '1987-02-18', 'M', 'CEBL870218HQTFRN07', '14058704983', 'CEBL870218E81', 4, 0, '442 560 60', 'C. NOCHEBUENA S/N. LOC VIBORILLAS 76295, COLON QRO', 7, '', '', 'leonelceferino7@gmail.com', 0, 'sin asignar', '', '', '2025-06-25', '0000-00-00', 6, 46, 26, 110, 321, 0, 1, 39, '0000-00-00', 2, 8364, 0, 2, 71, '1', '1', 3, 1, '2025-06-26', '2025-06-26', 732, 732),
(809, '250794', 'NADIA', 'PAOLA', 'NADIA', 'SOTELO', 'GUTIERREZ', '2003-05-12', 'F', 'SOGN030512MJCTTDA0', '19170361208', 'SOGN030512RV0', 4, 0, '3957835320', 'Flores Magon #21 Fraccionamiento Las Huertas C.P 47570, Unión de San Antonio Jal', 3, '', '', 'nadia.sotelo740@gmail.com', 0, 'nadia_sotelo@ldrsolutions.com.mx', '', '', '2025-06-30', '0000-00-00', 3, 12, 25, 30, 78, 0, 1, 111, '0000-00-00', 2, 3000, 3000, 2, 71, '56924169646', '014362569241696464', 3, 1, '2025-06-30', '2025-06-30', 114, 114),
(10000, '000001', '', 'RAUL', 'RAUL', 'TELLEZ', 'LOPEZ', '0000-00-00', 'M', '', '', '', 0, 0, '', '', 0, '', '', '', 0, 'raul.tellez@ldrsolutions.com.mx', '', '', '0000-00-00', '0000-00-00', 6, 7, 11, 13, 32, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, '', '', 4, 1, '0000-00-00', '0000-00-00', 0, 0),
(10001, '000002', 'DANIEL', 'OMAR', 'DANIEL', 'LOPEZ', 'DEL VILLAR', '0000-00-00', 'M', '', '', '', 0, 0, '', '', 0, '', '', '', 0, 'daniel.lopez@ldrsolutions.com.mx', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, '', '', 0, 0, '0000-00-00', '0000-00-00', 0, 0),
(10002, '000003', '', 'CONSEJO', 'CONSEJO', '', '', '0000-00-00', '', '', '', '', 0, 0, '', '', 0, '', '', '', 0, '@', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, '', '', 4, 1, '0000-00-00', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constancias_situacion_fiscal`
--

CREATE TABLE `constancias_situacion_fiscal` (
  `id_constancia_situacion_fiscal` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `rfc` bigint(13) NOT NULL,
  `archivo_constancia_situacion_fiscal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `constancias_situacion_fiscal`
--

INSERT INTO `constancias_situacion_fiscal` (`id_constancia_situacion_fiscal`, `id_colaborador`, `rfc`, `archivo_constancia_situacion_fiscal`) VALUES
(1, 698, 1234567, 'constancia_situacion_fiscal_698_EVELYN CALDERON-X70.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `id_direccion` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_colaborador` int(11) DEFAULT NULL,
  `nombre_direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`id_direccion`, `id_empresa`, `id_colaborador`, `nombre_direccion`) VALUES
(1, 1, 0, 'SIN ASIGNAR'),
(2, 2, 69, 'COMERCIAL / VEHICULOS ELECTRICOS'),
(3, 2, 0, 'DIRECCION'),
(4, 3, 281, 'COMERCIAL'),
(5, 3, 0, 'COMERCIAL / PASSENGERS'),
(6, 3, 0, 'COMERCIAL / VEHICULOS DE CARGA'),
(7, 3, 0, 'CONSEJO'),
(8, 3, 39, 'DESARROLLO DE DISTRIBUIDORES'),
(9, 3, 39, 'DIRECCION'),
(10, 3, 0, 'MANEJO DE MATERIALES'),
(11, 3, 39, 'MARKETING'),
(12, 3, 32, 'PLANTA'),
(13, 3, 0, 'PLANTA / ALMACEN'),
(14, 3, 0, 'PLANTA / CALIDAD'),
(15, 3, 0, 'PLANTA / DETALLADO Y PINTURA'),
(16, 3, 0, 'PLANTA / MANEJO DE MATERIALES'),
(17, 3, 0, 'PLANTA / MANTENIMIENTO'),
(18, 3, 0, 'PLANTA / PRODUCCION'),
(19, 3, 0, 'POSVENTA'),
(20, 3, 0, 'PRODUCCION'),
(21, 3, 0, 'SIN ASIGNAR'),
(22, 3, 39, 'VENTAS GOBIERNO'),
(23, 4, 129, 'COMERCIAL'),
(24, 4, 11, 'DIRECCION'),
(25, 4, 129, 'MANTENIMIENTO'),
(26, 5, 544, 'COMERCIAL'),
(27, 5, 544, 'DESARROLLO DE DISTRIBUIDORES'),
(28, 5, 544, 'DIRECCION'),
(29, 5, 544, 'MARKETING'),
(30, 5, 0, 'SIN ASIGNAR'),
(31, 6, 0, 'COMERCIAL'),
(32, 6, 0, 'CONSEJO'),
(33, 6, 0, 'DIRECCION'),
(34, 6, 0, 'DIRECCION GENERAL'),
(35, 6, 498, 'FINANZAS'),
(36, 6, 341, 'JURIDICO'),
(37, 6, 53, 'MARKETING'),
(38, 6, 115, 'MARKETING INTELLIGENCE'),
(39, 6, 374, 'OPERACIONES'),
(40, 6, 32, 'PLANTA'),
(41, 6, 95, 'POSVENTA'),
(42, 6, 95, 'POSVENTA / ALMACEN'),
(43, 6, 95, 'POSVENTA / BUSES'),
(44, 6, 0, 'POSVENTA / CUSTOMER EXPERIENCE'),
(45, 6, 0, 'POSVENTA / REFACCIONES'),
(46, 6, 146, 'RECURSOS HUMANOS'),
(47, 6, 95, 'REFACCIONES'),
(48, 6, 11, 'RELACIONES INSTITUCIONALES'),
(49, 6, 146, 'SERVICIOS GENERALES'),
(50, 6, 0, 'SIN ASIGNAR'),
(51, 6, 374, 'TECNOLOGIAS DE LA INFORMACION'),
(52, 7, 0, 'DIRECCION'),
(53, 7, 581, 'OPERACIONES'),
(54, 7, 581, 'SIN ASIGNAR'),
(55, 8, 0, 'CONSEJO'),
(56, 9, 0, 'MAGNET'),
(57, 9, 0, 'MARKETING'),
(58, 9, 0, 'SIN ASIGNAR'),
(59, 10, 0, 'DIRECCION'),
(60, 10, 0, 'SIN ASIGNAR'),
(61, 10, 34, 'TELEMETRIA'),
(62, 10, 34, 'TELEMETRIA'),
(63, 10, 34, 'TORRE DE CONTROL'),
(64, 6, 0, 'COMPRAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `id_directivo` int(11) NOT NULL,
  `id_tipo_directivo` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directivos`
--

INSERT INTO `directivos` (`id_directivo`, `id_tipo_directivo`, `id_colaborador`) VALUES
(1, 1, 9),
(2, 2, 7),
(3, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id_domicilio` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `domicilio` text NOT NULL,
  `archivo_domicilio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`id_domicilio`, `id_colaborador`, `domicilio`, `archivo_domicilio`) VALUES
(1, 698, 'CALLE REFORMA PRIVADA LAS LOMAS #345 INT. 6', 'comprobante_domicilio_698_comodato_COMODATO_URIEL (1).pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `nombre_empresa` varchar(30) NOT NULL,
  `dominio_correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `nombre_empresa`, `dominio_correo`) VALUES
(1, 'SIN ASIGNAR', 'SIN ASIGNAR'),
(2, 'CATL', 'ldrsolutions.com.mx'),
(3, 'FOTON', 'ldrsolutions.com.mx'),
(4, 'FULONGMA', 'fulongma.com.mx'),
(5, 'JETOUR', 'jetourmx.com'),
(6, 'LDR SOLUTIONS', 'ldrsolutions.com.mx'),
(7, 'LDRENTA', 'ldrenta.com'),
(8, 'LEROAD', 'ldrsolutions.com.mx'),
(9, 'MAGNET', 'ldrsolutions.com.mx'),
(10, 'TELEMATICS', 'ldrsolutions.com.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_aseguradora`
--

CREATE TABLE `estado_aseguradora` (
  `id_estado_aseguradora` int(11) NOT NULL,
  `estado_aseguradora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_aseguradora`
--

INSERT INTO `estado_aseguradora` (`id_estado_aseguradora`, `estado_aseguradora`) VALUES
(1, 'Baja'),
(2, 'En renovación '),
(3, 'SIN ASIGNAR'),
(4, 'Siniestrada'),
(5, 'Vigente'),
(6, 'Vencida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_licencia_conducir`
--

CREATE TABLE `estado_licencia_conducir` (
  `id_estado_licencia` int(11) NOT NULL,
  `estado_licencia_conducir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_licencia_conducir`
--

INSERT INTO `estado_licencia_conducir` (`id_estado_licencia`, `estado_licencia_conducir`) VALUES
(1, 'Activa'),
(2, 'Inactiva'),
(3, 'Cancelada'),
(4, 'Vencida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pruebas_demos`
--

CREATE TABLE `estado_pruebas_demos` (
  `id_estado_prueba_demo` int(11) NOT NULL,
  `estado_prueba` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_pruebas_demos`
--

INSERT INTO `estado_pruebas_demos` (`id_estado_prueba_demo`, `estado_prueba`) VALUES
(1, 'NO SE HA REALIZADO'),
(2, 'EN PROCESO'),
(3, 'FINALIZADA'),
(4, 'REPORTE SUBIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_unidad`
--

CREATE TABLE `estado_unidad` (
  `id_estado_unidad` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_unidad`
--

INSERT INTO `estado_unidad` (`id_estado_unidad`, `estado`) VALUES
(1, 'Disponible'),
(2, 'En mantenimiento'),
(3, 'Asignado'),
(4, 'Pre-Asignado'),
(5, 'Siniestrada'),
(6, 'Vendida'),
(7, 'En reparación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_aseguradora`
--

CREATE TABLE `estatus_aseguradora` (
  `id_estatus_aseguradora` int(11) NOT NULL,
  `estatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estatus_aseguradora`
--

INSERT INTO `estatus_aseguradora` (`id_estatus_aseguradora`, `estatus`) VALUES
(1, 'Activa'),
(2, 'Inactiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_asignacion`
--

CREATE TABLE `estatus_asignacion` (
  `id_estatus_asignacion` int(11) NOT NULL,
  `estatus` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_asignacion`
--

INSERT INTO `estatus_asignacion` (`id_estatus_asignacion`, `estatus`) VALUES
(1, 'Asignado'),
(2, 'Pendiente'),
(3, 'Devuelto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_carta_responsiva`
--

CREATE TABLE `estatus_carta_responsiva` (
  `id_estatus_carta_responsiva` int(11) NOT NULL,
  `estatus_responsiva` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_carta_responsiva`
--

INSERT INTO `estatus_carta_responsiva` (`id_estatus_carta_responsiva`, `estatus_responsiva`) VALUES
(1, 'Pendiente'),
(2, 'Aceptada'),
(3, 'Rechazada'),
(4, 'Actualizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_comodato`
--

CREATE TABLE `estatus_comodato` (
  `id_estatus_comodato` int(11) NOT NULL,
  `estatus_comodato` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_comodato`
--

INSERT INTO `estatus_comodato` (`id_estatus_comodato`, `estatus_comodato`) VALUES
(1, 'Pendiente'),
(2, 'Comodato'),
(3, 'Comodato subido'),
(4, 'Aceptado'),
(5, 'Rechazada'),
(6, 'Actualizada'),
(7, 'Regresada a jurídico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_inspeccion`
--

CREATE TABLE `estatus_inspeccion` (
  `id_estatus_inspeccion` int(11) NOT NULL,
  `estatus_insepccion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_inspeccion`
--

INSERT INTO `estatus_inspeccion` (`id_estatus_inspeccion`, `estatus_insepccion`) VALUES
(1, 'REALIZADA'),
(2, 'NO REALIZADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_mantenimiento`
--

CREATE TABLE `estatus_mantenimiento` (
  `id_estatus_mantenimiento` int(11) NOT NULL,
  `estatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_mantenimiento`
--

INSERT INTO `estatus_mantenimiento` (`id_estatus_mantenimiento`, `estatus`) VALUES
(1, 'Finalizado'),
(2, 'En proceso'),
(3, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_revision`
--

CREATE TABLE `estatus_revision` (
  `id_estatus_revision` int(11) NOT NULL,
  `estatus_revicion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_revision`
--

INSERT INTO `estatus_revision` (`id_estatus_revision`, `estatus_revicion`) VALUES
(1, 'Realizada'),
(2, 'No realiza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_tenencias`
--

CREATE TABLE `estatus_tenencias` (
  `id_estatus_tenencias` int(11) NOT NULL,
  `estatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_tenencias`
--

INSERT INTO `estatus_tenencias` (`id_estatus_tenencias`, `estatus`) VALUES
(1, 'Pagada'),
(2, 'Pendiente'),
(3, 'Vencida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_unidades`
--

CREATE TABLE `estatus_unidades` (
  `id_estatus_unidad` int(11) NOT NULL,
  `estatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_unidades`
--

INSERT INTO `estatus_unidades` (`id_estatus_unidad`, `estatus`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_verificacion`
--

CREATE TABLE `estatus_verificacion` (
  `id_estatus_verificacion` int(11) NOT NULL,
  `estatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus_verificacion`
--

INSERT INTO `estatus_verificacion` (`id_estatus_verificacion`, `estatus`) VALUES
(1, 'Vigente'),
(2, 'Rechazado'),
(3, 'Pendiente'),
(4, 'Vencido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evidencias_unidad`
--

CREATE TABLE `evidencias_unidad` (
  `id_evidencias_unidad` int(11) NOT NULL,
  `id_tipo_evidencia` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `evidencia_salida` varchar(50) NOT NULL,
  `evidencia_llegada` varchar(50) NOT NULL,
  `fecha_evidencia` datetime NOT NULL,
  `kilometraje_salida` varchar(50) NOT NULL,
  `kilometraje_llegada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `id_incidencias` int(11) NOT NULL,
  `id_tipo_incidencias` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `fecha_incidencia` date NOT NULL,
  `descripcion_incidencia` varchar(200) NOT NULL,
  `imagen_incidencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ines`
--

CREATE TABLE `ines` (
  `id_ine` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `seccion` int(4) NOT NULL,
  `vigencia` varchar(9) NOT NULL,
  `archivo_ine` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ines`
--

INSERT INTO `ines` (`id_ine`, `id_colaborador`, `seccion`, `vigencia`, `archivo_ine`) VALUES
(1, 698, 1234, '2020-2031', 'ine_698_licencia_conducir_ejemplo.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspecciones`
--

CREATE TABLE `inspecciones` (
  `id_inspeccion` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_inspector` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `fecha_inspeccion` date NOT NULL,
  `id_estatus_inspeccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspeccion_revisiones`
--

CREATE TABLE `inspeccion_revisiones` (
  `id_inspeccion_revision` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `id_revision` int(11) NOT NULL,
  `id_estatus_revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inspeccion_revisiones`
--

INSERT INTO `inspeccion_revisiones` (`id_inspeccion_revision`, `id_inspeccion`, `id_revision`, `id_estatus_revision`) VALUES
(1, 1, 1, 1),
(2, 1, 0, 1),
(3, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias_conducir`
--

CREATE TABLE `licencias_conducir` (
  `id_licencia` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `numero_licencia` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `licencia_permanente` varchar(20) NOT NULL,
  `id_estado_licencia` int(11) NOT NULL,
  `archivo_licencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `licencias_conducir`
--

INSERT INTO `licencias_conducir` (`id_licencia`, `id_colaborador`, `numero_licencia`, `fecha_emision`, `fecha_vencimiento`, `licencia_permanente`, `id_estado_licencia`, `archivo_licencia`) VALUES
(1, 698, 12345, '2025-04-09', '0000-00-00', 'PERMANENTE', 1, 'licencia_conducir_12345_licencia_conducir_ejemplo.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id_mantenimiento` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_tipo_mantenimiento` int(11) NOT NULL,
  `id_estatus_mantenimiento` int(11) NOT NULL,
  `fecha_mantenimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre_marca`) VALUES
(1, 'FOTON'),
(2, 'JETOUR'),
(3, 'BAIC'),
(4, 'CHEVROLET'),
(5, 'HONDA'),
(6, 'NISSAN'),
(7, 'TOYOTA'),
(8, 'NISSAN'),
(9, 'SIN ASIGNAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id_modelo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `nombre_modelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id_modelo`, `id_marca`, `nombre_modelo`) VALUES
(1, 2, 'DASHING'),
(2, 2, 'X70 plus'),
(3, 2, 'X70'),
(4, 4, 'AVEO'),
(5, 3, 'BEIJING'),
(6, 1, 'TM3'),
(7, 5, 'HONDA CITY'),
(8, 5, 'HONDA CR-V'),
(9, 5, 'HONDA HRV SPORT'),
(10, 8, 'NP300'),
(11, 2, 'T2'),
(12, 1, 'TM5H AUMARK FOTON'),
(13, 1, 'TOANO BIG BAN'),
(14, 1, 'TOANO PANEL'),
(15, 7, 'TOYOTA HIGHLANDER'),
(16, 1, 'TUNLAND E5'),
(17, 1, 'TUNLAND G7 DIESEL AUT 4X4'),
(18, 1, 'TUNLAND V9 TM 4X4'),
(19, 1, 'V9 44 DIESEL HV'),
(20, 1, 'FOTON TUNLAND 4x4'),
(21, 1, 'S3 AUMARK'),
(22, 1, 'TM 1.5'),
(23, 9, 'SIN ASIGNAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `fecha_pago` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_tipo_pago`, `id_unidad`, `costo`, `fecha_pago`) VALUES
(1, 1, 1, 5000, '2025-01-10'),
(2, 2, 2, 7000, '2025-01-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_fisicas`
--

CREATE TABLE `personas_fisicas` (
  `id_persona_fisica` int(11) NOT NULL,
  `id_registrador_persona_fisica` int(11) NOT NULL,
  `nombre_1` varchar(100) NOT NULL,
  `nombre_2` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `genero` varchar(4) NOT NULL,
  `seccion` int(4) NOT NULL,
  `vigencia` varchar(9) NOT NULL,
  `archivo_ine` varchar(200) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `archivo_curp` varchar(200) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `archivo_rfc` varchar(200) NOT NULL,
  `domicilio` text NOT NULL,
  `archivo_domicilio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_fisicas`
--

INSERT INTO `personas_fisicas` (`id_persona_fisica`, `id_registrador_persona_fisica`, `nombre_1`, `nombre_2`, `apellido_paterno`, `apellido_materno`, `genero`, `seccion`, `vigencia`, `archivo_ine`, `curp`, `archivo_curp`, `rfc`, `archivo_rfc`, `domicilio`, `archivo_domicilio`) VALUES
(1, 698, 'URIEL', 'MANUEL', 'CABELLO', 'CORTEZ', 'M', 1234, '2020-2029', 'INE_1234_EVELYN CALDERON-X70.pdf', 'CASU020133HPLSERED', 'CURP_CASU020133HPLSERED_ANDREA ESPINOZA-X70.pdf', '1QW2T5RDCV4RD', 'RFC_1QW2T5RDCV4RDS_ANDREA ESPINOZA-X70.pdf', 'CALLE REFORMA 134 A COLONIA CUAJIMALPA', 'domicilio_URIEL_comodato_COMODATO_URIEL (1).pdf'),
(2, 698, 'SANTIAGO', '', 'SEGURO', 'CORTEZ', 'M', 1254, '2020-2029', 'INE_1254_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', 'CASU020133HPLSER7A', 'CURP_CASU020133HPLSER7A_ANDREA ESPINOZA-X70.pdf', '1QW2T5RDCVGY', 'RFC_1QW2T5RDCVGY_licencia_conducir_ejemplo.pdf', 'CALLE REFORMA 134 A COLONIA SAN MARTIN', 'domicilio_SANTIAGO_COMODATO_UNIDADES_MARKETING_1.pdf'),
(3, 516, 'HERNEZTO', 'MIGUEL', 'CONTRERAS', 'PEREZ', 'M', 2365, '2020-2028', 'INE_2365_Diagrama AP.pdf', '12ESAXFDEWAA', 'CURP_12ESAXFDEWAA_Currículum AlexanderPH.pdf', '12345RESZ', 'RFC_12345RESZ_ANDREA ESPINOZA-X70.pdf', 'CALLE CALLE CALLE', 'domicilio_HERNEZTO_ANDREA ESPINOZA-X70.pdf'),
(4, 202, 'RIGOBERTO', '', 'CORTEZ', 'PEDRAZA', 'M', 1276, '2020-2029', 'INE_1276_licencia_conducir_ejemplo.pdf', 'CASU020133HPLSE2SD', 'CURP_CASU020133HPLSE2SD_responsiva_placa_MVH393A_asignacion_1_firma.pdf', '1QW2T5RDCVED', 'RFC_1QW2T5RDCVED_Lineamientos Préstamo de Vehículo Pull - LDR.pdf', 'CALLE CUAJIMLAPA MORELOS #1233 ', 'domicilio_RIGOBERTO_licencia_conducir_ejemplo.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_morales`
--

CREATE TABLE `personas_morales` (
  `id_persona_moral` int(11) NOT NULL,
  `id_registrador_persona_moral` int(11) NOT NULL,
  `organizacion_institucion` varchar(100) NOT NULL,
  `identificacion_representante_legal_seccion` varchar(20) NOT NULL,
  `vigencia` varchar(9) NOT NULL,
  `archivo_identificacion_representante_legal` varchar(200) NOT NULL,
  `archivo_poder_representante_legal` varchar(200) NOT NULL,
  `rfc_moral` varchar(12) NOT NULL,
  `archivo_rfc_moral` varchar(200) NOT NULL,
  `domicilio` text NOT NULL,
  `archivo_domiclio_moral` varchar(200) NOT NULL,
  `archivo_escritura_constitutiva` varchar(200) NOT NULL,
  `archivo_escrituras_estatus_sociales` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_morales`
--

INSERT INTO `personas_morales` (`id_persona_moral`, `id_registrador_persona_moral`, `organizacion_institucion`, `identificacion_representante_legal_seccion`, `vigencia`, `archivo_identificacion_representante_legal`, `archivo_poder_representante_legal`, `rfc_moral`, `archivo_rfc_moral`, `domicilio`, `archivo_domiclio_moral`, `archivo_escritura_constitutiva`, `archivo_escrituras_estatus_sociales`) VALUES
(1, 698, 'BIMBO', '5TYGYG', '2020-2029', 'ID_2020-2029_COMODATO_URIEL.pdf', 'PODER_2020-2029_licencia_conducir_ejemplo.pdf', '45TRY', 'RFC_45TRY_COMODATO_URIEL.pdf', 'CALLE REFORMA CONSTITUYENTES 123 A COLONIA CDMX', 'domicilio_CALLE REFORMA CONSTITUYENTES 123 A COLONIA CDMX_licencia_conducir_ejemplo.pdf', 'escrituraconstitutiva_CALLE REFORMA CONSTITUYENTES 123 A COLONIA CDMX_comodato_COMODATO_URIEL.pdf', 'estatusociales_CALLE REFORMA CONSTITUYENTES 123 A COLONIA CDMX_Lineamientos Préstamo de Vehículo Pull - LDR.pdf'),
(2, 698, 'MARINELA', '5TYGFGGS', '2020-2031', 'ID_2020-2031_COMODATO_URIEL.pdf', 'PODER_2020-2031_licencia_conducir_ejemplo.pdf', '45TRYTDGDS', 'RFC_45TRYTDGDS_COMODATO_UNIDADES_MARKETING_1.pdf', 'CALLE DEMO EJEMPLO', 'domicilio_CALLE DEMO EJEMPLO_licencia_conducir_ejemplo.pdf', 'escrituraconstitutiva_CALLE DEMO EJEMPLO_responsiva_placa_MVH393A_asignacion_1.pdf', 'estatusociales_CALLE DEMO EJEMPLO_Lineamientos Préstamo de Vehículo Pull - LDR.pdf'),
(3, 202, 'NFL', '4323', '2020-2029', 'ID_2020-2029_Diagrama AP.pdf', 'PODER_2020-2029_responsiva_placa_MVH393A_asignacion_1.pdf', '12EDW2345R', 'RFC_12EDW2345R_Diagrama AP.pdf', 'CALLE CALLE CALLE CALLE CALLE CALLE CALLE', 'domicilio_12EDW2345R_Currículum AlexanderPH.pdf', 'escrituraconstitutiva_12EDW2345R_COMODATO_UNIDADES_MARKETING_1.pdf', 'estatusociales_12EDW2345R_Lineamientos Préstamo de Vehículo Pull - LDR.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

CREATE TABLE `polizas` (
  `id_polizas` int(11) NOT NULL,
  `id_tipo_poliza` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `identificador_poliza` varchar(50) NOT NULL,
  `fecha_registro_poliza` date DEFAULT NULL,
  `fecha_vencimiento_poliza` date DEFAULT NULL,
  `documento_poliza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`id_polizas`, `id_tipo_poliza`, `id_unidad`, `identificador_poliza`, `fecha_registro_poliza`, `fecha_vencimiento_poliza`, `documento_poliza`) VALUES
(1, 1, 89, ' D00-1-1-631781', '2025-04-26', '2026-04-26', 'D00-1-1-000631781_0000-0-1_Poliza.pdf'),
(2, 1, 92, ' D00-1-1-631780', '2025-04-26', '2026-04-26', 'D00-1-1-000631780_0000-0-1_Poliza.pdf'),
(3, 1, 85, ' D00-1-1-631779', '2025-04-26', '2026-04-26', 'D00-1-1-000631779_0000-0-1_Poliza.pdf'),
(4, 1, 96, 'D00-1-1-631784', '2025-04-26', '2026-04-26', 'D00-1-1-000631784_0000-0-1_Poliza.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas_unidad_demo`
--

CREATE TABLE `pruebas_unidad_demo` (
  `id_prueba` int(11) NOT NULL,
  `id_asignacion_unidad_demo` int(11) NOT NULL,
  `fecha_prueba` datetime NOT NULL,
  `nombre_del_conductor` varchar(200) NOT NULL,
  `tipo_prueba` varchar(100) NOT NULL,
  `temperatura` decimal(10,2) NOT NULL,
  `revoluciones` decimal(10,2) NOT NULL,
  `velocidad` decimal(10,2) NOT NULL,
  `kilometraje` decimal(10,2) NOT NULL,
  `foto_tablero` varchar(200) NOT NULL,
  `foto_odometro` varchar(200) NOT NULL,
  `foto_unidad` varchar(200) NOT NULL,
  `comentarios` text NOT NULL,
  `id_colaborador_registra_prueba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pruebas_unidad_demo`
--

INSERT INTO `pruebas_unidad_demo` (`id_prueba`, `id_asignacion_unidad_demo`, `fecha_prueba`, `nombre_del_conductor`, `tipo_prueba`, `temperatura`, `revoluciones`, `velocidad`, `kilometraje`, `foto_tablero`, `foto_odometro`, `foto_unidad`, `comentarios`, `id_colaborador_registra_prueba`) VALUES
(1, 1, '2025-07-22 16:20:22', 'YASMIN HERNANDEZ FERNANDEZ', 'PRUEBA DE MANEJO', 123.00, 321.00, 543.00, 234.00, 'foto_tablero_YASMIN HERNANDEZ FERNANDEZ_LDR_LOGO.png', 'foto_odometro_YASMIN HERNANDEZ FERNANDEZ_carro_desconocido.png', 'foto_unidad_exterior_YASMIN HERNANDEZ FERNANDEZ_JETOUR_360_x70_negro.png', 'Durante la prueba se detectaron anomalias con los pedales ', 516),
(2, 2, '2025-07-22 16:31:45', 'FATIMA CORTEZ RODRIGUEZ', 'DE RENDIMIENTO', 454654.00, 908.00, 43653.00, 87698.00, 'foto_tablero_FATIMA CORTEZ RODRIGUEZ_JETOUR_360_x70plus_blanco.png', 'foto_odometro_FATIMA CORTEZ RODRIGUEZ_licencia_conducir_ejemplo.jpeg', 'foto_unidad_exterior_FATIMA CORTEZ RODRIGUEZ_aveoazul.png', 'durante la prueba se registraron anomalias con el frenado instantaneo, se ecucharon ruidos extraños en la caja de velocidades y al momento de realizar el paro del motor la unidad se sobrecalento demasiado', 389),
(3, 6, '2025-07-28 15:30:01', 'MARIO CONTRERAS RAMIREZ', 'TECNICA', 2222.00, 2222.00, 2222.00, 2222.00, 'foto_tablero_MARIO CONTRERAS RAMIREZ_carro_desconocido (1).png', 'foto_odometro_MARIO CONTRERAS RAMIREZ_licencia_conducir_ejemplo.jpeg', 'foto_unidad_exterior_MARIO CONTRERAS RAMIREZ_aveo_rojo-.png', 'cdcddccdcdcdccd', 516);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id_puesto` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `nombre_puesto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id_puesto`, `id_area`, `nombre_puesto`) VALUES
(1, 1, 'SIN ASIGNAR'),
(2, 2, 'GERENTE TECNICO COMERCIAL'),
(3, 3, 'DIRECTOR GENERAL DE MARCA'),
(4, 4, 'GERENTE DE VENTAS AUTOBUSES URBANOS'),
(5, 4, 'DIRECTOR COMERCIAL BUSES'),
(6, 4, 'GERENTE NACIONAL DE AUTOBUSES'),
(7, 10, 'GERENTE REGIONAL DE VENTAS'),
(8, 10, 'DIRECTOR DIVISIONAL VENTAS CARGA'),
(9, 5, 'GERENTE DE ADMINISTRACION COMERCIAL'),
(10, 5, 'GERENTE DE INTELIGENCIA DE NEGOCIOS COMERCIAL'),
(11, 5, 'DIRECTOR COMERCIAL'),
(12, 5, 'COORDINADOR DE PROCESOS DE INFORMACION COMERCIAL'),
(13, 5, 'ANALISTA DE ADMINISTRACION DE VENTAS'),
(14, 6, 'DIRECTOR LIGHT & MEDIUM DUTY'),
(15, 6, 'GERENTE REGIONAL DE VENTAS'),
(16, 7, 'COMERCIAL'),
(17, 7, 'ANALISTA DE INVENTARIOS'),
(18, 8, 'GERENTE REGIONAL DE VENTAS'),
(19, 8, 'DIRECTOR VANS Y PICKUP´S'),
(20, 11, 'GERENTE REGIONAL DE VENTAS'),
(21, 11, 'COMERCIAL / PASSENGERS'),
(22, 12, 'DIRECTOR COMERCIAL DE CARGA'),
(23, 13, 'CHOFER EJECUTIVO'),
(24, 14, 'GERENTE REGIONAL DE DESARROLLO DE DISTRIBUIDORES'),
(25, 14, 'DIRECTOR DE DESARROLLO DE DISTRIBUIDORES VANS & PICKUPS'),
(26, 14, 'COORDINADOR DE DESARROLLO DE DISTRIBUIDORES'),
(27, 14, 'COORDINADOR DE DESARROLLO DE DISTRIBUIDORES, FINANZAS & KPI´S'),
(28, 15, 'SUB DIRECTOR PLAN PISO'),
(29, 15, 'GERENTE PLAN PISO'),
(30, 15, 'GERENTE DE ALIANZAS Y ESTRATEGIAS RETAIL'),
(31, 16, 'SIN ASIGNAR'),
(32, 17, 'DIRECTOR GENERAL DE MARCA'),
(33, 17, 'ASISTENTE DE DIRECCION'),
(34, 18, 'SIN ASIGNAR'),
(35, 19, 'GERENTE DE MARKETING'),
(36, 19, 'ESPECIALISTA DE PRODUCTO Y COMUNICACION'),
(37, 19, 'DIRECTOR DE MARKETING'),
(38, 19, 'COORDINADOR DE MARKETING PARA DISTRIBUIDORES'),
(39, 20, 'AUXILIAR DE ALMACEN'),
(40, 20, 'COORDINADOR DE ALMACEN'),
(41, 21, 'ANALISTA DE COMPRAS'),
(42, 21, 'COORDINADOR DE COMPRAS'),
(43, 21, 'CHOFER DE COMPRAS'),
(44, 22, 'OPERADOR DE LAVADO'),
(45, 22, 'PINTOR AUTOMOTRIZ'),
(46, 22, 'COORDINADOR DE DETALLADO Y PINTURA'),
(47, 22, 'AUXILIAR DE PINTURA'),
(48, 23, 'JEFE DE ENTREGAS'),
(49, 23, 'INSPECTOR DE ENTREGAS'),
(50, 23, 'OPERADOR DE ENTREGAS'),
(51, 23, 'ANALISTA DE GESTION Y CONTROL'),
(52, 23, 'SUPERVISOR DE ENTREGAS'),
(53, 23, 'AYUDANTE GENERAL'),
(54, 23, 'ANALISTA DE INVENTARIOS'),
(55, 24, 'MONTACARGUISTA'),
(56, 24, 'OPERADOR DE MANEJO DE MATERIALES'),
(57, 24, 'SUPERVISOR DE MANEJO DE MATERIALES'),
(58, 24, 'JEFE DE MANEJO DE MATERIALES'),
(59, 24, 'AUXILIAR DE GARANTIAS KD'),
(60, 24, 'ANALISTA DE GARANTIAS'),
(61, 24, 'ANALISTA DE GARANTIAS KD'),
(62, 25, 'AUXILIAR DE MANTENIMIENTO'),
(63, 25, 'AUXILIAR DE LIMPIEZA'),
(64, 25, 'TECNICO DE MANTENIMIENTO'),
(65, 25, 'COORDINADOR DE MANTENIMIENTO'),
(66, 26, 'JEFE DE MANUFACTURA'),
(67, 26, 'INGENIERO DE MANUFACTURA'),
(68, 27, 'DIRECTOR DE PLANTA'),
(69, 27, 'SUPERVISOR DE PRODUCCION'),
(70, 27, 'TEAM LEADER'),
(71, 27, 'JEFE DE PRODUCCION'),
(72, 27, 'OPERADOR DE ENSAMBLE'),
(73, 27, 'AJUSTADOR DE ENSAMBLE'),
(74, 27, 'OPERADOR DE MANEJO DE MATERIALES'),
(75, 28, 'TECNICO REPARADOR'),
(76, 29, 'JEFE DE SEGURIDAD, HIGIENE Y ECOLOGIA'),
(77, 30, 'JEFE DEL SISTEMA DE GESTION DE CALIDAD'),
(78, 30, 'PRACTICANTE'),
(79, 31, 'TECNICO ELECTRICO'),
(80, 31, 'TECNICO MECANICO'),
(81, 31, 'COORDINADOR DE SOPORTE TECNICO'),
(82, 33, 'PLANTA / ALMACEN'),
(83, 34, 'PLANTA / CALIDAD'),
(84, 35, 'PLANTA / DETALLADO Y PINTURA'),
(85, 36, 'PLANTA / MANEJO DE MATERIALES'),
(86, 36, 'MANEJO DE MATERIALES'),
(87, 37, 'AUXILIAR DE LIMPIEZA'),
(88, 38, 'PLANTA / PRODUCCION'),
(89, 41, 'TECNICO MECANICO A'),
(90, 41, 'TECNICO MECANICO C'),
(91, 41, 'TECNICO MECANICO'),
(92, 40, 'SIN ASIGNAR'),
(93, 41, 'COMERCIAL'),
(94, 42, 'PINTOR AUTOMOTRIZ'),
(95, 43, 'COORDINADOR DE OPERACIONES'),
(96, 44, 'JEFE DE MANEJO DE MATERIALES'),
(97, 45, 'SIN ASIGNAR'),
(98, 46, 'TECNICO REPARADOR'),
(99, 47, 'MONTACARGUISTA'),
(100, 48, 'OPERADOR DE ENSAMBLE'),
(101, 49, 'TECNICO REPARADOR'),
(102, 50, 'ADMINISTRADOR DE SERVICIO'),
(103, 51, 'JEFE DE ALMACEN'),
(104, 51, 'OPERADOR DE ENSAMBLE'),
(105, 52, 'ANALISTA DE INVENTARIO / REFACCIONES'),
(106, 53, 'INGENIERO DE PRODUCTO VENTAS GOBIERNO'),
(107, 53, 'COORDINADOR DE VENTAS GOBIERNO'),
(108, 53, 'DIRECTOR DE VENTAS GOBIERNO Y LICITACIONES'),
(109, 53, 'COORDINADOR CORPORATIVO DE ADMINISTRACION COMERCIAL/LICITACIONES'),
(110, 54, 'INGENIERO DE PRODUCTO COMERCIAL'),
(111, 55, 'DIRECTOR GENERAL DE MARCA'),
(112, 56, 'ASISTENTE DE DIRECCION'),
(113, 57, 'AUXILIAR DE LIMPIEZA'),
(114, 58, 'GERENTE COMERCIAL DE ZONA'),
(115, 58, 'GERENTE NACIONAL DE VENTAS'),
(116, 58, 'DIRECTOR COMERCIAL'),
(117, 58, 'BECARIO DE ADMINISTRACION DE VENTAS'),
(118, 58, 'GERENTE COMERCIAL DE FLOTILLAS'),
(119, 58, 'GERENTE DE PLANEACION DE VENTAS'),
(120, 59, 'COMERCIAL'),
(121, 59, 'GERENTE COMERCIAL DE ZONA'),
(122, 59, 'BECARIO DE ADMINISTRACION DE VENTAS'),
(123, 60, 'GERENTE REGIONAL DE DESARROLLO DE DISTRIBUIDORES'),
(124, 60, 'DIRECTOR DE DESARROLLO DE DISTRIBUIDORES'),
(125, 60, 'COORDINADOR DE PROYECTOS'),
(126, 61, 'COORDINADOR DE PROYECTOS'),
(127, 62, 'DIRECTOR GENERAL DE MARCA'),
(128, 62, 'ASISTENTE DE DIRECCIÓN'),
(129, 63, 'DIRECCION'),
(130, 64, 'COORDINADOR DEALERS'),
(131, 64, 'DIRECTOR DE MARKETING'),
(132, 64, 'ESPECIALISTA DE PRODUCTO'),
(133, 65, 'COMERCIAL'),
(134, 65, 'GERENTE DE OPERACIONES COMERCIALES'),
(135, 65, 'ANALISTA DE ADMINISTRACION COMERCIAL'),
(136, 66, 'DIRECTOR DE DESARROLLO DE DISTRIBUIDORES'),
(137, 67, 'DIRECCION GENERAL'),
(138, 68, 'GERENTE REGIONAL DE ZONA POSVENTA'),
(139, 91, 'COORDINADOR DE IMPORTACION Y LOGISTICA'),
(140, 70, 'COMERCIAL'),
(141, 71, 'CONSEJERO / COMERCIAL'),
(142, 71, 'CONSEJERO- FINANZAS Y ADMINISTRACION'),
(143, 71, 'CONSEJERO / POSVENTA E INFRAESTRUCTURA'),
(144, 71, 'CHOFER EJECUTIVO'),
(145, 71, 'DIRECTOR GENERAL LDR SOLUTIONS'),
(146, 72, 'BUSINESS MANAGER'),
(147, 72, 'ASISTENTE DE DIRECCION GENERAL LDR SOLUTIONS'),
(148, 72, 'ASISTENTE DE DIRECCION'),
(149, 72, 'DIRECTOR CORPORATIVO DE MARCAS PREMIUM'),
(150, 73, 'DIRECCION GENERAL'),
(151, 74, 'GERENTE DE ADMINISTRACION Y FINANZAS'),
(152, 74, 'DIRECTOR CORPORATIVO DE FINANZAS Y ADMINISTRACION'),
(153, 74, 'ANALISTA DE CUENTAS POR COBRAR'),
(154, 74, 'GERENTE DE CONTABILIDAD'),
(155, 74, 'AUXILIAR CONTABLE'),
(156, 74, 'GERENTE DE DESARROLLO DE NEGOCIOS FINANCIEROS'),
(157, 74, 'ANALISTA FINANCIERO'),
(158, 74, 'COORDINADOR CONTABLE'),
(159, 74, 'DIRECTOR DE FINANZAS'),
(160, 74, 'ANALISTA DE VIATICOS'),
(161, 74, 'TESORERIA'),
(162, 74, 'COORDINADOR DE TESORERIA'),
(163, 75, 'FINANZAS'),
(164, 76, 'GERENTE CORPORATIVO DE CONTROL INTERNO'),
(165, 76, 'ANALISTA DE SISTEMA DE GESTION DE CALIDAD'),
(166, 76, 'ANALISTA DE AUDITORIA INTERNA'),
(167, 76, 'ANALISTA DE CONTROL INTERNO'),
(168, 76, 'GERENTE CORPORATIVO DE AUDITORIA INTERNA'),
(169, 77, 'AUXILIAR JURIDICO'),
(170, 77, 'COORDINADOR JURIDICO'),
(171, 77, 'COORDINADOR DE GESTIONES GUBERNAMENTALES'),
(172, 77, 'GERENTE JURIDICO CORPORATIVO'),
(173, 77, 'DIRECTOR JURIDICO CORPORATIVO'),
(174, 77, 'AUXILIAR ADMINISTRATIVO VEHICULAR'),
(175, 77, 'AUXILIAR ADMINISTRATIVO'),
(176, 77, 'BECARIO CORPORATIVO JURIDICO'),
(177, 77, 'ANALISTA DE GESTIONES GUBERNAMENTALES'),
(178, 78, 'ANALISTA DE EVENTOS Y PROMOCIONALES'),
(179, 78, 'COORDINADOR DE EVENTOS'),
(180, 78, 'COORDINADOR DE COMPRAS'),
(181, 78, 'COORDINADOR DE COMUNICACION'),
(182, 78, 'EDITOR AUDIOVISUAL'),
(183, 78, 'DESARROLLADOR WEB SENIOR'),
(184, 78, 'COORDINADOR DIGITAL'),
(185, 78, 'DISEÑADOR'),
(186, 78, 'COORDINADOR DE EVENTOS / GESTOR DE UNIDADES'),
(187, 78, 'SPORTS MARKETING'),
(188, 78, 'ANALISTA DIGITAL'),
(189, 78, 'ANALISTA DE ATENCION A CLIENTES'),
(190, 78, 'COORDINADOR DE DISEÑO Y ANIMACION'),
(191, 78, 'DESARROLLADOR WEB JR'),
(192, 78, 'GERENTE DE MARKETING MULTIMARCAS Y EVENTOS'),
(193, 79, 'DIRECTOR CORPORATIVO DE INTELIGENCIA DE MERCADOS'),
(194, 79, 'MARKETING INTELLIGENCE'),
(195, 79, 'BECARIO DE ANALISIS DE DATOS'),
(196, 80, 'INSPECTOR DE CALIDAD'),
(197, 80, 'JEFE DE CALIDAD DE PRODUCTO'),
(198, 80, 'ANALISTA DE CALIDAD'),
(199, 81, 'ANALISTA DE ENTREGA Y MOVIMIENTO DE UNIDADES'),
(200, 81, 'COORDINADOR DE LOGISTICA'),
(201, 81, 'GERENTE DE LOGISTICA Y ENVÍOS'),
(202, 81, 'ANALISTA DE LOGISTICA'),
(203, 81, 'ANALISTA DE LOGISTICA Y DISTRIBUCION'),
(204, 81, 'ANALISTA DE LOGISTICA DE ADMINISTRACION DE DAÑOS'),
(205, 81, 'GERENTE DE LOGISTICA Y DISTRIBUCION'),
(206, 81, 'AUXILIAR DE LOGISTICA'),
(207, 82, 'GERENTE DE INGENIERIA DE PRODUCTO'),
(208, 82, 'GERENTE COMERCIAL DE INGENIERIA DE PRODUCTO'),
(209, 82, 'ANALISTA DE INGENIERIA DE PRODUCTO'),
(210, 82, 'ANALISTA DE INGENIERIA COMERCIAL DIVISION CARGA'),
(211, 83, 'DIRECTOR CORPORATIVO DE OPERACIONES'),
(212, 83, 'GERENTE DE PROYECTO'),
(213, 83, 'GERENTE DE CALIDAD PRODUCCION Y SISTEMA DE GESTION DE CALIDAD'),
(214, 83, 'DIRECTOR CORPORATIVO DE COMPRAS'),
(215, 83, 'GERENTE DE CAPACITACION / OPERACIONES'),
(216, 83, 'MASTER DRIVER'),
(217, 85, 'OPERADOR DE MANEJO DE MATERIALES'),
(218, 86, 'ANALISTA DE GARANTIAS'),
(219, 86, 'LIDER DE PROYECTO BUSES / MTY'),
(220, 86, 'JEFE DE TALLER BUSES / MTY'),
(221, 86, 'SUPERVISOR DE TALLER BUSES MONTERREY / NOCTURNO'),
(222, 86, 'TECNICO MECANICO A'),
(223, 86, 'PLANEADOR DE MANTENIMIENTOS'),
(224, 86, 'ANALISTA DE CORRECTIVOS'),
(225, 86, 'TECNICO MECANICO B'),
(226, 86, 'GERENTE DE SERVICIO'),
(227, 86, 'SUPERVISOR DE TALLER BUSES MONTERREY / MATUTINO'),
(228, 86, 'TECNICO MECANICO C'),
(229, 86, 'INGENIERO DE SERVICIO'),
(230, 86, 'INGENIERO DE SERVICIO PROYECTO GUATEMALA'),
(231, 86, 'ANALISTA DE MANTENIMIENTOS PREVENTIVOS'),
(232, 86, 'AYUDANTE DE MECANICO'),
(233, 86, 'ANALISTA DE FACTURACION'),
(234, 86, 'INSTRUCTOR DE CAPACITACION'),
(235, 87, 'COORDINADOR CUSTOMER EXPERIENCE'),
(236, 87, 'ANALISTA DE ATENCION A CLIENTES'),
(237, 87, 'GERENTE CORPORATIVO DE CUSTOMER EXPERIENCE'),
(238, 87, 'CONSULTOR DE PROCESOS DE VENTA Y POSVENTA'),
(239, 88, 'PLANEADOR'),
(240, 88, 'COORDINADOR DE GARANTIAS'),
(241, 88, 'ADMINISTRADOR DE CUENTAS CORPORATIVAS'),
(242, 88, 'GERENTE DE ADMINISTRACION DE CUENTAS CORPORATIVAS'),
(243, 88, 'EJECUTIVO DE CUENTA'),
(244, 88, 'ASISTENTE DE GARANTIAS'),
(245, 88, 'GERENTE CORPORATIVO DE ADMINISTRACION DE GARANTIAS'),
(246, 89, 'GERENTE ZONAL POSVENTA'),
(247, 89, 'GERENTE CORPORATIVO DE OPERACIONES DE CAMPO'),
(248, 90, 'DIRECTOR CORPORATIVO DE POSVENTA'),
(249, 90, 'ADMINISTRADOR DE POSVENTA'),
(250, 91, 'GERENTE DE DESARROLLO Y COMPRAS NACIONALES'),
(251, 91, 'EJECUTIVO DE CUENTA VIP'),
(252, 91, 'DIRECTOR DE REFACCIONES'),
(253, 91, 'EJECUTIVO DE CUENTA / REGIONAL'),
(254, 91, 'DESARROLLADOR DE CATALOGOS WEB'),
(255, 91, 'EJECUTIVO DE CUENTA PARA LDR'),
(256, 91, 'ADMINISTRADOR DE REFACCIONES'),
(257, 91, 'JEFE DE ALMACEN'),
(258, 91, 'GERENTE DE OPERACIONES'),
(259, 91, 'JEFE DE PISO ALMACEN'),
(260, 91, 'ALMACENISTA'),
(261, 91, 'PLANEADOR DE INVENTARIOS'),
(262, 91, 'ANALISTA DE CONTROL DE RECIBOS ALMACEN'),
(263, 91, 'ANALISTA DE CONTROL DE ORDENES Y DISTRIBUCION'),
(264, 91, 'ALMACENISTA - MONTACARGUISTA'),
(265, 91, 'EJECUTIVO DE CUENTA'),
(266, 92, 'GERENTE CORPORATIVO DE SERVICIO'),
(267, 92, 'COORDINADOR DE ASISTENCIA TECNICA'),
(268, 92, 'ASISTENTE SOPORTE TECNICO'),
(269, 92, 'COORDINADOR DE CAPACITACION TECNICA'),
(270, 93, 'POSVENTA'),
(271, 93, 'GERENTE ZONAL POSVENTA'),
(272, 93, 'ALMACENISTA'),
(273, 93, 'AYUDANTE DE MECANICO'),
(274, 94, 'GERENTE DE CAPACITACION TECNICA'),
(275, 94, 'COORDINADOR DE ASISTENCIA TECNICA'),
(276, 94, 'GERENTE DE SERVICIO TECNICO'),
(277, 95, 'GERENTE CORPORATIVO DE VENTAS Y MARKETING DE REFAC'),
(278, 95, 'EJECUTIVO DE CUENTA'),
(279, 95, 'COORDINADOR DE ACCESORIOS Y COMPETITIVIDAD'),
(280, 95, 'ANALISTA DE CATALOGOS Y HERRAMIENTAS DE CONSULTA'),
(281, 95, 'GERENTE DE OPERACIONES'),
(282, 95, 'ALMACENISTA'),
(283, 95, 'JEFE DE ALMACEN'),
(284, 95, 'COORDINADOR DE IMPORTACION Y LOGISTICA'),
(285, 95, 'BECARIO DE IMPORTACIONES'),
(286, 95, 'ANALISTA DE ENVIOS'),
(287, 98, 'ALMACENISTA'),
(288, 99, 'TECNICO MECANICO B'),
(289, 99, 'TECNICO MECANICO C'),
(290, 99, 'TECNICO MECANICO A'),
(291, 100, 'CONSULTOR DE PROCESOS'),
(292, 101, 'COORDINADOR DE IMPORTACION Y LOGISTICA'),
(293, 102, 'ANALISTA DE ATRACCION DE TALENTO'),
(294, 103, 'COORDINADOR DE COMUNICACION'),
(295, 104, 'COORDINADOR DE DESARROLLO ORGANIZACIONAL Y CAPACITACION'),
(296, 104, 'BECARIO DE CAPACITACION'),
(297, 105, 'ANALISTA DE NOMINA'),
(298, 105, 'COORDINADOR CORPORATIVO DE NOMINA, BENEFICIOS Y COMPENSACIONES'),
(299, 105, 'BECARIO DE NOMINA'),
(300, 106, 'ENFERMERA'),
(301, 106, 'GENERALISTA DE RECURSOS HUMANOS'),
(302, 106, 'GERENTE CORPORATIVO DE RECURSOS HUMANOS'),
(303, 106, 'DIRECTOR CORPORATIVO DE RECURSOS HUMANOS'),
(304, 106, 'AUXILIAR DE LIMPIEZA'),
(305, 106, 'CHOFER EJECUTIVO'),
(306, 106, 'RECEPCIONISTA'),
(307, 107, 'RECURSOS HUMANOS'),
(308, 107, 'AUXILIAR DE LIMPIEZA'),
(309, 107, 'LIDER DE MARCA EMPLEADORA'),
(310, 107, 'AUXILIAR DE MANTENIMIENTO CORPORATIVO'),
(311, 108, 'ALMACENISTA'),
(312, 108, 'REFACCIONES'),
(313, 109, 'VICEPRESIDENTE CORPORATIVO COMERCIAL Y DE RELACIONES INSTITUCIONALES'),
(314, 109, 'ASISTENTE DE DIRECCION'),
(315, 109, 'CHOFER EJECUTIVO'),
(316, 109, 'DIRECTOR CORPORATIVO DE RELACIONES INSTITUCIONALES'),
(317, 110, 'COORDINADOR DE SERVICIOS GENERALES'),
(318, 110, 'COORDINADOR CORPORATIVO DE MANTENIMIENTO'),
(319, 110, 'COORDINADOR DE LIMPIEZA'),
(320, 110, 'GERENTE CORPORATIVO DE SERVICIOS GENERALES Y DE PERSONAL'),
(321, 110, 'AUXILIAR DE LIMPIEZA'),
(322, 110, 'AUXILIAR DE MANTENIMIENTO'),
(323, 111, 'ANALISTA FINANCIERO'),
(324, 112, 'FINANZAS'),
(325, 113, 'GERENTE DE SERVICIO'),
(326, 113, 'POSVENTA'),
(327, 114, 'RECURSOS HUMANOS'),
(328, 114, 'COORDINADOR DE NOMINA Y COMPENSACIONES'),
(329, 115, 'SISTEMA DE GESTION DE CALIDAD'),
(330, 116, 'GERENTE CORPORATIVO TI'),
(331, 116, 'ANALISTA SOPORTE TECNICO'),
(332, 116, 'PROJECT MANAGER'),
(333, 116, 'DESARROLLADOR IT'),
(334, 117, 'DIRECTOR GENERAL DE MARCA'),
(335, 118, 'SUPERVISOR DE PATIO'),
(336, 118, 'GERENTE NACIONAL DE OPERACIONES'),
(337, 118, 'CHOFER LAVADOR'),
(338, 119, 'SUPERVISOR MECANICO'),
(339, 120, 'DIRECTOR GENERAL DE MARCA'),
(340, 121, 'MAGNET'),
(341, 122, 'MARKETING'),
(342, 123, 'MARKETING'),
(343, 124, 'DIRECTOR GENERAL DE MARCA'),
(344, 125, 'ANALISTA DE TELEMETRIA'),
(345, 126, 'TECNICO INSTALADOR DE TELEMETRIA'),
(346, 126, 'MONITORISTA'),
(347, 126, 'TELEMETRIA'),
(348, 127, 'TECNICO INSTALADOR DE TELEMETRIA'),
(349, 127, 'GERENTE DE INGENIERIA DE PRODUCTO'),
(350, 127, 'GERENTE DE OPERACIONES'),
(351, 127, 'ANALISTA DE TELEMETRIA'),
(352, 127, 'COORDINADOR DE ADMINISTRACION'),
(353, 127, 'ESPECIALISTA TECNICO'),
(354, 127, 'COORDINADOR DE INSTALACIONES'),
(355, 127, 'COORDINADOR DE SOPORTE TECNICO'),
(356, 127, 'GERENTE COMERCIAL'),
(357, 127, 'ASISTENTE DE SOPORTE TECNICO'),
(358, 127, 'COORDINADOR DE MONITOREO'),
(359, 127, 'MONITORISTA'),
(360, 127, 'AUXILIAR TECNICO DE TELEMETRIA'),
(361, 127, 'COORDINADOR DE DESARROLLO DE SOFTWARE'),
(362, 127, 'AUXILIAR ADMINISTRATIVO'),
(363, 128, 'DESARROLLADOR ADVANCE'),
(364, 24, 'PRACTICANTE DE MANEJO DE MATERIALES'),
(365, 78, 'Coordinador de Comunicación y Publicidad'),
(366, 58, 'Gerente de Desarrollo de Negocios'),
(367, 41, 'TECNICO ELECTROMECANICO A'),
(368, 41, 'COORDINADOR DE INGENIEROS DE SERVICIO EN CAMPO'),
(369, 127, 'AUXILIAR DE MANTENIMIENTO'),
(370, 127, 'DISEÑADOR GRAFICO SENIOR'),
(371, 90, 'GERENTE REGIONAL DE POSVENTA'),
(372, 127, 'SOPORTE TECNICO TELEMATICS'),
(373, 5, 'ASESOR PROFESIONAL DE VENTA DIGITAL AUTOMOTRIZ'),
(374, 79, 'ESPECIALISTA DE INTELIGENCIA DE MERCADO'),
(375, 90, 'ASISTENTE DE DIRECCION'),
(376, 90, 'PLANEADOR DE CUENTAS COORPORATIVAS'),
(377, 81, 'GERENTE DE LOGISTICA'),
(378, 116, 'CONSULTOR DE SISTEMAS DE NEGOCIO'),
(379, 90, 'GERENTE DE LOGISTICA'),
(381, 127, 'GERENTE DE DESARROLLO FULL STACK'),
(382, 15, 'ANALISTA DE COBRANZA JR'),
(383, 10, 'ASESOR COMERCIAL'),
(384, 102, 'COORDINADOR CORPORATIVO DE ATRACCION DE TALENTO'),
(385, 118, 'ASESOR ESTRATEGICO'),
(386, 26, 'PRACTICANTE'),
(387, 91, 'COORDINADOR DE PROCESOS Y OPERACIONES'),
(388, 91, 'GERENTE DE OPERACIONES INTERNAS DEL ALMACEN DE REFACCIONES'),
(389, 91, 'COORDINADOR DE LOGISTICA INVERSA (RMA) Y RECLAMACIONES DE IMPORTACION'),
(390, 91, 'BECARIO DE IMPORTACIONES'),
(391, 91, 'ANALISTA DE ENVIOS'),
(392, 127, 'GERENTE DE SOPORTE TECNICO'),
(393, 91, 'ANALISTA DE INVENTARIOS CICLICOS'),
(394, 90, 'COORDINADOR ADMINISTRATIVO DE SERVICIO'),
(395, 131, 'SUPERVISOR DE SOPORTE TECNICO'),
(396, 127, 'INGENIERO DE SOPORTE TECNICO'),
(397, 132, 'GERENTE DE COMPRAS'),
(398, 132, 'COORDINADOR DE COMPRAS'),
(399, 132, 'ANALISTA DE VIATICOS'),
(400, 25, 'SUPERVISOR DE SERVICIOS GENERALES'),
(401, 89, 'COORDINADOR DE CUENTAS CORPORATIVAS'),
(402, 5, 'GERENTE REGIONAL DE VENTAS VEHICULOS ELECTRICOS'),
(403, 71, 'GERENTE DE COMPRAS'),
(404, 80, 'SUPERVISOR DE CALIDAD'),
(405, 79, 'GERENTE DE INTELIGENCIA DE NEGOCIOS'),
(406, 78, 'COORDINADOR DE MARKETING / ESTRATEGIA DIGITAL'),
(407, 54, 'GERENTE COMERCIAL'),
(408, 78, 'GERENTE DE DISEÑO'),
(409, 79, 'COORDINADOR DE MARKETING INTELLIGENCE'),
(410, 116, 'COORDINADOR DE SOPORTE TECNICO'),
(411, 127, 'COORDINADOR ADMINISTRATIVO DE INGENIERIA DE PRODUCTO'),
(412, 8, 'DIRECTOR DE MARKETING VANS & PICKUPS'),
(413, 14, 'COORDINADOR DE PROYECTOS'),
(414, 5, 'GERENTE COMERCIAL BVD'),
(415, 8, 'ESPECIALISTA DE PRODUCTO '),
(416, 8, 'GERENTE DE FLOTILLAS VANS & PICKUPS'),
(417, 5, 'GERENTE DE CAPACITACION COMERCIAL'),
(418, 53, 'GERENTE DE LICITACIONES Y VENTAS GUBERNAMENTALES'),
(419, 132, 'ANALISTA DE COMPRAS'),
(420, 99, 'ASESOR DE MANTENIMIENTO PREVENTIVO'),
(421, 127, 'ANALISTA SMART CONNECT'),
(422, 99, 'ASESOR DE MANTENIMIENTO CORRECTIVO'),
(423, 29, 'PRACTICANTE DE SEGURIDAD,HIGIENE Y ECOLOGIA'),
(425, 127, 'ANALISTA DE COBRANZA'),
(426, 127, 'ESPECIALISTA SMART CONNECT'),
(427, 105, 'AUXILIAR DE NOMINAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisiones`
--

CREATE TABLE `revisiones` (
  `id_revision` int(11) NOT NULL,
  `id_tipo_revision` int(11) NOT NULL,
  `nombre_revision` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revisiones`
--

INSERT INTO `revisiones` (`id_revision`, `id_tipo_revision`, `nombre_revision`) VALUES
(1, 1, 'ANTENA'),
(2, 1, 'ENCENDEDOR'),
(3, 1, 'LLAVE CAJUELA'),
(4, 1, 'TAPETES'),
(5, 1, 'BOCINAS'),
(6, 1, 'ESTEREO CON CD'),
(7, 1, 'LLAVE ENCENDIDO'),
(8, 1, 'TRIÁNGULOS REF.'),
(9, 1, 'CENICEROS'),
(10, 1, 'EXTINGUIDOR'),
(11, 1, 'LLAVE DE PUERTAS'),
(12, 1, 'CINTURONES'),
(13, 1, 'GATO'),
(14, 1, 'RADIO'),
(15, 1, 'EMBLEMAS'),
(16, 1, 'LLAVE DE BIRLOS'),
(17, 1, 'RINES'),
(18, 1, 'OTROS'),
(19, 2, 'ACUMULADOR'),
(20, 2, 'DEFENSA DELANTERA'),
(21, 2, 'ALETAS'),
(22, 2, 'DEFENSA TRASERA'),
(23, 2, 'CALAVERAS'),
(24, 2, 'LLANTA DE REFACCIÓN'),
(25, 2, 'CUARTOS DE LUCES'),
(26, 2, 'ESPEJOS LATERALES'),
(27, 2, 'FAROS'),
(29, 2, 'ESPEJO RETROVISOR'),
(30, 2, 'GASOMETRO'),
(31, 2, 'CINTURONES DE SEGURIDAD'),
(32, 2, 'LIMPIADORES'),
(33, 2, 'PALANCA LUCES DIRECCIONES'),
(34, 2, 'MANIJAS EXTERIORES'),
(35, 2, 'PALANCA O BOTON DE LUCES'),
(36, 2, 'MANIJAS INTERIORES'),
(37, 2, 'PALANCA  DE VELOCIDADES'),
(38, 2, 'MOLDURAS'),
(39, 2, 'ODOMETRO'),
(40, 2, 'DELANTERA DERECHA'),
(41, 2, 'PARABRISAS'),
(42, 2, 'DELANTERA IZQUIERDA'),
(43, 2, 'PARRILLA'),
(44, 2, 'TRASERA DERECHA'),
(45, 2, 'SEGUROS DE ALETAS'),
(46, 2, 'TRASERA IZQUIERDA'),
(47, 2, 'TABLERO'),
(48, 2, 'TAPÓN DE ACEITE'),
(49, 2, 'TAPÓN DE GASOLINA'),
(50, 2, 'TAPÓN DE RADIADOR'),
(51, 2, 'TAPONES DE RINES'),
(52, 2, 'VELOCIMETRO'),
(53, 2, 'VESTIDURAS Y ASIENTOS'),
(54, 2, 'VIDRIO TRASERO'),
(55, 2, 'VIDRIOS LATERALES'),
(56, 2, 'VOLANTE'),
(57, 2, 'TOLDO'),
(58, 2, 'TOPES DE DEFENSA'),
(59, 2, 'BISELES'),
(60, 2, 'CAJUELA CHAPAS'),
(61, 2, 'COFRE'),
(62, 2, 'DELANTERA DERECHA'),
(63, 2, 'DELANTERA IZQUIERDA'),
(64, 2, 'TRASERA DERECHA'),
(65, 2, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisiones_unidades`
--

CREATE TABLE `revisiones_unidades` (
  `id_revisiones_unidades` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `ubicacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id_sede`, `ubicacion`) VALUES
(1, 'GUADALAJARA'),
(2, 'LAGOS DE MORENO'),
(3, 'MONTERREY'),
(4, 'QUERETARO'),
(5, 'SANTA FE'),
(6, 'TABASCO'),
(7, 'TECAMAC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tenencias`
--

CREATE TABLE `tenencias` (
  `id_tenencias` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `folio` varchar(50) DEFAULT NULL,
  `año_semestre` year(4) NOT NULL,
  `id_estatus_tenencias` int(11) NOT NULL,
  `monto_pago` int(11) NOT NULL DEFAULT 0,
  `fecha_pago` date DEFAULT NULL,
  `fecha_vencimiento` date NOT NULL,
  `documento_tenencia` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tenencias`
--

INSERT INTO `tenencias` (`id_tenencias`, `id_unidad`, `folio`, `año_semestre`, `id_estatus_tenencias`, `monto_pago`, `fecha_pago`, `fecha_vencimiento`, `documento_tenencia`) VALUES
(1, 1, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(2, 2, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(3, 3, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(4, 4, '1146395309', '2025', 1, 923, '0000-00-00', '0000-00-00', 'comodato_COMODATO_URIEL.pdf'),
(5, 5, '1146396784', '2025', 1, 923, '0000-00-00', '0000-00-00', ''),
(6, 6, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(7, 7, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(8, 8, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(9, 9, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(10, 10, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(11, 11, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(12, 12, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(13, 13, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(14, 14, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(15, 15, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(16, 16, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(17, 17, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(18, 18, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(19, 19, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(20, 20, '114747743', '2025', 1, 5, '0000-00-00', '0000-00-00', ''),
(21, 21, '114747942', '2025', 1, 5, '0000-00-00', '0000-00-00', ''),
(22, 22, '114747943', '2025', 1, 5, '0000-00-00', '0000-00-00', ''),
(23, 23, '114747742', '2025', 1, 5, '0000-00-00', '0000-00-00', ''),
(24, 24, '114747740', '2025', 1, 6, '0000-00-00', '0000-00-00', ''),
(25, 25, '114747745', '2025', 1, 6, '0000-00-00', '0000-00-00', ''),
(26, 26, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(27, 27, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(28, 28, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(29, 29, '114779000', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(30, 30, '114747972', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(31, 31, '114747973', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(32, 32, '114747977', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(33, 33, '114747979', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(34, 34, '114747982', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(35, 35, '114747975', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(36, 36, '114747970', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(37, 37, '114747971', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(38, 38, '114747983', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(39, 39, '114747978', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(40, 40, '115286362', '2025', 1, 3, '0000-00-00', '0000-00-00', ''),
(41, 41, '115286364', '2025', 1, 1, '0000-00-00', '0000-00-00', ''),
(42, 42, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(43, 43, '114747985', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(44, 44, '114747987', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(45, 45, '114747981', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(46, 46, '114747984', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(47, 47, '114747990', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(48, 48, '114747991', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(49, 49, '114747989', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(50, 50, '114747988', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(51, 51, '114747794', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(52, 52, '114747968', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(53, 53, '114747969', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(54, 54, '114747962', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(55, 55, '114747958', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(56, 56, '114747945', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(57, 57, '114747961', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(58, 58, '114747952', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(59, 59, '114748023', '2025', 1, 34, '0000-00-00', '0000-00-00', ''),
(60, 60, '114747946', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(61, 61, '114747953', '2025', 1, 12, '0000-00-00', '0000-00-00', ''),
(62, 62, '114747948', '2025', 1, 12, '0000-00-00', '0000-00-00', ''),
(63, 63, '114747944', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(64, 64, '114748013', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(65, 65, '114748010', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(66, 66, '114748007', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(67, 67, '114748014', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(68, 68, '114747995', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(69, 69, '114747996', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(70, 70, '114747993', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(71, 71, '114748002', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(72, 72, '114748000', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(73, 73, '114747998', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(74, 74, '114747999', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(75, 75, '114748001', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(76, 76, '114747997', '2025', 1, 8, '0000-00-00', '0000-00-00', ''),
(77, 77, '114748017', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(78, 78, '114748008', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(79, 79, '114748009', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(80, 80, '114748011', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(81, 81, '114748012', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(82, 82, '114748015', '2025', 1, 9, '0000-00-00', '0000-00-00', ''),
(83, 83, '114778910', '2025', 1, 13, '0000-00-00', '0000-00-00', ''),
(84, 84, '114747746', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(85, 85, '114748161', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(86, 86, '114748153', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(87, 87, '114748169', '2025', 1, 1, '0000-00-00', '0000-00-00', ''),
(88, 88, '114748147', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(89, 89, '114748165', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(90, 90, '114748167', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(91, 91, '114748020', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(92, 92, '114748163', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(93, 93, '114748016', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(94, 94, '114748157', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(95, 95, '114748018', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(96, 96, '114748168', '2025', 1, 11, '0000-00-00', '0000-00-00', ''),
(97, 97, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(98, 98, '114747926', '2025', 1, 15, '0000-00-00', '0000-00-00', ''),
(99, 99, '114747902', '2025', 1, 17, '0000-00-00', '0000-00-00', ''),
(100, 100, '114747966', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(101, 101, '114747967', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(102, 102, '114747956', '2025', 1, 6, '0000-00-00', '0000-00-00', ''),
(103, 103, '114747960', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(104, 104, '114747949', '2025', 1, 6, '0000-00-00', '0000-00-00', ''),
(105, 105, '114747950', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(106, 106, '114747959', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(107, 107, '114747947', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(108, 108, '114747964', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(109, 109, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(110, 110, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(111, 111, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(112, 112, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(113, 113, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(114, 114, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(115, 115, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(116, 116, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(117, 117, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(118, 118, '115286360', '2025', 1, 14, '0000-00-00', '0000-00-00', ''),
(119, 119, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(120, 120, '115288724', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(121, 121, '115288730', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(122, 122, '115288737', '2025', 1, 7, '0000-00-00', '0000-00-00', ''),
(123, 123, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(124, 124, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(125, 125, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(126, 126, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(127, 127, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(128, 128, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(129, 129, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(130, 130, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(131, 131, '', '2025', 2, 0, '0000-00-00', '0000-00-00', ''),
(132, 133, '65345678', '2025', 1, 2345, '2025-05-08', '2025-09-18', 'comodato_COMODATO_URIEL.pdf'),
(133, 4, '3456', '2025', 1, 234, '2025-05-21', '2025-08-28', 'comodato_COMODATO_URIEL (1).pdf'),
(134, 143, '65345678', '2025', 1, 34000, '2025-06-03', '2025-08-20', 'comodato_COMODATO_URIEL.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_cajas`
--

CREATE TABLE `tipos_cajas` (
  `id_tipo_caja` int(11) NOT NULL,
  `tipo_caja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_cajas`
--

INSERT INTO `tipos_cajas` (`id_tipo_caja`, `tipo_caja`) VALUES
(1, 'SECA'),
(2, 'REFRIGERADA'),
(3, 'ABIERTA'),
(4, 'SIN CAJA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_combustibles`
--

CREATE TABLE `tipos_combustibles` (
  `id_tipo_combustible` int(11) NOT NULL,
  `combustible` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_combustibles`
--

INSERT INTO `tipos_combustibles` (`id_tipo_combustible`, `combustible`) VALUES
(1, 'GASOLINA'),
(2, 'DIESEL'),
(3, 'ELÉCTRICO'),
(4, 'HELÉCTRICO'),
(5, 'HÍBRIDO'),
(6, 'GAS LP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_frenos`
--

CREATE TABLE `tipos_frenos` (
  `id_tipo_freno` int(11) NOT NULL,
  `tipo_freno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_frenos`
--

INSERT INTO `tipos_frenos` (`id_tipo_freno`, `tipo_freno`) VALUES
(1, 'HIRÁULICO'),
(2, 'AIRE'),
(3, 'ABS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_recidencias_externos`
--

CREATE TABLE `tipos_recidencias_externos` (
  `id_tipo_recidencia` int(11) NOT NULL,
  `tipo_residencia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_recidencias_externos`
--

INSERT INTO `tipos_recidencias_externos` (`id_tipo_recidencia`, `tipo_residencia`) VALUES
(1, 'TEMPORAL'),
(2, 'PERMANENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_suspenciones`
--

CREATE TABLE `tipos_suspenciones` (
  `id_tipo_suspencion` int(11) NOT NULL,
  `tipo_suspencion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_suspenciones`
--

INSERT INTO `tipos_suspenciones` (`id_tipo_suspencion`, `tipo_suspencion`) VALUES
(1, 'CONVENCIONAL'),
(2, 'NEHUMÁTICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usos`
--

CREATE TABLE `tipos_usos` (
  `id_tipo_uso` int(11) NOT NULL,
  `tipo_uso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_usos`
--

INSERT INTO `tipos_usos` (`id_tipo_uso`, `tipo_uso`) VALUES
(1, 'CARGA LIGERA'),
(2, 'CARGA PESADA'),
(3, 'PASAJEROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_adquisicion`
--

CREATE TABLE `tipo_adquisicion` (
  `id_tipo_adquisicion` int(11) NOT NULL,
  `nombre_tipo_adquisicion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_adquisicion`
--

INSERT INTO `tipo_adquisicion` (`id_tipo_adquisicion`, `nombre_tipo_adquisicion`) VALUES
(1, 'Compra directa'),
(2, 'Arrendamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_asignaciones`
--

CREATE TABLE `tipo_asignaciones` (
  `id_tipo_asignaciones` int(11) NOT NULL,
  `nombre_tipo_asignacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_asignaciones`
--

INSERT INTO `tipo_asignaciones` (`id_tipo_asignaciones`, `nombre_tipo_asignacion`) VALUES
(1, 'Temporal'),
(2, 'Exclusiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_directivos`
--

CREATE TABLE `tipo_directivos` (
  `id_tipo_directivo` int(11) NOT NULL,
  `nombre_tipo_directivo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_directivos`
--

INSERT INTO `tipo_directivos` (`id_tipo_directivo`, `nombre_tipo_directivo`) VALUES
(1, 'Director marca'),
(2, 'Director'),
(3, 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evidencia`
--

CREATE TABLE `tipo_evidencia` (
  `id_tipo_evidencia` int(11) NOT NULL,
  `nombre_tipo_evidencia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_evidencia`
--

INSERT INTO `tipo_evidencia` (`id_tipo_evidencia`, `nombre_tipo_evidencia`) VALUES
(1, 'Asignacion'),
(2, 'Devolucion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_incidencias`
--

CREATE TABLE `tipo_incidencias` (
  `id_tipo_incidencias` int(11) NOT NULL,
  `nombre_tipo_inicidencias` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_incidencias`
--

INSERT INTO `tipo_incidencias` (`id_tipo_incidencias`, `nombre_tipo_inicidencias`) VALUES
(1, 'Robo'),
(2, 'Accidente'),
(3, 'Daño menor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mantenimiento`
--

CREATE TABLE `tipo_mantenimiento` (
  `id_tipo_mantenimiento` int(11) NOT NULL,
  `nombre_tipo_mantenimiento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_mantenimiento`
--

INSERT INTO `tipo_mantenimiento` (`id_tipo_mantenimiento`, `nombre_tipo_mantenimiento`) VALUES
(1, 'Preventivo'),
(2, 'Correctivo'),
(3, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `nombre_tipo_pago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_tipo_pago`, `nombre_tipo_pago`) VALUES
(1, 'Tarjeta de crédito'),
(2, 'Transferencia bancaria'),
(3, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_polizas`
--

CREATE TABLE `tipo_polizas` (
  `id_tipo_poliza` int(11) NOT NULL,
  `nombre_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_polizas`
--

INSERT INTO `tipo_polizas` (`id_tipo_poliza`, `nombre_tipo`) VALUES
(1, 'Póliza de Seguro'),
(2, 'Tenencia'),
(3, 'Verificaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_revisiones`
--

CREATE TABLE `tipo_revisiones` (
  `id_tipo_revisiones` int(11) NOT NULL,
  `nombre_tipo_revision` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_revisiones`
--

INSERT INTO `tipo_revisiones` (`id_tipo_revisiones`, `nombre_tipo_revision`) VALUES
(1, 'ANVERSO'),
(2, 'REVERSO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_unidad`
--

CREATE TABLE `tipo_unidad` (
  `id_tipo_unidad` int(11) NOT NULL,
  `tipo_unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_unidad`
--

INSERT INTO `tipo_unidad` (`id_tipo_unidad`, `tipo_unidad`) VALUES
(1, 'UNIDAD EXCLUSIVA'),
(2, 'UNIDAD POOL'),
(3, 'DEMO'),
(4, 'ROTATIVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'JURÍDICO'),
(3, 'CLIENTE'),
(4, 'ADMINISTRADOR DEMOS'),
(5, 'SOLICITANTE DEMO Y POOL'),
(6, 'SOLICITANTE DEMO'),
(7, 'AUTORIZACION DE ASIGNACION DEMO'),
(9, 'MASTER DRIVER'),
(10, 'LECTURA ADMINISTRADORES'),
(11, 'ADMINISTRADOR PRUEBAS DEMOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios_externos`
--

CREATE TABLE `tipo_usuarios_externos` (
  `id_tipo_usuario_externo` int(11) NOT NULL,
  `tipo_externo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuarios_externos`
--

INSERT INTO `tipo_usuarios_externos` (`id_tipo_usuario_externo`, `tipo_externo`) VALUES
(1, 'NACIONAL'),
(2, 'EXTRANJERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracciones`
--

CREATE TABLE `tracciones` (
  `id_traccion` int(11) NOT NULL,
  `traccion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tracciones`
--

INSERT INTO `tracciones` (`id_traccion`, `traccion`) VALUES
(1, '4X2'),
(2, '4X4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id_unidad` int(11) NOT NULL,
  `id_creador_unidad` int(11) DEFAULT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_estado_unidad` int(11) NOT NULL,
  `id_estatus_unidad` int(11) NOT NULL,
  `id_tipo_unidad` int(11) NOT NULL,
  `id_tipo_adquisicion` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `numero_motor` varchar(11) NOT NULL DEFAULT '""',
  `costo_neto` decimal(10,2) NOT NULL,
  `id_color` int(11) NOT NULL,
  `img_unidad` varchar(50) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `año_unidad` year(4) NOT NULL,
  `id_arrendadora` int(11) DEFAULT NULL,
  `folio_factura` varchar(200) NOT NULL DEFAULT 'SIN FACTURA',
  `ultimo_kilometraje` decimal(10,2) NOT NULL,
  `ultima_ubicacion` varchar(100) NOT NULL,
  `capacidad_carga` float(10,2) DEFAULT NULL,
  `capacidad_pasajeros` int(11) DEFAULT NULL,
  `id_tipo_combustible` int(11) DEFAULT NULL,
  `id_traccion` int(11) DEFAULT NULL,
  `tipo_carrceria` varchar(100) DEFAULT NULL,
  `numero_puertas` int(11) DEFAULT NULL,
  `numero_asientos` int(11) DEFAULT NULL,
  `id_tipo_caja` int(11) DEFAULT NULL,
  `id_tipo_freno` int(11) DEFAULT NULL,
  `id_tipo_suspencion` int(11) DEFAULT NULL,
  `numero_ejes` int(11) DEFAULT NULL,
  `id_tipo_uso` int(11) DEFAULT NULL,
  `camara_reversa` int(11) DEFAULT NULL,
  `sensores_reversa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id_unidad`, `id_creador_unidad`, `id_modelo`, `id_estado_unidad`, `id_estatus_unidad`, `id_tipo_unidad`, `id_tipo_adquisicion`, `id_sede`, `placa`, `vin`, `numero_motor`, `costo_neto`, `id_color`, `img_unidad`, `fecha_adquisicion`, `año_unidad`, `id_arrendadora`, `folio_factura`, `ultimo_kilometraje`, `ultima_ubicacion`, `capacidad_carga`, `capacidad_pasajeros`, `id_tipo_combustible`, `id_traccion`, `tipo_carrceria`, `numero_puertas`, `numero_asientos`, `id_tipo_caja`, `id_tipo_freno`, `id_tipo_suspencion`, `numero_ejes`, `id_tipo_uso`, `camara_reversa`, `sensores_reversa`) VALUES
(1, NULL, 13, 3, 1, 2, 1, 2, '7GPK25', 'LVCB2NBA3KS052508', '', 0.00, 1, '', '0000-00-00', '2019', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, NULL, 11, 4, 1, 2, 1, 5, 'H37BPS', 'HJRPBGJB9SB200721', 'SQRF4J20BBR', 0.00, 1, '', '0000-00-00', '2025', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, NULL, 3, 3, 1, 2, 1, 5, 'H72BPX', 'LVUDB21B1RF023430', 'J00450', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, NULL, 6, 3, 1, 2, 2, 1, 'HU1471A', 'LVAV2JVB9RE301163', '233000886ZL', 433.00, 1, '', '0000-00-00', '2024', 1, 'V22267', 328.93, '20.57053,-103.31003', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, NULL, 6, 3, 1, 2, 2, 1, 'HU1472A', 'LVAV2JVB1RE300878', '233000574ZL', 433.00, 1, '', '0000-00-00', '2023', 1, 'V22265', 327.61, '20.57039,-103.30887', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, NULL, 6, 3, 1, 2, 2, 5, 'HU1473A', 'LVAV2JVB7RE300884', '2330006668Z', 433.00, 1, '', '0000-00-00', '2024', 1, 'V22263', 11182.88, '19.28281,-99.51749', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, NULL, 6, 4, 1, 2, 2, 1, 'HU1474A', 'LVAV2JVB3RE301160', '233000879ZL', 433.00, 1, '', '0000-00-00', '2024', 1, 'V22268', 15019.86, '20.62525,-103.32881', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, NULL, 6, 4, 1, 2, 2, 1, 'HU1475A', 'LVAV2JVB6RE301122', '233000584ZL', 433.00, 1, '', '0000-00-00', '2024', 1, 'V22269', 21732.19, '20.46367,-103.44196', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, NULL, 16, 3, 1, 2, 2, 5, 'HU1476A', 'LVAV2MWB7RU012692', 'ABJ3960', 446.00, 1, '', '0000-00-00', '2024', 1, 'V22117', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(10, NULL, 6, 3, 1, 2, 2, 5, 'HU1477A', 'LVAV2JVB0RE300869', '233000666ZL', 433.00, 1, '', '0000-00-00', '2024', 1, 'V22262', 15874.58, '17.06313,-96.78574', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, NULL, 11, 3, 1, 3, 1, 5, 'HVT618A', 'HJRPBGJB6SB200014', 'SQRF4J20BBR', 716.00, 1, 'img_HVT618A_carro_desconocido (2).png', '0000-00-00', '2025', 3, 'V3227', 0.00, '', 200.00, 4, 1, 1, '1', 4, 4, 1, 1, 1, 1, 1, 1, 1),
(12, NULL, 3, 1, 1, 3, 1, 5, 'J33BPX', 'LVUDB21B2RF023405', 'J00455', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 3000.00, 1, 2, 1, '1', 2, 2, 1, 1, 1, 1, 2, 1, 1),
(13, NULL, 10, 1, 1, 3, 1, 2, 'JV96330', '3N6AD33A2JK900761', '', 0.00, 1, '', '0000-00-00', '2018', 3, 'SIN FACTURA', 0.00, '', 11.00, 2, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(14, NULL, 10, 3, 1, 3, 1, 2, 'JV96331', '3N6AD35C8JK870888', 'dfghfdtyuj', 0.00, 1, '', '0000-00-00', '2018', 3, 'SIN FACTURA', 0.00, '', 123451.00, 6, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, NULL, 22, 3, 1, 3, 1, 4, 'JW69517', 'LVAV2JVB8KE140701', '', 0.00, 1, '', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 5000.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, NULL, 20, 3, 1, 3, 1, 5, 'JX09360', 'LVAV2MBB9KC060115', '89739149', 0.00, 1, '', '0000-00-00', '2019', 3, 'SIN FACTURA', 200362.59, '19.36431,-99.26767', 123453.00, 2, 3, 1, '1', 2, 4, 1, 1, 1, 1, 3, 1, 1),
(17, NULL, 12, 3, 1, 3, 1, 3, 'JY52011', 'LVAV2JBB5NE200846', 'Q210644822D', 0.00, 1, 'img_JY52011_JETOUR_360_x70plus_negro.png', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 10.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, NULL, 12, 1, 1, 3, 1, 2, 'JY52012', 'LVAV2JBB1NE200844', 'Q210740142D', 0.00, 1, 'img_JY52012_JETOUR_360_dashing_gris_cenizo.png', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 200.00, 4, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, NULL, 21, 3, 1, 3, 1, 3, 'JY52013', '3LD122J5PA000505', '77121352', 0.00, 1, '', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 13212.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, NULL, 19, 3, 1, 3, 2, 3, 'LF97684', 'LVAV2MAB4SU303020', 'R001566', 815.00, 1, '', '0000-00-00', '2025', 1, 'V22119', 7013.65, '25.7714,-100.29097', 76453.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, NULL, 21, 3, 1, 1, 2, 7, 'LG25822', '3LD12B2J5RA002144', '776182123', 900.00, 1, '', '0000-00-00', '2024', 1, 'V22296', 2733.16, '19.73732,-98.97562', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(22, NULL, 21, 1, 1, 3, 2, 7, 'LG25825', '3LD12B2J1RA002142', '77176393', 900.00, 1, '', '0000-00-00', '2024', 1, 'V22295', 2433.38, '20.571,-103.31036', 5643.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, NULL, 17, 1, 1, 3, 2, 7, 'LG31152', 'LVAV2MAB6SU302242', 'R004952', 750.00, 1, '', '0000-00-00', '2025', 1, 'V22118', 4727.11, '19.36521,-99.26724', 5432.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(24, NULL, 14, 1, 1, 3, 2, 5, 'LG31153', '3LDA2A2F6PA001359', '77143002', 1.00, 1, 'img_LG31153_img_MKJ769A_20250610_121816.jpg', '0000-00-00', '2023', 1, 'V22247', 0.00, '', 54.00, 2, 5, 2, '1', 6, 4, 1, 1, 1, 1, 3, 1, 1),
(25, NULL, 18, 4, 1, 3, 2, 6, 'LG31161', 'LVAV2MAB2SU307020', 'R003422', 1.00, 1, 'img_LG31161_img_MKJ769A_20250610_121816.jpg', '0000-00-00', '2023', 1, 'V22116', 12604.94, '19.36525,-99.26746', 200.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, NULL, 17, 1, 2, 1, 1, 5, 'LLJ153B', 'LVAV2MAB8PC001162', 'N009678', 598.00, 1, '', '0000-00-00', '2023', 3, 'V6765', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, NULL, 15, 1, 1, 3, 1, 5, 'LMF630B', '5TDYZRAH1MS081840', '', 0.00, 1, '', '0000-00-00', '2021', 3, 'SIN FACTURA', 0.00, '', 300.00, 1, 1, 2, '1', 2, 6, 1, 1, 1, 1, 2, 1, 1),
(28, NULL, 9, 4, 1, 3, 1, 5, 'M17BMX', '3HGRZ1858PM002056', '', 0.00, 1, '', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 6543.00, 6, 2, 1, '1', 4, 6, 1, 1, 1, 1, 1, 1, 1),
(29, NULL, 2, 3, 1, 1, 2, 5, 'MAF244B', 'HJRPBGGB2RF003268', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V1126', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(30, NULL, 2, 3, 1, 1, 2, 5, 'MEF305A', 'HJRPBGGB1RF003293', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12290', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, NULL, 2, 3, 1, 1, 2, 5, 'MEF356A', 'HJRPBGGB0RF003270', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12288', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(32, NULL, 2, 3, 1, 1, 2, 5, 'MEF357A', 'HJRPBGGB6RF003290', 'SQRF4J16AVN', 530.00, 1, 'img_MEF357A_JETOUR_360_x70_blanco.png', '0000-00-00', '2024', 1, 'CARTA FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, NULL, 2, 3, 1, 1, 2, 4, 'MEF358A', 'HJRPBGGB0RF003284', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12285', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(34, NULL, 2, 3, 1, 1, 2, 5, 'MJE761A', 'HJRPBGGB7RF003296', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(35, NULL, 2, 1, 1, 1, 2, 5, 'MJE763A', 'HJRPBGGB5RF003295', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12287', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, NULL, 2, 1, 1, 1, 2, 5, 'MJE779A', 'HJRPBGGB1RF003309', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12292', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, NULL, 2, 1, 1, 1, 2, 5, 'MJE780A', 'HJRPBGGB0RF003303', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12291', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(38, NULL, 2, 1, 1, 1, 2, 5, 'MJE784A', 'HJRPBGGB3RF003294', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12283', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, NULL, 2, 1, 1, 1, 2, 5, 'MJE834A', 'HJRPBGGB0RF003267', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12286', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, NULL, 23, 1, 1, 1, 1, 5, 'MJS202A', 'LVAV2KWBXPC001161', 'AAH5466', 466.00, 1, '', '0000-00-00', '2023', 3, 'V10151', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, NULL, 22, 4, 1, 2, 1, 4, 'MJV717A', 'LVAV2JVB1PE301283', '225002210ZL', 0.00, 1, '', '0000-00-00', '2023', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(42, NULL, 20, 1, 1, 2, 1, 2, 'MKD694A', 'LVAV2MAB0PC003214', '', 0.00, 1, '', '0000-00-00', '2023', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, NULL, 2, 1, 1, 1, 2, 5, 'MKJ603A', 'HJRPBGGB1RF003276', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(44, NULL, 2, 1, 1, 4, 2, 5, 'MKJ606A', 'HJRPBGGB2RF003271', '', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, NULL, 2, 1, 1, 1, 2, 5, 'MKJ682A', 'HJRPBGGB2RF003285', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V1121', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, NULL, 2, 1, 1, 1, 2, 5, 'MKJ694A', 'HJRPBGGB3RF003277', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V185', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, NULL, 3, 3, 1, 1, 2, 5, 'MKJ695A', 'LVUDB21B1PF018063', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2024', 1, 'V1123', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(48, NULL, 3, 1, 1, 4, 2, 5, 'MKJ697A', 'LVUDB21B5PF024531', 'SQRE4T15BAH', 0.00, 1, '', '0000-00-00', '2023', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, NULL, 3, 1, 1, 4, 2, 5, 'MKJ699A', 'LVUDB21B2PF018038', 'SQRE4T15BAH', 0.00, 1, '', '0000-00-00', '2023', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(50, NULL, 2, 1, 1, 1, 2, 5, 'MKJ769A', 'HJRPBGGB8RF003291', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(51, NULL, 1, 3, 1, 1, 2, 5, 'MKP495A', 'HJRPBGGB5PB351800', 'SQRF4J16AVN', 580.00, 1, '', '0000-00-00', '2023', 1, 'V13332', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, NULL, 2, 1, 1, 1, 2, 5, 'MKS598A', 'HJRPBGGB3RF003280', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(53, NULL, 1, 1, 1, 4, 2, 5, 'MNM736A', 'HJRPBGGB3RB150030', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(54, NULL, 2, 1, 1, 1, 2, 5, 'MSH442A', 'HJRPBGGB9RF003297', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2024', 1, 'V1079', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(55, NULL, 1, 3, 1, 1, 2, 5, 'MSH449A', 'HJRPBGGB6RB151012', 'SQRF4J16AVN', 576.00, 1, '', '0000-00-00', '2024', 1, 'V3318', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, NULL, 1, 3, 1, 1, 2, 5, 'MTM989A', 'HJRPBGGB4RB151705', 'SQRF4J16AVP', 576.00, 1, '', '0000-00-00', '2024', 1, 'V1132', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, NULL, 3, 1, 1, 1, 2, 5, 'MTM990A', 'LVUDB21B5PF018163', 'LVUDB2B5PF0', 420.00, 1, '', '0000-00-00', '2023', 1, 'V1288', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(58, NULL, 3, 1, 1, 1, 2, 5, 'MTM995A', 'LVUDB21B2PF018105', 'HECHO EN CH', 420.00, 1, '', '0000-00-00', '2023', 1, 'V1289', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(59, NULL, 1, 1, 1, 4, 2, 5, 'MUG246A', 'HJRPBGGB8RB151741', 'SQRF4J16AVP', 576.00, 1, '', '0000-00-00', '2024', 1, 'V1133', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, NULL, 1, 4, 1, 1, 2, 5, 'MUG274A', 'HJRPBGGB9RB151618', 'SQRF4J16AVP', 576.00, 1, '', '0000-00-00', '2024', 1, 'V1134', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, NULL, 2, 1, 1, 1, 2, 5, 'MVH331A', 'HJRPBGGB5PF025097', 'SQRF4J16AVN', 530.00, 1, '', '0000-00-00', '2023', 1, 'V1327', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, NULL, 2, 1, 1, 1, 2, 5, 'MVH333A', 'HJRPBGGB0PB350795', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2023', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, NULL, 1, 1, 1, 1, 2, 5, 'MVH393A', 'HJRPBGGBXRB151580', 'SQRF4J16AVP', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, NULL, 3, 1, 1, 1, 2, 5, 'MZJ621A', 'LVUDB21B4PF024438', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1603', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(65, NULL, 3, 1, 1, 1, 2, 5, 'MZJ624A', 'LVUDB21B5PF024495', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1606', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(66, NULL, 3, 1, 1, 1, 2, 5, 'MZJ626A', 'LVUDB21B8PF022904', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1605', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, NULL, 3, 1, 1, 1, 2, 5, 'MZJ637A', 'LVUDB21B2PF022929', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1601', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, NULL, 4, 3, 1, 1, 2, 5, 'MZP510A', 'LZWPRMGN9RF961880', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '391/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, NULL, 4, 3, 1, 1, 2, 5, 'MZP512A', 'LZWPRMGN2RF953636', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '402/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, NULL, 4, 3, 1, 1, 2, 5, 'MZP513A', 'LZWPRMGN7RF960162', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '400/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(71, NULL, 1, 1, 1, 1, 2, 5, 'MZP515A', 'HJRPBGGB9RB151559', 'SQRF4J16AVP', 576.00, 1, '', '0000-00-00', '2024', 2, 'V1599', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, NULL, 1, 1, 1, 1, 2, 5, 'MZP526A', 'HJRPBGGB9RB151537', 'SQRF4J16AVP', 576.00, 1, '', '0000-00-00', '2024', 2, 'V1600', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, NULL, 4, 3, 1, 1, 2, 5, 'MZP528A', 'LZWPRMGN3RF962250', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '406/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(74, NULL, 4, 3, 1, 1, 2, 5, 'MZV225A', 'LZWPRMGN9RF967498', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '393/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(75, NULL, 4, 3, 1, 1, 2, 5, 'MZV235A', 'LZWPRMGN1RF963557', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '934/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(76, NULL, 4, 3, 1, 1, 2, 5, 'MZV238A', 'LZWPRMGN1RF960173', 'IMPORTADO', 338.00, 1, '', '0000-00-00', '2024', 2, '396/FNS', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(77, NULL, 2, 1, 1, 1, 2, 5, 'MZW072A', 'HJRPBGGB2RF003299', 'SQRF4J16AVN', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(78, NULL, 3, 1, 1, 1, 2, 5, 'NAP818A', 'LVUDB21B1PF024431', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'CARTA FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(79, NULL, 3, 1, 1, 1, 2, 5, 'NAP833A', 'LVUDB21B7PF024448', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1604', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(80, NULL, 3, 1, 1, 1, 2, 5, 'NBN711A', 'LVUDB21B8PF024877', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1642', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(81, NULL, 3, 1, 1, 1, 2, 5, 'NBN718A', 'LVUDB21B0PF023735', 'LVUDB21B5PF', 420.00, 1, '', '0000-00-00', '2023', 2, 'V1640', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(82, NULL, 3, 1, 1, 1, 2, 5, 'NBN719A', 'LVUDB21B0PF023772', 'SQRE4T15BAH', 420.00, 1, '', '0000-00-00', '2023', 2, 'CARTA FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(83, NULL, 2, 1, 1, 1, 2, 5, 'NBN724A', 'HJRPBGGB4RF003269', 'SQRF4JI6AVN', 530.00, 1, '', '0000-00-00', '2024', 2, 'V1639', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(84, NULL, 1, 1, 1, 1, 2, 5, 'NDF463A', 'HJRPGGB8RB161752', 'SQRF4J16AVP', 583.00, 1, '', '0000-00-00', '2024', 1, 'V2720', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(85, NULL, 3, 1, 1, 1, 2, 5, 'NDF659A', 'LVUDB21B4PF018039', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2948', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(86, NULL, 3, 1, 1, 1, 2, 5, 'NDF753A', 'LVUDB21BXPF024881', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2947', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(87, NULL, 3, 1, 1, 1, 2, 5, 'NDF757A', 'LVUDB21BXPF024900', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2945', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(88, NULL, 3, 1, 1, 1, 2, 5, 'NDF760A', 'LVUDB21B8PF024846', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2946', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(89, NULL, 3, 1, 1, 1, 2, 5, 'NDF813A', 'LVUDB21B1PF024851', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2950', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(90, NULL, 3, 1, 1, 1, 2, 5, 'NDF820A', 'LVUDB21B7PF024840', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2951', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(91, NULL, 3, 1, 1, 1, 2, 5, 'NDF836A', 'LVUDB21B6PF024831', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2952', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(92, NULL, 3, 1, 1, 1, 2, 5, 'NDG211A', 'LVUDB21B2PF024860', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2949', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(93, NULL, 3, 1, 1, 1, 2, 5, 'NDG213A', 'LVUDB21B9PF024855', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2942', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(94, NULL, 3, 1, 1, 1, 2, 5, 'NDG214A', 'LVUDB21BXPF018062', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2944', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(95, NULL, 3, 1, 1, 1, 2, 5, 'NDG223A', 'LVUDB21BXPF023746', 'SQRE4T15BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2943', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(96, NULL, 3, 1, 1, 1, 2, 5, 'NDG264A', 'LVUDB21B5PF023749', 'SQRE4TI5BAH', 489.00, 1, '', '0000-00-00', '2023', 2, 'V2953', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(97, NULL, 3, 1, 1, 1, 2, 5, 'NDG273A', 'LVUDB21BXRF006531', 'SQRE4T15BAH', 504.00, 1, '', '0000-00-00', '2024', 2, 'V2954', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(98, NULL, 2, 1, 1, 1, 2, 5, 'NDG281A', 'HJRPBGGB4RF003272', 'SQRF4J16AVN', 639.00, 1, '', '0000-00-00', '2024', 2, 'V2955', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(99, NULL, 1, 1, 1, 1, 2, 5, 'NEH457A', 'HJRPBGGB4RB176197', 'SQRF4J16AVP', 699.00, 1, '', '0000-00-00', '2024', 2, 'V3052', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(100, NULL, 5, 3, 1, 1, 2, 5, 'NFX906A', 'LNBSCCAKZPD896969', 'DC01P011651', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22014', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(101, NULL, 5, 3, 1, 1, 2, 1, 'NFX911A', 'LNBSCCAK9PD896970', 'DC01P011641', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22012', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(102, NULL, 5, 3, 1, 1, 2, 1, 'NFX912A', 'LNBSCCAHXPD880197', 'LNBSCCAHXPD', 289.00, 1, '', '0000-00-00', '2023', 1, 'V22011', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(103, NULL, 5, 3, 1, 1, 2, 5, 'NFX915A', 'LNBSCCAK7PD896885', 'DC01P011180', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22018', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(104, NULL, 5, 1, 1, 1, 2, 5, 'NFX916A', 'LNBSCCAK1PD880198', 'LNBSCCAH1PD', 289.00, 1, '', '0000-00-00', '2023', 1, 'V22007', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(105, NULL, 5, 1, 1, 1, 2, 5, 'NFX918A', 'LNBSCCAKOPD896971', 'DC01P011640', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22019', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(106, NULL, 5, 1, 1, 1, 2, 5, 'NFX919A', 'LNBSCCAKXPD897044', 'DC01P011488', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22020', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(107, NULL, 5, 1, 1, 1, 2, 5, 'NGB964A', 'LNBSCCAK0PD896968', 'DC01P011637', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22016', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(108, NULL, 5, 1, 1, 1, 2, 5, 'NGB978A', 'LNBSCCAK1PD897045', 'DC01P011486', 322.00, 1, '', '0000-00-00', '2023', 1, 'V22017', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(109, NULL, 4, 1, 1, 1, 2, 5, 'NXB598B', 'LZWPRMGN0RF975845', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003608', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(110, NULL, 4, 1, 1, 1, 2, 5, 'NXE604B', 'LZWPRMGN0RF983573', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003616', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(111, NULL, 4, 1, 1, 1, 2, 5, 'NXE614B', 'LZWPRMGN4RF988551', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003606', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(112, NULL, 4, 3, 1, 1, 2, 5, 'NXE638B', 'LZWPRMGN9RF978632', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003607', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(113, NULL, 4, 1, 1, 1, 2, 5, 'NXE649B', 'LZWPRMGN8RF967458', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003599', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(114, NULL, 4, 3, 1, 1, 2, 5, 'NXJ971B', 'LZWPRMGN4RF983513', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CSFA000003614', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(115, NULL, 4, 3, 1, 1, 2, 5, 'NXJ974B', 'LZWPRMGN8RF968304', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CFSFA000003609', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(116, NULL, 4, 1, 1, 1, 2, 5, 'NXJ984B', 'LZWPRMGNXRF854028', 'HECHO EN CH', 345.00, 1, '', '0000-00-00', '2024', 2, 'CFSFA000003615', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(117, NULL, 20, 1, 1, 1, 1, 5, 'PBC9124', 'LVAV2MBB0KC060116', '89739303', 0.00, 1, '', '0000-00-00', '2019', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(118, NULL, 8, 1, 1, 1, 1, 5, 'PEP5236', '19XRW1892NE601794', 'L15BE646944', 0.00, 1, '', '0000-00-00', '2022', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(119, NULL, 7, 1, 2, 1, 1, 5, 'PEP5268', 'MAKGN2549N4300452', 'L15ZD170745', 359.00, 1, '', '0000-00-00', '2022', 3, 'FNA12275', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(120, NULL, 7, 3, 1, 1, 1, 5, 'PEP5270', 'MAKGN2543N4300494', 'L15ZD170749', 359.00, 1, '', '0000-00-00', '2022', 3, 'FNA12276', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(121, NULL, 7, 3, 1, 1, 1, 5, 'PEP5352', 'MAKGN2548N4300393', 'L15ZD170701', 359.00, 1, '', '0000-00-00', '2022', 3, 'FNA12277', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(122, NULL, 7, 1, 1, 1, 1, 5, 'PEP5353', 'MAKGN2549N4300354', 'L15ZD170695', 359.00, 1, '', '0000-00-00', '2022', 3, 'FNA12278', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(123, NULL, 11, 1, 1, 1, 1, 1, 'PXW667E', 'HJRPBGJB1SB200017', 'SQRF4J20BBR', 0.00, 1, '', '0000-00-00', '2025', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(124, NULL, 1, 1, 1, 4, 1, 5, 'SIN PLACA', 'HJRPBGGB1RB151418', '', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(125, NULL, 1, 1, 1, 4, 1, 5, 'SIN PLACA', 'HJRPBGGBXRB151496', '', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(126, NULL, 1, 1, 1, 4, 1, 5, 'SIN PLACA', 'HJRPBGGB2PB351799', '', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(127, NULL, 3, 1, 1, 4, 1, 5, 'SIN PLACA', 'LVUDB21B5PF024867', '', 0.00, 1, '', '0000-00-00', '2000', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(128, NULL, 2, 1, 1, 4, 1, 5, 'SIN PLACA', 'HJRPBGGB2PF023646', '', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(129, NULL, 2, 1, 1, 1, 1, 5, 'SIN PLACA', 'HJRPBGGB2RF027909', '', 0.00, 1, '', '0000-00-00', '2024', 3, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(130, NULL, 2, 1, 1, 1, 2, 5, 'Z19BNC', 'HJRPBGGB1RF003312', '', 0.00, 1, '', '0000-00-00', '2024', 1, 'SIN FACTURA', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(131, NULL, 2, 1, 1, 1, 2, 5, 'Z59BNC', 'HJRPBGGB0RF003298', '', 530.00, 1, '', '0000-00-00', '2024', 1, 'V12289', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(133, NULL, 1, 1, 1, 1, 2, 5, '4REFSGG4', '654345678', '4567890OIUJ', 23000.00, 2, 'img_4REFSGG4_JETOUR_360_dashing_blanco_.png', '0000-00-00', '2025', 1, '7654345678', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(140, NULL, 18, 1, 1, 1, 2, 5, '23456rtyu', '5678', '345678', 345678.00, 2, 'img_23456rtyu_JETOUR_360_dashing_blanco_.png', '0000-00-00', '2025', 1, '345678', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(141, NULL, 1, 1, 1, 1, 2, 5, 'QAWSE45', '1234ED', '23456TRYTY', 32555.00, 2, 'img_QAWSE45_JETOUR_360_dashing_blanco_.png', '0000-00-00', '2023', 1, '23457', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(142, NULL, 5, 1, 1, 1, 2, 6, '12ASEGF', '3LD12B1J0RA001081', '123456', 453268.00, 3, 'img_12ASEGF_', '0000-00-00', '2023', 1, '12234', 18825.47, '20.71039,-103.45774', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(143, 48, 6, 1, 1, 3, 2, 5, 'RFD245', '12345678', '73EDHUDYU', 245676.00, 5, 'img_RFD245_JETOUR_360_x70plus_negro.png', '0000-00-00', '2020', 1, '123456587', 0.00, '', 9834.00, 8, 3, 2, '1', 2, 4, 1, 1, 1, 1, 3, 1, 1),
(144, 698, 5, 1, 1, 1, 1, 1, 'ASDFVBN67', '3LD12B1J1RA001087', '1234567SDFG', 566666.00, 3, 'img_ASDFVBN67_JETOUR_360_x70plus_azul.png', '0000-00-00', '2025', 1, '2345678', 24319.76, '21.16441,-86.83893', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(145, 516, 13, 1, 1, 1, 1, 5, '34rdefrg', '655656', 'gy77y', 3456789.00, 2, 'img_34rdefrg_', '0000-00-00', '2020', 1, '', 0.00, '', 1.00, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(146, 698, 6, 1, 1, 3, 1, 5, '234WEDFG', '345REDS', 'QWE34RES', 23456.00, 1, 'img_234WEDFG_JETOUR_360_x70plus_blanco.png', '0000-00-00', '2020', 1, '23457654', 0.00, '', 1.00, 8, 1, 1, '1', 4, 2, 1, 1, 1, 1, 1, 1, 1),
(149, 698, 6, 1, 1, 3, 1, 1, '43526VCGDJ', '5454TEG', '6363TEYSD', 123466.00, 1, 'img_43526VCGDJ_', '2025-06-11', '2020', 1, '234532', 0.00, '', 2345.00, 2, 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_color`
--

CREATE TABLE `unidad_color` (
  `id_color` int(11) NOT NULL,
  `color_unidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad_color`
--

INSERT INTO `unidad_color` (`id_color`, `color_unidad`) VALUES
(1, 'SIN ASIGNAR'),
(2, 'BLANCO'),
(3, 'AZUL'),
(4, 'ROJO'),
(5, 'NEGRO'),
(6, 'GRIS OXFORD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `avatar` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_tipo_usuario`, `id_colaborador`, `correo`, `contraseña`, `avatar`) VALUES
(1, 1, 698, 'uriel.cabello@ldrsolutions.com.mx', '123456789', '250685_f'),
(2, 1, 230, 'carlos.roman@ldrsolutions.com.mx', 'K85T84', '230230_f'),
(3, 1, 565, 'sharon.leon@ldrsolutions.com.mx', 'Q42O20', '240565_f'),
(4, 2, 214, 'jorgel.martinez@ldrsolutions.com.mx', 'K86P31', '230214_f'),
(5, 2, 348, 'daniela.bernal@ldrsolutions.com.mx', 'G46F77', '240348_f'),
(6, 2, 341, 'cesarmt@ldrsolutions.com.mx', 'G56M76', '240341_f'),
(8, 9, 516, 'christian.reyes@ldrsolutions.com.mx', '12345678', '240516_f'),
(9, 6, 202, 'jorge.sanchez@ldrsolutions.com.mx', '12345678', '230202_f'),
(10, 9, 389, 'isaura.hernandez@ldrsolutions.com.mx', 'P45C25', '240389_f'),
(12, 2, 539, 'jesus.farango@ldrsolutions.com.mx', 'X84N27', '240539_f'),
(13, 4, 48, 'nora.segura@ldrsolutions.com.mx', 'K77Y29', '220048_f'),
(14, 7, 39, 'francisco.chavez@ldrsolutions.com.mx', 'A39M99', '220039_f'),
(16, 10, 10000, 'raul.tellez@ldrsolutions.com.mx', '5D24LK', '000001_f'),
(17, 11, 520, 'abraham.hernandez@ldrsolutions.com.mx', 'Z36J79', '240520_f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_externos`
--

CREATE TABLE `usuarios_externos` (
  `id_usuario_externo` int(11) NOT NULL,
  `id_tipo_usuario_externo` int(11) NOT NULL,
  `nombre_1` varchar(30) DEFAULT NULL,
  `nombre_2` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `genero` varchar(10) NOT NULL,
  `licencia_conducir` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `licencia_permanente` varchar(20) NOT NULL,
  `id_estado_licencia` int(11) NOT NULL,
  `archivo_licencia` varchar(200) NOT NULL,
  `domicilio_residencia` varchar(200) NOT NULL,
  `archivo_comprobante_domicilio` varchar(200) NOT NULL,
  `archivo_ine` varchar(200) DEFAULT NULL,
  `archivo_constancia_situacion_fiscal` varchar(200) DEFAULT NULL,
  `id_tipo_recidencia` int(11) DEFAULT NULL,
  `archivo_credencial_residencia` varchar(200) DEFAULT NULL,
  `pasaporte` varchar(20) DEFAULT NULL,
  `archivo_pasaporte` varchar(200) DEFAULT NULL,
  `forma_migratoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_externos`
--

INSERT INTO `usuarios_externos` (`id_usuario_externo`, `id_tipo_usuario_externo`, `nombre_1`, `nombre_2`, `apellido_paterno`, `apellido_materno`, `genero`, `licencia_conducir`, `fecha_emision`, `fecha_vencimiento`, `licencia_permanente`, `id_estado_licencia`, `archivo_licencia`, `domicilio_residencia`, `archivo_comprobante_domicilio`, `archivo_ine`, `archivo_constancia_situacion_fiscal`, `id_tipo_recidencia`, `archivo_credencial_residencia`, `pasaporte`, `archivo_pasaporte`, `forma_migratoria`) VALUES
(1, 1, 'Pablo', 'GUANG', 'Cabello', 'MUONGX', 'M', 34567, '2025-05-01', '2025-07-23', '0', 1, 'licencia_1747841322_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747841322_licencia_conducir_ejemplo.pdf', 'ine_1747841322_licencia_conducir_ejemplo.pdf', 'consfiscal_1747841322_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Pablo', 'GUANG', 'Cabello', 'Sosa', 'M', 345678, '2025-04-29', '2025-07-01', '0', 1, 'licencia_1747841633_licencia_conducir_ejemplo.pdf', 'calle reforma', 'domicilio_1747841633_licencia_conducir_ejemplo.pdf', 'ine_1747841633_licencia_conducir_ejemplo.pdf', 'consfiscal_1747841633_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Pablo', 'Jose', 'Cabello', 'Gomez', 'M', 345678, '2025-04-30', '2025-07-01', '0', 1, 'licencia_1747842373_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747842373_licencia_conducir_ejemplo.pdf', 'ine_1747842373_licencia_conducir_ejemplo.pdf', 'consfiscal_1747842373_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Crhistian', 'Yair', 'Reyes', 'Guarneros', 'M', 345678, '2025-03-05', '2025-07-22', '0', 1, 'licencia_1747850759_licencia_conducir_ejemplo.pdf', 'Calle Morales', 'domicilio_1747850759_COMODATO_URIEL.pdf', 'ine_1747850759_responsiva_placa_MVH393A_asignacion_1_firma.pdf', 'consfiscal_1747850759_responsiva_placa_123-ert_asignacion_1 (2).pdf', NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Manuel', 'Gabriel', 'Garcia', 'Mendoza', 'M', 345678, '2025-05-01', '2025-05-29', '0', 1, 'licencia_1747851227_licencia_conducir_ejemplo.pdf', 'calle loma', 'domicilio_1747851227_comodato_COMODATO_URIEL.pdf', 'ine_1747851227_Lineamientos Préstamo de Vehículo Pull - LDR.pdf', 'consfiscal_1747851227_COMODATO UNIDADES MARKETING_.pdf', NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Pablo', 'GUANG', 'Reyes', 'Sosa', 'F', 345678, '2025-04-30', '2025-07-02', '0', 1, 'licencia_1747851975_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747851975_licencia_conducir_ejemplo.pdf', 'ine_1747851975_licencia_conducir_ejemplo.pdf', 'consfiscal_1747851975_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(7, 1, 'p', 'y', 'y', 'p', 'M', 345678, '2025-05-23', '2025-06-06', '0', 1, 'licencia_1747852274_licencia_conducir_ejemplo.pdf', 'p', 'domicilio_1747852274_licencia_conducir_ejemplo.pdf', 'ine_1747852274_licencia_conducir_ejemplo.pdf', 'consfiscal_1747852274_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'p', 'o', 'p', 'o', 'F', 345678, '2025-05-02', '2025-06-04', '0', 1, 'licencia_1747852654_licencia_conducir_ejemplo.pdf', 'calle reforma', 'domicilio_1747852654_COMODATO_URIEL.pdf', 'ine_1747852654_comodato_COMODATO_URIEL (1).pdf', 'consfiscal_1747852654_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Pablo', 'Yair', 'JJJJ', 'p', 'M', 345678, '2025-05-06', '2025-05-29', '0', 1, 'licencia_1747868224_licencia_conducir_ejemplo.pdf', 'CALLE', 'domicilio_1747868224_licencia_conducir_ejemplo.pdf', 'ine_1747868224_licencia_conducir_ejemplo.pdf', 'consfiscal_1747868224_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(10, 1, 'o', 'o', 'JJ', 'Guarneros', 'M', 345678, '2025-05-14', '2025-06-04', '0', 1, 'licencia_1747868288_licencia_conducir_ejemplo.pdf', 'CALLE', 'domicilio_1747868288_licencia_conducir_ejemplo.pdf', 'ine_1747868288_comodato_COMODATO_URIEL.pdf', 'consfiscal_1747868288_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(11, 1, 'p', 'p', 'y', 'Guarneros', 'M', 345678, '2025-05-22', '2025-06-02', '0', 1, 'licencia_1747869034_licencia_conducir_ejemplo.pdf', 'calle reforma', 'domicilio_1747869034_comodato_COMODATO_URIEL (1).pdf', 'ine_1747869034_COMODATO_URIEL.pdf', 'consfiscal_1747869034_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', NULL, NULL, NULL, NULL, NULL),
(12, 2, 'o', 'Yair', 'Reyes', 'Guarneros', 'F', 345678, '2025-05-14', '2025-05-30', '0', 1, 'licencia_1747869309_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747869309_licencia_conducir_ejemplo.pdf', NULL, NULL, 1, 'credencialresidencia_1747869309_licencia_conducir_ejemplo.pdf', '344444', 'pasaporte_1747869309_licencia_conducir_ejemplo.pdf', 'TURISTA'),
(13, 1, 'Pablo', 'y', 'Cabello', 'Guarneros', 'M', 345678, '2025-05-22', '2025-06-03', '0', 1, 'licencia_1747869745_licencia_conducir_ejemplo.pdf', 'CALLE', 'domicilio_1747869745_licencia_conducir_ejemplo.pdf', 'ine_1747869745_licencia_conducir_ejemplo.pdf', 'consfiscal_1747869745_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Pablo', 'Yair', 'Cabello', 'Guarneros', 'M', 345678, '2025-05-22', '2025-06-03', '0', 1, 'licencia_1747870089_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747870089_licencia_conducir_ejemplo.pdf', 'ine_1747870089_comodato_COMODATO_URIEL (1).pdf', 'consfiscal_1747870089_COMODATO_URIEL.pdf', NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Pablo', 'Yair', 'Cabello', 'Sosa', 'M', 345678, '2025-05-07', '2025-06-05', '0', 1, 'licencia_1747870202_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747870202_comodato_COMODATO_URIEL (1).pdf', 'ine_1747870202_COMODATO_URIEL.pdf', 'consfiscal_1747870202_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', NULL, NULL, NULL, NULL, NULL),
(16, 2, 'Pablo', 'p', 'Suarez', 'Sosa', 'M', 345678, '2025-04-29', '2025-07-24', '0', 1, 'licencia_1747871039_licencia_conducir_ejemplo.pdf', 'CALLE LOMAS', 'domicilio_1747871039_comodato_COMODATO_URIEL (1).pdf', NULL, NULL, 1, 'credencialresidencia_1747871039_comodato_COMODATO_URIEL.pdf', '12345', 'pasaporte_1747871039_COMODATO_URIEL.pdf', 'TURISTA'),
(17, 1, 'Pablo', 'Yair', 'Cabello', 'Guarneros', 'M', 345678, '2025-04-30', '2025-06-06', '0', 1, 'licencia_1747871225_licencia_conducir_ejemplo.pdf', 'calle reforma', 'domicilio_1747871225_comodato_COMODATO_URIEL (1).pdf', 'ine_1747871225_licencia_conducir_ejemplo.pdf', 'consfiscal_1747871225_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(18, 1, 'XIANG', '', 'Cabello', 'Guarneros', 'F', 345678, '2025-05-08', '2025-06-05', '0', 1, 'licencia_1748480732_licencia_conducir_ejemplo.pdf', 'CALLE REFORMA PRIVADA LAS LOMAS #345 INT. 6', 'domicilio_1748480732_licencia_conducir_ejemplo.pdf', 'ine_1748480732_licencia_conducir_ejemplo.pdf', 'consfiscal_1748480732_licencia_conducir_ejemplo.pdf', NULL, NULL, NULL, NULL, NULL),
(19, 2, 'XIANG', '', 'CHONG', 'GUANG', 'M', 345678, '2025-05-08', '2025-06-05', '0', 1, 'licencia_1748480932_licencia_conducir_ejemplo.pdf', 'CALLE REFORMA PRIVADA LAS LOMAS #345 INT. 6', 'domicilio_1748480932_licencia_conducir_ejemplo.pdf', NULL, NULL, 1, 'credencialresidencia_1748480932_licencia_conducir_ejemplo.pdf', '7789', 'pasaporte_1748480932_licencia_conducir_ejemplo.pdf', 'TURISTA'),
(20, 2, 'XIANG', '', 'GUANG', 'XOUNG', 'M', 345678, '2025-04-08', '2025-08-12', '0', 1, 'licencia_1748885115_licencia_conducir_ejemplo.pdf', 'CALLE REFORMA PRIVADA LAS LOMAS #345 INT. 6', 'domicilio_1748885115_COMODATO_URIEL.pdf', NULL, NULL, 1, 'credencialresidencia_1748885115_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', '344444', 'pasaporte_1748885115_Lineamientos Préstamo de Vehículo Pull - LDR.pdf', 'TURISTA'),
(21, 1, 'XIANG', 'p', 'GUANG', 'p', 'M', 787878, '2025-06-18', '2025-07-08', '0', 1, 'licencia_1750187202_licencia_conducir_ejemplo.pdf', 'CALLE REFORMA PRIVADA LAS LOMAS #345 INT. 6', 'domicilio_1750187202_EVELYN CALDERON-X70.pdf', 'ine_1750187202_licencia_conducir_ejemplo.pdf', 'consfiscal_1750187202_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', NULL, NULL, NULL, NULL, NULL),
(22, 1, 'P', 'YAIR', 'P', 'CORTEZ', 'F', 0, '2025-06-19', '2025-07-09', '0', 1, 'licencia_1750450430_COMODATO_URIEL.pdf', 'CALLE REFORMA', 'domicilio_1750450430_COMODATO_URIEL.pdf', 'ine_1750450430_ANDREA ESPINOZA-X70.pdf', 'consfiscal_1750450430_comodato_COMODATO_UNIDADES_MARKETING_1.pdf', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verificaciones`
--

CREATE TABLE `verificaciones` (
  `id_verificaciones` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_estatus_verificacion` int(11) NOT NULL,
  `fecha_verificacion` date NOT NULL DEFAULT '0000-00-00',
  `fecha_siguiente_verificacion` date NOT NULL DEFAULT '0000-00-00',
  `año` year(4) NOT NULL DEFAULT 0000,
  `id_semestre` int(11) DEFAULT NULL,
  `folio` varchar(200) DEFAULT NULL,
  `monto` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `verificaciones`
--

INSERT INTO `verificaciones` (`id_verificaciones`, `id_unidad`, `id_estatus_verificacion`, `fecha_verificacion`, `fecha_siguiente_verificacion`, `año`, `id_semestre`, `folio`, `monto`) VALUES
(1, 1, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(2, 2, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(3, 3, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(4, 4, 3, '0000-00-00', '0000-00-00', '2000', 3, 'rt4', 230),
(5, 5, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(6, 6, 4, '0000-00-00', '0000-00-00', '2024', 2, 'B32841471', 566),
(7, 7, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(8, 8, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(9, 9, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(10, 10, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(11, 11, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34636385', 566),
(12, 12, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(13, 13, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(14, 14, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(15, 15, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(16, 16, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(17, 17, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(18, 18, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(19, 19, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(20, 20, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(21, 21, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(22, 22, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(23, 23, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34638224', 566),
(24, 24, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B31693420', 566),
(25, 25, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(26, 26, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(27, 27, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(28, 28, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(29, 29, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(30, 30, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(31, 31, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(32, 32, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(33, 33, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(34, 34, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(35, 35, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(36, 36, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B32842150', 596),
(37, 37, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B34081326', 543),
(38, 38, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(39, 39, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(40, 40, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(41, 41, 4, '0000-00-00', '0000-00-00', '2024', 2, 'B22469483', 566),
(42, 42, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(43, 43, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(44, 44, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34639183', 566),
(45, 45, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(46, 46, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B35641419', 569),
(47, 47, 3, '0000-00-00', '0000-00-00', '2000', 3, 'B2562253', 0),
(48, 48, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34639520', 566),
(49, 49, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(50, 50, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(51, 51, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34636366', 566),
(52, 52, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(53, 53, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34640847', 566),
(54, 54, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20142737', 1086),
(55, 55, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B31828370', 566),
(56, 56, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20150176', 1069),
(57, 57, 3, '0000-00-00', '0000-00-00', '2024', 3, '', 0),
(58, 58, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20143019', 1037),
(59, 59, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20143028', 1069),
(60, 60, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20161433', 1037),
(61, 61, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20165241', 1037),
(62, 62, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20148752', 1037),
(63, 63, 1, '0000-00-00', '0000-00-00', '2023', 2, 'A20165267', 1037),
(64, 64, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191522', 1086),
(65, 65, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191450', 1086),
(66, 66, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191548', 1086),
(67, 67, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20216444', 1086),
(68, 68, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20185418', 1086),
(69, 69, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A201912865', 1086),
(70, 70, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20185388', 1069),
(71, 71, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20216458', 1069),
(72, 72, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191508', 1069),
(73, 73, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191195', 1086),
(74, 74, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191204', 1086),
(75, 75, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191191', 1086),
(76, 76, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191226', 1086),
(77, 77, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B33413086', 567),
(78, 78, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191490', 1086),
(79, 79, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20191491', 1086),
(80, 80, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20215755', 1086),
(81, 81, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20223252', 1086),
(82, 82, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20215791', 1086),
(83, 83, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20216273', 1086),
(84, 84, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20185649', 1069),
(85, 85, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(86, 86, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20243109', 1086),
(87, 87, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20245872', 0),
(88, 88, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B34080832', 1086),
(89, 89, 1, '0000-00-00', '0000-00-00', '2024', 1, 'B31236977', 543),
(90, 90, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20264508', 1086),
(91, 91, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20243102', 1086),
(92, 92, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20252903', 1086),
(93, 93, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20185904', 1086),
(94, 94, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20252103', 1086),
(95, 95, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20221305', 1086),
(96, 96, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20221309', 1086),
(97, 97, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(98, 98, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20252070', 1086),
(99, 99, 1, '0000-00-00', '0000-00-00', '2024', 1, 'A20221313', 1069),
(100, 100, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34718033', 566),
(101, 101, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(102, 102, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B31699036', 566),
(103, 103, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(104, 104, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(105, 105, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34640642', 566),
(106, 106, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B31699425', 566),
(107, 107, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(108, 108, 1, '0000-00-00', '0000-00-00', '2024', 2, 'B31699485', 0),
(109, 109, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34637363', 566),
(110, 110, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34637189', 566),
(111, 111, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34637119', 566),
(112, 112, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34635820', 566),
(113, 113, 1, '0000-00-00', '0000-00-00', '2024', 1, 'B32636294', 566),
(114, 114, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34637158', 566),
(115, 115, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B346366369', 566),
(116, 116, 1, '0000-00-00', '0000-00-00', '2025', 1, 'B34635935', 566),
(117, 117, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(118, 118, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(119, 119, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(120, 120, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(121, 121, 4, '0000-00-00', '0000-00-00', '2022', 2, 'A57896310', 1086),
(122, 122, 1, '0000-00-00', '0000-00-00', '2024', 2, 'A20279996', 1086),
(123, 123, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(124, 124, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(125, 125, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(126, 126, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(127, 127, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(128, 128, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(129, 129, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(130, 130, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(131, 131, 3, '0000-00-00', '0000-00-00', '2000', 3, '', 0),
(132, 133, 1, '2025-05-13', '2025-10-22', '2025', 1, '54345678', 2345),
(133, 4, 1, '2025-05-14', '2025-07-31', '2025', 1, '1234576', 380),
(134, 4, 1, '2025-05-23', '2025-07-31', '2025', 1, '1234', 234),
(135, 4, 1, '2025-05-21', '2025-08-01', '2025', 2, '43reerd', 545),
(136, 143, 1, '2025-06-02', '2025-08-27', '2020', 1, '456545', 2358);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verificacion_semestre`
--

CREATE TABLE `verificacion_semestre` (
  `id_semestre` int(11) NOT NULL,
  `nombre_semestre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `verificacion_semestre`
--

INSERT INTO `verificacion_semestre` (`id_semestre`, `nombre_semestre`) VALUES
(1, '1er Semestre'),
(2, '2do Semestre'),
(3, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_colaborador`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_colaborador` (
`id_colaborador` int(11)
,`nombre_1` varchar(30)
,`nombre_2` varchar(30)
,`apellido_paterno` varchar(30)
,`apellido_materno` varchar(30)
,`numero_colaborador` varchar(6)
,`email_corporativo` varchar(70)
,`id_area` int(11)
,`nombre_area` varchar(40)
,`id_direccion` int(11)
,`nombre_direccion` varchar(50)
,`id_empresa` int(11)
,`nombre_empresa` varchar(30)
,`dominio_correo` varchar(100)
,`id_puesto` int(11)
,`nombre_puesto` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_colaborador`
--
DROP TABLE IF EXISTS `vista_colaborador`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_colaborador`  AS SELECT `b`.`id_colaborador` AS `id_colaborador`, `b`.`nombre_1` AS `nombre_1`, `b`.`nombre_2` AS `nombre_2`, `b`.`apellido_paterno` AS `apellido_paterno`, `b`.`apellido_materno` AS `apellido_materno`, `b`.`numero_colaborador` AS `numero_colaborador`, `b`.`email_corporativo` AS `email_corporativo`, `c`.`id_area` AS `id_area`, `c`.`nombre_area` AS `nombre_area`, `d`.`id_direccion` AS `id_direccion`, `d`.`nombre_direccion` AS `nombre_direccion`, `e`.`id_empresa` AS `id_empresa`, `e`.`nombre_empresa` AS `nombre_empresa`, `e`.`dominio_correo` AS `dominio_correo`, `f`.`id_puesto` AS `id_puesto`, `f`.`nombre_puesto` AS `nombre_puesto` FROM (((((`usuarios` `a` join `colaboradores` `b` on(`b`.`id_colaborador` = `a`.`id_colaborador`)) join `areas` `c` on(`c`.`id_area` = `b`.`id_area`)) join `direcciones` `d` on(`d`.`id_direccion` = `c`.`id_direccion`)) join `empresas` `e` on(`e`.`id_empresa` = `d`.`id_empresa`)) join `puestos` `f` on(`f`.`id_puesto` = `b`.`id_puesto`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`),
  ADD KEY `fk_areas_direccion` (`id_direccion`);

--
-- Indices de la tabla `arrendadora`
--
ALTER TABLE `arrendadora`
  ADD PRIMARY KEY (`id_arrendadora`);

--
-- Indices de la tabla `aseguradoras`
--
ALTER TABLE `aseguradoras`
  ADD PRIMARY KEY (`id_aseguradora`);

--
-- Indices de la tabla `asignacion_aseguradora_unidad`
--
ALTER TABLE `asignacion_aseguradora_unidad`
  ADD PRIMARY KEY (`id_asignacion_aseguradora`),
  ADD KEY `id_unidad FK unidad` (`id_unidad`),
  ADD KEY `id_estatus_aseguradora FK estatus_aseguradora` (`id_estatus_aseguradora`),
  ADD KEY `id_estado_aseguradora FK estao_aseguradoras` (`id_estado_aseguradora`),
  ADD KEY `id_aseguradora FK aseguradoras` (`id_aseguradora`);

--
-- Indices de la tabla `asignacion_catalogos_modelos`
--
ALTER TABLE `asignacion_catalogos_modelos`
  ADD PRIMARY KEY (`id_asignacion_unidades_catalogo_revision`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_catalogo_ FK catalogo_revision` (`id_catalogo_revision`);

--
-- Indices de la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  ADD PRIMARY KEY (`id_asignacion_modelos_directivos`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_tipo_directivo` (`id_tipo_directivo`);

--
-- Indices de la tabla `asignacion_revisiones_catalogos`
--
ALTER TABLE `asignacion_revisiones_catalogos`
  ADD PRIMARY KEY (`id_revisiones_catalogos`),
  ADD KEY `id_catalogo_revision` (`id_catalogo_revision`),
  ADD KEY `id_revisiones` (`id_revision`);

--
-- Indices de la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  ADD PRIMARY KEY (`id_asignaciones`),
  ADD KEY `id_tipo_asignaciones` (`id_tipo_asignaciones`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_colaborador` (`id_colaborador`),
  ADD KEY `id_estatus_carta_responsiva` (`id_estatus_carta_responsiva`),
  ADD KEY `id_estatus_comodato` (`id_estatus_comodato`),
  ADD KEY `id_creador_comodato FK id_colaborador` (`id_creador_comodato`),
  ADD KEY `id_usuario_externo fk USUARIOS_EXTERNOS` (`id_usuario_externo`);

--
-- Indices de la tabla `asignacion_unidad_demo`
--
ALTER TABLE `asignacion_unidad_demo`
  ADD PRIMARY KEY (`id_asignacion_unidad_demo`),
  ADD KEY `id_unidad FK unidades` (`id_unidad`),
  ADD KEY `id_colaborador_que_asigna FK colabs` (`id_colaborador_que_asigna`),
  ADD KEY `id_persona_fisica FK personas_fisicas` (`id_persona_fisica`),
  ADD KEY `id_persona_moral FK personas_morales` (`id_persona_moral`),
  ADD KEY `id_autorizador Fk colab` (`id_autorizador`),
  ADD KEY `id_asignar_prueba_demo_master_driver FK colab` (`id_asignar_prueba_demo_master_driver`),
  ADD KEY `id_creador_comodato_demo FK colab` (`id_creador_comodato_demo`),
  ADD KEY `id_estatus_comodato_demo FK estatus_comodato` (`id_estatus_comodato_demo`),
  ADD KEY `id_estado_prueba_demo FK estado_prueba_demo` (`id_estado_prueba_demo`),
  ADD KEY `id_colaborador_sube_reporte_final FK colab` (`id_colaborador_sube_reporte_final`);

--
-- Indices de la tabla `catalogos_revisiones`
--
ALTER TABLE `catalogos_revisiones`
  ADD PRIMARY KEY (`id_catalogo_revision`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id_colaborador`);

--
-- Indices de la tabla `constancias_situacion_fiscal`
--
ALTER TABLE `constancias_situacion_fiscal`
  ADD PRIMARY KEY (`id_constancia_situacion_fiscal`),
  ADD KEY `id_colaborador FK colabs` (`id_colaborador`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `id_empresa FK empres` (`id_empresa`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`id_directivo`),
  ADD KEY `id_colaborador` (`id_colaborador`),
  ADD KEY `id_tipo_director` (`id_tipo_directivo`),
  ADD KEY `id_tipo_directivo` (`id_tipo_directivo`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`id_domicilio`),
  ADD KEY `id_colaborador FK colaboradores` (`id_colaborador`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `estado_aseguradora`
--
ALTER TABLE `estado_aseguradora`
  ADD PRIMARY KEY (`id_estado_aseguradora`);

--
-- Indices de la tabla `estado_licencia_conducir`
--
ALTER TABLE `estado_licencia_conducir`
  ADD PRIMARY KEY (`id_estado_licencia`);

--
-- Indices de la tabla `estado_pruebas_demos`
--
ALTER TABLE `estado_pruebas_demos`
  ADD PRIMARY KEY (`id_estado_prueba_demo`);

--
-- Indices de la tabla `estado_unidad`
--
ALTER TABLE `estado_unidad`
  ADD PRIMARY KEY (`id_estado_unidad`);

--
-- Indices de la tabla `estatus_aseguradora`
--
ALTER TABLE `estatus_aseguradora`
  ADD PRIMARY KEY (`id_estatus_aseguradora`);

--
-- Indices de la tabla `estatus_asignacion`
--
ALTER TABLE `estatus_asignacion`
  ADD PRIMARY KEY (`id_estatus_asignacion`);

--
-- Indices de la tabla `estatus_carta_responsiva`
--
ALTER TABLE `estatus_carta_responsiva`
  ADD PRIMARY KEY (`id_estatus_carta_responsiva`);

--
-- Indices de la tabla `estatus_comodato`
--
ALTER TABLE `estatus_comodato`
  ADD PRIMARY KEY (`id_estatus_comodato`);

--
-- Indices de la tabla `estatus_inspeccion`
--
ALTER TABLE `estatus_inspeccion`
  ADD PRIMARY KEY (`id_estatus_inspeccion`);

--
-- Indices de la tabla `estatus_mantenimiento`
--
ALTER TABLE `estatus_mantenimiento`
  ADD PRIMARY KEY (`id_estatus_mantenimiento`);

--
-- Indices de la tabla `estatus_revision`
--
ALTER TABLE `estatus_revision`
  ADD PRIMARY KEY (`id_estatus_revision`);

--
-- Indices de la tabla `estatus_tenencias`
--
ALTER TABLE `estatus_tenencias`
  ADD PRIMARY KEY (`id_estatus_tenencias`);

--
-- Indices de la tabla `estatus_unidades`
--
ALTER TABLE `estatus_unidades`
  ADD PRIMARY KEY (`id_estatus_unidad`);

--
-- Indices de la tabla `estatus_verificacion`
--
ALTER TABLE `estatus_verificacion`
  ADD PRIMARY KEY (`id_estatus_verificacion`);

--
-- Indices de la tabla `evidencias_unidad`
--
ALTER TABLE `evidencias_unidad`
  ADD PRIMARY KEY (`id_evidencias_unidad`),
  ADD KEY `id_tipo_evidencia` (`id_tipo_evidencia`),
  ADD KEY `id_unidad` (`id_unidad`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`id_incidencias`),
  ADD KEY `id_tipo_incidencias` (`id_tipo_incidencias`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_colaborador` (`id_colaborador`);

--
-- Indices de la tabla `ines`
--
ALTER TABLE `ines`
  ADD PRIMARY KEY (`id_ine`),
  ADD KEY `id_colaborador FK colab` (`id_colaborador`);

--
-- Indices de la tabla `inspecciones`
--
ALTER TABLE `inspecciones`
  ADD PRIMARY KEY (`id_inspeccion`),
  ADD KEY `id_unid FK unidades` (`id_unidad`),
  ADD KEY `id_esinoecto FK colaboradores` (`id_inspector`),
  ADD KEY `id_solicitante FK colaborador` (`id_solicitante`),
  ADD KEY `id_estatus_inspeccion FK estatus_inspeccion` (`id_estatus_inspeccion`);

--
-- Indices de la tabla `inspeccion_revisiones`
--
ALTER TABLE `inspeccion_revisiones`
  ADD PRIMARY KEY (`id_inspeccion_revision`),
  ADD KEY `id_estatus_revicion FK estatus_revicion` (`id_estatus_revision`),
  ADD KEY `id_revision FK revisiones` (`id_revision`),
  ADD KEY `id_insepccion FK insepcciones` (`id_inspeccion`);

--
-- Indices de la tabla `licencias_conducir`
--
ALTER TABLE `licencias_conducir`
  ADD PRIMARY KEY (`id_licencia`),
  ADD KEY `id_colaborador FK licencias` (`id_colaborador`),
  ADD KEY `id_estado_licencia FK estado_licencia` (`id_estado_licencia`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id_mantenimiento`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_tipo_mantenimiento` (`id_tipo_mantenimiento`),
  ADD KEY `id_estatus_mantenimiento` (`id_estatus_mantenimiento`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`);

--
-- Indices de la tabla `personas_fisicas`
--
ALTER TABLE `personas_fisicas`
  ADD PRIMARY KEY (`id_persona_fisica`),
  ADD KEY `id_registrador_persona_fisica fk col` (`id_registrador_persona_fisica`);

--
-- Indices de la tabla `personas_morales`
--
ALTER TABLE `personas_morales`
  ADD PRIMARY KEY (`id_persona_moral`),
  ADD KEY `id_regis FK col` (`id_registrador_persona_moral`);

--
-- Indices de la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD PRIMARY KEY (`id_polizas`),
  ADD UNIQUE KEY `identificador_poliza` (`identificador_poliza`),
  ADD KEY `id_tipo_poliza` (`id_tipo_poliza`),
  ADD KEY `id_unidad` (`id_unidad`);

--
-- Indices de la tabla `pruebas_unidad_demo`
--
ALTER TABLE `pruebas_unidad_demo`
  ADD PRIMARY KEY (`id_prueba`),
  ADD KEY `id_asignacion_unidad_demo FK asignacion demo` (`id_asignacion_unidad_demo`),
  ADD KEY `id_colaborador_registra_prueba FK colab` (`id_colaborador_registra_prueba`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id_puesto`),
  ADD KEY `fk_puesto_area` (`id_area`);

--
-- Indices de la tabla `revisiones`
--
ALTER TABLE `revisiones`
  ADD PRIMARY KEY (`id_revision`),
  ADD KEY `id_tipo_revision` (`id_tipo_revision`),
  ADD KEY `id_tipo_revisiones` (`id_tipo_revision`);

--
-- Indices de la tabla `revisiones_unidades`
--
ALTER TABLE `revisiones_unidades`
  ADD PRIMARY KEY (`id_revisiones_unidades`),
  ADD KEY `id_unidad` (`id_unidad`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `tenencias`
--
ALTER TABLE `tenencias`
  ADD PRIMARY KEY (`id_tenencias`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_estatus_tenencias` (`id_estatus_tenencias`);

--
-- Indices de la tabla `tipos_cajas`
--
ALTER TABLE `tipos_cajas`
  ADD PRIMARY KEY (`id_tipo_caja`);

--
-- Indices de la tabla `tipos_combustibles`
--
ALTER TABLE `tipos_combustibles`
  ADD PRIMARY KEY (`id_tipo_combustible`);

--
-- Indices de la tabla `tipos_frenos`
--
ALTER TABLE `tipos_frenos`
  ADD PRIMARY KEY (`id_tipo_freno`);

--
-- Indices de la tabla `tipos_recidencias_externos`
--
ALTER TABLE `tipos_recidencias_externos`
  ADD PRIMARY KEY (`id_tipo_recidencia`);

--
-- Indices de la tabla `tipos_suspenciones`
--
ALTER TABLE `tipos_suspenciones`
  ADD PRIMARY KEY (`id_tipo_suspencion`);

--
-- Indices de la tabla `tipos_usos`
--
ALTER TABLE `tipos_usos`
  ADD PRIMARY KEY (`id_tipo_uso`);

--
-- Indices de la tabla `tipo_adquisicion`
--
ALTER TABLE `tipo_adquisicion`
  ADD PRIMARY KEY (`id_tipo_adquisicion`);

--
-- Indices de la tabla `tipo_asignaciones`
--
ALTER TABLE `tipo_asignaciones`
  ADD PRIMARY KEY (`id_tipo_asignaciones`);

--
-- Indices de la tabla `tipo_directivos`
--
ALTER TABLE `tipo_directivos`
  ADD PRIMARY KEY (`id_tipo_directivo`);

--
-- Indices de la tabla `tipo_evidencia`
--
ALTER TABLE `tipo_evidencia`
  ADD PRIMARY KEY (`id_tipo_evidencia`);

--
-- Indices de la tabla `tipo_incidencias`
--
ALTER TABLE `tipo_incidencias`
  ADD PRIMARY KEY (`id_tipo_incidencias`);

--
-- Indices de la tabla `tipo_mantenimiento`
--
ALTER TABLE `tipo_mantenimiento`
  ADD PRIMARY KEY (`id_tipo_mantenimiento`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `tipo_polizas`
--
ALTER TABLE `tipo_polizas`
  ADD PRIMARY KEY (`id_tipo_poliza`);

--
-- Indices de la tabla `tipo_revisiones`
--
ALTER TABLE `tipo_revisiones`
  ADD PRIMARY KEY (`id_tipo_revisiones`);

--
-- Indices de la tabla `tipo_unidad`
--
ALTER TABLE `tipo_unidad`
  ADD PRIMARY KEY (`id_tipo_unidad`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `tipo_usuarios_externos`
--
ALTER TABLE `tipo_usuarios_externos`
  ADD PRIMARY KEY (`id_tipo_usuario_externo`);

--
-- Indices de la tabla `tracciones`
--
ALTER TABLE `tracciones`
  ADD PRIMARY KEY (`id_traccion`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id_unidad`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_estado_unidad` (`id_estado_unidad`),
  ADD KEY `id_estatus_unidad` (`id_estatus_unidad`),
  ADD KEY `id_sede` (`id_sede`),
  ADD KEY `id_tipo_adquisicion` (`id_tipo_adquisicion`),
  ADD KEY `id_tipo_unidad` (`id_tipo_unidad`),
  ADD KEY `id_color FK unidades_color` (`id_color`),
  ADD KEY `id_arrendadora FK arrendadora` (`id_arrendadora`),
  ADD KEY `id_creador_unidad FK colaboradores` (`id_creador_unidad`),
  ADD KEY `id_tipo_co FK combus` (`id_tipo_combustible`),
  ADD KEY `id_traccion FK ttracciones` (`id_traccion`),
  ADD KEY `id_tipo_caja FK tipos_cajas` (`id_tipo_caja`),
  ADD KEY `id_tipo_freno FK tió_frenos` (`id_tipo_freno`),
  ADD KEY `id_tipo_suspencion FK tipo_suspenciones` (`id_tipo_suspencion`),
  ADD KEY `id_tipo_uso FK tipos_usos` (`id_tipo_uso`);

--
-- Indices de la tabla `unidad_color`
--
ALTER TABLE `unidad_color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`),
  ADD KEY `id_colaborador` (`id_colaborador`);

--
-- Indices de la tabla `usuarios_externos`
--
ALTER TABLE `usuarios_externos`
  ADD PRIMARY KEY (`id_usuario_externo`),
  ADD KEY `id_estado_licencia FK licencias` (`id_estado_licencia`),
  ADD KEY `id_tipo_recidencia FK tipo_recidencia` (`id_tipo_recidencia`),
  ADD KEY `id_tipo_usuario_externo FK usuarios_externos` (`id_tipo_usuario_externo`);

--
-- Indices de la tabla `verificaciones`
--
ALTER TABLE `verificaciones`
  ADD PRIMARY KEY (`id_verificaciones`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_estatus_verificacion` (`id_estatus_verificacion`),
  ADD KEY `id_semestre FK verificacion_semestre` (`id_semestre`);

--
-- Indices de la tabla `verificacion_semestre`
--
ALTER TABLE `verificacion_semestre`
  ADD PRIMARY KEY (`id_semestre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `arrendadora`
--
ALTER TABLE `arrendadora`
  MODIFY `id_arrendadora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `aseguradoras`
--
ALTER TABLE `aseguradoras`
  MODIFY `id_aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `asignacion_aseguradora_unidad`
--
ALTER TABLE `asignacion_aseguradora_unidad`
  MODIFY `id_asignacion_aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `asignacion_catalogos_modelos`
--
ALTER TABLE `asignacion_catalogos_modelos`
  MODIFY `id_asignacion_unidades_catalogo_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  MODIFY `id_asignacion_modelos_directivos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion_revisiones_catalogos`
--
ALTER TABLE `asignacion_revisiones_catalogos`
  MODIFY `id_revisiones_catalogos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  MODIFY `id_asignaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `asignacion_unidad_demo`
--
ALTER TABLE `asignacion_unidad_demo`
  MODIFY `id_asignacion_unidad_demo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `catalogos_revisiones`
--
ALTER TABLE `catalogos_revisiones`
  MODIFY `id_catalogo_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT de la tabla `constancias_situacion_fiscal`
--
ALTER TABLE `constancias_situacion_fiscal`
  MODIFY `id_constancia_situacion_fiscal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `directivos`
--
ALTER TABLE `directivos`
  MODIFY `id_directivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `id_domicilio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estado_aseguradora`
--
ALTER TABLE `estado_aseguradora`
  MODIFY `id_estado_aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estado_licencia_conducir`
--
ALTER TABLE `estado_licencia_conducir`
  MODIFY `id_estado_licencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estado_pruebas_demos`
--
ALTER TABLE `estado_pruebas_demos`
  MODIFY `id_estado_prueba_demo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estado_unidad`
--
ALTER TABLE `estado_unidad`
  MODIFY `id_estado_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estatus_aseguradora`
--
ALTER TABLE `estatus_aseguradora`
  MODIFY `id_estatus_aseguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus_asignacion`
--
ALTER TABLE `estatus_asignacion`
  MODIFY `id_estatus_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_carta_responsiva`
--
ALTER TABLE `estatus_carta_responsiva`
  MODIFY `id_estatus_carta_responsiva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estatus_comodato`
--
ALTER TABLE `estatus_comodato`
  MODIFY `id_estatus_comodato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estatus_inspeccion`
--
ALTER TABLE `estatus_inspeccion`
  MODIFY `id_estatus_inspeccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus_mantenimiento`
--
ALTER TABLE `estatus_mantenimiento`
  MODIFY `id_estatus_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_revision`
--
ALTER TABLE `estatus_revision`
  MODIFY `id_estatus_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus_tenencias`
--
ALTER TABLE `estatus_tenencias`
  MODIFY `id_estatus_tenencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_unidades`
--
ALTER TABLE `estatus_unidades`
  MODIFY `id_estatus_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_verificacion`
--
ALTER TABLE `estatus_verificacion`
  MODIFY `id_estatus_verificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evidencias_unidad`
--
ALTER TABLE `evidencias_unidad`
  MODIFY `id_evidencias_unidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id_incidencias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ines`
--
ALTER TABLE `ines`
  MODIFY `id_ine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inspecciones`
--
ALTER TABLE `inspecciones`
  MODIFY `id_inspeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inspeccion_revisiones`
--
ALTER TABLE `inspeccion_revisiones`
  MODIFY `id_inspeccion_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `licencias_conducir`
--
ALTER TABLE `licencias_conducir`
  MODIFY `id_licencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personas_fisicas`
--
ALTER TABLE `personas_fisicas`
  MODIFY `id_persona_fisica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personas_morales`
--
ALTER TABLE `personas_morales`
  MODIFY `id_persona_moral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `polizas`
--
ALTER TABLE `polizas`
  MODIFY `id_polizas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pruebas_unidad_demo`
--
ALTER TABLE `pruebas_unidad_demo`
  MODIFY `id_prueba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT de la tabla `revisiones`
--
ALTER TABLE `revisiones`
  MODIFY `id_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `revisiones_unidades`
--
ALTER TABLE `revisiones_unidades`
  MODIFY `id_revisiones_unidades` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tenencias`
--
ALTER TABLE `tenencias`
  MODIFY `id_tenencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `tipos_cajas`
--
ALTER TABLE `tipos_cajas`
  MODIFY `id_tipo_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipos_combustibles`
--
ALTER TABLE `tipos_combustibles`
  MODIFY `id_tipo_combustible` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipos_frenos`
--
ALTER TABLE `tipos_frenos`
  MODIFY `id_tipo_freno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipos_recidencias_externos`
--
ALTER TABLE `tipos_recidencias_externos`
  MODIFY `id_tipo_recidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_suspenciones`
--
ALTER TABLE `tipos_suspenciones`
  MODIFY `id_tipo_suspencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_usos`
--
ALTER TABLE `tipos_usos`
  MODIFY `id_tipo_uso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_adquisicion`
--
ALTER TABLE `tipo_adquisicion`
  MODIFY `id_tipo_adquisicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_asignaciones`
--
ALTER TABLE `tipo_asignaciones`
  MODIFY `id_tipo_asignaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_directivos`
--
ALTER TABLE `tipo_directivos`
  MODIFY `id_tipo_directivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_evidencia`
--
ALTER TABLE `tipo_evidencia`
  MODIFY `id_tipo_evidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_incidencias`
--
ALTER TABLE `tipo_incidencias`
  MODIFY `id_tipo_incidencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_mantenimiento`
--
ALTER TABLE `tipo_mantenimiento`
  MODIFY `id_tipo_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_polizas`
--
ALTER TABLE `tipo_polizas`
  MODIFY `id_tipo_poliza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_revisiones`
--
ALTER TABLE `tipo_revisiones`
  MODIFY `id_tipo_revisiones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_unidad`
--
ALTER TABLE `tipo_unidad`
  MODIFY `id_tipo_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios_externos`
--
ALTER TABLE `tipo_usuarios_externos`
  MODIFY `id_tipo_usuario_externo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tracciones`
--
ALTER TABLE `tracciones`
  MODIFY `id_traccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `unidad_color`
--
ALTER TABLE `unidad_color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios_externos`
--
ALTER TABLE `usuarios_externos`
  MODIFY `id_usuario_externo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `verificaciones`
--
ALTER TABLE `verificaciones`
  MODIFY `id_verificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `verificacion_semestre`
--
ALTER TABLE `verificacion_semestre`
  MODIFY `id_semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `fk_areas_direccion` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`);

--
-- Filtros para la tabla `asignacion_aseguradora_unidad`
--
ALTER TABLE `asignacion_aseguradora_unidad`
  ADD CONSTRAINT `id_aseguradora FK aseguradoras` FOREIGN KEY (`id_aseguradora`) REFERENCES `aseguradoras` (`id_aseguradora`),
  ADD CONSTRAINT `id_estado_aseguradora FK estao_aseguradoras` FOREIGN KEY (`id_estado_aseguradora`) REFERENCES `estado_aseguradora` (`id_estado_aseguradora`),
  ADD CONSTRAINT `id_estatus_aseguradora FK estatus_aseguradora` FOREIGN KEY (`id_estatus_aseguradora`) REFERENCES `estatus_aseguradora` (`id_estatus_aseguradora`),
  ADD CONSTRAINT `id_unidad FK unidad` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`);

--
-- Filtros para la tabla `asignacion_catalogos_modelos`
--
ALTER TABLE `asignacion_catalogos_modelos`
  ADD CONSTRAINT `id_catalogo_ FK catalogo_revision` FOREIGN KEY (`id_catalogo_revision`) REFERENCES `catalogos_revisiones` (`id_catalogo_revision`),
  ADD CONSTRAINT `id_modelo FK modelo` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`);

--
-- Filtros para la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  ADD CONSTRAINT `asignacion_modelos_directivos_ibfk_1` FOREIGN KEY (`id_tipo_directivo`) REFERENCES `tipo_directivos` (`id_tipo_directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_modelos_directivos_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignacion_revisiones_catalogos`
--
ALTER TABLE `asignacion_revisiones_catalogos`
  ADD CONSTRAINT `id_catalogo_revision FK catalogo_revision` FOREIGN KEY (`id_catalogo_revision`) REFERENCES `catalogos_revisiones` (`id_catalogo_revision`),
  ADD CONSTRAINT `id_revisiones FK revisiones` FOREIGN KEY (`id_revision`) REFERENCES `revisiones` (`id_revision`);

--
-- Filtros para la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  ADD CONSTRAINT `asignacion_unidad_colaborador_FK_id_estatus_comodato ` FOREIGN KEY (`id_estatus_comodato`) REFERENCES `estatus_comodato` (`id_estatus_comodato`),
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_1` FOREIGN KEY (`id_tipo_asignaciones`) REFERENCES `tipo_asignaciones` (`id_tipo_asignaciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_3` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_creador_comodato FK id_colaborador` FOREIGN KEY (`id_creador_comodato`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_estatus_carta_responsiva` FOREIGN KEY (`id_estatus_carta_responsiva`) REFERENCES `estatus_carta_responsiva` (`id_estatus_carta_responsiva`),
  ADD CONSTRAINT `id_usuario_externo fk USUARIOS_EXTERNOS` FOREIGN KEY (`id_usuario_externo`) REFERENCES `usuarios_externos` (`id_usuario_externo`);

--
-- Filtros para la tabla `asignacion_unidad_demo`
--
ALTER TABLE `asignacion_unidad_demo`
  ADD CONSTRAINT `id_asignar_prueba_demo_master_driver FK colab` FOREIGN KEY (`id_asignar_prueba_demo_master_driver`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_autorizador Fk colab` FOREIGN KEY (`id_autorizador`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_colaborador_que_asigna FK colabs` FOREIGN KEY (`id_colaborador_que_asigna`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_colaborador_sube_reporte_final FK colab` FOREIGN KEY (`id_colaborador_sube_reporte_final`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_creador_comodato_demo FK colab` FOREIGN KEY (`id_creador_comodato_demo`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_estado_prueba_demo FK estado_prueba_demo` FOREIGN KEY (`id_estado_prueba_demo`) REFERENCES `estado_pruebas_demos` (`id_estado_prueba_demo`),
  ADD CONSTRAINT `id_estatus_comodato_demo FK estatus_comodato` FOREIGN KEY (`id_estatus_comodato_demo`) REFERENCES `estatus_comodato` (`id_estatus_comodato`),
  ADD CONSTRAINT `id_persona_fisica FK personas_fisicas` FOREIGN KEY (`id_persona_fisica`) REFERENCES `personas_fisicas` (`id_persona_fisica`),
  ADD CONSTRAINT `id_persona_moral FK personas_morales` FOREIGN KEY (`id_persona_moral`) REFERENCES `personas_morales` (`id_persona_moral`),
  ADD CONSTRAINT `id_unidad FK unidades` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`);

--
-- Filtros para la tabla `constancias_situacion_fiscal`
--
ALTER TABLE `constancias_situacion_fiscal`
  ADD CONSTRAINT `id_colaborador FK colabs` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `id_marca FK marcas` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);

--
-- Filtros para la tabla `pruebas_unidad_demo`
--
ALTER TABLE `pruebas_unidad_demo`
  ADD CONSTRAINT `id_asignacion_unidad_demo FK asignacion demo` FOREIGN KEY (`id_asignacion_unidad_demo`) REFERENCES `asignacion_unidad_demo` (`id_asignacion_unidad_demo`),
  ADD CONSTRAINT `id_colaborador_registra_prueba FK colab` FOREIGN KEY (`id_colaborador_registra_prueba`) REFERENCES `colaboradores` (`id_colaborador`);

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `id_model fk model` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_colaborador_aud FK colaboradores` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`),
  ADD CONSTRAINT `id_tipo_usuario  fk tipo_usu` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
