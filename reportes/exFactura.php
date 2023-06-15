<?php
//Activamos el almacenamiento en el buffer
ob_start();
if (strlen(session_id()) < 1) 
  session_start();

if (!isset($_SESSION["nombre"]))
{
  echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
}
else
{
if ($_SESSION['ventas']==1)
{
//Incluímos el archivo Factura.php
require('Factura.php');

//Establecemos los datos de la empresa

$logo2 = "2031.png";
$ext_logo2 = "png";

//datos de la empresa
require_once "../modelos/Negocio.php";
$cnegocio = new Negocio();
$rsptan = $cnegocio->listar();
$regn=$rsptan->fetch_object();
$empresa = $regn->nombre;
$ndocumento = $regn->ndocumento;
$documento = $regn->documento;
$direccion = $regn->direccion;
$telefono = $regn->telefono;
$email = $regn->email;
$pais = $regn->pais;
$ciudad = $regn->ciudad;
$logo = $regn->logo;

//Obtenemos los datos de la cabecera de la venta actual
require_once "../modelos/Venta.php";
$venta= new Venta();
$rsptav = $venta->ventacabecera($_GET["id"]);
//Recorremos todos los valores obtenidos
$regv = $rsptav->fetch_object();

//Obtenemos los datos de la cabecera de la venta actual
require_once "../modelos/CuentasCobrar.php";
$cc= new CuentasCobrar();
$rsptacc = $cc->mostrarDeuda($_GET["id"]);
//Recorremos todos los valores obtenidos
$regcc = $rsptacc->fetch_object();

//Establecemos la configuración de la factura
$pdf = new PDF_Invoice( 'P', 'mm', 'A4' );
$pdf->AddPage();

//Enviamos los datos de la empresa al método addSociete de la clase Factura
$pdf->addSociete(utf8_decode($empresa),
                  "RUC ".$documento."\n" .
                  utf8_decode("").utf8_decode($direccion)."\n".
                  utf8_decode("Teléfono: ").$telefono."\n" .
                  "Email : ".$email,$logo,$ext_logo);
$pdf->fact_dev( "$regv->tipo_comprobante ", "$regv->serie_comprobante-$regv->num_comprobante" );
$pdf->temporaire( "" );
$pdf->addDate( $regv->fecha);

$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();

$pdf->SetFont('Arial','',10);
$pdf->Cell(0,2,'CLIENTE:     '.utf8_decode($regv->cliente));
$pdf->Ln();

$pdf->Ln();

$pdf->Ln();

$pdf->SetFont('Arial','',10);
$pdf->Cell(-0.2,2,utf8_decode($regv->tipo_documento).':     '.$regv->num_documento);
$pdf->Ln();
$pdf->SetFont('Arial','',10);
$pdf->Cell(50,10,"DOMICILIO:     ".utf8_decode($regv->direccion));


if($regv->ventacredito == "Si"){
  $formaPago="CRÉDITO";
}else{
  $formaPago="CONTADO";
}

$pdf->Ln();

if($regv->ventacredito == "Si"){

  $pdf->SetFont('Arial','',10);
  $pdf->Cell(-0.2,2,utf8_decode("CONDICIÓN DE PAGO:   "). utf8_decode($formaPago));
  // $pdf->addClientAdresse3("- Cuota 1: ");
  // $pdf->addClientAdresse4("- Fecha de Pago: ". );
  $pdf->Ln();  
}else{
  $pdf->Cell(-0.2,2,utf8_decode("CONDICIÓN DE PAGO:   "). utf8_decode($formaPago));
  $pdf->Ln();
  $pdf->Ln();
}

$pdf->Ln();
$pdf->Ln();

$pdf->SetFontSize(10);
// $pdf->SetFillColor(240,240,240);
// $pdf->SetTextColor(40,40,40);
// $pdf->SetDrawColor(255,255,255);
// $pdf->SetLineWidth(0.02);
$pdf->SetFillColor(250,250,250);
$pdf->SetTextColor(40,40,40);
$pdf->SetDrawColor(88,88,88);
$pdf->SetFont('Arial','B');
$pdf->Cell(25,7,'CODIGO',1,0,'C',1);
$pdf->Cell(108,7,'DESCRIPCION',1,0,'C',1);
$pdf->Cell(12,7,'CANT',1,0,'C',1);
$pdf->Cell(12,7,'P.U',1,0,'C',1);
$pdf->Cell(12,7,'DESC',1,0,'C',1);
$pdf->Cell(21,7,'SUBTOTAL',1,0,'C',1);
$pdf->SetLineWidth(0.02);

$pdf->SetFont('Arial','');
$pdf->SetFillColor(255,255,255);
$pdf->SetTextColor(40,40,40);
$pdf->SetDrawColor(88,88,88);
$pdf->Ln();


//Obtenemos todos los detalles de la venta actual
$rsptad = $venta->ventadetallePDF($_GET["id"]);

$descuento = 0;

$exonerado = 0;

while ($regd = $rsptad->fetch_object()) {

            if($regd->proigv=="No Gravada"){
                $exonerado = $exonerado + ($regd->cantidad*$regd->precio_venta);
            }else{
                $exonerado=0;
            }
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(25,7,"$regd->codigo",1,0,'C',1);
            $pdf->vcell(108,7,$pdf->getx(),utf8_decode("$regd->producto - $regd->unidadmedida"));
            $pdf->Cell(12,7,"$regd->cantidad",1,0,'C',1);
            $pdf->Cell(12,7,"$regd->precio_venta",1,0,'C',1);
            $pdf->Cell(12,7,"$regd->descuento",1,0,'C',1);
            $pdf->Cell(21,7,round("$regd->subtotal",2),1,0,'C',1);
            $pdf->Ln();

            $subtotal+=$regd->subtotal;

            $descuento+=$regd->descuento;

}

$pdf->SetFont('Arial','',10);

$pdf->Ln();

// $pdf->Cell(27,7,"",0,0,0,1);
// $pdf->Cell(100,7,"",0,0,0,1);
// // $pdf->Cell(12,7,"",0,0,'C',1);
// // $pdf->Cell(2,7,"",0,0,'C',1);
// $pdf->Cell(42,7,"SUBTOTAL",1,0,'C',1);
// $pdf->Cell(21,7,"$subtotal",1,0,'C',1);

// $pdf->Ln();

$pdf->Cell(38,7,"",0,0,'C',1);
$pdf->Cell(95,7,"",0,0,'L',1);
// $pdf->Cell(12,7,"",0,0,'C',1);
// $pdf->Cell(2,7,"",0,0,'C',1);
$pdf->Cell(36,7,"DESCUENTO",1,0,'C',1);
$pdf->Cell(21,7,"$descuento",1,0,'C',1);

$pdf->Ln();

$xd=round(((($regv->total_venta+$descuento)-$exonerado)*(($regv->impuesto)/($regv->impuesto+100))),2);

$pdf->Cell(38,7,"",0,0,'C',1);
$pdf->Cell(95,7,"",0,0,'L',1);
// $pdf->Cell(12,7,"",0,0,'C',1);
// $pdf->Cell(2,7,"",0,0,'C',1);
$pdf->Cell(36,7,"SUB TOTAL",1,0,'C',1);
$pdf->Cell(21,7,(($regv->total_venta+$descuento)-$exonerado)-$xd,1,0,'C',1);

$pdf->Ln();

$pdf->Cell(38,7,"",0,0,'C',1);
$pdf->Cell(95,7,"",0,0,'L',1);
// $pdf->Cell(12,7,"",0,0,'C',1);
// $pdf->Cell(2,7,"",0,0,'C',1);
$pdf->Cell(36,7,"EXONERADO",1,0,'C',1);
$pdf->Cell(21,7,$exonerado-$descuento,1,0,'C',1);

$pdf->Ln();

$pdf->Cell(38,7,"",0,0,'C',1);
$pdf->Cell(95,7,"",0,0,'L',1);
// $pdf->Cell(12,7,"",0,0,'C',1);
// $pdf->Cell(2,7,"",0,0,'C',1);
$pdf->Cell(36,7,"IGV",1,0,'C',1);
$pdf->Cell(21,7,$igv = round(((($regv->total_venta+$descuento)-$exonerado)*(($regv->impuesto)/($regv->impuesto+100))),2),1,0,'C',1);

$pdf->Ln();

$pdf->Cell(38,7,"",0,0,'C',1);
$pdf->Cell(95,7,"",0,0,'L',1);
// $pdf->Cell(12,7,"",0,0,'C',1);
// $pdf->Cell(2,7,"",0,0,'C',1);
$pdf->Cell(36,7,"TOTAL",1,0,'C',1);
$pdf->Cell(21,7,round(($regv->total_venta),2),1,0,'C',1);

$pdf->Ln();
$pdf->Ln();

if($regv->tipo_comprobante=='Boleta'){
    $iddoc='01';
    $iddocCliente='6';
}else if($regv->tipo_comprobante=='Factura'){
    $iddoc="03";
    if(strlen($regv->num_documento)==8){
      $iddocCliente="1";
    }else{
      $iddocCliente="4";
    }
}else{
    $iddoc='07';
    $iddocCliente='6';
}

$texto= $documento."|".$iddoc."|".$regv->serie_comprobante."|".$regv->num_comprobante."|".$igv."|".$regv->total_venta."|".$regv->fecha."|".$iddocCliente."|".$regv->num_documento."|";

if(file_exists("../phpqrcode/qrlib.php")){
    require "../phpqrcode/qrlib.php";

    $ruta_qr = 'qr/'.'img2.png';

    $tamaño = 10;

    $level = "Q";

    $framSize = 3;

    QRcode::png($texto, $ruta_qr, $level, $tamaño, $framSize);

    if(file_exists($ruta_qr)){
        $error=0;
        $mensaje="Archivo QR, generado";
    }

}else{
    $error=1;
    $mensaje="No Existe la libreria";
}

$pdf->Image("./qr/img2.png", $pdf->GetX() + 20, $pdf->GetY()-38, 34);
$pdf->SetFont('Arial','',8);
$pdf->Cell(76,2, utf8_decode('    Representación Impresa de la ') .$regv->tipo_comprobante . utf8_decode(" Electrónica"),0,0,'C');

//Convertimos el total en letras
require_once "Letras.php";
$V=new EnLetras(); 
$con_letra=strtoupper($V->ValorEnLetras($regv->total_venta,"SOLES"));

$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();

$pdf->SetFont('Arial','',8);
$pdf->Cell(54,2,'SON:  '.utf8_decode($con_letra));

$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();

if($regv->ventacredito == "Si"){

$pdf->Ln();

$pdf->SetFont('Arial','',8);

$pdf->Cell(35,7,"Forma de Pago: Cuota",0,0,'C',1);

$pdf->Ln();

$pdf->SetFont('Arial','B',8);

$pdf->Cell(27,7,"Fecha de Pago",1,0,'C',1);
$pdf->Cell(50,7,"Monto de Cuota",1,0,'C',1);

$pdf->Ln();

$pdf->SetFont('Arial','',8);

$pdf->Cell(27,7,utf8_decode($regcc->fechavencimiento),1,0,'C',1);
$pdf->Cell(50,7,"S/.".utf8_decode($regcc->deudatotal-$regcc->abonototal),1,0,'C',1);

}

$pdf->Ln();
$pdf->Ln();

$pdf->SetFont('Arial','B',8);

$pdf->Cell(27,7,"TIPO DE CUENTA",1,0,'C',1);
$pdf->Cell(100,7,"CUENTA",1,0,'C',1);

$pdf->Ln();

$pdf->SetFont('Arial','',8);

$pdf->Cell(27,7,"BCP",1,0,'C',1);
$pdf->Cell(100,7,"Cuenta: 4359560777041 - CCI : 0024350095",1,0,'C',1);

$pdf->Output("documentos/".utf8_decode($regv->tipo_comprobante)."-".$regv->num_comprobante.".pdf","F");
$pdf->Output("documentos/".utf8_decode($regv->tipo_comprobante)."-".$regv->num_comprobante.".pdf","I");



}
else
{
  echo 'No tiene permiso para visualizar el reporte';
}

}
ob_end_flush();
?>