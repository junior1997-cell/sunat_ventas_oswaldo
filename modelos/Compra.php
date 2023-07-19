<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../configuraciones/Conexion.php";

Class Compra
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementamos un método para insertar registros
	//Incluyendo los detalles del ingreso
	public function insertar($idsucursal,$idproveedor,$idpersonal,$tipo_c,$tipo_comprobante,$serie_comprobante,$num_comprobante,$fecha_hora,$impuesto,$total_compra,$formapago,$lugar_entrega,$motivo_compra,$documento,$nota,$comprobanteReferencia,$idproducto,$nombre_producto,$cantidad,$precio_compra,$precio_venta)
	{

		if($tipo_c == 'Orden Compra'){
			$estadoC = 'POR APROBACIÓN';
		}else{
			$estadoC = "";
		}

		if($comprobanteReferencia != ''){

			$sql3 = "UPDATE compra SET estadoC= 'COMPRADO' WHERE idcompra='$comprobanteReferencia'";
			ejecutarConsulta($sql3);

		}

		$sql="INSERT INTO compra (idsucursal,idproveedor,idpersonal,tipo_c,tipo_comprobante,serie_comprobante,num_comprobante,fecha_hora,impuesto,total_compra,formapago,lugar_entrega,motivo_compra,documento,nota,estado,estadoC,documento_rel)
		VALUES ('$idsucursal','$idproveedor','$idpersonal','$tipo_c','$tipo_comprobante','$serie_comprobante','$num_comprobante','$fecha_hora','$impuesto','$total_compra','$formapago','$lugar_entrega','$motivo_compra','$documento','$nota','REGISTRADO','$estadoC','$comprobanteReferencia')";
		//return ejecutarConsulta($sql);
		//ejecutar la funcion de la clase consulta que retorna el id
		//devuelve la llave primaria del ingreso que se ha registrado
		$idingresonew=ejecutarConsulta_retornarID($sql);

		$num_elementos=0;
		$sw=true;
		//determinar cuantos detalles estamos recibiendo en la funcion insertar
		//cuenta cuantos indices tiene el array idproducto
		while ($num_elementos < count($idproducto))
		{
			$sql_detalle = "INSERT INTO detalle_compra(idsucursal,idcompra,idproducto,nombre_producto,cantidad,precio_compra,precio_venta,tipo_c) VALUES ('$idsucursal','$idingresonew', '$idproducto[$num_elementos]','$nombre_producto[$num_elementos]','$cantidad[$num_elementos]','$precio_compra[$num_elementos]','$precio_venta[$num_elementos]','$tipo_c')";
			ejecutarConsulta($sql_detalle) or $sw = false;
			$num_elementos=$num_elementos + 1;
		}

		return $sw;
	}
	
	public function editar($idcompra,$idsucursal,$idproveedor,$tipo_comprobante,$serie_comprobante,$num_comprobante,$fecha_hora,$impuesto,$total_compra,$formapago,$lugar_entrega,$motivo_compra,$documento,$nota,$comprobanteReferencia,$idproducto,$nombre_producto,$cantidad,$precio_compra,$precio_venta,$tipo_c)
	{
		$sql="UPDATE compra SET idsucursal ='$idsucursal', idproveedor='$idproveedor', fecha_hora = '$fecha_hora', impuesto = '$impuesto', total_compra = '$total_compra', formapago = '$formapago', lugar_entrega = '$lugar_entrega', motivo_compra = '$motivo_compra', documento = '$documento', nota = '$nota' WHERE idcompra = '$idcompra'";		

		ejecutarConsulta($sql);

		$sql2 = "DELETE FROM detalle_compra WHERE idcompra='$idcompra'";

		ejecutarConsulta($sql2);

		$num_elementos=0;
		$sw=true;
		//determinar cuantos detalles estamos recibiendo en la funcion insertar
		//cuenta cuantos indices tiene el array idproducto
		while ($num_elementos < count($idproducto))
		{
			$sql_detalle = "INSERT INTO detalle_compra(idsucursal,idcompra,idproducto,nombre_producto,cantidad,precio_compra,precio_venta,tipo_c) VALUES ('$idsucursal','$idcompra', '$idproducto[$num_elementos]','$nombre_producto[$num_elementos]','$cantidad[$num_elementos]','$precio_compra[$num_elementos]','$precio_venta[$num_elementos]','$tipo_c')";
			ejecutarConsulta($sql_detalle) or $sw = false;
			$num_elementos=$num_elementos + 1;
		}

		return $sw;
		
	}

	public function subirImagen($idcompra,$imagen)
	{
		$sql="UPDATE compra SET imagen='$imagen', estado = 'REALIZADO' WHERE idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para anular categorías
	public function aprobar($idcompra)
	{
		$sql="UPDATE compra SET estadoC='APROBADO' WHERE idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para anular categorías
	public function anular($idcompra,$idcompraRef)
	{

		if($idcompraRef != ''){

			$sql="UPDATE compra SET estadoC='APROBADO' WHERE idcompra='$idcompraRef'";
			ejecutarConsulta($sql);

		}else{

			$sql="UPDATE compra SET estadoC='Anulado' WHERE idcompra='$idcompra'";
			ejecutarConsulta($sql);

		}


		$sql2="UPDATE compra SET estado='Anulado' WHERE idcompra='$idcompra'";
		return ejecutarConsulta($sql2);
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function mostrar($idcompra)
	{	
		$sql="SELECT i.idcompra,DATE(i.fecha_hora) as fecha,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE i.idcompra='$idcompra'";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function mostrar2($idcompra)
	{	
		$sql="SELECT i.idcompra,i.idsucursal,DATE(i.fecha_hora) as fecha,i.idproveedor,p.nombre as proveedor,i.estadoC,u.idpersonal,u.nombre as personal,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado,i.formapago,i.lugar_entrega,i.motivo_compra,i.documento,i.nota FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE i.idcompra='$idcompra'";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function compradetalle($idcompra)
	{
		$sql="SELECT di.idcompra,di.idproducto,um.nombre as unidadmedida,a.nombre,di.cantidad,di.precio_compra,di.precio_venta 
			FROM detalle_compra di 
			inner join producto a 
			on di.idproducto=a.idproducto
			inner JOIN unidad_medida um
			on a.idunidad_medida = um.idunidad_medida where di.idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}

	public function listarDetalle($idcompra)
	{
		$sql="SELECT di.idcompra,di.idproducto,a.nombre,di.cantidad,di.precio_compra,di.precio_venta FROM detalle_compra di inner join producto a on di.idproducto=a.idproducto where di.idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}

	public function selectCompras($idsucursal)
	{

		$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c = 'Orden Compra' AND estadoC = 'APROBADO' AND idsucursal = '$idsucursal' ORDER BY i.idcompra desc";
		return ejecutarConsulta($sql);

	}

	//Implementar un método para listar los registros
	public function listarReporte()
	{

		$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c = 'Compra' ORDER BY i.idcompra desc";

		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros
	public function listar($fecha_inicio, $fecha_fin, $idsucursal)
	{

		if ($idsucursal == "Todos") {

			$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado,i.imagen,i.documento_rel FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c = 'Compra' AND DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin' ORDER BY i.idcompra desc";

		}else{

			$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado,i.imagen,i.documento_rel FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c = 'Compra' AND idsucursal = '$idsucursal' AND DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin' ORDER BY i.idcompra desc";

		}

		return ejecutarConsulta($sql);		
	}

	public function listar2($fecha_inicio, $fecha_fin, $idsucursal)
	{
		if ($idsucursal == "Todos") {

			$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado,i.estadoC FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c != 'Compra' AND DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin' ORDER BY i.idcompra desc";

		}else{

			$sql="SELECT i.idcompra,date_format(i.fecha_hora,'%d/%m/%y') as fecha,date_format(i.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex,i.idproveedor,p.nombre as proveedor,u.idpersonal,u.nombre as personal,i.tipo_c,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado,i.estadoC FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE tipo_c != 'Compra' AND DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin' ORDER BY i.idcompra desc";

		}
		return ejecutarConsulta($sql);		
	}

	public function ingresocabecera($idcompra){
		$sql="SELECT i.idcompra,i.idproveedor,p.nombre as proveedor,p.direccion,p.tipo_documento,p.num_documento,p.email,p.telefono,i.idpersonal,u.nombre as personal,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,date(i.fecha_hora) as fecha,i.impuesto,i.total_compra FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE i.idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}

	public function ingresodetalle($idcompra){
		$sql="SELECT a.nombre as producto,um.nombre as unidadmedida,CASE WHEN a.codigo = 'SIN CODIGO' THEN '-' ELSE a.codigo END as codigo,d.cantidad,d.precio_compra,d.precio_venta,(d.cantidad*d.precio_compra) as subtotal FROM detalle_compra d INNER JOIN producto a ON d.idproducto=a.idproducto INNER JOIN unidad_medida um ON a.idunidad_medida = um.idunidad_medida WHERE d.idcompra='$idcompra'";
		return ejecutarConsulta($sql);
	}
}

?>