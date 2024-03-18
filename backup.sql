-- --------------------------------------------------------
-- Host:                         192.168.1.16
-- Versión del servidor:         11.2.2-MariaDB-1:11.2.2+maria~ubu2204 - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para growstyleDB
CREATE DATABASE IF NOT EXISTS `growstyleDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `growstyleDB`;

-- Volcando estructura para tabla growstyleDB.favorito
CREATE TABLE IF NOT EXISTS `favorito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla growstyleDB.favorito: ~11 rows (aproximadamente)
INSERT INTO `favorito` (`id`, `id_usuario`, `id_producto`) VALUES
	(2, 1, 2),
	(106, 21, 2),
	(107, 21, 3),
	(112, 23, 15),
	(115, 23, 2),
	(116, 23, 2),
	(123, 18, 2),
	(124, 24, 2),
	(125, 24, 3),
	(126, 25, 2);

-- Volcando estructura para tabla growstyleDB.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario` (`id_usuario`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla growstyleDB.pedidos: ~2 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `id_usuario`, `status`, `fecha`) VALUES
	(4, 1, 2, '2024-02-18'),
	(5, 1, 0, '2024-02-20');

-- Volcando estructura para tabla growstyleDB.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `precio_descuento` decimal(4,2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `talla_xs` int(5) DEFAULT NULL,
  `talla_s` int(5) DEFAULT NULL,
  `talla_m` int(5) DEFAULT NULL,
  `talla_l` int(5) DEFAULT NULL,
  `talla_xl` int(5) DEFAULT NULL,
  `talla_xxl` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla growstyleDB.producto: ~27 rows (aproximadamente)
INSERT INTO `producto` (`id`, `nombre`, `precio`, `precio_descuento`, `color`, `imagen`, `talla_xs`, `talla_s`, `talla_m`, `talla_l`, `talla_xl`, `talla_xxl`) VALUES
	(2, 'Blue Sea', 25.99, 20.99, 'Azul', '65b77cc997f12cad34e6b0c4', 0, 1, 4, 4, 5, 0),
	(3, 'Basic Blue', 10.00, 0.00, 'Azul', '65b77a624d1079c9e751472c', 0, 1, 4, 8, 5, 0),
	(4, 'Blue Tiger', 12.50, 9.99, 'Azul', '65b77bb753c25fe76b143117', 1, 2, 4, 2, 0, 2),
	(5, 'Blue Fly', 13.50, 0.00, 'Azul', '65b77b4453c25fe76b143115', 1, 6, 4, 2, 5, 2),
	(9, 'White Sun', 15.20, 0.00, 'Blanco', '65b77dc097f12cad34e6b0c7', 0, 2, 4, 0, 0, 2),
	(10, 'White Flowers', 20.20, 0.00, 'Blanco', '65b77de697f12cad34e6b0c8', 1, 2, 4, 0, 2, 2),
	(11, 'White Wings', 30.00, 26.20, 'Blanco', '65b77f2d97f12cad34e6b0cb', 1, 0, 4, 0, 2, 2),
	(12, 'White Rose', 18.00, 0.00, 'Blanco', '65b77ed397f12cad34e6b0ca', 1, 1, 4, 1, 2, 2),
	(13, 'Brown Coffe', 10.00, 8.50, 'Marron', '65b7813197f12cad34e6b0d1', 0, 1, 1, 1, 0, 2),
	(14, 'Brown Oreo', 12.70, 0.00, 'Marron', '65b7819d97f12cad34e6b0d4', 0, 1, 0, 1, 0, 2),
	(15, 'Brown HBS', 25.70, 18.50, 'Marron', '65b7820b97f12cad34e6b0d7', 0, 1, 0, 0, 0, 2),
	(16, 'Brown Medallion', 13.20, 0.00, 'Marron', '65b781e997f12cad34e6b0d6', 0, 1, 0, 0, 0, 2),
	(17, 'Black Eagle', 30.00, 0.00, 'Negro', '65b7824497f12cad34e6b0d8', 0, 1, 1, 1, 0, 2),
	(21, 'Black Face', 18.00, 0.00, 'Negro', '65b7827e97f12cad34e6b0db', 1, 1, 1, 1, 0, 2),
	(22, 'Black Sun', 20.00, 17.70, 'Negro', '65b7829197f12cad34e6b0dc', 1, 0, 1, 1, 1, 0),
	(23, 'Black Bit', 12.00, 0.00, 'Negro', '65b782d897f12cad34e6b0df', 1, 0, 1, 1, 1, 0),
	(24, 'Red Crown', 15.00, 12.20, 'Rojo', '65b7830497f12cad34e6b0e1', 1, 0, 0, 1, 1, 0),
	(25, 'Red Square', 10.00, 8.20, 'Rojo', '65b7831997f12cad34e6b0e2', 1, 1, 0, 1, 0, 0),
	(26, 'Red Tribal', 26.00, 13.20, 'Rojo', '65b7836697f12cad34e6b0e5', 1, 1, 0, 1, 1, 0),
	(27, 'Red Shield', 30.00, 24.20, 'Rojo', '65b7837d97f12cad34e6b0e6', 0, 0, 0, 1, 1, 0),
	(28, 'Green Tetris', 30.00, 26.15, 'Verde', '65b783ad97f12cad34e6b0e8', 0, 1, 0, 1, 1, 1),
	(29, 'Green Eagle', 12.00, 10.00, 'Verde', '65b783c097f12cad34e6b0e9', 0, 1, 0, 1, 1, 1),
	(30, 'Green Coin', 10.00, 7.20, 'Verde', '65b783d197f12cad34e6b0ea', 1, 1, 0, 1, 0, 1),
	(31, 'Green Breathe', 15.00, 12.80, 'Verde', '65b783e997f12cad34e6b0eb', 1, 1, 0, 1, 0, 1),
	(32, 'Tarjeta regalo', 25.00, 0.00, 'Tarjeta', '65f4d2dd19a1d2719e91a466', 0, 0, 0, 0, 0, 0),
	(33, 'Tarjeta regalo', 50.00, 0.00, 'Tarjeta', '65f4d2dd19a1d2719e91a466', 0, 0, 0, 0, 0, 0),
	(35, 'Tarjeta regalo', 100.00, 0.00, 'Tarjeta', '65f4d2dd19a1d2719e91a466', 0, 0, 0, 0, 0, 0);

-- Volcando estructura para tabla growstyleDB.productoPedido
CREATE TABLE IF NOT EXISTS `productoPedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(3) DEFAULT NULL,
  `talla` varchar(3) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto` (`id_producto`),
  KEY `fk_pedidos` (`id_pedido`),
  CONSTRAINT `fk_pedidos` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla growstyleDB.productoPedido: ~0 rows (aproximadamente)
INSERT INTO `productoPedido` (`id`, `cantidad`, `talla`, `id_producto`, `id_pedido`) VALUES
	(2, 1, 'l', 2, 4);

-- Volcando estructura para tabla growstyleDB.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasenya` varchar(255) NOT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla growstyleDB.usuarios: ~13 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `rol`, `nombre`, `apellidos`, `telefono`, `email`, `contrasenya`, `calle`, `numero`, `ciudad`, `codigo_postal`, `provincia`) VALUES
	(1, NULL, 'Fran', 'Sanchez', '642387916', 'fran@gmail.com', '12345.Fr', NULL, NULL, NULL, NULL, NULL),
	(2, 0, 'Gonzalo', 'Pulido Sanchez', '691270867', 'gon07ps@gmail.com', 'growstyle1234', NULL, NULL, NULL, NULL, NULL),
	(9, NULL, 'Antonio', 'Anto', '123456789', 'anto@gmail.com', '12345.An', NULL, NULL, NULL, NULL, NULL),
	(10, NULL, 'Juan', 'Juan', '123456789', 'juan@gmail.com', '12345.Jn', NULL, NULL, NULL, NULL, NULL),
	(11, NULL, 'David', 'David', '123456789', 'david@gmail.com', '12345.Da', NULL, NULL, NULL, NULL, NULL),
	(12, NULL, 'Paca', 'Paca', '123456789', 'paca@gmail.com', '12345.Pc', NULL, NULL, NULL, NULL, NULL),
	(13, NULL, 'Luis', 'Luis', '123456789', 'luis@gmail.com', '12345.Lu', NULL, NULL, NULL, NULL, NULL),
	(14, NULL, 'pepe', 'pepe', '66', 'manuel@jajaj.com', 'Maveri7703', NULL, NULL, NULL, NULL, NULL),
	(15, 1, 'Admin', 'Admin', '691270867', 'admin@gmail.com', 'admin.01', 'Jordania', '15', 'Jerez de la Frontera', '11406', 'Cadiz'),
	(16, NULL, 'Ale', 'Ale Ale', '123123123', 'ale@gmail.com', '12345.Ale', NULL, NULL, NULL, NULL, NULL),
	(17, NULL, 'Carlos', 'Perez Gitano', '123123123', 'carlos@gmail.com', '12345.Ca', NULL, NULL, NULL, NULL, NULL),
	(18, NULL, 'Fav', 'Fav', '123123123', 'fav@gmail.com', '12345.Fav', 'Jordania', '15', 'Jerez de la Frontera', '11406', 'Cadiz'),
	(21, NULL, 'manuel', 'rivas', '666666666', 'mmmm@mmm.com', '%manuel%-7703', NULL, NULL, NULL, NULL, NULL),
	(22, NULL, 'pepe', 'pepe', '666666666', 'pepe@gmail.com', ' Pepe _2020', NULL, NULL, NULL, NULL, NULL),
	(23, NULL, 'Prueba', 'Prueba', '111111111', 'prueba@gmail.com', '12345.Pr', 'hola', '12', 'Jere', '11111', 'Cadiz'),
	(24, NULL, 'vercel', 'vercel', '111111111', 'vercel@gmail.com', '12345.Ve', NULL, NULL, NULL, NULL, NULL),
	(25, NULL, 'nuevo', 'nuevo', '111111111', 'nuevo@gmail.com', '12345.Nu', NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
