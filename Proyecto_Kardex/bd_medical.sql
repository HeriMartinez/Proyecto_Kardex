-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2022 a las 16:03:33
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_medical`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `Id` int(5) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Edad` int(10) NOT NULL,
  `Peso` int(250) NOT NULL,
  `Altura` varchar(250) NOT NULL,
  `Alergias` varchar(250) NOT NULL,
  `Tipo_sangre` varchar(2) NOT NULL,
  `Cita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`Id`, `Nombre`, `Edad`, `Peso`, `Altura`, `Alergias`, `Tipo_sangre`, `Cita`) VALUES
(1, 'Jose Heriberto', 22, 80, '1.72', 'Camaron', 'A+', '2022-07-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `Id` int(2) NOT NULL,
  `kardex` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`Id`, `kardex`) VALUES
(1, './documentos'),
(2, './documentos01 Introducción.pdf'),
(3, './documentos01 Introducción.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `Id` int(5) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Apellidos` varchar(150) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Sexo` varchar(25) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Contraseña` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`Id`, `Nombre`, `Apellidos`, `Edad`, `Sexo`, `Email`, `Contraseña`) VALUES
(7, 'Aidee', 'Balderas Banda', 35, 'Femenino', 'aidee-balderas@hotmail.com', 'dad0c47d949e9e8a576b80a3a90c2db5328c8848ac3213d64e95fde'),
(8, 'Jose Heriberto', 'Martinez Balderas', 22, 'Masculino', 'jhmbalderas@gmail.com', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
