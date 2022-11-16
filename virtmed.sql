-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2022 a las 02:01:11
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `virtmed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `medico` varchar(50) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `sintomas` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `contraseña`) VALUES
('', ''),
('ccenmivc', 'amcleo'),
('', ''),
('nahomy', 'novoa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `Paterno` varchar(50) DEFAULT NULL,
  `Materno` varchar(50) DEFAULT NULL,
  `Nombres` varchar(50) DEFAULT NULL,
  `NA` int(20) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`Paterno`, `Materno`, `Nombres`, `NA`, `usuario`, `contraseña`) VALUES
('novoa', 'olachea', '', 328310, 'naho', 'nahomy'),
('novoa', 'olachea', '', 328310, 'naho', 'nahomy'),
('novoa', 'olachea', 'genesis nahomy', 126382, 'naho', 'odjdla'),
('Garcia', 'Salazae', 'Romeo', 2222222, 'romeo', '$2y$10$WCXgUZemxc8BnVrzfnBqI.1ek3NTJnciwMQ276/vzSgV73eCV0QOC'),
('Garcia', 'Salazar', 'Romeo', 123, 'Garsal', '$2y$10$c.9Blg9uzPDVTtq/MIn9ju70nWaa9g1uc2VryQNah2EO9PWXphqOS'),
('Delgado', 'Sanchez', 'Aylin', 123456, 'Aylin', '$2y$10$O9Zv6p8OMhTo1JAjnQVeDOEmn5rLKvarvCnaEB562fYLKwltIAU0W');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
