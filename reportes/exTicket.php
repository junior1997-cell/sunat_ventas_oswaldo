<?php
//Activamos el almacenamiento en el buffer
ob_start();
if (strlen(session_id()) < 1)
    session_start();

if (!isset($_SESSION["nombre"])) {
    echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
} else {
    if ($_SESSION['ventas'] == 1) {
?>
        <html>

        <head>
            <meta http-equiv="content-type" content="text/html; charset=utf-8" />
            <link href="../public/css/ticket.css" rel="stylesheet" type="text/css">
        </head>

        <body onload="window.print();">
            <?php

            //Incluímos la clase Venta
            require_once "../modelos/Venta.php";
            require_once "Letras.php";
            $V = new EnLetras();
            //Instanaciamos a la clase con el objeto venta
            $venta = new Venta();
            //En el objeto $rspta Obtenemos los valores devueltos del método ventacabecera del modelo
            $rspta = $venta->ventacabecera($_GET["id"]);
            //Recorremos todos los valores obtenidos
            $reg = $rspta->fetch_object();

            //Obtenemos los datos de la cabecera de la venta actual
            require_once "../modelos/CuentasCobrar.php";
            $cc = new CuentasCobrar();
            $rsptacc = $cc->mostrarDeuda($_GET["id"]);
            //Recorremos todos los valores obtenidos
            $regcc = $rsptacc->fetch_object();

            if ($reg->ventacredito == "Si") {
                $formaPago = "CRÉDITO";
            } else {
                $formaPago = "CONTADO";
            }

            //datos de la empresa
            require_once "../modelos/Negocio.php";
            $cnegocio = new Negocio();
            $rsptan = $cnegocio->listar();
            $regn = $rsptan->fetch_object();
            $empresa = $regn->nombre;
            $ndocumento = $regn->ndocumento;
            $documento = $regn->documento;
            $direccion = $regn->direccion;
            $telefono = $regn->telefono;
            $email = $regn->email;
            $pais = $regn->pais;
            $ciudad = $regn->ciudad;
            $imagen = $regn->logo;

            ?>
            <div class="zona_impresion">
                <!-- codigo imprimir -->
                <table border="0" align="center" width="280px">

                    <tr>
                        <td align="center" colspan="2">

                            <!-- Mostramos los datos de la empresa en el documento HTML -->
                            <strong style="font-size: 12pt;"><?php echo $empresa; ?></strong><br>
                            <?php echo $ndocumento; ?>: <?php echo $documento; ?><br>
                            <?php echo $direccion; ?><br>
                            <?php echo 'Teléfono: ' . $telefono; ?><br>
                            <?php echo 'Email: ' . $email; ?><br>
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <td colspan="4">=============================================</td>
                    </tr>
                        <td align="center" colspan="2">
                            <?php

                            if ($reg->tipo_comprobante == "NC") {

                            ?>

                                <strong>
                                    <font size="2">Nota de Crédito<br>

                                        <?php echo $reg->serie_comprobante . " - " . $reg->num_comprobante; ?>

                                    </font>
                                </strong>


                            <?php

                            } else if ($reg->tipo_comprobante == "Boleta" || $reg->tipo_comprobante == "Factura") {

                            ?>

                                <strong>
                                    <font size="2"><?php echo $reg->tipo_comprobante; ?> de Venta Electrónica<br>

                                        <?php echo $reg->serie_comprobante . " - " . $reg->num_comprobante; ?>

                                    </font>
                                </strong>


                            <?php

                            } else {


                            ?>

                                <strong>
                                    <font size="2"><?php echo $reg->tipo_comprobante; ?> de Pedido<br>

                                        <?php echo $reg->serie_comprobante . " - " . $reg->num_comprobante; ?>

                                        <br>

                                        NO VÁLIDO COMO COMPROBANTE DE PAGO

                                    </font>
                                </strong>

                            <?php


                            }

                            ?>


                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td align="center"></td>
                    </tr>
                    <tr>
                        <!-- Mostramos los datos del cliente en el documento HTML -->
                        <td style="padding-left: 5px; width: 125px;">FECHA EMISIÓN : </td>
                        <td><p><label><?php echo $reg->fecha_kardex; ?></p></label></td>
                    </tr>
                    <tr>
                        <!-- Mostramos los datos del cliente en el documento HTML -->
                        <td style="padding-left: 5px;">SEÑOR(ES) :</td>
                        <td><p><label><?php echo $reg->cliente; ?></p></label></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 5px;"><?php echo $reg->tipo_documento;?></td>
                        <td><p><label><?php echo $reg->num_documento; ?></p></label></td>
                    </tr>
                    <tr>
                        <!-- Mostramos los datos del cliente en el documento HTML -->
                        <td style="padding-left: 5px;">DIRECCIÓN :</td>
                        <td><p><label><?php echo $reg->direccion; ?></p></label></td>
                    </tr>
                    </tr>
                    <tr>
                        <td colspan="4">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                        </td>
                    </tr>
                </table>
                <!-- Mostramos los detalles de la venta en el documento HTML -->
                <table border="0" align="center" width="320px">
                    <tr>
                        <td><b>CANT.</b></td>
                        <td><b>DESCRIPCIÓN</b></td>
                        <td align="right"><b>IMPORTE</b></td>
                    </tr>
                    <tr>
                        <td colspan="4">=============================================</td>
                    </tr>
                    <?php
                    $rsptad = $venta->ventadetalle($_GET["id"]);
                    $cantidad = 0;
                    $total = 0;
                    $subtotal = 0;
                    $descuento = 0;
                    $exonerado = 0;
                    while ($regd = $rsptad->fetch_object()) {
                        if ($regd->proigv == "No Gravada") {
                            $exonerado =  $exonerado + ($regd->cantidad * $regd->precio_venta);
                        } else {
                            $exonerado = 0;
                        }
                        echo "<tr>";
                        echo "<td>" . number_format($regd->cantidad,2, ",", ".") . "</td>";
                        echo "<td>" . $regd->nombre_producto;
                        echo "<td align='right'>S/ " . number_format($regd->subtotal + $regd->descuento,2, ",", ".") . "</td>";
                        echo "</tr>";
                        $cantidad += $regd->cantidad;
                        $subtotal += $regd->subtotal;
                        $descuento += $regd->descuento;
                    }
                    ?>
                    <!-- Mostramos los totales de la venta en el documento HTML -->

                    <tr>
                        <td>&nbsp;</td>
                        <td align="right"><b>SUBTOTAL:</b></td>
                        <td align="right"><b>S/ <?php
                                                echo number_format(($subtotal + $descuento), 2, ",", ".");
                                                ?></b>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="right"><b>DESCUENTO:</b></td>
                        <td align="right"><b>S/ <?php
                                                echo number_format(($descuento*$cantidad), 2, ",", ".");
                                                ?></b>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="right"><b>OP. GRAV:</b></td>
                        <td align="right"><b>S/ <?php
                                                if($reg->tipo_comprobante != 'Nota'){
                                                    $xd = round(((($reg->total_venta) - $exonerado) * (($reg->impuesto) / ($reg->impuesto + 100))), 2);
                                                    echo number_format((($reg->total_venta) - $exonerado) - $xd, 2, ",", ".");
                                                }else{
                                                    echo $reg->total_venta;
                                                }
                                                ?></b>
                        </td>
                    </tr>

                    <?php

                    if ($exonerado != 0) {



                    ?>



                        <tr>
                            <td>&nbsp;</td>
                            <td align="right"><b>EXONERADO:</b></td>
                            <td align="right"><b>S/ <?php
                                                    echo number_format($exonerado-($descuento*$cantidad), 2, ",", ".");
                                                    ?></b>
                            </td>
                        </tr>



                    <?php
                    }

                    ?>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="right"><b>IGV(18%):</b></td>
                        <td align="right"><b>S/ <?php
                                                if($reg->tipo_comprobante != 'Nota'){
                                                    $igv = round(((($reg->total_venta) - $exonerado) * (($reg->impuesto) / ($reg->impuesto + 100))), 2);
                                                    echo number_format($igv, 2, ",", ".");
                                                }else{
                                                    $igv = 0;
                                                    echo '0,00';
                                                }
                                                ?></b>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="right"><b>TOTAL:</b></td>
                        <td align="right"><b>S/ <?php echo $reg->total_venta;  ?></b>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                            <br>
                            SON: <?php
                                    echo $con_letra = strtoupper($V->ValorEnLetras($reg->total_venta, "CON"));
                                    ?>
                            <br>
                            - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3">VENDEDOR: <?php echo $reg->personal; ?></td>
                    </tr>

                    <tr>
                        <td colspan="3">Nº de productos: <?php echo $cantidad; ?></td>
                    </tr>

                </table>
                <br>
            </div>
            <p>&nbsp;</p>

        </body>

        </html>
<?php
    } else {
        echo 'No tiene permiso para visualizar el reporte';
    }
}
ob_end_flush();
?>