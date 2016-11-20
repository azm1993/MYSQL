

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Numero_de_Cliente` int(11) NOT NULL,
  `Nombre_del_Cliente` text COLLATE latin1_general_ci,
  `Cedula_de_Ciudadania` bigint(45) DEFAULT NULL,
  `Puntos_Acumulados` int(45) DEFAULT NULL,
  `Descuentos_Realizados` mediumint(45) DEFAULT NULL,
  `Articulos_Comprados` tinyint(45) DEFAULT NULL,
  `Subtotal_de_Compras` bigint(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `NIT_Sucursal` int(11) NOT NULL,
  `Nombre_Sucursal` longtext COLLATE latin1_general_cs,
  `Proveedores` mediumtext COLLATE latin1_general_cs,
  `Precio_Articulo_Proveedores` int(45) DEFAULT NULL,
  `Inventario` bigint(20) DEFAULT NULL,
  `Impuesto_Sucursal` bigint(45) DEFAULT NULL,
  `Servicios_y_Otros` bigint(45) DEFAULT NULL,
  `Perdidas` bigint(45) DEFAULT NULL,
  `Total_Ventas` bigint(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `idVendedores` int(11) NOT NULL,
  `Nombre` mediumtext,
  `Apellidos` longtext,
  `Ventas_Concretadas` smallint(45) DEFAULT NULL,
  `Comision` mediumint(45) DEFAULT NULL,
  `ARP/Riesgos_Profesionales` int(45) DEFAULT NULL,
  `EPS/Caja_de_Compensacion` text,
  `Festivos_y_Domingos` smallint(45) DEFAULT NULL,
  `Banco/Entidad_Financiera` longtext,
  `N.de Cuenta` bigint(20) DEFAULT NULL,
  `Anticipos` int(45) DEFAULT NULL,
  `Descuentos` mediumint(45) DEFAULT NULL,
  `Total_Devengado` bigint(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `Fecha_de_Venta` date DEFAULT NULL,
  `Nombre_Cajero` longtext COLLATE latin1_general_ci,
  `Codigo_de_Barras` bigint(50) DEFAULT NULL,
  `Cantidad_Articulo` smallint(6) DEFAULT NULL,
  `Vendedor` longtext COLLATE latin1_general_ci,
  `Nombre_del_Cliente` longtext COLLATE latin1_general_ci,
  `Nombre_del_Articulo` longtext COLLATE latin1_general_ci,
  `Valor_Individual_del_Articulos` bigint(45) DEFAULT NULL,
  `Descuentos` smallint(45) DEFAULT NULL,
  `Impuesto IVA` double DEFAULT NULL,
  `Subtotal` bigint(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Numero_de_Cliente`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`NIT_Sucursal`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`idVendedores`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
