<?php
	$subtotal 	= 0;
	$iva 	 	= 0;
	$impuesto 	= 0;
	$tl_sniva   = 0;
	$total 		= 0;
 //print_r($configuracion); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo $factura['tipo_comprobante']; ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php echo $anulada; ?>
<div id="page_pdf">
	<table id="factura_head">
		<tr>
			<td class="logo_factura">
				<div>
					<img src="../<?php echo $configuracion['logo']; ?>" width="150px">
				</div>
			</td>
			<td class="info_empresa">
				<?php
					if($result_config > 0){
						$iva = $configuracion['monto_impuesto'];
				 ?>
				<div>
					<span class="h2"><?php echo strtoupper($configuracion['nombre']); ?></span>
					<p>RUC <?php echo $configuracion['documento']; ?></p>
					<p><?php echo $configuracion['direccion']; ?></p>
					<p>Teléfono: <?php echo $configuracion['telefono']; ?></p>
					<p>Email: <?php echo $configuracion['email']; ?></p>
				</div>
				<?php
					}
				 ?>
			</td>
			<td class="info_factura">
				<div class="round" style="text-align: center;">
					<br>
					<p><strong><h3>R. U. C. <?php echo $configuracion['documento']; ?></strong></h3></p>
					<p><strong><h2><?php echo strtoupper($factura['tipo_comprobante']); ?> ELECTRÓNICA</strong></h2></p>
					<p><?php echo $factura['serie_comprobante'] . ' - ' . $factura['num_comprobante']; ?></p>
				</div>
			</td>
		</tr>
	</table>

	<?php

		if($factura['ventacredito'] == "Si"){
			$formaPago="CRÉDITO";
		}else{
			$formaPago="CONTADO";
		}

	?>

	<table id="factura_cliente">
		<tr>
			<td class="info_cliente">
				<div class="round2">
					<!-- <span class="h3">Cliente</span> -->
					<table class="datos_cliente">
						<tr>
							<td><label><strong> Razón Social:</strong></label><p style="margin-left: 2px;"><?php echo $factura['cliente']; ?></p></td>
							<td><label><strong> Fecha Emisión:</strong></label> <p><?php echo $factura['fecha_kardex']; ?></p></td>
						</tr>
						<tr>
							<td><label><strong> <?php echo $factura['tipo_documento']; ?>:</strong></label> <p><?php echo $factura['num_documento']; ?></p></td>
							<td><label><strong> Moneda:</strong></label> <p>Soles</p></td>
						</tr>
						<tr>
							<td><label><strong> Dirección:</strong></label> <p><?php echo $factura['direccion']; ?></p></td>
							<td><label><strong> Condición de Pago:</strong></label> <p><?php echo $formaPago; ?></p></td>
						</tr>
						<tr>
							<td><label><strong> Teléfono:</strong></label> <p><?php echo $factura['telefono']; ?></p></td>

							<?php

								if($factura['ventacredito'] == 'Si'){

							?>

							<td><label><strong> Cuota 1:</strong></label> <p>S/ <?php echo $cuentasc['deudatotal'] - $cuentasc['abonototal']; ?></p></td>

					        <?php

								}

							?>

						</tr>
						<tr>
							<?php

								if($factura['ventacredito'] == 'Si'){

							?>
							<td></td>
							<td><label><strong> Fecha de Pago:</strong></label> <p><?php echo $cuentasc['fechavencimiento']; ?></p></td>
							<?php

								}

							?>
						</tr>
					</table>
				</div>
			</td>

		</tr>
	</table>

	<table id="factura_detalle" style="width: 100%;">
			<thead>
				<tr>
					<th style="border: 1px  solid black;" width="20px">CÓDIGO.</th>
					<th style="border: 1px solid black;" class="textcenter" width="20px">CANT.</th>
					<th style="border: 1px solid black;" class="textcenter" width="20px">UM.</th>
					<th style="border: 1px solid black;" class="textcenter" width="300px">DESCRIPCIÓN</th>
					<th style="border: 1px solid black;" class="textcenter" width="20px">P.UNIT</th>
					<th style="border: 1px solid black;" class="textcenter" width="10px">DCTO.</th>
					<th style="border: 1px solid black;" class="textcenter" width="20px">TOTAL.</th>
				</tr>
			</thead>
			<tbody id="detalle_productos" style="border: 1px solid black;">

			<?php

				$descuento = 0;

				$exonerado = 0;

				if($result_detalle > 0){

					while ($row = mysqli_fetch_assoc($query_productos)){

						if($row['proigv']=="No Gravada"){
							$exonerado = $exonerado + ($row['cantidad']*$row['precio_venta']);
						}else{
							$exonerado=0;
						}

			 ?>
				<tr>
					<td style="border-right: 1px solid black;" class="textcenter" width="20px"><?php echo $row['codigo']; ?></td>
					<td style="border-right: 1px solid black;" class="textcenter" width="20px"><?php echo round($row['cantidad'],2); ?></td>
					<td style="border-right: 1px solid black;" class="textcenter" width="20px"><?php echo $row['unidadmedida']; ?></td>
					<td style="border-right: 1px solid black;" width="300px"><?php echo $row['producto']; ?></td>
					<td style="border-right: 1px solid black;" class="textcenter" width="20px"><?php echo round($row['precio_venta'],2); ?></td>
					<td style="border-right: 1px solid black;" class="textcenter" width="10px"><?php echo round($row['descuento'],2); ?></td>
					<td style="border-right: 1px solid black;" class="textcenter" width="20px"><?php echo round($row['subtotal'],2); ?></td>
				</tr>
			<?php
						$precio_total = $row['subtotal'];
						$subtotal = round($subtotal + $precio_total, 2);
						$descuento = $row['descuento'] + $row['descuento'];
					}
				}

				$xd=round(((($factura['total_venta']+$descuento)-$exonerado)*(($iva)/($iva+100))),2);

				// $impuesto 	= round($subtotal * ($iva / 100), 2);
				$tl_sniva 	= round((($factura['total_venta']+$descuento)-$exonerado)-$xd,2);
				// $total 		= round($tl_sniva + $impuesto,2);
			// ?>
			</tbody>
			<?php

				//Convertimos el total en letras
				require_once "../Letras.php";
				$V=new EnLetras(); 
				$con_letra=strtoupper($V->ValorEnLetras($factura['total_venta'],"SOLES"));

				if($factura['tipo_comprobante']=='Boleta'){
					$iddoc='01';
					$iddocCliente='6';
				}else if($factura['tipo_comprobante']=='Factura'){
					$iddoc="03";
					if(strlen($factura['num_documento'])==8){
					  $iddocCliente="1";
					}else{
					  $iddocCliente="4";
					}
				}else{
					$iddoc='07';
					$iddocCliente='6';
				}

				$texto= $configuracion['documento']."|".$iddoc."|".$factura['serie_comprobante']."|".$factura['num_comprobante']."|".$iva."|".$factura['total_venta']."|".$factura['fecha']."|".$iddocCliente."|".$factura['num_documento']."|";

				if(file_exists("../../phpqrcode/qrlib.php")){
					require "../../phpqrcode/qrlib.php";
				
					$ruta_qr = '../qr/'.'img2.png';
				
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

			?>
			<tfoot id="detalle_totales">
				<tr>
					<td style="border: 1px solid black;" class="textcenter" colspan="3"><strong>Vendedor : </strong><?php echo $factura['personal']; ?></td>
					<td style="border: 1px solid black;" class="textcenter"><strong> SON : </strong> <?php echo $con_letra ?></td>
					<td style="border: 1px solid black;" colspan="2" class="textright"><span>OP. GRAVADA S/</span></td>
					<td style="border: 1px solid black;" class="textcenter"><span><?php echo $tl_sniva; ?></span></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="border: 1px solid black;" colspan="2" class="textright"><span>OP. EXONERADO S/</span></td>
					<td style="border: 1px solid black;" class="textcenter"><span><?php echo $exonerado-$descuento; ?></span></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="border: 1px solid black;" colspan="2" class="textright"><span>DESCUENTO S/</span></td>
					<td style="border: 1px solid black;" class="textcenter"><span><?php echo $descuento; ?></span></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="border: 1px solid black;" colspan="2" class="textright"><span>IGV (<?php echo $iva; ?> %) S/</span></td>
					<td style="border: 1px solid black;" class="textcenter"><span><?php echo $igv = round(((($factura['total_venta']+$descuento)-$exonerado)*(($iva)/($iva+100))),2); ?></span></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="border: 1px solid black;" colspan="2" class="textright"><span>TOTAL A PAGAR S/</span></td>
					<td style="border: 1px solid black;" class="textcenter"><span><?php echo $factura['total_venta']; ?></span></td>
				</tr>
		</tfoot>
	</table>
	<div>
		<p style="margin-top: -20px; margin-left: 20px;" class="nota"><img src="../qr/img2.png" width="140px"></p>
		<p style="margin-left: 20px;">Representación Impresa de la </p>
		<p style="padding-left: 46px;"><?php echo $factura['tipo_comprobante']; ?> Electrónica</p>
	</div>

	<br>

	<table id="factura_cliente">
		<tr>
			<td class="info_cliente">
				<div class="round">
					<!-- <span class="h3">Cliente</span> -->
					<table class="datos_cliente">
						<tr>
							<td style="text-align: center;"><label><strong>Banco:</strong></label></td>
							<td style="text-align: center;"><label><strong>Moneda:</label></strong> </td>
							<td style="text-align: center;"><label><strong>Cuenta:</label></strong> </td>
							<td style="text-align: center;"><label><strong>CCI:</label></strong> </td>
						</tr>
						<tr>
							<td style="text-align: center;"><label>BANCO DE CRÉDITO DEL PERÚ</label> </td>
							<td>SOLES</td>
							<td>4359560777041</td>
							<td>0024350095</td>
						</tr>
					</table>
				</div>
			</td>

		</tr>
	</table>

		<h4 class="label_gracias">¡Gracias por su compra!</h4>

</div>

</body>
</html>