-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2024 a las 23:50:49
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajeros`
--

CREATE TABLE `cajeros` (
  `cajero_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajeros`
--

INSERT INTO `cajeros` (`cajero_id`, `nombre`) VALUES
(1, 'Cajero 1'),
(2, 'Cajero 2'),
(3, 'Cajero 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_productos`
--

CREATE TABLE `categorias_productos` (
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias_productos`
--

INSERT INTO `categorias_productos` (`categoria_id`, `nombre`) VALUES
(1, 'Categoria 1'),
(2, 'Categoria 2'),
(3, 'Categoria 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Cliente 1', 'Direccion 1', '111-111-1111'),
(2, 'Cliente 2', 'Direccion 2', '222-222-2222'),
(3, 'Cliente 3', 'Direccion 3', '333-333-3333'),
(4, 'Cliente 4', 'Direccion 4', '444-444-4444'),
(5, 'Cliente 5', 'Direccion 5', '555-555-5555'),
(6, 'Cliente 6', 'Direccion 6', '666-666-6666'),
(7, 'Cliente 7', 'Direccion 7', '777-777-7777'),
(8, 'Cliente 8', 'Direccion 8', '888-888-8888'),
(9, 'Cliente 9', 'Direccion 9', '999-999-9999'),
(10, 'Cliente 10', 'Direccion 10', '101-101-1010'),
(11, 'Cliente 11', 'Direccion 11', '111-111-1111'),
(12, 'Cliente 12', 'Direccion 12', '222-222-2222'),
(13, 'Cliente 13', 'Direccion 13', '333-333-3333'),
(14, 'Cliente 14', 'Direccion 14', '444-444-4444'),
(15, 'Cliente 15', 'Direccion 15', '555-555-5555'),
(16, 'Cliente 16', 'Direccion 16', '666-666-6666'),
(17, 'Cliente 17', 'Direccion 17', '777-777-7777'),
(18, 'Cliente 18', 'Direccion 18', '888-888-8888'),
(19, 'Cliente 19', 'Direccion 19', '999-999-9999'),
(20, 'Cliente 20', 'Direccion 20', '101-101-1010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_facturas`
--

CREATE TABLE `detalle_facturas` (
  `detalle_id` int(11) NOT NULL,
  `factura_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_facturas`
--

INSERT INTO `detalle_facturas` (`detalle_id`, `factura_id`, `producto_id`, `cantidad`, `precio`) VALUES
(1, 1, 1, 1, 10.00),
(2, 2, 1, 1, 10.00),
(3, 2, 2, 1, 15.00),
(4, 3, 3, 1, 20.00),
(5, 3, 4, 1, 25.00),
(6, 4, 1, 1, 10.00),
(7, 4, 2, 1, 15.00),
(8, 4, 3, 1, 20.00),
(9, 5, 4, 1, 25.00),
(10, 5, 5, 1, 30.00),
(11, 5, 6, 1, 35.00),
(12, 6, 1, 1, 10.00),
(13, 6, 3, 1, 20.00),
(14, 6, 5, 1, 30.00),
(15, 7, 2, 1, 15.00),
(16, 7, 4, 1, 25.00),
(17, 8, 1, 1, 10.00),
(18, 8, 5, 1, 30.00),
(19, 9, 3, 1, 20.00),
(20, 9, 6, 1, 35.00),
(21, 10, 4, 1, 25.00),
(22, 10, 5, 1, 30.00),
(23, 11, 1, 1, 10.00),
(24, 11, 3, 1, 20.00),
(25, 11, 5, 1, 30.00),
(26, 12, 2, 1, 15.00),
(27, 12, 4, 1, 25.00),
(28, 12, 6, 1, 35.00),
(29, 13, 1, 1, 10.00),
(30, 13, 2, 1, 15.00),
(31, 13, 3, 1, 20.00),
(32, 14, 4, 1, 25.00),
(33, 14, 5, 1, 30.00),
(34, 14, 6, 1, 35.00),
(35, 15, 1, 1, 10.00),
(36, 15, 2, 1, 15.00),
(37, 15, 3, 1, 20.00),
(38, 16, 4, 1, 25.00),
(39, 16, 5, 1, 30.00),
(40, 16, 6, 1, 35.00),
(41, 17, 1, 1, 10.00),
(42, 17, 2, 1, 15.00),
(43, 17, 3, 1, 20.00),
(44, 18, 4, 1, 25.00),
(45, 18, 5, 1, 30.00),
(46, 18, 6, 1, 35.00),
(47, 19, 1, 1, 10.00),
(48, 19, 2, 1, 15.00),
(49, 19, 3, 1, 20.00),
(50, 20, 4, 1, 25.00),
(51, 20, 5, 1, 30.00),
(52, 20, 6, 1, 35.00),
(53, 21, 1, 1, 10.00),
(54, 21, 2, 1, 15.00),
(55, 21, 3, 1, 20.00),
(56, 22, 4, 1, 25.00),
(57, 22, 5, 1, 30.00),
(58, 22, 6, 1, 35.00),
(59, 23, 1, 1, 10.00),
(60, 23, 2, 1, 15.00),
(61, 23, 3, 1, 20.00),
(62, 24, 4, 1, 25.00),
(63, 24, 5, 1, 30.00),
(64, 24, 6, 1, 35.00),
(65, 25, 1, 1, 10.00),
(66, 25, 2, 1, 15.00),
(67, 25, 3, 1, 20.00),
(68, 26, 4, 1, 25.00),
(69, 26, 5, 1, 30.00),
(70, 26, 6, 1, 35.00),
(71, 27, 1, 1, 10.00),
(72, 27, 2, 1, 15.00),
(73, 27, 3, 1, 20.00),
(74, 28, 4, 1, 25.00),
(75, 28, 5, 1, 30.00),
(76, 28, 6, 1, 35.00),
(77, 29, 1, 1, 10.00),
(78, 29, 2, 1, 15.00),
(79, 29, 3, 1, 20.00),
(80, 30, 4, 1, 25.00),
(81, 30, 5, 1, 30.00),
(82, 30, 6, 1, 35.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Salem S.A.S', 'Direccion Empresa', '3107240507');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `factura_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `cajero_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `medio_pago_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`factura_id`, `cliente_id`, `cajero_id`, `empresa_id`, `medio_pago_id`, `fecha`, `total`) VALUES
(1, 1, 1, 1, 1, '2024-05-17', 10.00),
(2, 2, 1, 1, 2, '2024-05-17', 30.00),
(3, 2, 2, 1, 3, '2024-05-17', 35.00),
(4, 3, 1, 1, 1, '2024-05-17', 60.00),
(5, 3, 2, 1, 2, '2024-05-17', 90.00),
(6, 3, 3, 1, 3, '2024-05-17', 65.00),
(7, 4, 1, 1, 1, '2024-05-17', 50.00),
(8, 5, 2, 1, 2, '2024-05-17', 40.00),
(9, 6, 3, 1, 3, '2024-05-17', 30.00),
(10, 7, 1, 1, 1, '2024-05-17', 20.00),
(11, 8, 2, 1, 2, '2024-05-17', 70.00),
(12, 9, 3, 1, 3, '2024-05-17', 80.00),
(13, 10, 1, 1, 1, '2024-05-17', 90.00),
(14, 11, 2, 1, 2, '2024-05-17', 100.00),
(15, 12, 3, 1, 3, '2024-05-17', 110.00),
(16, 13, 1, 1, 1, '2024-05-17', 120.00),
(17, 14, 2, 1, 2, '2024-05-17', 130.00),
(18, 15, 3, 1, 3, '2024-05-17', 140.00),
(19, 16, 1, 1, 1, '2024-05-17', 150.00),
(20, 17, 2, 1, 2, '2024-05-17', 160.00),
(21, 18, 3, 1, 3, '2024-05-17', 170.00),
(22, 19, 1, 1, 1, '2024-05-17', 180.00),
(23, 20, 2, 1, 2, '2024-05-17', 190.00),
(24, 1, 3, 1, 3, '2024-05-17', 200.00),
(25, 2, 1, 1, 1, '2024-05-17', 210.00),
(26, 3, 2, 1, 2, '2024-05-17', 220.00),
(27, 4, 3, 1, 3, '2024-05-17', 230.00),
(28, 5, 1, 1, 1, '2024-05-17', 240.00),
(29, 6, 2, 1, 2, '2024-05-17', 250.00),
(30, 7, 3, 1, 3, '2024-05-17', 260.00),
(31, 8, 1, 1, 1, '2024-05-17', 270.00),
(32, 9, 2, 1, 2, '2024-05-17', 280.00),
(33, 10, 3, 1, 3, '2024-05-17', 290.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_pago`
--

CREATE TABLE `medios_pago` (
  `medio_pago_id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medios_pago`
--

INSERT INTO `medios_pago` (`medio_pago_id`, `descripcion`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de Crédito'),
(3, 'Transferencia Bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `nombre`, `precio`, `categoria_id`) VALUES
(1, 'Producto 1', 10.00, 1),
(2, 'Producto 2', 15.00, 1),
(3, 'Producto 3', 20.00, 1),
(4, 'Producto 4', 25.00, 2),
(5, 'Producto 5', 30.00, 2),
(6, 'Producto 6', 35.00, 2),
(7, 'Producto 7', 40.00, 3),
(8, 'Producto 8', 45.00, 3),
(9, 'Producto 9', 50.00, 3),
(10, 'Producto 10', 55.00, 1),
(11, 'Producto 11', 60.00, 1),
(12, 'Producto 12', 65.00, 1),
(13, 'Producto 13', 70.00, 2),
(14, 'Producto 14', 75.00, 2),
(15, 'Producto 15', 80.00, 2),
(16, 'Producto 16', 85.00, 3),
(17, 'Producto 17', 90.00, 3),
(18, 'Producto 18', 95.00, 3),
(19, 'Producto 19', 100.00, 1),
(20, 'Producto 20', 105.00, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  ADD PRIMARY KEY (`cajero_id`);

--
-- Indices de la tabla `categorias_productos`
--
ALTER TABLE `categorias_productos`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD PRIMARY KEY (`detalle_id`),
  ADD KEY `factura_id` (`factura_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`factura_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `cajero_id` (`cajero_id`),
  ADD KEY `empresa_id` (`empresa_id`),
  ADD KEY `medio_pago_id` (`medio_pago_id`);

--
-- Indices de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  ADD PRIMARY KEY (`medio_pago_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  MODIFY `cajero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias_productos`
--
ALTER TABLE `categorias_productos`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `factura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  MODIFY `medio_pago_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD CONSTRAINT `detalle_facturas_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`factura_id`),
  ADD CONSTRAINT `detalle_facturas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`cajero_id`) REFERENCES `cajeros` (`cajero_id`),
  ADD CONSTRAINT `facturas_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`),
  ADD CONSTRAINT `facturas_ibfk_4` FOREIGN KEY (`medio_pago_id`) REFERENCES `medios_pago` (`medio_pago_id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias_productos` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
