<?php 
//Inclu��mos inicialmente la conexi��n a la base de datos
require "../configuraciones/Conexion.php";

Class Consultas
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}
	public function comprasfecha($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos"){

			$sql="SELECT DATE(i.fecha_hora) as fecha,u.nombre as personal, p.nombre as proveedor,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin'";

		}else{

			$sql="SELECT DATE(i.fecha_hora) as fecha,u.nombre as personal, p.nombre as proveedor,i.tipo_comprobante,i.serie_comprobante,i.num_comprobante,i.total_compra,i.impuesto,i.estado FROM compra i INNER JOIN persona p ON i.idproveedor=p.idpersona INNER JOIN personal u ON i.idpersonal=u.idpersonal WHERE DATE(i.fecha_hora)>='$fecha_inicio' AND DATE(i.fecha_hora)<='$fecha_fin' AND i.idsucursal = '$idsucursal'";

		}

		return ejecutarConsulta($sql);		
	}

	public function deudasfechacliente($fecha_inicio,$fecha_fin,$idcliente,$idsucursal)
	{

		if($idsucursal == "Todos" AND $idcliente == "Todos"){

			$sql="SELECT v.idcliente,p.nombre as cliente, SUM(cc.deudatotal) as deudatotal
			FROM venta v
			INNER JOIN cuentas_por_cobrar cc
			ON v.idventa = cc.idventa
			INNER JOIN persona p
			ON v.idcliente = p.idpersona
			WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin'
			GROUP BY v.idcliente";

		}else if($idsucursal == "Todos" AND $idcliente != "Todos"){

			$sql="SELECT v.idcliente,p.nombre as cliente, SUM(cc.deudatotal) as deudatotal
			FROM venta v
			INNER JOIN cuentas_por_cobrar cc
			ON v.idventa = cc.idventa
			INNER JOIN persona p
			ON v.idcliente = p.idpersona
			WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idcliente = '$idcliente'
			GROUP BY v.idcliente";

		}else if($idsucursal != "Todos" AND $idcliente == "Todos"){ 
		
			$sql="SELECT v.idcliente,p.nombre as cliente, SUM(cc.deudatotal) as deudatotal
			FROM venta v
			INNER JOIN cuentas_por_cobrar cc
			ON v.idventa = cc.idventa
			INNER JOIN persona p
			ON v.idcliente = p.idpersona
			WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal'
			GROUP BY v.idcliente";
		
		}else{

			$sql="SELECT v.idcliente,p.nombre as cliente, SUM(cc.deudatotal) as deudatotal
			FROM venta v
			INNER JOIN cuentas_por_cobrar cc
			ON v.idventa = cc.idventa
			INNER JOIN persona p
			ON v.idcliente = p.idpersona
			WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal' AND v.idcliente = '$idcliente'
			GROUP BY v.idcliente";

		}

		return ejecutarConsulta($sql);		
	}

	public function ventasfechacliente($fecha_inicio,$fecha_fin,$idcliente,$idsucursal)
	{

		if($idsucursal == "Todos" AND $idcliente == "Todos"){

			$sql="SELECT v.idventa,DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.ventacredito,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";

		}else if($idsucursal == "Todos" AND $idcliente != "Todos"){

			$sql="SELECT v.idventa,DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.ventacredito,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idcliente='$idcliente' AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";

		}else if($idsucursal != "Todos" AND $idcliente == "Todos"){ 
		
			$sql="SELECT v.idventa,DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.ventacredito,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.idsucursal = '$idsucursal'";
		
		}else{

			$sql="SELECT v.idventa,DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.ventacredito,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idcliente='$idcliente' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.idsucursal = '$idsucursal'";

		}

		return ejecutarConsulta($sql);		
	}

	public function ventasfechavendedor($fecha_inicio,$fecha_fin,$idcliente,$idsucursal)
	{
		if($idcliente == "Todos" AND $idsucursal == "Todos"){
			$sql="SELECT DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,round((v.total_venta*(u.porcentaje/100)),2) as porcentaje,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND estado != 'Nota Credito'";
		}else if($idcliente != "Todos" AND $idsucursal == "Todos"){
			$sql="SELECT DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,round((v.total_venta*(u.porcentaje/100)),2) as porcentaje,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND u.idpersonal='$idcliente' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND estado != 'Nota Credito'";
		}else if($idcliente == "Todos" AND $idsucursal != "Todos"){
			$sql="SELECT DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,round((v.total_venta*(u.porcentaje/100)),2) as porcentaje,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.idsucursal = '$idsucursal' AND estado != 'Nota Credito'";
		}else{
			$sql="SELECT DATE(v.fecha_hora) as fecha,u.nombre as personal, p.nombre as cliente,round((v.total_venta*(u.porcentaje/100)),2) as porcentaje,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.idsucursal = '$idsucursal' AND u.idpersonal='$idcliente' AND estado != 'Nota Credito'";
		}
		
		return ejecutarConsulta($sql);		
	}

	public function ventasfechaservicio($fecha_inicio,$fecha_fin,$idproducto,$idcliente,$idsucursal)
	{

		if($idproducto == "Todos" AND $idcliente == "Todos" AND $idsucursal == "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
				WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND c.nombre = 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.documento_rel = ''";

		}else if($idproducto == "Todos" AND $idcliente != "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND pe.idpersonal = '$idcliente' AND v.idsucursal = '$idsucursal' AND c.nombre = 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";

		}else if($idcliente == "Todos" AND $idproducto == "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
			
		}else if($idcliente == "Todos" AND $idproducto != "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal' AND p.idproducto = '$idproducto' AND c.nombre = 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
			
		} else{

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
			INNER JOIN venta v
			ON v.idventa = dv.idventa
			INNER JOIN producto p
			ON p.idproducto = dv.idproducto
			INNER JOIN categoria c
			ON c.idcategoria = p.idcategoria
			INNER JOIN personal pe
			ON pe.idpersonal = v.idPersonal
			INNER JOIN unidad_medida um
			ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND p.idproducto = '$idproducto' AND pe.idpersonal = '$idcliente' AND v.idsucursal = '$idsucursal' AND c.nombre = 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
		}

			return ejecutarConsulta($sql);
				
	}

	public function ventasfechaproducto($fecha_inicio,$fecha_fin,$idproducto,$idcliente,$idsucursal)
	{

		if($idproducto == "Todos" AND $idcliente == "Todos" AND $idsucursal == "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
				WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota') AND v.documento_rel = ''";

		}else if($idproducto == "Todos" AND $idcliente != "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND pe.idpersonal = '$idcliente' AND v.idsucursal = '$idsucursal' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";

		}else if($idcliente == "Todos" AND $idproducto == "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
			
		}else if($idcliente == "Todos" AND $idproducto != "Todos" AND $idsucursal != "Todos"){

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
				INNER JOIN venta v
				ON v.idventa = dv.idventa
				INNER JOIN producto p
				ON p.idproducto = dv.idproducto
				INNER JOIN categoria c
				ON c.idcategoria = p.idcategoria
				INNER JOIN personal pe
				ON pe.idpersonal = v.idPersonal
				INNER JOIN unidad_medida um
				ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND v.idsucursal = '$idsucursal' AND p.idproducto = '$idproducto' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
			
		} else{

			$sql="SELECT v.fecha_hora, p.nombre, um.nombre as unidadmedida,dv.cantidad, (dv.cantidad * dv.precio_venta) as precio, (dv.cantidad * p.precio_compra) as precioCompra, (dv.cantidad * dv.precio_venta) - (dv.cantidad * p.precio_compra) as utilidad, pe.nombre as nombreVendedor
			FROM detalle_venta dv
			INNER JOIN venta v
			ON v.idventa = dv.idventa
			INNER JOIN producto p
			ON p.idproducto = dv.idproducto
			INNER JOIN categoria c
			ON c.idcategoria = p.idcategoria
			INNER JOIN personal pe
			ON pe.idpersonal = v.idPersonal
			INNER JOIN unidad_medida um
			ON p.idunidad_medida = um.idunidad_medida
	        WHERE DATE(v.fecha_hora)>='$fecha_inicio' AND DATE(v.fecha_hora)<='$fecha_fin' AND p.idproducto = '$idproducto' AND pe.idpersonal = '$idcliente' AND v.idsucursal = '$idsucursal' AND c.nombre != 'SERVICIO' AND v.estado IN ('Aceptado', 'Por Enviar', 'Activado') AND v.tipo_comprobante IN ('Factura','Boleta','Nota')";
		}

			return ejecutarConsulta($sql);
				
	}

	public function totalcomprahoy($fecha_inicio,$fecha_fin,$idvendedor,$idsucursal)
	{
		if($idvendedor=="Todos" || $idvendedor == null AND $idsucursal == "Todos" || $idsucursal == null){
			$sql="SELECT IFNULL(SUM(total_compra),0) as total_compra FROM compra WHERE estado != 'Anulado' AND tipo_c='Compra' AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor != "Todos" AND $idsucursal == "Todos"){
			$sql="SELECT IFNULL(SUM(total_compra),0) as total_compra FROM compra WHERE estado != 'Anulado' AND tipo_c='Compra' AND idpersonal = '$idvendedor' AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor == "Todos" AND $idsucursal != "Todos"){
			$sql="SELECT IFNULL(SUM(total_compra),0) as total_compra FROM compra WHERE estado != 'Anulado' AND tipo_c='Compra' AND idsucursal = '$idsucursal' AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else{
			$sql="SELECT IFNULL(SUM(total_compra),0) as total_compra FROM compra WHERE estado != 'Anulado' AND tipo_c='Compra' AND idpersonal = '$idvendedor' AND idsucursal = '$idsucursal' AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}
		return ejecutarConsultaSimpleFila($sql);
	}

	public function totalventahoy($fecha_inicio,$fecha_fin,$idvendedor,$idsucursal)
	{
		if($idvendedor=="Todos" || $idvendedor == null AND $idsucursal == "Todos" || $idsucursal == null){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'No' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor != "Todos" AND $idsucursal == "Todos"){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'No' AND idpersonal = '$idvendedor' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor == "Todos" AND $idsucursal != "Todos"){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'No' AND idsucursal = '$idsucursal' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else{
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'No' AND idpersonal = '$idvendedor' AND idsucursal = '$idsucursal' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}
		return ejecutarConsultaSimpleFila($sql);
	}

	public function totalcuentasporcobrar($fecha_inicio, $fecha_fin, $idvendedor, $idsucursal)
	{
		if($idvendedor=="Todos" || $idvendedor == null AND $idsucursal == "Todos" || $idsucursal == null){
			$sql="SELECT IFNULL(SUM(deudatotal),0) as totaldeuda FROM cuentas_por_cobrar where condicion=1 AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin'";
		}else if($idvendedor != "Todos" AND $idsucursal == "Todos"){	
			$sql="SELECT IFNULL(SUM(deudatotal),0) as totaldeuda FROM cuentas_por_cobrar where condicion=1 AND idpersonal = '$idvendedor' AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin'";
		}else if($idvendedor == "Todos" AND $idsucursal != "Todos"){
			$sql="SELECT IFNULL(SUM(deudatotal),0) as totaldeuda FROM cuentas_por_cobrar where condicion=1 AND idsucursal = '$idsucursal' AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin'";
		}else{
			$sql="SELECT IFNULL(SUM(deudatotal),0) as totaldeuda FROM cuentas_por_cobrar where condicion=1 AND idpersonal = '$idvendedor' AND idsucursal = '$idsucursal' AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin'";
		}
		return ejecutarConsultaSimpleFila($sql);
	}

	public function totalventachoy($fecha_inicio, $fecha_fin, $idvendedor, $idsucursal)
	{
		if($idvendedor=="Todos" || $idvendedor == null AND $idsucursal == "Todos" || $idsucursal == null){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'Si' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor != "Todos" AND $idsucursal == "Todos"){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'Si' AND idsucursal = '$idsucursal' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else if($idvendedor == "Todos" AND $idsucursal != "Todos"){
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'Si' AND idpersonal = '$idvendedor' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}else{
			$sql="SELECT IFNULL(SUM(total_venta),0) as total_venta FROM venta WHERE ventacredito = 'Si' AND idpersonal = '$idvendedor' AND idsucursal = '$idsucursal' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin'";
		}
		return ejecutarConsultaSimpleFila($sql);
	}

	public function totalusuariosr()
	{
		$sql="SELECT IFNULL(count(idpersonal),0) as idpersonal FROM personal";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function totalproveedoresr()
	{
		$sql="SELECT IFNULL(count(idpersona),0) as idpersona FROM persona WHERE tipo_persona='Proveedor'";
		return ejecutarConsultaSimpleFila($sql);
	}

	public function comprasultimos_10dias()
	{
		$sql="SELECT CONCAT(DAY(fecha_hora),'-',DATE_FORMAT(fecha_hora,'%M')) as fecha,SUM(total_compra) as total FROM compra WHERE tipo_c = 'Compra' AND estado != 'Anulado' GROUP by fecha_hora ORDER BY fecha_hora DESC limit 0,10";
		return ejecutarConsulta($sql);
	}

	public function ventasultimos_12meses()
	{
		//Date format -> convertir fecha y hora en un formato de mes
		$sql="SELECT DATE_FORMAT(fecha_hora,'%M') as fecha,SUM(total_venta) as total FROM venta WHERE estado IN('Aceptado','Activado') GROUP by MONTH(fecha_hora) ORDER BY fecha_hora DESC limit 0,12";
		return ejecutarConsulta($sql);
	}

	public function productosmasvendidos()
	{
		//Date format -> convertir fecha y hora en un formato de mes
		$sql="SELECT dv.idproducto,p.nombre as nombre, SUM(dv.cantidad) AS cantidad
		FROM venta v
		inner JOIN detalle_venta dv
		on v.idventa=dv.idventa
		inner join producto p
		on dv.idproducto=p.idproducto
		GROUP BY dv.idproducto
		ORDER BY SUM(dv.cantidad) DESC
		LIMIT 0 , 3";
		return ejecutarConsulta($sql);
	}

	public function stockproductosmasbajos(){
		$sql="SELECT p.idproducto,p.nombre,c.nombre as categoria,p.stock
		FROM producto p
        INNER JOIN categoria c
        on p.idcategoria=c.idcategoria
        WHERE stock<=5 AND c.nombre != 'SERVICIO'
		GROUP BY idproducto
		LIMIT 0 , 5";
		return ejecutarConsulta($sql);
	}

	public function cantidadarticulos(){
	$sql="SELECT COUNT(*) totalar FROM producto WHERE condicion=1";
	return ejecutarConsulta($sql);
	}
	public function totalstock(){
		$sql="SELECT SUM(stock) AS totalstock FROM producto";
		return ejecutarConsulta($sql);
	}

	public function cantidadcategorias(){
		$sql="SELECT COUNT(*) totalca FROM categoria WHERE condicion=1";
		return ejecutarConsulta($sql);
	}

	public function mostrarTotalBoletasCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";

		}


		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalBoletasTCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";


		}else{

			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalFacturasCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";
		
		}else{

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";

		}
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalFacturasTCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";
		
		}else{


			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalNotasVentaCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";
			
		}

		
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalNotasVetnaTCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){
		
			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta";

		}else{

			$sql="SELECT IFNULL( (select sum(total_venta) as total_venta FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')), 0) as total_venta AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalCuentasCobrarVentaCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(dcc.montopagado) as total_venta FROM detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(dcc.fechapago)>='$fecha_inicio' AND DATE(dcc.fechapago)<='$fecha_fin' AND dcc.formapago = 'Efectivo' AND cc.condicion = 1), 0) as total_venta";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(dcc.montopagado) as total_venta FROM detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(dcc.fechapago)>='$fecha_inicio' AND DATE(dcc.fechapago)<='$fecha_fin' AND dcc.formapago = 'Efectivo' AND cc.condicion = 1), 0) as total_venta AND idsucursal='$idsucursal'";

		}
		
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalCuentasCobrarVentaTCaja($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(dcc.montopagado) as total_venta FROM detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(dcc.fechapago)>='$fecha_inicio' AND DATE(dcc.fechapago)<='$fecha_fin' AND dcc.formapago != 'Efectivo' AND cc.condicion = 1), 0) as total_venta";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(dcc.montopagado) as total_venta FROM detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(dcc.fechapago)>='$fecha_inicio' AND DATE(dcc.fechapago)<='$fecha_fin' AND dcc.formapago != 'Efectivo' AND cc.condicion = 1), 0) as total_venta AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalEfectivo($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql = "SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
       ) AS total_venta";

		}else{


			$sql = "SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
       ) AS total_venta AND idsucursal='$idsucursal'";

		}

		
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalTransferencia($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql = "SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       ) AS total_venta";

		}else{

			$sql = "SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       ) AS total_venta AND idsucursal='$idsucursal'";


		}

		
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalIngresos($fecha_inicio,$fecha_fin,$idsucursal)
	{
		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Ingresos'), 0) as totalIngresos";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Ingresos'), 0) as totalIngresos AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTotalEgresos($fecha_inicio,$fecha_fin,$idsucursal)
	{

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Egresos'), 0) as totalEgresos";

		}else{

			$sql="SELECT IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Egresos'), 0) as totalEgresos AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalFacturas($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Factura' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')";

		}else{

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Factura' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalBoletas($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Boleta' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')";

		}else{

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Boleta' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalNotas($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Nota' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')";

		}else{

			$sql="SELECT IFNULL(count(idventa),0) as totalcuentaventa FROM venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND tipo_comprobante = 'Nota' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal'";

		}

		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalCuentas($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT IFNULL(count(idcpc),0) as totalcuentacobrar FROM cuentas_por_cobrar WHERE condicion = 1 AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin'";

		}else{

			$sql="SELECT IFNULL(count(idcpc),0) as totalcuentacobrar FROM cuentas_por_cobrar WHERE condicion = 1 AND DATE(fecharegistro)>='$fecha_inicio' AND DATE(fecharegistro)<='$fecha_fin' AND idsucursal='$idsucursal'";

		}


		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalT($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
			(select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
		   (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
		   (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
		   ) + ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       ) AS totalI";

		}else{

			$sql="SELECT ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') + 
			(select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
		   (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
		   (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
		   ) + ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       ) AS totalI";

		}


		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalEC($fecha_inicio,$fecha_fin,$idsucursal){

		if($idsucursal == "Todos" || $idsucursal == null){

			$sql="SELECT (IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Ingresos'), 0) + 
			((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
			(select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
		   (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
		   (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
		   ) + ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado')) +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       )) - IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Egresos'), 0) AS totalEC";

		}else{

			$sql="SELECT (IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Ingresos'), 0) + ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') + 
			(select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
		   (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago = 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
		   (select ifnull(sum(dcc.montopagado),0) from detalle_cuentas_por_cobrar dcc INNER JOIN cuentas_por_cobrar cc ON cc.idcpc = dcc.idcpc WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago = 'Efectivo' AND cc.condicion = 1)
		   ) + ((select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Boleta' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') + 
        (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Factura' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
       (select ifnull(sum(total_venta),0) from venta WHERE DATE(fecha_hora)>='$fecha_inicio' AND DATE(fecha_hora)<='$fecha_fin' AND formapago != 'Efectivo' AND tipo_comprobante = 'Nota' AND ventacredito= 'no' AND estado IN ('Aceptado', 'Por Enviar', 'Activado') AND idsucursal='$idsucursal') +
       (select ifnull(sum(montopagado),0) from detalle_cuentas_por_cobrar WHERE DATE(fechapago)>='$fecha_inicio' AND DATE(fechapago)<='$fecha_fin' AND formapago != 'Efectivo')
       )) - IFNULL( (SELECT sum(monto) as totalIngresos FROM movimiento WHERE DATE(fecha)>='$fecha_inicio' AND DATE(fecha)<='$fecha_fin' AND tipo = 'Egresos'), 0) AS totalEC";

		}


		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalStocksBajos(){

		$sql="SELECT IFNULL(count(p.idproducto),0) as totalstocksbajos 
		FROM producto p
		INNER JOIN categoria c
		ON c.idcategoria = p.idcategoria
		WHERE stock>=0 AND stock<='5' AND c.nombre != 'SERVICIO'";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalCreditoPendientes(){

		$sql="SELECT IFNULL(count(idcpc),0) as totalcreditospendientes FROM cuentas_por_cobrar WHERE deudatotal != abonototal AND condicion=1";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalDocumentosPendientes(){

		$sql="SELECT IFNULL(count(idventa),0) as totaldocumentospendientes FROM venta WHERE estado = 'Por Enviar' AND tipo_comprobante!='Nota'";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function totalDocumentosPendientes2($idsucursal){

		$sql="SELECT IFNULL(count(idproducto),0) as totaldocumentospendientes 
		FROM producto 
		where idsucursal = '$idsucursal'
		and fecha between curdate() 
		and date_add(curdate(), 
		interval (SELECT diasVencer from datos_negocio) day)";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function listarCreditosPendientes(){
		$sql="SELECT cc.idcpc,DATE(cc.fecharegistro) as fecharegistro, v.tipo_comprobante, c.nombre, c.num_documento, v.serie_comprobante, v.num_comprobante, cc.deudatotal, cc.abonototal, cc.fechavencimiento 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
                WHERE cc.deudatotal != cc.abonototal AND condicion=1
                ORDER BY cc.idcpc desc";
		return ejecutarConsulta($sql);
	}

	public function listarDocumentosPendientes(){
		$sql="SELECT v.idventa,v.tipo_comprobante, v.serie_comprobante, v.num_comprobante 
				FROM venta v 
				WHERE estado = 'Por Enviar' AND tipo_comprobante!='Nota'
                ORDER BY v.idventa desc";
		return ejecutarConsulta($sql);
	}

	public function listarDocumentosPendientes2($idsucursal){
		$sql="select p.*, um.nombre as unidadmedida, c.nombre as categoria from producto p INNER JOIN unidad_medida um ON p.idunidad_medida = um.idunidad_medida INNER JOIN categoria c ON p.idcategoria = c.idcategoria where idsucursal = '$idsucursal' and fecha between curdate() and date_add(curdate(), interval (SELECT diasVencer from datos_negocio) day)";
		return ejecutarConsulta($sql);
	}

}

?>