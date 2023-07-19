-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2023 a las 19:01:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdtunegocios`
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
(1, 'CEMENTO', 1),
(2, 'VARILLAS DE FIERRO', 1),
(3, 'ALAMBRE DE CONSTRUCCION', 1),
(4, 'HOJA SIERRA', 1),
(5, 'YESO', 1),
(6, 'CAL', 1),
(7, 'CLAVOS DE CONSTRUCCION MADERA', 1),
(8, 'CLAVOS DE CEMENTO', 1),
(9, 'CLAVOS CALAMINA', 1),
(10, 'BISAGRAS', 1),
(11, 'BROCAS', 1),
(12, 'GANCHO ', 1),
(13, 'GRAPAS', 1),
(14, 'ALCAYATA', 1),
(15, 'TARUGO', 1),
(16, 'TIRAFON', 1),
(17, 'OCTOBOL', 1),
(18, 'PERNO', 1),
(19, 'TORNILLO', 1),
(20, 'TUERCA', 1),
(21, 'TUBO PVC AGUA ', 1),
(22, 'TUBO PVC AGUA CALIENTE', 1),
(23, 'TUBO PVC DESAGUE ', 1),
(24, 'TUBO NARANJA', 1),
(25, 'TUBO PVC  LUZ', 1),
(26, 'ANILLOS ACCESARIOS TUBOS', 1),
(27, 'CACHIMBAS', 1),
(28, 'ADAPTADOR', 1),
(29, 'ADAPTADOR AGUA CALIENTE', 1),
(30, 'BUSHING', 1),
(31, 'CODOS - AGUA ', 1),
(32, 'CODO AGUA CALIENTE', 1),
(33, 'CODO - DESAGUE', 1),
(34, 'CODO FIERRO-BRONCE', 1),
(35, 'REDUCCIONES AGUA', 1),
(36, 'REDUCCION AGUA CALIENTE', 1),
(37, 'REDUCCION DESAGUE', 1),
(38, 'NIPLE', 1),
(39, 'NIPLE AGUA CALIENTE', 1),
(40, 'NIPLE FIERRO-BRONCE', 1),
(41, 'TAPON AGUA', 1),
(42, 'TAPON AGUA CALIENTE', 1),
(43, 'TAPON DESAGUE', 1),
(44, 'TAPON FIERRO', 1),
(45, 'TEE-AGUA ', 1),
(46, 'TEE AGUA CALIENTE', 1),
(47, 'TEE DESAGUE', 1),
(48, 'TEE SANITARIA', 1),
(49, 'TEE FIERRO -BRONCE', 1),
(50, 'YEE- AGUA', 1),
(51, 'YEE- DESAGUE', 1),
(52, 'UNION AGUA', 1),
(53, 'UNION AGUA CALIENTE', 1),
(54, 'UNION DESAGUE', 1),
(55, 'UNION FIERRO - BRONCE', 1),
(56, 'UNION UNIVERSAL', 1),
(57, 'UNION UNIVERSAL AGUA CALIENTE', 1),
(58, 'UNION UNIVERSAL DOBLE', 1),
(59, 'UNION UNIVERSAL FIERRO', 1),
(60, 'SOMBRERO', 1),
(61, 'CURVA AGUA', 1),
(62, 'ABRAZADERA', 1),
(63, 'CURVA LUZ', 1),
(64, 'BARRAS ESTRUCTURALES', 1),
(65, 'TUBOS  ESTRUCTURALES', 1),
(66, 'ANGULOS', 1),
(67, 'PLANCHA', 1),
(68, 'PLATINA', 1),
(69, 'TEE ESTRUCTURAL', 1),
(70, 'PEGAMENTO', 1),
(71, 'PEGAMENTO CERAMICA', 1),
(72, 'PEGAMENTO CINTA', 1),
(73, 'PEGAMENTO COLAS', 1),
(74, 'MARTILLO', 1),
(75, 'COMBA', 1),
(76, 'ESCOBILLA', 1),
(77, 'BRU?A', 1),
(78, 'BADILEJO', 1),
(79, 'PLACHAS', 1),
(80, 'ESPATULAS', 1),
(81, 'SISAYAS', 1),
(82, 'NIVEL', 1),
(83, 'FROTACHO', 1),
(84, 'ESCUADRAS', 1),
(85, 'WINCHAS', 1),
(87, 'DISCOS', 1),
(88, 'LUNAS SOLDAR', 1),
(89, 'SOLDADURA', 1),
(90, 'DISOLVENTES', 1),
(91, 'CA?O PLASTICO', 1),
(92, 'CA?O BRONCE-CROMADO', 1),
(93, 'LLAVE DE PASO PVC', 1),
(94, 'LLAVE DE PASO METAL', 1),
(95, 'LLAVE CORPORATIVA', 1),
(96, 'GRIFERIA LAVATORIO PVC', 1),
(97, 'GRIFERIA LAVATORIO CROMADO ', 1),
(98, 'GRIFERIA LAVADERO PVC ', 1),
(99, 'GRIFERIA LAVADERO CROMADO', 1),
(100, 'GRIFERIA LLAVE DUCHA PVC', 1),
(101, 'GRIFERIA LLAVE DUCHA CROMADA', 1),
(102, 'GRIFERIA BRAZO DUCHA PVC', 1),
(103, 'GRIFERIA BRAZO DUCHA CROMADO', 1),
(104, 'GRIFERIA REPUESTOS', 1),
(105, 'ACCESORIOS DESAGUE ', 1),
(106, 'ACCESORIOS SANITARIOS', 1),
(107, 'TUBO DE ABASTOS', 1),
(108, 'ANILLOS SANITARIO', 1),
(109, 'TAPAS WATER', 1),
(110, 'CAJA DE LUZ', 1),
(111, 'LLAVES LUZ', 1),
(112, 'CABLES DE LUZ', 1),
(113, 'ARTICULOS FERRETERIA', 1),
(114, 'SEGURIDAD', 1),
(115, 'LIMPIEZA', 1),
(116, 'TANQUES DE AGUA ', 1),
(117, 'VALVULAS 1', 1),
(118, 'CHECK', 1),
(119, 'VALVULAS 2', 1),
(120, 'OTROS ACCESORIOS TANQUE', 1),
(121, 'PURIFICADORES', 1),
(122, 'CARTUCHO', 1),
(123, 'FRAGUAS CELIMA', 1),
(124, 'FRAGUAS CHEMA', 1),
(125, 'FRAGUAS EZEBOL', 1),
(126, 'CRUZETAS', 1),
(127, 'PERFILES PVC', 1),
(128, 'PERFILES DE ALUMINIO', 1),
(129, 'OCRE', 1),
(130, 'SELLANTES', 1),
(131, 'CALAMINA', 1),
(132, 'ETERNIT', 1),
(133, 'BOMBA CENTRIFUGA ', 1),
(134, 'LIJAS', 1),
(135, 'CA?O LAVATORIO ACRILICA', 1),
(136, 'GRIFERIA LAVATORIO ACRILICA', 1),
(137, 'LADRILLO', 1),
(138, 'GRIFERIA LAVADERO', 1),
(139, 'ACABADOS', 1),
(140, 'ELECTRICIDAD', 1),
(141, 'ILUMINACION', 1),
(142, 'AGREGADOS', 1),
(6592, 'OTROS', 1),
(6595, 'SERVICIO', 1);

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
(75, 'Orden Compra', '000', '9999999', 21, 1);

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
  `igv` varchar(50) NOT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `condicion` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_hora` timestamp NULL DEFAULT current_timestamp()
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
(17, 'MATERIALES CUPISNIQUE S.A.C', 'RUC', '20000000001', 'CAL. ANCASH NRO. 455 PUEBLO SAN PEDRO LA LIBERTAD PACASMAYO SAN PEDRO DE LLOC', '964140142', 'ventas@imprimaya.com', '1686858482.png', 'Perú', 'LIMA', 'IGV', 18.00, 'SOLES', 'S/', 150, NULL, 'MODDATOS', 'moddatos', 'BETA', '', '', 1);

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
  `tipo_c` varchar(250) DEFAULT NULL,
  `nombre_producto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `banco` varchar(250) DEFAULT NULL,
  `op` varchar(250) DEFAULT NULL,
  `fechapago` datetime DEFAULT current_timestamp(),
  `formapago` varchar(50) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `descuento` decimal(11,2) NOT NULL,
  `tipo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `tr_delStockVenta` AFTER DELETE ON `detalle_venta` FOR EACH ROW BEGIN
 UPDATE producto SET stock = stock + old.cantidad 
 WHERE producto.idproducto = old.idproducto AND producto.idsucursal = old.idsucursal AND producto.idcategoria != 6585;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
 UPDATE producto SET stock = stock - NEW.cantidad 
 WHERE producto.idproducto = NEW.idproducto AND producto.idsucursal = NEW.idsucursal AND NEW.tipo = 'venta' AND producto.idcategoria != 6585;
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
(6, 'Cliente', 'PUBLICO EN GENERAL', 'DNI', '00000000', 'Calle #12, Pacasmayo - Dirección de prueba xddddd oki prueba xd', '952761400', '', '0000-00-00', '0.255', '0.15', '2022-04-11 00:00:00', NULL, NULL, NULL),
(92, 'Proveedor', 'NEGOCIO JAVIER', 'DNI', '00000000', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Cliente', 'ANGELICA MADELEINE ARMAS HUAMAN', 'DNI', '73943828', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Cliente', 'ANGELICA MADELEINE ARMAS HUAMAN', 'DNI', '73943828', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Cliente', 'ARMAS HUAMAN ANGELICA MADELEINE', 'DNI', '73943828', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Cliente', 'JOHANNA PAUCAR RODRIGUEZ', 'DNI', '75886325', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Cliente', 'NEGOCIO JAVIER', 'DNI', '75886325', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Cliente', 'MURRUP Arquitectos', 'RUC', '20602009166', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Cliente', 'PRODUCTO DE PRUEBA', 'DNI', '48492024', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Cliente', 'DOBLE CU', 'DNI', '78996532', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Cliente', 'TopKeys', 'DNI', '71998765', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Cliente', 'DOBLE CU', 'DNI', '00000000', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Cliente', 'COCA-COLA SERVICIOS DE PERU S.A', 'RUC', '20415932376', 'AV. REPÚBLICA DE PANAMÁ NRO. 4050 URB. LIMATAMBO LIMA LIMA SURQUILLO', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Cliente', 'ARANA VIDAL CARLOS ERNESTO', 'RUC', '10702338170', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Usuario Administrador', 'DNI', '75663252', 'LIMA', '98632144', 'admin@Hotmail.com', 'admin', '1686871551.jpg', '30.00', 1);

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

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(1, 21, 1, 1, 'SIN CODIGO', 'CEMENTO FORTIMAX 42,5 K', '155.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2, 21, 1, 1, 'SIN CODIGO', 'CEMENTO EXTRAFORTE ROJO 42,5 K', '138.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(3, 21, 1, 1, 'SIN CODIGO', 'CEMENTO MOCHICA ROJO 42.5', '0.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(4, 21, 1, 1, 'SIN CODIGO', 'CEMENTO 1 KILO', '54.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(5, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 8 mm', '121.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(6, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 1/4', '30.00', '10.00', '12.00', '0.00', '0.00', '0.00', '12.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(7, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 3/8', '89.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(8, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 1/2', '192.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(9, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 3/4', '0.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(10, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 12', '13.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(11, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 5/8', '88.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(12, 21, 3, 1, 'SIN CODIGO', 'ALAMBRE N 16', '115.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(13, 21, 3, 1, 'SIN CODIGO', 'ALAMBRE N  8', '135.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(14, 21, 4, 1, 'SIN CODIGO', 'HOJA SIERRA-SANFLEX', '3.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(15, 21, 4, 1, 'SIN CODIGO', 'HOJA SIERRA', '0.00', '10.00', '12.00', '0.00', '0.00', '0.00', '12.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(16, 21, 5, 1, 'SIN CODIGO', 'YESO 5 K.', '572.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(17, 21, 6, 1, 'SIN CODIGO', 'CAL  VIVA 15 K.', '2.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(18, 21, 6, 1, 'SIN CODIGO', 'CAL NIEVE 1K', '33.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(19, 21, 6, 1, 'SIN CODIGO', 'CAL NIEVE 18K', '2.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(20, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 1\'\' (KILO)', '31.82', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(21, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 1.1/2\'\' (KILO)', '34.86', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(22, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 2\'\' (KILO)', '55.99', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(23, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 2.1/2\'\' (KILO)', '33.36', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(24, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 3\'\' (KILO)', '67.98', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(25, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 4\'\' (KILO)', '67.98', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(26, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 5\'\' (KILO)', '16.28', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(27, 21, 7, 3, 'SIN CODIGO', 'CLAVO MADERA 8\'\' (KILO)', '7.15', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(28, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 1 1/2 NEGRO', '387.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(29, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 1', '329.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(30, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 1 1/2', '372.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(31, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 2', '401.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(32, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 2 1/2', '1356.50', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(33, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 3', '587.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(34, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 4', '193.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(35, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 3 1/2 \'\'', '257.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(36, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO 5', '19.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(37, 21, 9, 3, 'SIN CODIGO', 'CLAVO CALAMINA 2 1/2 -ENSADO KILO', '10.55', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(38, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 1 1/2  - PAR', '4.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(39, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 2\'\'  - PAR', '16.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(40, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 2 1/2 - PAR', '14.50', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(41, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 3 - PAR', '25.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(42, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 3 1/2 - PAR', '3.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(43, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 4 - PAR', '2.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(44, 21, 10, 1, 'SIN CODIGO', 'BISAGRA SOLDAR N 4', '1.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(45, 21, 10, 1, 'SIN CODIGO', 'BISAGRA ESCALERA PAR 7', '4.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(46, 21, 10, 1, 'SIN CODIGO', 'BISAGRA ESCALERA PAR 8', '6.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(47, 21, 10, 1, 'SIN CODIGO', 'BISAGRA WATER', '11.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(48, 21, 11, 1, 'SIN CODIGO', 'BROCA CEMENTO  1/4 UNIDAD', '10.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(49, 21, 11, 1, 'SIN CODIGO', 'BROCA CEMENTO 5/16 UNIDAD', '8.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(50, 21, 11, 1, 'SIN CODIGO', 'BROCA CEMENTO  3/16 UNIDAD', '13.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(51, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 1/8 UNIDAD', '8.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(52, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 3/16 UNIDAD', '14.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(53, 21, 11, 1, 'SIN CODIGO', 'BROCA CEMENTO 5/32 UNIDAD', '15.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(54, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 7/32', '4.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(55, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO  1/4 UNIDAD', '19.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(56, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO  3/8 UNIDAD', '13.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(57, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO  7/16', '5.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(58, 21, 11, 1, 'SIN CODIGO', 'BROCA MADERA 1/4 UNIDAD', '1.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(59, 21, 11, 1, 'SIN CODIGO', 'BROCA ACERO 14.5MM PARA METAL', '0.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(60, 21, 11, 1, 'SIN CODIGO', 'BROCA PARA CONCRETO 10MM X 13', '2.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(61, 21, 11, 1, 'SIN CODIGO', 'BROCA ACERO 8 -10 - ? 12', '2.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(62, 21, 12, 1, 'SIN CODIGO', 'ganchO  J  3/16 x 3 ', '11.00', '10.00', '10.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(63, 21, 12, 1, 'SIN CODIGO', 'ganchO  J  3/16 x  4 ', '13.00', '10.00', '11.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(64, 21, 12, 1, 'SIN CODIGO', 'GANCHO J 1/4 x 2', '1.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(65, 21, 12, 1, 'SIN CODIGO', 'GANCHO J 2 1/2', '0.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(66, 21, 12, 1, 'SIN CODIGO', 'GANCHO J  1/4 x  3 ', '64.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(67, 21, 12, 1, 'SIN CODIGO', 'GANCHO J  1/4 x  4', '14.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(68, 21, 12, 1, 'SIN CODIGO', 'GANCHO J 1/4  x  5', '107.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(69, 21, 13, 3, 'SIN CODIGO', 'GRAPAS MOTTO 1 KG', '4.75', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(70, 21, 13, 1, 'SIN CODIGO', 'ALAMBRE DE PUAS X200 MTS', '6.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(71, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 1\'\'', '561.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(72, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 1 1/2', '53.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(73, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 2\'\'', '168.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(74, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 2 1/2\'\'', '0.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(75, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 3\'\'', '173.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(76, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 3 1/2\'\'', '52.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(77, 21, 14, 1, 'SIN CODIGO', 'ALCAYATA 4\'\'', '37.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(78, 21, 15, 1, 'SIN CODIGO', 'TARUGO AZUL', '494.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(79, 21, 15, 1, 'SIN CODIGO', 'TARUGO GRIS', '273.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(80, 21, 15, 1, 'SIN CODIGO', 'TARUGO NARANJA', '183.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(81, 21, 15, 1, 'SIN CODIGO', 'TARUGO ROJO ', '812.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(82, 21, 16, 1, 'SIN CODIGO', 'TIRAFON  1 /4 x 1', '0.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(83, 21, 16, 1, 'SIN CODIGO', 'TIRAFON  1/4x 1 1 /2', '47.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(84, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4 x2', '55.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(85, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4 X 2 1/2', '62.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(86, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4 x 3', '85.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(87, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4x 3 1/2', '0.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(88, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4 x 4', '95.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(89, 21, 16, 1, 'SIN CODIGO', 'SOMBRERO TIRAFON', '1848.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(90, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 1/8 x 1 1/2', '220.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(91, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 5/32 x 1 1/2', '283.90', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(92, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 1 1/4\'\'', '0.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(93, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL  1/8 x 2', '223.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(94, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 1', '0.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(95, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 1 1/2', '36.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(96, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 2', '117.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(97, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 2 1/2', '153.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(98, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 3', '5.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(99, 21, 19, 1, 'SIN CODIGO', 'TORNILLO 5/32 x 1 1/2', '463.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(100, 21, 19, 1, 'SIN CODIGO', 'TORNILLO 1/4', '732.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(101, 21, 19, 1, 'SIN CODIGO', 'TORNILLO 1\'\'', '264.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(102, 21, 20, 1, 'SIN CODIGO', 'TUERCA 5/32', '1375.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(103, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 1/2\'\' (21.00 mm) x 5 M S/P C-10', '79.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(104, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 3/4\'\' (26.5)mm X 5 M S/P C-10', '62.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(105, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 1\'\'(33MM) X 5 M S/P  C-10', '28.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(106, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC  1  1/2\'\'  C-7,5 x 5mt', '2.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(107, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC  1  1/2\'\'  C- 10', '11.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(108, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA  PVC  2\'\'  x 5m  C-7.5  ECON.', '0.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(109, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA  PVC 2\'\'  (60MM) x 5m  C-10', '1.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(110, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA  PVC 2\'\'  RIEGO TECNIFICADO x 6m  C-5 CON ANILLO', '1.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(111, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 2 1/2\'\' C-10', '18.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(112, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 3\'\' C- 7,5', '0.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(113, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 3\'\'  C-10', '3.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(114, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 4\'\'   C-7,5', '0.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(115, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA PVC 4\'\'   C-10', '1.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(116, 21, 22, 1, 'SIN CODIGO', 'TUBO AGUA CALIENTE PVC 1/2\'\' X 5MTS', '3.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(117, 21, 22, 1, 'SIN CODIGO', 'TUBO AGUA CALIENTE PVC 3/4\'\'', '3.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(118, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 2\'\' (54 mm) 3M S/P', '134.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(119, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 3 (80MM) X 3M', '25.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(120, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 4\'\' (105mm) x 3M S/P', '56.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(121, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 6\'\' SEMI  PESADO X 5 MT', '0.00', '10.00', '25.02', '0.00', '0.00', '0.00', '25.02', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(122, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 6\'\'  PESADO', '5.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(123, 21, 24, 1, 'SIN CODIGO', 'TUBO NARANJA DESAGUE 4 S-25/110 mm PLASTICAx 6m', '6.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(124, 21, 24, 1, 'SIN CODIGO', 'TUBO NARANJA DESAGUE 6 ISO-25/160 mm PLASTICAX 6 M', '1.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(125, 21, 24, 1, 'SIN CODIGO', 'TUBO NARANJA DESAGUE 8 ISO-25/200 mm PLASTICA', '0.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(126, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ BLANCO  5/8\'\' (15.9 mm) L x 3M S/P', '78.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(127, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ BLANCO 3/4 (19.1MM9) x 3 M S/P', '586.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(128, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ BLANCO 1\'\' PESADO', '98.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(129, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ BLANCO 1 1/4\'\' (31.8 MM) X 3 MT', '61.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(130, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ GRIS 1\'\'', '8.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(131, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ GRIS 1\'\' PESADO - EURO', '0.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(132, 21, 26, 1, 'SIN CODIGO', 'ANILLO GOMA 4-110 MM NARANJA', '5.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(133, 21, 26, 1, 'SIN CODIGO', 'ANILLO GOMA 6-160 MM NARANJA', '10.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(134, 21, 26, 1, 'SIN CODIGO', 'ANILLO GOMA 8-200 MM NARANJA', '1.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(135, 21, 26, 1, 'SIN CODIGO', 'ANILLO DE JEBE 63MM PRESION', '0.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(136, 21, 27, 1, 'SIN CODIGO', 'CACHIMBA 6 x 4', '5.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(137, 21, 27, 1, 'SIN CODIGO', 'CACHIMBA 6\'\'', '0.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(138, 21, 27, 1, 'SIN CODIGO', 'CACHIMBA 8 x 6 DESAGUE NARANJA', '1.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(139, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1/2  PRESION', '219.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(140, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1/2', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(141, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1/2 HECHIZO', '24.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(142, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1/2 C/ROSCA X DENTRO', '9.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(143, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3/4 PRESION', '117.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(144, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3/4 HECHIZO', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(145, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3/4 C/ROSCA  X DENTRO', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(146, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3/4 A 1/2 C/ROSCA', '0.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(147, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1 PRESION', '124.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(148, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1 HECHIZO ', '10.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(149, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1 C/ROSCA', '3.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(150, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 1 1/2', '7.00', '10.00', '26.03', '0.00', '0.00', '0.00', '26.03', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(151, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 2 - PLASTICA', '33.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(152, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 2 1/2', '5.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(153, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3\'\'', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(154, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 4', '2.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(155, 21, 29, 1, 'SIN CODIGO', 'ADAPTADOR AGUA CALIENTE 1/2', '16.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(156, 21, 29, 1, 'SIN CODIGO', 'ADAPTADOR AGUA CALIENTA 3/4', '12.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(157, 21, 30, 1, 'SIN CODIGO', 'BUSHING PVC 1 a 1/2', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(158, 21, 30, 1, 'SIN CODIGO', 'BUSHING PVC  3/4 A 1/2', '2.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(159, 21, 30, 1, 'SIN CODIGO', 'BUSHING PVC  3/4 A 1/2   HECHIZO', '0.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(160, 21, 30, 1, 'SIN CODIGO', 'BUSHING PVC 1 A 3/4', '5.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(161, 21, 30, 1, 'SIN CODIGO', 'BUSHING PVC 1 A 3/4 HECHIZO', '0.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(162, 21, 30, 1, 'SIN CODIGO', 'BUSHING GALVANIZADO 1/2 A 1/4', '48.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(163, 21, 30, 1, 'SIN CODIGO', 'BUSHING GALVANIZADO 1 A 3/4', '19.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(164, 21, 30, 1, 'SIN CODIGO', 'BUSHING  GALVANIZADA  3/4 A 1/2', '33.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(165, 21, 30, 1, 'SIN CODIGO', 'BUSHING GALVANIZADA  1 A 1/2', '24.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(166, 21, 30, 1, 'SIN CODIGO', 'BUSHING CAMPANA GALVANIZADA  1 A 1/2', '19.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(167, 21, 30, 1, 'SIN CODIGO', 'BUSHING CAMPANA GALVANIZADO 3/4 A 1/2', '13.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(168, 21, 30, 1, 'SIN CODIGO', 'BUSHING CAMPANA GALVANIZADA  1/2 A 3/8', '25.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(169, 21, 30, 1, 'SIN CODIGO', 'BUSHING  BRONCE 1/2 A 1 1/2', '9.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(170, 21, 30, 1, 'SIN CODIGO', 'BUSHING  BRONCE LARGO 1/2 A 1/2', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(171, 21, 30, 1, 'SIN CODIGO', 'BUSHING AGUA CALIENTE 3/4 A 1/2', '18.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(172, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1/2\'\' x 90 PRESION', '226.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(173, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1/2 x 90 -MATUSITA', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(174, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1/2 x 90 MIXTO', '58.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(175, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1/2\'\' x 45', '132.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(176, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1\'\' MIXTO', '37.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(177, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 3/4 x 90 PRESION', '111.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(178, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 3/4 x 90 MIXTO', '80.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(179, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 3/4 x 45', '28.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(180, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA  1\'\' x90', '53.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(181, 21, 31, 1, 'SIN CODIGO', 'CODO  AGUA 1x  45', '15.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(182, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1 1/2  C-10', '34.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(183, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA  2 \'\' x  90', '1.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(184, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 2\'\'  X 45', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(185, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 2\'\' x 90 C-10', '8.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(186, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 2 1/2 C-10', '9.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(187, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 3\'\' x 90 ', '6.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(188, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 4\'\' x 90', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(189, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 4\'\' x 45', '0.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(190, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 4\'\' PRESION', '3.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(191, 21, 32, 1, 'SIN CODIGO', 'CODO AGUA CALIENTE 1/2', '40.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(192, 21, 32, 1, 'SIN CODIGO', 'CODO AGUA CALIENTE 3/4 PAVCO', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(193, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 2\'\' x 90', '274.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(194, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 2\'\' x 45', '44.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(195, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 3\'\' x 90', '50.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(196, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 3\'\' x 45', '21.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(197, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE  4\'\' X 2\'\'', '18.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(198, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 4\'\' x 90', '43.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(199, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE  4\'\' x 45', '39.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(200, 21, 33, 1, 'SIN CODIGO', 'CODO DESAGUE 6\'\' NARANJA', '2.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(201, 21, 34, 1, 'SIN CODIGO', 'CODO BRONCE 1/2 x 90', '51.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(202, 21, 34, 1, 'SIN CODIGO', 'CODO BRONCE 1/2 x 45', '21.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(203, 21, 34, 1, 'SIN CODIGO', 'CODO BRONCE EXTRA PESADO 1/2 x 90', '0.00', '10.00', '24.52', '0.00', '0.00', '0.00', '24.52', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(204, 21, 34, 1, 'SIN CODIGO', 'CODO FIERRO 1/2\'\' x 90', '38.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(205, 21, 34, 1, 'SIN CODIGO', 'CODO FIERRO  3/4', '0.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(206, 21, 34, 1, 'SIN CODIGO', 'CODO FIERRO  1', '20.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(207, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\' A 1/2\'\' PRESION', '44.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(208, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\' C/ROSCA', '15.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(209, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\' A 1/2 C/ROSCA X DENTRO', '31.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(210, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\'-1/2\'\' C/ROSCA X FUERA', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(211, 21, 35, 1, 'SIN CODIGO', 'REDUCCION  AGUA 1\'\' a 3/4\'\'', '27.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(212, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1\'\' - 1/2\'\'', '25.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(213, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1 1/2\'\' -  1\'\'', '19.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(214, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1 1/2 - 1/2', '27.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(215, 21, 35, 1, 'SIN CODIGO', 'REDUCION AGUA 2 - 1/2', '3.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(216, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 2 A 1', '23.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(217, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 2\'\' - 1 1/2\'\'', '2.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(218, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 2 1/2\'\' - 1 1/2\'\'', '10.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(219, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 2-  3/4', '32.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(220, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA  3-2 ', '0.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(221, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 4 - 3', '18.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(222, 21, 36, 1, 'SIN CODIGO', 'REDUCCION AGUA CALIENTE 3/4\'\' x 1/2\'\'', '11.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(223, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE  2 A 1', '19.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(224, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE  2 A 1 1/4', '28.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(225, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE 2 X 1 1/2', '37.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(226, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE  3- 2', '25.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(227, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE 4 -2', '70.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(228, 21, 37, 1, 'SIN CODIGO', 'REDUCCION DESAGUE 4- 3', '0.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(229, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2x1', '13.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(230, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2 X 1 1/2', '12.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(231, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2  X 2', '0.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(232, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2  X 2 1/2', '49.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(233, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2  X  3', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(234, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2 x 3 1/2', '17.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(235, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1/2  x  4', '8.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(236, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4  X 1', '25.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(237, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4 X 1 1/2', '16.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(238, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4 X 2', '9.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(239, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4 X 2 1/2', '31.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(240, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4 X 3', '21.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(241, 21, 38, 1, 'SIN CODIGO', 'NIPLE 3/4  x 4', '15.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(242, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 1', '20.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(243, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 1 1/2', '24.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(244, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 2', '26.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(245, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 2 1/2', '20.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(246, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 3', '2.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(247, 21, 38, 1, 'SIN CODIGO', 'NIPLE 1 X 3 1/2', '0.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(248, 21, 39, 1, 'SIN CODIGO', 'NIPLE AGUA CALIENTE 1/2 x 1', '79.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(249, 21, 39, 1, 'SIN CODIGO', 'NIPLE AGUA CALIENTE 1/2 x 1 1/2', '32.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(250, 21, 39, 1, 'SIN CODIGO', 'NIPLE AGUA CALIENTE 3/4', '8.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(251, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 1/2  x 1', '15.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(252, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 1/2 x 1 1/2', '41.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(253, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1/2  x 2', '30.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(254, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1/2  x 2 1/2 ', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(255, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1/2  x 3', '16.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(256, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1/2  x 4', '16.00', '10.00', '24.62', '0.00', '0.00', '0.00', '24.62', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(257, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 1/2 x 5', '6.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(258, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1x1', '9.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(259, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1x 1 1/2', '-1.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(260, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 1x2', '14.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(261, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1  x 3', '22.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(262, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  1x4', '1.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(263, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 3/4  x 1', '27.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(264, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 3/4  x 1- 1/2', '7.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(265, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 3/4  x 2', '19.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(266, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 3/4  x 2 -1/2', '36.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(267, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO  3/4  x3', '18.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(268, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 3/4  x 4', '27.00', '10.00', '22.00', '0.00', '0.00', '0.00', '22.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(269, 21, 40, 1, 'SIN CODIGO', 'NIPLE BRONCE  1/2  x 1- 1/2', '32.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(270, 21, 40, 1, 'SIN CODIGO', 'NIPLE BRONCE  1/2 X 2', '19.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(271, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA MACHO 1/2 C/ROSCA', '33.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(272, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA HEMBRA 1/2 PRESION', '40.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(273, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA HEMBRA 1/2 C/ROSCA', '138.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(274, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 3/4 MACHO ', '56.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(275, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 3/4 HEMBRA PRESION', '83.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(276, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 3/4 HEMBRA C/ROSCA', '21.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(277, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 3/4', '0.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(278, 21, 41, 1, 'SIN CODIGO', 'TAPON agua 1\'\' HEMBRA PRESION', '32.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(279, 21, 41, 1, 'SIN CODIGO', 'TAPON agua 1\'\' HEMBRA C/ROSCA', '14.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(280, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 1\'\' MACHO C/ROSCA', '58.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(281, 21, 41, 1, 'SIN CODIGO', 'TAPON agua 1 1/2 platica', '5.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(282, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 2\'\'', '1.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(283, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 3', '-1.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(284, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 4\'\' PN 5', '0.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(285, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA 4\'\'  C-10', '31.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(286, 21, 42, 1, 'SIN CODIGO', 'TAPON AGUA CALIENTE 1/2', '6.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(287, 21, 42, 1, 'SIN CODIGO', 'TAPON AGUA CALIENTE 3/4', '8.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(288, 21, 43, 1, 'SIN CODIGO', 'TAPON DESAGUE 2\'\'', '44.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(289, 21, 43, 1, 'SIN CODIGO', 'TAPON DESAGUE 3', '37.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(290, 21, 43, 1, 'SIN CODIGO', 'TAPON DESAGUE 4\'\'', '55.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(291, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 3/4 MACHO', '8.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(292, 21, 44, 1, 'SIN CODIGO', 'TAPON Agua FIERRO 1/2 macho ', '34.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(293, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA  FIERRO 1/2 HEMBRA', '110.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(294, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 1 \'\' HEMBRA', '22.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(295, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 1\'\' MACHO ', '1.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(296, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 1 1/2\'\' MACHO', '7.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(297, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA  FIERRO 1 1/2 HEMBRA', '9.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(298, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 2\'\' MACHO', '5.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(299, 21, 44, 1, 'SIN CODIGO', 'TAPON AGUA FIERRO 2 HEMBRA', '0.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(300, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1/2\'\' PRESION', '81.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(301, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1/2\'\' C/ROSCA', '16.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(302, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1/2\'\' PRESION-MATUSITA', '8.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(303, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1/2\'\' MIXTO', '25.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(304, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA  1\'\' PRESION', '19.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(305, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1 1/2\'\' PLASTICA', '2.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(306, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1- 3/4\'\'', '19.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(307, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 3/4 PRESION', '38.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(308, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 3/4 C/ROSCA', '17.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(309, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 3/4 C/ROSCA X 1 LADO', '0.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(310, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 3/4\'\' C/ROSCA x 3 LADO', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(311, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 3/4\'\' a 1/2\'\'', '15.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(312, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 2', '11.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(313, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA  C-10 90mm  90 mm Sp era', '0.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(314, 21, 45, 1, 'SIN CODIGO', 'tee agua 4 \'\' hechiza', '4.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(315, 21, 46, 1, 'SIN CODIGO', 'TEE AGUA CALIENTE 1/2\'\'', '36.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(316, 21, 46, 1, 'SIN CODIGO', 'TEE AGUA CALIENTE 3/4\'\'', '4.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(317, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE 2\'\' X 2\'\'', '39.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(318, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE  3 \'\'', '22.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(319, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE  4\'\' X 2\'\'', '61.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(320, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE 4\'\' x 3\'\'', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(321, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE  4\'\' X 4\'\'', '32.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(322, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE 6\'\'', '1.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(323, 21, 48, 1, 'SIN CODIGO', 'TEE SANITARIA 2\'\'', '21.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(324, 21, 48, 1, 'SIN CODIGO', 'TEE SANITARIA 4\'\'', '17.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(325, 21, 49, 1, 'SIN CODIGO', 'TEE AGUA FIERRO 1/2\'\'', '17.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(326, 21, 49, 1, 'SIN CODIGO', 'TEE AGUA FIERRO  3/4\'\'', '18.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(327, 21, 49, 1, 'SIN CODIGO', 'TEE AGUA FIERRO 1\'\'', '17.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(328, 21, 49, 1, 'SIN CODIGO', 'TEE AGUA BRONCE 1/2\'\'', '42.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(329, 21, 50, 1, 'SIN CODIGO', 'YEE AGUA 1/2 ', '15.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(330, 21, 51, 1, 'SIN CODIGO', 'YEE DESAGUE 2\'\'', '53.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(331, 21, 51, 1, 'SIN CODIGO', 'YEE DESAGUE 3\'\'', '24.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(332, 21, 51, 1, 'SIN CODIGO', 'YEE DESAGUE 4\'\' X 2\'\'', '29.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(333, 21, 51, 1, 'SIN CODIGO', 'YEE DESAGUE 4x4', '35.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(334, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1/2 PRESION', '238.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(335, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1/2 HECHIZA', '35.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(336, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1/2 MIXTA', '10.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(337, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1/2 C/ROSCA', '37.00', '10.00', '27.10', '0.00', '0.00', '0.00', '27.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(338, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 3/4 PRESION', '80.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(339, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 3/4 MIXTA', '25.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(340, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 3/4 HECHIZA', '12.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(341, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 3/4 C/ROSCA', '90.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(342, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1\'\' PRESION', '351.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(343, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1\'\' HECHIZA', '41.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(344, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1\'\' MIXTA', '7.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(345, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1\'\' C/ROSCA', '25.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(346, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA  1 1/2', '17.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(347, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1 1/2 UR C/ROSCA', '4.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(348, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 2\'\' PRESION', '0.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(349, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 2\'\' C/ROSCA', '6.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(350, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 2\'\'  MIXTA HECHIZA', '0.00', '10.00', '25.60', '0.00', '0.00', '0.00', '25.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(351, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 2  1/2', '4.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(352, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 3\'\'', '1.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(353, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 4\'\'', '1.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(354, 21, 53, 1, 'SIN CODIGO', 'UNION AGUA CALIENTE 1/2', '12.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(355, 21, 53, 1, 'SIN CODIGO', 'UNION AGUA CALIENTE 3/4 PAVCO', '3.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(356, 21, 54, 1, 'SIN CODIGO', 'UNION DESAGUE 2\'\'', '41.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(357, 21, 54, 1, 'SIN CODIGO', 'UNION DESAGUE 3\'\'', '1.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(358, 21, 54, 1, 'SIN CODIGO', 'UNION DESAGUE 4\'\'', '27.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(359, 21, 55, 1, 'SIN CODIGO', 'UNION FIERRO 1/2', '39.00', '10.00', '26.20', '0.00', '0.00', '0.00', '26.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(360, 21, 55, 1, 'SIN CODIGO', 'UNION FIERRO  3/4', '10.00', '10.00', '25.90', '0.00', '0.00', '0.00', '25.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(361, 21, 55, 1, 'SIN CODIGO', 'UNION FIERRO 1\'\'', '25.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(362, 21, 55, 1, 'SIN CODIGO', 'UNION FIERRO 2', '0.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(363, 21, 55, 1, 'SIN CODIGO', 'UNION BRONCE 1/2', '40.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(364, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1/2  PRESION', '35.00', '10.00', '25.90', '0.00', '0.00', '0.00', '25.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(365, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1/2  C/ROSCA', '22.00', '10.00', '25.70', '0.00', '0.00', '0.00', '25.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(366, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL  3/4 PRESION', '52.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(367, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 3/4 C/ROSCA', '29.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(368, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1\'\'  PRESION - MATUSITA', '26.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(369, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1\'\' C/ROSCA', '54.00', '10.00', '25.90', '0.00', '0.00', '0.00', '25.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(370, 21, 57, 1, 'SIN CODIGO', 'UNION UNIVERSAL AGUA CALIENTE 1/2', '6.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(371, 21, 57, 1, 'SIN CODIGO', 'UNION UNIVERSAL AGUA CALIENTE GRANDE  1/2', '6.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(372, 21, 58, 1, 'SIN CODIGO', 'LLAVE PVC UNION DOBLE 1/2 C/ROSCA', '14.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(373, 21, 59, 1, 'SIN CODIGO', 'UNION UNIVERSAL FIERRO 1/2', '9.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(374, 21, 59, 1, 'SIN CODIGO', 'UNION UNIVERSAL FIERRO 3/4', '8.00', '10.00', '25.90', '0.00', '0.00', '0.00', '25.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(375, 21, 59, 1, 'SIN CODIGO', 'UNION UNIVERSAL FIERRO 1\'\'', '5.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(376, 21, 60, 1, 'SIN CODIGO', 'SOMBERO VENTILACION  2', '19.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(377, 21, 60, 1, 'SIN CODIGO', 'SOMBERO VENTILACION  4', '7.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(378, 21, 61, 1, 'SIN CODIGO', 'CURVA AGUA 1/2\'\'', '37.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(379, 21, 61, 1, 'SIN CODIGO', 'CURVA AGUA 3/4\'\'', '20.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(380, 21, 61, 1, 'SIN CODIGO', 'CURVA AGUA 1\'\'', '22.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(381, 21, 61, 1, 'SIN CODIGO', 'CURVA AGUA 3\'\'', '6.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(382, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 3/4', '0.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(383, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 3/4  UNA OREJA', '85.00', '10.00', '24.01', '0.00', '0.00', '0.00', '24.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(384, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA DE AGUA 1 1/2 A 1/2', '13.00', '10.00', '25.80', '0.00', '0.00', '0.00', '25.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(385, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA DE AGUA 2 A 1/2', '11.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(386, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA 2 1/2 -  1/2', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(387, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA 3 - 1/2', '2.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(388, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA 4 A 1/2 (110MM A 1/2)', '2.00', '10.00', '23.21', '0.00', '0.00', '0.00', '23.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(389, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ BLANCO 5/8\'\'', '83.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(390, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ  BLANCO 3/4\'\'', '1297.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(391, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ BLANCO 1\'\'', '33.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(392, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ BLANCO 1 1/2\'\'', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(393, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ GRIS 3/4\'\'', '0.00', '10.00', '23.21', '0.00', '0.00', '0.00', '23.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(394, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ GRIS 1\'\' ', '10.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(395, 21, 63, 1, 'SIN CODIGO', 'CURVA LUZ GRIS 1 1/2\'\'', '38.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(396, 21, 64, 1, 'SIN CODIGO', 'BARRA CUADRADA 3/4/ X 6 M', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(397, 21, 64, 1, 'SIN CODIGO', 'BARRA CUADRADA 1/4 x 6 MM', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(398, 21, 64, 1, 'SIN CODIGO', 'BARRA CUADRADA 9MM X 6 M', '0.00', '10.00', '23.21', '0.00', '0.00', '0.00', '23.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(399, 21, 64, 1, 'SIN CODIGO', 'BARRA CUADRADA 12MM X 6 M', '1.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(400, 21, 64, 1, 'SIN CODIGO', 'BARRA CUADRADA 15MM X 6 M', '1.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(401, 21, 64, 1, 'SIN CODIGO', 'BARRA REDONDA LISA ISO 3/8 X 6 MM', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(402, 21, 64, 1, 'SIN CODIGO', 'BARRA REDONDA LISA ISO 1/2 X 6 MM', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(403, 21, 65, 1, 'SIN CODIGO', 'TUBO CUADRADO LAF 1.50 X 7/8 X 6 ', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(404, 21, 65, 1, 'SIN CODIGO', 'TUBO CUADRADO LAF 0.9 X1 X 6 ', '0.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(405, 21, 65, 1, 'SIN CODIGO', 'TUBO CUADRADO LAF 1.20 X 1 X 6 ', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(406, 21, 65, 1, 'SIN CODIGO', 'TUBO CUADRADO LAF 1.50 X 1 X 6 ', '0.00', '10.00', '22.80', '0.00', '0.00', '0.00', '22.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(407, 21, 65, 1, 'SIN CODIGO', 'tubo CUADRADO 1 1/4? X 1.50 MM', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(408, 21, 65, 1, 'SIN CODIGO', 'CUADRADO LAF 1 1/2? X 1.50 MM X 6', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(409, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO CUADRADO 2? X 2.00 MM x 6', '0.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(410, 21, 65, 1, 'SIN CODIGO', 'TUBO RECTANGULO LAF 1? X 2 ? X 1.50 MM X 6', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(411, 21, 65, 1, 'SIN CODIGO', 'tubo rectangular laf 3.00 mm x 40 x 60', '0.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(412, 21, 65, 1, 'SIN CODIGO', 'TUBO RECTANGULO 40 x 80 x 2 MM', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(413, 21, 65, 1, 'SIN CODIGO', 'TUBO  REDONDO  LAF 1 1/2 \'\' x 1 mm X 6', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(414, 21, 65, 1, 'SIN CODIGO', 'TUBO REDONDO LAF  1 MM X 1 X  6', '0.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(415, 21, 65, 1, 'SIN CODIGO', 'TUBO GALVANIZADO 1 X 2mmX 6 MT', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(416, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO MECANICO REDONDO 1/2 \'\' X  1.8 mm', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(417, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO MECANICO REDONDO 3/4 x 1.8 MM ', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(418, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO MECANICO REDONDO 1 1/4.\'\' x 1. 8 mm', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(419, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO MECANICO REDONDO 1.8 MM X 2', '3.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(420, 21, 65, 1, 'SIN CODIGO', 'TUBO NEGRO MEC 2.? X 2.0 MM X 6', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(421, 21, 66, 1, 'SIN CODIGO', 'ANGULO 20MM X 20 MM X 3 MM', '0.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(422, 21, 66, 1, 'SIN CODIGO', 'ANGULO 25MM X 2 MM  x 6', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(423, 21, 66, 1, 'SIN CODIGO', 'ANGULO 3/16 MMx2.5 X X 6MT', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(424, 21, 66, 1, 'SIN CODIGO', 'ANGULO 25MM X 25MM X 3 MM', '0.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(425, 21, 66, 1, 'SIN CODIGO', 'ANGULO 1 1/2 X 1 1/2 x 1/8', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(426, 21, 66, 1, 'SIN CODIGO', 'ANGULO 1 1/2 X 1 1/2 x 3/16', '1.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(427, 21, 67, 1, 'SIN CODIGO', 'PLANCHA 1.5 x 1200 x 2400', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(428, 21, 67, 1, 'SIN CODIGO', 'PLANCHA 0.9 x 1200 x 2400', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(429, 21, 67, 1, 'SIN CODIGO', 'PLANCHA 1.45 x 1200 x 2400', '4.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(430, 21, 68, 1, 'SIN CODIGO', 'PLATINA  1/4\'\' x 1\'\' x 6 MM', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(431, 21, 68, 1, 'SIN CODIGO', 'PLATINA  1/4\'\' x 1 1/2\'\' x 6 MM', '5.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(432, 21, 68, 1, 'SIN CODIGO', 'PLATINA  1/4\'\' x 1 1/4\'\' x 6 MM', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(433, 21, 68, 1, 'SIN CODIGO', 'PLATINA  1/4\'\' x 2\'\' x 6 MM', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(434, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 1 x 6 MM', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(435, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 1 1/2 x 6 MM', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(436, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 1 1/4 x 6 MM', '0.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(437, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 1/2 x 6 MM', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(438, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 2 x 6 MM', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(439, 21, 68, 1, 'SIN CODIGO', 'PLATINA 1/8 x 1/4 x 6 MM', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(440, 21, 68, 1, 'SIN CODIGO', 'PLATINA 3/16 x 1 x 6', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(441, 21, 68, 1, 'SIN CODIGO', 'PLATINA 3/16 x 1 1/2 x 6', '0.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(442, 21, 68, 1, 'SIN CODIGO', 'PLATINA 3/16 x 1 1/4 x 6 MM', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(443, 21, 68, 1, 'SIN CODIGO', 'PLATINA 3/16 x 3/4 x 6', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(444, 21, 69, 1, 'SIN CODIGO', 'TEE 3MM X 20MM X 20 MM X 6 M', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(445, 21, 69, 1, 'SIN CODIGO', 'TEE 3MM X 25MM X 25 MM X 6 M', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(446, 21, 69, 1, 'SIN CODIGO', 'TEE 1/8 x 1 1/4 x 6', '1.00', '10.00', '23.00', '0.00', '0.00', '0.00', '23.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(447, 21, 70, 1, 'SIN CODIGO', 'SOLDIMIX SUPER GLUE', '18.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(448, 21, 70, 1, 'SIN CODIGO', 'PEG PVC PEGATUBO DORADO C/BROCHA 1/64', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(449, 21, 70, 1, 'SIN CODIGO', 'PEG SUPER GLUE INSTANTANEO', '17.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(450, 21, 70, 1, 'SIN CODIGO', 'PEG PEGATUB 1/64 DORADO', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(451, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO 59ml (1/64)', '0.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(452, 21, 70, 1, 'SIN CODIGO', 'PEG PVC TUBOTEY  1/32 100 ML', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(453, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY CELESTE 59ml (1/64)', '56.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(454, 21, 70, 1, 'SIN CODIGO', 'PEG PEGATUB LATITA DORADA', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(455, 21, 70, 1, 'SIN CODIGO', 'PEG PEGATUB LATITA CELESTE', '0.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(456, 21, 70, 1, 'SIN CODIGO', 'PEG EMPAQUETADURA 3H', '3.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(457, 21, 70, 1, 'SIN CODIGO', 'PEG CEMENTO AFRICANITO 1/64', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(458, 21, 70, 1, 'SIN CODIGO', 'PEG AFRICANO 1/32', '14.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(459, 21, 70, 1, 'SIN CODIGO', 'PEGAMENTO CEMENTO SUDAFRICANO 1/4', '0.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(460, 21, 70, 1, 'SIN CODIGO', 'PEG ULTRAPEG 1/64', '12.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(461, 21, 70, 1, 'SIN CODIGO', 'PEG AFRICANITO 1/64', '27.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(462, 21, 70, 1, 'SIN CODIGO', 'GAMALACA TEKNO', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(463, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY NARANJA 4oz 118ml AGUA CALIENTE', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(464, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY NARANJA 237ml AGUA CALIENTE', '1.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(465, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY CELESTE 118ml (1/32)', '7.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(466, 21, 70, 1, 'SIN CODIGO', 'PEG OATEG CELESTE', '0.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(467, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY CELESTE 473 mL (1/8)', '6.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(468, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY CELESTE  237ML (1/16)', '8.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(469, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO  118ml (1/32)', '49.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(470, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO 237ml (1/16)', '7.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(471, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO 473 ML (1/8)', '4.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(472, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO  946ml (1/4)', '4.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(473, 21, 70, 1, 'SIN CODIGO', 'PEG OATEG NEGRO 946ml (1/4 ONZ) OATEY', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(474, 21, 70, 1, 'SIN CODIGO', 'PEG OATEG VERDE 946ML (1/4 ONZ) OATEY', '1.00', '10.00', '23.20', '0.00', '0.00', '0.00', '23.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(475, 21, 71, 1, 'SIN CODIGO', 'PEG CERAMICO GRIS LOSETA 25 KG', '71.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(476, 21, 71, 1, 'SIN CODIGO', 'PEG CERAMICO ULTRAFORTE 25K', '-1.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(477, 21, 72, 1, 'SIN CODIGO', 'CINTA AISLANTE CHICA', '83.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(478, 21, 72, 1, 'SIN CODIGO', 'CINTA AISLANTE GRANDE NEGRA', '79.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(479, 21, 72, 1, 'SIN CODIGO', 'CINTA TEFLON ROJO', '79.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(480, 21, 72, 1, 'SIN CODIGO', 'CINTA TEFLON 3/4', '7.00', '10.00', '23.10', '0.00', '0.00', '0.00', '23.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(481, 21, 72, 1, 'SIN CODIGO', 'CINTA EMBALAJE DELGADA', '0.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(482, 21, 72, 1, 'SIN CODIGO', 'CINTA MASKING 3/4X30 YARDAS', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(483, 21, 72, 1, 'SIN CODIGO', 'CINTA MASKING 1x30 YDS', '11.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(484, 21, 72, 1, 'SIN CODIGO', 'CINTA MASKING 2x30YDS', '9.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(485, 21, 73, 1, 'SIN CODIGO', ' TEKNO KOLA', '0.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(486, 21, 73, 1, 'SIN CODIGO', 'COLA SINTETICA 1/4', '0.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(487, 21, 73, 1, 'SIN CODIGO', 'COLA SINTETICA 1/2', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(488, 21, 73, 1, 'SIN CODIGO', 'COLA SINTETICA 1 KILO', '19.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(489, 21, 74, 1, 'SIN CODIGO', 'MARTILLO MANGO GOMA AMARILLO', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(490, 21, 74, 1, 'SIN CODIGO', 'MARTILLO  MANGO MADERA 27 MM', '6.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(491, 21, 75, 1, 'SIN CODIGO', 'COMBA MANGO MADERA 6LB', '0.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(492, 21, 75, 1, 'SIN CODIGO', 'COMBA MANGO FIBRA 8LB', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(493, 21, 75, 1, 'SIN CODIGO', 'COMBA MANGO FIBRA 10LB', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(494, 21, 75, 1, 'SIN CODIGO', 'COMBA CERAMICA PESADA COLOR NEGRO', '5.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(495, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA DISCO 4\'\'', '0.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(496, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA 4\'\'', '3.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(497, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA FIERRO 4 FILAS MADERA', '7.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(498, 21, 77, 1, 'SIN CODIGO', 'BRU?A CANTO', '11.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(499, 21, 77, 1, 'SIN CODIGO', 'BRU?A CENTRO', '1.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(500, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 5\'\' MANGO GOMA', '6.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(501, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 6\'\' MANGO MADERA', '6.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(502, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 7\'\' MANGO MADERA', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(503, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 4\'\' MANGO GOMA', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(504, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 6\'\' MANGO GOMA', '8.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(505, 21, 78, 1, 'SIN CODIGO', 'BADILEJO 7\'\' MANGO GOMA', '10.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(506, 21, 79, 1, 'SIN CODIGO', 'PLANCHA EMPASTAR MANGO PLASTICO', '11.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(507, 21, 79, 1, 'SIN CODIGO', 'PLANCHA EMPASTAR 8\'\'- MANGO AZUL', '10.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(508, 21, 79, 1, 'SIN CODIGO', 'PLANCHA BATIR 9\'\' MANGO MADERA', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(509, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 2 MANGO MADERA', '18.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(510, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 2 1/2  MANGO MADERA', '0.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(511, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 3  MANGO MADERA', '5.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(512, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 4  MANGO MADERA', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(513, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 1 1/2- GOMA', '5.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(514, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 2 - GOMA', '4.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(515, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 2 1/2 - GOMA', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(516, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 3 - GOMA', '3.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(517, 21, 80, 1, 'SIN CODIGO', 'ESPATULA 4  MANGO MADERA', '11.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(518, 21, 81, 1, 'SIN CODIGO', 'SISAYA 12', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(519, 21, 81, 1, 'SIN CODIGO', 'SISAYA 14\'\'', '3.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(520, 21, 81, 1, 'SIN CODIGO', 'SISAYA 18\'\'', '1.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(521, 21, 81, 1, 'SIN CODIGO', 'SISAYA 30', '1.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(522, 21, 82, 1, 'SIN CODIGO', 'NIVEL CON IMAN 9\'\'', '6.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(523, 21, 82, 1, 'SIN CODIGO', 'NIVEL ALUMINIO CON IMAN 14\'\'', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(524, 21, 82, 1, 'SIN CODIGO', 'NIVEL ALUMINIO CON IMAN 18\'\'', '1.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(525, 21, 82, 1, 'SIN CODIGO', 'NIVEL CON IMAN 20\'\'', '2.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(526, 21, 82, 1, 'SIN CODIGO', 'NIVEL 22', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(527, 21, 82, 1, 'SIN CODIGO', 'NIVEL DE ALUMINIO CON IMAN 14\'\' BULLTULS', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(528, 21, 82, 1, 'SIN CODIGO', 'NIVEL DE ALUMINIO CON IMAN 16\'\' BULLTULS', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(529, 21, 82, 1, 'SIN CODIGO', 'NIVEL DE ALUMINIO CON IMAN 18\'\' BULLTULS', '1.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(530, 21, 82, 1, 'SIN CODIGO', 'NIVEL PLASTICO AMARILLO 20\'\'', '1.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(531, 21, 82, 1, 'SIN CODIGO', 'NIVEL ALUMINIO 12', '5.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(532, 21, 82, 1, 'SIN CODIGO', 'NIVEL PLASTICO AMARILLO 18\'\'', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(533, 21, 82, 1, 'SIN CODIGO', 'NIVEL TELESCOPICO 72 120CM', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(534, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 5x18', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(535, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 8x13', '1.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(536, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 15x20', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(537, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 38x24 PLANCHA', '5.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(538, 21, 84, 1, 'SIN CODIGO', 'ESCUADRA ALUMINIO 8', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(539, 21, 84, 1, 'SIN CODIGO', 'ESCUADRA ALUMINIO 10', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(540, 21, 84, 1, 'SIN CODIGO', 'ESCUADRA ALUMINIO 12', '4.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(541, 21, 84, 1, 'SIN CODIGO', 'ESCUADRA METALICA', '2.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(542, 21, 85, 1, 'SIN CODIGO', 'WINCHA FDVIDRIO  50 MTS TIPO CRUCETA', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(543, 21, 85, 1, 'SIN CODIGO', 'WINCHA 8MT CINTA ANCHA', '11.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(544, 21, 85, 1, 'SIN CODIGO', 'WINCHA METRICA 3 MT', '12.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(545, 21, 85, 1, 'SIN CODIGO', 'WINCHA PASACABLE 10M', '2.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(546, 21, 85, 1, 'SIN CODIGO', 'WINCHA 100 MTS C/ASA', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(547, 21, 85, 1, 'SIN CODIGO', 'WINCHA 5MTS ACEROS AREQUIPA', '5.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(548, 21, 85, 1, 'SIN CODIGO', 'WINCHA PASACABLE 5M', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(549, 21, 85, 1, 'SIN CODIGO', 'WINCHA PASACABLE 10M', '0.00', '10.00', '23.30', '0.00', '0.00', '0.00', '23.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(550, 21, 86, 1, 'SIN CODIGO', 'TIRALINEAS', '9.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(551, 21, 86, 1, 'SIN CODIGO', 'RAPINES', '13.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(552, 21, 86, 1, 'SIN CODIGO', 'ARCO SIERRA AMARILLO', '6.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(553, 21, 86, 1, 'SIN CODIGO', 'ARCO SIERRA ECON.', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(554, 21, 86, 1, 'SIN CODIGO', 'ALICATE PRESION (CAIMAN)10\'\'', '5.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(555, 21, 86, 1, 'SIN CODIGO', 'LIMA TRIANGULAR BELLOTA FIERRO N 8', '52.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(556, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 4 1/2', '61.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(557, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 7X1.6MM DEWALT', '9.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(558, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO  7\'\'  1/4', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(559, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 9', '50.00', '10.00', '23.40', '0.00', '0.00', '0.00', '23.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(560, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO NUMERO 14', '1.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(561, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO/CERAMICA ABIERTO 4 1/2', '38.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(562, 21, 87, 1, 'SIN CODIGO', 'DISCO DESBASTE  7 x 1,5', '9.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(563, 21, 87, 1, 'SIN CODIGO', 'DISCO MADERA  4 1/2', '53.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(564, 21, 87, 1, 'SIN CODIGO', 'DISCO MADERA 7 1/4', '25.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(565, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO/CERAMICO CONTINUO 4 1/2', '38.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(566, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO -CERAMICO ABIERTO 7 1/4', '7.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(567, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO-CERAMICO DIAMANTADO  9\'\' NORTON', '2.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(568, 21, 87, 1, 'SIN CODIGO', 'DISCO DIAMANTADO CORTE MOJADO 180 MM', '15.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(569, 21, 88, 1, 'SIN CODIGO', 'LUNAS PARA SOLDAR N 10', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(570, 21, 88, 1, 'SIN CODIGO', 'LUNAS PARA SOLDAR N 11', '24.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(571, 21, 88, 1, 'SIN CODIGO', 'LUNAS PARA SOLDAR N 12', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(572, 21, 89, 3, 'SIN CODIGO', 'SOLDADURA PUNTO AZUL', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(573, 21, 90, 1, 'SIN CODIGO', 'QUITA SARRO 1 LT', '25.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(574, 21, 90, 1, 'SIN CODIGO', 'ACIDO MURIATICO 1 LT', '26.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(575, 21, 90, 1, 'SIN CODIGO', 'AGUARASS 1 LT', '5.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(576, 21, 90, 1, 'SIN CODIGO', 'AGUARASS 1/2', '5.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(577, 21, 90, 1, 'SIN CODIGO', 'AGUARASS 1/4', '30.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(578, 21, 90, 1, 'SIN CODIGO', 'THINER ACRILICO P-55 X GALON', '14.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(579, 21, 90, 1, 'SIN CODIGO', 'THINER ACRILICO P55 1LT', '43.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(580, 21, 90, 1, 'SIN CODIGO', 'THINER ACRILICO P-55 x 1/2 LT', '40.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(581, 21, 90, 1, 'SIN CODIGO', 'THINER 1/4', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(582, 21, 90, 1, 'SIN CODIGO', 'BENCINA 1/2 LITRO', '2.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(583, 21, 90, 1, 'SIN CODIGO', 'BENCINA 1/4', '9.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(584, 21, 90, 1, 'SIN CODIGO', 'SODA CAUSTICA 1 LITRO', '10.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(585, 21, 91, 1, 'SIN CODIGO', 'CA?O BRONCE BOTADERO 1/2', '5.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(586, 21, 91, 1, 'SIN CODIGO', 'CA?O PVC JARDINERO 1/2', '23.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(587, 21, 91, 1, 'SIN CODIGO', 'CA?O JARDINERO NARANJA PCP', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(588, 21, 91, 1, 'SIN CODIGO', 'CA?O PVC JARDINERO TRANSPARENTE COLORESOLORRES', '10.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(589, 21, 91, 1, 'SIN CODIGO', 'CA?O PVC JARDINERO COLOR TRANSPARENTE', '6.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(590, 21, 92, 1, 'SIN CODIGO', 'CA?O LAVADORA 1/2 CROMADO-NIAGARA', '1.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(591, 21, 92, 1, 'SIN CODIGO', 'CA?O BOTADERO BRONCE LIVIANO - INRELI', '1.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(592, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO CROMADO PARA CANDADO', '3.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(593, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO CROMADO M/ROJO1/2 VALMAX', '16.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(594, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO MANGO AZUL PESADO VALMAX', '7.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(595, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO 1/2 BRONCE LISO', '10.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(596, 21, 92, 1, 'SIN CODIGO', 'CA?O  JARDINERO BRONCE 1/2', '15.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(597, 21, 92, 1, 'SIN CODIGO', 'CA?O BRONCE/CROMADO JARDINERO 1/2 - SALIDA MANGUERA', '5.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(598, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO 1/2 + CINTA TEFLON -CIM', '4.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(599, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO 1/2 METAL MANGO ROJO', '4.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(600, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO 1/2 METAL MANGO ROJO', '46.00', '10.00', '22.60', '0.00', '0.00', '0.00', '22.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(601, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2 PRESION', '1.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(602, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2  CON ROSCA', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(603, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO  PVC 1/2 C/ROSCA', '14.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(604, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 3/4 SANKING', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(605, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 3/4 C/ROSCA', '30.00', '10.00', '22.40', '0.00', '0.00', '0.00', '22.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(606, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC  1\'\' SANKING', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(607, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1 PRESION', '10.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(608, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1 C/ROSCA', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(609, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC  1 1/2-SANKING', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(610, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 2-SANKING', '1.00', '10.00', '22.60', '0.00', '0.00', '0.00', '22.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(611, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 3   C/ ROSCA C&A', '2.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(612, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 4-SANKING', '2.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(613, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO MARIPOSA 1/2', '2.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(614, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL 1/2  ECON.', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(615, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL 1/2 - CIM', '8.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(616, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL 3/4 - ECON', '0.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(617, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL  3/4 -CIM', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(618, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL 1 ECON.', '4.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(619, 21, 94, 1, 'SIN CODIGO', 'LLAVE UNIVERSAL DOBLE 1/2', '0.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(620, 21, 95, 1, 'SIN CODIGO', 'CORPORATIVA PVC TECNICA 1/2', '4.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(621, 21, 95, 1, 'SIN CODIGO', 'CORPORATIVA PVC TECNICA  3/4', '3.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(622, 21, 96, 1, 'SIN CODIGO', 'CA?O LAVATORIO PVC COLOR', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(623, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO MODELO Z', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(624, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO LARGO ROMPE CHORRO', '5.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(625, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO ECONOMICA', '1.00', '10.00', '22.70', '0.00', '0.00', '0.00', '22.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(626, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO MODELO C', '3.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(627, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO CROMADO - FAVINSA', '13.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(628, 21, 98, 1, 'SIN CODIGO', 'PICO GANSO COLOR PVC', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(629, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO PALOMA CROMADO', '8.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(630, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO CROMADO AL LAVADERO', '0.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(631, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO GIRAT 5/8 LIVIANA - ITALGRIF', '2.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(632, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO CROMADO', '8.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(633, 21, 100, 1, 'SIN CODIGO', 'LLAVE DUCHA PVC COLOR', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(634, 21, 100, 1, 'SIN CODIGO', 'LLAVE DUCHA MODELO Z', '10.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(635, 21, 100, 1, 'SIN CODIGO', 'LLAVE DUCHA MODELO C', '4.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(636, 21, 101, 1, 'SIN CODIGO', 'LLAVE DUCHA - FAVINSA', '13.00', '10.00', '23.60', '0.00', '0.00', '0.00', '23.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(637, 21, 101, 1, 'SIN CODIGO', 'BRAZO DUCHA ITALGRIF CROMO-CROMO', '4.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(638, 21, 101, 1, 'SIN CODIGO', 'LLAVE SALIDA DE DUCHA-ITALGRIF ', '0.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(639, 21, 101, 1, 'SIN CODIGO', 'LLAVE MEZCLADORA DUCHA MOD.CANCUN CROMO-CROMO 2 LLAVES-RUBINETTO', '1.00', '10.00', '23.70', '0.00', '0.00', '0.00', '23.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(640, 21, 102, 1, 'SIN CODIGO', 'DUCHA BRAZO PVC COLOR CUADRADA', '10.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(641, 21, 102, 1, 'SIN CODIGO', 'DUCHA PVC TUBO Y  CANASTA REDONDA COLORES', '6.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(642, 21, 103, 1, 'SIN CODIGO', 'DUCHA BRAZO CROMADO 1/2\'\' PEQUE?A', '9.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(643, 21, 103, 1, 'SIN CODIGO', 'DUCHA BRAZO ESPA?OLA CIRCULAR 6\'\'', '6.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(644, 21, 103, 1, 'SIN CODIGO', 'DUCHA TELEFONO', '0.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(645, 21, 106, 1, 'SIN CODIGO', 'DUCHA ELECTRICA GORDUCHA', '0.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(646, 21, 104, 1, 'SIN CODIGO', 'HUACHA', '6.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(647, 21, 104, 1, 'SIN CODIGO', 'LLAVE REPUESTO DUCHA', '7.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(648, 21, 104, 1, 'SIN CODIGO', 'LLAVE REPUESTO LAVATORIO ', '8.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(649, 21, 104, 1, 'SIN CODIGO', 'OBTUBADORES', '72.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(650, 21, 104, 1, 'SIN CODIGO', 'u?a galvanizada -LAVATORIO', '8.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(651, 21, 104, 1, 'SIN CODIGO', 'PERNO TANQUE TAZA INODORO', '7.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(652, 21, 104, 1, 'SIN CODIGO', 'PERNO ANCLAJE PSR S/BOLSA - WATER', '0.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(653, 21, 104, 1, 'SIN CODIGO', 'BISAGRA TAPA PAR -  WATER', '9.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(654, 21, 104, 1, 'SIN CODIGO', 'CONECTOR YEE amaRILLO', '7.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(655, 21, 104, 1, 'SIN CODIGO', 'TROMPITO CA?O 1-2', '30.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(656, 21, 104, 1, 'SIN CODIGO', 'REPUESTO DE CA?O JARDINERO', '3.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(657, 21, 104, 1, 'SIN CODIGO', 'JEBE REDONDO WATER', '1.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(658, 21, 105, 1, 'SIN CODIGO', 'TRAMPA CAMPANA BRONCE 2\'\'', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(659, 21, 105, 1, 'SIN CODIGO', 'TRAMPA CAMPANA BRONCE 4\'\'', '2.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(660, 21, 105, 1, 'SIN CODIGO', 'TRAMPA CAMPANA CROMADA 2\'\'', '22.00', '10.00', '23.50', '0.00', '0.00', '0.00', '23.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(661, 21, 105, 1, 'SIN CODIGO', 'TRAMPA CAMPANA CROMADA 4\'\'', '5.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(662, 21, 105, 1, 'SIN CODIGO', 'RESUMIDERO BRONCE 2\'\'', '-1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(663, 21, 105, 1, 'SIN CODIGO', 'RESUMIDERO CROMADO  2\'\'', '50.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(664, 21, 105, 1, 'SIN CODIGO', 'RESUMIDERO CROMADO 3\'\'', '14.00', '10.00', '23.90', '0.00', '0.00', '0.00', '23.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(665, 21, 105, 1, 'SIN CODIGO', 'RESUMIDERO CROMADO  4\'\'', '19.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(666, 21, 105, 1, 'SIN CODIGO', 'RESUMIDERO CROMADO 6\'\'', '1.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(667, 21, 105, 1, 'SIN CODIGO', 'REGISTRO BRONCE 4\'\'', '5.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(668, 21, 105, 1, 'SIN CODIGO', 'REGISTRO BRONCE 6\'\'', '3.00', '10.00', '23.90', '0.00', '0.00', '0.00', '23.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(669, 21, 105, 1, 'SIN CODIGO', 'REGISTRO  CROMADO 2\'\'', '25.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(670, 21, 105, 1, 'SIN CODIGO', 'REGISTRO CROMADO 3\'\'', '11.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(671, 21, 105, 1, 'SIN CODIGO', 'REGISTRO CROMADO 4\'\'', '22.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(672, 21, 105, 1, 'SIN CODIGO', 'REGISTRO CROMADO 6\'\'', '4.00', '10.00', '2.80', '0.00', '0.00', '0.00', '2.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(673, 21, 105, 1, 'SIN CODIGO', 'REGISTRO CROMADO 8\'\'', '1.00', '10.00', '23.90', '0.00', '0.00', '0.00', '23.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(674, 21, 105, 1, 'SIN CODIGO', 'REGISTRO C/REJILLA CROMADA 2', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(675, 21, 105, 1, 'SIN CODIGO', 'TAPON REJILLA BRONCE 2\'\'', '13.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(676, 21, 105, 1, 'SIN CODIGO', 'TAPON REJILLA CROMADA 2\'\' TAPA JEBE', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(677, 21, 105, 1, 'SIN CODIGO', 'TAPON REJILLA CROMADA 2\'\'', '22.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(678, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO JUEGO- 7/8 SANI-BLANCO', '11.00', '10.00', '23.90', '0.00', '0.00', '0.00', '23.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(679, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO JUEGO- 7/8 FAMA-NEGRO', '2.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(680, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO VALVULA SALIDA TANQUE -SANI', '23.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(681, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO VALVULA SALIDA - DURAGRIF', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(682, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO VALVULA LLENADO PVC 7/8', '2.00', '10.00', '23.80', '0.00', '0.00', '0.00', '23.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(683, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO MANUBRIO', '14.00', '10.00', '23.90', '0.00', '0.00', '0.00', '23.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(684, 21, 106, 1, 'SIN CODIGO', 'CANASTILLA CROMADO 4\'\'-ACERO INOXIDABLE PVC APACHE', '13.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(685, 21, 106, 1, 'SIN CODIGO', 'CANASTILLA CROMADA 4 - METAL', '12.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(686, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO VALVULA TIGER', '3.00', '10.00', '22.21', '0.00', '0.00', '0.00', '22.21', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(687, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO TRAMPA BOTELLA -SANIFER', '2.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(688, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO JUEGO TRAMPA', '20.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(689, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO/LAVADERO TRAMPA PVC 1-1/2\'\'', '0.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(690, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVADERO TRAMPA BOTELLA -SANIFER', '3.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(691, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVADERO JUEGO TRAMPA PVC TITOMACC', '51.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(692, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVADERO JUEGO TRAMPA-SANI', '4.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(693, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVADERO TRAMPA 2\'\'  ( METUSA)', '4.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(694, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO TRAMPA Y DESAGUE 1 1/4 ( METUSA) PACK', '1.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(695, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO DESAGUE PLASTICO 1 1/4 X 8 BLANCO-METUSA', '3.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(696, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TRAMPA P ACERO INOX 1 1/4 (METUSA)', '5.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(697, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TRAMPA P CROMADA 1 1/4 BRONCE PVC (METUSA)', '3.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(698, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TRAMPA BOTELLA LAVATORIO - ECKOGRIF', '2.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(699, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO DESAGUE LARGO CROM 1 1/4 X 8  BRONCE (METUSA)', '3.00', '10.00', '24.10', '0.00', '0.00', '0.00', '24.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(700, 21, 106, 1, 'SIN CODIGO', 'ACCES COCINA TRAMPA ABS COCINA P', '9.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(701, 21, 106, 1, 'SIN CODIGO', 'TRAMPA GRIS 2\'\'', '21.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(702, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO- SANI  7/8x 1/2', '30.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(703, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO POLIETILENO-COFLITEX 7/8 x 1/2', '9.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(704, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO- SANI  1/2x 1/2 LAVATORIO', '16.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(705, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO 1/2 x40 TRENSADO', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(706, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO-METUSA 1/2 x 7/8 FIBRA', '0.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(707, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO VINILO -COFLEX  7/8  x 1/2', '0.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(708, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO NYLON 7/8 X 40CMS-WATER', '13.00', '10.00', '24.80', '0.00', '0.00', '0.00', '24.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(709, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO TRENZADO-C&A 1/2 x 1/2', '0.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(710, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO ALUMINIO 7/8 X 40CMS-WATER', '19.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(711, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO NYLON 1/2 X 40CMS-LAVATORIO', '13.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(712, 21, 108, 1, 'SIN CODIGO', 'ANILLO DE CERA SIN GUIA', '1.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(713, 21, 108, 1, 'SIN CODIGO', 'ANILLO DE CERA CON  GUIA', '19.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(714, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER BLANCO FIORI', '0.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(715, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER GUINDA', '1.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(716, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER VERDE LIMON', '1.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(717, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER BONE', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(718, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER CELESTE', '0.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(719, 21, 110, 1, 'SIN CODIGO', 'CAJA RECTANGULAR AZUL/BLANCA', '403.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(720, 21, 110, 1, 'SIN CODIGO', 'CAJA OCTOGONAL', '253.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(721, 21, 110, 1, 'SIN CODIGO', 'CAJA FIERRO OCTOGONAL', '5.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(722, 21, 110, 1, 'SIN CODIGO', 'TAPA CIEGA RECTANGULAR', '199.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(723, 21, 110, 1, 'SIN CODIGO', 'TAPA CIEGA REDONDA', '95.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(724, 21, 110, 1, 'SIN CODIGO', 'CAJA SIN EMPOTRAR 2 POLOS (PIRAMIDE)', '6.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(725, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 2 POLOS', '5.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(726, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR  4 POLOS', '1.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(727, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 6 POLOS', '8.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(728, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 8 POLOS', '9.00', '10.00', '22.81', '0.00', '0.00', '0.00', '22.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(729, 21, 110, 1, 'SIN CODIGO', 'CAJA BASE KBA 2 POLOS', '9.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(730, 21, 110, 1, 'SIN CODIGO', 'CAJA PASE 150x150x70 C/CHUON', '10.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(731, 21, 110, 1, 'SIN CODIGO', 'CAJA PASE 200x150x70 C/CHUON', '11.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(732, 21, 111, 1, 'SIN CODIGO', 'LLAVE CUCHILLA SIMPLE 2 X 20 - CELESTE', '2.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(733, 21, 111, 1, 'SIN CODIGO', 'LLAVE CUCHILLA LOZA 2 X 20', '5.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(734, 21, 111, 1, 'SIN CODIGO', 'LLAVE CUCHILLA LOZA 2 X 30', '2.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(735, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA 2 X 20- KIIK', '0.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(736, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA 2 X 25 - STRONGER', '2.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(737, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA 2x20AMP C/RIEL-MONOFASICA- STRONGER', '4.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(738, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA 2x32AMP C/RIEL-STRONGER', '3.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(739, 21, 112, 5, 'SIN CODIGO', 'CABLE MELLIZO  N 14 ROLLO', '0.00', '10.00', '24.00', '0.00', '0.00', '0.00', '24.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(740, 21, 112, 2, 'SIN CODIGO', 'CABLE MELLIZO N 14 X METROS', '122.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(741, 21, 112, 5, 'SIN CODIGO', 'CABLE  SOLIDO N 12-CELEC X ROLLO', '1.50', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(742, 21, 112, 2, 'SIN CODIGO', 'CABLE SOLIDO N 14-CELEC', '69.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(743, 21, 112, 5, 'SIN CODIGO', 'CABLE P/TELEVISION X MT', '151.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(744, 21, 112, 2, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 14 - INDECO ECON.X ROLLO', '3.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(745, 21, 113, 1, 'SIN CODIGO', 'ANZUELO', '32.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(746, 21, 113, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS ANTIHONGOS TRANSPARENTE  50G -KNAUFF', '4.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(747, 21, 113, 1, 'SIN CODIGO', 'SILICONA BARRA', '36.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(748, 21, 113, 1, 'SIN CODIGO', 'SILICONA ANTIHONGOS UNIVERSAL GRIS/NEGRO SIKASIL', '1.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(749, 21, 113, 1, 'SIN CODIGO', 'COLGADOR 1', '0.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(750, 21, 113, 1, 'SIN CODIGO', 'COLGADOR 1 1/4', '0.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(751, 21, 113, 1, 'SIN CODIGO', 'GANCHO PARA CUADRO CHICO', '99.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(752, 21, 113, 1, 'SIN CODIGO', 'GANCHO PARA CUADRO GRANDE', '97.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(753, 21, 113, 1, 'SIN CODIGO', 'JALDOR MEDIANO BRONCE LISO', '11.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(754, 21, 113, 1, 'SIN CODIGO', 'JALADOR ALUMINIO 5\'\'', '8.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(755, 21, 113, 1, 'SIN CODIGO', 'ANZUELO', '0.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(756, 21, 113, 1, 'SIN CODIGO', 'ROLLO PESCA', '1.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(757, 21, 113, 1, 'SIN CODIGO', 'RAFIA X  CONO GRANDE PLANO 3KG', '0.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(758, 21, 113, 1, 'SIN CODIGO', 'PICAPORTE 1 1/2', '7.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(759, 21, 113, 1, 'SIN CODIGO', 'PICAPORTE 2', '3.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(760, 21, 113, 1, 'SIN CODIGO', 'CHAPA TRAVEX 111 / 2 GOLPES', '1.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(761, 21, 113, 1, 'SIN CODIGO', 'CHAPA CAJON', '5.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(762, 21, 113, 1, 'SIN CODIGO', 'CERROJO N 2', '17.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(763, 21, 113, 1, 'SIN CODIGO', 'ACEITE DE MAQUINA PEQUE?O', '9.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(764, 21, 114, 1, 'SIN CODIGO', 'LENTES OSCUROS', '24.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(765, 21, 114, 1, 'SIN CODIGO', 'GUANTES HILO PLOMO PALMA LATEX', '37.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(766, 21, 114, 1, 'SIN CODIGO', 'GUANTE NEGRO -T-8', '1.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(767, 21, 114, 1, 'SIN CODIGO', 'CHALECO SEGURIDAD 4 CINTAS REFLECTIVAS', '3.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(768, 21, 114, 1, 'SIN CODIGO', 'CASCO SEGURIDAD AMARILLO', '3.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(769, 21, 114, 1, 'SIN CODIGO', 'CASCO SEGURIDAD NARANJA', '2.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(770, 21, 115, 1, 'SIN CODIGO', 'CLEAN MAYOLICA MULTIUSOS', '0.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(771, 21, 115, 1, 'SIN CODIGO', 'KRESO 1 LT', '24.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(772, 21, 115, 1, 'SIN CODIGO', 'CERA AL AGUA PERFUMADA', '0.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(773, 21, 115, 1, 'SIN CODIGO', 'TIZA KILO', '51.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(774, 21, 115, 1, 'SIN CODIGO', 'TALCO AMERICANO', '29.00', '10.00', '24.40', '0.00', '0.00', '0.00', '24.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(775, 21, 116, 1, 'SIN CODIGO', 'TANQUE ROTOPLAS ARENA 750 LT', '1.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(776, 21, 116, 1, 'SIN CODIGO', 'TANQUE ROTOPLAS NEGRO 1100 LT', '3.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(777, 21, 116, 1, 'SIN CODIGO', 'TANQUE ROTOPLAS ARENA 1100 LT', '1.00', '10.00', '24.60', '0.00', '0.00', '0.00', '24.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(778, 21, 116, 1, 'SIN CODIGO', 'TANQUE ROTOPLAS ARENA 2500 ML', '1.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(779, 21, 116, 1, 'SIN CODIGO', 'TANQUE CISTERNA 1350 LT', '0.00', '10.00', '24.30', '0.00', '0.00', '0.00', '24.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(780, 21, 116, 1, 'SIN CODIGO', 'TANQUE CISTERNA 2800 LT (VAL Y FLOT)', '0.00', '10.00', '24.70', '0.00', '0.00', '0.00', '24.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(781, 21, 117, 1, 'SIN CODIGO', 'VALVULA FLOTADOR 3/4 C/BOYA ( 310059)', '3.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(782, 21, 117, 1, 'SIN CODIGO', 'VALVULA DE PIE', '9.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(783, 21, 117, 1, 'SIN CODIGO', 'MULTICONECTOR CON VALVULA ESFERICA ( 310054)', '7.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(784, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL SWING 1\'\'', '5.00', '10.00', '24.90', '0.00', '0.00', '0.00', '24.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(785, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL SWING BRONCE 1/2', '21.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(786, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL SWING 3/4', '7.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(787, 21, 118, 1, 'SIN CODIGO', 'CHECK RELOJ 1/2', '12.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(788, 21, 118, 1, 'SIN CODIGO', 'CHECK RELOJ 1/2-CIM', '1.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(789, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL CANASTILLA 1/2', '2.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(790, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL CANASTILLA  1\'\'', '5.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(791, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL BRONCE C/ MALLA 1', '4.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(792, 21, 119, 1, 'SIN CODIGO', 'VALVULA COMPUERTA 1/2-KROSS', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(793, 21, 119, 1, 'SIN CODIGO', 'VALVULA COMPUERTA 3/4-KROSS', '4.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(794, 21, 119, 1, 'SIN CODIGO', 'VALVULA COMPUERTA 1-KROSS', '4.00', '10.00', '24.90', '0.00', '0.00', '0.00', '24.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(795, 21, 119, 1, 'SIN CODIGO', 'VALVULA CISTERNA 1/2', '4.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(796, 21, 119, 1, 'SIN CODIGO', 'VALVULA CISTERNA 3/4', '11.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(797, 21, 120, 1, 'SIN CODIGO', 'TAPA NEGRA POLIETILENO 18 PLG', '0.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(798, 21, 120, 1, 'SIN CODIGO', 'KIT INSTALACION TANQUE (310585)', '3.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(799, 21, 120, 1, 'SIN CODIGO', 'RADAR AUTOMATICO TAIWANES', '0.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(800, 21, 121, 1, 'SIN CODIGO', 'FILTRO SEDIMIENTADOR  (30003) TANQUE', '11.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(801, 21, 121, 1, 'SIN CODIGO', 'PURIFICADOR AGUA S/LAVADERO (300008)', '5.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(802, 21, 122, 1, 'SIN CODIGO', 'CARTUCHO FILTRO SEDIMENTADOR (300000) TANQUE', '7.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(803, 21, 122, 1, 'SIN CODIGO', 'CARTUCHO PURIFICADOR SOBRE LAVADERO (300002)', '6.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(804, 21, 123, 1, 'SIN CODIGO', 'FRAGUA AZUL MARINO CELIMA', '0.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(805, 21, 123, 1, 'SIN CODIGO', 'FRAGUA BLANCO HUMO CHEMA', '17.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(806, 21, 123, 1, 'SIN CODIGO', 'FRAGUA HUESO CELIMA', '2.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(807, 21, 123, 1, 'SIN CODIGO', 'FRAGUA NEGRA CELIMA', '1.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(808, 21, 123, 1, 'SIN CODIGO', 'FRAGUA TERRACOTA CELIMA', '5.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(809, 21, 123, 1, 'SIN CODIGO', 'FRAGUA VERDE CELIMA', '8.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(810, 21, 123, 1, 'SIN CODIGO', 'FRAGUA VERDE PALMA CELIMA', '7.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(811, 21, 124, 1, 'SIN CODIGO', 'FRAGUA ARENA CHEMA', '14.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(812, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  AZUL CHEMA', '3.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(813, 21, 124, 1, 'SIN CODIGO', 'FRAGUA AZUL ACERO CHEMA', '19.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(814, 21, 124, 1, 'SIN CODIGO', 'FRAGUA BEIGE CHEMA', '23.00', '10.00', '24.50', '0.00', '0.00', '0.00', '24.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(815, 21, 124, 1, 'SIN CODIGO', 'FRAGUA CREMA CHEMA', '14.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(816, 21, 124, 1, 'SIN CODIGO', 'FRAGUA CELESTE CHEMA', '13.00', '10.00', '23.01', '0.00', '0.00', '0.00', '23.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(817, 21, 124, 1, 'SIN CODIGO', 'FRAGUA CUERO CHEMA', '13.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(818, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  CHOCOLATE  CHEMA', '25.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(819, 21, 124, 1, 'SIN CODIGO', 'FRAGUA BLANCA CHEMA', '39.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(820, 21, 124, 1, 'SIN CODIGO', 'FRAGUA GUINDA CHEMA', '14.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(821, 21, 124, 1, 'SIN CODIGO', 'FRAGUA GRIS CLARO STONE  CHEMA', '9.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(822, 21, 124, 1, 'SIN CODIGO', 'FRAGUA GRIS CHEMA', '4.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(823, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  HUESO CHEMA', '18.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(824, 21, 124, 1, 'SIN CODIGO', 'FRAGUA MARRON CHEMA', '9.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(825, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  MARFIL CHEMA', '16.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(826, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  MADERA CHEMA', '23.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(827, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  NEGRA CHEMA', '4.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(828, 21, 124, 1, 'SIN CODIGO', 'FRAGUA NARANJA CHEMA', '1.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(829, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  ROSADO CHEMA', '11.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(830, 21, 124, 1, 'SIN CODIGO', 'FRAGUA  VERDE LIMON  CHEMA', '15.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(831, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  AZUL EZEBOL', '0.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(832, 21, 125, 1, 'SIN CODIGO', 'FRAGUA   AZUL ULTRAMAR EZEBOL', '8.00', '10.00', '25.10', '0.00', '0.00', '0.00', '25.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(833, 21, 125, 1, 'SIN CODIGO', 'FRAGUA AZUL MARINO EZEBOL', '23.00', '10.00', '25.00', '0.00', '0.00', '0.00', '25.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(834, 21, 125, 1, 'SIN CODIGO', 'FRAGUA CELESTE PASTEL EZEBOL', '8.00', '10.00', '24.20', '0.00', '0.00', '0.00', '24.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(835, 21, 125, 1, 'SIN CODIGO', 'FRAGUA CHOCOLATE EZEBOL', '0.00', '10.00', '25.20', '0.00', '0.00', '0.00', '25.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(836, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  CREMA EZEBOL', '11.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(837, 21, 125, 1, 'SIN CODIGO', 'FRAGUA CREPUSCULO EZEBOL', '2.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(838, 21, 125, 1, 'SIN CODIGO', 'FRAGUA GRIS PLATA EZEBOL', '3.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(839, 21, 125, 1, 'SIN CODIGO', 'FRAGUA GRIS OSCURO EZEBOL', '19.00', '10.00', '26.20', '0.00', '0.00', '0.00', '26.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(840, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  HUESO EZEBOL', '0.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(841, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  LUCUMA EZEBOL', '0.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(842, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  MARFIL EZEBOL', '8.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(843, 21, 125, 1, 'SIN CODIGO', 'FRAGUA MARMELLOW EZEBOL', '0.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(844, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  NARANJA EZEBOL', '9.00', '10.00', '25.30', '0.00', '0.00', '0.00', '25.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(845, 21, 125, 1, 'SIN CODIGO', 'FRAGUA PALO ROSA EZEBOL', '4.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(846, 21, 125, 1, 'SIN CODIGO', 'FRAGUA  ROSADO OSCURO EZEBOL', '2.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(847, 21, 126, 1, 'SIN CODIGO', 'CRUCETA 1\'\' x 100 UND', '3.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(848, 21, 126, 1, 'SIN CODIGO', 'CRUCETA 2\'\' x 100 UND', '20.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(849, 21, 126, 1, 'SIN CODIGO', 'CRUCETA 3\'\' x 100 UND', '33.00', '10.00', '25.40', '0.00', '0.00', '0.00', '25.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(850, 21, 126, 1, 'SIN CODIGO', 'CRUCETA 4\'\' x 100 UND', '1.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(851, 21, 126, 1, 'SIN CODIGO', 'CRUCETA 5\'\' x 100 UND', '1.00', '10.00', '23.81', '0.00', '0.00', '0.00', '23.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(852, 21, 127, 1, 'SIN CODIGO', 'PERFIL AZUL PASTEL', '9.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(853, 21, 127, 1, 'SIN CODIGO', 'PERFIL AZUL OSCURO', '8.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(854, 21, 127, 1, 'SIN CODIGO', 'PERFIL BLANCO', '24.00', '10.00', '26.20', '0.00', '0.00', '0.00', '26.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(855, 21, 127, 1, 'SIN CODIGO', 'PERFIL BONE', '23.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(856, 21, 127, 1, 'SIN CODIGO', 'PERFIL CREMA', '14.00', '10.00', '25.40', '0.00', '0.00', '0.00', '25.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(857, 21, 127, 1, 'SIN CODIGO', 'PERFIL CELESTE CLARO', '4.00', '10.00', '26.40', '0.00', '0.00', '0.00', '26.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(858, 21, 127, 1, 'SIN CODIGO', 'PERFIL CELESTE OSCURO', '14.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(859, 21, 127, 1, 'SIN CODIGO', 'PERFIL CUERO CLARO', '26.00', '10.00', '26.20', '0.00', '0.00', '0.00', '26.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(860, 21, 127, 1, 'SIN CODIGO', 'PERFIL CUERO OSCURO', '26.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(861, 21, 127, 1, 'SIN CODIGO', 'PERFIL MARFIL OSCURO', '13.00', '10.00', '25.40', '0.00', '0.00', '0.00', '25.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(862, 21, 127, 1, 'SIN CODIGO', 'PERFIL  GUINDA CLARO', '0.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(863, 21, 127, 1, 'SIN CODIGO', 'PERFIL GUINDA OSCURO', '3.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(864, 21, 127, 1, 'SIN CODIGO', 'PERFIL GRIS OSCURO', '15.00', '10.00', '26.20', '0.00', '0.00', '0.00', '26.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(865, 21, 127, 1, 'SIN CODIGO', 'PERFIL GRIS CLARO', '31.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(866, 21, 127, 1, 'SIN CODIGO', 'PERFIL CARAMELO', '20.00', '10.00', '25.40', '0.00', '0.00', '0.00', '25.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(867, 21, 127, 1, 'SIN CODIGO', 'PERFIL NARANJA', '9.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(868, 21, 127, 1, 'SIN CODIGO', 'PERFIL ROJO', '16.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(869, 21, 127, 1, 'SIN CODIGO', 'PERFIL MARFIL CLARO', '28.00', '10.00', '26.50', '0.00', '0.00', '0.00', '26.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(870, 21, 127, 1, 'SIN CODIGO', 'PERFIL MARRON TABACO', '15.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(871, 21, 127, 1, 'SIN CODIGO', 'PERFIL TURQUESA', '3.00', '10.00', '25.40', '0.00', '0.00', '0.00', '25.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(872, 21, 127, 1, 'SIN CODIGO', 'PERFIL PLOMO', '0.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(873, 21, 127, 1, 'SIN CODIGO', 'PERFIL VERDE CLARO', '1.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(874, 21, 127, 1, 'SIN CODIGO', 'PERFIL VERDE OSCURO', '4.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(875, 21, 128, 1, 'SIN CODIGO', 'PERFIL ALUMINIO 11.5 X 2.4MTS BRILLOSO (PORCELANATO)', '20.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(876, 21, 129, 1, 'SIN CODIGO', 'OCRE ROJO', '81.00', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(877, 21, 129, 1, 'SIN CODIGO', 'OCRE NEGRO', '84.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(878, 21, 129, 1, 'SIN CODIGO', 'OCRE VERDE', '35.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(879, 21, 129, 1, 'SIN CODIGO', 'OCRE AMARILLO', '52.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(880, 21, 129, 1, 'SIN CODIGO', 'OCRE AZUL', '14.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(881, 21, 130, 1, 'SIN CODIGO', 'CEMENTO BLANCO x 1 KILO', '53.90', '10.00', '25.50', '0.00', '0.00', '0.00', '25.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(882, 21, 130, 3, 'SIN CODIGO', 'MASILLA PARED 1KG', '22.00', '10.00', '26.70', '0.00', '0.00', '0.00', '26.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(883, 21, 130, 1, 'SIN CODIGO', 'MASILLA MADERA', '20.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(884, 21, 130, 1, 'SIN CODIGO', 'CHEMITA POLVO', '3.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(885, 21, 130, 1, 'SIN CODIGO', 'SIKA POLVO 1 K.', '159.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(886, 21, 130, 1, 'SIN CODIGO', 'SIKA LIQUIDA', '2.00', '10.00', '26.10', '0.00', '0.00', '0.00', '26.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(887, 21, 130, 1, 'SIN CODIGO', 'YESO CERAMICO 1 KG', '51.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(888, 21, 130, 1, 'SIN CODIGO', 'MAZO GOMA', '0.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(889, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 014 MMx800MMx1800MM', '0.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(890, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 0.20 MMx800MMx1800MM', '0.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(891, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 0.14 MMx800MMx3.600MM', '90.00', '10.00', '26.10', '0.00', '0.00', '0.00', '26.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(892, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 0.20 MMx800MMx3600MM', '0.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(893, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 0.22 MMx800MMx3600MM', '0.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(894, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA 0.23 MMx800MMx3600MM', '0.00', '10.00', '27.00', '0.00', '0.00', '0.00', '27.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(895, 21, 132, 1, 'SIN CODIGO', 'ETERNIT PERFIL 4  3,05 M x 1,10 M x 4 MM', '53.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(896, 21, 132, 1, 'SIN CODIGO', 'ETERNIT GRAN ONDA 3,05 M x 1,10 M x 5MM', '30.00', '10.00', '26.10', '0.00', '0.00', '0.00', '26.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(897, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA SUPER ONDA 3.05 x 1.16 BLANCO', '8.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(898, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA SUPER ONDA 1.10', '0.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(899, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA CALAMINA ONDA 3.60x 0.836 m X 1 MM BLANCO', '0.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(900, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA CALAMINA ONDA 1,80 x 0,83', '0.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(901, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA PERFIL 100 ONDA 3.05 X 1.10', '14.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(902, 21, 132, 1, 'SIN CODIGO', 'TRASLUCIDA PERIFL ONDA 1,83x1,10', '0.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(903, 21, 133, 1, 'SIN CODIGO', 'BOMBA CENTRIFUGA 1 HP', '1.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(904, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 100-2/OC', '18.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(905, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 150-4 /OC', '45.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(906, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 180', '50.00', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(907, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 220-6/0 A', '52.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(908, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 600 A', '20.00', '10.00', '26.60', '0.00', '0.00', '0.00', '26.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(909, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 40-3 ASA', '67.00', '10.00', '27.40', '0.00', '0.00', '0.00', '27.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(910, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 50-2 1/2', '0.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(911, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 60 - 2  ASA', '99.00', '10.00', '25.91', '0.00', '0.00', '0.00', '25.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(912, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 80-1 1/2', '34.00', '10.00', '27.50', '0.00', '0.00', '0.00', '27.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(913, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 100 - ASA', '74.00', '10.00', '27.40', '0.00', '0.00', '0.00', '27.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(914, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 120 ASA', '53.90', '10.00', '26.30', '0.00', '0.00', '0.00', '26.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(915, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 150 - 1/0', '66.00', '10.00', '27.60', '0.00', '0.00', '0.00', '27.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(916, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 40-1 1/2', '32.00', '10.00', '25.91', '0.00', '0.00', '0.00', '25.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(917, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 50-1', '50.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(918, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 60- 1/2', '30.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(919, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 80-1/0', '72.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(920, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 100-2/0', '74.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(921, 21, 134, 1, 'SIN CODIGO', 'LIJA MADERA 120-3/0 ASA', '49.00', '10.00', '25.91', '0.00', '0.00', '0.00', '25.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(922, 21, 3, 2, 'SIN CODIGO', 'Ladrillo test', '900.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(923, 21, 20, 1, 'SIN CODIGO', 'TUERCA HEX 1/8', '480.00', '10.00', '27.40', '0.00', '0.00', '0.00', '27.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(924, 21, 1, 4, 'SIN CODIGO', 'Producto Prueba2', '97.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(925, 21, 71, 6, 'SIN CODIGO', 'PEGAMENTO CERAMICO CELIMA GRIS', '0.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(926, 21, 70, 1, 'SIN CODIGO', 'CINTA AISLANTE GRANDE', '1.00', '10.00', '25.91', '0.00', '0.00', '0.00', '25.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(927, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO MODELO ALETA', '7.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(928, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO CROMADO PARED', '2.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(929, 21, 103, 1, 'SIN CODIGO', 'BRAZO DUCHA CROMADO GIRATORIO 4\'\'', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(930, 21, 103, 1, 'SIN CODIGO', 'DUCHA BRAZO CROMADO COLORES', '3.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(931, 21, 103, 1, 'SIN CODIGO', 'DUCHA BRAZO BLANCA-CROMADO CUADRADA Y REDONDA', '3.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(932, 21, 106, 1, 'SIN CODIGO', 'JUEGO BA?O 5 PIEZAS - FOSET', '1.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(933, 21, 105, 1, 'SIN CODIGO', 'REJISTRO C/REJILLA CROMADA 2\'\'', '0.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(934, 21, 106, 1, 'SIN CODIGO', 'ACCES LAVATORIO FLEXIBLE TIPO ACORDEON', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(935, 21, 105, 1, 'SIN CODIGO', 'NIPLE 1 X 4', '0.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(936, 21, 113, 1, 'SIN CODIGO', 'NIVEL ALUMINIO NARANJA 18\'\' - CASCO', '1.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(937, 21, 113, 1, 'SIN CODIGO', 'CINTA METRICA PROFIELD 5MT', '0.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(938, 21, 113, 1, 'SIN CODIGO', 'WINCHA 5MT C/FORRO TRUPER', '13.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(939, 21, 92, 1, 'SIN CODIGO', 'CA?O PVC BOTADERO 1/2 INRELI', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(940, 21, 97, 1, 'SIN CODIGO', 'CA?O JARDINERO CROMADO M/AZUL 1/2 - BUGATTI', '2.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(941, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL CANASTILLA 3/4\'\'', '3.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(942, 21, 118, 1, 'SIN CODIGO', 'CHECK RELOJ CROMADO 3/4-CIM', '0.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(943, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x14cm - SANTA ELENA-MILAGRO', '437.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(944, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x14cm - PUEMAPE', '105.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(945, 21, 114, 1, 'SIN CODIGO', 'GUANTE CELESTE LATEX  T-M', '7.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(946, 21, 114, 1, 'SIN CODIGO', 'GUANTE CUERO T/M', '2.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(947, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL  1/2 -LEAO TOOLS', '2.00', '10.00', '28.10', '0.00', '0.00', '0.00', '28.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(948, 21, 106, 1, 'SIN CODIGO', 'ACCES INODORO JUEGO- ONE PICE', '0.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(949, 21, 113, 1, 'SIN CODIGO', 'SILICONA ANTIHONGOS BA?O/COCINA TRANSP/BLANCO SANISIL', '0.00', '10.00', '26.90', '0.00', '0.00', '0.00', '26.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(950, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x14 cm - SAN PEDRO', '4902.00', '10.00', '28.20', '0.00', '0.00', '0.00', '28.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(951, 21, 79, 1, 'SIN CODIGO', 'PLANCHA RASPIN-MANGO PLASTICO', '0.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(952, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x12 cm - SAN PEDRO DE LLOC', '4417.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(953, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x12 cm - PUEMAPE', '548.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(954, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x12 cm - SANTA ELENA-EL MILAGRO', '3410.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(955, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1/2 x 90 DOBLE ROSCA', '57.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(956, 21, 127, 1, 'SIN CODIGO', 'PERFIL MARMOL', '4.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(957, 21, 116, 1, 'SIN CODIGO', 'TANQUE  ROTOPLAS ARENA 1500 LT', '2.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(958, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK N 15 SANTA ELENA-MILAGRO', '2000.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(959, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO CROMADO 1/2', '0.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(960, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL 1/2 SWING', '3.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(961, 21, 127, 1, 'SIN CODIGO', 'PERFIL NEGRO', '25.00', '10.00', '26.51', '0.00', '0.00', '0.00', '26.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(962, 21, 105, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1 1/2 - EUROTUBO', '51.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(963, 21, 105, 1, 'SIN CODIGO', 'UNION UNIVERSAL 2\'\' C/ROSCA - EUROTUBO', '2.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(964, 21, 1, 1, 'SIN CODIGO', 'CEMENTO MOCHICA ANTISALITRE 42.5K', '0.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(965, 21, 9, 1, 'SIN CODIGO', 'CLAVO CALAMINA 2 1/2 -KILO', '15.25', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(966, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 7 X 1/16 X 7/8', '38.00', '10.00', '26.80', '0.00', '0.00', '0.00', '26.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(967, 21, 105, 1, 'SIN CODIGO', 'TRAMPA DOBLE FLEXIBE -DOBLE POZA', '0.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(968, 21, 138, 1, 'SIN CODIGO', 'LLAVE MEZCLADORA PARED-LAVADERO', '3.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(969, 21, 99, 1, 'SIN CODIGO', 'PICO GANZO FLEXIBLE COLORES', '7.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(970, 21, 113, 1, 'SIN CODIGO', 'BRU?A CANTO MANGO MADERA', '2.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(971, 21, 113, 1, 'SIN CODIGO', 'BRU?A CENTRO MANGO MADERA', '3.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(972, 21, 113, 1, 'SIN CODIGO', 'ALICATE 8\'\'', '8.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(973, 21, 70, 1, 'SIN CODIGO', 'PEG TUBOTEY 59 ML CON BROCHA', '0.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(974, 21, 113, 1, 'SIN CODIGO', 'WINCHA METRICA STANLEY S/FORRO 5MT', '3.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(975, 21, 113, 1, 'SIN CODIGO', 'MARTILLO MANGO MADERA 29 MM', '5.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(976, 21, 127, 1, 'SIN CODIGO', 'PERFIL CHOCOLATE', '20.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(977, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK N 15 SAN PEDRO', '971.00', '10.00', '28.40', '0.00', '0.00', '0.00', '28.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(978, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK N 15 PUEMAPE', '1480.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(979, 21, 28, 1, 'SIN CODIGO', 'ADAPTADOR AGUA 3\'\' HECHIZO', '0.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(980, 21, 92, 1, 'SIN CODIGO', 'CA?O DUPLEX CROMADO 1/2\'\' MANGO AZUL', '1.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(981, 21, 96, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2 C/ROSCA- R-MA', '4.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(982, 21, 98, 1, 'SIN CODIGO', 'LLAVE PASO PVC 2\'\' C/ROSCA', '4.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(983, 21, 70, 1, 'SIN CODIGO', 'CINTA MASKING 3/4x40YDS', '12.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(984, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK N 12 - SAN PEDRO DE LLOC', '2211.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(985, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK 12 - PUEMAPE', '2000.00', '10.00', '29.30', '0.00', '0.00', '0.00', '29.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(986, 21, 137, 1, 'SIN CODIGO', 'TECHO LARK N 12 - SANTA ELENA - MILAGRO', '2000.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(987, 21, 128, 1, 'SIN CODIGO', 'PERFIL ALUMINIO DORADO', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(988, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 12 POLOS', '4.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(989, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO 1/2 x 1/2 -DURAGRIF', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(990, 21, 101, 1, 'SIN CODIGO', 'LLAVE DUCHA CROMADA BRONCE', '12.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(991, 21, 97, 1, 'SIN CODIGO', 'PICO GANSO PESADA GIRT. 5/8 MOD. CANCUN CROMO CROMO - ITALGRIF', '2.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(992, 21, 99, 1, 'SIN CODIGO', 'CA?O LAVATORIO PESADA MODELO CANCUN CROMO-CROMO- ITALGRIF', '6.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(993, 21, 97, 1, 'SIN CODIGO', 'CA?O MEZCLADORA  LAVATORIO PESADA MOD. CANCUN 5/8-ITALGRIF', '1.00', '10.00', '28.30', '0.00', '0.00', '0.00', '28.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(994, 21, 99, 1, 'SIN CODIGO', 'LLAVE MEZCLADORA LAVADERO MOD. CANCUN CROMO CROMO - ITALGRIF', '2.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(995, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 120 - 3/0 C', '52.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(996, 21, 113, 1, 'SIN CODIGO', 'BADILEJO N 8 - BELLOTA', '0.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(997, 21, 113, 1, 'SIN CODIGO', 'BADILEJO N 9 - BELLOTA', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(998, 21, 113, 1, 'SIN CODIGO', 'BADILEJO N 10 - BELLOTA', '0.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(999, 21, 113, 1, 'SIN CODIGO', 'PLOP FORTE SPRAY 300ML MATA CUCARACHA', '6.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1000, 21, 113, 1, 'SIN CODIGO', 'PLOP FORTE SPRAY 170ML MATA CUCARACHA', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1001, 21, 75, 1, 'SIN CODIGO', 'COMBA CERAMICA GOMA - BLANCA / VERDE', '1.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1002, 21, 113, 2, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 14 - INDECO ECON.X METRO', '57.70', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1003, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x9 - SAN PEDRO', '1953.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1004, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x9 - POEMAPE', '650.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1005, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x9 - SANTA ELENA - MILAGRO', '767.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1006, 21, 137, 1, 'SIN CODIGO', 'PASTELERO 25x25x3 - LARK', '93.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1007, 21, 70, 1, 'SIN CODIGO', 'PEG ULTRAPEG 1/64', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1008, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 16 AMPERIOS', '9.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1009, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA  DE 20 AMPERIOS', '8.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1010, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 25 AMPERIOS', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1011, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 32 AMPERIOS', '11.00', '10.00', '26.81', '0.00', '0.00', '0.00', '26.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1012, 21, 113, 1, 'SIN CODIGO', 'NIVEL ALUMINIO NARANJA 24\'\' - CASCO', '5.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1013, 21, 100, 1, 'SIN CODIGO', 'LLAVE DUCHA MANGO PLASTICO', '2.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1014, 21, 116, 1, 'SIN CODIGO', 'FLETE', '7.10', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1015, 21, 113, 1, 'SIN CODIGO', 'BROCA MADERA 5/16 CASCO', '3.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1016, 21, 105, 1, 'SIN CODIGO', 'TRAMPA GRIS 2\'\' C/REDUCION 1 1/2 A 1 1 /4', '12.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1017, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2 PRESION', '22.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1018, 21, 137, 1, 'SIN CODIGO', 'PANDERETA LARK - SAN PEDRO', '500.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1019, 21, 137, 1, 'SIN CODIGO', 'PANDERETA LARK - PUEMAPE', '1000.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1020, 21, 137, 1, 'SIN CODIGO', 'PANDERETA LARK - SANTA ELENA -MILAGRO', '1000.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1021, 21, 137, 1, 'SIN CODIGO', 'KING KON 18 H-LARK - SAN PEDRO', '1117.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1022, 21, 137, 1, 'SIN CODIGO', 'KING KONG 18 H LARK - PUEMAPE', '1000.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1023, 21, 137, 1, 'SIN CODIGO', 'KING KONG 18 H LARK- SANTA ELENA -EL MILAGRO', '1000.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1024, 21, 137, 1, 'SIN CODIGO', 'KING KONG ARTESANAL - SAN PEDRO', '628.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1025, 21, 113, 1, 'SIN CODIGO', 'NIVEL CON IMAN 24\'\'', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1026, 21, 120, 1, 'SIN CODIGO', 'BRAZO DUCHA', '10.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1027, 21, 37, 1, 'SIN CODIGO', 'REDUCCION NARANJA PVC 6\'\' A 4\'\'', '6.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1028, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 6 TOMAS', '4.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1029, 21, 113, 1, 'SIN CODIGO', 'BROCHA MULTIUSOS 1', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1030, 21, 113, 1, 'SIN CODIGO', 'BROCHA 1 1/2', '9.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1031, 21, 113, 1, 'SIN CODIGO', 'BROCHA 2\'\'', '12.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1032, 21, 113, 1, 'SIN CODIGO', 'BROCHA  2 1/2', '3.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1033, 21, 113, 1, 'SIN CODIGO', 'BROCHA 3', '14.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1034, 21, 113, 1, 'SIN CODIGO', 'BROCHA 4\'\'', '15.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1035, 21, 113, 1, 'SIN CODIGO', 'BROCHA 5\'\'', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1036, 21, 113, 1, 'SIN CODIGO', 'BROCHA JAIR 6', '2.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1037, 21, 113, 1, 'SIN CODIGO', 'FROTACHO 30 x 6 CM', '3.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1038, 21, 113, 1, 'SIN CODIGO', 'FROTACHO 27 x 18 cm', '5.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1039, 21, 113, 1, 'SIN CODIGO', 'FROTACHO 25 x 17 cm', '4.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1040, 21, 113, 1, 'SIN CODIGO', 'ARCO SIERRA ALUMINIO COMPLETO', '4.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1041, 21, 1, 1, 'SIN CODIGO', 'CEMENTO EXTRAFORTE 42.5 K', '163.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1042, 21, 21, 1, 'SIN CODIGO', 'TUBO AGUA 2\'\' (60MM) PN-7.5 5m', '13.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1043, 21, 113, 1, 'SIN CODIGO', 'PLANCHA BATIR 8\'\' MANGO MADERA', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1044, 21, 113, 1, 'SIN CODIGO', 'LAVADERO ACERO INOXIDABLE 75x40', '1.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1045, 21, 113, 1, 'SIN CODIGO', 'CABEZAL DE CA?O BRONCE 1/2', '12.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1046, 21, 113, 1, 'SIN CODIGO', 'PLANCHA RASPIN MANGO PLASTICO', '3.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1047, 21, 113, 1, 'SIN CODIGO', 'ARCO SIERRA ALUMINIO SOLO', '11.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1048, 21, 106, 1, 'SIN CODIGO', 'INODORO C/TANQUE PALANCA OMEGA', '0.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1049, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO GRAZIA 1/2\'\'', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1050, 21, 106, 1, 'SIN CODIGO', 'LAVATORIO LARA  GRANDE  BLANCO', '5.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1051, 21, 106, 1, 'SIN CODIGO', 'TUBO ABASTO ALUMINIO 1/2 X 40CMS-LAVATORIO', '23.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1052, 21, 106, 1, 'SIN CODIGO', 'TUBO ABASTOS WATER 7/8 VINIL- METUSA', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1053, 21, 106, 1, 'SIN CODIGO', 'TUBO ABASTOS 1/2 LAVATORIO NYLON C&A', '0.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1054, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO FLEXIBLE PUNTA NEGRA MOD Z', '14.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1055, 21, 106, 1, 'SIN CODIGO', 'LAVATORIO ARTICO BLANCO', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1056, 21, 106, 1, 'SIN CODIGO', 'PEDESTAL ARTICO BLANCO', '2.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1057, 21, 106, 1, 'SIN CODIGO', 'INODORO TAZA RAPIJET BLANCO', '0.00', '10.00', '28.00', '0.00', '0.00', '0.00', '28.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1058, 21, 114, 1, 'SIN CODIGO', 'GUANTES ROJO NYLON-NITRILO', '14.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1059, 21, 97, 1, 'SIN CODIGO', 'CA?O LAVATORIO CADIZ', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1060, 21, 106, 1, 'SIN CODIGO', 'INODORO ONE PIECE BLANCO', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1061, 21, 115, 1, 'SIN CODIGO', 'BOTELLA SPRAY 3/4L. BOQUILLA BRONCE', '0.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1062, 21, 139, 1, 'SIN CODIGO', 'NOGALINA 100 GR', '3.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1063, 21, 114, 1, 'SIN CODIGO', 'RESPIRADOR 1 V?A PARA POLVO', '2.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1064, 21, 139, 2, 'SIN CODIGO', 'CERAMICA BLANCO 27x45 POR M2', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1065, 21, 115, 1, 'SIN CODIGO', 'MOCHILA PULVERIZADORA 20L', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1066, 21, 114, 1, 'SIN CODIGO', 'LENTES CLAROS FILO CELESTE', '0.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1067, 21, 137, 1, 'SIN CODIGO', 'TECHO CERAMICO NORTE N 15 - SAN PEDRO', '2007.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1068, 21, 106, 1, 'SIN CODIGO', 'INODORO TANQUE RAPIJET BLANCO', '1.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1069, 21, 106, 1, 'SIN CODIGO', 'INODORO C/TANQUE BOTON DECA OMEGA PLUS', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1070, 21, 106, 1, 'SIN CODIGO', 'LAVATORIO ECO  PEQUE?O BLANCO', '3.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1071, 21, 106, 1, 'SIN CODIGO', 'PEDESTAL MANANTIAL NEGRO', '0.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1072, 21, 106, 1, 'SIN CODIGO', 'INODORO BON? ITALGRIF C/TAPA', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1073, 21, 106, 1, 'SIN CODIGO', 'VANITORIO + ESPEJO + REPISA VENECIA 60x40x29.5cm Madera', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1074, 21, 115, 1, 'SIN CODIGO', 'BOTELLA SPRAY 1LT. BOQUILLA PLASTICA', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1075, 21, 115, 1, 'SIN CODIGO', 'GUANTES DOMESTICO AMARILO MULTIUSOS T-M', '22.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1076, 21, 113, 1, 'SIN CODIGO', 'CHAPA TRAVEX 911 / 3 GOLPES', '2.00', '10.00', '27.43', '0.00', '0.00', '0.00', '27.43', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1077, 21, 113, 1, 'SIN CODIGO', 'GUANTE HILO BLANCO NITRILO CON PU?O TEJIDO', '6.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1078, 21, 93, 1, 'SIN CODIGO', 'LLAVE DE PASO PVC 1 1/2P', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1079, 21, 114, 1, 'SIN CODIGO', 'FAJA LUMBAR TALLA XL', '5.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1080, 21, 106, 1, 'SIN CODIGO', 'DUCHA ELECTRICA MAXI ULTRA', '6.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1081, 21, 140, 1, 'SIN CODIGO', 'MULTITESTER ANALOGICO YX-360TRN', '1.00', '10.00', '27.43', '0.00', '0.00', '0.00', '27.43', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1082, 21, 140, 1, 'SIN CODIGO', 'CAUTIN TIPO LAPICERO 40W', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1083, 21, 113, 1, 'SIN CODIGO', 'PISTOLA NARANJA CREMALLERA P/SILICONA', '7.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1084, 21, 140, 1, 'SIN CODIGO', 'PROBADOR CORRIENTE', '1.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1085, 21, 140, 1, 'SIN CODIGO', 'EXTENSION AMARILLA 5MTS, 3TOMAS BREIKER', '16.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1086, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA 7', '0.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1087, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA 8, 9 ? 10', '2.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1088, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA 11, 12, ? 13', '0.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1089, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA 14, 15, 16 ? 17', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1090, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA 19', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1091, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 TOMA P/EMPOTRAR DOMINO SENCIA', '48.00', '10.00', '27.91', '0.00', '0.00', '0.00', '27.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1092, 21, 140, 1, 'SIN CODIGO', 'SOCKET OVAL BLANCO', '2.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1093, 21, 140, 1, 'SIN CODIGO', 'SOCKET PLANO TICINO', '55.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1094, 21, 140, 1, 'SIN CODIGO', 'SOCKET COLGANTE NIPLE 1/8 COLOR UREA', '79.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1095, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE MODUS STYLE 2 TOMAS -PERLA', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1096, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 TOMA MARFIL', '2.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1097, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 3 TOMAS P/EMPOTRAR DOMINO SENCIA', '75.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1098, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS P/EMPOTRAR HOME LIGHT', '14.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1099, 21, 140, 1, 'SIN CODIGO', 'SOCKET PLAF?N BLANCO', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1100, 21, 140, 1, 'SIN CODIGO', 'SOCKET PLAF?N MARFIL', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1101, 21, 140, 1, 'SIN CODIGO', 'SOCKET OCTOGONAL MARFIL', '9.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1102, 21, 140, 1, 'SIN CODIGO', 'SOCKET OVAL BLANCO', '10.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1103, 21, 140, 1, 'SIN CODIGO', 'SOCKET OVAL PLANO ORIGINAL TICINO', '14.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1104, 21, 140, 1, 'SIN CODIGO', 'FOCO LED DAIRU / LUZ CALIDA / E27 - 8.5W', '0.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1105, 21, 140, 1, 'SIN CODIGO', 'FOCO LED PLATO 18W EUROLIGHT', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1106, 21, 113, 1, 'SIN CODIGO', 'LLAVE FRANCESA 15\'\'', '1.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1107, 21, 113, 1, 'SIN CODIGO', 'LLAVE STILSON 10', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1108, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR DOBLE MARFIL', '2.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1109, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR DOBLE BLANCO', '6.00', '10.00', '27.80', '0.00', '0.00', '0.00', '27.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1110, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR + TOMACORRIENTE BLANCO', '7.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1111, 21, 114, 1, 'SIN CODIGO', 'PROTECTOR FACIAL CAJA', '2.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1112, 21, 113, 1, 'SIN CODIGO', 'CARRETILLA AZUL ANDINO  5.5 PIES', '1.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1113, 21, 115, 4, 'SIN CODIGO', 'ACIDO DOMESTICO X 1LT', '0.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1114, 21, 115, 1, 'SIN CODIGO', 'JABON LIQUIDO 400ML', '11.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1115, 21, 115, 1, 'SIN CODIGO', 'LEJIA GALON', '1.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1116, 21, 115, 4, 'SIN CODIGO', 'LIMPIATODO X 1LT', '0.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1117, 21, 115, 4, 'SIN CODIGO', 'PINO X 1 LT', '2.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1118, 21, 115, 4, 'SIN CODIGO', 'DESENGRASANTE X 1LT', '4.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1119, 21, 115, 1, 'SIN CODIGO', 'ALCOHOL GEL 400ML', '10.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1120, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR PLANO 2.5MMX75MM', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1121, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR ESTRELLA', '0.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1122, 21, 141, 1, 'SIN CODIGO', 'FOCO LED DICROICO LUZ CALIDA', '10.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1123, 21, 141, 1, 'SIN CODIGO', 'FOCO LED VELA E27 LUZ CALIDA', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1124, 21, 141, 1, 'SIN CODIGO', 'LINTERNA ROJA CON 2 PILAS AA', '1.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1125, 21, 113, 1, 'SIN CODIGO', 'REGLA DE ALUMINIO 6M', '2.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1126, 21, 141, 1, 'SIN CODIGO', 'FOCO LED + 3 PILAS AAA', '1.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1127, 21, 114, 1, 'SIN CODIGO', 'PROTECTOR FACIAL MICA', '6.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1128, 21, 113, 1, 'SIN CODIGO', 'SPRAY NEGRO BRILLANTE', '9.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1129, 21, 113, 1, 'SIN CODIGO', 'SPRAY AMARILLO LIMON', '0.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1130, 21, 113, 1, 'SIN CODIGO', 'SPRAY AMARILLO LIMON', '12.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1131, 21, 113, 1, 'SIN CODIGO', 'SPRAY BLANCO BRILLANTE', '10.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1132, 21, 113, 1, 'SIN CODIGO', 'SPRAY ROJO BRILLANTE', '9.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1133, 21, 113, 1, 'SIN CODIGO', 'SPRAY NEGRO BRILLANTE RAYMA', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1134, 21, 113, 1, 'SIN CODIGO', 'SPRAY CROMO PREMIUM', '11.00', '10.00', '27.90', '0.00', '0.00', '0.00', '27.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1135, 21, 113, 1, 'SIN CODIGO', 'SPRAY ORO PREMIUM', '7.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1136, 21, 113, 1, 'SIN CODIGO', 'SPRAY VERDE HOJA', '6.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1137, 21, 113, 1, 'SIN CODIGO', 'SPRAY AZUL CLARO', '4.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1138, 21, 113, 1, 'SIN CODIGO', 'PISTOLA P/SILICONA 20W', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1139, 21, 113, 1, 'SIN CODIGO', 'SET DE HERRAMIENTAS X 97 PIEZAS', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1140, 21, 141, 1, 'SIN CODIGO', 'LINTERNA CABEZA PILAS AA 9 LED', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1141, 21, 113, 1, 'SIN CODIGO', 'HOJA SIERRA', '62.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1142, 21, 114, 1, 'SIN CODIGO', 'PROTECTOR FACIAL CINTA NARANJA CON MASCARILLA', '2.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1143, 21, 114, 1, 'SIN CODIGO', 'MASCARILLA DOBLE CAPA', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1144, 21, 113, 1, 'SIN CODIGO', 'BROCHA 1/2', '2.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1145, 21, 113, 1, 'SIN CODIGO', 'CARRETILLA BUGGY AZUL  / LLANTA T HOJA', '6.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1146, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PCP 1/2 C/ROSCA NARANJA', '0.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1147, 21, 127, 1, 'SIN CODIGO', 'PERFIL VERDE SPRAY', '12.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1148, 21, 127, 1, 'SIN CODIGO', 'PERFIL VERDE ESMERALDA', '5.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1149, 21, 128, 1, 'SIN CODIGO', 'PERFIL VERDE MILITAR', '8.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1150, 21, 1, 6, 'SIN CODIGO', 'CEMENTO TIPO I - VERDE', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1151, 21, 141, 1, 'SIN CODIGO', 'LINTERNA COLGANTE CON IMAN', '1.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1152, 21, 141, 1, 'SIN CODIGO', 'LINTERNA RECARGABLE 7 LED', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1153, 21, 106, 1, 'SIN CODIGO', 'CA?O LAVATORIO MEZCLADORA MONOMANDO', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1154, 21, 115, 1, 'SIN CODIGO', 'GUANTE CELESTE LATEX T-L', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1155, 21, 115, 1, 'SIN CODIGO', 'GUANTE  AMARILLO CORRUGADO T- M', '8.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1156, 21, 72, 1, 'SIN CODIGO', 'CINTA EMBALAJE GRUESA', '3.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1157, 21, 141, 1, 'SIN CODIGO', 'TOMACORRIENTE 3 TOMAS ECON. SOBREPONER', '17.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1158, 21, 140, 1, 'SIN CODIGO', 'SOCKET OVAL MARFIL ECON', '0.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1159, 21, 141, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS P/EMPOTRAR DOMINO SENCIA', '25.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1160, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 TOMA', '-2.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1161, 21, 141, 1, 'SIN CODIGO', 'LINTERNA CABEZA RECARGABLE 1 LED ACUATICA', '15.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1162, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1 TOMA SOBRE PONER HOME LIGHT', '39.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1163, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR AEREO ECONOMICO', '2.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1164, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE NEGRO PLANO', '41.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1165, 21, 113, 1, 'SIN CODIGO', 'GARRUCHA PLATAFORMA', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1166, 21, 115, 1, 'SIN CODIGO', 'RAQUETA MATA INSECTOS', '1.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1167, 21, 70, 1, 'SIN CODIGO', 'SOLDIMIX 10 MINUTOS', '5.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1168, 21, 70, 1, 'SIN CODIGO', 'SOLDIMIX EXTRAFUERTE', '5.00', '10.00', '28.50', '0.00', '0.00', '0.00', '28.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1169, 21, 70, 1, 'SIN CODIGO', 'TRIZ', '7.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1170, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA CREMALLERA 2\'\'', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1171, 21, 113, 1, 'SIN CODIGO', 'REGADOR JARDIN PLASTICO 3/4', '6.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1172, 21, 113, 1, 'SIN CODIGO', 'FORMON 1/2\'\'', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1173, 21, 113, 1, 'SIN CODIGO', 'FORMON 3/4\'\'', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1174, 21, 113, 1, 'SIN CODIGO', 'FORMON 1\'\'', '2.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1175, 21, 113, 1, 'SIN CODIGO', 'BROCA CERAMICA VIDRIO 4', '6.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1176, 21, 113, 1, 'SIN CODIGO', 'BROCA CERAMICA VIDRIO 5', '5.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(1177, 21, 113, 1, 'SIN CODIGO', 'BROCA CERAMICA VIDRIO 6', '5.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1178, 21, 113, 1, 'SIN CODIGO', 'BROCA CERAMICA VIDRIO 8', '4.00', '10.00', '29.40', '0.00', '0.00', '0.00', '29.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1179, 21, 113, 1, 'SIN CODIGO', 'BROCA CERAMICA VIDRIO 10', '5.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1180, 21, 113, 1, 'SIN CODIGO', 'PICAPORTE 3', '40.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1181, 21, 113, 1, 'SIN CODIGO', 'PICAPORTE 4', '45.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1182, 21, 140, 1, 'SIN CODIGO', 'SOCKET PLANO ECON  ULTRA', '8.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1183, 21, 105, 1, 'SIN CODIGO', 'TEE 2X2 PVC', '98.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1184, 21, 106, 1, 'SIN CODIGO', 'LAVADERO 1 POZA 50X41', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1185, 21, 113, 1, 'SIN CODIGO', 'CHAPA PARA DORMITORIO FORTE', '7.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1186, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO VALVULA DUAL ONE PIECE', '1.00', '10.00', '27.41', '0.00', '0.00', '0.00', '27.41', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1187, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 50MM', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1188, 21, 113, 1, 'SIN CODIGO', 'CANDADO BRONCE CHICO', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1189, 21, 106, 1, 'SIN CODIGO', 'INODORO TAZA BLANCO ACUACER', '1.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1190, 21, 106, 1, 'SIN CODIGO', 'INODORO TANQUE BLANCO ACUACER', '2.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1191, 21, 106, 1, 'SIN CODIGO', 'ORGANIZADOR DE BA?O 2 NIVELES', '3.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1192, 21, 106, 1, 'SIN CODIGO', 'DUCHA MANGUERA', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1193, 21, 106, 1, 'SIN CODIGO', 'LLAVE DUCHA CON SALIDA SEVILLA', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1194, 21, 141, 1, 'SIN CODIGO', 'LINTERNA CUCHILLO', '1.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1195, 21, 113, 1, 'SIN CODIGO', 'EXTENSION 3MTS, 3 TOMAS, COLORES', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1196, 21, 139, 1, 'SIN CODIGO', 'TECHO TEJA ROJO 1.15MTS X 75CMS', '3.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1197, 21, 132, 1, 'SIN CODIGO', 'ONDULINE ROJO ONDA ALTA 2 x 0.95 MT x3MM', '95.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1198, 21, 132, 1, 'SIN CODIGO', 'ONDULINE ROJO GRAN ONDA 2 x 0.95 MT x 3MM', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1199, 21, 132, 1, 'SIN CODIGO', 'ONDULINE CUMBRERA CLASICA ROJA 2 x 0.48 MT x 3MM', '8.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1200, 21, 132, 1, 'SIN CODIGO', 'ONDULINE TRASLUCIDA ONDA ALTA 2 x 0.95 MT x 0.5MM', '18.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1201, 21, 9, 1, 'SIN CODIGO', 'TORNILLO CABEZA ROJA EN ZINC 42 x 60MM', '15.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1202, 21, 113, 1, 'SIN CODIGO', 'JARDINERA REGADERA AMARILLA', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1203, 21, 141, 1, 'SIN CODIGO', 'FOCO LED DAIRU / LUZ FRIA / E27 - 10.5W', '0.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1204, 21, 106, 1, 'SIN CODIGO', 'MANGUERA METAL PARA DUCHA', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1205, 21, 115, 1, 'SIN CODIGO', 'VENENO RATAMIX 50GRS', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1206, 21, 140, 1, 'SIN CODIGO', 'TRIPLE TOMACORRIENTE', '5.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1207, 21, 115, 1, 'SIN CODIGO', 'TRAMPA PARA RATAS METAL', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1208, 21, 113, 1, 'SIN CODIGO', 'TIJERA DRYWALL- LATA', '1.00', '10.00', '29.40', '0.00', '0.00', '0.00', '29.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1209, 21, 115, 1, 'SIN CODIGO', 'VENENO RASTOP', '7.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1210, 21, 140, 1, 'SIN CODIGO', 'PILAS POR PARES AA / AAA', '4.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1211, 21, 106, 1, 'SIN CODIGO', 'LAVADERO ROPA FIBRA DE VIDRIO', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1212, 21, 113, 1, 'SIN CODIGO', 'CANDADO CAMISETA PERU', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1213, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N 12 - SAN PEDRO', '820.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1214, 21, 115, 1, 'SIN CODIGO', 'MASCARILLA FACIAL', '7.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1215, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N15  - PUEMAPE', '1150.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1216, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N 15 - SANTA ELENA Y MILAGRO', '2730.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1217, 21, 139, 1, 'SIN CODIGO', 'BANCO BAR EN COLORES', '3.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1218, 21, 141, 1, 'SIN CODIGO', 'FOCO LED GLOBO 15W LUZ FRIA', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1219, 21, 113, 1, 'SIN CODIGO', 'PINTURA LATEX PINTEK BLANCO 4 LITROS', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1220, 21, 113, 1, 'SIN CODIGO', 'CASINO TUN HUANG', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1221, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N12 - PUEMAPE', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1222, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N 12 - SANTA ELENA Y MILAGRO', '680.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1223, 21, 114, 1, 'SIN CODIGO', 'GUANTE HILO NEGRO CON PALMA NITRILO AZUL', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1224, 21, 139, 6, 'SIN CODIGO', 'IMPRIMANTE 1GLN ANYPSA', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1225, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE UNIVERSAL 3 TOMAS', '1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1226, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR TRIPLE BLANCO', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1227, 21, 52, 2, 'SIN CODIGO', 'MANGUERA 5/8 CELESTE/NARANJA X METRO', '6.50', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1228, 21, 113, 2, 'SIN CODIGO', 'MANGUERA 3/8 GLP PREMIUM ANARANJADO X MT', '89.50', '10.00', '29.30', '0.00', '0.00', '0.00', '29.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1229, 21, 113, 1, 'SIN CODIGO', 'PLOMADA CILINDRICA BRONCE 750 GRS', '11.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1230, 21, 113, 1, 'SIN CODIGO', 'BROCHA 1\'\'', '8.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1231, 21, 113, 1, 'SIN CODIGO', 'MANGUERA DE SALIDA PARA LAVADORA X 3MTS FORTALY', '3.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1232, 21, 113, 1, 'SIN CODIGO', 'MANGUERA DE ENTRADA PARA LAVADORA X 2 MTS', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1233, 21, 113, 1, 'SIN CODIGO', 'VALVULA GAS PREMIUM RODSALGAS', '4.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1234, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA ECONOMICA 6, 7, 8 ? 9', '8.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1235, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA ECONOMICA 10, 11, 12 ? 13', '16.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1236, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA ECONOMICA 14, 17 ? 19', '10.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1237, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA ECONOMICA 21, 22 ? 24', '2.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1238, 21, 113, 3, 'SIN CODIGO', 'YESO X KG', '7.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1239, 21, 142, 7, 'SIN CODIGO', 'GRAVILLA 1/2 - PUEMAPE M3', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1240, 21, 142, 7, 'SIN CODIGO', 'ARENA GRUESA - POEMAPE M3', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1241, 21, 142, 7, 'SIN CODIGO', 'ARENA GRUESA - PUEMAPE 5 M3', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1242, 21, 142, 7, 'SIN CODIGO', 'GRAVILLA 1/2 - PUEMAPE 5 M3', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1243, 21, 113, 1, 'SIN CODIGO', 'DISCO FIERRO 9 X 13', '1.00', '10.00', '26.00', '0.00', '0.00', '0.00', '26.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1244, 21, 114, 1, 'SIN CODIGO', 'LENTES CLAROS ANTIEMPA?E FILO NEGRO', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1245, 21, 114, 1, 'SIN CODIGO', 'GUANTE NARANJA C/PALMA LATEX', '7.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1246, 21, 113, 1, 'SIN CODIGO', 'CINTA MASKING 1x20 AMARILLA', '2.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1247, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR OR 1 TOMA PARA EMPOTRAR', '7.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1248, 21, 113, 1, 'SIN CODIGO', 'PERCHERO METAL', '4.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1249, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO BRONCE QUEMADO', '1.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1250, 21, 141, 1, 'SIN CODIGO', 'SOCKET DICROICO BLANCO', '1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1251, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE MODUS STYLE 2 TOMAS -BLANCO', '2.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1252, 21, 141, 1, 'SIN CODIGO', 'FOCO AHORRADOR LUZ CALIDA DAIKU', '3.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1253, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS C/TIERRA P/EMPOTRAR', '61.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1254, 21, 141, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 16 AMPERIOS OR', '7.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1255, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 25 AMPERIOS OR', '6.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1256, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 32 AMPERIOS OR', '2.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1257, 21, 140, 1, 'SIN CODIGO', 'CONMUTADOR 2 TOMA ECONOMICO EUROLIGHT', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1258, 21, 140, 1, 'SIN CODIGO', 'CONMUTADOR 2 TOMAS MODUS STYLE', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1259, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA CREMALLERA 1/2\'\'', '195.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1260, 21, 103, 1, 'SIN CODIGO', 'DUCHA TELEFONO', '1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1261, 21, 113, 1, 'SIN CODIGO', 'ANGULO REPISA BLANCO / NEGRO 6X8', '9.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1262, 21, 139, 1, 'SIN CODIGO', 'TERMO ACERO 1/2 LITRO', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1263, 21, 139, 1, 'SIN CODIGO', 'SET 4 TAZAS CON PARANTE', '0.00', '10.00', '29.10', '0.00', '0.00', '0.00', '29.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1264, 21, 106, 1, 'SIN CODIGO', 'RESUMIDERO BRONCE 6\'\'', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1265, 21, 106, 1, 'SIN CODIGO', 'TRAMPA CAMPANA CROMADA 4\'\'', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1266, 21, 113, 1, 'SIN CODIGO', 'CANALETA LUZ 10 X 15 C/ADHESIVO', '62.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1267, 21, 71, 1, 'SIN CODIGO', 'PEG CERAMICO BLANCO PORCELANATO X 25KG', '53.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1268, 21, 106, 1, 'SIN CODIGO', 'DESATORADOR HUMBOLDT', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1269, 21, 113, 1, 'SIN CODIGO', 'CUTER', '4.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1270, 21, 72, 1, 'SIN CODIGO', 'CINTA AISLANTE GRANDE COLORES', '16.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1271, 21, 106, 1, 'SIN CODIGO', 'LLAVE MEZCLADORA LAVADERO', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1272, 21, 140, 1, 'SIN CODIGO', 'CAJA RECTANGULAR ECONOMICA', '77.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1273, 21, 140, 1, 'SIN CODIGO', 'CAJA OCTOGONAL ECONOMICA', '30.00', '10.00', '29.30', '0.00', '0.00', '0.00', '29.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1274, 21, 113, 1, 'SIN CODIGO', 'VENTILADOR', '2.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1275, 21, 25, 1, 'SIN CODIGO', 'TUBO LUZ BLANCO 3/4 (19.1MM9) x 3 M S/P', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1276, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1M 4 VIAS 16AMP MARFIL MAGIC', '4.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1277, 21, 113, 1, 'SIN CODIGO', 'REPARADOR DE MANGUERAS', '3.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1278, 21, 113, 1, 'SIN CODIGO', 'PALANA CUCHARA', '9.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1279, 21, 106, 1, 'SIN CODIGO', 'TACHO CROMADO X 3 LITROS', '1.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1280, 21, 113, 1, 'SIN CODIGO', 'TACHO CROMADO X 12 LITROS', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1281, 21, 113, 1, 'SIN CODIGO', 'AMOLADORA 4 1/2 500W', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1282, 21, 113, 1, 'SIN CODIGO', 'DISCO FIERRO 4 1/2 DEWALT', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1283, 21, 113, 1, 'SIN CODIGO', 'RODILLO UNIVERSAL 9\'\' TEKNO', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1284, 21, 137, 1, 'SIN CODIGO', 'PANDERETA TAYZON - SAN PEDRO', '151.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1285, 21, 137, 1, 'SIN CODIGO', 'TECHO LADRILLOC N15 - SAN PEDRO', '500.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1286, 21, 113, 1, 'SIN CODIGO', 'SPRAY VERDE IRLANDES', '4.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1287, 21, 141, 1, 'SIN CODIGO', 'FOCO LED 9W FSL', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1288, 21, 141, 1, 'SIN CODIGO', 'FOCO LED DAIRU / LUZ FRIA / E27 - 8.5W', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1289, 21, 114, 1, 'SIN CODIGO', 'LENTES CLAROS CERRADOS CON VENTILACION', '17.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1290, 21, 113, 1, 'SIN CODIGO', 'SIERRA PARA TUBOS PVC', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1291, 21, 140, 1, 'SIN CODIGO', 'ADAPTADOR NEGRO P/TIERRA', '11.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1292, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS C/TIERRA PARA EMPOTRAR BLANCO  BREIKER', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1293, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1 TOMA ECONOMICO P/EMPOTRAR EUROLIGHT', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1294, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1 TOMA P/SOBREPONER', '5.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1295, 21, 91, 1, 'SIN CODIGO', 'CA?O PVC JARDINERO INRELI', '-1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1296, 21, 113, 1, 'SIN CODIGO', 'VALVULA GAS GASPER', '4.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1297, 21, 113, 1, 'SIN CODIGO', 'VALVULA GAS INDUSTRIAL PECHITO ALTO', '4.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1298, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 32MM', '26.00', '10.00', '27.20', '0.00', '0.00', '0.00', '27.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1299, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 38MM', '7.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1300, 21, 113, 1, 'SIN CODIGO', 'SPLITER 1 ENTRADA 2 SALIDAS', '2.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1301, 21, 113, 1, 'SIN CODIGO', 'SPLITER 1 ENTRADA 3 SALIDAS', '11.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1302, 21, 113, 1, 'SIN CODIGO', 'DISCO FIERRO 4 1/2 3M', '34.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1303, 21, 113, 1, 'SIN CODIGO', 'ESCOBILLA COPA 3\'\'', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1304, 21, 140, 1, 'SIN CODIGO', 'UNION LUZ 3/4 PVC TUBOPLAST', '11.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1305, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA CALIENTE 3/4 X45', '9.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1306, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR PLANO 1/4\'\' X 6\'\'', '2.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1307, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR PLANO 5.5MMX125MM', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1308, 21, 32, 1, 'SIN CODIGO', 'CODO AGUA CALIENTE 1/2 X 45', '25.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1309, 21, 113, 1, 'SIN CODIGO', 'RODILLO EPOXICO 9\'\'', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1310, 21, 113, 1, 'SIN CODIGO', 'RODILLO PINTOR 3\'\'', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1311, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1 1/2 - 3/4', '25.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1312, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE ADAPTADOR', '8.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1313, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 3 TOMAS ECON. P/EMPOTRAR', '10.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1314, 21, 141, 1, 'SIN CODIGO', 'FLUORESCENTE LED', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1315, 21, 141, 1, 'SIN CODIGO', 'FOCO LED PLATO CIRCULAR 24W', '5.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1316, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE NEGRO REDONDO', '1.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1317, 21, 106, 1, 'SIN CODIGO', 'PERNO ANCLAJE INODORO PISO BOLSA', '26.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1318, 21, 140, 2, 'SIN CODIGO', 'CABLE SOLIDO 14-ELECTRO INDECO X METRO', '251.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1319, 21, 113, 1, 'SIN CODIGO', 'NYLON VERDE 0.40MM ARATY', '8.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1320, 21, 113, 1, 'SIN CODIGO', 'NYLON AZUL N 60 PRETUL 100MTS', '5.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1321, 21, 113, 1, 'SIN CODIGO', 'NYLON AZUL X MT', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1322, 21, 113, 1, 'SIN CODIGO', 'CERROJO N 3', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1323, 21, 113, 1, 'SIN CODIGO', 'CERROJO N 4', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1324, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PUNTA', '4.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1325, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PLANO', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1326, 21, 113, 1, 'SIN CODIGO', 'RASTRILLO AMARILLO 14 DIENTES S/MANGO', '5.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1327, 21, 82, 1, 'SIN CODIGO', 'PLOMADA DORADA 400 GRAMOS', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1328, 21, 113, 1, 'SIN CODIGO', 'LLANTA CARRETILLA 4 LONAS C/CAMARAROMBO', '1.00', '10.00', '28.90', '0.00', '0.00', '0.00', '28.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1329, 21, 113, 1, 'SIN CODIGO', 'LLANTA CARRETILLA C/ARO T/ROMBO', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1330, 21, 113, 1, 'SIN CODIGO', 'CONECTOR INTERNET', '100.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1331, 21, 113, 1, 'SIN CODIGO', 'CONECTOR CABLE', '15.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1332, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 6 TOMAS C/INTERRUPTOR INDIVIDUAL E INDICADOR', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1333, 21, 140, 1, 'SIN CODIGO', 'BARRA P/EXTENSION 3 TOMAS', '5.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1334, 21, 140, 1, 'SIN CODIGO', 'BARRA P/EXTENSION 4 TOMAS', '5.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1335, 21, 140, 1, 'SIN CODIGO', 'BARRA P/EXTENSION 5 TOMAS', '6.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1336, 21, 140, 1, 'SIN CODIGO', 'CAUTIN TIPO LAPICERO 60W', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1337, 21, 113, 1, 'SIN CODIGO', 'PASTA P/CAUTIN', '11.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1338, 21, 113, 1, 'SIN CODIGO', 'SOLDADURA ESTA?O P/CAUTIN', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1339, 21, 140, 1, 'SIN CODIGO', 'PISTOLA AMARILLA CREMALLERA P/SILICONA', '3.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1340, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1 TOMA ECONO PARA EMPOTRARMICO', '28.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1341, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 3 TOMAS P/SOBREPONER', '28.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1342, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS C/TIERRA PARA EMPOTRAR', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1343, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 TOMA P/EMPOTRAR', '12.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1344, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR TRIPLE P/EMPOTRAR', '5.00', '10.00', '28.95', '0.00', '0.00', '0.00', '28.95', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1345, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 TOMA SOBREPONER', '22.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1346, 21, 113, 1, 'SIN CODIGO', 'LLAVE STILSON 12', '1.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1347, 21, 113, 1, 'SIN CODIGO', 'LLAVE STILSON 14', '2.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1348, 21, 113, 1, 'SIN CODIGO', 'TARUGO VERDE', '395.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1349, 21, 113, 1, 'SIN CODIGO', 'TIRALINEA TARRO', '1.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1350, 21, 113, 1, 'SIN CODIGO', 'PRECINTO BLANCO CHICO (100PZ)', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1351, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA MACHO 1/2 C/ROSCA', '7.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1352, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO ACERO INOX', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1353, 21, 113, 1, 'SIN CODIGO', 'CHAPA BA?O BRONCE QUEMADO', '1.00', '10.00', '29.30', '0.00', '0.00', '0.00', '29.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1354, 21, 113, 1, 'SIN CODIGO', 'CHAPA BA?O ACERO INOX', '6.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1355, 21, 113, 1, 'SIN CODIGO', 'CHAPA BA?O BRONCE ANTIGUO', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1356, 21, 41, 1, 'SIN CODIGO', 'TAPON AGUA HEMBRA 1/2 PRESION', '27.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1357, 21, 89, 1, 'SIN CODIGO', 'SOLDADURA SUPERCITO 7018 X 1/8', '16.90', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1358, 21, 137, 1, 'SIN CODIGO', 'PARED MITAD 12', '0.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1359, 21, 137, 1, 'SIN CODIGO', 'PARED MITAD 14', '90.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1360, 21, 113, 1, 'SIN CODIGO', 'DESATORADOR ECONOMICO', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1361, 21, 113, 1, 'SIN CODIGO', 'VALVULA GAS C/MANGUERA SURGE', '2.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1362, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR REVERSIBLE', '12.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1363, 21, 113, 2, 'SIN CODIGO', 'MALLA METALICA 1/2 X MT', '57.50', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1364, 21, 113, 1, 'SIN CODIGO', 'TIJERA HOJALATERO 10\'\'', '5.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1365, 21, 113, 1, 'SIN CODIGO', 'CANDADO PLATEADO 60 MM', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1366, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 75MM', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1367, 21, 140, 2, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 14 - INDECO ORIGINAL X ROLLO', '7.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1368, 21, 141, 1, 'SIN CODIGO', 'FOCO LED DAIRU / LUZ CALIDA / E27 - 7.5W', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1369, 21, 140, 1, 'SIN CODIGO', 'BRAZO DUCHA ELECTRICA LORENZETTI', '10.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1370, 21, 140, 1, 'SIN CODIGO', 'BRAZO DUCHA ELECTRICA', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1371, 21, 139, 1, 'SIN CODIGO', 'SET BA?O 5 PIEZAS', '0.00', '10.00', '28.51', '0.00', '0.00', '0.00', '28.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1372, 21, 139, 1, 'SIN CODIGO', 'SET BA?O 3 PIEZAS', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1373, 21, 139, 1, 'SIN CODIGO', 'ESQUINERA C/VENTOSAS', '1.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1374, 21, 106, 1, 'SIN CODIGO', 'PICO GANSO CROMADO PARED GALUSA', '6.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1375, 21, 118, 1, 'SIN CODIGO', 'CHECK RELOJ CROMADO 1\'\'', '6.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1376, 21, 113, 1, 'SIN CODIGO', 'PERNO HEXAGONAL 3/8 X 3\'\' + TUERCA', '14.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1377, 21, 113, 1, 'SIN CODIGO', 'PERNO COCHE 5/16 X 3 1/2 + TUERCA + ANILLO', '0.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1378, 21, 113, 1, 'SIN CODIGO', 'PERNO COCHE 3/8 X 3 1/2 + TUERCA + ANILLO', '8.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1379, 21, 113, 1, 'SIN CODIGO', 'PERNO HEXAGONAL 3/8 X 4\'\' + TUERCA', '13.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1380, 21, 113, 1, 'SIN CODIGO', 'TALADRO 600W', '1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1381, 21, 113, 1, 'SIN CODIGO', 'TALADRO INALAMBRICO 3/8 12V 1.3AH', '1.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1382, 21, 140, 2, 'SIN CODIGO', 'CABLE SOLIDO 12-ELECTRO X MT', '48.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1383, 21, 113, 3, 'SIN CODIGO', 'ALAMBRE GALVANIZADO N16', '0.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1384, 21, 140, 2, 'SIN CODIGO', 'CABLE SOLIDO 14-ELECTRO INDECO X ROLLO', '0.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1385, 21, 137, 1, 'SIN CODIGO', 'PARED MITAD 9', '230.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1386, 21, 70, 1, 'SIN CODIGO', 'MOLDIMIX', '7.00', '10.00', '28.51', '0.00', '0.00', '0.00', '28.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1387, 21, 113, 4, 'SIN CODIGO', 'REMOVEDOR DE OXIDO X 1 LITRO', '1.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1388, 21, 113, 1, 'SIN CODIGO', 'WINCHA PASACABLE 20 M', '3.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1389, 21, 113, 1, 'SIN CODIGO', 'ALICATE CORTE 6\'\' TORETO', '15.00', '10.00', '28.70', '0.00', '0.00', '0.00', '28.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1390, 21, 113, 1, 'SIN CODIGO', 'CERROJO N 1', '2.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1391, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 2 TOMAS ECONOMICO PARA EMPOTRA EPEM', '9.00', '10.00', '28.51', '0.00', '0.00', '0.00', '28.51', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1392, 21, 113, 1, 'SIN CODIGO', 'CODO FIERRO 3/4 X 45', '7.00', '10.00', '30.10', '0.00', '0.00', '0.00', '30.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1393, 21, 140, 1, 'SIN CODIGO', 'PONCHADOR', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1394, 21, 141, 1, 'SIN CODIGO', 'FOCO AHORRADOR LUZ FRIA PHELIX GSX18', '0.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1395, 21, 113, 1, 'SIN CODIGO', 'SERRUCHO 20\'\' TRIPLE FILO MANGO PLASTICO', '5.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1396, 21, 113, 1, 'SIN CODIGO', 'CORTAVIDRIO CON 6 REPUESTOS', '10.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1397, 21, 113, 1, 'SIN CODIGO', 'PERCHERO PLASTICO X PAR', '12.00', '10.00', '30.10', '0.00', '0.00', '0.00', '30.10', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1398, 21, 113, 1, 'SIN CODIGO', 'CORDON PLANCHA ELECTRICA', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1399, 21, 113, 1, 'SIN CODIGO', 'ALICATE PUNTA 6\'\' /C&A/ALE-MAN', '8.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1400, 21, 113, 1, 'SIN CODIGO', 'ALDABA 4 1/2\'\'', '3.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1401, 21, 113, 1, 'SIN CODIGO', 'ALDABA 3 1/2\'\'', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1402, 21, 113, 1, 'SIN CODIGO', 'ALDABA 2 1/2\'\'', '5.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1403, 21, 54, 1, 'SIN CODIGO', 'UNION DESAGUE 2\'\' TUBOPLAST', '3.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1404, 21, 52, 1, 'SIN CODIGO', 'UNION AGUA 1/2 PRESION PAVCO', '5.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1405, 21, 54, 1, 'SIN CODIGO', 'UNION DESAGUE 4\'\' PAVCO', '0.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1406, 21, 113, 1, 'SIN CODIGO', 'TACHO CROMADO X 5 LITROS', '1.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1407, 21, 113, 1, 'SIN CODIGO', 'TACHO CROMADO X 7 LITROS', '0.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(1408, 21, 140, 1, 'SIN CODIGO', 'EXTENSION 3MTS, 4 TOMAS, COLORES', '7.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1409, 21, 106, 1, 'SIN CODIGO', 'LAVADERO 2 POZAS 110x48 LIVIANO', '2.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1410, 21, 140, 1, 'SIN CODIGO', 'CONMUTADOR 1 TOMA DOMINO SENCIA', '16.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1411, 21, 140, 1, 'SIN CODIGO', 'CONMUTADOR 2 TOMAS DOMINO SENCIA', '20.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1412, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 40 AMPERIOS', '0.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1413, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 20MM', '7.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1414, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 25MM', '23.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1415, 21, 140, 1, 'SIN CODIGO', 'CANALETA LUZ 10 X 20 C/ADHESIVO', '50.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1416, 21, 106, 1, 'SIN CODIGO', 'DUCHA MONOMANDO FF8350-4 KARSON', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1417, 21, 113, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS TRANSPARENTE 225ML KNAUFF', '27.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1418, 21, 113, 1, 'SIN CODIGO', 'BALANZA ROMANA DIGITAL', '3.00', '10.00', '29.60', '0.00', '0.00', '0.00', '29.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1419, 21, 113, 1, 'SIN CODIGO', 'INFLADOR PLOMO 23\'\'', '1.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1420, 21, 106, 1, 'SIN CODIGO', 'LAVADERO ROPA GRANITO 80CM', '2.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1421, 21, 106, 1, 'SIN CODIGO', 'PATAS (PAR) LAVADERO GRANITO', '0.00', '10.00', '28.01', '0.00', '0.00', '0.00', '28.01', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1422, 21, 70, 6, 'SIN CODIGO', 'FRAGUA CREPUSCULO', '20.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1423, 21, 71, 6, 'SIN CODIGO', 'FRAGUA ROJO INTENSO CHEMA', '15.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1424, 21, 113, 1, 'SIN CODIGO', 'LAVADERO 2 POZAS 120x50 PESADO', '0.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1425, 21, 23, 1, 'SIN CODIGO', 'ACCES LAVADERO 2 POZAS JUEGO TRAMPA ACORDEON', '6.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1426, 21, 105, 1, 'SIN CODIGO', 'SODA CAUTICA 1KG', '34.00', '10.00', '29.00', '0.00', '0.00', '0.00', '29.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1427, 21, 4, 1, 'SIN CODIGO', 'ARCO SIERRA KAYFEN', '5.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1428, 21, 113, 1, 'SIN CODIGO', 'PICO GANSO FLEXIBLE PUNTA CROMADA MOD Z AL LAVADERO', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1429, 21, 113, 1, 'SIN CODIGO', 'JALADOR ALUMINIO 6\'\'', '8.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1430, 21, 113, 1, 'SIN CODIGO', 'GRAPAS LUZ N8', '15.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1431, 21, 113, 1, 'SIN CODIGO', 'BROCA CEMENTO 3/8 UNIDAD', '7.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1432, 21, 139, 1, 'SIN CODIGO', 'SPRAY NARANJA', '0.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1433, 21, 139, 1, 'SIN CODIGO', 'SPRAY MARRON', '1.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1434, 21, 113, 1, 'SIN CODIGO', 'PALANA RECTA', '4.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1435, 21, 106, 1, 'SIN CODIGO', 'ORGANIZADOR DE BA?O 3 NIVELES', '1.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1436, 21, 140, 1, 'SIN CODIGO', 'TIMBRE VERA', '1.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1437, 21, 113, 1, 'SIN CODIGO', 'TIJERAS COSECHA', '1.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1438, 21, 106, 1, 'SIN CODIGO', 'AROS CORTINA BA?O BEIGE', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1439, 21, 106, 1, 'SIN CODIGO', 'AROS CORTINA BA?O FROST', '16.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1440, 21, 106, 1, 'SIN CODIGO', 'AROS CORTINA BA?O BOLA BLANCA', '5.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1441, 21, 106, 1, 'SIN CODIGO', 'AROS CORTINA BA?O CARRITOS', '4.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1442, 21, 141, 1, 'SIN CODIGO', 'FOCO LUZ DE NOCHE', '1.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1443, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR TIMBRE', '4.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1444, 21, 113, 1, 'SIN CODIGO', 'HOJA SIERRA', '2.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1445, 21, 105, 1, 'SIN CODIGO', 'ACCES LAVADERO/LAVATORIO. TRAMPA DE BOTELLA', '15.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1446, 21, 113, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 2\'\' DORADA', '3.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1447, 21, 113, 1, 'SIN CODIGO', 'HUACHA PRESION 5/16\'\' X 10 UNIDADES', '8.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1448, 21, 113, 1, 'SIN CODIGO', 'HUACHA PRESION 5/32\'\' X 10 UNIDADES', '10.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1449, 21, 113, 1, 'SIN CODIGO', 'HUACHA PRESION 3/16\'\' X 10 UNIDADES', '10.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1450, 21, 113, 1, 'SIN CODIGO', 'HUACHA PRESION 1/4\'\' X 10 UNIDADES', '7.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1451, 21, 113, 1, 'SIN CODIGO', 'HUACHA PRESION 1/8\'\' X 10 UNIDADES', '10.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1452, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 1/8x1/2 X 10 UNIDADES', '10.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1453, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 1/8x3/4 X 10 UNIDADES', '10.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1454, 21, 17, 1, 'SIN CODIGO', 'OCTOBOL 1/8x1 X 10 UNIDADES', '10.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1455, 21, 115, 1, 'SIN CODIGO', 'DESATORADOR COCINA AMARILLO X 1LT', '2.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1456, 21, 115, 1, 'SIN CODIGO', 'DESATORADOR BA?O ROJO X 1LT', '0.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1457, 21, 115, 1, 'SIN CODIGO', 'QUITA SARRO 1/2 LT', '3.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1458, 21, 115, 1, 'SIN CODIGO', 'PINO 900ML', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1459, 21, 115, 1, 'SIN CODIGO', 'LIMPIATODO X 900ML BEBE', '0.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1460, 21, 115, 1, 'SIN CODIGO', 'LIMPIATODO X 900ML LAVANDA', '0.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1461, 21, 115, 1, 'SIN CODIGO', 'LIMPIAVIDRIOS X 650ML', '2.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1462, 21, 115, 1, 'SIN CODIGO', 'AMBIENTADOR FRESA/LAVANDA', '4.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1463, 21, 115, 1, 'SIN CODIGO', 'PASTILLA DESINFECTANTE TANQUE INODORO', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1464, 21, 115, 1, 'SIN CODIGO', 'ESPONJA', '4.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1465, 21, 115, 1, 'SIN CODIGO', 'RECOGEDOR', '1.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1466, 21, 113, 1, 'SIN CODIGO', 'TRAMPA PARA RATAS PEGAJOSA', '8.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1467, 21, 115, 1, 'SIN CODIGO', 'ESCOBILLA ROPA', '0.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1468, 21, 115, 1, 'SIN CODIGO', 'CERA AUTOBRILLANTE X 300ML', '0.00', '10.00', '28.80', '0.00', '0.00', '0.00', '28.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1469, 21, 115, 1, 'SIN CODIGO', 'CERA PASTA X 300ML', '0.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1470, 21, 115, 1, 'SIN CODIGO', 'ESCOBILLA DE BA?O', '6.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1471, 21, 113, 1, 'SIN CODIGO', 'UNION MANGUERA GRIS', '9.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1472, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1\'\'-1/2\'\' C/ROSCA X DENTRO Y X FUERA', '24.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1473, 21, 98, 1, 'SIN CODIGO', 'LAVADERO ROPA GRANITO 60CM', '0.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1474, 21, 140, 1, 'SIN CODIGO', 'EXTENSION AMARILLA 10MTS, 3TOMAS', '4.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1475, 21, 140, 1, 'SIN CODIGO', 'CONMUTADOR TRIPLE P/EMPOTRAR', '8.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1476, 21, 140, 1, 'SIN CODIGO', 'CAJA PASE 100x100x70', '11.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1477, 21, 113, 1, 'SIN CODIGO', 'ANGULO REPISA BLANCO GRANDE 10X12', '4.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1478, 21, 113, 1, 'SIN CODIGO', 'CORDEL AZUL/BLANCO X MT', '33.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1479, 21, 113, 5, 'SIN CODIGO', 'RAFIA X ROLLO COLORES 1/2 KG', '5.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1480, 21, 113, 1, 'SIN CODIGO', 'JALADOR BRONCE', '4.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1481, 21, 113, 1, 'SIN CODIGO', 'PLANCHA BATIR 7\'\' MANGO MADERA', '6.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1482, 21, 113, 1, 'SIN CODIGO', 'BOTA PVC NEGRA 40/41', '1.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1483, 21, 106, 1, 'SIN CODIGO', 'DUCHA BRAZO CROMADO CUADRADA', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1484, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE 2 TOMAS C/TIERRA PARA SOBREPONER', '4.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1485, 21, 113, 1, 'SIN CODIGO', 'BUSHING BRONCE 1/2 A 2\'\'', '10.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1486, 21, 9, 1, 'SIN CODIGO', 'CAPUCHON CLAVO CALAMINA', '499.90', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1487, 21, 3, 1, 'SIN CODIGO', 'TORTOL CORRUGADO 3/8', '7.00', '10.00', '29.80', '0.00', '0.00', '0.00', '29.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1488, 21, 113, 1, 'SIN CODIGO', 'ANGULO CAMA 4\'\' / PQTE 4 UNIDADES', '2.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1489, 21, 113, 1, 'SIN CODIGO', 'ANGULO CAMA 5\'\' / PQTE 4 UNIDADES', '3.00', '10.00', '29.20', '0.00', '0.00', '0.00', '29.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1490, 21, 113, 1, 'SIN CODIGO', 'ANGULO CAMA 6\'\' / PQTE 4 UNIDADES', '3.00', '10.00', '29.90', '0.00', '0.00', '0.00', '29.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1491, 21, 113, 1, 'SIN CODIGO', 'CORTAMAY?LICA TIPO L?PIZ 8MM', '19.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1492, 21, 113, 2, 'SIN CODIGO', 'NYLON VERDE 0.60MM ARATY', '5.00', '10.00', '30.40', '0.00', '0.00', '0.00', '30.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1493, 21, 113, 1, 'SIN CODIGO', 'SPLITER 1 ENTRADA 4 SALIDAS', '4.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1494, 21, 113, 1, 'SIN CODIGO', 'SET DADOS C/RACHE X 40 PIEZAS', '0.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1495, 21, 113, 1, 'SIN CODIGO', 'DADO X UNIDAD 8, 10, 11, 12, 13 ? 14', '13.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1496, 21, 114, 1, 'SIN CODIGO', 'TAPON OIDOS', '0.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1497, 21, 47, 1, 'SIN CODIGO', 'TEE DESAGUE 3\'\' X 2\'\'', '14.00', '10.00', '30.40', '0.00', '0.00', '0.00', '30.40', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1498, 21, 51, 1, 'SIN CODIGO', 'YEE DESAGUE 3\'\' X 2\'\'', '4.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1499, 21, 140, 2, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 12 - INDECO X METRO', '31.00', '10.00', '29.70', '0.00', '0.00', '0.00', '29.70', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1500, 21, 140, 5, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 12 - INDECO X ROLLO', '4.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1501, 21, 113, 1, 'SIN CODIGO', 'CHAPA FORTE C-230 / 3 GOLPES', '0.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1502, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 63 AMPERIOS', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1503, 21, 140, 1, 'SIN CODIGO', 'LLAVE DIFERENCIAL 32AMP', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1504, 21, 140, 1, 'SIN CODIGO', 'LLAVE DIFERENCIAL 40AMP', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1505, 21, 120, 1, 'SIN CODIGO', 'ELECTRONIVEL P/TANQUES 3MTS 15 AMP', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1506, 21, 113, 1, 'SIN CODIGO', 'CANDADO FORTE F50', '3.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1507, 21, 113, 1, 'SIN CODIGO', 'CANDADO FORTE F60', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1508, 21, 113, 2, 'SIN CODIGO', 'CORDEL VERDE PARA ROPA X MT', '0.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1509, 21, 141, 1, 'SIN CODIGO', 'FOCO LED PHILIPS / LUZ FRIA / E27 - 12W', '19.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1510, 21, 141, 1, 'SIN CODIGO', 'FOCO LED DICROICO LUZ BLANCA', '6.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1511, 21, 113, 1, 'SIN CODIGO', 'HOZ', '11.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1512, 21, 113, 1, 'SIN CODIGO', 'PICO 5LBS C/MANGO TRAMONTINA', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1513, 21, 113, 1, 'SIN CODIGO', 'TIJERA PODAR 21CMS', '2.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1514, 21, 113, 1, 'SIN CODIGO', 'MACHETE SABLE 17\'\'', '2.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1515, 21, 11, 1, 'SIN CODIGO', 'BROCA MADERA 3/16 UNIDAD', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1516, 21, 74, 1, 'SIN CODIGO', 'COMBA MANGO MADERA 4LB', '0.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1517, 21, 113, 1, 'SIN CODIGO', 'LLAVE ALLEN (HEXAGONAL) SET 9PIEZAS', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1518, 21, 113, 1, 'SIN CODIGO', 'LLAVE ALLEN (HEXAGONAL) 1.5/2/2.5mm', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1519, 21, 113, 1, 'SIN CODIGO', 'LLAVE ALLEN (HEXAGONAL) 3 ? 4mm', '3.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1520, 21, 113, 1, 'SIN CODIGO', 'LLAVE ALLEN (HEXAGONAL) 5 ? 6mm', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1521, 21, 113, 1, 'SIN CODIGO', 'LLAVE ALLEN (HEXAGONAL) 8 ? 10mm', '3.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1522, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA FIERRO 6 FILAS PLASTICO', '25.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1523, 21, 113, 1, 'SIN CODIGO', 'GATA HIDRAULICA 2TN', '1.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1524, 21, 113, 1, 'SIN CODIGO', 'CABALLETE 3TN PAR', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1525, 21, 113, 1, 'SIN CODIGO', 'LLAVE RUEDAS 17X19X21X23', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1526, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA TRENZADA 3\'\'', '1.00', '10.00', '28.46', '0.00', '0.00', '0.00', '28.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1527, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA 5\'\'', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1528, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 4\'\' DORADA', '10.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1529, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 5\'\' DORADA', '9.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1530, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 7\'\' DORADA', '5.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1531, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 4\'\' TRENZADA', '7.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1532, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA REDONDA 5\'\' TRENZADA', '10.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1533, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1 1/4\'\' C/ROSCA', '24.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1534, 21, 140, 1, 'SIN CODIGO', 'EXTENSION AMARILLA 3MTS, 3TOMAS', '4.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1535, 21, 140, 1, 'SIN CODIGO', 'EXTENSION 2MTS, 3TOMAS WERKEN', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1536, 21, 113, 1, 'SIN CODIGO', 'LLANTA CARRETILLA T/ TRACTOR', '3.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1537, 21, 113, 1, 'SIN CODIGO', 'LLANTA CARRETILLA C/ARO T/HOJA', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1538, 21, 5, 1, 'SIN CODIGO', 'YESO 18 K', '1.00', '10.00', '30.60', '0.00', '0.00', '0.00', '30.60', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1539, 21, 99, 1, 'SIN CODIGO', 'PICO GANSO FLEXIBLE PUNTA CHICA MOD Z', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1540, 21, 70, 1, 'SIN CODIGO', 'SILICONA AUTOMOTRIZ X 50GR KNAUFF', '13.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1541, 21, 74, 1, 'SIN CODIGO', 'COMBA MANGO MADERA 4LB', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1542, 21, 113, 1, 'SIN CODIGO', 'MACHETE CA?ERO 14\'\' C/GANCHO', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1543, 21, 113, 1, 'SIN CODIGO', 'CHAPA VITRINA', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1544, 21, 114, 1, 'SIN CODIGO', 'CARETA SOLDAR', '4.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1545, 21, 113, 1, 'SIN CODIGO', 'INFLADOR 23\'\'', '2.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1546, 21, 113, 1, 'SIN CODIGO', 'CAMARA LLANTA CARRETILLA', '4.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1547, 21, 115, 1, 'SIN CODIGO', 'SINOLIT X 25 KG CPP', '10.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1548, 21, 140, 1, 'SIN CODIGO', 'UNION CABLE', '46.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1549, 21, 113, 1, 'SIN CODIGO', 'TERMO 1LT THERMOS PLOMO', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1550, 21, 106, 1, 'SIN CODIGO', 'RACK BA?O', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1551, 21, 113, 1, 'SIN CODIGO', 'CAJA DESAGUE HUECO CONCRETO', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1552, 21, 142, 1, 'SIN CODIGO', 'CAJA DESAGUE CUERPO CONCRETO', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1553, 21, 142, 1, 'SIN CODIGO', 'CAJA DESAGUE MARCO Y TAPA CONCRETO', '0.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1554, 21, 142, 1, 'SIN CODIGO', 'AGUA AGUA CONCRETO', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1555, 21, 142, 1, 'SIN CODIGO', 'CAJA AGUA MARCO Y TAPA CONCRETO', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1556, 21, 105, 1, 'SIN CODIGO', 'CAJA AGUA CUERPO CONCRETO', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1557, 21, 113, 1, 'SIN CODIGO', 'AMOLADORA 4 1/2 820W-BAUKER', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1558, 21, 45, 1, 'SIN CODIGO', 'TEE AGUA 1 A 1/2', '17.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1559, 21, 140, 5, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 14 - INDECO ORIGINAL X METRO', '59.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1560, 21, 128, 1, 'SIN CODIGO', 'PERFIL ALUMINIO 9.5 X 2.4 MTS', '13.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1561, 21, 137, 1, 'SIN CODIGO', 'TECNOPOR / CASETON 12X30X120CMS', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1562, 21, 110, 1, 'SIN CODIGO', 'CAJA PASE 200x200 S/CHUPON', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1563, 21, 110, 1, 'SIN CODIGO', 'CAJA PASE 200x155x80', '12.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1564, 21, 101, 1, 'SIN CODIGO', 'LLAVE DUCHA ACRILICA -FAVINSA', '9.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1565, 21, 92, 1, 'SIN CODIGO', 'CA?O LAVATORIO ACRILICO - FAVINSA', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1566, 21, 125, 3, 'SIN CODIGO', 'FRAGUA ROJO BERMILLON EZEBOL', '5.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1567, 21, 125, 3, 'SIN CODIGO', 'FRAGUA NEGRA EZEBOL', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1568, 21, 123, 3, 'SIN CODIGO', 'FRAGUA GRANIZO CELIMA', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1569, 21, 123, 3, 'SIN CODIGO', 'FRAGUA AZUL ACERO', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1570, 21, 70, 1, 'SIN CODIGO', 'PEG EMPAQUETADURA 1', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1571, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 2 TOMAS ECONOMICO PARA EMPOTRA HOME LIGHT', '22.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1572, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR + TOMACORRIENTE HOME LIGHT', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1573, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE INDUSTRIAL SIMPLE HOME LIGTH', '10.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1574, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE INDUSTRIAL C/TIERRA HOME LIGHT', '14.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1575, 21, 106, 1, 'SIN CODIGO', 'ACC.SANITARIO TANQUE ONE PIECE  CON DESC. DUAL', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1576, 21, 99, 1, 'SIN CODIGO', 'LLAVE DUCHA MODELO D', '4.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1577, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1 1/2 C/ ROSCA', '4.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1578, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 4 C/ROSCA', '2.00', '10.00', '29.50', '0.00', '0.00', '0.00', '29.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1579, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1 1/2 PRESION', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1580, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 1 1/2 PRESION', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1581, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 2\'\' PRESION', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1582, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 2\'\' PRESION', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1583, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 3/4 PRESION', '19.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1584, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TANQUE TOP PIECE', '1.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1585, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TANQUE TOP PIECE INGRESO AGUA', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1586, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 60MM', '5.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1587, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 70MM', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1588, 21, 113, 1, 'SIN CODIGO', 'RASTRILLO 16 DIENTES C/MANGO', '1.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1589, 21, 113, 1, 'SIN CODIGO', 'INFLADOR  PEDAL', '3.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1590, 21, 140, 1, 'SIN CODIGO', 'FOCO LED 12W HOM LIGHT', '31.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1591, 21, 140, 1, 'SIN CODIGO', 'FOCO LED 18W HOME LIGHT', '11.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1592, 21, 140, 1, 'SIN CODIGO', 'FOCO LED 26W HOME LIGHT', '12.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1593, 21, 140, 1, 'SIN CODIGO', 'FOCO LED 40W HOME LIGHT15.8166', '4.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1594, 21, 140, 1, 'SIN CODIGO', 'FOCO LED DELUXE 26 W GLOBO', '5.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1595, 21, 70, 1, 'SIN CODIGO', 'WD-40', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1596, 21, 113, 1, 'SIN CODIGO', 'LLAVE FRANCESA 8', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1597, 21, 113, 1, 'SIN CODIGO', 'LLAVE FRANCESA 10', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1598, 21, 85, 1, 'SIN CODIGO', 'WINCHA 5M ADRIANO CON FORRO', '24.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1599, 21, 113, 1, 'SIN CODIGO', 'ANTENA PARA TV', '4.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1600, 21, 113, 1, 'SIN CODIGO', 'LLAVE BOCA Y CORONA ECONOMICA 15  FERRAWYY', '13.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1601, 21, 113, 1, 'SIN CODIGO', 'TOMACORRIENTE 1 P/SOBREPONER', '15.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1602, 21, 113, 1, 'SIN CODIGO', 'INTERRUPTOR DOBLE P/EMPOTRAR', '23.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1603, 21, 113, 1, 'SIN CODIGO', 'GUANTE NYLON RECUBIERTA CON POLIURETANO GRIS  TELA GOMA', '1.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1604, 21, 140, 1, 'SIN CODIGO', 'RESISTENCIA ORIGINAL DUCHA LORENZETTI', '2.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1605, 21, 113, 2, 'SIN CODIGO', 'PLASTICO 1.5MTSX2', '77.10', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1606, 21, 112, 1, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 12 - INDECO ORIGINAL', '4.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1607, 21, 112, 1, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 10 - INDECO ORIGINAL', '4.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1608, 21, 113, 1, 'SIN CODIGO', 'SOCKET OVAL BLANCO ORIGINAL TICINO', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1609, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 1/2 ACEROS AREQUIPA', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1610, 21, 67, 1, 'SIN CODIGO', 'ALUZINC AZUL', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1611, 21, 137, 1, 'SIN CODIGO', 'KING KON 18 H-TAYZON - SAN PEDRO', '3734.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1612, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY CELESTE  946ml (1/4)', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1613, 21, 113, 1, 'SIN CODIGO', 'CHAPA YALE 1010 / 3 GOLPES', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1614, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO ACERO INOX', '2.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1615, 21, 7, 1, 'SIN CODIGO', 'CLAVO MADERA 6\'\' (KILO)', '18.17', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1616, 21, 7, 1, 'SIN CODIGO', 'CLAVO MADERA .3/4\'\' (KILO)', '8.67', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1617, 21, 7, 1, 'SIN CODIGO', 'CLAVO MADERA .1/2\'\' (KILO)', '12.32', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1618, 21, 3, 1, 'SIN CODIGO', 'ALAMBRE GALVANIZADO N14', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1619, 21, 3, 1, 'SIN CODIGO', 'ALAMBRE DE PUAS X200 MTS+GRAPA - MOTO', '0.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1620, 21, 124, 1, 'SIN CODIGO', 'FRAGUA GRIS PLATA CHEMA', '12.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1621, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 1\'\' x 45', '33.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1622, 21, 112, 2, 'SIN CODIGO', 'CABLE 7 FILAMENTOS N 12 - INDECO X METRO  ORIGINAL', '1.50', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1623, 21, 111, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 20 AMPERI  ORIGINAL     OS', '6.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1624, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 4\'\' (105mm) x 3 PESADO', '112.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1625, 21, 113, 1, 'SIN CODIGO', 'SINOLIT X 5 KG CPP', '11.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1626, 21, 140, 1, 'SIN CODIGO', 'TOMACORRIENTE OR 2 TOMAS P/EMPOTRAR DOMINO SENCIA', '4.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1627, 21, 89, 1, 'SIN CODIGO', 'SOLDADURA CELLOCORD  6011X 1/8', '21.89', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1628, 21, 141, 1, 'SIN CODIGO', 'FOCO PANEL 26W LUZ FRIA', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1629, 21, 106, 1, 'SIN CODIGO', 'LAVATORIO INDIGO BLANCO', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1630, 21, 113, 1, 'SIN CODIGO', 'PILAS DURACEL X PAR AA /AAA', '10.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1631, 21, 113, 1, 'SIN CODIGO', 'PRECINTO NEGRO 400 MM X 4.8 BOLSA GRANDE(100PZ)', '300.00', '10.00', '29.96', '0.00', '0.00', '0.00', '29.96', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1632, 21, 140, 1, 'SIN CODIGO', 'SPOT LED LUZ DIA DICROICO', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1633, 21, 113, 1, 'SIN CODIGO', 'TUBO RECTANGULAR 40MM X 60MM X 2.00MM', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1634, 21, 18, 1, 'SIN CODIGO', 'PERNOS AUTOPERFORANTES 10 X 3/4 PARA CALAMINON', '0.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1635, 21, 113, 1, 'SIN CODIGO', 'BASE ZINCROMATO MAESTRO', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1636, 21, 113, 1, 'SIN CODIGO', 'GALON DE GASOLINA', '0.00', '10.00', '29.96', '0.00', '0.00', '0.00', '29.96', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1637, 21, 140, 1, 'SIN CODIGO', 'INTERRUPTOR 1 TOMA ECONOMICO P/EMPOTRAR BREIKER', '7.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1638, 21, 113, 1, 'SIN CODIGO', 'LAVADERO 1 POZA 96X43CM. NIGARA GRANDE', '3.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1639, 21, 140, 1, 'SIN CODIGO', 'FOCO LED PLATO 16W FSL', '15.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(1640, 21, 140, 1, 'SIN CODIGO', 'FOCO LED BOTELLA 38 WT PHELIX', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1641, 21, 70, 1, 'SIN CODIGO', 'PEG AFRICANO 1/4', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1642, 21, 140, 1, 'SIN CODIGO', 'LINTERNA RECARGABLE 1W', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1643, 21, 92, 1, 'SIN CODIGO', 'CA?O JARDINERO BRONCE PESADO AZURIN', '9.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1644, 21, 106, 1, 'SIN CODIGO', 'URINARIO TREBOL', '2.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1645, 21, 106, 1, 'SIN CODIGO', 'LLAVE URINARIO CON BOTON', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1646, 21, 1, 1, 'SIN CODIGO', 'DADO _ SEPARADOR DE CONCRETO', '100.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1647, 21, 140, 1, 'SIN CODIGO', 'LLAVE DIFERENCIAL 25 AMP ORIGINAL', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1648, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 63 AMPERIOS OR', '2.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1649, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 50 AMPERIOS OR', '2.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1650, 21, 140, 1, 'SIN CODIGO', 'LLAVE TERMICA DE 40 AMPERIOS OR', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1651, 21, 115, 1, 'SIN CODIGO', 'BANDEJA DE PINTURA 9\'\'', '8.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1652, 21, 113, 1, 'SIN CODIGO', 'CARRETILLA5.5 NARANJA DIFESA', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1653, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 4 X 3- PAR', '1.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1654, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 50MM', '1.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1655, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 75MM', '5.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1656, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 38MM', '25.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1657, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 3/16 UNIDAD', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1658, 21, 113, 1, 'SIN CODIGO', 'SPRAY NEGRO MATE', '8.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1659, 21, 113, 1, 'SIN CODIGO', 'ARMELLA CERRADA 1.1/4', '44.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1660, 21, 113, 1, 'SIN CODIGO', 'BALANZA REPOSTERO GRAMERA 5 KG', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1661, 21, 113, 1, 'SIN CODIGO', 'BRILLO LIMPIA METALES', '3.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1662, 21, 113, 1, 'SIN CODIGO', 'CABLE RADIO PESADO', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1663, 21, 113, 1, 'SIN CODIGO', 'CAJA EXTERNA 2X4', '2.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1664, 21, 113, 1, 'SIN CODIGO', 'SOLDADOR DE RESITENCIA 60W (CAUTIL)', '0.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1665, 21, 73, 1, 'SIN CODIGO', 'COLA SINTETICA TEKNO 1KG', '11.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1666, 21, 113, 1, 'SIN CODIGO', 'GRAPA LUZ N 10', '100.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1667, 21, 113, 1, 'SIN CODIGO', 'GRAPA LUZ N 6', '99.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1668, 21, 113, 1, 'SIN CODIGO', 'GRAPA LUZ N 7', '99.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1669, 21, 113, 1, 'SIN CODIGO', 'LAPIZ CARPINTERO', '7.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1670, 21, 113, 1, 'SIN CODIGO', 'LLAVE  TALADRO CHUCK 1/2', '15.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1671, 21, 113, 1, 'SIN CODIGO', 'TIJERA HOJALATERA 12\'\'', '2.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1672, 21, 113, 1, 'SIN CODIGO', 'RADAR AUTOMATICO TAIWANES', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1673, 21, 70, 1, 'SIN CODIGO', 'PEG GOLDEN 1/64 LATITA DORADA', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1674, 21, 113, 1, 'SIN CODIGO', 'RODILLO ANTIGOTEO 9\'\' MELON TORO', '2.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1675, 21, 128, 1, 'SIN CODIGO', 'PERFIL ALUMINIO 11.5 X 2 MTS BRILLOSO (PORCELANATO)', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1676, 21, 8, 1, 'SIN CODIGO', 'CLAVO CEMENTO X CAJA 1/2KG', '10.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1677, 21, 113, 1, 'SIN CODIGO', 'FLUORESCENTE', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1678, 21, 71, 1, 'SIN CODIGO', 'CERAMICA  60X60', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1679, 21, 113, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS C/TRANSPARENTE SOLDIMIX', '1.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1680, 21, 113, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS C/BLANCO SOLDIMI', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1681, 21, 113, 1, 'SIN CODIGO', 'PRECINTO BLANCO 400 MM X 4.8  GRANDE (100 U )', '348.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1682, 21, 87, 1, 'SIN CODIGO', 'DISCO DIAMANTADO TURBO / CONCRETO 4 1/2', '7.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1683, 21, 87, 1, 'SIN CODIGO', 'DISCO RIM CONTINUO CERAMICO PORCELANATO  4\'\'', '14.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1684, 21, 113, 1, 'SIN CODIGO', 'FILM 20\'\' X 2 KG', '0.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1685, 21, 113, 1, 'SIN CODIGO', 'CINTA PARA DUCTO 2\'\' X 32.8', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1686, 21, 113, 1, 'SIN CODIGO', 'PRECINTO  PLASTICO TRANSPA CHICO', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1687, 21, 113, 1, 'SIN CODIGO', 'PRECINTO PLASTICO NEGRO CHICO 3.6X200MM (50PZ)', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1688, 21, 113, 1, 'SIN CODIGO', 'GUANTE AMARILLO  CORRUGADO  TALLA  L', '5.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1689, 21, 70, 1, 'SIN CODIGO', 'SOLDIMIX 05 MINUTOS', '6.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1690, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL 1/2 SWIN VALMAXG', '15.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1691, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 40 MM', '13.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1692, 21, 113, 1, 'SIN CODIGO', 'CANDADO ECONOMICO 30 MM', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1693, 21, 113, 1, 'SIN CODIGO', 'LLAVE TALADRO CHUCK 1/2 TRUPER', '6.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1694, 21, 85, 1, 'SIN CODIGO', 'WINCHA 5 MT PRETUL', '5.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1695, 21, 113, 1, 'SIN CODIGO', 'CAMARA LLANTA CARRETILLA', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1696, 21, 113, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2 CON ROSCA', '33.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1697, 21, 113, 1, 'SIN CODIGO', 'SPRAY DORADO', '4.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1698, 21, 113, 1, 'SIN CODIGO', 'SPRAY AZUL HONDA', '3.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1699, 21, 113, 1, 'SIN CODIGO', 'SPRAY ALUMINIO', '3.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1700, 21, 113, 1, 'SIN CODIGO', 'SPRAY CELESTE', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1701, 21, 113, 1, 'SIN CODIGO', 'SPRAY CELESTE CIELO', '11.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1702, 21, 113, 1, 'SIN CODIGO', 'SPRAY VERDE OSCURO', '4.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1703, 21, 113, 1, 'SIN CODIGO', 'SPRAY MARRON', '8.00', '10.00', '20.50', '0.00', '0.00', '0.00', '20.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1704, 21, 140, 1, 'SIN CODIGO', 'CANALETA LUZ 14 X 24 C/ADHESIVO', '23.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1705, 21, 114, 1, 'SIN CODIGO', 'CASCO SEGURIDAD BLANCO', '5.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1706, 21, 113, 1, 'SIN CODIGO', 'LLANTA CARRETILLA  T/HOJA', '5.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1707, 21, 11, 1, 'SIN CODIGO', 'BROCA MADERA 3 MM', '9.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1708, 21, 113, 1, 'SIN CODIGO', 'TIZAS', '538.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1709, 21, 113, 1, 'SIN CODIGO', 'SET HERRAMIENTAS  CHICO', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1710, 21, 87, 1, 'SIN CODIGO', 'DISCO COPA DESBASTE', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1711, 21, 124, 1, 'SIN CODIGO', 'FRAGUA SIPO MARRON CHEMA', '12.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1712, 21, 140, 1, 'SIN CODIGO', 'FOCO LED BOTELLA 28 WT PHELIX', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1713, 21, 113, 1, 'SIN CODIGO', 'LENTES TRANSPARENTE MODELO GATO', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1714, 21, 113, 1, 'SIN CODIGO', 'ADAPTADOR NARANJA P/TIERRA', '18.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1715, 21, 113, 1, 'SIN CODIGO', 'DUCHA TELEFONO CROMADO 3 TIEMPOS', '5.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1716, 21, 140, 1, 'SIN CODIGO', 'FOCO LED PLATO 28W PROBELCO', '2.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1717, 21, 140, 1, 'SIN CODIGO', 'FOCO LED PLATO 35W BROOK', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1718, 21, 142, 1, 'SIN CODIGO', 'ARENA FINA - POEMAPE M3', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1719, 21, 142, 1, 'SIN CODIGO', 'HORMIGON - POEMAPE M3', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1720, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR REVERSIBLE 6 PUL.', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1721, 21, 113, 1, 'SIN CODIGO', 'PORCELANATO PULIDO HUESO 60X60', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1722, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 24x40 MADERA', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1723, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 22x35 MADERA', '2.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1724, 21, 83, 1, 'SIN CODIGO', 'FROTACHO 20x20 MADERA', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1725, 21, 75, 1, 'SIN CODIGO', 'COMBA CERAMICA GOMA - ANARANJADO', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1726, 21, 18, 1, 'SIN CODIGO', 'PERNO 1/4 x 4', '35.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1727, 21, 140, 1, 'SIN CODIGO', 'FOCO LED VELA E14 LUZ BLANCA / AMARILLA', '4.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1728, 21, 113, 1, 'SIN CODIGO', 'PRECINTO PLASTICO TRANSPA  280X4.8 MEDIANOI', '170.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1729, 21, 130, 1, 'SIN CODIGO', 'SIKA 1X 4L GALON', '22.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1730, 21, 109, 1, 'SIN CODIGO', 'TAPA WATER BLANCO TREBOL', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1731, 21, 113, 1, 'SIN CODIGO', 'CA?O JARDINERO CROMADO M/ROJO1/2  FIJI', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1732, 21, 113, 1, 'SIN CODIGO', 'CHAPA PARA DORMITORIO(3 GOLPE) WINGS', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1733, 21, 107, 1, 'SIN CODIGO', 'TUBO ABASTO- HYDRA  7/8x 1/2', '9.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1734, 21, 113, 1, 'SIN CODIGO', 'ACEITE DE MAQUINA X 128ML GRANDE', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1735, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1\'\' a 3/4\'\' C/ROSCA X FUERA', '15.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1736, 21, 62, 1, 'SIN CODIGO', 'ABRAZADERA DE AGUA 1  A 1/2', '50.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1737, 21, 114, 1, 'SIN CODIGO', 'GUANTE NYLON  LISO  NEGRO POLIURETANO  T/S', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1738, 21, 140, 1, 'SIN CODIGO', 'LAMPARA LED DECOR. 36W HELICE', '1.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1739, 21, 81, 1, 'SIN CODIGO', 'SISAYA 24', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1740, 21, 113, 1, 'SIN CODIGO', 'LLAVE FRANCESA 12\'\'', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1741, 21, 113, 1, 'SIN CODIGO', 'GATA HIDRAULICATIPO BOTELLA', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1742, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 2 X 1 1/2 - PAR - BISA', '10.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1743, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 2 1/2  X 1 3/4- PAR - BISA', '12.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1744, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 3 X 2 - PAR - BISA', '3.50', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1745, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 4 X 3 - PAR', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1746, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA TRENZADA  4\'\'', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1747, 21, 11, 1, 'SIN CODIGO', 'BROCA MADERA 5 MM', '11.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1748, 21, 113, 1, 'SIN CODIGO', 'ESCALERA TIJERA 6 PELD.', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1749, 21, 113, 1, 'SIN CODIGO', 'ESCALERA  TIJERA 5 PELD.', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1750, 21, 113, 1, 'SIN CODIGO', 'SPRAY ROSADO', '8.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1751, 21, 113, 2, 'SIN CODIGO', 'MALLA RASCHEL X MT / 4.2X65%CL', '40.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1752, 21, 113, 1, 'SIN CODIGO', 'CHINCHES CROMADOX 1000', '2814.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1753, 21, 113, 1, 'SIN CODIGO', 'TACHUELA AZUL N6 X 1/2', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1754, 21, 113, 1, 'SIN CODIGO', 'ARMELLA CERRADA 3/4', '53.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1755, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 3/4 DOS OREJAS', '203.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1756, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL CANASTILLA 1', '5.00', '10.00', '30.30', '0.00', '0.00', '0.00', '30.30', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1757, 21, 127, 1, 'SIN CODIGO', 'PERFIL ALUMINIO MATE 9.5 X 2 MTS(PORCELANATO)', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1758, 21, 137, 1, 'SIN CODIGO', 'PARED 39x19x19 cm - PUEMAPE', '500.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1759, 21, 141, 1, 'SIN CODIGO', 'FOCO LED PHILIPS / LUZ CALIDA  / E27 - 10W', '13.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1760, 21, 12, 1, 'SIN CODIGO', 'ESPARRAGO 1/4 X 7\'\' CON TORNILLO Y CAPUCHA', '119.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1761, 21, 113, 1, 'SIN CODIGO', 'TUBO NEGRO RECTA.40MM X 60MMX 1.5MM X 6MT', '0.00', '10.00', '29.96', '0.00', '0.00', '0.00', '29.96', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1762, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT  AZUL 1100 LT', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1763, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT ARENA  600 LT', '1.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1764, 21, 10, 1, 'SIN CODIGO', 'BISAGRA 4 X 3- PAR', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1765, 21, 81, 1, 'SIN CODIGO', 'SISAYA 14\'\'', '2.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1766, 21, 81, 1, 'SIN CODIGO', 'SISAYA 24', '0.00', '10.00', '29.96', '0.00', '0.00', '0.00', '29.96', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1767, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA TRENZADA 3\'\'', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1768, 21, 76, 1, 'SIN CODIGO', 'ESCOBILLA COPA TRENZADA 4\'\'', '3.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1769, 21, 113, 1, 'SIN CODIGO', 'CORTAMAY?LICA TIPO L?PIZ 6MM', '18.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1770, 21, 113, 1, 'SIN CODIGO', 'CORTAMAY?LICA TIPO L?PIZ 10MM', '19.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1771, 21, 113, 1, 'SIN CODIGO', 'PRECINTO NEGRO 4.8 X 200MM CHICO (100UN)', '659.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1772, 21, 113, 1, 'SIN CODIGO', 'PRECINTO BLANCO 4.8 X 200MM CHICO (100UN)', '875.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1773, 21, 113, 1, 'SIN CODIGO', 'TIJERA PODAR 8\'\'', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1774, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT AZUL/NEGRO 600 LT', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1775, 21, 127, 1, 'SIN CODIGO', 'PERFIL MARRON OSCURO', '18.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1776, 21, 71, 1, 'SIN CODIGO', 'PEG CERAMICO BLANCO X KILO', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1777, 21, 72, 1, 'SIN CODIGO', 'CINTA EMBALAJE GRUESA  2 X 55 YDS', '15.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1778, 21, 70, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS  35 G  SOLDIMIX', '5.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1779, 21, 140, 1, 'SIN CODIGO', 'TIMBRE DING DONG', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1780, 21, 114, 1, 'SIN CODIGO', 'CHALECO SEGURIDAD 2 CINTAS REFLECTIVAS', '10.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1781, 21, 114, 1, 'SIN CODIGO', 'FAJA LUMBAR TALLA M', '2.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1782, 21, 114, 1, 'SIN CODIGO', 'FAJA LUMBAR TALLA L', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1783, 21, 114, 1, 'SIN CODIGO', 'CINTA SEGURIDAD AMARILLA', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1784, 21, 114, 1, 'SIN CODIGO', 'CINTA SEGURIDAD ROJA', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1785, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR PLANO 3/16 X 4\'\'', '6.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1786, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR PLANO  3/16 X 6\'\'', '5.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1787, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR EXTRELLA 3/16 X4\'\'', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1788, 21, 113, 1, 'SIN CODIGO', 'DESARMADOR ESTRELLA 3/16 X 6\'\'', '3.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1789, 21, 113, 1, 'SIN CODIGO', 'ACEITE  LUBRICANTE 3X1', '15.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1790, 21, 115, 1, 'SIN CODIGO', 'SILICONA  SPRAY', '4.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1791, 21, 115, 1, 'SIN CODIGO', 'MATA CUCARACHAS SPRAY', '5.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1792, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT ARENA 1100 LT', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1793, 21, 113, 1, 'SIN CODIGO', 'CERROJO N 4 1/2', '10.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1794, 21, 113, 1, 'SIN CODIGO', 'VALVULA GAS SURGE CAJA', '6.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1795, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 4 1/2', '14.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1796, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO 7\'\' 1/16', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1797, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 40', '22.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1798, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 50', '50.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1799, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 100', '99.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1800, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 120', '29.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1801, 21, 118, 1, 'SIN CODIGO', 'CHECK VERTICAL BRONCE C/ MALLA 3/4', '6.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1802, 21, 113, 1, 'SIN CODIGO', 'PLASTICO AZUL CON NEGRO  X 2MT', '103.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1803, 21, 106, 1, 'SIN CODIGO', 'PEDESTAL SENSI DACQUA BLANCO', '4.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1804, 21, 113, 1, 'SIN CODIGO', 'TEMPLE BLANCO PATO', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1805, 21, 115, 1, 'SIN CODIGO', 'RODILLO', '14.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1806, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT NEGRO 1100 LT', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1807, 21, 113, 1, 'SIN CODIGO', 'PROTECTOR DE TOMACORRIENTE', '88.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1808, 21, 113, 1, 'SIN CODIGO', 'TUBO NEGRO RECTA.40MM X 60MMX 2MM X 6MT', '10.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1809, 21, 105, 1, 'SIN CODIGO', 'REGISTRO BRONCE 2', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1810, 21, 70, 1, 'SIN CODIGO', 'PEG OATEY AMARILLO 59ml (1/64)ECONO.', '38.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1811, 21, 12, 1, 'SIN CODIGO', 'ESPARRAGO 1/4 X 8\'\' CON TORNILLO Y CAPUCHA', '173.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1812, 21, 116, 1, 'SIN CODIGO', 'TANQUE ETERNIT CISTERNA 1350 LT EQUIP', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1813, 21, 140, 1, 'SIN CODIGO', 'FOCO LED BOTELLA 12 WAT BROOK', '7.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1814, 21, 92, 1, 'SIN CODIGO', 'CA?O LAVADORA 1/2 CROMADO M7 AZUL OSAKA', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1815, 21, 70, 1, 'SIN CODIGO', 'PEG GOLDEN 1/64  LATITA CELESTE', '18.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1816, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 1\'\'-1/2\'\' C/ROSCA X FUERA', '12.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1817, 21, 106, 1, 'SIN CODIGO', 'ACCES SANITARIO TANQUE ONE/TOP PIECE INGRESO AGUA HYDRA', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1818, 21, 101, 1, 'SIN CODIGO', 'LLAVE MEZCLADORA DUCHA MOD. ALETA  2 LLAVES-RUBINETO', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1819, 21, 92, 1, 'SIN CODIGO', 'CA?O CROMADA 1/2 NIAGARA', '10.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1820, 21, 103, 1, 'SIN CODIGO', 'DUCHA BRAZO ESPA?OLA CIRCULAR PEQUE?A', '6.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1821, 21, 113, 1, 'SIN CODIGO', 'CANDADO FORTE F70', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1822, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1 C/ROSCA', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1823, 21, 113, 1, 'SIN CODIGO', 'BROCHA 1\'\'', '3.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1824, 21, 113, 1, 'SIN CODIGO', 'BROCHA 1 1/2', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1825, 21, 113, 1, 'SIN CODIGO', 'BROCHA 2\'\'', '3.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1826, 21, 113, 1, 'SIN CODIGO', 'BROCHA 2 1/2', '2.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1827, 21, 113, 1, 'SIN CODIGO', 'BROCHA 3', '2.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1828, 21, 113, 1, 'SIN CODIGO', 'BROCHA 4', '0.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1829, 21, 113, 1, 'SIN CODIGO', 'BROCHA 5', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1830, 21, 113, 1, 'SIN CODIGO', 'ALICATE UNIVERSAL  8\'\'', '9.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1831, 21, 113, 1, 'SIN CODIGO', 'LENTES  SEGURIDAD NEGRO', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1832, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 4 TOMAS  3M 16 AWG DE LUXE', '3.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1833, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 3 TOMAS 3M 18 AWG LUXURY', '3.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1834, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 5 TOMAS 3M 18 AWG LUXURY', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1835, 21, 114, 1, 'SIN CODIGO', 'GUANTE NYLON NITRILO LISO NEGRO ANTICORTE T/G', '14.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1836, 21, 113, 1, 'SIN CODIGO', 'BOTA PVC NEGRA 42/43', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1837, 21, 75, 1, 'SIN CODIGO', 'COMBA MANGO FIBRA 14 LB', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1838, 21, 113, 1, 'SIN CODIGO', 'SPRAY VIOLETA', '10.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1839, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 1/2 CON ROSCA', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1840, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 5/16 UNIDAD', '10.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1841, 21, 113, 1, 'SIN CODIGO', 'ROMANA PESCADITO  50 KG', '1.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1842, 21, 113, 1, 'SIN CODIGO', 'CHAPA TRAVEX XT MULTIPUNTO', '1.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1843, 21, 140, 1, 'SIN CODIGO', 'ADAPTADOR MULTIPLE ENTRADA REDONDA', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1844, 21, 113, 1, 'SIN CODIGO', 'CUMBRERA SUPERIOR GRAN ONDA', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1845, 21, 16, 1, 'SIN CODIGO', 'TIRAFON 1/4 X 4 C/CAPUCHON PLASTICO', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1846, 21, 74, 1, 'SIN CODIGO', 'CUMBRERA INFERIOR GRAN ONDA', '0.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1847, 21, 118, 1, 'SIN CODIGO', 'CHECK RELOJ 3/4-CIM', '3.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1848, 21, 118, 1, 'SIN CODIGO', 'CHECK HORIZONTAL SWING 3/4', '2.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1849, 21, 86, 1, 'SIN CODIGO', 'LIMA TRIANGULAR CASCO FIERRO N 8', '4.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1850, 21, 113, 1, 'SIN CODIGO', 'PRESERVANTE PARA MADERA ANYPSA', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1851, 21, 113, 1, 'SIN CODIGO', 'ANILLO DE JEBE 63MM PRESION', '3.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1852, 21, 2, 1, 'SIN CODIGO', 'VARILLA FIERRO 1', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1853, 21, 113, 1, 'SIN CODIGO', 'TRIPLAY', '1.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1854, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 5 POLOS', '10.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1855, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\'-1/2\'\' ROSCA  FUERA  X  ROSCAFUERA', '22.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1856, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 3/4\'\'-1/2\'\' ROSCA FUERA 3/4 X PRESION  1/2', '25.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1857, 21, 18, 1, 'SIN CODIGO', 'PERNO 5/16  x 1', '0.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1858, 21, 18, 1, 'SIN CODIGO', 'PERNO 5 /16 x 1 1/2', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1859, 21, 18, 1, 'SIN CODIGO', 'PERNO 5/16 x 2', '85.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1860, 21, 18, 1, 'SIN CODIGO', 'PERNO 5/16 x 2 1/2', '97.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1861, 21, 18, 1, 'SIN CODIGO', 'PERNO 5/16 x 3', '89.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1862, 21, 20, 1, 'SIN CODIGO', 'TUERCA 5/16', '418.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1863, 21, 113, 1, 'SIN CODIGO', 'ANILLO PLANO 1/4', '301.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1864, 21, 113, 1, 'SIN CODIGO', 'ANILLO PLANO 5/16', '123.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1865, 21, 19, 1, 'SIN CODIGO', 'TORNILLO AUTORROSCANTE  1', '396.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1866, 21, 19, 1, 'SIN CODIGO', 'TORNILLO DORADO  0.45 X  1\'\'', '58.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1867, 21, 19, 1, 'SIN CODIGO', 'TORNILLO DORADO 0.45 X 1 1/2', '146.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1868, 21, 19, 1, 'SIN CODIGO', 'TORNILLO DORADO  0.45 X 2', '420.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1869, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 2 POLOS', '10.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1870, 21, 110, 1, 'SIN CODIGO', 'CAJA EMPOTRAR 8 POLOS', '5.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1871, 21, 113, 1, 'SIN CODIGO', 'RASTRILLO 16 DIENTES C/MANGO VELKAS', '2.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1872, 21, 87, 1, 'SIN CODIGO', 'DISCO CORTE  CONCRETO DIAMANTADO SEGMENTADO ABIERTO 7\'\' NORTON', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');
INSERT INTO `producto` (`idproducto`, `idsucursal`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `stock`, `stock_minimo`, `precio`, `precioB`, `precioC`, `precioD`, `preciocigv`, `precio_compra`, `fecha`, `descripcion`, `imagen`, `condicion`, `modelo`, `numserie`, `proigv`, `percha`, `fechac`) VALUES
(1873, 21, 87, 1, 'SIN CODIGO', 'DISCO CORTE CONCRETO DIAMANTADO SEGMENTADO ABIERTO 4 1/2\'\' NORTON', '6.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1874, 21, 128, 1, 'SIN CODIGO', 'CANTONERA ALUMINIO 1 1/2', '12.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1875, 21, 113, 1, 'SIN CODIGO', 'ALDABA 3 \'\'', '8.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1876, 21, 140, 1, 'SIN CODIGO', 'FOCO LED  12W KUHN', '0.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1877, 21, 70, 1, 'SIN CODIGO', 'PEG PEGATODO 1/32', '5.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1878, 21, 99, 1, 'SIN CODIGO', 'CA?O LAVATORIO  CROMADO TREBOL', '4.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1879, 21, 113, 1, 'SIN CODIGO', 'MANGUERA VERDE REFORZADA 5/8 PULG', '153.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1880, 21, 140, 1, 'SIN CODIGO', 'SUPRESOR DE PICOS 4 TOMAS C/INTERRUPTOR INDIVIDUAL E INDICADOR', '0.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1881, 21, 113, 1, 'SIN CODIGO', 'ACCES LAVADERO JUEGO TRAMPA PVC FIORI', '11.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1882, 21, 140, 1, 'SIN CODIGO', 'CABLE MELLIZO N 16 X METRO', '35.50', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1883, 21, 134, 1, 'SIN CODIGO', 'LIJA FIERRO 80 ASA', '9.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1884, 21, 140, 1, 'SIN CODIGO', 'CABLE MELLIZO N 12 X METRO', '91.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1885, 21, 113, 1, 'SIN CODIGO', 'SPRAY ANTICORROSIVO GRIS', '16.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1886, 21, 113, 1, 'SIN CODIGO', 'SPRAY GRIS', '6.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1887, 21, 113, 1, 'SIN CODIGO', 'SILICONA MULTIUSOS ANTIHONGOS BLANCO 50G -KNAUFF', '11.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1888, 21, 113, 1, 'SIN CODIGO', 'CINTA DOBLE CONTACTO  24MM X 1.5 M', '5.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1889, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 5/16 UNIDAD  SPRINT MASTER', '10.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1890, 21, 11, 1, 'SIN CODIGO', 'BROCA CONCRETO 1/2 TRUPER', '18.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1891, 21, 67, 1, 'SIN CODIGO', 'PLANCHA EMPASTAR  LISA 11\'\' - MANGO GOMA', '12.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1892, 21, 67, 1, 'SIN CODIGO', 'PLANCHA EMPASTAR LISA 11\'\'', '6.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1893, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA CREMALLERA 1 1/4', '42.00', '10.00', '30.50', '0.00', '0.00', '0.00', '30.50', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1894, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 1/8 TRUPER', '7.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1895, 21, 140, 1, 'SIN CODIGO', 'CABLE MELLIZO N 12 X ROLLO  ORIGINAL X ROLLO', '1.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1896, 21, 101, 1, 'SIN CODIGO', 'DUCHA BRAZO CROMADO 1/2\'\'  GRANDE', '6.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1897, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA CREMALLERA 2\'\'', '47.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1898, 21, 140, 1, 'SIN CODIGO', 'FOCO INCANDECENTE 60W X 100PZ', '10.00', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1899, 21, 113, 1, 'SIN CODIGO', 'SPLITER 1 ENTRADA 3 SALIDAS', '8.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1900, 21, 113, 1, 'SIN CODIGO', 'TIJERA PODAR CESPED/ARBOL', '2.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1901, 21, 113, 1, 'SIN CODIGO', 'ENCHUFE PLANO PLOMO', '8.00', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1902, 21, 113, 1, 'SIN CODIGO', 'GANCHO PARA CORTINA', '490.00', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1903, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PLANO HECHIZO', '0.00', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1904, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PUNTA HECHIZA', '1.00', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1905, 21, 113, 1, 'SIN CODIGO', 'DISCO CONCRETO/CERAMICO CERRADO 4 1/2', '6.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1906, 21, 85, 1, 'SIN CODIGO', 'WINCHA 8 MT ACEROS AREQUIPA', '44.29', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1907, 21, 113, 1, 'SIN CODIGO', 'TEMPLE BLANCO PATO 5 KG', '44.28', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1908, 21, 113, 1, 'SIN CODIGO', 'TAPA TANQUE  ETERNIT', '44.28', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1909, 21, 113, 1, 'SIN CODIGO', 'INFLADOR CROMADO  23\'\'', '44.27', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1910, 21, 113, 1, 'SIN CODIGO', 'INFLADOR PLASTIFICADO NARANJA', '44.26', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1911, 21, 113, 1, 'SIN CODIGO', 'INTERRUPTOR EMPO. SIMPLE MADERA', '44.25', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1912, 21, 113, 1, 'SIN CODIGO', 'INTERRUPTOR EMPO. DOBLE MADERA', '44.25', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1913, 21, 113, 1, 'SIN CODIGO', 'TOMACORRIENTE EMPO SIMPLE MADERA', '44.24', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1914, 21, 113, 1, 'SIN CODIGO', 'TOMACORRIENTE EMPO DOBLE MADERA', '44.23', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1915, 21, 113, 1, 'SIN CODIGO', 'TOMACORRIENTE EMPO TRIPLE MADERA', '44.22', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1916, 21, 113, 1, 'SIN CODIGO', 'INTERRUPTOR EMPO. TRIPLE MADERA', '44.22', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1917, 21, 87, 1, 'SIN CODIGO', 'DISCO FIERRO NUMERO 14', '44.21', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1918, 21, 113, 1, 'SIN CODIGO', 'FILM 20\'\' X 3 KG', '44.20', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1919, 21, 113, 1, 'SIN CODIGO', 'TORNILLO DORADO 4.5 X  1 1/2  (4.5 X35)', '44.19', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1920, 21, 113, 1, 'SIN CODIGO', 'SAPOLIO MATA CUCARACHAS Y HORMIGAS', '44.19', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1921, 21, 113, 1, 'SIN CODIGO', 'SAPOLIO MATA POLILLAS', '44.18', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1922, 21, 113, 1, 'SIN CODIGO', 'SAPOLIO MATA ACAROS', '44.17', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1923, 21, 18, 1, 'SIN CODIGO', 'TORNILLO DORADO 0.5 X 1', '44.16', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1924, 21, 18, 1, 'SIN CODIGO', 'TORNILLO DORADO 0.5 X 1 1/2', '44.16', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1925, 21, 18, 1, 'SIN CODIGO', 'TORNILLO DORADO 0.5 X 2', '44.15', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1926, 21, 18, 1, 'SIN CODIGO', 'TUERCA 1/4', '44.14', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1927, 21, 18, 1, 'SIN CODIGO', 'OCTOBOL 5/32 X 2', '44.13', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1928, 21, 18, 1, 'SIN CODIGO', 'PERNO COCHE 3/8 X 3 1/2', '44.13', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1929, 21, 18, 1, 'SIN CODIGO', 'PERNO COCHE 1/4 X 1 1/4', '44.12', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1930, 21, 18, 1, 'SIN CODIGO', 'PERNO COCHE 5/16 X 2 1/2', '44.11', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1931, 21, 18, 1, 'SIN CODIGO', 'PERNO COCHE 5/16 X 3', '44.10', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1932, 21, 18, 1, 'SIN CODIGO', 'OCTOBOL 5/32 X 2', '44.10', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1933, 21, 18, 1, 'SIN CODIGO', 'PERNO 3/8 X 3', '44.09', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1934, 21, 18, 1, 'SIN CODIGO', 'PERNO 3/8 X 3 1/2', '44.08', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1935, 21, 18, 1, 'SIN CODIGO', 'TUERCA 3/8', '44.07', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1936, 21, 18, 1, 'SIN CODIGO', 'ANILLO 3/8', '44.07', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1937, 21, 18, 1, 'SIN CODIGO', 'PERNO COCHE 1/4 X 2 1/2 + TUERCA', '44.06', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1938, 21, 113, 1, 'SIN CODIGO', 'BOMBA AGUA  1/2 HP  PKM60 PEDROLO', '44.05', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1939, 21, 113, 1, 'SIN CODIGO', 'BASE DE LAVADERO X  PAR', '44.04', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1940, 21, 35, 1, 'SIN CODIGO', 'REDUCCION AGUA 2 A 1/2', '44.04', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1941, 21, 137, 1, 'SIN CODIGO', 'TECNOPOR / CASETON 2.4X120MTS', '44.03', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1942, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO -CERAMICO LISO  7 1/4', '44.02', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1943, 21, 87, 1, 'SIN CODIGO', 'DISCO CONCRETO-CERAMICO ABIERTO DIAMANTADO 9\'\'', '44.01', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1944, 21, 113, 1, 'SIN CODIGO', 'LINTERNA MINERA 7 LED', '44.01', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1945, 21, 113, 1, 'SIN CODIGO', 'EJE DE PAPELERA', '44.00', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1946, 21, 113, 1, 'SIN CODIGO', 'FILM 18\'\' X 20 X 1.45 KG', '43.99', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1947, 21, 113, 1, 'SIN CODIGO', 'RODILLO ANTIGOTEO 9\'\' BLANCO TORO', '43.98', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1948, 21, 87, 1, 'SIN CODIGO', 'DISCO CORTE CONCRETO DIAMANTADO CONTINUO 4 1/2\'\' NORTON', '43.98', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1949, 21, 23, 1, 'SIN CODIGO', 'TUBO DESAGUE 2\'\' (54 mm) 3M PESADO', '43.97', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1950, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 1\'\' UNA OREJAS', '43.96', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1951, 21, 67, 1, 'SIN CODIGO', 'PLANCHA BATIR 8\'\' MANGO GOMA', '43.95', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1952, 21, 113, 1, 'SIN CODIGO', 'MALLA MOSQUETERA VERDE 1.20X 30 MT', '43.95', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1953, 21, 113, 1, 'SIN CODIGO', 'RODILLO PINTOR 9', '43.94', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1954, 21, 113, 1, 'SIN CODIGO', 'RODILLO PINTOR 12 \'\'', '43.93', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1955, 21, 113, 1, 'SIN CODIGO', 'RODILLO PINTOR 7 \'\'', '43.92', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1956, 21, 113, 1, 'SIN CODIGO', 'VASTAGO PARA LLAVE DUCHA', '43.92', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1957, 21, 40, 1, 'SIN CODIGO', 'NIPLE FIERRO 1 x2 1/2', '43.91', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1958, 21, 131, 1, 'SIN CODIGO', 'CALAMINA ONDULADA ROJA 0.22 MMx800MMx3600MM', '43.90', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1959, 21, 113, 2, 'SIN CODIGO', 'ADOQUIN GRIS DE TRANSITO N 8', '43.89', '10.00', '30.25', '0.00', '0.00', '0.00', '30.25', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1960, 21, 113, 1, 'SIN CODIGO', 'CHAPA CANTOL 900 BLINDADA 3 GOLPES', '43.89', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1961, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO A107   FORTE', '43.88', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1962, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO CANTOL  BL 60', '43.87', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1963, 21, 113, 1, 'SIN CODIGO', 'CHAPA FORTE CERRADURA DE EMBUTIR CILINDRO DE ALTA SEGURIDAD( SE ABRE A LA IZQUIERDA)', '43.86', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1964, 21, 113, 1, 'SIN CODIGO', 'CHAPA DORMITORIO BQ07 FORTE NEGRO', '43.86', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1965, 21, 31, 1, 'SIN CODIGO', 'CODO DESAGUE 6\'\' X 90 GRIS', '43.85', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1966, 21, 113, 1, 'SIN CODIGO', 'CHAPA CANTOL 1000 BLINDADA 3 GOLPES', '43.84', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1967, 21, 137, 1, 'SIN CODIGO', 'LADRILLO PASTELERO', '43.83', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1968, 21, 113, 1, 'SIN CODIGO', 'SIKA BOOM X 500ML', '43.83', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1969, 21, 113, 1, 'SIN CODIGO', 'SIKAFLEX 11FC PLUS GRIS X 300ML', '43.82', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1970, 21, 113, 1, 'SIN CODIGO', 'SIKADUR 31 HMG ADHESIVO EPOXICO', '43.81', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1971, 21, 113, 1, 'SIN CODIGO', 'UNION UNIVERSAL 4 C/ROSCA', '43.80', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1972, 21, 113, 1, 'SIN CODIGO', 'SIKAFLEX 11 FC BLANCO X 300 ML', '43.80', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1973, 21, 93, 1, 'SIN CODIGO', 'LLAVE PASO PVC 2-SANKING A PRESION', '43.79', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1974, 21, 56, 1, 'SIN CODIGO', 'UNION UNIVERSAL 2\'\' PRESION', '43.78', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1975, 21, 113, 1, 'SIN CODIGO', 'ARMELLA CERRADA 2', '43.77', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1976, 21, 113, 1, 'SIN CODIGO', 'ESPATULA N 5 MANGO MADERA', '43.77', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1977, 21, 113, 1, 'SIN CODIGO', 'LINTERNA DE 7 LED A PILAS 2AA', '43.76', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1978, 21, 113, 1, 'SIN CODIGO', 'TUBO RECTANGULAR 40MM X 80MM X 2.5 MM X 6', '43.75', '10.00', '30.80', '0.00', '0.00', '0.00', '30.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1979, 21, 113, 1, 'SIN CODIGO', 'SIKADUR 31 HMG ADHESIVO EPOXICO 5 KG', '43.74', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1980, 21, 113, 1, 'SIN CODIGO', 'GUANTE AMARILLO C/PALMA LATEX', '43.74', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1981, 21, 113, 1, 'SIN CODIGO', 'PROTECTOR DE AUDIO OREJERA', '43.73', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1982, 21, 113, 1, 'SIN CODIGO', 'PROTECTOR DE AUDIO TAPON DE OIDO', '43.72', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1983, 21, 12, 1, 'SIN CODIGO', 'ESPARRAGO 1/4 X 9\'\' CON TORNILLO Y CAPUCHA', '43.71', '10.00', '30.20', '0.00', '0.00', '0.00', '30.20', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1984, 21, 113, 1, 'SIN CODIGO', 'SET PUNTERAS PZ3', '43.71', '10.00', '30.00', '0.00', '0.00', '0.00', '30.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1985, 21, 113, 1, 'SIN CODIGO', 'BROCA CONCRETO 1/2 X 60', '43.70', '10.00', '31.00', '0.00', '0.00', '0.00', '31.00', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1986, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 80', '43.69', '10.00', '29.46', '0.00', '0.00', '0.00', '29.46', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1987, 21, 113, 1, 'SIN CODIGO', 'ADAPTADOR MULTIPLE ENTRADA PLANO', '43.68', '10.00', '30.90', '0.00', '0.00', '0.00', '30.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1988, 21, 113, 1, 'SIN CODIGO', 'PLANCHA BATIR 7\'\' MANGO GOMA', '43.68', '10.00', '31.71', '0.00', '0.00', '0.00', '31.71', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1989, 21, 113, 1, 'SIN CODIGO', 'ZINCROMATO', '43.67', '10.00', '31.71', '0.00', '0.00', '0.00', '31.71', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1990, 21, 113, 1, 'SIN CODIGO', 'ACEITE AFLOJATODO 235 ML', '43.66', '10.00', '31.72', '0.00', '0.00', '0.00', '31.72', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1991, 21, 113, 1, 'SIN CODIGO', 'RAID MATA ZANCUDOS Y MOSCAS', '43.65', '10.00', '31.72', '0.00', '0.00', '0.00', '31.72', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1992, 21, 49, 1, 'SIN CODIGO', 'TEE AGUA FIERRO 2\'\'', '43.65', '10.00', '31.73', '0.00', '0.00', '0.00', '31.73', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1993, 21, 18, 1, 'SIN CODIGO', 'PERNO AUTO HEXAGONAL S/ARANDELA 12 X 1', '43.64', '10.00', '31.73', '0.00', '0.00', '0.00', '31.73', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1994, 21, 34, 1, 'SIN CODIGO', 'CODO FIERRO 1 1/4 X 90', '43.63', '10.00', '31.74', '0.00', '0.00', '0.00', '31.74', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1995, 21, 21, 1, 'SIN CODIGO', 'TUBO CORRUGADO ABIERTO', '43.62', '10.00', '31.74', '0.00', '0.00', '0.00', '31.74', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1996, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 100MM X 67', '43.62', '10.00', '31.75', '0.00', '0.00', '0.00', '31.75', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1997, 21, 31, 1, 'SIN CODIGO', 'CODO AGUA 3\'\' x 45', '43.61', '10.00', '31.75', '0.00', '0.00', '0.00', '31.75', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1998, 21, 113, 1, 'SIN CODIGO', 'TUBO RECTANGULAR 40MM X 80MM X 2 MM X 6', '43.60', '10.00', '31.76', '0.00', '0.00', '0.00', '31.76', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(1999, 21, 113, 1, 'SIN CODIGO', 'TUBO RECTANGULAR 20MM X 40MM X 2.5 MM X 6', '43.59', '10.00', '31.76', '0.00', '0.00', '0.00', '31.76', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2000, 21, 18, 1, 'SIN CODIGO', 'PERNO JOTA 1/4 x 4', '43.59', '10.00', '31.77', '0.00', '0.00', '0.00', '31.77', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2001, 21, 113, 1, 'SIN CODIGO', 'TEE AGUA 4 PULGADAS', '43.58', '10.00', '31.77', '0.00', '0.00', '0.00', '31.77', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2002, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA DE AGUA  4 A 2', '43.57', '10.00', '31.78', '0.00', '0.00', '0.00', '31.78', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2003, 21, 113, 1, 'SIN CODIGO', 'ADAPTADOR DE AGUA 2 PULGADAS', '43.56', '10.00', '31.78', '0.00', '0.00', '0.00', '31.78', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2004, 21, 113, 1, 'SIN CODIGO', 'RAFIA X CONO GRANDE PLANO 4KG', '43.56', '10.00', '31.78', '0.00', '0.00', '0.00', '31.78', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2005, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 1 DOS OREJAS', '43.55', '10.00', '31.79', '0.00', '0.00', '0.00', '31.79', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2006, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA TUBO 2 DOS OREJAS', '43.54', '10.00', '31.79', '0.00', '0.00', '0.00', '31.79', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2007, 21, 113, 1, 'SIN CODIGO', 'ABRAZADERA TUBO4 DOS OREJAS', '43.53', '10.00', '31.80', '0.00', '0.00', '0.00', '31.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2008, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 5/32', '43.53', '10.00', '31.80', '0.00', '0.00', '0.00', '31.80', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2009, 21, 11, 1, 'SIN CODIGO', 'BROCA FIERRO 1/8', '43.52', '10.00', '31.81', '0.00', '0.00', '0.00', '31.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2010, 21, 113, 1, 'SIN CODIGO', 'MASILLA PLASTICA BONFLEX ANYPSA', '43.51', '10.00', '31.81', '0.00', '0.00', '0.00', '31.81', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2011, 21, 113, 1, 'SIN CODIGO', 'CANTONERA ALUMINIO 2', '43.50', '10.00', '31.82', '0.00', '0.00', '0.00', '31.82', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2012, 21, 113, 1, 'SIN CODIGO', 'BUSHING BRONCE 1/2 A 1 1/4', '43.50', '10.00', '31.82', '0.00', '0.00', '0.00', '31.82', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2013, 21, 113, 1, 'SIN CODIGO', 'GUANTES NEGRO T/9', '43.49', '10.00', '31.83', '0.00', '0.00', '0.00', '31.83', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2014, 21, 113, 1, 'SIN CODIGO', 'LLAVE FIERRO 1\'\'', '43.48', '10.00', '31.83', '0.00', '0.00', '0.00', '31.83', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2015, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PUNTA', '43.47', '10.00', '31.84', '0.00', '0.00', '0.00', '31.84', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2016, 21, 113, 1, 'SIN CODIGO', 'CINCEL FIERRO 3/4 PLANO', '43.47', '10.00', '31.84', '0.00', '0.00', '0.00', '31.84', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2017, 21, 113, 1, 'SIN CODIGO', 'TORNILLO DORADO 6 X 50', '43.46', '10.00', '31.85', '0.00', '0.00', '0.00', '31.85', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2018, 21, 113, 1, 'SIN CODIGO', 'MALLA METALICA VERDE 1/2 X MT', '43.45', '10.00', '31.85', '0.00', '0.00', '0.00', '31.85', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2019, 21, 113, 1, 'SIN CODIGO', 'PINTURA BLANCA ESMALTE', '43.44', '10.00', '31.86', '0.00', '0.00', '0.00', '31.86', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2020, 21, 140, 1, 'SIN CODIGO', 'ENCHUFE HEMBRA INDUSTRIAL C/TIERRA HOME LIGHT 46120', '43.44', '10.00', '31.86', '0.00', '0.00', '0.00', '31.86', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2021, 21, 106, 1, 'SIN CODIGO', 'ACC.SANITARIO TANQUE TOP PIECE CON DESC. DUAL', '43.43', '10.00', '31.87', '0.00', '0.00', '0.00', '31.87', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2022, 21, 113, 1, 'SIN CODIGO', 'DRIZA POLIPROPILENO 1/8 1 KG X MT', '43.42', '10.00', '31.87', '0.00', '0.00', '0.00', '31.87', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2023, 21, 113, 1, 'SIN CODIGO', 'LENTES SEGURIDAD TRANSPARENTE', '43.41', '10.00', '31.87', '0.00', '0.00', '0.00', '31.87', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2024, 21, 113, 1, 'SIN CODIGO', 'LLAVE PASO METAL 1 AYRON', '43.41', '10.00', '31.88', '0.00', '0.00', '0.00', '31.88', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2025, 21, 94, 1, 'SIN CODIGO', 'LLAVE PASO METAL 1 CIM', '43.40', '10.00', '31.88', '0.00', '0.00', '0.00', '31.88', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2026, 21, 113, 1, 'SIN CODIGO', 'SPRAY AZUL MARINO', '43.39', '10.00', '31.89', '0.00', '0.00', '0.00', '31.89', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2027, 21, 113, 1, 'SIN CODIGO', 'CINTA TEFLON AMARILLA (AGUA CALIENTE )', '43.38', '10.00', '31.89', '0.00', '0.00', '0.00', '31.89', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2028, 21, 113, 1, 'SIN CODIGO', 'CURADOR MENBRANIL REFORZADO', '43.38', '10.00', '31.90', '0.00', '0.00', '0.00', '31.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2029, 21, 113, 1, 'SIN CODIGO', 'LADRILLO TECHO 15 DIPROLOSA 1.20 X 0.30 X 0.15', '43.37', '10.00', '31.90', '0.00', '0.00', '0.00', '31.90', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2030, 21, 113, 1, 'SIN CODIGO', 'BENCINA 1LT', '43.36', '10.00', '31.91', '0.00', '0.00', '0.00', '31.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2031, 21, 141, 1, 'SIN CODIGO', 'FOCO LED BOTELLA 48 WT PHELIX', '43.35', '10.00', '31.91', '0.00', '0.00', '0.00', '31.91', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2032, 21, 141, 1, 'SIN CODIGO', 'FOCO LED BOTELLA 18 WT PHELIX', '43.35', '10.00', '31.92', '0.00', '0.00', '0.00', '31.92', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2033, 21, 113, 1, 'SIN CODIGO', 'CHAPA FORTE BLINDADA 300/ 3 GOLPES', '43.34', '10.00', '31.92', '0.00', '0.00', '0.00', '31.92', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2034, 21, 113, 1, 'SIN CODIGO', 'CHAPA FORTE CLASICA-240 / 3 GOLPES', '43.33', '10.00', '31.93', '0.00', '0.00', '0.00', '31.93', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2035, 21, 113, 1, 'SIN CODIGO', 'CHAPA FORTE C 226 / 3 GOLPES', '43.32', '10.00', '31.93', '0.00', '0.00', '0.00', '31.93', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2036, 21, 113, 1, 'SIN CODIGO', 'CHAPA TRAVEX 240 / 3 GOLPES', '43.32', '10.00', '31.94', '0.00', '0.00', '0.00', '31.94', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00'),
(2037, 21, 134, 1, 'SIN CODIGO', 'LIJA AGUA 1000', '43.31', '10.00', '31.94', '0.00', '0.00', '0.00', '31.94', '0.00', '0000-00-00', '', 'anonymous.png', 1, '', '', 'Gravada', '', '0000-00-00 00:00:00');

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
(21, 'PRINCIPAL', 'AV. REPÚBLICA DE PANAMÁ NRO. 4050 URB. LIMATAMBO', '952761400', 'S2', 'S2', 'S2', '150200');

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
(1, 'UNIDAD', 1),
(2, 'METRO', 1),
(3, 'KILOGRAMO', 1),
(4, 'LITRO', 1),
(5, 'ROLLO', 1),
(6, 'BOLSA', 1),
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
(1, 1, 'admin', '7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358', 0, 1);

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
(136, 1, 1),
(137, 1, 2),
(138, 1, 3),
(139, 1, 4),
(140, 1, 5),
(141, 1, 6),
(142, 1, 7),
(143, 1, 8),
(144, 30, 1),
(145, 30, 2),
(146, 30, 3),
(147, 30, 4),
(148, 30, 5);

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
  `banco` varchar(250) DEFAULT NULL,
  `montoPagado` decimal(11,2) DEFAULT NULL,
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
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6744;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idcompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `comp_pago`
--
ALTER TABLE `comp_pago`
  MODIFY `id_comp_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `idcpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `datos_negocio`
--
ALTER TABLE `datos_negocio`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `iddetalle_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  MODIFY `iddetalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de la tabla `detalle_cuentas_por_cobrar`
--
ALTER TABLE `detalle_cuentas_por_cobrar`
  MODIFY `iddcpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1340;

--
-- AUTO_INCREMENT de la tabla `motivos_nota`
--
ALTER TABLE `motivos_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `idmovimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idpersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262789;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idsucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `idunidad_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

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
