-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2025 a las 05:03:34
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
-- Estructura de tabla para la tabla `asignacion_modelos_directivos`
--

CREATE TABLE `asignacion_modelos_directivos` (
  `id_asignacion_modelos_directivos` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_tipo_directivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_modelos_directivos`
--

INSERT INTO `asignacion_modelos_directivos` (`id_asignacion_modelos_directivos`, `id_modelo`, `id_tipo_directivo`) VALUES
(1, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_unidad_colaborador`
--

CREATE TABLE `asignacion_unidad_colaborador` (
  `id_asignaciones` int(11) NOT NULL,
  `id_tipo_asignaciones` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `fecha_asignacion` datetime NOT NULL,
  `fecha_devolucion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_unidad_colaborador`
--

INSERT INTO `asignacion_unidad_colaborador` (`id_asignaciones`, `id_tipo_asignaciones`, `id_unidad`, `id_colaborador`, `fecha_asignacion`, `fecha_devolucion`) VALUES
(1, 1, 1, 1, '2025-02-20 10:00:00', '2025-03-20 10:00:00'),
(2, 2, 5, 2, '2025-02-22 09:30:00', '2025-04-22 09:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id_colaborador` int(11) NOT NULL,
  `nombre_1` varchar(30) NOT NULL,
  `nombre_2` varchar(30) NOT NULL,
  `apaterno` varchar(50) NOT NULL,
  `amaterno` varchar(50) NOT NULL,
  `numero_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colaboradores`
--

INSERT INTO `colaboradores` (`id_colaborador`, `nombre_1`, `nombre_2`, `apaterno`, `amaterno`, `numero_empleado`) VALUES
(1, 'Uriel', '', 'Cabello', 'Sosa', 1001),
(2, 'María', 'Luisa', 'Fernández', 'Díaz', 1002),
(3, 'Luis', 'Alberto', 'Martínez', 'Sánchez', 1003),
(4, 'Uriel', '', 'Cabello', 'Sosa', 1004);

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
(1, 1, 4);

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
(3, 'Asignado');

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
(1, 'Aprovada'),
(2, 'Rechazada'),
(3, 'Pendiente');

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
(1, 'Inactivo'),
(2, 'Activo');

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
(1, 'Aprovado'),
(2, 'Rechazado');

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

--
-- Volcado de datos para la tabla `evidencias_unidad`
--

INSERT INTO `evidencias_unidad` (`id_evidencias_unidad`, `id_tipo_evidencia`, `id_unidad`, `evidencia_salida`, `evidencia_llegada`, `fecha_evidencia`, `kilometraje_salida`, `kilometraje_llegada`) VALUES
(1, 1, 5, 'img1.jpg', '', '2025-03-06 13:10:49', '', '');

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

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`id_incidencias`, `id_tipo_incidencias`, `id_unidad`, `id_colaborador`, `fecha_incidencia`, `descripcion_incidencia`, `imagen_incidencia`) VALUES
(1, 1, 1, 1, '2025-02-10', '', ''),
(2, 2, 2, 2, '2025-02-12', '', '');

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

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id_mantenimiento`, `id_unidad`, `id_tipo_mantenimiento`, `id_estatus_mantenimiento`, `fecha_mantenimiento`) VALUES
(4, 2, 1, 1, '2025-01-10'),
(5, 2, 2, 2, '2025-01-15');

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
(7, 'TOYOTA');

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
(4, 4, 'Aveo'),
(5, 3, 'BEIJING'),
(6, 1, 'TM3');

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
-- Estructura de tabla para la tabla `poliza_seguro`
--

CREATE TABLE `poliza_seguro` (
  `id_poliza_seguro` int(11) NOT NULL,
  `poliza_seguro` varchar(100) NOT NULL,
  `img_poliza_seguro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poliza_tenencia`
--

CREATE TABLE `poliza_tenencia` (
  `id_poliza_tenencia` int(11) NOT NULL,
  `poliza_tenencia` varchar(50) NOT NULL,
  `img_poliza_tenencia` varchar(100) NOT NULL
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
(1, 'SANTAFE'),
(6, 'GUADALAJARA'),
(7, 'QUERETARO'),
(8, 'LAGOS'),
(9, 'MONTERREY'),
(10, 'FULONGMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tenencias`
--

CREATE TABLE `tenencias` (
  `id_tenencias` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_estatus_tenencias` int(11) NOT NULL,
  `ultima_fecha_verificacion` date NOT NULL,
  `fecha_verificacion` date NOT NULL,
  `kilometraje_verificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tenencias`
--

INSERT INTO `tenencias` (`id_tenencias`, `id_unidad`, `id_estatus_tenencias`, `ultima_fecha_verificacion`, `fecha_verificacion`, `kilometraje_verificacion`) VALUES
(3, 5, 1, '2024-08-13', '2025-03-04', 15000);

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
(2, 'Permanente');

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
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id_unidad` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_estado_unidad` int(11) NOT NULL,
  `id_estatus_unidad` int(11) NOT NULL,
  `id_tipo_adquisicion` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_poliza_seguro` int(11) NOT NULL,
  `id_poliza_tenencia` int(11) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `kilometraje` bigint(50) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `tarjeta_circulacion` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `img_unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id_unidad`, `id_modelo`, `id_estado_unidad`, `id_estatus_unidad`, `id_tipo_adquisicion`, `id_sede`, `id_poliza_seguro`, `id_poliza_tenencia`, `vin`, `kilometraje`, `placa`, `tarjeta_circulacion`, `color`, `img_unidad`) VALUES
(1, 1, 1, 1, 1, 1, 0, 0, 'JTDBE32K123456789', 15000, 'ABC-123', '', 'Rojo', ''),
(2, 2, 2, 2, 1, 6, 0, 0, '1HGCM82633A004352', 20000, 'XYZ-789', '', 'Azul', ''),
(5, 1, 1, 2, 1, 7, 0, 0, 'HJRPBGGB6RB151012', 12345678, 'MSH449A\r\n', '', 'Negro', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_tipo_usuario`, `id_colaborador`, `correo`, `contraseña`) VALUES
(1, 1, 4, 'uriel.cabello@ldrsolutions.com.mx', '123456789'),
(2, 2, 2, 'demo.demo@ldrsolutions.com.mx', '123456789'),
(3, 3, 3, 'demo2.demo2@ldrsolutions.com.mx', '987654321');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verificaciones`
--

CREATE TABLE `verificaciones` (
  `id_verificaciones` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_estatus_verificacion` int(11) NOT NULL,
  `fecha_verificacion` date NOT NULL,
  `kilometraje_verificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `verificaciones`
--

INSERT INTO `verificaciones` (`id_verificaciones`, `id_unidad`, `id_estatus_verificacion`, `fecha_verificacion`, `kilometraje_verificacion`) VALUES
(4, 1, 1, '2025-01-15', 15000),
(5, 2, 2, '2025-02-10', 20000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  ADD PRIMARY KEY (`id_asignacion_modelos_directivos`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_tipo_directivo` (`id_tipo_directivo`);

--
-- Indices de la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  ADD PRIMARY KEY (`id_asignaciones`),
  ADD KEY `id_tipo_asignaciones` (`id_tipo_asignaciones`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_colaborador` (`id_colaborador`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id_colaborador`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`id_directivo`),
  ADD KEY `id_colaborador` (`id_colaborador`),
  ADD KEY `id_tipo_director` (`id_tipo_directivo`),
  ADD KEY `id_tipo_directivo` (`id_tipo_directivo`);

--
-- Indices de la tabla `estado_unidad`
--
ALTER TABLE `estado_unidad`
  ADD PRIMARY KEY (`id_estado_unidad`);

--
-- Indices de la tabla `estatus_asignacion`
--
ALTER TABLE `estatus_asignacion`
  ADD PRIMARY KEY (`id_estatus_asignacion`);

--
-- Indices de la tabla `estatus_mantenimiento`
--
ALTER TABLE `estatus_mantenimiento`
  ADD PRIMARY KEY (`id_estatus_mantenimiento`);

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
-- Indices de la tabla `poliza_seguro`
--
ALTER TABLE `poliza_seguro`
  ADD PRIMARY KEY (`id_poliza_seguro`);

--
-- Indices de la tabla `poliza_tenencia`
--
ALTER TABLE `poliza_tenencia`
  ADD PRIMARY KEY (`id_poliza_tenencia`);

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
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id_unidad`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_estado_unidad` (`id_estado_unidad`),
  ADD KEY `id_estatus_unidad` (`id_estatus_unidad`),
  ADD KEY `id_sede` (`id_sede`),
  ADD KEY `id_poliza_seguro` (`id_poliza_seguro`),
  ADD KEY `id_tipo_adquisicion` (`id_tipo_adquisicion`),
  ADD KEY `id_poliza_tenencia` (`id_poliza_tenencia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`),
  ADD KEY `id_colaborador` (`id_colaborador`);

--
-- Indices de la tabla `verificaciones`
--
ALTER TABLE `verificaciones`
  ADD PRIMARY KEY (`id_verificaciones`),
  ADD KEY `id_unidad` (`id_unidad`),
  ADD KEY `id_estatus_verificacion` (`id_estatus_verificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  MODIFY `id_asignacion_modelos_directivos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  MODIFY `id_asignaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `directivos`
--
ALTER TABLE `directivos`
  MODIFY `id_directivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estado_unidad`
--
ALTER TABLE `estado_unidad`
  MODIFY `id_estado_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_asignacion`
--
ALTER TABLE `estatus_asignacion`
  MODIFY `id_estatus_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus_mantenimiento`
--
ALTER TABLE `estatus_mantenimiento`
  MODIFY `id_estatus_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_estatus_verificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `evidencias_unidad`
--
ALTER TABLE `evidencias_unidad`
  MODIFY `id_evidencias_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id_incidencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `poliza_tenencia`
--
ALTER TABLE `poliza_tenencia`
  MODIFY `id_poliza_tenencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tenencias`
--
ALTER TABLE `tenencias`
  MODIFY `id_tenencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `verificaciones`
--
ALTER TABLE `verificaciones`
  MODIFY `id_verificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion_modelos_directivos`
--
ALTER TABLE `asignacion_modelos_directivos`
  ADD CONSTRAINT `asignacion_modelos_directivos_ibfk_1` FOREIGN KEY (`id_tipo_directivo`) REFERENCES `tipo_directivos` (`id_tipo_directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_modelos_directivos_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignacion_unidad_colaborador`
--
ALTER TABLE `asignacion_unidad_colaborador`
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_1` FOREIGN KEY (`id_tipo_asignaciones`) REFERENCES `tipo_asignaciones` (`id_tipo_asignaciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_unidad_colaborador_ibfk_3` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD CONSTRAINT `directivos_ibfk_1` FOREIGN KEY (`id_tipo_directivo`) REFERENCES `tipo_directivos` (`id_tipo_directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivos_ibfk_2` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evidencias_unidad`
--
ALTER TABLE `evidencias_unidad`
  ADD CONSTRAINT `evidencias_unidad_ibfk_1` FOREIGN KEY (`id_tipo_evidencia`) REFERENCES `tipo_evidencia` (`id_tipo_evidencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evidencias_unidad_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `incidencias_ibfk_1` FOREIGN KEY (`id_tipo_incidencias`) REFERENCES `tipo_incidencias` (`id_tipo_incidencias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incidencias_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incidencias_ibfk_3` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD CONSTRAINT `mantenimientos_ibfk_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mantenimientos_ibfk_2` FOREIGN KEY (`id_tipo_mantenimiento`) REFERENCES `tipo_mantenimiento` (`id_tipo_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mantenimientos_ibfk_3` FOREIGN KEY (`id_estatus_mantenimiento`) REFERENCES `estatus_mantenimiento` (`id_estatus_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poliza_seguro`
--
ALTER TABLE `poliza_seguro`
  ADD CONSTRAINT `id_poliza_seguro` FOREIGN KEY (`id_poliza_seguro`) REFERENCES `unidades` (`id_poliza_seguro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poliza_tenencia`
--
ALTER TABLE `poliza_tenencia`
  ADD CONSTRAINT `id_poliza_tenencia` FOREIGN KEY (`id_poliza_tenencia`) REFERENCES `unidades` (`id_poliza_tenencia`);

--
-- Filtros para la tabla `tenencias`
--
ALTER TABLE `tenencias`
  ADD CONSTRAINT `tenencias_ibfk_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenencias_ibfk_2` FOREIGN KEY (`id_estatus_tenencias`) REFERENCES `estatus_tenencias` (`id_estatus_tenencias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unidades_ibfk_2` FOREIGN KEY (`id_estado_unidad`) REFERENCES `estado_unidad` (`id_estado_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unidades_ibfk_3` FOREIGN KEY (`id_estatus_unidad`) REFERENCES `estatus_unidades` (`id_estatus_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unidades_ibfk_4` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id_sede`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unidades_ibfk_5` FOREIGN KEY (`id_tipo_adquisicion`) REFERENCES `tipo_adquisicion` (`id_tipo_adquisicion`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_colaborador`) REFERENCES `colaboradores` (`id_colaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `verificaciones`
--
ALTER TABLE `verificaciones`
  ADD CONSTRAINT `verificaciones_ibfk_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id_unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `verificaciones_ibfk_2` FOREIGN KEY (`id_estatus_verificacion`) REFERENCES `estatus_verificacion` (`id_estatus_verificacion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
