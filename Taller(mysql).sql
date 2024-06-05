-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 06:53:46
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
-- Base de datos: `taller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Documento` char(10) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Celular` char(10) DEFAULT NULL,
  `F_Nacimiento` date DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Documento`, `Nombre`, `Apellido`, `Celular`, `F_Nacimiento`, `Correo`, `Direccion`) VALUES
('10112223T', 'Marta', 'Medina', '603210987', '1981-08-20', 'marta.medina@example.com', 'Calle Blanca 60'),
('11223344K', 'David', 'Molina', '612109876', '1986-11-15', 'david.molina@example.com', 'Calle Estrella 33'),
('12345678A', 'Juan', 'Pérez', '612345678', '1990-01-15', 'juan.perez@example.com', 'Calle Falsa 123'),
('21223334U', 'Raúl', 'Castro', '602109876', '1990-09-25', 'raul.castro@example.com', 'Calle Roja 15'),
('22334455L', 'Lucía', 'Hernández', '611098765', '1990-12-20', 'lucia.hernandez@example.com', 'Avenida del Mar 10'),
('23456789C', 'Carlos', 'Fernández', '610987654', '1992-03-25', 'carlos.fernandez@example.com', 'Calle Mayor 15'),
('32334445V', 'Cristina', 'Suárez', '601098765', '1984-10-10', 'cristina.suarez@example.com', 'Calle Amarilla 75'),
('33445566M', 'Manuel', 'Jiménez', '610987654', '1983-01-25', 'manuel.jimenez@example.com', 'Calle del Río 44'),
('34567890D', 'Ana', 'López', '619876543', '1980-04-10', 'ana.lopez@example.com', 'Paseo del Prado 56'),
('43445556W', 'Javier', 'Guzmán', '600987654', '1979-11-15', 'javier.guzman@example.com', 'Calle Naranja 14'),
('44556677N', 'Isabel', 'Morales', '609876543', '1991-02-10', 'isabel.morales@example.com', 'Calle Verde 22'),
('45678901E', 'Luis', 'Martínez', '618765432', '1975-05-05', 'luis.martinez@example.com', 'Calle Gran Vía 100'),
('54556667X', 'Patricia', 'Reyes', '599876543', '1991-12-20', 'patricia.reyes@example.com', 'Avenida de la Luz 99'),
('55667788O', 'Pablo', 'Ortega', '608765432', '1977-03-15', 'pablo.ortega@example.com', 'Avenida Central 90'),
('56789012F', 'Laura', 'Sánchez', '617654321', '1995-06-30', 'laura.sanchez@example.com', 'Avenida de la Paz 78'),
('65667778Y', 'Felipe', 'Aguilar', '598765432', '1985-01-25', 'felipe.aguilar@example.com', 'Calle de las Flores 24'),
('66778899P', 'Natalia', 'Romero', '607654321', '1994-04-20', 'natalia.romero@example.com', 'Calle del Bosque 11'),
('67890123G', 'José', 'Gómez', '616543210', '1988-07-15', 'jose.gomez@example.com', 'Calle Nueva 9'),
('77889900Q', 'Andrés', 'Navarro', '606543210', '1989-05-25', 'andres.navarro@example.com', 'Calle Azul 77'),
('78901234H', 'Elena', 'Díaz', '615432109', '1993-08-20', 'elena.diaz@example.com', 'Avenida Libertad 45'),
('87654321B', 'María', 'García', '611234567', '1985-02-20', 'maria.garcia@example.com', 'Avenida Siempre Viva 742'),
('88990011R', 'Teresa', 'Ramos', '605432109', '1987-06-10', 'teresa.ramos@example.com', 'Avenida de la Ciencia 30'),
('89012345I', 'Miguel', 'Torres', '614321098', '1982-09-25', 'miguel.torres@example.com', 'Calle del Sol 88'),
('90123456J', 'Sofía', 'Ruiz', '613210987', '1978-10-10', 'sofia.ruiz@example.com', 'Calle Luna 65'),
('99001122S', 'Sergio', 'Vega', '604321098', '1992-07-15', 'sergio.vega@example.com', 'Calle Dorada 50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE `datos_empresa` (
  `NIT` char(9) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Telefono` varchar(30) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_empresa`
--

INSERT INTO `datos_empresa` (`NIT`, `Nombre`, `Telefono`, `Correo`, `Direccion`) VALUES
('890765432', 'Autoservicio Mecánico \"El Rosal\"', '+57 310 234 5678', 'info@autoservicioelrosal.com', 'Carrera 23 #45-67, Barrio El Rosal, Ciudad de Medellín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_producto`
--

CREATE TABLE `detalle_producto` (
  `Id_Detalle_Producto` tinyint(3) UNSIGNED NOT NULL,
  `Id_Factura` int(11) DEFAULT NULL,
  `Id_producto` smallint(6) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Cantidad` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_producto`
--

INSERT INTO `detalle_producto` (`Id_Detalle_Producto`, `Id_Factura`, `Id_producto`, `Precio`, `Cantidad`) VALUES
(1, 22, 25, 46824, 4),
(2, 18, 4, 55407, 5),
(3, 5, 28, 28691, 1),
(4, 19, 10, 2823, 9),
(5, 43, 16, 25242, 7),
(6, 23, 19, 82159, 8),
(7, 3, 24, 6881, 5),
(8, 14, 10, 81755, 0),
(9, 6, 6, 9241, 5),
(10, 44, 26, 75006, 8),
(11, 9, 30, 91223, 5),
(12, 21, 5, 2019, 10),
(13, 30, 2, 65793, 9),
(14, 24, 26, 97082, 10),
(15, 15, 21, 24537, 7),
(16, 8, 4, 91937, 9),
(17, 47, 9, 15666, 5),
(18, 33, 8, 56744, 3),
(19, 42, 18, 34735, 6),
(20, 39, 5, 1585, 9),
(21, 1, 18, 2000, 10),
(22, 13, 30, 7559, 3),
(23, 49, 6, 74827, 7),
(24, 11, 10, 40724, 6),
(25, 35, 28, 34551, 9),
(26, 27, 4, 54557, 0),
(27, 20, 17, 10332, 7),
(28, 37, 24, 63839, 4),
(29, 10, 21, 62132, 1),
(30, 4, 12, 32247, 3),
(31, 26, 10, 36110, 9),
(32, 40, 23, 20059, 9),
(33, 48, 28, 28629, 9),
(34, 16, 2, 81187, 5),
(35, 34, 23, 23137, 4),
(36, 50, 20, 24070, 7),
(37, 7, 22, 11959, 1),
(38, 38, 3, 71576, 9),
(39, 46, 7, 81639, 7),
(40, 12, 24, 75128, 2),
(41, 17, 5, 81471, 7),
(42, 28, 12, 40845, 3),
(43, 32, 6, 49804, 8),
(44, 2, 6, 71979, 9),
(45, 31, 7, 43538, 2),
(46, 45, 7, 66756, 8),
(47, 29, 7, 50779, 8),
(48, 25, 19, 95753, 5),
(49, 36, 19, 29345, 2),
(50, 41, 23, 92903, 10),
(51, 23, 22, 2484, 8),
(52, 11, 15, 39755, 5),
(53, 41, 21, 34161, 3),
(54, 37, 28, 89144, 2),
(55, 35, 22, 97425, 9),
(56, 3, 5, 98658, 6),
(57, 2, 17, 46439, 1),
(58, 15, 24, 25345, 9),
(59, 6, 17, 95662, 7),
(60, 46, 9, 68038, 2),
(61, 27, 3, 47598, 5),
(62, 32, 23, 28854, 6),
(63, 48, 7, 50282, 3),
(64, 45, 12, 79097, 6),
(65, 18, 26, 28655, 7),
(66, 44, 8, 21409, 7),
(67, 29, 12, 21608, 2),
(68, 31, 30, 47556, 2),
(69, 17, 14, 88857, 2),
(70, 24, 28, 20384, 2),
(71, 21, 16, 14264, 7),
(72, 33, 8, 95375, 3),
(73, 26, 30, 89552, 5),
(74, 38, 2, 12393, 8),
(75, 22, 2, 29911, 0),
(76, 19, 13, 74024, 10),
(77, 40, 4, 50184, 1),
(78, 25, 28, 80607, 7),
(79, 39, 30, 62949, 1),
(80, 36, 12, 11576, 0),
(81, 8, 13, 89786, 10),
(82, 47, 4, 58198, 0),
(83, 49, 17, 2258, 1),
(84, 5, 4, 16128, 0),
(85, 16, 6, 51325, 1),
(86, 12, 5, 81866, 5),
(87, 14, 28, 13866, 8),
(88, 13, 10, 96429, 7),
(89, 42, 27, 12291, 4),
(90, 30, 13, 65660, 4),
(91, 28, 24, 703, 2),
(92, 1, 20, 68000, 9),
(93, 9, 19, 12969, 1),
(94, 7, 9, 45405, 8),
(95, 34, 9, 50169, 5),
(96, 43, 16, 88643, 8),
(97, 50, 19, 13039, 6),
(98, 10, 12, 98373, 6),
(99, 20, 16, 42101, 6),
(100, 4, 13, 22387, 8),
(101, 36, 18, 77619, 0),
(102, 13, 10, 79110, 9),
(103, 10, 19, 82107, 6),
(104, 44, 5, 65173, 3),
(105, 27, 28, 22454, 10),
(106, 48, 15, 26045, 8),
(107, 41, 3, 97393, 9),
(108, 35, 7, 78846, 1),
(109, 20, 14, 77984, 4),
(110, 19, 8, 74353, 1),
(111, 3, 22, 70571, 7),
(112, 29, 6, 52924, 10),
(113, 50, 25, 95188, 8),
(114, 7, 14, 89284, 10),
(115, 4, 9, 22159, 9),
(116, 39, 12, 41294, 5),
(117, 38, 18, 32972, 7),
(118, 31, 14, 80978, 9),
(119, 28, 18, 17153, 4),
(120, 1, 27, 80000, 3),
(121, 43, 23, 95890, 10),
(122, 47, 15, 39966, 2),
(123, 33, 7, 74686, 9),
(124, 32, 27, 11479, 6),
(125, 25, 18, 51378, 3),
(126, 14, 10, 13023, 5),
(127, 21, 1, 7121, 2),
(128, 15, 28, 11799, 0),
(129, 9, 23, 54741, 5),
(130, 45, 15, 77359, 2),
(131, 49, 26, 73154, 8),
(132, 2, 2, 89124, 7),
(133, 42, 4, 28772, 5),
(134, 22, 20, 72113, 9),
(135, 17, 15, 79325, 10),
(136, 46, 15, 81600, 9),
(137, 26, 28, 81544, 5),
(138, 18, 5, 3482, 6),
(139, 12, 12, 13982, 4),
(140, 11, 20, 46224, 6),
(141, 37, 11, 53462, 4),
(142, 23, 2, 26079, 7),
(143, 6, 7, 75155, 2),
(144, 16, 3, 32264, 0),
(145, 8, 15, 65534, 3),
(146, 5, 29, 78924, 2),
(147, 34, 28, 21288, 3),
(148, 40, 30, 29588, 4),
(149, 30, 10, 76395, 2),
(150, 24, 28, 65747, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_servicio`
--

CREATE TABLE `detalle_servicio` (
  `Id_Detalle_Servicio` tinyint(3) UNSIGNED NOT NULL,
  `Id_Factura` int(11) DEFAULT NULL,
  `Id_Servicio` smallint(6) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Cantidad` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_servicio`
--

INSERT INTO `detalle_servicio` (`Id_Detalle_Servicio`, `Id_Factura`, `Id_Servicio`, `Precio`, `Cantidad`) VALUES
(1, 41, 3, 25806, 3),
(2, 14, 3, 21915, 8),
(3, 6, 4, 8278, 1),
(4, 8, 3, 47991, 3),
(5, 49, 5, 50250, 5),
(6, 17, 5, 78842, 7),
(7, 29, 2, 54260, 2),
(8, 33, 4, 93310, 2),
(9, 28, 2, 68085, 4),
(10, 47, 6, 69575, 8),
(11, 34, 1, 9508, 4),
(12, 9, 5, 66109, 4),
(13, 50, 5, 88618, 1),
(14, 1, 3, 62000, 6),
(15, 4, 2, 92340, 5),
(16, 39, 2, 60509, 9),
(17, 36, 1, 56294, 5),
(18, 11, 2, 45445, 9),
(19, 45, 2, 65746, 8),
(20, 24, 2, 28181, 2),
(21, 5, 3, 68746, 5),
(22, 7, 5, 11128, 4),
(23, 13, 5, 95113, 2),
(24, 42, 6, 2456, 2),
(25, 15, 6, 38896, 6),
(26, 27, 4, 31206, 2),
(27, 16, 4, 38421, 6),
(28, 3, 2, 21857, 6),
(29, 35, 1, 66193, 6),
(30, 18, 6, 72605, 6),
(31, 41, 5, 81801, 7),
(32, 6, 5, 66918, 9),
(33, 18, 1, 2778, 8),
(34, 32, 2, 34112, 8),
(35, 40, 1, 93987, 7),
(36, 21, 5, 22287, 6),
(37, 30, 2, 70261, 6),
(38, 39, 2, 36129, 9),
(39, 25, 2, 13831, 6),
(40, 49, 5, 70823, 7),
(41, 29, 1, 93205, 2),
(42, 16, 1, 32933, 4),
(43, 20, 1, 37448, 4),
(44, 7, 4, 67588, 7),
(45, 14, 3, 50136, 6),
(46, 47, 4, 73062, 4),
(47, 26, 2, 97610, 3),
(48, 24, 6, 55861, 6),
(49, 36, 1, 35894, 9),
(50, 31, 4, 27729, 3),
(51, 37, 6, 15979, 7),
(52, 12, 4, 30305, 4),
(53, 48, 1, 68256, 5),
(54, 34, 6, 88541, 5),
(55, 13, 5, 81807, 5),
(56, 19, 1, 94908, 1),
(57, 3, 1, 48518, 6),
(58, 50, 5, 78770, 2),
(59, 42, 1, 70887, 7),
(60, 10, 4, 70843, 2),
(61, 23, 3, 27836, 4),
(62, 9, 2, 27784, 7),
(63, 33, 5, 10606, 1),
(64, 11, 1, 57291, 2),
(65, 17, 3, 94532, 8),
(66, 5, 3, 559, 6),
(67, 2, 6, 67853, 3),
(68, 4, 3, 10449, 7),
(69, 8, 6, 63022, 2),
(70, 1, 1, 9000, 9),
(71, 43, 3, 44539, 8),
(72, 44, 1, 3254, 6),
(73, 22, 5, 68918, 8),
(74, 28, 1, 86277, 6),
(75, 45, 5, 7013, 1),
(76, 27, 2, 19733, 9),
(77, 15, 3, 83957, 2),
(78, 35, 6, 58843, 9),
(79, 46, 2, 26772, 9),
(80, 38, 4, 55741, 4),
(81, 48, 2, 65542, 9),
(82, 22, 5, 5724, 6),
(83, 31, 6, 96878, 1),
(84, 19, 2, 11294, 7),
(85, 28, 4, 1096, 7),
(86, 17, 5, 61265, 1),
(87, 47, 5, 50870, 7),
(88, 12, 3, 64568, 6),
(89, 34, 5, 29365, 10),
(90, 18, 2, 4264, 6),
(91, 42, 5, 38992, 3),
(92, 50, 3, 63549, 4),
(93, 39, 6, 80749, 5),
(94, 35, 5, 24016, 9),
(95, 10, 3, 51357, 4),
(96, 40, 2, 3105, 3),
(97, 5, 4, 36163, 2),
(98, 2, 3, 8944, 5),
(99, 11, 3, 26230, 4),
(100, 49, 3, 11553, 1),
(101, 25, 6, 18696, 3),
(102, 1, 6, 97000, 7),
(103, 9, 1, 98822, 8),
(104, 27, 1, 17596, 3),
(105, 46, 3, 58058, 9),
(106, 6, 4, 3727, 2),
(107, 29, 5, 36850, 7),
(108, 3, 3, 10968, 8),
(109, 30, 1, 89394, 6),
(110, 14, 4, 42462, 9),
(111, 33, 3, 53813, 2),
(112, 4, 5, 36368, 9),
(113, 20, 4, 87526, 9),
(114, 24, 4, 71383, 7),
(115, 43, 5, 14806, 9),
(116, 32, 6, 61484, 7),
(117, 45, 4, 2304, 3),
(118, 36, 1, 72920, 4),
(119, 8, 5, 89105, 6),
(120, 41, 6, 37661, 7),
(121, 38, 1, 27178, 8),
(122, 15, 6, 87301, 3),
(123, 23, 1, 16936, 9),
(124, 13, 4, 5702, 8),
(125, 21, 3, 96438, 1),
(126, 44, 6, 63649, 8),
(127, 26, 4, 85568, 1),
(128, 16, 1, 36648, 9),
(129, 7, 6, 49237, 5),
(130, 37, 1, 58809, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_factura` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Placa` char(7) DEFAULT NULL,
  `Documento_M` char(10) DEFAULT NULL,
  `Id_Metodo_Pago` tinyint(3) UNSIGNED DEFAULT NULL,
  `NIT` char(9) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Subtotal` bigint(20) DEFAULT NULL,
  `Iva` double DEFAULT NULL,
  `Descuento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_factura`, `Fecha`, `Placa`, `Documento_M`, `Id_Metodo_Pago`, `NIT`, `Total`, `Subtotal`, `Iva`, `Descuento`) VALUES
(1, '2023-10-01 00:00:00', 'PQR345', '4567890123', 3, '890765432', 34100, 2004000, 8997, 2828),
(2, '2023-12-13 00:00:00', 'EFG890', '1234567890', 2, '890765432', 86249, 1566397, 2637, 2138),
(3, '2023-09-08 00:00:00', 'HIJ123', '5678901234', 2, '890765432', 93485, 1630344, 3353, 1274),
(4, '2023-08-28 00:00:00', 'VWX901', '4567890123', 2, '890765432', 27332, 1337423, 18668, 3075),
(5, '2024-02-25 00:00:00', 'STU901', '3456789012', 1, '890765432', 78002, 605949, 3126, 2418),
(6, '2023-06-24 00:00:00', 'EFG890', '5678901234', 1, '890765432', 87688, 1484143, 12022, 1333),
(7, '2023-11-24 00:00:00', 'HIJ456', '5678901234', 2, '890765432', 23534, 2031852, 1810, 4873),
(8, '2023-10-29 00:00:00', 'GHI789', '3456789012', 3, '890765432', 79800, 2726542, 3159, 4293),
(9, '2023-08-11 00:00:00', 'STU901', '3456789012', 2, '890765432', 65559, 1992289, 9924, 4017),
(10, '2023-11-25 00:00:00', 'MNO345', '4567890123', 2, '890765432', 98676, 1492126, 13508, 1978),
(11, '2023-06-23 00:00:00', 'BCD567', '4567890123', 3, '890765432', 90714, 1348970, 2803, 3919),
(12, '2023-12-05 00:00:00', 'STU901', '5678901234', 1, '890765432', 5156, 1124142, 9982, 4517),
(13, '2024-05-28 00:00:00', 'KLM456', '1234567890', 1, '890765432', 8396, 2054547, 589, 3892),
(14, '2023-08-16 00:00:00', 'BCD567', '4567890123', 3, '890765432', 45218, 1034337, 10265, 3222),
(15, '2023-09-29 00:00:00', 'DEF456', '4567890123', 1, '890765432', 55773, 1063057, 14588, 1028),
(16, '2023-08-03 00:00:00', 'YZA678', '1234567890', 1, '890765432', 10029, 1149350, 10140, 4252),
(17, '2023-09-12 00:00:00', 'YZA234', '1234567890', 3, '890765432', 71378, 2910676, 9052, 533),
(18, '2024-04-02 00:00:00', 'EFG234', '5678901234', 1, '890765432', 40072, 981950, 3400, 1134),
(19, '2023-10-21 00:00:00', 'NOP789', '4567890123', 3, '890765432', 675, 1013966, 9359, 2234),
(20, '2023-08-07 00:00:00', 'EFG890', '4567890123', 3, '890765432', 24764, 1574392, 7880, 2439),
(21, '2024-03-03 00:00:00', 'VWX345', '3456789012', 2, '890765432', 56973, 364440, 11930, 4996),
(22, '2024-03-21 00:00:00', 'BCD234', '3456789012', 3, '890765432', 25074, 1422001, 19570, 270),
(23, '2024-02-03 00:00:00', 'STU901', '1234567890', 2, '890765432', 24542, 1123465, 4410, 2642),
(24, '2023-06-13 00:00:00', 'PQR456', '4567890123', 3, '890765432', 5694, 2297279, 19443, 875),
(25, '2023-06-21 00:00:00', 'KLM789', '1234567890', 1, '890765432', 18204, 1336222, 12419, 22),
(26, '2024-04-07 00:00:00', 'MNO345', '4567890123', 1, '890765432', 89576, 1558868, 6903, 3531),
(27, '2023-12-06 00:00:00', 'STU012', '4567890123', 1, '890765432', 64559, 755327, 4057, 652),
(28, '2024-05-20 00:00:00', 'BCD567', '4567890123', 3, '890765432', 11341, 990227, 18660, 4506),
(29, '2023-09-21 00:00:00', 'DEF456', '5678901234', 3, '890765432', 79366, 1531568, 8942, 3694),
(30, '2024-01-28 00:00:00', 'NOP012', '3456789012', 3, '890765432', 54042, 1965497, 3229, 3688),
(31, '2024-03-22 00:00:00', 'HIJ890', '4567890123', 2, '890765432', 54835, 1091055, 19495, 4509),
(32, '2023-11-04 00:00:00', 'BCD890', '5678901234', 1, '890765432', 88104, 1343714, 3464, 3882),
(33, '2024-01-24 00:00:00', 'HIJ890', '3456789012', 1, '890765432', 88462, 1433383, 6365, 40),
(34, '2024-05-05 00:00:00', 'VWX678', '3456789012', 1, '890765432', 93594, 1181644, 9895, 1461),
(35, '2023-06-14 00:00:00', 'BCD234', '5678901234', 1, '890765432', 61757, 2409519, 12660, 4368),
(36, '2023-12-16 00:00:00', 'DEF456', '5678901234', 3, '890765432', 70047, 954886, 19588, 1242),
(37, '2024-02-14 00:00:00', 'EFG890', '5678901234', 1, '890765432', 9788, 1229817, 10630, 2812),
(38, '2024-03-17 00:00:00', 'KLM789', '1234567890', 1, '890765432', 64899, 1414520, 16699, 2528),
(39, '2024-05-27 00:00:00', 'HIJ567', '5678901234', 2, '890765432', 70910, 1557171, 3824, 824),
(40, '2024-03-05 00:00:00', 'DEF456', '4567890123', 3, '890765432', 45249, 1016291, 6588, 3175),
(41, '2024-03-28 00:00:00', 'BCD234', '5678901234', 1, '890765432', 14013, 2821702, 3348, 3422),
(42, '2023-07-05 00:00:00', 'STU901', '4567890123', 3, '890765432', 58158, 1019531, 7881, 1435),
(43, '2024-03-04 00:00:00', 'VWX234', '3456789012', 1, '890765432', 49489, 2334304, 15045, 4095),
(44, '2023-08-03 00:00:00', 'MNO345', '3456789012', 2, '890765432', 84661, 1474146, 6352, 3367),
(45, '2024-01-05 00:00:00', 'KLM890', '5678901234', 3, '890765432', 26795, 1703241, 10362, 4986),
(46, '2023-12-30 00:00:00', 'STU012', '1234567890', 1, '890765432', 48094, 2205419, 7466, 4884),
(47, '2023-08-31 00:00:00', 'STU012', '4567890123', 1, '890765432', 45372, 1363200, 4432, 3792),
(48, '2024-04-19 00:00:00', 'NOP456', '5678901234', 3, '890765432', 39477, 1548025, 3095, 1852),
(49, '2024-01-15 00:00:00', 'VWX901', '3456789012', 3, '890765432', 22075, 1869843, 5525, 3091),
(50, '2024-03-01 00:00:00', 'STU901', '1234567890', 1, '890765432', 95863, 1508582, 3555, 2282);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanico`
--

CREATE TABLE `mecanico` (
  `Documento` char(10) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Celular` varchar(10) DEFAULT NULL,
  `F_Nacimiento` date DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mecanico`
--

INSERT INTO `mecanico` (`Documento`, `Nombre`, `Apellido`, `Celular`, `F_Nacimiento`, `Correo`) VALUES
('1234567890', 'Juan', 'González', '3101234567', '1990-05-15', 'juan.gonzalez@example.com'),
('3456789012', 'Carlos', 'Martínez', '3303456789', '1992-03-10', 'carlos.martinez@example.com'),
('4567890123', 'Pedro', 'Sánchez', '3404567890', '1988-11-25', 'pedro.sanchez@example.com'),
('5678901234', 'Alejandro', 'López', '3505678901', '1987-09-20', 'alejandro.lopez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `Id_Metodo_Pago` tinyint(3) UNSIGNED NOT NULL,
  `Tipo` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`Id_Metodo_Pago`, `Tipo`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta'),
(3, 'Crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_producto` smallint(6) NOT NULL,
  `Id_tipo_producto` tinyint(3) UNSIGNED DEFAULT NULL,
  `Cantidad_Stock` smallint(6) DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `Precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_producto`, `Id_tipo_producto`, `Cantidad_Stock`, `Nombre`, `Precio`) VALUES
(1, 1, 50, 'Aceite Mineral 5W-30', 15000),
(2, 2, 30, 'Filtro de Aire para Motor de Gasolina', 5000),
(3, 3, 20, 'Pastillas de Freno Cerámicas', 25000),
(4, 4, 40, 'Llanta Todo Terreno 265/70R17', 70000),
(5, 5, 15, 'Batería para Automóvil 12V 600CCA', 80000),
(6, 1, 60, 'Aceite Sintético 5W-40', 18000),
(7, 2, 25, 'Filtro de Aire de Alto Flujo', 5500),
(8, 3, 18, 'Pastillas de Freno Semi-Metálicas', 27000),
(9, 4, 35, 'Llanta para Auto Deportivo 225/45R18', 72000),
(10, 5, 12, 'Batería para Camión 24V 800CCA', 85000),
(11, 1, 45, 'Aceite Semisintético 10W-30', 16000),
(12, 2, 28, 'Filtro de Aire para Motor Diésel', 6000),
(13, 3, 22, 'Pastillas de Freno Premium', 24000),
(14, 4, 38, 'Llanta de Verano 195/65R15', 68000),
(15, 5, 17, 'Batería de Ciclo Profundo para RV 12V', 82000),
(16, 1, 55, 'Aceite Sintético 0W-20', 17000),
(17, 2, 33, 'Filtro de Aire de Cabina', 5200),
(18, 3, 25, 'Pastillas de Freno Performance', 26000),
(19, 4, 42, 'Llanta de Invierno 205/55R16', 75000),
(20, 5, 20, 'Batería para Motocicleta 12V', 90000),
(21, 1, 48, 'Aceite Mineral 20W-50', 14000),
(22, 2, 27, 'Filtro de Aire para ATV', 5800),
(23, 3, 19, 'Pastillas de Freno para Camioneta', 28000),
(24, 4, 37, 'Llanta de Verano 225/40R18', 73000),
(25, 5, 14, 'Batería de Gel 12V 100Ah', 88000),
(26, 1, 58, 'Aceite Sintético 5W-30', 19000),
(27, 2, 31, 'Filtro de Aire de Repuesto', 5300),
(28, 3, 24, 'Pastillas de Freno para SUV', 27000),
(29, 4, 39, 'Llanta de Todo Terreno 33x12.50R15', 71000),
(30, 5, 16, 'Batería de Ciclo Profundo 6V', 83000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Id_Servicios` smallint(6) NOT NULL,
  `Nombre_Servicio` varchar(50) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Descripcion` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Id_Servicios`, `Nombre_Servicio`, `Precio`, `Descripcion`) VALUES
(1, 'Cambio de Aceite', 150000, 'Servicio completo de cambio de aceite para carros y motos, incluyendo filtro de aceite.'),
(2, 'Revisión de Frenos', 240000, 'Inspección y ajuste de frenos, reemplazo de pastillas de freno si es necesario.'),
(3, 'Alineación y Balanceo', 210000, 'Alineación y balanceo de las ruedas para mejorar el rendimiento y seguridad del vehículo.'),
(4, 'Mantenimiento General', 360000, 'Servicio de mantenimiento general que incluye revisión de fluidos, filtros, y sistemas principales del vehículo.'),
(5, 'Reparación de Motor', 900000, 'Diagnóstico y reparación de problemas en el motor, incluye cambio de piezas defectuosas.'),
(6, 'Cambio de Neumáticos', 180000, 'Servicio de cambio de neumáticos, incluye balanceo y montaje de nuevas llantas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `Id_tipo_producto` tinyint(3) UNSIGNED NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`Id_tipo_producto`, `Descripcion`) VALUES
(1, 'Aceites y Lubricantes'),
(2, 'Filtros'),
(3, 'Pastillas de Freno'),
(4, 'Llantas'),
(5, 'Baterías');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `Id_Tipo_Vehiculo` tinyint(3) UNSIGNED NOT NULL,
  `Nombre` char(30) DEFAULT NULL,
  `Numero_Ruedas` tinyint(3) UNSIGNED DEFAULT NULL,
  `Descripcion` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`Id_Tipo_Vehiculo`, `Nombre`, `Numero_Ruedas`, `Descripcion`) VALUES
(1, 'Motocicleta', 2, 'Vehículo de dos ruedas, adecuado para transporte individual.'),
(2, 'Automóvil', 4, 'Vehículo de cuatro ruedas, usado para transporte personal y familiar.'),
(3, 'Camioneta', 4, 'Vehículo de cuatro ruedas con mayor capacidad de carga, ideal para transporte de mercancías y uso familiar.'),
(4, 'Camión', 6, 'Vehículo de gran tamaño y seis ruedas, usado principalmente para transporte de carga pesada.'),
(5, 'Autobús', 6, 'Vehículo de transporte público de pasajeros, con capacidad para una gran cantidad de personas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Placa` char(7) NOT NULL,
  `Modelo` varchar(25) DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Color` varchar(25) DEFAULT NULL,
  `Transmision` char(30) DEFAULT NULL,
  `Documento` char(10) DEFAULT NULL,
  `Id_Tipo_Vehiculo` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`Placa`, `Modelo`, `Marca`, `Color`, `Transmision`, `Documento`, `Id_Tipo_Vehiculo`) VALUES
('ABC123', '2019', 'Toyota', 'Rojo', 'Automática', '12345678A', 2),
('BCD234', '2017', 'Jeep', 'Gris', 'Automática', '45678901E', 1),
('BCD567', '2017', 'Porsche', 'Azul', 'Automática', '10112223T', 1),
('BCD890', '2019', 'Renault', 'Negro', 'Manual', '11223344K', 1),
('BCD901', '2019', 'Land Rover', 'Negro', 'Manual', '44556677N', 1),
('DEF456', '2018', 'Honda', 'Azul', 'Manual', '23456789C', 1),
('EFG123', '2016', 'Mercedes-Benz', 'Azul', 'Automática', '22334455L', 2),
('EFG234', '2018', 'Fiat', 'Rojo', 'Automática', '55667788O', 2),
('EFG567', '2019', 'Hummer', 'Blanco', 'Manual', '56789012F', 2),
('EFG890', '2019', 'Bugatti', 'Gris', 'Manual', '21223334U', 2),
('GHI789', '2020', 'Ford', 'Blanco', 'Automática', '34567890D', 3),
('HIJ123', '2018', 'McLaren', 'Blanco', 'Automática', '32334445V', 3),
('HIJ456', '2018', 'BMW', 'Gris', 'Automática', '33445566M', 3),
('HIJ567', '2016', 'Jeep', 'Plateado', 'Automática', '66778899P', 3),
('HIJ890', '2018', 'Tesla', 'Negro', 'Automática', '67890123G', 3),
('JKL012', '2017', 'Chevrolet', 'Negro', 'Automática', '45678901E', 4),
('KLM123', '2016', 'Ferrari', 'Rojo', 'Manual', '78901234H', 4),
('KLM456', '2020', 'Rolls-Royce', 'Negro', 'Automática', '43445556W', 4),
('KLM789', '2020', 'Audi', 'Blanco', 'Manual', '44556677N', 4),
('KLM890', '2017', 'Mini Cooper', 'Negro', 'Manual', '77889900Q', 4),
('MNO345', '2015', 'Volkswagen', 'Gris', 'Manual', '56789012F', 2),
('NOP012', '2015', 'Subaru', 'Negro', 'Automática', '55667788O', 1),
('NOP123', '2019', 'Tesla', 'Azul', 'Automática', '88990011R', 1),
('NOP456', '2017', 'Bugatti', 'Plateado', 'Automática', '89012345I', 1),
('NOP789', '2015', 'Bentley', 'Rojo', 'Manual', '54556667X', 1),
('PQR012', '2017', 'Jaguar', 'Plateado', 'Automática', '65667778Y', 5),
('PQR345', '2017', 'Volvo', 'Rojo', 'Automática', '66778899P', 5),
('PQR456', '2018', 'Hummer', 'Gris', 'Automática', '99001122S', 5),
('PQR678', '2016', 'Hyundai', 'Verde', 'Automática', '67890123G', 5),
('PQR789', '2019', 'McLaren', 'Negro', 'Automática', '90123456J', 5),
('STU012', '2018', 'Rolls-Royce', 'Azul', 'Manual', '11223344K', 2),
('STU345', '2019', 'Land Rover', 'Blanco', 'Automática', '12345678A', 2),
('STU678', '2019', 'Tesla', 'Plateado', 'Automática', '77889900Q', 2),
('STU901', '2019', 'Kia', 'Plateado', 'Automática', '78901234H', 3),
('VWX234', '2018', 'Mazda', 'Blanco', 'Automática', '89012345I', 2),
('VWX345', '2016', 'Bentley', 'Gris', 'Automática', '22334455L', 3),
('VWX678', '2018', 'Fiat', 'Negro', 'Manual', '23456789C', 3),
('VWX901', '2018', 'Ferrari', 'Blanco', 'Manual', '88990011R', 3),
('YZA234', '2016', 'Lamborghini', 'Negro', 'Automática', '99001122S', 4),
('YZA567', '2017', 'Nissan', 'Rojo', 'Manual', '90123456J', 4),
('YZA678', '2017', 'Jaguar', 'Blanco', 'Automática', '33445566M', 4),
('YZA901', '2016', 'Mini Cooper', 'Azul', 'Automática', '34567890D', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Documento`);

--
-- Indices de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD PRIMARY KEY (`Id_Detalle_Producto`),
  ADD KEY `FK__Detalle_P__Id_Fa__6754599E` (`Id_Factura`),
  ADD KEY `FK__Detalle_P__Id_pr__68487DD7` (`Id_producto`);

--
-- Indices de la tabla `detalle_servicio`
--
ALTER TABLE `detalle_servicio`
  ADD PRIMARY KEY (`Id_Detalle_Servicio`),
  ADD KEY `FK__Detalle_S__Id_Fa__6383C8BA` (`Id_Factura`),
  ADD KEY `FK__Detalle_S__Id_Se__6477ECF3` (`Id_Servicio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_factura`),
  ADD KEY `FK__Factura__Placa__5DCAEF64` (`Placa`),
  ADD KEY `FK__Factura__Documen__5EBF139D` (`Documento_M`),
  ADD KEY `FK__Factura__Id_Meto__5FB337D6` (`Id_Metodo_Pago`),
  ADD KEY `FK__Factura__NIT__60A75C0F` (`NIT`);

--
-- Indices de la tabla `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`Documento`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`Id_Metodo_Pago`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `FK__Productos__Id_ti__534D60F1` (`Id_tipo_producto`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id_Servicios`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`Id_tipo_producto`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`Id_Tipo_Vehiculo`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Placa`),
  ADD KEY `FK__Vehiculo__Docume__4D94879B` (`Documento`),
  ADD KEY `FK__Vehiculo__Id_Tip__4E88ABD4` (`Id_Tipo_Vehiculo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD CONSTRAINT `FK__Detalle_P__Id_Fa__6754599E` FOREIGN KEY (`Id_Factura`) REFERENCES `factura` (`Id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Detalle_P__Id_pr__68487DD7` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_servicio`
--
ALTER TABLE `detalle_servicio`
  ADD CONSTRAINT `FK__Detalle_S__Id_Fa__6383C8BA` FOREIGN KEY (`Id_Factura`) REFERENCES `factura` (`Id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Detalle_S__Id_Se__6477ECF3` FOREIGN KEY (`Id_Servicio`) REFERENCES `servicios` (`Id_Servicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK__Factura__Documen__5EBF139D` FOREIGN KEY (`Documento_M`) REFERENCES `mecanico` (`Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Factura__Id_Meto__5FB337D6` FOREIGN KEY (`Id_Metodo_Pago`) REFERENCES `metodo_pago` (`Id_Metodo_Pago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Factura__NIT__60A75C0F` FOREIGN KEY (`NIT`) REFERENCES `datos_empresa` (`NIT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Factura__Placa__5DCAEF64` FOREIGN KEY (`Placa`) REFERENCES `vehiculo` (`Placa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK__Productos__Id_ti__534D60F1` FOREIGN KEY (`Id_tipo_producto`) REFERENCES `tipo_producto` (`Id_tipo_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `FK__Vehiculo__Docume__4D94879B` FOREIGN KEY (`Documento`) REFERENCES `clientes` (`Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Vehiculo__Id_Tip__4E88ABD4` FOREIGN KEY (`Id_Tipo_Vehiculo`) REFERENCES `tipo_vehiculo` (`Id_Tipo_Vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
