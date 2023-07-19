<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../configuraciones/Conexion.php";

Class Producto
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementamos un método para insertar registros
	public function insertar($idsucursal,$idcategoria,$idunidad_medida,$codigo,$nombre,$stock,$stockMinimo,$precio,$preciocigv,$precioB,$precioC,$precioD,$precioCompra,$fecha,$descripcion,$imagen,$modelo,$nserie,$tipoigv,$precios,$rangoI,$rangoF,$sucursales)
	{

		if($codigo==""){
			$codigo="SIN CODIGO";
		}

		$num_elementos=0;
		$sw=true;

		while ($num_elementos < count($sucursales))
		{

			$sql="INSERT INTO producto (idsucursal,idcategoria,idunidad_medida,codigo,nombre,stock,stock_minimo,precio,preciocigv,precioB,precioC,precioD,precio_compra,fecha,descripcion,imagen,modelo,numserie,proigv,condicion)
			VALUES ('$sucursales[$num_elementos]','$idcategoria','$idunidad_medida','$codigo','$nombre','$stock','$stockMinimo','$precio','$preciocigv','$precioB','$precioC','$precioD','$precioCompra','$fecha','$descripcion','$imagen','$modelo','$nserie','$tipoigv','1')";
			$idproductonew = ejecutarConsulta_retornarID($sql) or $sw = false;
			$num_elementos=$num_elementos + 1;

		}
		
		$num_elementos2=0;
		$sw2=true;

		if($precios != null){

			while ($num_elementos2 < count($precios))
			{
				$sql2="INSERT INTO precios(idproducto,precio,rangoI,rangoT)
				VALUES ('$idproductonew',$precios[$num_elementos2],'$rangoI[$num_elementos2]','$rangoF[$num_elementos2]')";
				ejecutarConsulta($sql2) or $sw2 = false;
				$num_elementos2=$num_elementos2 + 1;

			}
		}

		return $sw;
	}

	//Implementamos un método para editar registros
	public function editar($idproducto,$idsucursal,$idcategoria,$idunidad_medida,$codigo,$nombre,$stock,$stockMinimo,$precio,$preciocigv,$precioB,$precioC,$precioD,$precioCompra,$fecha,$descripcion,$imagen,$modelo,$nserie,$tipoigv)
	{
		$sql="UPDATE producto SET idsucursal='$idsucursal',idcategoria='$idcategoria',idunidad_medida='$idunidad_medida',codigo='$codigo',nombre='$nombre',stock='$stock',stock_minimo='$stockMinimo',precio='$precio',preciocigv='$preciocigv',precioB='$precioB',precioC='$precioC',precioD='$precioD',precio_compra='$precioCompra',fecha='$fecha',descripcion='$descripcion', modelo='$modelo', numserie='$nserie',proigv='$tipoigv',imagen='$imagen' WHERE idproducto='$idproducto'";
		return ejecutarConsulta($sql);
	}

	public function mostrarStockProductoE($idproductoE)
	{

		$sql="SELECT a.stock, um.nombre as unidadmedida FROM producto a INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida WHERE idproducto = '$idproductoE'";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarStockProductoD($idproductoD)
	{

		$sql="SELECT a.stock, um.nombre as unidadmedida FROM producto a INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida WHERE idproducto = '$idproductoD'";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function desempaquetar($idproductoE,$idproductoD,$cantidadE,$cantidadD,$productoEmpaquetado,$productoDesempaquetar){

		$cantidadEmpaquetado = $productoEmpaquetado - $cantidadE;

		$cantidadTotalDesempacar = ($cantidadE * $cantidadD) + $productoDesempaquetar;

		$actualizarStockEmpaquetado = "UPDATE producto SET stock = '$cantidadEmpaquetado' where idproducto = '$idproductoE'";
		ejecutarConsulta($actualizarStockEmpaquetado);

		$actualizarStockDesempaquetar = "UPDATE producto SET stock = '$cantidadTotalDesempacar' where idproducto = '$idproductoD'";

		return ejecutarConsulta($actualizarStockDesempaquetar);
	}

	public function trasladar($almacenOrigen,$almacenDestino,$productoTrasladado,$productoTrasladar,$cantidadTrasladar){

		$trasladarM = "UPDATE producto SET stock = stock - '$cantidadTrasladar' where idproducto = '$productoTrasladado' AND  idsucursal = '$almacenOrigen'";
		ejecutarConsulta($trasladarM);

		$trasladar = "UPDATE producto SET stock = stock + '$cantidadTrasladar' where idproducto = '$productoTrasladar' AND  idsucursal = '$almacenDestino'";
		return ejecutarConsulta($trasladar);

	}
	

	//Implementamos un método para desactivar registros
	public function desactivar($idproducto)
	{
		$sql="UPDATE producto SET condicion='0' WHERE idproducto='$idproducto'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para activar registros
	public function activar($idproducto)
	{
		$sql="UPDATE producto SET condicion='1' WHERE idproducto='$idproducto'";
		return ejecutarConsulta($sql);
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function mostrar($idproducto)
	{
		$sql="SELECT * FROM producto WHERE idproducto='$idproducto'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function porcentaje($idcategoria)
	{
		$sql="SELECT * FROM categoria WHERE idcategoria='$idcategoria'";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function mostrarProducto($idproducto){
		$sql="SELECT * from producto p WHERE p.idproducto = '$idproducto'";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function listarsucursales()
	{
		$sql="SELECT * FROM sucursal";
		return ejecutarConsulta($sql);		
	}

	public function detallePrecios($idproducto){

		$sql="SELECT * FROM precios WHERE idproducto ='$idproducto'";
        return ejecutarConsulta($sql);
		
	}

	public function listarKardex($idproducto){
		$sql="select date_format(c.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha, CONCAT('Compra Nacional') as motivo,concat_ws('-', c.serie_comprobante, c.num_comprobante) as comprobante, dt.cantidad as cantidad, CONCAT('0') as salida, dt.precio_compra as precio,
		format(dt.precio_compra * dt.cantidad,2) as valor, CONCAT('0') as stock, CONCAT('0') as valorexis
		from compra c
		INNER JOIN detalle_compra dt
		ON c.idcompra = dt.idcompra
		where dt.idproducto = '$idproducto' AND c.tipo_c = 'Compra'
		
		UNION ALL
		
		select date_format(c.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha, CONCAT('Venta Nacional') as motivo,concat_ws('-', c.serie_comprobante, c.num_comprobante) as comprobante, CONCAT('0') as cantidad,  dt.cantidad as salida, p.precio_compra as precio,
		format(p.precio_compra * dt.cantidad,2) as valor, CONCAT('0') as stock, CONCAT('0') as valorexis
		from venta c
		INNER JOIN detalle_venta dt
		ON c.idventa = dt.idventa
		INNER JOIN producto p
		ON dt.idproducto = p.idproducto
		where dt.tipo != 'generar' AND dt.idproducto = '$idproducto'
		
		ORDER BY fecha asc";
		return ejecutarConsulta($sql);
	}

	public function listar4()
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida
		WHERE c.nombre = 'SERVICIO'
		ORDER BY a.idproducto DESC";
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros
	public function listar()
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida
		WHERE c.nombre != 'SERVICIO'
		ORDER BY a.idproducto DESC";
		return ejecutarConsulta($sql);		
	}

	public function listarServicio()
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida
		WHERE c.nombre = 'SERVICIO'
		ORDER BY a.idproducto DESC";
		return ejecutarConsulta($sql);		
	}

	public function listarS($idsucursal)
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida
		WHERE a.idsucursal = '$idsucursal'
		ORDER BY a.idproducto DESC";
		return ejecutarConsulta($sql);		
	}

	public function listarS2($idsucursal,$ids)
	{

		if($ids == '0' AND $idsucursal == '' || $idsucursal == 'Todos'){

			$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,a.fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
			FROM producto a 
			INNER JOIN categoria c 
			ON a.idcategoria=c.idcategoria 
			INNER JOIN unidad_medida um 
			ON a.idunidad_medida = um.idunidad_medida
			INNER JOIN sucursal s
			ON s.idsucursal = a.idsucursal
			WHERE c.nombre = 'SERVICIO'
					ORDER BY a.idproducto DESC";

		}else{

			$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,a.fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
			FROM producto a 
			INNER JOIN categoria c 
			ON a.idcategoria=c.idcategoria 
			INNER JOIN unidad_medida um 
			ON a.idunidad_medida = um.idunidad_medida
			INNER JOIN sucursal s
			ON s.idsucursal = a.idsucursal
					WHERE a.idsucursal = '$idsucursal' AND c.nombre = 'SERVICIO'
					ORDER BY a.idproducto DESC";

		}

		
		return ejecutarConsulta($sql);		
	}

	public function listarS3($idsucursal,$ids)
	{

		$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,a.fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
		FROM producto a 
		INNER JOIN categoria c 
		ON a.idcategoria=c.idcategoria 
		INNER JOIN unidad_medida um 
		ON a.idunidad_medida = um.idunidad_medida
		INNER JOIN sucursal s
		ON s.idsucursal = a.idsucursal
				WHERE a.idsucursal = '$ids' AND c.nombre = 'SERVICIO'
				ORDER BY a.idproducto DESC";
		
		return ejecutarConsulta($sql);		
	}

	public function listar2($idsucursal,$ids)
	{

		if($ids == '0' AND $idsucursal == '' || $idsucursal == 'Todos'){

			$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
			FROM producto a 
			INNER JOIN categoria c 
			ON a.idcategoria=c.idcategoria 
			INNER JOIN unidad_medida um 
			ON a.idunidad_medida = um.idunidad_medida
			INNER JOIN sucursal s
			ON s.idsucursal = a.idsucursal
			WHERE c.nombre != 'SERVICIO'
					ORDER BY a.idproducto DESC";

		}else{

			$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,date_format(a.fecha,'%d/%m/%y') as fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
			FROM producto a 
			INNER JOIN categoria c 
			ON a.idcategoria=c.idcategoria 
			INNER JOIN unidad_medida um 
			ON a.idunidad_medida = um.idunidad_medida
			INNER JOIN sucursal s
			ON s.idsucursal = a.idsucursal
			WHERE a.idsucursal = '$idsucursal'
			AND c.nombre != 'SERVICIO'
					ORDER BY a.idproducto DESC";

		}

		
		return ejecutarConsulta($sql);		
	}

	public function listar3($idsucursal,$ids)
	{

		$sql="SELECT a.idproducto,a.idcategoria,s.nombre as almacen,a.idunidad_medida, date_format(a.fechac,'%d/%m/%y | %H:%i:%s %p') as fechac, a.precio, a.precio_compra, um.nombre as unidad,a.fecha,c.nombre as categoria,a.codigo,a.nombre,a.stock, a.stock_minimo, a.numserie,a.descripcion,a.imagen,a.condicion 
		FROM producto a 
		INNER JOIN categoria c 
		ON a.idcategoria=c.idcategoria
		INNER JOIN unidad_medida um 
		ON a.idunidad_medida = um.idunidad_medida
		INNER JOIN sucursal s
		ON s.idsucursal = a.idsucursal
				WHERE a.idsucursal = '$ids' and c.nombre != 'SERVICIO'
				ORDER BY a.idproducto DESC";
		
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros
	public function listarProductosCompra()
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,a.fecha,c.nombre as categoria,um.nombre as unidadmedida,a.codigo,a.nombre,a.stock, a.numserie,a.descripcion,a.precio_compra,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida ORDER BY a.idproducto DESC";
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros activos
	public function listarActivos($idsucursal)
	{
		$sql="SELECT a.idproducto,a.idcategoria,a.idunidad_medida,c.nombre as categoria,um.nombre as unidadmedida,a.codigo,a.nombre,a.stock,a.precio as precio, a.precio_compra,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida WHERE a.condicion='1' AND c.nombre != 'SERVICIO' AND a.idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros activos, su último precio y el stock (vamos a unir con el último registro de la tabla detalle_ingreso)
	public function listarActivosVenta($idsucursal)
	{
		// $sql="SELECT a.idproducto,a.idcategoria,c.nombre as categoria,a.codigo, a.nombre,a.stock,(SELECT precio FROM detalle_compra WHERE idproducto=a.idproducto ORDER BY iddetalle_compra DESC LIMIT 0,1) AS precio,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN Categoria c ON a.idcategoria=c.idcategoria WHERE a.condicion='1'";
		$sql="SELECT a.idproducto,a.idcategoria,um.nombre as unidadmedida,a.idunidad_medida,c.nombre as categoria,a.codigo, a.fecha, a.nombre,a.stock,a.precio as precio_venta, a.precio_compra, a.preciocigv,a.precioB,a.precioC,a.precioD,a.descripcion,a.imagen,a.proigv,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um on a.idunidad_medida = um.idunidad_medida WHERE a.condicion='1' AND c.nombre != 'SERVICIO' AND a.idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);		
	}

	public function listarActivosVenta2($idsucursal)
	{
		// $sql="SELECT a.idproducto,a.idcategoria,c.nombre as categoria,a.codigo, a.nombre,a.stock,(SELECT precio FROM detalle_compra WHERE idproducto=a.idproducto ORDER BY iddetalle_compra DESC LIMIT 0,1) AS precio,a.descripcion,a.imagen,a.condicion FROM producto a INNER JOIN Categoria c ON a.idcategoria=c.idcategoria WHERE a.condicion='1'";
		$sql="SELECT a.idproducto,a.idcategoria,um.nombre as unidadmedida,a.idunidad_medida,c.nombre as categoria,a.codigo, a.fecha, a.nombre,a.stock,a.precio as precio_venta, a.preciocigv,a.precioB,a.precioC,a.precioD,a.descripcion,a.imagen,a.proigv,a.condicion FROM producto a INNER JOIN categoria c ON a.idcategoria=c.idcategoria INNER JOIN unidad_medida um on a.idunidad_medida = um.idunidad_medida WHERE a.condicion='1' AND c.nombre = 'SERVICIO' AND a.idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);		
	}
}

?>