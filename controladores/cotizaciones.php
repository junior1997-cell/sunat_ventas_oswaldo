<?php
require_once "../modelos/Cotizaciones.php";
if (strlen(session_id()) < 1)
	session_start();

$venta = new Cotizacion();

$idcotizacion = isset($_POST["idcotizacion"]) ? limpiarCadena($_POST["idcotizacion"]) : "";
$idsucursal = isset($_POST["idsucursal"]) ? limpiarCadena($_POST["idsucursal"]) : "";
$idcliente = isset($_POST["idcliente"]) ? limpiarCadena($_POST["idcliente"]) : "";
$idpersonal = $_SESSION["idpersonal"];
$tipo_comprobante = isset($_POST["tipo_comprobante"]) ? limpiarCadena($_POST["tipo_comprobante"]) : "";
$serie_comprobante = isset($_POST["serie_comprobante"]) ? limpiarCadena($_POST["serie_comprobante"]) : "";
$num_comprobante = isset($_POST["num_comprobante"]) ? limpiarCadena($_POST["num_comprobante"]) : "";
$fecha = isset($_POST["fecha"]) ? limpiarCadena($_POST["fecha"]) : "";
$impuesto = isset($_POST["impuesto"]) ? limpiarCadena($_POST["impuesto"]) : "";
$total_venta = isset($_POST["total_venta"]) ? limpiarCadena($_POST["total_venta"]) : "";

$totalrecibido = isset($_POST["totalrecibido"]) ? limpiarCadena($_POST["totalrecibido"]) : "";

$titulo = isset($_POST["titulo"]) ? limpiarCadena($_POST["titulo"]) : "";
$saludo = isset($_POST["saludo"]) ? limpiarCadena($_POST["saludo"]) : "";
$nota = isset($_POST["nota"]) ? limpiarCadena($_POST["nota"]) : "";

$igv = isset($_POST["igv"]) ? limpiarCadena($_POST["igv"]) : "";

require_once "../modelos/Persona.php";

$persona = new Persona();

$idpersona = isset($_POST["idpersona"]) ? limpiarCadena($_POST["idpersona"]) : "";
$tipo_persona = isset($_POST["tipo_persona"]) ? limpiarCadena($_POST["tipo_persona"]) : "";
$nombre = isset($_POST["nombre"]) ? limpiarCadena($_POST["nombre"]) : "";
$tipo_documento = isset($_POST["tipo_documento"]) ? limpiarCadena($_POST["tipo_documento"]) : "";
$num_documento = isset($_POST["num_documento"]) ? limpiarCadena($_POST["num_documento"]) : "";
$direccion = isset($_POST["direccion"]) ? limpiarCadena($_POST["direccion"]) : "";
$telefono = isset($_POST["telefono"]) ? limpiarCadena($_POST["telefono"]) : "";
$email = isset($_POST["email"]) ? limpiarCadena($_POST["email"]) : "";
$fecha_hora = isset($_POST["fecha_hora"]) ? limpiarCadena($_POST["fecha_hora"]) : "";

$formapago = isset($_POST["formapago"]) ? limpiarCadena($_POST["formapago"]) : "";
$tiempoproduccion = isset($_POST["tiempoproduccion"]) ? limpiarCadena($_POST["tiempoproduccion"]) : "";

