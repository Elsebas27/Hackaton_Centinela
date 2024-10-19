-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2024 a las 00:03:05
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
-- Estructura de tabla para la tabla `demografia`
--

CREATE TABLE `demografia` (
  `id_demografia` int(11) NOT NULL,
  `edad_promedio` int(11) NOT NULL,
  `genero_predominante` enum('masculino','femenino','mixto') NOT NULL,
  `nivel_educativo` varchar(100) NOT NULL,
  `nivel_socioeconomico` varchar(100) NOT NULL,
  `tasa_desempleo` decimal(5,2) NOT NULL,
  `densidad_poblacional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `demografia`
--

INSERT INTO `demografia` (`id_demografia`, `edad_promedio`, `genero_predominante`, `nivel_educativo`, `nivel_socioeconomico`, `tasa_desempleo`, `densidad_poblacional`) VALUES
(1, 35, 'mixto', 'secundaria', 'medio', '4.50', 3000),
(2, 28, 'femenino', 'superior', 'alto', '3.10', 5000),
(3, 42, 'masculino', 'primaria', 'bajo', '6.70', 2500),
(4, 30, 'mixto', 'superior', 'medio', '4.00', 3200),
(5, 50, 'masculino', 'secundaria', 'medio', '5.00', 2800),
(6, 29, 'femenino', 'secundaria', 'bajo', '7.80', 3100),
(7, 33, 'masculino', 'superior', 'medio', '3.90', 4000),
(8, 38, 'mixto', 'primaria', 'medio', '6.50', 2900),
(9, 31, 'femenino', 'superior', 'alto', '2.40', 4800),
(10, 47, 'masculino', 'secundaria', 'medio', '5.60', 3600),
(11, 36, 'mixto', 'primaria', 'bajo', '8.20', 2000),
(12, 40, 'femenino', 'superior', 'medio', '3.00', 4200),
(13, 34, 'masculino', 'secundaria', 'medio', '5.40', 3700),
(14, 45, 'mixto', 'primaria', 'bajo', '6.90', 2600),
(15, 27, 'femenino', 'superior', 'medio', '4.30', 4100),
(16, 39, 'masculino', 'secundaria', 'bajo', '7.10', 2800),
(17, 32, 'mixto', 'superior', 'medio', '3.70', 3900),
(18, 43, 'femenino', 'primaria', 'bajo', '6.00', 2400),
(19, 37, 'masculino', 'superior', 'medio', '4.20', 3400),
(20, 41, 'mixto', 'secundaria', 'medio', '5.30', 3300),
(21, 29, 'femenino', 'superior', 'alto', '3.10', 5200),
(22, 35, 'masculino', 'secundaria', 'bajo', '7.00', 3000),
(23, 48, 'mixto', 'primaria', 'medio', '5.70', 2800),
(24, 30, 'femenino', 'superior', 'medio', '4.60', 4600),
(25, 33, 'masculino', 'secundaria', 'bajo', '6.90', 2500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidente_criminal`
--

CREATE TABLE `incidente_criminal` (
  `id_incidente` int(11) NOT NULL,
  `tipo_delito` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `id_zona_riesgo` int(11) DEFAULT NULL,
  `id_demografia` int(11) DEFAULT NULL,
  `gravedad` varchar(50) DEFAULT NULL,
  `estado_investigacion` varchar(50) DEFAULT NULL,
  `fuente_datos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `incidente_criminal`
--

INSERT INTO `incidente_criminal` (`id_incidente`, `tipo_delito`, `descripcion`, `fecha_hora`, `id_ubicacion`, `id_zona_riesgo`, `id_demografia`, `gravedad`, `estado_investigacion`, `fuente_datos`) VALUES
(26, 'Robo', 'Robo a mano armada en una tienda de conveniencia', '2024-10-10 18:30:00', 1, 1, 1, 'grave', 'abierto', 'policía'),
(27, 'Asalto', 'Asalto a transeúnte en el parque central', '2024-10-11 15:00:00', 2, 2, 2, 'moderado', 'cerrado', 'testigo'),
(28, 'Vandalismo', 'Pintura de grafiti en edificio histórico', '2024-10-12 22:15:00', 3, 3, 3, 'leve', 'en curso', 'cámaras de seguridad'),
(29, 'Robo', 'Robo de vehículo estacionado', '2024-10-13 20:45:00', 4, 4, 4, 'grave', 'abierto', 'policía'),
(30, 'Asalto', 'Asalto a mano armada en un supermercado', '2024-10-14 12:10:00', 5, 5, 5, 'grave', 'abierto', 'policía'),
(31, 'Vandalismo', 'Daños a propiedad privada en zona residencial', '2024-10-15 02:45:00', 6, 6, 6, 'moderado', 'cerrado', 'testigo'),
(32, 'Robo', 'Robo a transeúnte durante la noche', '2024-10-16 21:30:00', 7, 7, 7, 'leve', 'en curso', 'testigo'),
(33, 'Asalto', 'Asalto a un vehículo de reparto', '2024-10-17 16:20:00', 8, 8, 8, 'grave', 'abierto', 'policía'),
(34, 'Vandalismo', 'Destrozos en una tienda de electrónica', '2024-10-18 19:50:00', 9, 9, 9, 'moderado', 'cerrado', 'cámaras de seguridad'),
(35, 'Robo', 'Robo en un domicilio particular', '2024-10-19 22:00:00', 10, 10, 10, 'grave', 'abierto', 'policía'),
(36, 'Asalto', 'Asalto a un estudiante en la universidad', '2024-10-20 14:30:00', 11, 11, 11, 'leve', 'en curso', 'testigo'),
(37, 'Vandalismo', 'Pintadas en un monumento público', '2024-10-21 01:10:00', 12, 12, 12, 'moderado', 'cerrado', 'cámaras de seguridad'),
(38, 'Robo', 'Robo de motocicleta en estacionamiento', '2024-10-22 18:20:00', 13, 13, 13, 'grave', 'abierto', 'policía'),
(39, 'Asalto', 'Asalto a mano armada en estación de autobuses', '2024-10-23 09:15:00', 14, 14, 14, 'grave', 'abierto', 'policía'),
(40, 'Vandalismo', 'Destrucción de cámaras de seguridad en centro comercial', '2024-10-24 23:40:00', 15, 15, 15, 'moderado', 'cerrado', 'cámaras de seguridad'),
(41, 'Robo', 'Robo a transeúnte en la plaza principal', '2024-10-25 20:10:00', 16, 16, 16, 'grave', 'abierto', 'policía'),
(42, 'Asalto', 'Asalto en cajero automático', '2024-10-26 17:25:00', 17, 17, 17, 'grave', 'abierto', 'policía'),
(43, 'Vandalismo', 'Rompimiento de ventanas en una escuela pública', '2024-10-27 03:00:00', 18, 18, 18, 'moderado', 'cerrado', 'testigo'),
(44, 'Robo', 'Robo de pertenencias a un grupo de turistas', '2024-10-28 14:50:00', 19, 19, 19, 'leve', 'en curso', 'testigo'),
(45, 'Asalto', 'Asalto a mano armada en restaurante', '2024-10-29 13:40:00', 20, 20, 20, 'grave', 'abierto', 'policía'),
(46, 'Vandalismo', 'Destrucción de propiedad pública en parque', '2024-10-30 05:10:00', 21, 21, 21, 'leve', 'en curso', 'cámaras de seguridad'),
(47, 'Robo', 'Robo a tienda de ropa en centro comercial', '2024-10-31 18:35:00', 22, 22, 22, 'grave', 'abierto', 'policía'),
(48, 'Asalto', 'Asalto a un ciclista en la vía pública', '2024-11-01 16:45:00', 23, 23, 23, 'moderado', 'cerrado', 'testigo'),
(49, 'Vandalismo', 'Destrucción de bancos en parque de la ciudad', '2024-11-02 02:15:00', 24, 24, 24, 'leve', 'en curso', 'cámaras de seguridad'),
(50, 'Robo', 'Robo de equipo electrónico en universidad', '2024-11-03 12:55:00', 25, 25, 25, 'grave', 'abierto', 'policía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patron_criminal`
--

CREATE TABLE `patron_criminal` (
  `id_patron` int(11) NOT NULL,
  `descripcion_patron` text NOT NULL,
  `id_zona_riesgo` int(11) DEFAULT NULL,
  `frecuencia` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `temporalidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prediccion_riesgo`
--

CREATE TABLE `prediccion_riesgo` (
  `id_prediccion` int(11) NOT NULL,
  `id_zona_riesgo` int(11) DEFAULT NULL,
  `probabilidad_incidente` decimal(5,4) NOT NULL,
  `tipo_prediccion` varchar(100) NOT NULL,
  `fecha_prediccion` datetime NOT NULL,
  `descripcion_prediccion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `latitud` decimal(9,6) DEFAULT NULL,
  `longitud` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `direccion`, `ciudad`, `estado`, `codigo_postal`, `latitud`, `longitud`) VALUES
(1, 'Av. Independencia 1000', 'Aguascalientes', 'Aguascalientes', '20000', '21.881800', '-102.291200'),
(2, 'Calle Madero 123', 'Aguascalientes', 'Aguascalientes', '20010', '21.881200', '-102.291800'),
(3, 'Blvd. Zacatecas 456', 'Aguascalientes', 'Aguascalientes', '20115', '21.883000', '-102.292000'),
(4, 'Calle Héroe de Nacozari 789', 'Aguascalientes', 'Aguascalientes', '20130', '21.881500', '-102.293500'),
(5, 'Calle Galeana 321', 'Aguascalientes', 'Aguascalientes', '20020', '21.882500', '-102.290500'),
(6, 'Calle López Mateos 654', 'Aguascalientes', 'Aguascalientes', '20100', '21.883500', '-102.294000'),
(7, 'Calle Allende 987', 'Aguascalientes', 'Aguascalientes', '20080', '21.884000', '-102.295000'),
(8, 'Calle Victoria 741', 'Aguascalientes', 'Aguascalientes', '20110', '21.885000', '-102.296000'),
(9, 'Av. Universidad 852', 'Aguascalientes', 'Aguascalientes', '20140', '21.886000', '-102.297000'),
(10, 'Blvd. San Marcos 951', 'Aguascalientes', 'Aguascalientes', '20120', '21.887000', '-102.298000'),
(11, 'Av. Convención 654', 'Aguascalientes', 'Aguascalientes', '20150', '21.888000', '-102.299000'),
(12, 'Calle Salvador 987', 'Aguascalientes', 'Aguascalientes', '20090', '21.889000', '-102.300000'),
(13, 'Calle Soberana 852', 'Aguascalientes', 'Aguascalientes', '20160', '21.890000', '-102.301000'),
(14, 'Blvd. Guadalupano 951', 'Aguascalientes', 'Aguascalientes', '20170', '21.891000', '-102.302000'),
(15, 'Calle Cristobal 741', 'Aguascalientes', 'Aguascalientes', '20180', '21.892000', '-102.303000'),
(16, 'Av. México 852', 'Aguascalientes', 'Aguascalientes', '20190', '21.893000', '-102.304000'),
(17, 'Calle Zaragoza 951', 'Aguascalientes', 'Aguascalientes', '20050', '21.894000', '-102.305000'),
(18, 'Calle Hidalgo 741', 'Aguascalientes', 'Aguascalientes', '20060', '21.895000', '-102.306000'),
(19, 'Av. López Portillo 852', 'Aguascalientes', 'Aguascalientes', '20070', '21.896000', '-102.307000'),
(20, 'Blvd. Colosio 951', 'Aguascalientes', 'Aguascalientes', '20040', '21.897000', '-102.308000'),
(21, 'Calle Juárez 654', 'Aguascalientes', 'Aguascalientes', '20125', '21.898000', '-102.309000'),
(22, 'Calle Morelos 741', 'Aguascalientes', 'Aguascalientes', '20135', '21.899000', '-102.310000'),
(23, 'Calle Nápoles 852', 'Aguascalientes', 'Aguascalientes', '20145', '21.900000', '-102.311000'),
(24, 'Calle Berlín 951', 'Aguascalientes', 'Aguascalientes', '20155', '21.901000', '-102.312000'),
(25, 'Blvd. Juan Pablo II 741', 'Aguascalientes', 'Aguascalientes', '20165', '21.902000', '-102.313000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_riesgo`
--

CREATE TABLE `zona_riesgo` (
  `id_zona_riesgo` int(11) NOT NULL,
  `nombre_zona` varchar(100) NOT NULL,
  `tipo_zona` varchar(100) NOT NULL,
  `nivel_riesgo` enum('bajo','medio','alto') NOT NULL,
  `coordenadas_limites` text NOT NULL,
  `densidad_delictiva` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zona_riesgo`
--

INSERT INTO `zona_riesgo` (`id_zona_riesgo`, `nombre_zona`, `tipo_zona`, `nivel_riesgo`, `coordenadas_limites`, `densidad_delictiva`) VALUES
(1, 'Centro', 'Residencial', 'medio', '((21.8818,-102.2912),(21.8830,-102.2935))', '12.34'),
(2, 'Nor-Oriente', 'Comercial', 'alto', '((21.8812,-102.2918),(21.8840,-102.2950))', '18.90'),
(3, 'Sur', 'Residencial', 'bajo', '((21.8830,-102.2920),(21.8860,-102.2970))', '8.67'),
(4, 'Poniente', 'Industrial', 'medio', '((21.8815,-102.2935),(21.8870,-102.2980))', '15.23'),
(5, 'Norte', 'Residencial', 'alto', '((21.8825,-102.2905),(21.8890,-102.3000))', '17.45'),
(6, 'Centro-Oriente', 'Comercial', 'bajo', '((21.8835,-102.2940),(21.8900,-102.3010))', '11.78'),
(7, 'Oriente', 'Residencial', 'medio', '((21.8840,-102.2950),(21.8910,-102.3020))', '13.45'),
(8, 'Centro-Poniente', 'Industrial', 'alto', '((21.8850,-102.2960),(21.8920,-102.3030))', '19.23'),
(9, 'Nor-Poniente', 'Residencial', 'bajo', '((21.8860,-102.2970),(21.8930,-102.3040))', '7.89'),
(10, 'Nor-Sur', 'Comercial', 'medio', '((21.8870,-102.2980),(21.8940,-102.3050))', '14.67'),
(11, 'Sur-Oriente', 'Residencial', 'bajo', '((21.8880,-102.2990),(21.8950,-102.3060))', '9.78'),
(12, 'Sur-Poniente', 'Industrial', 'medio', '((21.8890,-102.3000),(21.8960,-102.3070))', '15.78'),
(13, 'Noroeste', 'Residencial', 'alto', '((21.8900,-102.3010),(21.8970,-102.3080))', '16.45'),
(14, 'Sureste', 'Comercial', 'bajo', '((21.8910,-102.3020),(21.8980,-102.3090))', '10.12'),
(15, 'Suroeste', 'Residencial', 'medio', '((21.8920,-102.3030),(21.8990,-102.3100))', '12.90'),
(16, 'Norte-Centro', 'Comercial', 'alto', '((21.8930,-102.3040),(21.9000,-102.3110))', '18.56'),
(17, 'Centro-Sur', 'Residencial', 'bajo', '((21.8940,-102.3050),(21.9010,-102.3120))', '8.34'),
(18, 'Nor-Centro', 'Comercial', 'medio', '((21.8950,-102.3060),(21.9020,-102.3130))', '14.45'),
(19, 'Centro-Este', 'Industrial', 'alto', '((21.8960,-102.3070),(21.9030,-102.3140))', '19.34'),
(20, 'Norte-Sureste', 'Residencial', 'bajo', '((21.8970,-102.3080),(21.9040,-102.3150))', '7.23'),
(21, 'Sur-Centro', 'Comercial', 'medio', '((21.8980,-102.3090),(21.9050,-102.3160))', '13.67'),
(22, 'Centro-Oeste', 'Residencial', 'alto', '((21.8990,-102.3100),(21.9060,-102.3170))', '17.89'),
(23, 'Nor-Este', 'Comercial', 'bajo', '((21.9000,-102.3110),(21.9070,-102.3180))', '10.89'),
(24, 'Sur-Suroeste', 'Residencial', 'medio', '((21.9010,-102.3120),(21.9080,-102.3190))', '12.56'),
(25, 'Oeste', 'Comercial', 'alto', '((21.9020,-102.3130),(21.9090,-102.3200))', '18.67');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `demografia`
--
ALTER TABLE `demografia`
  ADD PRIMARY KEY (`id_demografia`);

--
-- Indices de la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  ADD PRIMARY KEY (`id_incidente`),
  ADD KEY `id_ubicacion` (`id_ubicacion`),
  ADD KEY `id_zona_riesgo` (`id_zona_riesgo`),
  ADD KEY `id_demografia` (`id_demografia`);

--
-- Indices de la tabla `patron_criminal`
--
ALTER TABLE `patron_criminal`
  ADD PRIMARY KEY (`id_patron`),
  ADD KEY `id_zona_riesgo` (`id_zona_riesgo`);

--
-- Indices de la tabla `prediccion_riesgo`
--
ALTER TABLE `prediccion_riesgo`
  ADD PRIMARY KEY (`id_prediccion`),
  ADD KEY `id_zona_riesgo` (`id_zona_riesgo`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `zona_riesgo`
--
ALTER TABLE `zona_riesgo`
  ADD PRIMARY KEY (`id_zona_riesgo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `demografia`
--
ALTER TABLE `demografia`
  MODIFY `id_demografia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  MODIFY `id_incidente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `patron_criminal`
--
ALTER TABLE `patron_criminal`
  MODIFY `id_patron` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prediccion_riesgo`
--
ALTER TABLE `prediccion_riesgo`
  MODIFY `id_prediccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `zona_riesgo`
--
ALTER TABLE `zona_riesgo`
  MODIFY `id_zona_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `incidente_criminal`
--
ALTER TABLE `incidente_criminal`
  ADD CONSTRAINT `incidente_criminal_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `incidente_criminal_ibfk_2` FOREIGN KEY (`id_zona_riesgo`) REFERENCES `zona_riesgo` (`id_zona_riesgo`) ON DELETE CASCADE,
  ADD CONSTRAINT `incidente_criminal_ibfk_3` FOREIGN KEY (`id_demografia`) REFERENCES `demografia` (`id_demografia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `patron_criminal`
--
ALTER TABLE `patron_criminal`
  ADD CONSTRAINT `patron_criminal_ibfk_1` FOREIGN KEY (`id_zona_riesgo`) REFERENCES `zona_riesgo` (`id_zona_riesgo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prediccion_riesgo`
--
ALTER TABLE `prediccion_riesgo`
  ADD CONSTRAINT `prediccion_riesgo_ibfk_1` FOREIGN KEY (`id_zona_riesgo`) REFERENCES `zona_riesgo` (`id_zona_riesgo`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
