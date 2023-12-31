<?php
//incluir la conexion de base de datos
require "../configuraciones/Conexion.php";
class Comprobantes
{

	//implementamos nuestro constructor
	public function __construct()
	{
	}

	public function editar($id_comp_pago, $nombre, $serie_comprobante, $num_comprobante)
	{
		$sql = "UPDATE comp_pago SET nombre='$nombre',serie_comprobante='$serie_comprobante',num_comprobante='$num_comprobante' 
	WHERE id_comp_pago='$id_comp_pago'";
		return ejecutarConsulta($sql);
	}
	public function desactivar($id_comp_pago)
	{
		$sql = "UPDATE comp_pago SET condicion='0' WHERE id_comp_pago='$id_comp_pago'";
		return ejecutarConsulta($sql);
	}
	public function activar($id_comp_pago)
	{
		$sql = "UPDATE comp_pago SET condicion='1' WHERE id_comp_pago='$id_comp_pago'";
		return ejecutarConsulta($sql);
	}

	//metodo para mostrar registros
	public function mostrar($id_comp_pago)
	{
		$sql = "SELECT * FROM comp_pago WHERE id_comp_pago='$id_comp_pago'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//listar registros
	public function listar()
	{
		$sql = "SELECT * FROM comp_pago WHERE nombre != 'Cotización'";
		return ejecutarConsulta($sql);
	}
	//listar y mostrar en selct
	public function select()
	{
		$sql = "SELECT * FROM comp_pago WHERE condicion=1 AND nombre != 'Cotización' AND nombre != 'NC' AND nombre != 'NCB'
	ORDER BY id_comp_pago ASC LIMIT 3";
		return ejecutarConsulta($sql);
	}
	//listar y mostrar en selct
	public function selectNC()
	{
		$sql = "SELECT * FROM comp_pago WHERE condicion=1 AND nombre IN ('NC', 'NCB') LIMIT 2";
		return ejecutarConsulta($sql);
	}
	//listar y mostrar en selct
	public function selectDocumentos()
	{
		$sql = "SELECT idventa, serie_comprobante, num_comprobante FROM venta WHERE dov_Estado='ACEPTADO' AND (estado != 'Nota Credito' AND estado != 'Anulado' AND estado != 'Activado') AND tipo_comprobante IN ('Boleta','Factura')";
		return ejecutarConsulta($sql);
	}

	public function selectMotivos()
	{
		$sql = "SELECT * FROM motivos_nota WHERE condicion = '1'";
		return ejecutarConsulta($sql);
	}

	//listar y mostrar en selct
	public function select2()
	{
		$sql = "SELECT * FROM comp_pago WHERE condicion=1 AND nombre = 'Cotización' LIMIT 1";
		return ejecutarConsulta($sql);
	}
	public function mostrar_serie_ticket()
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='Nota de Venta'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_ticket($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='Nota de Venta' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_serie_boleta($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='Boleta' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_boleta($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='Boleta' AND idsucursal='$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_nc()
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='NC'";
		return ejecutarConsulta($sql);
	}

	public function mostrar_numero_ncb($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='NCB' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}

	public function mostrar_serie_nc($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='NC' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}

	public function mostrar_serie_ncb($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='NCB' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}

	public function mostrar_serie_factura($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='Factura' AND idsucursal='$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_factura($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='Factura' AND idsucursal='$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_serie_cotizacion($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='Cotización' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_cotizacion($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='Cotización' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function mostrar_numero_ordencompra($idsucursal)
	{
		$sql = "SELECT num_comprobante FROM comp_pago WHERE nombre='Orden Compra' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function numero_venta_ordencompra($idsucursal)
	{

		$sql = "SELECT num_comprobante FROM compra WHERE tipo_c='Orden Compra' AND idsucursal = '$idsucursal' ORDER BY idcompra DESC limit 1";
		return ejecutarConsulta($sql);
	}
	public function mostrar_serie_ordencompra($idsucursal)
	{
		$sql = "SELECT serie_comprobante, num_comprobante FROM comp_pago WHERE nombre='Orden Compra' AND idsucursal = '$idsucursal'";
		return ejecutarConsulta($sql);
	}
	public function numero_serie_ordencompra($idsucursal)
	{

		$sql = "SELECT serie_comprobante ,num_comprobante FROM compra WHERE tipo_c='Orden Compra' AND idsucursal = '$idsucursal' ORDER BY idcompra DESC limit 1";

		return ejecutarConsulta($sql);
	}
}
