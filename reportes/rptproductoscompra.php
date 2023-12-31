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

    //Instanciamos la clase para generar el documento pdf
    $pdf = new PDF_MC_Table();

    //Agregamos la primera página al documento pdf
    $pdf->AddPage();

    //Seteamos el inicio del margen superior en 25 pixeles 
    $y_axis_initial = 25;

    //Seteamos el tipo de letra y creamos el título de la página. No es un encabezado no se repetirá
    $pdf->SetFont('Arial', 'B', 12);

    $pdf->Cell(50, 6, '', 0, 0, 'C');
    $pdf->Cell(100, 6, 'INVENTARIO O ALMACEN EXISTENTE', 1, 0, 'C');
    $pdf->Ln(10);

    //Creamos las celdas para los títulos de cada columna y le asignamos un fondo gris y el tipo de letra
    $pdf->SetFillColor(232, 232, 232);
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(78, 15, 'Nombre', 1, 0, 'C', 1);
    $pdf->Cell(38, 15, utf8_decode('Categoría'), 1, 0, 'C', 1);
    $pdf->Cell(22, 15, "Disponible", 1, 0, 'C', 1);
    $pdf->Cell(22, 15, 'Precio', 1, 0, 'C', 1);
    $pdf->Cell(30, 15, utf8_decode('Total'), 1, 0, 'C', 1);


    $pdf->Ln(16);
    //Comenzamos a crear las filas de los registros según la consulta mysql
    require_once "../modelos/Producto.php";
    $articulo = new Producto();

    $rspta = $articulo->listarProductosCompra();

    //Table with rows and columns
    $pdf->SetWidths(array(78, 38, 22, 22, 30));

    $total = 0;

    while ($reg = $rspta->fetch_object()) {
      $nombre = $reg->nombre . " - " . $reg->unidadmedida;
      $categoria = $reg->categoria;
      $stock = $reg->stock;
      $precioC = $reg->precio_compra;
      $total_compra = $reg->stock * $reg->precio_compra;

      $pdf->SetFont('Arial', '', 10);
      $pdf->Row(array(utf8_decode($nombre), $categoria, $stock, $precioC, $total_compra));

      $total += $reg->stock * $reg->precio_compra;
    }

    $pdf->SetFont('Arial', 'B', 10);
    $pdf->SetFillColor(232, 232, 232);
    $pdf->Cell(152, 6, 'Total', 1, 0, 'C', 1);
    $pdf->SetFillColor(255, 255, 255);
    $pdf->Cell(38, 6, 'S/. ' . utf8_decode($total), 1, 0, 'C', 1);

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