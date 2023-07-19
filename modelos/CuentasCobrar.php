<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../configuraciones/Conexion.php";

Class CuentasCobrar
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	public function insertar($idcpc,$montopagado,$observacion,$banco,$op,$fechaPago,$formapago){

		$sql="INSERT INTO detalle_cuentas_por_cobrar (idcpc,montopagado,banco,op,observacion,formapago)
		VALUES ('$idcpc','$montopagado','$banco','$op','$observacion','$formapago')";
		ejecutarConsulta($sql);

		$sql1="UPDATE cuentas_por_cobrar SET fechavencimiento='$fechaPago' WHERE idcpc='$idcpc'";
		ejecutarConsulta($sql1);

		$sql2="UPDATE cuentas_por_cobrar SET deudatotal = deudatotal - '$montopagado' WHERE idcpc='$idcpc'";
		return ejecutarConsulta($sql2);
		
	}

	public function deudacliente($idventa){

		$sql="SELECT v.idventa,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,cc.idcpc,date_format(cc.fecharegistro,'%d/%m/%y') as fecharegistro, v.tipo_comprobante, c.nombre,TRUNCATE(cc.deudatotal + cc.abonototal,2) as deudatotal, cc.deudatotal as deuda, cc.abonototal,date_format(cc.fechavencimiento,'%d/%m/%y') as fechavencimiento 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
		        WHERE cc.idventa = '$idventa'";
		return ejecutarConsulta($sql);
		
	}

	//Implementar un método para listar los registros
	public function listar($fecha_inicio,$fecha_fin,$idcliente,$idsucursal)
	{


		if($idcliente == "Todos" || $idcliente == null){

			$sql="SELECT cc.idcpc,date_format(cc.fecha_hora,'%d/%m/%y | %H:%i:%s %p') as fecharegistro, v.tipo_comprobante, c.nombre, c.num_documento, v.serie_comprobante, v.num_comprobante, cc.deudatotal, cc.abonototal, date_format(cc.fechavencimiento,'%d/%m/%y') as fechavencimiento, cc.idventa 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
		        WHERE DATE(cc.fecharegistro)>='$fecha_inicio' AND DATE(cc.fecharegistro)<='$fecha_fin' AND condicion=1
		        ORDER BY cc.idcpc desc";

		}else{

			$sql="SELECT cc.idcpc,date_format(cc.fecha_hora,'%d/%m/%y | %H:%i:%s %p') as fecharegistro, v.tipo_comprobante, c.nombre, c.num_documento, v.serie_comprobante, v.num_comprobante, cc.deudatotal, cc.abonototal, date_format(cc.fechavencimiento,'%d/%m/%y') as fechavencimiento, cc.idventa 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
		        WHERE DATE(cc.fecharegistro)>='$fecha_inicio' AND DATE(cc.fecharegistro)<='$fecha_fin' AND v.idcliente = '$idcliente' AND condicion=1
		        ORDER BY cc.idcpc desc";

		}
		
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros
	public function listarDetalle($idcpc)
	{
		$sql="SELECT cc.iddcpc,cc.iddcpc,cc.montopagado,date_format(cc.fechapago,'%d/%m/%y | %H:%i:%s %p') as fechapago,cc.formapago,cc.banco,cc.op FROM detalle_cuentas_por_cobrar cc
				WHERE idcpc = '$idcpc'
		        ORDER BY iddcpc asc";
		return ejecutarConsulta($sql);		
	}

	public function mostrar($idcpc)
	{

		$sql="SELECT v.idventa,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,cc.idcpc,date_format(cc.fecharegistro,'%d/%m/%y') as fecharegistro, v.tipo_comprobante, c.nombre,TRUNCATE(cc.deudatotal,2) as deudatotal, cc.deudatotal as deuda, cc.abonototal,date_format(cc.fechavencimiento,'%d/%m/%y') as fechavencimiento 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
		        WHERE cc.idcpc = '$idcpc'";
		return ejecutarConsultaSimpleFila($sql);

	}

	public function mostrarTicket($idventa)
	{

		$sql="SELECT v.idventa,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,cc.idcpc,DATE(cc.fecharegistro) as fecharegistro, v.tipo_comprobante, c.nombre,TRUNCATE(cc.deudatotal,2) as deudatotal, cc.deudatotal as deuda, cc.abonototal,cc.fechavencimiento 
				FROM venta v 
				INNER JOIN cuentas_por_cobrar cc
		        ON v.idventa = cc.idventa
		        INNER JOIN persona c
		        ON c.idpersona = v.idcliente
		        WHERE cc.idventa = '$idventa'";
		return ejecutarConsulta($sql);

	}

	public function mostrarDeuda($idVenta){
		$sql="SELECT * FROM cuentas_por_cobrar WHERE idventa='".$idVenta."'";
		return ejecutarConsulta($sql);
	}

}

?>