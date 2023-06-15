<?php

	//print_r($_REQUEST);
	//exit;
	//echo base64_encode('2');
	//exit;
	session_start();
	if(empty($_SESSION['nombre']))
	{
		echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
	}

	include "../../configuraciones/Conexion.php";
	require_once 'pdf/vendor/autoload.php';
	use Dompdf\Dompdf;

	if(empty($_GET["id"]))
	{
		echo "No es posible generar la factura.";
	}else{
		$idventa = $_GET["id"];
		$anulada = '';

		$query_config   = mysqli_query($conexion,"SELECT * FROM datos_negocio");
		$result_config  = mysqli_num_rows($query_config);
		if($result_config > 0){
			$configuracion = mysqli_fetch_assoc($query_config);
		}


		$query = mysqli_query($conexion,"SELECT v.idventa, v.idcliente, p.nombre AS cliente, p.direccion, p.tipo_documento, p.num_documento, p.email, p.telefono, v.idpersonal, u.nombre AS personal, v.tipo_comprobante, v.serie_comprobante, v.num_comprobante, DATE(v.fecha_hora) AS fecha, date_format(v.fecha_kardex,'%d/%m/%y | %H:%i:%s %p') as fecha_kardex, v.impuesto, v.total_venta, v.ventacredito, v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN personal u ON v.idpersonal=u.idpersonal WHERE v.idventa='$idventa'");

		$query2 = mysqli_query($conexion, "SELECT idventa, fecharegistro, deudatotal, date_format(fechavencimiento,'%d/%m/%y') as fechavencimiento, abonototal FROM cuentas_por_cobrar WHERE idventa='".$idventa."'");

		$result = mysqli_num_rows($query);
		if($result > 0){

			$factura = mysqli_fetch_assoc($query);

			$cuentasc = mysqli_fetch_assoc($query2);

			if($factura['estado'] == 'Nota Credito'){
				$anulada = '<img class="anulada" src="img/anulado.png" alt="Anulada">';
			}

			$query_productos = mysqli_query($conexion,"SELECT a.idproducto,a.nombre AS producto, um.nombre as unidadmedida, a.proigv, CASE WHEN a.codigo = 'SIN CODIGO' THEN '-' ELSE a.codigo END as codigo, d.cantidad, d.precio_venta, (d.descuento + v.descuento) AS descuento, (d.cantidad*d.precio_venta-d.descuento) AS subtotal, a.stock 
			FROM detalle_venta d 
			INNER JOIN producto a ON 
			d.idproducto=a.idproducto 
			INNER JOIN unidad_medida um 
			ON a.idunidad_medida = um.idunidad_medida
			INNER JOIN venta v
			ON v.idventa = d.idventa
			WHERE d.idventa='$idventa'");
			$result_detalle = mysqli_num_rows($query_productos);

			ob_start();
		    include(dirname('__FILE__').'/factura.php');
		    $html = ob_get_clean();

			// instantiate and use the dompdf class
			// $dompdf = new Dompdf();

			$dompdf = new Dompdf(array('enable_remote' => true));

			$dompdf->loadHtml($html);
			// (Optional) Setup the paper size and orientation
			$dompdf->setPaper('letter', 'portrait');
			// Render the HTML as PDF
			$dompdf->render();
			// Output the generated PDF to Browser
			$dompdf->stream('Comprobante_'.$idventa.'.pdf',array('Attachment'=>0));
			exit;
		}
	}

?>