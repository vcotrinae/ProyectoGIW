-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-11-2024 a las 06:11:34
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdestelista2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cat_id` int NOT NULL,
  `cat_categoria` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cat_fecha_update` datetime DEFAULT NULL,
  `cat_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_categoria`, `cat_fecha_create`, `cat_fecha_update`, `cat_fecha_delete`) VALUES
(1, 'Equipos Electromecánicos bgg', '2024-11-25 02:53:31', NULL, NULL),
(2, 'Taladros', '2017-12-22 01:53:29', NULL, NULL),
(3, 'Andamios', '2017-12-22 01:53:29', NULL, NULL),
(4, 'Generadores de energía', '2017-12-22 01:53:29', NULL, NULL),
(5, 'Equipos para construcción', '2017-12-22 01:53:29', NULL, NULL),
(6, 'Martillos mecánicos', '2017-12-22 04:06:40', NULL, NULL),
(7, 'Lecteos', '2024-11-18 00:25:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int NOT NULL,
  `cli_nombre` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_documento` int DEFAULT NULL,
  `cli_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_direccion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_fecha_nacimiento` date DEFAULT NULL,
  `cli_compras` int DEFAULT NULL,
  `cli_ultima_compra` datetime DEFAULT NULL,
  `cli_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cli_fecha_update` datetime DEFAULT NULL,
  `cli_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`, `cli_documento`, `cli_email`, `cli_telefono`, `cli_direccion`, `cli_fecha_nacimiento`, `cli_compras`, `cli_ultima_compra`, `cli_fecha_create`, `cli_fecha_update`, `cli_fecha_delete`) VALUES
(3, 'actualizacion', 2147483647, 'juan@hotmail.com', '(51) 946-515-190', 'Calle 23 # 45 - 56', '1980-10-29', 7, '2018-02-06 17:47:02', '2024-11-25 06:10:46', '2024-11-25 01:10:46', NULL),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 7, '2017-12-26 17:27:42', '2017-12-27 03:27:42', NULL, NULL),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 32, '2017-12-26 17:27:13', '2017-12-27 09:38:13', NULL, NULL),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 14, '2017-12-26 17:26:51', '2017-12-27 03:26:51', NULL, NULL),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 14, '2017-12-26 17:26:28', '2017-12-27 03:26:28', NULL, NULL),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2017-12-27 03:25:55', NULL, NULL),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 12, '2017-12-26 17:25:33', '2017-12-27 03:25:33', NULL, NULL),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-27 03:25:08', NULL, NULL),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-27 03:24:50', NULL, NULL),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 05:30:12', NULL, NULL),
(13, 'VICTOR RAMRIO COTRINA', 70064332, 'cotrina@gmail.com', '(51) 946-515-190', 'av. las palmera 352', '2020-01-28', NULL, NULL, '2024-11-25 05:14:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `pro_id` int NOT NULL,
  `pro_id_categoria` int DEFAULT NULL,
  `pro_id_proveedor` int DEFAULT NULL,
  `pro_codigo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_descripcion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_imagen` text COLLATE utf8mb4_unicode_ci,
  `pro_stock` int DEFAULT NULL,
  `pro_precio_compra` float DEFAULT NULL,
  `pro_precio_venta` float DEFAULT NULL,
  `pro_ventas` int DEFAULT NULL,
  `pro_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pro_fecha_update` datetime DEFAULT NULL,
  `pro_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_id_categoria`, `pro_id_proveedor`, `pro_codigo`, `pro_descripcion`, `pro_imagen`, `pro_stock`, `pro_precio_compra`, `pro_precio_venta`, `pro_ventas`, `pro_fecha_create`, `pro_fecha_update`, `pro_fecha_delete`) VALUES
(1, 1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/105.png', 13, 1000, 1200, 2, '2017-12-24 06:11:04', NULL, NULL),
(2, 1, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/940.jpg', 6, 4500, 6300, 3, '2017-12-26 20:04:11', NULL, NULL),
(3, 1, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 8, 3000, 4200, 12, '2017-12-26 20:03:22', NULL, NULL),
(4, 1, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 16, 4000, 5600, 4, '2017-12-26 20:03:22', NULL, NULL),
(5, 1, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 13, 1540, 2156, 7, '2017-12-26 20:03:22', NULL, NULL),
(6, 1, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 15, 1100, 1540, 5, '2017-12-26 20:04:38', NULL, NULL),
(7, 1, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 12, 1540, 2156, 8, '2017-12-26 20:04:11', NULL, NULL),
(8, 1, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/163.jpg', 13, 1540, 2156, 7, '2017-12-26 20:03:52', NULL, NULL),
(9, 1, 1, '109', 'Hidrolavadora Eléctrica ', 'vistas/img/productos/109/769.jpg', 15, 2600, 3640, 5, '2017-12-26 20:05:09', NULL, NULL),
(10, 1, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/582.jpg', 18, 2210, 3094, 2, '2017-12-26 20:05:09', NULL, NULL),
(11, 1, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, 0, '2017-12-22 02:56:28', NULL, NULL),
(12, 1, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2017-12-22 02:56:28', NULL, NULL),
(13, 1, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2017-12-22 02:56:28', NULL, NULL),
(14, 1, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2017-12-22 02:56:28', NULL, NULL),
(15, 1, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, 0, '2017-12-22 02:56:28', NULL, NULL),
(16, 1, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, 0, '2017-12-22 02:56:28', NULL, NULL),
(17, 1, 1, 'PROD-1017', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2024-11-18 01:00:17', NULL, NULL),
(18, 2, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2017-12-22 02:56:28', NULL, NULL),
(19, 2, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-22 02:56:28', NULL, NULL),
(20, 2, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-22 02:56:28', NULL, NULL),
(21, 2, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-22 02:56:28', NULL, NULL),
(22, 2, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2017-12-22 03:28:24', NULL, NULL),
(23, 2, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, 0, '2017-12-22 02:56:28', NULL, NULL),
(24, 2, 2, 'PROD-2007', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, 0, '2024-11-18 01:00:26', NULL, NULL),
(25, 3, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-22 02:56:28', NULL, NULL),
(26, 3, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2017-12-22 02:56:28', NULL, NULL),
(27, 3, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-22 02:56:28', NULL, NULL),
(28, 3, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-22 02:56:28', NULL, NULL),
(29, 3, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, 0, '2017-12-22 02:56:28', NULL, NULL),
(30, 3, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, 0, '2017-12-22 02:56:28', NULL, NULL),
(31, 3, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, 0, '2017-12-22 02:56:28', NULL, NULL),
(32, 3, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2017-12-22 02:56:28', NULL, NULL),
(33, 3, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, 0, '2017-12-22 02:56:28', NULL, NULL),
(34, 3, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, 0, '2017-12-22 02:56:28', NULL, NULL),
(35, 3, 3, 'PROD-3011', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2024-11-18 01:09:19', NULL, NULL),
(36, 4, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, 0, '2017-12-22 02:56:28', NULL, NULL),
(37, 4, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2017-12-22 02:56:28', NULL, NULL),
(38, 4, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, 0, '2017-12-22 02:56:28', NULL, NULL),
(39, 4, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, 0, '2017-12-22 02:56:28', NULL, NULL),
(40, 4, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, 0, '2017-12-22 02:56:28', NULL, NULL),
(41, 4, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2017-12-22 02:56:28', NULL, NULL),
(42, 4, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2017-12-22 02:56:28', NULL, NULL),
(43, 4, 4, 'PROD-4008', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2024-11-18 01:09:26', NULL, NULL),
(44, 5, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2017-12-22 02:56:28', NULL, NULL),
(45, 5, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 370, 518, 0, '2017-12-22 02:56:28', NULL, NULL),
(46, 5, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-22 02:56:28', NULL, NULL),
(47, 5, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-22 02:56:28', NULL, NULL),
(48, 5, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, 0, '2017-12-22 02:56:28', NULL, NULL),
(49, 5, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2017-12-22 02:56:28', NULL, NULL),
(50, 5, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-22 02:56:28', NULL, NULL),
(51, 5, 5, '508', 'Tensor', 'vistas/img/productos/default/anonymous.png', 19, 100, 140, 1, '2024-11-18 00:06:48', NULL, NULL),
(52, 5, 5, '509', 'Bascula ', 'vistas/img/productos/default/anonymous.png', 12, 130, 182, 8, '2024-11-18 00:06:50', NULL, NULL),
(53, 5, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/default/anonymous.png', 8, 770, 1078, 12, '2024-11-18 00:06:52', NULL, NULL),
(54, 5, 5, '511', 'Chapeta', 'vistas/img/productos/default/anonymous.png', 16, 660, 924, 4, '2024-11-18 00:06:53', NULL, NULL),
(55, 5, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/default/anonymous.png', 16, 400, 560, 4, '2024-11-18 00:06:56', NULL, NULL),
(56, 5, 5, '513', 'Cizalla de Palanca', 'vistas/img/productos/default/anonymous.png', 3, 450, 630, 17, '2024-11-18 00:06:57', NULL, NULL),
(57, 5, 5, '514', 'Cizalla de Tijera', 'vistas/img/productos/default/anonymous.png', 20, 580, 812, 13, '2024-11-18 00:06:59', NULL, NULL),
(58, 5, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/default/anonymous.png', 17, 420, 588, 3, '2024-11-18 00:07:00', NULL, NULL),
(59, 5, 5, '516', 'Cono slump', 'vistas/img/productos/default/anonymous.png', 15, 140, 196, 5, '2024-11-18 00:07:03', NULL, NULL),
(60, 5, 5, 'PROD-5017', 'Cortadora de Baldosin', 'vistas/img/productos/default/anonymous.png', 13, 930, 1302, 7, '2024-11-18 01:09:32', NULL, NULL),
(61, 7, 2, 'PROD-7001', 'LECHE GLORIA 500ML', 'vistas/img/productos/default/anonymous.png', 100, 3, 4.2, NULL, '2024-11-25 02:08:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `prove_id` int NOT NULL,
  `prove_ruc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_razon_social` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_nombre_comercial` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_direccion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prove_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prove_fecha_update` datetime DEFAULT NULL,
  `prove_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`prove_id`, `prove_ruc`, `prove_razon_social`, `prove_nombre_comercial`, `prove_email`, `prove_telefono`, `prove_direccion`, `prove_fecha_create`, `prove_fecha_update`, `prove_fecha_delete`) VALUES
