-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2018 a las 19:38:48
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `telefono` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`telefono`, `usuario`, `contraseña`, `fecha`) VALUES
(3131, 'saucer', '1212', '2018-12-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` varchar(11) NOT NULL,
  `tipo` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `descr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `tipo`, `nombre`, `correo`, `telefono`, `descr`) VALUES
('31131jose', 'tipo1', 'jose', 'j@hotmail.com', '3113', '1121212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musica`
--

CREATE TABLE `musica` (
  `id` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `audio` varchar(100) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `musica`
--

INSERT INTO `musica` (`id`, `img`, `audio`, `descripcion`) VALUES
('1213', 'img/200.png', 'music/KDA.mp4', 'mn'),
('754f44r', 'img/100.png', 'music/mkk.3gpp', 'kmkm'),
('97', 'img/1000.png', 'music/LOL.mp4', 'mj'),
('mimimi', 'img/25ctv.PNG', 'music/mka.mp4', 'suerte jhon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_queja`
--

CREATE TABLE `tipo_queja` (
  `id` varchar(7) NOT NULL,
  `descrip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_queja`
--

INSERT INTO `tipo_queja` (`id`, `descrip`) VALUES
('tipo1', 'contactos'),
('tipo2', 'mensajes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_n` date NOT NULL,
  `genero` text NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre`, `edad`, `fecha_n`, `genero`, `telefono`, `correo`, `clave`) VALUES
('kiron', 'jose', 18, '2010-01-18', 'M', 11111, 'j@hotmail.com', '1111');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_queja`
--
ALTER TABLE `tipo_queja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo_queja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
