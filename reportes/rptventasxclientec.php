<?php
//Activamos el almacenamiento en el buffer
ob_start();
if (strlen(session_id()) < 1)
  session_start();

if (!isset($_SESSION["nombre"])) {
  echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
} else {
  if ($_SESSION['almacen'] == 1) {

    //Inlcuímos a la clase PDF_MC_Table
    require('PDF_MC_Table.php');

    $fecha_inicio = $_GET['fechai'];
    $fecha_fin = $_GET['fechaf'];
    $idcliente = $_GET['idcliente'];
    $idsucursal = $_GET['idsucursal'];

    //Instanciamos la clase para generar el documento pdf
    $pdf = new PDF_MC_Table();

    //Agregamos la primera página al documento pdf
    $pdf->AddPage();

    //Seteamos el inicio del margen superior en 25 pixeles 
    $y_axis_initial = 25;

    //Seteamos el tipo de letra y creamos el título de la página. No es un encabezado no se repetirá
    $pdf->SetFont('Arial', 'B', 12);

    $pdf->Cell(40, 6, '', 0, 0, 'C');
    $pdf->Cell(100, 6, 'REPORTE DE SALDOS', 1, 0, 'C');
    $pdf->Ln(16);

    $pdf->SetFont('Arial', '', 10);
    $pdf->Cell(0, 2, 'FECHA INICIO            :     ' . utf8_decode(date("d/m/Y", strtotime($fecha_inicio))));

    $pdf->Ln(6);

    $pdf->SetFont('Arial', '', 10);
    $pdf->Cell(0, 2, 'FECHA FIN                 :     ' . utf8_decode(date("d/m/Y", strtotime($fecha_fin))));

    $pdf->Ln(10);

    //Comenzamos a crear las filas de los registros según la consulta mysql
    require_once "../modelos/Consultas.php";
    $consulta = new Consultas();

    $rspta = $consulta->deudasfechacliente($fecha_inicio, $fecha_fin, $idcliente, $idsucursal);

    require_once "../modelos/CuentasCobrar.php";
    $CC = new CuentasCobrar();

    //Table with rows and columns
    $pdf->SetWidths(array(58, 67, 25, 35));

    //Obtenemos los datos de la cabecera de la venta actual
    require_once "../modelos/Venta.php";
    $venta = new Venta();

    $estadocuenta = 0;
    
    //Creamos las celdas para los títulos de cada columna y le asignamos un fondo gris y el tipo de letra
    $pdf->SetFillColor(232, 232, 232);
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(48, 6, utf8_decode('Número'), 1, 0, 'C', 1);
    $pdf->Cell(105, 6, 'Cliente', 1, 0, 'C', 1);
    $pdf->Cell(35, 6, utf8_decode('Saldo Total'), 1, 0, 'C', 1);

    $pdf->Ln(6);
    
    $contador = 1;

    $totalPendiente = 0;

    while ($reg = $rspta->fetch_object()) {

      $nombre = $reg->cliente;
      $codigo = $reg->tipo_comprobante . ' - ' . $reg->serie_comprobante . ' - ' . $reg->num_comprobante;
      $stock = $reg->total_venta;
      if ($reg->ventacredito == 'Si') {
        $ventacredito = 'CRÉDITO';
      } else {
        $ventacredito = 'CONTADO';
      }
      $descripcion = $ventacredito;

      $pdf->SetFont('Arial', '');
      $pdf->SetFillColor(250, 250, 250);

      $pdf->Cell(48, 7, $contador, 1, 0, 'C', 1);
      $pdf->Cell(105, 7, utf8_decode("$reg->cliente"), 1, 0, 'L', 1);
      $pdf->Cell(35, 7, "$reg->deudatotal", 1, 0, 'C', 1);

      $pdf->Ln(3);


      $rsptacc = $CC->deudacliente($reg->idventa);
      //Recorremos todos los valores obtenidos
      $regv = $rsptacc->fetch_object();

      $pdf->Ln(4);

      $contador = $contador + 1;

      $totalPendiente += $reg->deudatotal;

    }

    $pdf->Cell(48, 7, '', 0, 0, 'C', 0);
    $pdf->Cell(105, 7, '', 0, 0, 'L', 0);
    $pdf->Cell(35, 7, "$totalPendiente", 1, 0, 'C', 1);

    //Mostramos el documento pdf
    $pdf->Output();

?>
<?php
  } else {
    echo 'No tiene permiso para visualizar el reporte';
  }
}
ob_end_flush();
?>