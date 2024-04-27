<?php
ob_start();
if (strlen(session_id()) < 1) {
	session_start(); //Validamos si existe o no la sesión
}
if (!isset($_SESSION["nombre"])) {
	header("Location: ../vistas/login.html"); //Validamos el acceso solo a los usuarios logueados al sistema.
} else {
	require_once "../modelos/Consultas.php";

	$consulta = new Consultas();

	switch ($_GET["op"]) {

		case 'comprasfecha':
			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			if($idsucursal == null AND $_SESSION['idsucursal'] == 0){

				$idsucursal = "Todos";
				
			}else if($idsucursal == null AND $_SESSION['idsucursal'] != 0){

				$idsucursal = $_SESSION['idsucursal'];

			}else{

				$idsucursal = $_REQUEST["idsucursal"];

			}

			$rspta = $consulta->comprasfecha($fecha_inicio, $fecha_fin, $idsucursal);
			//Vamos a declarar un array
			$data = array();

			while ($reg = $rspta->fetch_object()) {
				$data[] = array(
					"0" => $reg->fecha,
					"1" => $reg->personal,
					"2" => $reg->proveedor,
					"3" => $reg->tipo_comprobante,
					"4" => $reg->serie_comprobante . ' ' . $reg->num_comprobante,
					"5" => $reg->total_compra,
					"6" => $reg->impuesto,
					"7" => ($reg->estado == 'Aceptado') ? '<span class="badge bg-green">ACEPTADO</span>' :
						'<span class="badge bg-red">ANULADO</span>'
				);
			}
			$results = array(
				"sEcho" => 1, //Información para el datatables
				"iTotalRecords" => count($data), //enviamos el total registros al datatable
				"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
				"aaData" => $data
			);
			echo json_encode($results);

			break;

		case 'ventasfechacliente':
			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idcliente = $_REQUEST["idcliente"];
			$idsucursal = $_REQUEST["idsucursal"];

			if($idsucursal == null AND $_SESSION['idsucursal'] == 0){

				$idsucursal = "Todos";
				
			}else if($idsucursal == null AND $_SESSION['idsucursal'] != 0){

				$idsucursal = $_SESSION['idsucursal'];

			}else{

				$idsucursal = $_REQUEST["idsucursal"];

			}

			// var_dump($fecha_inicio, $fecha_fin, $idcliente, $idsucursal);

			$rspta = $consulta->ventasfechacliente($fecha_inicio, $fecha_fin, $idcliente, $idsucursal);
			//Vamos a declarar un array
			$data = array();

			// var_dump($rspta);

			while ($reg = $rspta->fetch_object()) {
				$data[] = array(
					"0" => $reg->fecha,
					"1" => $reg->personal,
					"2" => $reg->cliente,
					"3" => $reg->tipo_comprobante,
					"4" => $reg->serie_comprobante . ' ' . $reg->num_comprobante,
					"5" => $reg->total_venta,
					"6" => $reg->impuesto,
					"7" => ($reg->estado == 'Aceptado' || $reg->estado == 'Activado' || $reg->estado == 'Por Enviar') ? '<span class="badge bg-green">'.$reg->estado.'</span>' :
						'<span class="badge bg-red">'.$reg->estado.'</span>'
				);
			}
			$results = array(
				"sEcho" => 1, //Información para el datatables
				"iTotalRecords" => count($data), //enviamos el total registros al datatable
				"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
				"aaData" => $data
			);
			echo json_encode($results);

			break;

		case 'ventasfechavendedor':
			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idcliente = $_REQUEST["idcliente"];
			$idsucursal = $_REQUEST["idsucursal"];

			if($idcliente == ""){

				$idcliente = "Todos";

			}

			if($idsucursal == null AND $_SESSION['idsucursal'] == 0){

				$idsucursal = "Todos";
				
			}else if($idsucursal == null AND $_SESSION['idsucursal'] != 0){

				$idsucursal = $_SESSION['idsucursal'];

			}else if($idsucursal != null AND $_SESSION['idsucursal'] == 0){

				$idsucursal = $idsucursal;

			}else{

				$idsucursal = $_REQUEST["idsucursal"];

			}

			$rspta = $consulta->ventasfechavendedor($fecha_inicio, $fecha_fin, $idcliente, $idsucursal);

			//Vamos a declarar un array
			$data = array();

			while ($reg = $rspta->fetch_object()) {
				$data[] = array(
					"0" => $reg->fecha,
					"1" => $reg->personal,
					"2" => $reg->cliente,
					"3" => $reg->tipo_comprobante,
					"4" => $reg->serie_comprobante . ' - ' . $reg->num_comprobante,
					"5" => $reg->total_venta,
					"6" => $reg->porcentaje,
					"7" => ($reg->estado == 'Aceptado' || $reg->estado == 'Activado' || $reg->estado == 'Por Enviar') ? '<span class="badge bg-green">'.$reg->estado.'</span>' :
						'<span class="badge bg-red">'.$reg->estado.'</span>'
				);
			}
			$results = array(
				"sEcho" => 1, //Información para el datatables
				"iTotalRecords" => count($data), //enviamos el total registros al datatable
				"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
				"aaData" => $data
			);
			echo json_encode($results);

			break;

			case 'ventasfechaservicio':
				$fecha_inicio = $_REQUEST["fecha_inicio"];
				$fecha_fin = $_REQUEST["fecha_fin"];
				$idproducto = $_REQUEST["idproducto"];
				$idvendedor = $_REQUEST["idvendedor"];
				$idsucursal = $_REQUEST["idsucursal"];
	
				if($idsucursal != "Todos"){
	
					if($idsucursal == null AND $_SESSION['idsucursal'] == 0){
	
						$idsucursal = "Todos";
						
					}else if($idsucursal == null AND $_SESSION['idsucursal'] != 0){
		
						$idsucursal = $_SESSION['idsucursal'];
		
					}else if($idsucursal != null AND $_SESSION['idsucursal'] == 0){
		
						$idsucursal = $_SESSION['idsucursal'];
		
					}else{
		
						$idsucursal = $_REQUEST["idsucursal"];
		
					}
	
				}
	
				$rspta = $consulta->ventasfechaservicio($fecha_inicio, $fecha_fin, $idproducto, $idvendedor, $idsucursal);
	
				//Vamos a declarar un array
				$data = array();
	
				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						"0" => $reg->fecha_hora,
						"1" => $reg->nombre . " - " . $reg->unidadmedida,
						"2" => $reg->cantidad,
						"3" => $reg->precio,
						"4" => $reg->precioCompra,
						"5" => $reg->utilidad,
						"6" => $reg->nombreVendedor
					);
				}
				$results = array(
					"sEcho" => 1, //Información para el datatables
					"iTotalRecords" => count($data), //enviamos el total registros al datatable
					"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
					"aaData" => $data
				);
				echo json_encode($results);
	
			break;	

		case 'ventasfechaproducto':
			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idproducto = $_REQUEST["idproducto"];
			$idvendedor = $_REQUEST["idvendedor"];
			$idsucursal = $_REQUEST["idsucursal"];

			if($idproducto == NULL){
				$idproducto = "Todos";
			}

			if($idvendedor == NULL){
				$idvendedor = "Todos";
			}

			if($idsucursal != "Todos"){

				if($idsucursal == null AND $_SESSION['idsucursal'] == 0){

					$idsucursal = "Todos";
					
				}else if($idsucursal == null AND $_SESSION['idsucursal'] != 0){
	
					$idsucursal = $_SESSION['idsucursal'];
	
				}else if($idsucursal != null AND $_SESSION['idsucursal'] == 0){
	
					$idsucursal = $idsucursal;
	
				}else{
	
					$idsucursal = $_REQUEST["idsucursal"];
	
				}

			}

			$rspta = $consulta->ventasfechaproducto($fecha_inicio, $fecha_fin, $idproducto, $idvendedor, $idsucursal);

			//Vamos a declarar un array
			$data = array();

			while ($reg = $rspta->fetch_object()) {
				$data[] = array(
					"0" => $reg->fecha_hora,
					"1" => $reg->nombre . " - " . $reg->unidadmedida,
					"2" => $reg->cantidad,
					"3" => $reg->precio,
					"4" => $reg->precioCompra,
					"5" => $reg->utilidad,
					"6" => $reg->nombreVendedor
				);
			}
			$results = array(
				"sEcho" => 1, //Información para el datatables
				"iTotalRecords" => count($data), //enviamos el total registros al datatable
				"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
				"aaData" => $data
			);
			echo json_encode($results);

		break;

		case 'listarp':
			$rspta = $consulta->stockproductosmasbajos();
			//Vamos a declarar un array
			$data = array();

			while ($reg = $rspta->fetch_object()) {
				$data[] = array(
					"0" => $reg->nombre,
					"1" => $reg->categoria,
					"2" => $reg->stock
				);
			}
			$results = array(
				"sEcho" => 1, //Información para el datatables
				"iTotalRecords" => count($data), //enviamos el total registros al datatable
				"iTotalDisplayRecords" => count($data), //enviamos el total registros a visualizar
				"aaData" => $data
			);
			echo json_encode($results);

			break;

		case 'totalDocumentosPendientes2':

			if($_SESSION['idsucursal'] != 0){

				$idsucursal = $_SESSION['idsucursal'];

			}else{

				$idsucursal = $_REQUEST['idsucursal'];

			}


			$rspta = $consulta->totalDocumentosPendientes2($idsucursal);
			echo json_encode($rspta);

		break;

		case 'mostrarTotalBoletasCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalBoletasCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalBoletasTCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalBoletasTCaja($fecha_inicio, $fecha_fin,$idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalFacturasCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalFacturasCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalFacturasTCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalFacturasTCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalNotasVentaCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalNotasVentaCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalNotasVentaTCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalNotasVetnaTCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalCuentasCobrarVentaCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalCuentasCobrarVentaCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalCuentasCobrarVentaTCaja':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalCuentasCobrarVentaTCaja($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalEfectivo':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalEfectivo($fecha_inicio, $fecha_fin,$idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalTransferencia':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalTransferencia($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalIngresos':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalIngresos($fecha_inicio, $fecha_fin,$idsucursal);
			echo json_encode($rspta);

			break;

		case 'mostrarTotalEgresos':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->mostrarTotalEgresos($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalFacturas':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalFacturas($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalBoletas':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalBoletas($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalNotas':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalNotas($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalCuentas':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalCuentas($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalT':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalT($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalEC':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalEC($fecha_inicio, $fecha_fin, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalStocksBajos':

			$rspta = $consulta->totalStocksBajos();
			echo json_encode($rspta);

			break;

		case 'totalCreditoPendientes':

			$rspta = $consulta->totalCreditoPendientes();
			echo json_encode($rspta);

			break;

		case 'totalcomprahoy':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idvendedor = $_REQUEST["idvendedor"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalcomprahoy($fecha_inicio, $fecha_fin, $idvendedor,$idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalventahoy':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idvendedor = $_REQUEST["idvendedor"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalventahoy($fecha_inicio, $fecha_fin, $idvendedor, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalusuariosr':

			$rspta = $consulta->totalusuariosr();
			echo json_encode($rspta);

			break;

		case 'totalproveedoresr':

			$rspta = $consulta->totalproveedoresr();
			echo json_encode($rspta);

			break;

		case 'totalventachoy':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idvendedor = $_REQUEST["idvendedor"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalventachoy($fecha_inicio, $fecha_fin, $idvendedor, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'totalcuentasporcobrar':

			$fecha_inicio = $_REQUEST["fecha_inicio"];
			$fecha_fin = $_REQUEST["fecha_fin"];
			$idvendedor = $_REQUEST["idvendedor"];
			$idsucursal = $_REQUEST["idsucursal"];

			$rspta = $consulta->totalcuentasporcobrar($fecha_inicio, $fecha_fin, $idvendedor, $idsucursal);
			echo json_encode($rspta);

			break;

		case 'listarStocksBajos':

			$rspta = $consulta->stockproductosmasbajos();

			while ($reg = $rspta->fetch_object()) {

				echo '<li>
					<a href="producto.php">
                      <i class="fa fa-warning text-yellow"></i> ' . $reg->nombre . '
                    </a>
                  </li>';
			}

			break;

		case 'listarCreditosPendientes':

			$rspta = $consulta->listarCreditosPendientes();

			while ($reg = $rspta->fetch_object()) {

				echo '<li>
					<a href="cuentasxcobrar.php">
                      <i class="fa fa-warning text-yellow"></i> Comprobante: ' . $reg->tipo_comprobante . ' - ' . $reg->serie_comprobante . ' - ' . $reg->num_comprobante . '
                    </a>
                  </li>';
			}

			break;

		case 'totalDocumentosPendientes':

			$rspta = $consulta->totalDocumentosPendientes();
			echo json_encode($rspta);

			break;

		case 'listarDocumentosPendientes':

			$rspta = $consulta->listarDocumentosPendientes();

			while ($reg = $rspta->fetch_object()) {

				echo '<li>
					<a href="venta.php">
                      <i class="fa fa-warning text-yellow"></i> ' . $reg->tipo_comprobante . ' - ' . $reg->serie_comprobante . ' - ' . $reg->num_comprobante . '
                    </a>
                  </li>';
			}

		break;

		case 'ProductosVencer':

			if($_SESSION['idsucursal'] != 0){

				$idsucursal = $_SESSION['idsucursal'];

			}else{

				$idsucursal = $_REQUEST['idsucursal'];

			}

			$rspta = $consulta->listarDocumentosPendientes2($idsucursal);

			while ($reg = $rspta->fetch_object()) {

				if($reg->numserie == ""){
					$reg->numserie = "-";
				}

				echo '<li>
					<a href="venta.php">
                      <i class="fa fa-warning text-yellow"></i>' . $reg->nombre . ' - UM: ' . $reg->unidadmedida . ' - Lote: ' . $reg->numserie . '
                    </a>
                  </li>';
			}

		break;

	}
}
ob_end_flush();