(1, '12345678901', 'Proveedor Uno S.A.', 'Proveedor Uno', 'contacto@proveedoruno.com', '012345678', 'Av. Principal 123, Ciudad A', '2024-11-17 21:06:07', NULL, NULL),
(2, '23456789012', 'Proveedores Globales S.R.L.', 'Global Proveedores', 'info@globalproveedores.com', '098765432', 'Calle Secundaria 456, Ciudad B', '2024-11-17 21:06:07', NULL, NULL),
(3, '34567890123', 'Distribuciones Rápidas Ltda.', 'Rápido Distribuciones', 'ventas@rapidodistribuciones.com', '023456789', 'Calle Tercera 789, Ciudad C', '2024-11-17 21:06:07', NULL, NULL),
(4, '45678901234', 'Servicios Integrales S.A.C.', 'Servicios Integrales', 'soporte@serviciosintegrales.com', '034567890', 'Calle Cuarta 321, Ciudad D', '2024-11-17 21:06:07', NULL, NULL),
(5, '56789012345', 'Comercializadora Ejemplo S.A.', 'Ejemplo Comercial', 'contacto@ejemplocomercial.com', '045678901', 'Av. Ejemplo 654, Ciudad E', '2024-11-17 21:06:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_id` int NOT NULL,
  `usu_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usu_usuario` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usu_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usu_perfil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usu_foto` text COLLATE utf8mb4_unicode_ci,
  `usu_estado` int DEFAULT NULL,
  `usu_ultimo_login` datetime DEFAULT NULL,
  `usu_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usu_fecha_update` datetime DEFAULT NULL,
  `usu_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usu_id`, `usu_nombre`, `usu_usuario`, `usu_password`, `usu_perfil`, `usu_foto`, `usu_estado`, `usu_ultimo_login`, `usu_fecha_create`, `usu_fecha_update`, `usu_fecha_delete`) VALUES
(1, 'Usuario Administrado', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/994.png', 1, '2024-11-20 00:00:06', '2024-11-20 05:00:06', NULL, NULL),
(2, 'Victor Cotrina', 'vcotrina', '$2a$07$asxx54ahjppf45sd87a5auaK2UuY9I3HoWrDp0X6p.3tlEWlvSpv.', 'Administrador', 'vistas/img/usuarios/vcotrina/143.png', 1, '2024-11-24 18:47:34', '2024-11-24 23:47:35', NULL, NULL),
(3, 'Ramiro Cotrina', 'rcotrina', '$2a$07$asxx54ahjppf45sd87a5auSCG6EtWTOSpeybRK.d3z3BAMJt.7teO', 'Administrador', 'vistas/img/usuarios/rcotrina/410.png', 1, '2024-11-16 17:30:44', '2024-11-17 03:36:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ven_id` int NOT NULL,
  `ven_codigo` int DEFAULT NULL,
  `ven_id_cliente` int DEFAULT NULL,
  `ven_id_vendedor` int DEFAULT NULL,
  `ven_productos` text COLLATE utf8mb4_unicode_ci,
  `ven_impuesto` float DEFAULT NULL,
  `ven_neto` float DEFAULT NULL,
  `ven_total` float DEFAULT NULL,
  `ven_metodo_pago` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ven_fecha_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ven_fecha_update` datetime DEFAULT NULL,
  `ven_fecha_delete` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ven_id`, `ven_codigo`, `ven_id_cliente`, `ven_id_vendedor`, `ven_productos`, `ven_impuesto`, `ven_neto`, `ven_total`, `ven_metodo_pago`, `ven_fecha_create`, `ven_fecha_update`, `ven_fecha_delete`) VALUES