switch ($_GET["op"]) {

	case 'guardaryeditar':

		if (empty($idcotizacion)) {
			$rspta = $venta->insertar($idsucursal, $idcliente, $idpersonal, $tipo_comprobante, $serie_comprobante, $num_comprobante, $fecha, $total_venta, $titulo, $saludo, $nota, $igv, $formapago, $tiempoproduccion, $_POST["idproducto"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
			echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
		} else {
			$rspta = $venta->editar($idcotizacion, $idsucursal, $idcliente, $idpersonal, $tipo_comprobante, $serie_comprobante, $num_comprobante, $fecha, $total_venta, $titulo, $saludo, $nota, $igv, $formapago, $tiempoproduccion, $_POST["idproducto"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
			echo $rspta ? "Datos editados correctamente" : "No se pudo editar la Cotización";
		}

		break;

	case 'guardarCliente':
		if (empty($idpersona)) {
			$rspta = $persona->insertar($tipo_persona, $nombre, $tipo_documento, $num_documento, $direccion, $telefono, $email, $fecha_hora);
			echo $rspta ? "Cliente registrado" : "Cliente no se pudo registrar";
		}
		break;

	case 'eliminar':
		$rspta = $venta->eliminar($idcotizacion);
		echo $rspta ? "Cotización Eliminada" : "Cotización No Se Puedo Eliminar";
		break;

	case 'mostrar':
		$rspta = $venta->mostrar($idcotizacion);
		echo json_encode($rspta);
		break;

	case 'desistir':
		$rspta = $venta->desistir($idcotizacion);
		echo $rspta ? "Operación Exitosa" : "Operación no se pudo realizar";
		break;

	case 'mostrardetalle':

		//recibimos el idcotizacion
		$id = $_GET['id'];

		$rspta = $venta->mostrardetalle($id);
		$total = 0;
		$c = 1;
		while ($reg = $rspta->fetch_object()) {

			if ($c == 1) {

				echo 'Pedido N° ';

				echo $reg->num_comprobante;

				echo ', CLIENTE: ';

				echo $reg->cliente;

				echo ',  LISTA DE PEDIDO: ';
			}

			echo '(' . $c . ')';
			echo '. ' . $reg->nombre . ',  CANTIDAD:  ' . $reg->cantidad . '     ';
			$c = $c + 1;
		}

		break;

		//_______________________________________________________________________________________________________

		//opcion para mostrar la numeracion y la serie_comprobante de la ticket
	case 'mostrar_num_ticket':
		$idsucursal = $_REQUEST["idsucursal"];
		//mostrando el numero de boleta de la tabla comprobantes
		require_once "../modelos/Comprobantes.php";
		$comprobantes = new Comprobantes();

		$rspta = $comprobantes->mostrar_numero_cotizacion($idsucursal);
		$data = array();
		while ($reg = $rspta->fetch_object()) {
			$data[] = array(
				$num_comp_tic = $reg->num_comprobante
			);
		}
		$numero_tic_comp = (int)$num_comp_tic;
		//fin de mostrar numero de boleta de la tabla comprobantes
		$rspta = $venta->numero_venta_cotizacion($idsucursal);
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

		$rspta = $comprobantes->mostrar_serie_cotizacion($idsucursal);
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
		$rspta = $venta->numero_serie_cotizacion($idsucursal);
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

		require_once "../modelos/Negocio.php";
		$cnegocio = new Negocio();
		$rsptan = $cnegocio->listar();
		$regn = $rsptan->fetch_object();
		if (empty($regn)) {
			$smoneda = 'Simbolo de moneda';
		} else {
			$smoneda = $regn->simbolo;
			$nom_imp = $regn->nombre_impuesto;
		};

		//recibimos el idcotizacion
		$id = $_GET['id'];

		$rspta = $venta->listarDetalle($id);
		$total = 0;
		echo ' <thead style="background-color:#A9D0F5">
        <th>Opciones</th>
        <th>Producto</th>
        <th>Cantidad</th>
        <th>Precio Venta</th>
        <th>Descuento</th>
        <th>Subtotal</th>
       </thead>';
		while ($reg = $rspta->fetch_object()) {
			echo '<tr class="filas">
			<td></td>
			<td>' . $reg->nombre . '</td>
			<td>' . $reg->cantidad . '</td>
			<td>' . $reg->precio_venta . '</td>
			<td>' . $reg->descuento . '</td>
			<td>' . $reg->subtotal . '</td></tr>';
			$total = $reg->total_venta;
		}

		echo '<tfoot>
         <th></th>
         <th></th>
         <th></th>
         <th></th>
         <th>TOTAL</th>
         <th><h4 id="total">' . $smoneda . ' ' . $total . '</h4><input type="hidden" name="total_venta" id="total_venta"></th>
       </tfoot>';

		break;

	case 'listarDetalleCotizacion':

		$rspta = $venta->ventadetalle($idcotizacion);

		$data = array();

		while ($reg = $rspta->fetch_object()) {

			$data[] = array(
				"0" => $reg->idproducto,
				"1" => $reg->producto,
				"2" => $reg->cantidad,
				"3" => $reg->descuento,
				"4" => $reg->precio_venta,
				"5" => $reg->preciocigv,
				"6" => $reg->stock,
				"7" => $reg->proigv,
				"8" => $reg->unidadmedida
			);
		}

		echo json_encode($data);


		break;

	case 'listar':

		$fecha_inicio = $_REQUEST["fecha_inicio"];
		$fecha_fin = $_REQUEST["fecha_fin"];
		$idsucursal2 = $_REQUEST["idsucursal2"];

		$rspta = $venta->listar($fecha_inicio, $fecha_fin, $idsucursal2);
		$data = array();

		while ($reg = $rspta->fetch_object()) {
			$url1 = '../reportes/exTicketCoti.php?id=';
			$url2 = '../reportes/factura/generaFacturaCoti.php?id=';

			if($reg->estado == 'EN ESPERA'){

				$estado = '<span class="badge bg-yellow">EN ESPERA</span>';
				$editar = '<button class="btn btn-success btn-xs" onclick="mostrarEditar(' . $reg->idcotizacion . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="EDITAR COTIZACIÓN"><i class="fa fa-pencil"></i></button> ';
				$desistir = '<button class="btn btn-dark btn-xs" onclick="desistir(' . $reg->idcotizacion . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="DESISTIR"><i class="fa fa-close"></i></button>';

			}else if($reg->estado == 'VENDIDO'){

				$estado = '<span class="badge bg-green">VENDIDO</span>';
				$editar = '';
				$desistir = '';

			}else{

				$estado = '<span class="badge bg-red">DESISTIÓ</span>';
				$editar = '';
				$desistir = '';

			}

			$data[] = array(
				"0" => $reg->fecha,
				"1" => $reg->cliente,
				"2" => $reg->personal,
				"3" => $reg->tipo_comprobante,
				"4" => $reg->serie_comprobante . '-' . $reg->num_comprobante,
				"5" => $reg->total_venta,
				"6" => '<span class="badge bg-green">'.$reg->titulo.'</span>',
				"7" => $estado,
				"8" => '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idcotizacion . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="VER"><i class="fa fa-eye"></i></button>' . ' ' .
					$editar .
					'<button class="btn btn-danger btn-xs" onclick="mostrarE(' . $reg->idcotizacion . ')" data-toggle="tooltip" title="" target="blanck" data-original-title="DUPLICAR COTIZACIÓN"><i class="fa fa-copy"></i></button>' .
					'<a target="_blank" href="' . $url2 . $reg->idcotizacion . '" data-toggle="tooltip" title="" target="blanck" data-original-title="PDF"> <button class="btn btn-info btn-xs"><i class="fa fa-file"></i></button></a>' .
					'' .
					$desistir
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

	case 'selectCliente':
		require_once "../modelos/Persona.php";
		$persona = new Persona();

		$rspta = $persona->listarc();

		while ($reg = $rspta->fetch_object()) {
			echo '<option value=' . $reg->idpersona . '>' . $reg->nombre . ' - ' . $reg->num_documento . '</option>';
		}
		break;

	case 'selectProducto':
		require_once "../modelos/Producto.php";
		$persona = new Producto();

		$rspta = $persona->listar();

		echo '<option value="Todos">Todos</options>';

		while ($reg = $rspta->fetch_object()) {
			echo '<option value=' . $reg->idproducto . '>' . $reg->nombre . '</option>';
		}
		break;

	case 'selectVendedor':
		require_once "../modelos/Persona.php";
		$persona = new Persona();

		$rspta = $persona->listarv();

		echo '<option value="Todos">Todos</options>';

		while ($reg = $rspta->fetch_object()) {
			echo '<option value=' . $reg->idpersonal . '>' . $reg->nombre . ' - ' . $reg->num_documento . '</option>';
		}
		break;

	case 'listarArticulos':

		$idsucursal = $_REQUEST["idsucursal"];

		require_once "../modelos/Producto.php";
		$producto = new Producto();

		$rspta = $producto->listarActivosVenta($idsucursal);
		$data = array();

		while ($reg = $rspta->fetch_object()) {
			$data[] = array(
				"0" => '<button class="btn btn-success" onclick="agregarDetalle(' . $reg->idproducto . ',\'' . $reg->nombre . '\',1,0,\'' . $reg->precio_venta . '\',\'' . $reg->preciocigv . '\',\'' . $reg->precioB . '\',\'' . $reg->precioC . '\',\'' . $reg->precioD . '\',\'' . $reg->stock . '\',\'' . $reg->unidadmedida . '\')"><span class="fa fa-shopping-cart"></span></button>',
				"1" => $reg->nombre,
				"2" => $reg->categoria,
				"3" => $reg->codigo,
				"4" => $reg->stock,
				"5" => $reg->precio_venta,
				"6" => "<img src='../files/productos/" . $reg->imagen . "' height='50px' width='50px'>"

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

	case 'selectComprobante':
		require_once "../modelos/Comprobantes.php";
		$comprobantes = new Comprobantes();

		$rspta = $comprobantes->select2();

		while ($reg = $rspta->fetch_object()) {
			echo '<option value=' . $reg->nombre . '>' . $reg->nombre . '</option>';
		}
		break;

	case 'selectCotizaciones':
		require_once "../modelos/Cotizaciones.php";
		$venta = new Cotizacion();

		$rspta = $venta->listar2();

		while ($reg = $rspta->fetch_object()) {
			echo '<option value=' . $reg->idcotizacion . '>' . $reg->serie_comprobante . '-' . $reg->num_comprobante . '</option>';
		}
		break;

	case 'buscarProducto':

		$codigo = $_REQUEST["codigo"];

		$rspta = $venta->buscarProducto($codigo);
		//Codificar el resultado utilizando json
		echo json_encode($rspta);

		break;
}
