-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-05-2024 a las 15:34:30
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_p_web`
--
CREATE DATABASE IF NOT EXISTS `db_p_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_p_web`;

DELIMITER //
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `SP_BUSCAR_USUARIO`//
CREATE DEFINER=`dbwebpaulina`@`%` PROCEDURE `SP_BUSCAR_USUARIO` (IN `_id` INT(10))   BEGIN
SELECT `id`, `nombre`, `usuario`, `clave` FROM `usuario` WHERE id = _id;
END//

DROP PROCEDURE IF EXISTS `SP_CREAR_USUARIO`//
CREATE DEFINER=`dbwebpaulina`@`%` PROCEDURE `SP_CREAR_USUARIO` (IN `_nombre` VARCHAR(50), IN `_usuario` VARCHAR(50), IN `_clave` VARCHAR(50))   BEGIN 
INSERT INTO `usuario`(`nombre`, `usuario`, `clave`) VALUES (_nombre, _usuario, _clave);
END//

DROP PROCEDURE IF EXISTS `SP_ELIMINAR_USUARIO`//
CREATE DEFINER=`dbwebpaulina`@`%` PROCEDURE `SP_ELIMINAR_USUARIO` (IN `_id` INT(10))   BEGIN
DELETE FROM `usuario` WHERE id = _id;
END//

DROP PROCEDURE IF EXISTS `SP_LISTAR_USUARIO`//
CREATE DEFINER=`dbwebpaulina`@`%` PROCEDURE `SP_LISTAR_USUARIO` ()   BEGIN
SELECT `id`, `nombre`, `usuario`, `clave` FROM `usuario`;
END//

DROP PROCEDURE IF EXISTS `SP_MODIFICAR_USUARIO`//
CREATE DEFINER=`dbwebpaulina`@`%` PROCEDURE `SP_MODIFICAR_USUARIO` (IN `_id` INT(10), IN `_nombre` VARCHAR(50), IN `_usuario` VARCHAR(50), IN `_clave` VARCHAR(50))   BEGIN
UPDATE `usuario` SET `nombre`= _nombre,`usuario`= _usuario,`clave`= _clave WHERE id = _id;
END//

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `usuario`, `clave`) VALUES
(1, 'Paulina', 'Pp', '123'),
(2, 'Alejandra', 'Aa', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
