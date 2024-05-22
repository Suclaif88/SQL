-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2024 a las 06:49:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supermercado`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_subtotal` (IN `fact_id` INT)   BEGIN
    DECLARE `subtotal_calc` DECIMAL(10,2);
    DECLARE `descuento_calc` DECIMAL(10,2);
    DECLARE `iva_calc` DECIMAL(10,2);
    DECLARE `total_calc` DECIMAL(10,2);

    -- Calcular el subtotal
    SELECT IFNULL(SUM(`cantidad` * `precio`), 0) INTO `subtotal_calc`
    FROM `detalle_facturas`
    WHERE `factura_id` = `fact_id`;
    
    -- Obtener el descuento de la factura
    SELECT `descuento` INTO `descuento_calc`
    FROM `facturas`
    WHERE `factura_id` = `fact_id`;

    -- Calcular el IVA basado en el subtotal antes del descuento
    SET `iva_calc` = `subtotal_calc` * 0.19;
    
    -- Calcular el total
    SET `total_calc` = (`subtotal_calc` - `descuento_calc`) + `iva_calc`;
    
    -- Actualizar la factura con los nuevos valores
    UPDATE `facturas`
    SET `subtotal` = `subtotal_calc`,
        `iva` = `iva_calc`,
        `total` = `total_calc`
    WHERE `factura_id` = `fact_id`;
END$$

