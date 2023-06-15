-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2023 a las 20:58:25
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tocell`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `condicion`) VALUES
(6595, 'SERVICIO', 1),
(6603, 'CARGADORES', 1),
(6604, 'AUDIFONOS', 1),
(6605, 'PARLANTES', 1),
(6606, 'CASE', 1),
(6607, 'CABLES', 1),
(6608, 'DADOS', 1),
(6609, 'RELOJES', 1),
(6610, 'NOVEDADES', 1),
(6611, 'CIGARREROS', 1),
(6612, 'BLUETOOTH', 1),
(6613, 'LENTES', 1),
(6614, 'SOPORTES', 1),
(6615, 'EXIVIDORES', 1),
(6616, 'CELULARES', 1),
(6617, 'USB', 1),
(6618, 'PROTECTORES', 1),
(6619, 'ADAPTADORES', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_kardex` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo_c` varchar(250) DEFAULT NULL,
  `estadoC` varchar(50) DEFAULT NULL,
  `documento_rel` varchar(20) DEFAULT NULL,
  `formapago` varchar(250) DEFAULT NULL,
  `lugar_entrega` varchar(250) DEFAULT NULL,
  `motivo_compra` varchar(250) DEFAULT NULL,
  `documento` varchar(250) DEFAULT NULL,
  `nota` text DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idcompra`, `idsucursal`, `idproveedor`, `idpersonal`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_compra`, `estado`, `fecha_kardex`, `tipo_c`, `estadoC`, `documento_rel`, `formapago`, `lugar_entrega`, `motivo_compra`, `documento`, `nota`, `imagen`) VALUES
(123, 21, 80, 19, 'Factura', 'E001', '136', '2023-04-12 00:00:00', '18.00', '380.00', 'REGISTRADO', '2023-04-12 19:42:20', 'Compra', '', '', '', '', '', '', '', NULL),
(124, 21, 80, 19, 'Factura', 'E001', '136', '2023-04-12 00:00:00', '18.00', '285.00', 'REGISTRADO', '2023-04-12 19:45:05', 'Compra', '', '', '', '', '', '', '', NULL),
(125, 21, 80, 19, 'Factura', 'E001', '136', '2023-04-12 00:00:00', '18.00', '150.00', 'REALIZADO', '2023-04-12 19:51:42', 'Compra', '', '', '', '', '', '', '', '1681350301.jpg'),
(126, 21, 80, 19, 'Factura', 'P001', '136', '2023-04-12 00:00:00', '18.00', '1000.00', 'REALIZADO', '2023-04-12 19:53:29', 'Compra', '', '', '', '', '', '', '', '1681348663.jpg'),
(127, 21, 80, 1, 'Boleta', 'B001', '0000001', '2023-04-12 00:00:00', '18.00', '170.00', 'REGISTRADO', '2023-04-13 02:04:30', 'Compra', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp_pago`
--

CREATE TABLE `comp_pago` (
  `id_comp_pago` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `serie_comprobante` varchar(4) NOT NULL,
  `num_comprobante` varchar(7) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comp_pago`
--

INSERT INTO `comp_pago` (`id_comp_pago`, `nombre`, `serie_comprobante`, `num_comprobante`, `idsucursal`, `condicion`) VALUES
(69, 'Boleta', '000', '9999999', 21, 1),
(70, 'Factura', '000', '9999999', 21, 1),
(71, 'Nota de Venta', '000', '9999999', 21, 1),
(72, 'Cotización', '000', '9999999', 21, 1),
(73, 'NC', '000', '9999999', 21, 1),
(74, 'NCB', '000', '9999999', 21, 1),
(75, 'Orden Compra', '000', '9999999', 21, 1),
(76, 'Boleta', '000', '9999999', 22, 1),
(77, 'Factura', '000', '9999999', 22, 1),
(78, 'Nota de Venta', '000', '9999999', 22, 1),
(79, 'Cotización', '000', '9999999', 22, 1),
(80, 'NC', '000', '9999999', 22, 1),
(81, 'NCB', '000', '9999999', 22, 1),
(82, 'Orden Compra', '000', '9999999', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `idcotizacion` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `descuento` double DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_h` datetime NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(150) DEFAULT NULL,
  `nota` varchar(350) DEFAULT NULL,
  `saludo` varchar(350) DEFAULT NULL,
  `formapago` varchar(250) DEFAULT NULL,
  `tiempo_pro` varchar(250) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`idcotizacion`, `idsucursal`, `idcliente`, `idPersonal`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `total_venta`, `descuento`, `condicion`, `fecha_h`, `titulo`, `nota`, `saludo`, `formapago`, `tiempo_pro`, `estado`) VALUES
