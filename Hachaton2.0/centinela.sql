-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2024 a las 03:49:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `centinela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agente`
--

CREATE TABLE `agente` (
  `id_agente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `rango` varchar(255) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agente`
--

INSERT INTO `agente` (`id_agente`, `nombre`, `rango`, `turno`) VALUES
(1, 'Juan Pérez', 'Oficial', 'Diurno'),
(2, 'María Gómez', 'Comandante', 'Nocturno'),
(3, 'Carlos López', 'Oficial', 'Diurno'),
(4, 'Ana Torres', 'Sargento', 'Diurno'),
(5, 'Luis Hernández', 'Oficial', 'Nocturno'),
(6, 'Patricia Ruiz', 'Comandante', 'Diurno'),
(7, 'Miguel Sánchez', 'Oficial', 'Nocturno'),
(8, 'Laura Martínez', 'Sargento', 'Diurno'),
(9, 'Fernando Ramírez', 'Oficial', 'Diurno'),
(10, 'Elena Jiménez', 'Comandante', 'Nocturno'),
(11, 'Ricardo Morales', 'Oficial', 'Diurno'),
(12, 'Carmen Herrera', 'Sargento', 'Nocturno'),
(13, 'Diego Silva', 'Oficial', 'Diurno'),
(14, 'Gabriela Castro', 'Comandante', 'Diurno'),
(15, 'Javier Ortega', 'Oficial', 'Nocturno'),
(16, 'Sofía Ríos', 'Sargento', 'Diurno'),
(17, 'Andrés Salas', 'Oficial', 'Nocturno'),
(18, 'Valeria Cruz', 'Comandante', 'Diurno'),
(19, 'Samuel Peña', 'Oficial', 'Diurno'),
(20, 'Patricia Mendoza', 'Sargento', 'Nocturno'),
(21, 'Arturo Paredes', 'Oficial', 'Diurno'),
(22, 'Verónica Soto', 'Comandante', 'Nocturno'),
(23, 'Raúl García', 'Oficial', 'Diurno'),
(24, 'Monserrat López', 'Sargento', 'Nocturno'),
(25, 'Héctor Vargas', 'Oficial', 'Diurno'),
(26, 'Fabiola León', 'Comandante', 'Diurno'),
(27, 'Octavio Ruiz', 'Oficial', 'Nocturno'),
(28, 'Lucía Martínez', 'Sargento', 'Diurno'),
(29, 'Gustavo Ramos', 'Oficial', 'Nocturno'),
(30, 'Lourdes Morales', 'Comandante', 'Diurno'),
(31, 'Pedro Jiménez', 'Oficial', 'Diurno'),
(32, 'Jessica Torres', 'Sargento', 'Nocturno'),
(33, 'Ernesto Mendoza', 'Oficial', 'Diurno'),
(34, 'Mariana Silva', 'Comandante', 'Nocturno'),
(35, 'Rafael Núñez', 'Oficial', 'Diurno'),
(36, 'Claudia Torres', 'Sargento', 'Diurno'),
(37, 'Roberto Pacheco', 'Oficial', 'Nocturno'),
(38, 'Angela Cortés', 'Comandante', 'Diurno'),
(39, 'Nicolás Aguirre', 'Oficial', 'Diurno'),
(40, 'Tania Reyes', 'Sargento', 'Nocturno'),
(41, 'Diego Solís', 'Oficial', 'Diurno'),
(42, 'Sandra Castro', 'Comandante', 'Nocturno'),
(43, 'Víctor Rojas', 'Oficial', 'Diurno'),
(44, 'Karen Salazar', 'Sargento', 'Diurno'),
(45, 'Alberto Villegas', 'Oficial', 'Nocturno'),
(46, 'Paola Galván', 'Comandante', 'Diurno'),
(47, 'Erika Juárez', 'Oficial', 'Diurno'),
(48, 'Fernando Cuéllar', 'Sargento', 'Nocturno'),
(49, 'Mario Salgado', 'Oficial', 'Diurno'),
(50, 'Patricia Sandoval', 'Comandante', 'Nocturno'),
(51, 'Cristian Martínez', 'Oficial', 'Diurno'),
(52, 'Silvia Castro', 'Sargento', 'Diurno'),
(53, 'Oswaldo Valenzuela', 'Oficial', 'Nocturno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis_delictivo`
--

CREATE TABLE `analisis_delictivo` (
  `id_analisis` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `total_incidentes` int(11) NOT NULL,
  `delito_predominante` varchar(50) DEFAULT NULL,
  `grupo_vulnerable` varchar(50) DEFAULT NULL,
  `edad_promedio` decimal(4,2) DEFAULT NULL,
  `fecha_analisis` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidente_criminal`
--

CREATE TABLE `incidente_criminal` (
  `id_incidencia` int(11) NOT NULL,
  `id_victima` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `id_ubicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `incidente_criminal`
--

INSERT INTO `incidente_criminal` (`id_incidencia`, `id_victima`, `tipo`, `descripcion`, `fecha`, `activo`, `id_ubicacion`) VALUES
(1, 1, 'Robo', 'Robo de vehículo en la calle 5 de Febrero.', '2024-01-01 10:00:00', 1, 1),
(2, 2, 'Asalto', 'Asalto a mano armada en una tienda.', '2024-01-02 14:00:00', 1, 2),
(3, 3, 'Robo', 'Robo de celular en la plaza central.', '2024-01-03 09:30:00', 1, 3),
(4, 4, 'Violencia doméstica', 'Caso de violencia en el hogar.', '2024-01-04 20:00:00', 1, 4),
(5, 5, 'Homicidio', 'Homicidio en el barrio de San Marcos.', '2024-01-05 16:00:00', 1, 5),
(6, 6, 'Robo', 'Robo en una vivienda.', '2024-01-06 11:15:00', 1, 6),
(7, 7, 'Agresión', 'Agresión física en la vía pública.', '2024-01-07 18:30:00', 1, 7),
(8, 8, 'Fraude', 'Fraude en una transacción online.', '2024-01-08 13:00:00', 1, 8),
(9, 9, 'Desaparición', 'Persona desaparecida en la colonia centro.', '2024-01-09 22:00:00', 1, 9),
(10, 10, 'Robo', 'Robo en una tienda de conveniencia.', '2024-01-10 02:00:00', 1, 10),
(11, 11, 'Asalto', 'Asalto en un cajero automático.', '2024-01-11 15:00:00', 1, 11),
(12, 12, 'Robo', 'Robo en un restaurante.', '2024-01-12 19:00:00', 1, 12),
(13, 13, 'Violencia doméstica', 'Caso de violencia entre parejas.', '2024-01-13 23:00:00', 1, 13),
(14, 14, 'Homicidio', 'Homicidio en la colonia Guadalupe.', '2024-01-14 17:00:00', 1, 14),
(15, 15, 'Robo', 'Robo de motocicleta en la calle Zaragoza.', '2024-01-15 21:00:00', 1, 15),
(16, 16, 'Agresión', 'Agresión en un bar.', '2024-01-16 23:00:00', 1, 16),
(17, 17, 'Fraude', 'Fraude en un préstamo.', '2024-01-17 10:00:00', 1, 17),
(18, 18, 'Desaparición', 'Desaparición de joven en la colonia López Mateos.', '2024-01-18 19:00:00', 1, 18),
(19, 19, 'Robo', 'Robo a casa habitación.', '2024-01-19 14:00:00', 1, 19),
(20, 20, 'Asalto', 'Asalto en la calle Madero.', '2024-01-20 12:00:00', 1, 20),
(21, 21, 'Robo', 'Robo de bicicletas en el parque.', '2024-01-21 16:00:00', 1, 21),
(22, 22, 'Violencia doméstica', 'Violencia familiar reportada.', '2024-01-22 09:30:00', 1, 22),
(23, 23, 'Homicidio', 'Homicidio en la calle Cuauhtémoc.', '2024-01-23 22:00:00', 1, 23),
(24, 24, 'Robo', 'Robo de laptop en un café.', '2024-01-24 13:15:00', 1, 24),
(25, 25, 'Asalto', 'Asalto en la terminal de autobuses.', '2024-01-25 21:00:00', 1, 25),
(26, 26, 'Fraude', 'Fraude en la compra de boletos.', '2024-01-26 17:00:00', 1, 26),
(27, 27, 'Desaparición', 'Desaparición de persona mayor.', '2024-01-27 18:00:00', 1, 27),
(28, 28, 'Robo', 'Robo en una farmacia.', '2024-01-28 03:00:00', 1, 28),
(29, 29, 'Agresión', 'Agresión en un partido de fútbol.', '2024-01-29 21:30:00', 1, 29),
(30, 30, 'Homicidio', 'Homicidio en la colonia San Felipe.', '2024-01-30 12:00:00', 1, 30),
(31, 31, 'Robo', 'Robo de herramientas en un taller.', '2024-01-31 11:00:00', 1, 31),
(32, 32, 'Asalto', 'Asalto en una gasolinera.', '2024-02-01 19:00:00', 1, 32),
(33, 33, 'Fraude', 'Fraude en tarjeta de crédito.', '2024-02-02 09:00:00', 1, 33),
(34, 34, 'Desaparición', 'Desaparición de adolescente.', '2024-02-03 08:30:00', 1, 34),
(35, 35, 'Robo', 'Robo en un gimnasio.', '2024-02-04 04:00:00', 1, 35),
(36, 36, 'Agresión', 'Agresión en un evento social.', '2024-02-05 20:00:00', 1, 36),
(37, 37, 'Homicidio', 'Homicidio en la colonia San Antonio.', '2024-02-06 15:00:00', 1, 37),
(38, 38, 'Robo', 'Robo de equipaje en el aeropuerto.', '2024-02-07 12:30:00', 1, 38),
(39, 39, 'Asalto', 'Asalto a transportista.', '2024-02-08 10:00:00', 1, 39),
(40, 40, 'Violencia doméstica', 'Caso de violencia en un departamento.', '2024-02-09 21:00:00', 1, 40),
(41, 41, 'Robo', 'Robo de joyería en una casa.', '2024-02-10 16:45:00', 1, 41),
(42, 42, 'Agresión', 'Agresión en un club nocturno.', '2024-02-11 03:00:00', 1, 42),
(43, 43, 'Fraude', 'Fraude en un sitio de compras.', '2024-02-12 14:00:00', 1, 43),
(44, 44, 'Desaparición', 'Desaparición de niño.', '2024-02-13 09:00:00', 1, 44),
(45, 45, 'Robo', 'Robo en un supermercado.', '2024-02-14 12:00:00', 1, 45),
(46, 46, 'Homicidio', 'Homicidio en la calle de la independencia.', '2024-02-15 19:00:00', 1, 46),
(47, 47, 'Robo', 'Robo de identidad en línea.', '2024-02-16 08:00:00', 1, 47),
(48, 48, 'Asalto', 'Asalto en la vía pública.', '2024-02-17 23:30:00', 1, 48),
(49, 49, 'Violencia doméstica', 'Caso de violencia en la colonia Jardines.', '2024-02-18 10:00:00', 1, 49),
(50, 50, 'Homicidio', 'Homicidio en un bar.', '2024-02-19 17:30:00', 1, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_analisis`
--

CREATE TABLE `resultado_analisis` (
  `id_resultado` int(11) NOT NULL,
  `fecha_analisis` datetime NOT NULL,
  `total_incidentes` int(11) NOT NULL,
  `rango_edad` varchar(20) DEFAULT NULL,
  `tipo_delito` varchar(50) DEFAULT NULL,
  `id_analisis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta_patrullaje`
--

CREATE TABLE `ruta_patrullaje` (
  `id_ruta` int(11) NOT NULL,
  `tiempo_estimado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `latitud` decimal(9,6) NOT NULL,
  `longitud` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `direccion`, `latitud`, `longitud`) VALUES
(1, 'Avenida Universidad, Aguascalientes', '21.882234', '-102.297931'),
(2, 'Calle José María Pino Suárez, Aguascalientes', '21.879044', '-102.288393'),
(3, 'Calle Madero, Aguascalientes', '21.883150', '-102.295042'),
(4, 'Avenida Gómez Morín, Aguascalientes', '21.882489', '-102.304228'),
(5, 'Calle López Mateos, Aguascalientes', '21.878494', '-102.303239'),
(6, 'Avenida Independencia, Aguascalientes', '21.892275', '-102.295770'),
(7, 'Calle 5 de Febrero, Aguascalientes', '21.885409', '-102.298602'),
(8, 'Calle Abasolo, Aguascalientes', '21.877962', '-102.288303'),
(9, 'Calle Allende, Aguascalientes', '21.876747', '-102.294843'),
(10, 'Calle Reforma, Aguascalientes', '21.884574', '-102.291250'),
(11, 'Avenida Héroe de Nacozari, Aguascalientes', '21.877272', '-102.291116'),
(12, 'Calle Vicente Guerrero, Aguascalientes', '21.885042', '-102.287919'),
(13, 'Calle Venustiano Carranza, Aguascalientes', '21.884180', '-102.292234'),
(14, 'Avenida Aguascalientes, Aguascalientes', '21.880829', '-102.297194'),
(15, 'Calle Moctezuma, Aguascalientes', '21.884038', '-102.285693'),
(16, 'Calle Zaragoza, Aguascalientes', '21.879295', '-102.286477'),
(17, 'Avenida Miguel de la Madrid, Aguascalientes', '21.885341', '-102.290123'),
(18, 'Calle Lázaro Cárdenas, Aguascalientes', '21.888493', '-102.291384'),
(19, 'Calle Matamoros, Aguascalientes', '21.873722', '-102.294099'),
(20, 'Calle Prolongación López Mateos, Aguascalientes', '21.887196', '-102.304793'),
(21, 'Calle Agustín de Iturbide, Aguascalientes', '21.882799', '-102.284514'),
(22, 'Avenida San Marcos, Aguascalientes', '21.883257', '-102.298814'),
(23, 'Calle Belisario Domínguez, Aguascalientes', '21.887760', '-102.303487'),
(24, 'Calle San Juan, Aguascalientes', '21.884769', '-102.293687'),
(25, 'Avenida Universidad Autónoma, Aguascalientes', '21.885985', '-102.289313'),
(26, 'Calle Francisco Villa, Aguascalientes', '21.872349', '-102.290077'),
(27, 'Calle Cuauhtémoc, Aguascalientes', '21.885155', '-102.285904'),
(28, 'Avenida Gómez Farías, Aguascalientes', '21.883871', '-102.290658'),
(29, 'Calle Juan de la Barrera, Aguascalientes', '21.875675', '-102.292384'),
(30, 'Calle Cloutier, Aguascalientes', '21.889803', '-102.291699'),
(31, 'Calle Francisco I. Madero, Aguascalientes', '21.880792', '-102.284082'),
(32, 'Calle 16 de Septiembre, Aguascalientes', '21.879415', '-102.285944'),
(33, 'Calle Obregón, Aguascalientes', '21.879176', '-102.287712'),
(34, 'Avenida Constitución, Aguascalientes', '21.883499', '-102.291935'),
(35, 'Calle Iturbide, Aguascalientes', '21.877998', '-102.293043'),
(36, 'Calle Guerrero, Aguascalientes', '21.875863', '-102.290939'),
(37, 'Calle Cañada, Aguascalientes', '21.882246', '-102.299056'),
(38, 'Calle Tercera, Aguascalientes', '21.884476', '-102.297732'),
(39, 'Calle Cuarta, Aguascalientes', '21.882682', '-102.300641'),
(40, 'Avenida Aguascalientes Sur, Aguascalientes', '21.879573', '-102.308672'),
(41, 'Calle Juárez, Aguascalientes', '21.879924', '-102.292694'),
(42, 'Avenida las Américas, Aguascalientes', '21.883400', '-102.297671'),
(43, 'Calle Independencia, Aguascalientes', '21.887256', '-102.296547'),
(44, 'Calle Salvador de la Plaza, Aguascalientes', '21.887067', '-102.291511'),
(45, 'Calle Huerta, Aguascalientes', '21.874236', '-102.294231'),
(46, 'Calle General Pénjamo, Aguascalientes', '21.872911', '-102.299292'),
(47, 'Calle México, Aguascalientes', '21.884100', '-102.287626'),
(48, 'Avenida San Luis Potosí, Aguascalientes', '21.885290', '-102.290412'),
(49, 'Calle Allende, Aguascalientes', '21.879004', '-102.284786'),
(50, 'Calle México-Tenochtitlan, Aguascalientes', '21.875436', '-102.287893'),
(51, 'Calle 5 de Febrero, Aguascalientes', '21.885719', '-102.292348'),
(52, 'Calle Emiliano Zapata, Aguascalientes', '21.882200', '-102.295310'),
(53, 'Calle Centro, Aguascalientes', '21.881520', '-102.293196');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_disponibles`
--

CREATE TABLE `unidades_disponibles` (
  `id_unidad` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `placas` varchar(20) NOT NULL,
  `estado` enum('Disponible','En Patrullaje','Fuera de Servicio') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidades_disponibles`
--

INSERT INTO `unidades_disponibles` (`id_unidad`, `modelo`, `placas`, `estado`) VALUES
(1, 'Patrulla Chevrolet Tahoe', 'ABC123', 'Disponible'),
(2, 'Patrulla Dodge Charger', 'XYZ789', 'Disponible'),
(3, 'Patrulla Ford Explorer', 'LMN456', 'En Patrullaje'),
(4, 'Motocicleta Harley Davidson', 'QWE321', 'Fuera de Servicio'),
(5, 'Patrulla Nissan Sentra', 'RST654', 'Disponible'),
(6, 'Patrulla Toyota Hilux', 'FGH852', 'En Patrullaje'),
(7, 'Motocicleta Yamaha MT-07', 'JKL987', 'Disponible'),
(8, 'Patrulla Volkswagen Jetta', 'NOP135', 'Fuera de Servicio'),
(9, 'Patrulla Kia Sportage', 'YUI246', 'Disponible'),
(10, 'Patrulla Honda CR-V', 'VBN369', 'En Patrullaje'),
(11, 'Patrulla Ford F-150', 'DRE852', 'Disponible'),
(12, 'Patrulla Chevrolet Silverado', 'TGB147', 'Fuera de Servicio'),
(13, 'Patrulla Subaru Outback', 'HJK258', 'Disponible'),
(14, 'Motocicleta Kawasaki Ninja', 'QAZ963', 'En Patrullaje'),
(15, 'Patrulla Nissan Versa', 'WSX741', 'Disponible'),
(16, 'Patrulla Hyundai Tucson', 'EDC159', 'Fuera de Servicio'),
(17, 'Patrulla Chrysler 300', 'RFV852', 'Disponible'),
(18, 'Motocicleta Suzuki GSX-R', 'TGB456', 'En Patrullaje'),
(19, 'Patrulla Dodge Durango', 'YHN123', 'Disponible'),
(20, 'Patrulla Ford Edge', 'CVB258', 'Fuera de Servicio'),
(21, 'Patrulla Volkswagen Tiguan', 'XCV369', 'Disponible'),
(22, 'Patrulla Jeep Grand Cherokee', 'QWE987', 'En Patrullaje'),
(23, 'Motocicleta Ducati Monster', 'ASD654', 'Disponible'),
(24, 'Patrulla Toyota RAV4', 'ZXC852', 'Fuera de Servicio'),
(25, 'Patrulla Nissan Altima', 'YUI753', 'Disponible'),
(26, 'Patrulla Honda Accord', 'HGF321', 'En Patrullaje'),
(27, 'Patrulla Chevrolet Malibu', 'PLM654', 'Disponible'),
(28, 'Motocicleta KTM 390 Duke', 'JKL654', 'Fuera de Servicio'),
(29, 'Patrulla Ford Mustang', 'OPQ456', 'Disponible'),
(30, 'Patrulla Subaru Forester', 'RTY789', 'En Patrullaje'),
(31, 'Patrulla Kia Seltos', 'FDS852', 'Disponible'),
(32, 'Patrulla Hyundai Elantra', 'QWE654', 'Fuera de Servicio'),
(33, 'Patrulla Chevrolet Spark', 'POI258', 'Disponible'),
(34, 'Motocicleta Royal Enfield', 'LKJ963', 'En Patrullaje'),
(35, 'Patrulla Nissan Murano', 'BVC159', 'Disponible'),
(36, 'Patrulla Toyota Tacoma', 'QAZ852', 'Fuera de Servicio'),
(37, 'Patrulla Dodge Journey', 'WSX753', 'Disponible'),
(38, 'Patrulla Ford EcoSport', 'EDC258', 'En Patrullaje'),
(39, 'Patrulla Honda Fit', 'RFV456', 'Disponible'),
(40, 'Motocicleta Aprilia RS 660', 'YHN852', 'Fuera de Servicio'),
(41, 'Patrulla Mazda CX-5', 'TGB159', 'Disponible'),
(42, 'Patrulla Chevrolet Tracker', 'HJK654', 'En Patrullaje'),
(43, 'Patrulla Nissan Kicks', 'QWE159', 'Disponible'),
(44, 'Patrulla Subaru Crosstrek', 'LMN258', 'Fuera de Servicio'),
(45, 'Motocicleta BMW F 850 GS', 'YUI852', 'Disponible'),
(46, 'Patrulla Kia Rio', 'QAZ456', 'En Patrullaje'),
(47, 'Patrulla Hyundai Sonata', 'ASD963', 'Disponible'),
(48, 'Patrulla Volkswagen Polo', 'HGF789', 'Fuera de Servicio'),
(49, 'Patrulla Toyota Corolla', 'EDC159', 'Disponible'),
(50, 'Motocicleta Honda CB500F', 'JKL258', 'En Patrullaje'),
(51, 'Patrulla Ford Fusion', 'TGB654', 'Disponible'),
(52, 'Patrulla Nissan 370Z', 'YHN123', 'Fuera de Servicio'),
(53, 'Patrulla Chevrolet Camaro', 'PLM987', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `victima`
--

CREATE TABLE `victima` (
  `id_victima` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` enum('Masculino','Femenino') NOT NULL,
  `id_ubicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `victima`
--

INSERT INTO `victima` (`id_victima`, `nombre`, `edad`, `genero`, `id_ubicacion`) VALUES
(1, 'José García', 25, 'Masculino', 1),
(2, 'María López', 34, 'Femenino', 2),
(3, 'Luis Martínez', 22, 'Masculino', 3),
(4, 'Ana Hernández', 29, 'Femenino', 4),
(5, 'Fernando Ramírez', 30, 'Masculino', 5),
(6, 'Patricia Ruiz', 41, 'Femenino', 6),
(7, 'Miguel Sánchez', 26, 'Masculino', 7),
(8, 'Laura Martínez', 19, 'Femenino', 8),
(9, 'Carlos Torres', 33, 'Masculino', 9),
(10, 'Elena Jiménez', 28, 'Femenino', 10),
(11, 'Ricardo Morales', 45, 'Masculino', 11),
(12, 'Carmen Herrera', 50, 'Femenino', 12),
(13, 'Diego Silva', 38, 'Masculino', 13),
(14, 'Gabriela Castro', 31, 'Femenino', 14),
(15, 'Javier Ortega', 36, 'Masculino', 15),
(16, 'Sofía Ríos', 27, 'Femenino', 16),
(17, 'Andrés Salas', 24, 'Masculino', 17),
(18, 'Valeria Cruz', 29, 'Femenino', 18),
(19, 'Samuel Peña', 32, 'Masculino', 19),
(20, 'Patricia Mendoza', 35, 'Femenino', 20),
(21, 'Arturo Paredes', 42, 'Masculino', 21),
(22, 'Verónica Soto', 47, 'Femenino', 22),
(23, 'Raúl García', 29, 'Masculino', 23),
(24, 'Monserrat López', 23, 'Femenino', 24),
(25, 'Héctor Vargas', 34, 'Masculino', 25),
(26, 'Fabiola León', 26, 'Femenino', 26),
(27, 'Octavio Ruiz', 37, 'Masculino', 27),
(28, 'Lucía Martínez', 21, 'Femenino', 28),
(29, 'Gustavo Ramos', 30, 'Masculino', 29),
(30, 'Lourdes Morales', 44, 'Femenino', 30),
(31, 'Pedro Jiménez', 28, 'Masculino', 31),
(32, 'Jessica Torres', 41, 'Femenino', 32),
(33, 'Ernesto Mendoza', 35, 'Masculino', 33),
(34, 'Mariana Silva', 48, 'Femenino', 34),
(35, 'Rafael Núñez', 22, 'Masculino', 35),
(36, 'Claudia Torres', 31, 'Femenino', 36),
(37, 'Roberto Pacheco', 38, 'Masculino', 37),
(38, 'Angela Cortés', 26, 'Femenino', 38),
(39, 'Nicolás Aguirre', 45, 'Masculino', 39),
(40, 'Tania Reyes', 33, 'Femenino', 40),
(41, 'Diego Solís', 27, 'Masculino', 41),
(42, 'Sandra Castro', 29, 'Femenino', 42),
(43, 'Víctor Rojas', 36, 'Masculino', 43),
(44, 'Karen Salazar', 24, 'Femenino', 44),
(45, 'Alberto Villegas', 28, 'Masculino', 45),
(46, 'Paola Galván', 50, 'Femenino', 46),
(47, 'Erika Juárez', 30, 'Femenino', 47),
(48, 'Fernando Cuéllar', 42, 'Masculino', 48),
(49, 'Mario Salgado', 39, 'Masculino', 49),
(50, 'Patricia Sandoval', 25, 'Femenino', 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agente`
--
ALTER TABLE `agente`
  ADD PRIMARY KEY (`id_agente`);

--
-- Indices de la tabla `analisis_delictivo`
--
ALTER TABLE `analisis_delictivo`
  ADD PRIMARY KEY (`id_analisis`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `id_victima` (`id_victima`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `resultado_analisis`
--
ALTER TABLE `resultado_analisis`
  ADD PRIMARY KEY (`id_resultado`);

--
-- Indices de la tabla `ruta_patrullaje`
--
ALTER TABLE `ruta_patrullaje`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `unidades_disponibles`
--
ALTER TABLE `unidades_disponibles`
  ADD PRIMARY KEY (`id_unidad`);

--
-- Indices de la tabla `victima`
--
ALTER TABLE `victima`
  ADD PRIMARY KEY (`id_victima`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agente`
--
ALTER TABLE `agente`
  MODIFY `id_agente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `analisis_delictivo`
--
ALTER TABLE `analisis_delictivo`
  MODIFY `id_analisis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `resultado_analisis`
--
ALTER TABLE `resultado_analisis`
  MODIFY `id_resultado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruta_patrullaje`
--
ALTER TABLE `ruta_patrullaje`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `unidades_disponibles`
--
ALTER TABLE `unidades_disponibles`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `victima`
--
ALTER TABLE `victima`
  MODIFY `id_victima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisis_delictivo`
--
ALTER TABLE `analisis_delictivo`
  ADD CONSTRAINT `analisis_delictivo_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  ADD CONSTRAINT `incidente_criminal_ibfk_1` FOREIGN KEY (`id_victima`) REFERENCES `victima` (`id_victima`),
  ADD CONSTRAINT `incidente_criminal_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `victima`
--
ALTER TABLE `victima`
  ADD CONSTRAINT `victima_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
