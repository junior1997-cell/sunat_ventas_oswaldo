<?php
ob_start();
if (strlen(session_id()) < 1) {
	session_start(); //Validamos si existe o no la sesión
}
if (!isset($_SESSION["nombre"])) {
	header("Location: ../vistas/login.html"); //Validamos el acceso solo a los usuarios logueados al sistema.
} else {
	//Validamos el acceso solo al usuario logueado y autorizado.
	if ($_SESSION['compras'] == 1) {
		require_once "../modelos/Compra.php";

		$compra = new Compra();

		$idcompra = isset($_POST["idcompra"]) ? limpiarCadena($_POST["idcompra"]) : "";
		$idsucursal = isset($_POST["idsucursal"]) ? limpiarCadena($_POST["idsucursal"]) : "";
		$idproveedor = isset($_POST["idproveedor"]) ? limpiarCadena($_POST["idproveedor"]) : "";
		//Almacenar lo que tenemos en la variable sesion
		$idpersonal = $_SESSION["idpersonal"];
		$tipo_comprobante = isset($_POST["tipo_comprobante"]) ? limpiarCadena($_POST["tipo_comprobante"]) : "";
		$tipo_c = isset($_POST["tipo_c"]) ? limpiarCadena($_POST["tipo_c"]) : "";
		$serie_comprobante = isset($_POST["serie_comprobante"]) ? limpiarCadena($_POST["serie_comprobante"]) : "";
		$num_comprobante = isset($_POST["num_comprobante"]) ? limpiarCadena($_POST["num_comprobante"]) : "";
		$fecha = isset($_POST["fecha"]) ? limpiarCadena($_POST["fecha"]) : "";
		$impuesto = isset($_POST["impuesto"]) ? limpiarCadena($_POST["impuesto"]) : "";
		$total_compra = isset($_POST["total_compra"]) ? limpiarCadena($_POST["total_compra"]) : "";
		$formapago = isset($_POST["formapago"]) ? limpiarCadena($_POST["formapago"]) : "";
		$lugar_entrega = isset($_POST["lugar_entrega"]) ? limpiarCadena($_POST["lugar_entrega"]) : "";
		$motivo_compra = isset($_POST["motivo_compra"]) ? limpiarCadena($_POST["motivo_compra"]) : "";
		$documento = isset($_POST["documento"]) ? limpiarCadena($_POST["documento"]) : "";
		$nota = isset($_POST["nota"]) ? limpiarCadena($_POST["nota"]) : "";
		$comprobanteReferencia = isset($_POST["comprobanteReferencia"]) ? limpiarCadena($_POST["comprobanteReferencia"]) : "";

		$imagen = isset($_POST["imagen"]) ? limpiarCadena($_POST["imagen"]) : "";
		$idcompraI = isset($_POST["idcompraI"]) ? limpiarCadena($_POST["idcompraI"]) : "";

		switch ($_GET["op"]) {
			case 'guardaryeditar':
				if (empty($idcompra)) {
					$rspta = $compra->insertar($idsucursal, $idproveedor, $idpersonal, $tipo_c, $tipo_comprobante, $serie_comprobante, $num_comprobante, $fecha, $impuesto, $total_compra, $formapago, $lugar_entrega, $motivo_compra, $documento, $nota, $comprobanteReferencia, $_POST["idproducto"], $_POST["nombreProducto"],$_POST["cantidad"], $_POST["precio_compra"], $_POST["precio_venta"]);
					echo $rspta ? "Datos registrados correctamente" : "No se pudieron registrar todos los datos";
				} else {

					$rspta = $compra->editar($idcompra, $idsucursal, $idproveedor, $tipo_comprobante, $serie_comprobante, $num_comprobante, $fecha, $impuesto, $total_compra, $formapago, $lugar_entrega, $motivo_compra, $documento, $nota, $comprobanteReferencia, $_POST["idproducto"], $_POST["nombreProducto"],$_POST["cantidad"], $_POST["precio_compra"], $_POST["precio_venta"], $tipo_c);
					echo $rspta ? "Datos actualizados correctamente" : "No se pudieron actualizar todos los datos";
				}
				break;

			case 'guardarImagen':

				if (!file_exists($_FILES['imagen']['tmp_name']) || !is_uploaded_file($_FILES['imagen']['tmp_name'])) {
					$imagen = $_POST["imagenactual"];
				} else {
					$ext = explode(".", $_FILES["imagen"]["name"]);
					if ($_FILES['imagen']['type'] == "image/jpg" || $_FILES['imagen']['type'] == "image/jpeg" || $_FILES['imagen']['type'] == "image/png") {
						$imagen = round(microtime(true)) . '.' . end($ext);
						move_uploaded_file($_FILES["imagen"]["tmp_name"], "../files/compras/" . $imagen);
					}
				}

				if (empty($idcompra)) {
					$rspta = $compra->subirImagen($idcompraI, $imagen);
					echo $rspta ? "Datos registrados correctamente" : "No se pudieron registrar todos los datos";
				} else {

					
				}


				break;

			case 'aprobar':
				$rspta = $compra->aprobar($idcompra);
				echo $rspta ? "Orden de Compra Aprobada" : "Orden de Compra no se puede aprobar";
				break;

			case 'anular':
				$rspta = $compra->anular($idcompra,$comprobanteReferencia);
				echo $rspta ? "Compra Anulada" : "Compra no se puede anular";
				break;

			case 'mostrar':
				$rspta = $compra->mostrar($idcompra);
				//Codificar el resultado utilizando json
				echo json_encode($rspta);
				break;

			case 'mostrar2':
				$rspta = $compra->mostrar2($idcompra);
				echo json_encode($rspta);
				break;

			case 'listarDetalleCompra':

				$rspta = $compra->compradetalle($idcompra);

				$data = array();

				while ($reg = $rspta->fetch_object()) {

					$data[] = array(
						"0" => $reg->idproducto,
						"1" => $reg->nombre,
						"2" => $reg->cantidad,
						"3" => $reg->precio_compra,
						"4" => $reg->precio_venta,
						"5" => $reg->unidadmedida
					);
				}

				echo json_encode($data);


				break;

				//_______________________________________________________________________________________________________

				//opcion para mostrar la numeracion y la serie_comprobante de la ticket
			case 'mostrar_num_ticket':
				$idsucursal = $_REQUEST["idsucursal"];
				//mostrando el numero de boleta de la tabla comprobantes
				require_once "../modelos/Comprobantes.php";
				$comprobantes = new Comprobantes();

				$rspta = $comprobantes->mostrar_numero_ordencompra($idsucursal);
				$data = array();
				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						$num_comp_tic = $reg->num_comprobante
					);
				}
				$numero_tic_comp = (int)$num_comp_tic;
				//fin de mostrar numero de boleta de la tabla comprobantes
				$rspta = $comprobantes->numero_venta_ordencompra($idsucursal);
				$data = array();
				$numerot = $numero_tic_comp;

				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						$numerot = $reg->num_comprobante
					);
				}
				$numero_ticket = (int)$numerot;
				$new_ticket = '';

				if ($numero_ticket == 9999999 or empty($numerot)) {
					$new_ticket = '0000001';
					echo json_encode($new_ticket);
				} elseif ($numerot == 9999999) {
					$new_ticket = '0000001';
					echo json_encode($new_ticket);
				} else {
					$sumatic = $numero_ticket + 1;
					echo json_encode($sumatic);
				}
				//$num = (int)$numerof; 
				//echo json_encode($numerof);
				break;
			case 'mostrar_s_ticket':
				$idsucursal = $_REQUEST["idsucursal"];
				//mostrando el numero de factura de la tabla comprobantes
				require_once "../modelos/Comprobantes.php";
				$comprobantes = new Comprobantes();

				$rspta = $comprobantes->mostrar_serie_ordencompra($idsucursal);
				$data = array();
				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						$serie_comp_tic = $reg->serie_comprobante,
						$num_comp_tic = $reg->num_comprobante
					);
				}
				$serie_tic_comp = (int)$serie_comp_tic;
				$num_tic_comp = (int)$num_comp_tic;
				//fin de mostrar numero de factura de la tabla comprobantes
				$rspta = $comprobantes->numero_serie_ordencompra($idsucursal);
				$data = array();
				$numero_s_tic = $serie_tic_comp;
				$numero_bolet = $num_tic_comp;

				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						$numero_s_tic = $reg->serie_comprobante,
						$numero_bolet = $reg->num_comprobante
					);
				}
				$num_s_ticket = (int)$numero_s_tic;
				$nuew_serie_ticket = 0;
				$numbo = (int)$numero_bolet;
				if ($numbo == 9999999 or empty($numero_s_tic)) {
					$nuew_serie_ticket = $num_s_ticket + 1;
					echo json_encode($nuew_serie_ticket);
				} else {
					echo json_encode($num_s_ticket);
				}
				break; //fin de opcion de mostrar num_comprobante y serie_comprobante del ticket

				//______________________________________________________________________________________________

			case 'listarDetalle':
				//Recibimos el idingreso
				$id = $_GET['id'];

				$rspta = $compra->listarDetalle($id);
				$total = 0;
				echo '<thead style="background-color:#A9D0F5">
									<th>Opciones</th>
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th>Precio Compra</th>
                                    <th>Precio Venta</th>
                                    <th>Subtotal</th>
                                </thead>';

				while ($reg = $rspta->fetch_object()) {
					echo '<tr class="filas">
					<td></td>
					<td>' . $reg->nombre . '</td>
					<td>' . $reg->cantidad . '</td>
					<td>' . $reg->precio_compra . '</td>
					<td>' . $reg->precio_venta . '</td>
					<td>' . $reg->precio_compra * $reg->cantidad . '</td>
					<td></td>
					</tr>';
					$total = $total + ($reg->precio_compra * $reg->cantidad);
				}
				echo '<tfoot>
                                    <th>TOTAL</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><h4 id="total">S/.' . $total . '</h4><input type="hidden" name="total_compra" id="total_compra"></th> 
                                </tfoot>';
				break;

			case 'listar':

				$fecha_inicio = $_REQUEST["fecha_inicio"];
				$fecha_fin = $_REQUEST["fecha_fin"];
				$idsucursal = $_REQUEST["idsucursal2"];

				if ($idsucursal == "" || $idsucursal == NULL) {

					if ($_SESSION['idsucursal'] == 0) {

						$idsucursal = 'Todos';
					} else {

						$idsucursal = $_SESSION['idsucursal'];
					}
				}

				$rspta = $compra->listar($fecha_inicio, $fecha_fin, $idsucursal);
				//Vamos a declarar un array
				$data = array();

				while ($reg = $rspta->fetch_object()) {

					if ($reg->tipo_c == "Compra") {
						$numero = $reg->tipo_comprobante . '-' . $reg->serie_comprobante . '-' . $reg->num_comprobante;
					} else {
						$numero = "Sin Número";
					}

					if ($_SESSION["cargo"] == 'Administrador' || $_SESSION["cargo"] == 'administrador' || $_SESSION["cargo"] == 'admin' || $_SESSION["cargo"] == 'Admin' || $_SESSION["cargo"] == 'ADMINISTRADOR' || $_SESSION["cargo"] == 'ADMIN') {
						// $editar = '<button class="btn btn-danger btn-xs" onclick="mostrar2(' . $reg->idcompra . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="ACTUALIZAR COMPRA"><i class="fa fa-pencil"></i></button>';
						$anular = ' <button class="btn btn-danger btn-xs" onclick="anular(' . $reg->idcompra . ',' . $reg->documento_rel . ')"><i class="fa fa-close"></i></button> ';
					}

					if($reg->estado == 'REGISTRADO'){

						$estado = '<span class="badge bg-green">REGISTRADO</span>';

					}else if($reg->estado == 'REALIZADO'){

						$estado = '<span class="badge bg-blue">REALIZADO</span>';

					}else{

						$estado = '<span class="badge bg-red">ANULADO</span>';

					}

					$data[] = array(
						"0" => $reg->fecha_kardex,
						"1" => $reg->proveedor,
						"2" => $reg->personal,
						"3" => $reg->tipo_c,
						"4" => $numero,
						"5" => $reg->total_compra,
						"6" => $estado,
						"7" => (($reg->estado == 'REGISTRADO') ? '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idcompra . ')"><i class="fa fa-eye"></i></button>' .
							$anular :
							'<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idcompra . ')"><i class="fa fa-eye"></i></button>') .
							'<a target="_blank" href="../reportes/factura/generaFacturaCompra.php?id=' . $reg->idcompra . '"> <button class="btn btn-info btn-xs"><i class="fa fa-file"></i></button></a> ' .
							'<button class="btn btn-dark btn-xs" onclick="subirImagen('.$reg->idcompra.',`'.$reg->imagen.'`)" data-toggle="tooltip" title="" target="blanck" data-original-title="Subir/Ver Imagen"><i class="fa fa-upload"></i></button> '
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

			case 'listar2':

				$fecha_inicio = $_REQUEST["fecha_inicio"];
				$fecha_fin = $_REQUEST["fecha_fin"];
				$idsucursal = $_REQUEST["idsucursal2"];

				if ($idsucursal == "" || $idsucursal == NULL) {

					if ($_SESSION['idsucursal'] == 0) {

						$idsucursal = 'Todos';
					} else {

						$idsucursal = $_SESSION['idsucursal'];
					}
				}

				$rspta = $compra->listar2($fecha_inicio, $fecha_fin, $idsucursal);
				//Vamos a declarar un array
				$data = array();

				$editar = "";
				$aprobar = "";
				
				while ($reg = $rspta->fetch_object()) {


					if ($reg->estadoC == 'POR APROBACIÓN') {

						$estadoC = '<span class="badge bg-yellow">POR APROBACIÓN</span>';
							$editar = '<button class="btn btn-danger btn-xs" onclick="mostrarE(' . $reg->idcompra . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="ACTUALIZAR COMPRA"><i class="fa fa-pencil"></i></button>';
							$aprobar = '<button class="btn btn-dark btn-xs" onclick="aprobar(' . $reg->idcompra . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="APROBAR"><i class="fa fa-check"></i></button> ';
							$eliminar = '<button class="btn btn-danger btn-xs" onclick="anular(' . $reg->idcompra . ')"><i class="fa fa-close"></i></button> ';

					} else if ($reg->estadoC == 'APROBADO') {

						$estadoC = '<span class="badge bg-green">APROBADO</span>';
						if ($_SESSION["cargo"] == 'Administrador' || $_SESSION["cargo"] == 'administrador' || $_SESSION["cargo"] == 'admin' || $_SESSION["cargo"] == 'Admin' || $_SESSION["cargo"] == 'ADMINISTRADOR' || $_SESSION["cargo"] == 'ADMIN') {
							$editar = '<button class="btn btn-danger btn-xs" onclick="mostrarE(' . $reg->idcompra . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="ACTUALIZAR COMPRA"><i class="fa fa-pencil"></i></button>';
						}
						$eliminar = '<button class="btn btn-danger btn-xs" onclick="anular(' . $reg->idcompra . ')"><i class="fa fa-close"></i></button> ';
					} else if ($reg->estadoC == 'COMPRADO') {

						$estadoC = '<span class="badge bg-blue">COMPRADO</span>';
						$editar = '';
						$eliminar = '';
						$aprobar = '';
					} else {

						$estadoC = '<span class="badge bg-red">ANULADO</span>';
					}

					$data[] = array(
						"0" => $reg->fecha_kardex,
						"1" => $reg->proveedor,
						"2" => $reg->personal,
						"3" => 'Devolución',
						"4" => $reg->serie_comprobante . '-' . $reg->num_comprobante,
						"5" => $reg->total_compra,
						"6" => '<span class="badge bg-blue">REGISTRADO</span>',
						"7" => (($reg->estado == 'REGISTRADO') ?
							'<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idcompra . ')"><i class="fa fa-eye"></i></button> ' .
							$editar :
							'<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idcompra . ')"><i class="fa fa-eye"></i></button>')
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

			case 'selectOrdenCompra':
				$idsucursal = $_REQUEST["idsucursal"];

				if ($idsucursal == "" || $idsucursal == NULL) {

					$idsucursal = 21;
				}

				require_once "../modelos/Compra.php";
				$compra = new Compra();

				$rspta = $compra->selectCompras($idsucursal);

				while ($reg = $rspta->fetch_object()) {
					echo '<option value=' . $reg->idcompra . '>' . $reg->serie_comprobante . '-' . $reg->num_comprobante . '</option>';
				}
				break;

				//el lisyado de todos los proveedores lo vamos a mostrar en la vista ingreso
			case 'selectProveedor':
				require_once "../modelos/Persona.php";
				$persona = new Persona();

				$rspta = $persona->listarp();

				while ($reg = $rspta->fetch_object()) {
					echo '<option value=' . $reg->idpersona . '>' . $reg->nombre . ' - ' . $reg->num_documento . '</option>';
				}
				break;

			case 'listarArticulos':

				$idsucursal = $_REQUEST["idsucursal"];

				require_once "../modelos/Producto.php";
				$producto = new Producto();

				$rspta = $producto->listarActivos($idsucursal);
				$data = array();

				while ($reg = $rspta->fetch_object()) {
					$data[] = array(
						"0" => $reg->nombre,
						"1" => $reg->unidadmedida,
						"2" => $reg->categoria,
						"3" => $reg->codigo,
						"4" => $reg->stock,
						"5" => "<img src='../files/productos/" . $reg->imagen . "' height='50px' width='50px'>",
						"6" => '<button class="btn btn-warning" onclick="agregarDetalle(' . $reg->idproducto . ',\'' . $reg->nombre . '\',\'' . $reg->precio . '\',\'' . $reg->precio_compra . '\',\'' . $reg->unidadmedida . '\',1)"><span class="fa fa-plus"></span></button>'

					);
				}
				$results = array(
					"sEcho" => 1, //info para datatables
					"iTotalRecords" => count($data), //enviamos el total de registros al datatable
					"iTotalDisplayRecords" => count($data), //enviamos el total de registros a visualizar
					"aaData" => $data
				);
				echo json_encode($results);

				break;
		}
		//Fin de las validaciones de acceso
	} else {
		require 'noacceso.php';
	}
}
ob_end_flush();