(99, 21, 71, 1, 'Cotización', '001', '0000001', '2023-04-07 00:00:00', '200.00', NULL, 1, '2023-04-07 19:25:54', 'COTIZACIÓN DE MANTENIMIENTO PREVENTIVO Y CORRECTIVO DE LAS INSTALACIONES ELECTRÍCAS EN MEDIA TENSIÓN Y PUESTAS A TIERRA', '2 días', '', 'Crédito a 45 días', '4 días despues de contar con la aprobación y abono', 'EN ESPERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `idcpc` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `fecharegistro` datetime NOT NULL,
  `deudatotal` double NOT NULL,
  `fechavencimiento` date NOT NULL,
  `abonototal` decimal(11,2) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_negocio`
--

CREATE TABLE `datos_negocio` (
  `id_negocio` int(11) NOT NULL,
  `nombre` varchar(80) CHARACTER SET utf8 NOT NULL,
  `ndocumento` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pais` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_impuesto` varchar(10) NOT NULL,
  `monto_impuesto` float(4,2) NOT NULL,
  `moneda` varchar(10) NOT NULL,
  `simbolo` varchar(10) NOT NULL,
  `diasVencer` int(11) DEFAULT NULL,
  `validezcoti` char(3) DEFAULT NULL,
  `usuario_sol` varchar(30) DEFAULT NULL,
  `clave_sol` varchar(30) DEFAULT NULL,
  `estado_certificado` varchar(10) NOT NULL DEFAULT 'BETA',
  `ruta_certificado` varchar(100) DEFAULT NULL,
  `clave_certificado` varchar(50) DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos_negocio`
--

INSERT INTO `datos_negocio` (`id_negocio`, `nombre`, `ndocumento`, `documento`, `direccion`, `telefono`, `email`, `logo`, `pais`, `ciudad`, `nombre_impuesto`, `monto_impuesto`, `moneda`, `simbolo`, `diasVencer`, `validezcoti`, `usuario_sol`, `clave_sol`, `estado_certificado`, `ruta_certificado`, `clave_certificado`, `condicion`) VALUES
(17, 'tunegocio', 'RUC', '0000000000000000', '000000000', '992263447', 'tucellstore@gmail.com', '1681323798.jpg', 'Perú', 'NUEVA CAJAMARCA', 'IGV', 18.00, 'SOLES', 'S/', 150, NULL, 'MODDATOS', 'moddatos', 'BETA', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `iddetalle_compra` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `tipo_c` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`iddetalle_compra`, `idsucursal`, `idcompra`, `idproducto`, `cantidad`, `precio_compra`, `precio_venta`, `tipo_c`) VALUES
(213, 21, 123, 2458, '20.00', '9.00', '35.00', 'Compra'),
(214, 21, 123, 2457, '5.00', '40.00', '89.00', 'Compra'),
(215, 21, 124, 2457, '5.00', '45.00', '89.00', 'Compra'),
(216, 21, 124, 2458, '5.00', '12.00', '35.00', 'Compra'),
(217, 21, 125, 2458, '10.00', '15.00', '40.00', 'Compra'),
(218, 21, 126, 2457, '20.00', '50.00', '150.00', 'Compra'),
(219, 21, 127, 2458, '10.00', '17.00', '45.00', 'Compra');

--
-- Disparadores `detalle_compra`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_compra` FOR EACH ROW BEGIN
 UPDATE producto SET stock = stock + NEW.cantidad,
 		precio = NEW.precio_venta,
                precio_compra = NEW.precio_compra WHERE producto.idproducto = NEW.idproducto AND producto.idsucursal = NEW.idsucursal AND NEW.tipo_c = 'Compra';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion`
--

CREATE TABLE `detalle_cotizacion` (
  `iddetalle_cotizacion` int(11) NOT NULL,
  `idcotizacion` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cuentas_por_cobrar`
--

CREATE TABLE `detalle_cuentas_por_cobrar` (
  `iddcpc` int(11) NOT NULL,
  `idcpc` int(11) NOT NULL,
  `montopagado` decimal(11,2) NOT NULL,
  `fechapago` datetime DEFAULT current_timestamp(),
  `formapago` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_cuentas_por_cobrar`
--

INSERT INTO `detalle_cuentas_por_cobrar` (`iddcpc`, `idcpc`, `montopagado`, `fechapago`, `formapago`, `observacion`) VALUES
(145, 96, '100.00', '2023-04-04 22:44:23', '', ''),
(146, 96, '500.00', '2023-04-04 22:47:05', 'Efectivo', ''),
(147, 96, '183.60', '2023-04-04 22:47:18', 'Efectivo', ''),
(148, 97, '50.00', '2023-04-12 21:35:37', '', ''),
(149, 97, '79.00', '2023-04-12 21:36:18', 'Efectivo', '');

--
-- Disparadores `detalle_cuentas_por_cobrar`
--
DELIMITER $$
CREATE TRIGGER `tr_updCuentasPorCobrar` AFTER INSERT ON `detalle_cuentas_por_cobrar` FOR EACH ROW BEGIN
 UPDATE cuentas_por_cobrar SET abonototal = abonototal + NEW.montopagado 
 WHERE cuentas_por_cobrar.idcpc = NEW.idcpc;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `pf` varchar(20) DEFAULT NULL,
  `ph` varchar(20) DEFAULT NULL,
  `ce` varchar(20) DEFAULT NULL,
  `se` varchar(20) DEFAULT NULL,
  `m` varchar(50) DEFAULT NULL,
  `t` varchar(50) DEFAULT NULL,
  `a` varchar(50) DEFAULT NULL,
  `ae` varchar(50) DEFAULT NULL,
  `ton` varchar(50) DEFAULT NULL,
  `r` varchar(50) DEFAULT NULL,
  `k` varchar(50) DEFAULT NULL,
  `mz` varchar(50) DEFAULT NULL,
  `nombre_producto` varchar(250) DEFAULT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
 UPDATE producto SET stock = stock - NEW.cantidad 
 WHERE producto.idproducto = NEW.idproducto AND producto.idsucursal = NEW.idsucursal AND producto.idcategoria != 6585;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos_nota`
--

CREATE TABLE `motivos_nota` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `motivos_nota`
--

INSERT INTO `motivos_nota` (`id`, `descripcion`, `condicion`) VALUES
(1, 'ANULACIÓN DE LA OPERACIÓN', 1),
(2, 'ANULACIÓN POR ERROR EN EL RUC', 1),
(3, 'CORRECCIÓN POR ERROR EN LA DESCRIPCIÓN', 1),
(4, 'DESCUENTO GLOBAL', 1),
(5, 'DESCUENTO POR ÍTEM', 1),
(6, 'DEVOLUCIÓN TOTAL', 1),
(7, 'DEVOLUCIÓN POR ÍTEM', 1),
(8, 'BONIFICACIÓN', 1),
(9, 'DISMINUCIÓN EN EL VALOR', 1),
(10, 'OTROS CONCEPTOS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `idmovimiento` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo` varchar(25) NOT NULL,
  `vendedor` varchar(255) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Inicio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Personal'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas'),
(8, 'Configuracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `medida_derecha` varchar(50) DEFAULT NULL,
  `medida_izquierda` varchar(50) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `dipc` varchar(250) DEFAULT NULL,
  `addc` varchar(250) DEFAULT NULL,
  `productoc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `fecha`, `medida_derecha`, `medida_izquierda`, `fecha_registro`, `dipc`, `addc`, `productoc`) VALUES
(6, 'Cliente', 'PUBLICO EN GENERAL', 'DNI', '00000000', '0000000000', '00000000', '', '0000-00-00', '0.255', '0.15', '2022-04-11 00:00:00', NULL, NULL, NULL),
(69, 'Proveedor', 'IMPORTACIONES FACUNDO S.A.C.', 'RUC', '20603373201', 'AV. BOLIVIA NRO. 148 INT. 2169 CERCADO DE LIMA LIMA LIMA LIMA', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Cliente', 'COCA-COLA SERVICIOS DE PERU S.A', 'RUC', '20415932376', 'AV. REPÚBLICA DE PANAMÁ NRO. 4050 URB. LIMATAMBO LIMA LIMA SURQUILLO', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Cliente', 'ISAAC YARLEQUE NAVARRO', 'DNI', '71883851', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Cliente', 'ARANA VIDAL CARLOS ERNESTO', 'RUC', '10702338170', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Cliente', 'AYRTON ROMARIO PAZ CARRASCO', 'DNI', '75975367', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Cliente', 'JOSE LUIS LAM PAZ', 'DNI', '43680152', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Cliente', 'TOP CAN E.I.R.L.', 'RUC', '20565445180', 'JR. MARISCAL AGUSTIN GAMARRA NRO. 1141 INT. 200 URB. SAN GERMAN LIMA L', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Cliente', 'SAGA FALABELLA S A', 'RUC', '20100128056', 'AV. PASEO DE LA REPUBLICA NRO. 3220 URB. JARDIN LIMA LIMA SAN ISIDRO', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Cliente', 'TUCELL STORE ACCESORIOS S.A.C.', 'RUC', '20609804743', 'JR. PIURA NRO. 412 SAN MARTIN RIOJA NUEVA CAJAMARCA', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Proveedor', 'GOODCELL S.A.C', 'RUC', '20606370076', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Cliente', 'SAMUEL VÁSQUEZ BARBOZA', 'DNI', '47438963', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Cliente', 'CHICA COSTADO', 'DNI', '', 'MOYOBAMBA COSTADO DE MARCIMEX', '932194488', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Cliente', 'ATILA RAQUEL QUISPE SANCHEZ', 'DNI', '71643637', 'MOYOBAMBA COSTADO DE MARCIMEX', '932194488', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Cliente', 'ALEXANDER HUANCAS RIMAPA', 'DNI', '71107121', 'valle grande-jerusalen', '998107926', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Cliente', 'CESAR AUGUSTO PARIHUAMAN MURO', 'DNI', '42953212', 'BAGUA GRANDE', '939471551', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `porcentaje` decimal(11,2) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idpersonal`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `imagen`, `porcentaje`, `condicion`) VALUES
(1, 'Usuario Administrador', 'DNI', '75663252', 'LIMA', '98632144', 'admin@Hotmail.com', 'admin', '1570311068.png', '30.00', 1),
(18, 'GILMER CULQUIMBOZ CHUQUITAL', 'DNI', '71724548', '', '920039770', '', 'Administrador', 'user.png', '0.00', 1),
(19, 'SHIRLEY DELGADO CATPO', 'DNI', '76366566', '', '975103139', '', 'Administrador', 'user.png', '0.00', 1),
(20, 'CESAR DELGADO CATPO', 'DNI', '46029253', '', '981474902', '', 'Vendedor', 'user.png', '0.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idunidad_medida` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(250) NOT NULL,
  `stock` decimal(11,2) DEFAULT NULL,
  `stock_minimo` decimal(11,2) DEFAULT NULL,
  `precio` decimal(11,2) DEFAULT NULL,
  `precioB` decimal(11,2) DEFAULT NULL,
  `precioC` decimal(11,2) DEFAULT NULL,
  `precioD` decimal(11,2) DEFAULT NULL,
  `preciocigv` decimal(11,2) DEFAULT NULL,
  `precio_compra` decimal(11,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT 'anonymous.png',
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `modelo` varchar(100) DEFAULT NULL,
  `numserie` varchar(50) DEFAULT NULL,
  `proigv` varchar(50) DEFAULT NULL,
  `percha` varchar(100) DEFAULT NULL,
  `fechac` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `provincia` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `distrito` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `ubigeo` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idsucursal`, `nombre`, `direccion`, `telefono`, `departamento`, `provincia`, `distrito`, `ubigeo`) VALUES
(21, 'TIENDA', 'Jr piura 412', '920039770', 'SAN MARTIN', 'RIOJA', 'NUEVA CAJAMARCA', '150200'),
(22, 'ALMACEN', 'Jr Jose Olaya - Juan Velasco', '920039770', 'SAN MARTIN', 'RIOJA', 'NUEVA CAJAMARCA', '150200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `idunidad_medida` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`idunidad_medida`, `nombre`, `condicion`) VALUES
(24, 'UND', 1),
(27, 'MILLAR', 1),
(28, 'PAQUETE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `idpersonal`, `login`, `clave`, `idsucursal`, `condicion`) VALUES
(1, 1, 'admin', '7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358', 0, 1),
(30, 17, 'E', 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58', 21, 1),
(31, 18, 'gilmer', 'e6230c208005b5d41ecff378de6430ccbadeec63dbe85c3ec9bd4f9c7b4c3082', 0, 1),
(32, 19, 'shirley', '920fbbd7c4e9a25ac0087373ab845fe3db83ee9003562145f9e27096c1748194', 0, 1),
(33, 20, 'cesardelgado', '421f9d7e2ba57aa82a87c7cb2ae61a20b076de7d1f5f69cb15a6a0c32032d246', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(144, 30, 1),
(145, 30, 2),
(146, 30, 3),
(147, 30, 4),
(148, 30, 5),
(149, 31, 1),
(150, 31, 2),
(151, 31, 3),
(152, 31, 4),
(153, 31, 5),
(154, 31, 6),
(155, 31, 7),
(156, 31, 8),
(157, 32, 1),
(158, 32, 2),
(159, 32, 3),
(160, 32, 4),
(161, 32, 5),
(162, 32, 6),
(163, 32, 7),
(164, 32, 8),
(173, 1, 1),
(174, 1, 2),
(175, 1, 3),
(176, 1, 4),
(177, 1, 5),
(178, 1, 6),
(179, 1, 7),
(180, 1, 8),
(181, 33, 1),
(182, 33, 2),
(183, 33, 3),
(184, 33, 4),
(185, 33, 5),
(186, 33, 6),
(187, 33, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `idmotivo_nota` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `ventacredito` varchar(20) NOT NULL,
  `formapago` varchar(50) DEFAULT NULL,
  `numoperacion` varchar(100) DEFAULT NULL,
  `fechadeposito` datetime DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `totalrecibido` double DEFAULT NULL,
  `vuelto` double DEFAULT NULL,
  `nomCliente` varchar(250) DEFAULT NULL,
  `documento_rel` varchar(20) DEFAULT NULL,
  `dov_Estado` varchar(15) DEFAULT NULL,
  `dov_Nombre` varchar(100) DEFAULT NULL,
  `dov_IdEmpleado` int(11) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_kardex` timestamp NOT NULL DEFAULT current_timestamp(),
  `estadoS` varchar(50) NOT NULL DEFAULT 'TERMINADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idcompra`),
  ADD KEY `fk_ingreso_persona_idx` (`idproveedor`),
  ADD KEY `fk_compra_personal1_idx` (`idpersonal`);

--
-- Indices de la tabla `comp_pago`
--
ALTER TABLE `comp_pago`
  ADD PRIMARY KEY (`id_comp_pago`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`idcotizacion`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idPersonal` (`idPersonal`);

--
-- Indices de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`idcpc`);

--
-- Indices de la tabla `datos_negocio`
--
ALTER TABLE `datos_negocio`
  ADD PRIMARY KEY (`id_negocio`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`iddetalle_compra`),
  ADD KEY `fk_detalle_ingreso_ingreso_idx` (`idcompra`),
  ADD KEY `fk_detalle_compra_producto1_idx` (`idproducto`);

--
-- Indices de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD PRIMARY KEY (`iddetalle_cotizacion`),
  ADD KEY `idcotizacion` (`idcotizacion`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `detalle_cuentas_por_cobrar`
--
ALTER TABLE `detalle_cuentas_por_cobrar`
  ADD PRIMARY KEY (`iddcpc`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `fk_detalle_venta_venta_idx` (`idventa`),
  ADD KEY `fk_detalle_venta_producto1_idx` (`idproducto`);

--
-- Indices de la tabla `motivos_nota`
--
ALTER TABLE `motivos_nota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`idmovimiento`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idpersonal`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_producto_categoria1_idx` (`idcategoria`),
  ADD KEY `idunidad_medida` (`idunidad_medida`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idsucursal`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`idunidad_medida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD KEY `fk_usuario_personal1_idx` (`idpersonal`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_usuario_permiso_permiso_idx` (`idpermiso`),
  ADD KEY `fk_usuario_permiso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_persona_idx` (`idcliente`),
  ADD KEY `fk_venta_Personal1_idx` (`idPersonal`),
  ADD KEY `idmotivo_nota` (`idmotivo_nota`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6620;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idcompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `comp_pago`
--
ALTER TABLE `comp_pago`
  MODIFY `id_comp_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `idcpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `datos_negocio`
--
ALTER TABLE `datos_negocio`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `iddetalle_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  MODIFY `iddetalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_cuentas_por_cobrar`
--
ALTER TABLE `detalle_cuentas_por_cobrar`
  MODIFY `iddcpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1348;

--
-- AUTO_INCREMENT de la tabla `motivos_nota`
--
ALTER TABLE `motivos_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `idmovimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2671;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idsucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `idunidad_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=917;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_compra_personal1` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingreso_persona` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`idPersonal`) REFERENCES `personal` (`idpersonal`);

--
-- Filtros para la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD CONSTRAINT `detalle_cotizacion_ibfk_1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`),
  ADD CONSTRAINT `detalle_cotizacion_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