DELIMITER ;

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
  `precio` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_facturas`
--

INSERT INTO `detalle_facturas` (`detalle_id`, `factura_id`, `producto_id`, `cantidad`, `precio`) VALUES
(1, 1, 1, 3, 10.000),
(2, 2, 1, 2, 10.000),
(3, 2, 2, 4, 15.000),
(4, 3, 3, 1, 20.000),
(5, 3, 4, 3, 25.000),
(6, 4, 1, 2, 10.000),
(7, 4, 2, 1, 15.000),
(8, 4, 3, 3, 20.000),
(9, 5, 4, 2, 25.000),
(10, 5, 5, 1, 30.000),
(11, 5, 6, 4, 35.000),
(12, 6, 1, 3, 10.000),
(13, 6, 3, 1, 20.000),
(14, 6, 5, 2, 30.000),
(15, 7, 2, 2, 15.000),
(16, 7, 4, 3, 25.000),
(17, 8, 1, 4, 10.000),
(18, 8, 5, 2, 30.000),
(19, 9, 3, 3, 20.000),
(20, 9, 6, 2, 35.000),
(21, 10, 4, 2, 25.000),
(22, 10, 5, 4, 30.000),
(23, 11, 1, 3, 10.000),
(24, 11, 3, 2, 20.000),
(25, 11, 5, 1, 30.000),
(26, 12, 2, 4, 15.000),
(27, 12, 4, 3, 25.000),
(28, 12, 6, 2, 35.000),
(29, 13, 1, 1, 10.000),
(30, 13, 2, 4, 15.000),
(31, 13, 3, 3, 20.000),
(32, 14, 4, 2, 25.000),
(33, 14, 5, 1, 30.000),
(34, 14, 6, 3, 35.000),
(35, 15, 1, 3, 10.000),
(36, 15, 2, 2, 15.000),
(37, 15, 3, 1, 20.000),
(38, 16, 4, 4, 25.000),
(39, 16, 5, 3, 30.000),
(40, 16, 6, 2, 35.000),
(41, 17, 1, 1, 10.000),
(42, 17, 2, 2, 15.000),
(43, 17, 3, 3, 20.000),
(44, 18, 4, 4, 25.000),
(45, 18, 5, 2, 30.000),
(46, 18, 6, 1, 35.000),
(47, 19, 1, 3, 10.000),
(48, 19, 2, 2, 15.000),
(49, 19, 3, 4, 20.000),
(50, 20, 4, 1, 25.000),
(51, 20, 5, 3, 30.000),
(52, 20, 6, 2, 35.000),
(53, 21, 1, 2, 10.000),
(54, 21, 2, 1, 15.000),
(55, 21, 3, 3, 20.000),
(56, 22, 4, 4, 25.000),
(57, 22, 5, 3, 30.000),
(58, 22, 6, 2, 35.000),
(59, 23, 1, 1, 10.000),
(60, 23, 2, 3, 15.000),
(61, 23, 3, 2, 20.000),
(62, 24, 4, 4, 25.000),
(63, 24, 5, 3, 30.000),
(64, 24, 6, 1, 35.000),
(65, 25, 1, 2, 10.000),
(66, 25, 2, 3, 15.000),
(67, 25, 3, 4, 20.000),
(68, 26, 4, 3, 25.000),
(69, 26, 5, 2, 30.000),
(70, 26, 6, 4, 35.000),
(71, 27, 1, 1, 10.000),
(72, 27, 2, 2, 15.000),
(73, 27, 3, 4, 20.000),
(74, 28, 4, 3, 25.000),
(75, 28, 5, 4, 30.000),
(76, 28, 6, 1, 35.000),
(77, 29, 1, 2, 10.000),
(78, 29, 2, 3, 15.000),
(79, 29, 3, 4, 20.000),
(80, 30, 4, 1, 25.000),
(81, 30, 5, 3, 30.000),
(82, 30, 6, 4, 35.000),
(83, 31, 1, 2, 10.000),
(84, 25, 2, 3, 15.000),
(85, 35, 3, 1, 20.000),
(86, 32, 4, 2, 25.000),
(87, 16, 5, 3, 30.000),
(88, 17, 6, 2, 35.000),
(89, 33, 1, 3, 10.000),
(90, 34, 2, 1, 15.000);

--
-- Disparadores `detalle_facturas`
--
DELIMITER $$
CREATE TRIGGER `after_delete_detalle_facturas` AFTER DELETE ON `detalle_facturas` FOR EACH ROW BEGIN
    CALL actualizar_subtotal(OLD.`factura_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_detalle_facturas` AFTER INSERT ON `detalle_facturas` FOR EACH ROW BEGIN
    CALL actualizar_subtotal(NEW.`factura_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_detalle_facturas` AFTER UPDATE ON `detalle_facturas` FOR EACH ROW BEGIN
    CALL actualizar_subtotal(NEW.`factura_id`);
    IF OLD.`factura_id` <> NEW.`factura_id` THEN
        CALL actualizar_subtotal(OLD.`factura_id`);
    END IF;
END
$$
DELIMITER ;

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
  `subtotal` decimal(10,3) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT 0.00,
  `iva` decimal(10,2) DEFAULT 0.19,
  `total` decimal(10,3) DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`factura_id`, `cliente_id`, `cajero_id`, `empresa_id`, `medio_pago_id`, `fecha`, `subtotal`, `descuento`, `iva`, `total`) VALUES
(1, 1, 1, 1, 1, '2024-05-17', 30.000, 0.00, 5.70, 35.700),
(2, 2, 1, 1, 2, '2024-05-17', 80.000, 0.00, 15.20, 95.200),
(3, 2, 2, 1, 3, '2024-05-17', 95.000, 0.00, 18.05, 113.050),
(4, 3, 1, 1, 1, '2024-05-17', 95.000, 0.00, 18.05, 113.050),
(5, 3, 2, 1, 2, '2024-05-17', 220.000, 0.00, 41.80, 261.800),
(6, 3, 3, 1, 3, '2024-05-17', 110.000, 0.00, 20.90, 130.900),
(7, 4, 1, 1, 1, '2024-05-17', 105.000, 0.00, 19.95, 124.950),
(8, 5, 2, 1, 2, '2024-05-17', 100.000, 0.00, 19.00, 119.000),
(9, 6, 3, 1, 3, '2024-05-17', 130.000, 0.00, 24.70, 154.700),
(10, 7, 1, 1, 1, '2024-05-17', 170.000, 0.00, 32.30, 202.300),
(11, 8, 2, 1, 2, '2024-05-17', 100.000, 0.00, 19.00, 119.000),
(12, 9, 3, 1, 3, '2024-05-17', 205.000, 0.00, 38.95, 243.950),
(13, 10, 1, 1, 1, '2024-05-17', 130.000, 0.00, 24.70, 154.700),
(14, 11, 2, 1, 2, '2024-05-17', 185.000, 0.00, 35.15, 220.150),
(15, 12, 3, 1, 3, '2024-05-17', 80.000, 0.00, 15.20, 95.200),
(16, 13, 1, 1, 1, '2024-05-17', 350.000, 0.00, 66.50, 416.500),
(17, 14, 2, 1, 2, '2024-05-17', 170.000, 0.00, 32.30, 202.300),
(18, 15, 3, 1, 3, '2024-05-17', 195.000, 0.00, 37.05, 232.050),
(19, 16, 1, 1, 1, '2024-05-17', 140.000, 0.00, 26.60, 166.600),
(20, 17, 2, 1, 2, '2024-05-17', 185.000, 0.00, 35.15, 220.150),
(21, 18, 3, 1, 3, '2024-05-17', 95.000, 0.00, 18.05, 113.050),
(22, 19, 1, 1, 1, '2024-05-17', 260.000, 0.00, 49.40, 309.400),
(23, 20, 2, 1, 2, '2024-05-17', 95.000, 0.00, 18.05, 113.050),
(24, 1, 3, 1, 3, '2024-05-17', 225.000, 0.00, 42.75, 267.750),
(25, 2, 1, 1, 1, '2024-05-17', 190.000, 0.00, 36.10, 226.100),
(26, 3, 2, 1, 2, '2024-05-17', 275.000, 0.00, 52.25, 327.250),
(27, 4, 3, 1, 3, '2024-05-17', 120.000, 0.00, 22.80, 142.800),
(28, 5, 1, 1, 1, '2024-05-17', 230.000, 0.00, 43.70, 273.700),
(29, 6, 2, 1, 2, '2024-05-17', 145.000, 0.00, 27.55, 172.550),
(30, 7, 3, 1, 3, '2024-05-17', 255.000, 0.00, 48.45, 303.450),
(31, 8, 1, 1, 1, '2024-05-17', 20.000, 0.00, 3.80, 23.800),
(32, 9, 2, 1, 2, '2024-05-17', 50.000, 0.00, 9.50, 59.500),
(33, 10, 3, 1, 3, '2024-05-17', 30.000, 0.00, 5.70, 35.700),
(34, 3, 2, 1, 1, '2024-05-17', 15.000, 0.00, 2.85, 17.850),
(35, 1, 3, 1, 1, '2024-05-17', 20.000, 0.00, 3.80, 23.800);

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
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `factura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