(1, 10001, 3, 2, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"1200\",\"total\":\"2400\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"6300\",\"total\":\"12600\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4200\",\"total\":\"4200\"}]', 3648, 19200, 22848, 'Efectivo', '2018-02-02 11:11:04', NULL, NULL),
(2, 10002, 4, 2, '[{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"4312\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"}]', 2585.52, 13608, 16193.5, 'TC-34346346346', '2018-02-03 00:57:20', NULL, NULL),
(3, 10003, 5, 2, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"2156\"}]', 1510.88, 7952, 9462.88, 'Efectivo', '2018-01-19 00:57:40', NULL, NULL),
(4, 10004, 5, 2, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"4200\",\"total\":\"21000\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"}]', 5463.64, 28756, 34219.6, 'TD-454475467567', '2018-01-26 00:58:09', NULL, NULL),
(5, 10005, 6, 3, '[{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"9\",\"precio\":\"4200\",\"total\":\"21000\"}]', 5463.64, 28756, 34219.6, 'TC-6756856867', '2018-01-10 00:59:07', NULL, NULL),
(6, 10006, 10, 3, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"3\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"6468\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"1540\",\"total\":\"1540\"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-27 01:03:22', NULL, NULL),
(7, 10007, 9, 1, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"12936\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3640\",\"total\":\"3640\"}]', 3851.68, 20272, 24123.7, 'TC-357547467346', '2017-12-01 01:03:53', NULL, NULL),
(8, 10008, 12, 1, '[{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"2156\",\"total\":\"10780\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"3640\",\"total\":\"3640\"}]', 4229.4, 22260, 26489.4, 'TD-35745575', '2017-12-26 01:04:11', NULL, NULL),
(9, 10009, 11, 1, '[{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094\",\"total\":\"3094\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"1540\",\"total\":\"1540\"}]', 1572.06, 8274, 9846.06, 'TD-5745745745', '2017-08-16 01:04:38', NULL, NULL),
(10, 10010, 8, 1, '[{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3094\",\"total\":\"3094\"}]', 1279.46, 6734, 8013.46, 'Efectivo', '2017-12-08 01:05:09', NULL, NULL),
(11, 10011, 7, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-26 08:23:38', NULL, NULL),
(12, 10012, 12, 2, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1078\",\"total\":\"1078\"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-26 08:24:24', NULL, NULL),
(13, 10013, 11, 2, '[{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"1302\",\"total\":\"6510\"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-27 08:24:50', NULL, NULL),
(14, 10014, 10, 2, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"1078\",\"total\":\"10780\"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-27 08:25:09', NULL, NULL),
(15, 10015, 9, 2, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-27 08:25:33', NULL, NULL),
(16, 10016, 8, 3, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"5\",\"stock\":\"11\",\"precio\":\"812\",\"total\":\"4060\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"630\",\"total\":\"630\"}]', 1002.82, 5278, 6280.82, 'TD-4523523523', '2017-12-27 08:25:55', NULL, NULL),
(17, 10017, 7, 3, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"4\",\"stock\":\"7\",\"precio\":\"812\",\"total\":\"3248\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"182\",\"total\":\"546\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"560\",\"total\":\"1120\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"630\",\"total\":\"630\"}]', 1053.36, 5544, 6597.36, 'Efectivo', '2017-12-27 08:26:28', NULL, NULL),
(18, 10018, 6, 3, '[{\"id\":\"51\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"182\",\"total\":\"910\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"1078\",\"total\":\"1078\"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-27 08:26:51', NULL, NULL),
(19, 10019, 5, 3, '[{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"15\",\"stock\":\"3\",\"precio\":\"630\",\"total\":\"9450\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"560\",\"total\":\"560\"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-27 08:27:13', NULL, NULL),
(20, 10020, 4, 3, '[{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"924\",\"total\":\"924\"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-27 08:27:42', NULL, NULL),
(21, 10021, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"196\",\"total\":\"196\"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-07 08:47:02', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_id_categoria` (`pro_id_categoria`),
  ADD KEY `pro_id_proveedor` (`pro_id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`prove_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ven_id`),
  ADD KEY `ven_id_cliente` (`ven_id_cliente`),
  ADD KEY `ven_id_vendedor` (`ven_id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `prove_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ven_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`pro_id_categoria`) REFERENCES `categorias` (`cat_id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`pro_id_proveedor`) REFERENCES `proveedores` (`prove_id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ven_id_cliente`) REFERENCES `clientes` (`cli_id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`ven_id_vendedor`) REFERENCES `usuarios` (`usu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
