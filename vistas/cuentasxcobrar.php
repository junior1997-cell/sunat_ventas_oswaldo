<?php
//Activamos el almacenamiento en el buffer
ob_start();
session_start();

date_default_timezone_set('America/Lima');

if (!isset($_SESSION["nombre"])) {
  header("Location: ../index.php");
} else {
  require 'modulos/header.php';

  if ($_SESSION['ventas'] == 1) {
?>

    <div class="content-wrapper">

      <!-- Main content -->

      <section class="content-header">

        <br>

        <ol class="breadcrumb">

          <li><a href="inicio.php"><i class="fa fa-dashboard"></i> Inicio</a></li>

          <li class="active">Documentos por Cobrar</li>

        </ol>

      </section>

      <section class="content">

        <div class="row">

          <div class="col-md-12">

            <div class="panel panel-default" style="border-color: #666; border-width: 3px; border-style: double;">

              <div class="panel-heading">
                <div class="box-header with-border">
                  <h1 class="box-title">Documentos por Cobrar</h1>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse">
                      <i class="fa fa-minus"></i>
                    </button>
                    <button class="btn btn-box-tool" data-widget="remove">
                      <i class="fa fa-times"></i>
                    </button>
                  </div>

                </div>
              </div>

              <!-- centro -->
              <div class="panel-body table-responsive">

                <div class="row">
                  
                  <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <label>Almacén:</label>
                    <div class="input-group">
                      <span class="input-group-addon"><i class="fa fa-laptop"></i></span>
                      <select id="idsucursal2" name="idsucursal2" class="form-control selectpicker" data-live-search="true">
                      </select>
                    </div>
                  </div>

                  <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <label>Cliente:</label>
                    <select id="idcliente" name="idcliente" class="form-control selectpicker" data-live-search="true" required>
                    </select>
                  </div>
                  
                  <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <label>Fecha Inicio</label>
                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="date" class="form-control" name="fecha_inicio" id="fecha_inicio" value="<?php echo date("Y-m-d"); ?>">
                    </div>
                  </div>

                  <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <label>Fecha Fin</label>
                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="date" class="form-control" name="fecha_fin" id="fecha_fin" value="<?php echo date("Y-m-d"); ?>">
                    </div>
                  </div>


                </div>

                <button class="btn btn-danger" id="btnGenerarReporte" onclick="generarReporte();"><i class="fa fa-file"></i> Reporte Consolidado</button>

                <br><br>

                <table id="tbllistadocuentasxcobrar" class="table table-striped table-bordered table-condensed table-hover dataTable" cellpadding="0" cellspacing="0" aria-describedby="tblIngresos_info" width="100%" role="grid" style="width: 100%;">
                  <thead>
                    <th>Fecha Registro</th>
                    <th>Documento</th>
                    <th>Cliente</th>
                    <th>Dni / Ruc</th>
                    <th>Saldo</th>
                    <th>Abonos Total</th>
                    <th>Total Venta</th>
                    <th>Fecha Vencimiento</th>
                    <th>Estado</th>
                    <th>Detalle</th>
                    <th>Acciones</th>
                  </thead>
                  <tbody>
                  </tbody>
                  <tfoot>
                    <th>Fecha Registro</th>
                    <th>Documento</th>
                    <th>Cliente</th>
                    <th>Dni / Ruc</th>
                    <th>Saldo</th>
                    <th>Abonos Total</th>
                    <th>Total Venta</th>
                    <th>Fecha Vencimiento</th>
                    <th>Estado</th>
                    <th>Detalle</th>
                    <th>Acciones</th>
                  </tfoot>
                </table>



              </div>



            </div>

          </div>

      </section>


    </div>

    <!-- Modal -->
    <div id="getCodeModal" class="modal fade" role="dialog">
      <div class="modal-dialog modal-md">

        <!-- Modal content-->
        <div class="modal-content panel panel-primary">

          <form role="form" name="formulario" id="formulario" method="POST">

            <div class="modal-header panel-heading">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title"><span id="titulo-formulario">Registrar</span> Abono</h4>
            </div>

            <div class="modal-body panel-body">

              <input type="hidden" name="idcpc" id="idcpc">

              <input type="hidden" name="idventa" id="idventa">

              <div class="alert" style="background: #E0F7FA;">
                <strong><i class="fa fa-info"></i> Info!</strong> El Documento: <label for="documento" id="documento"></label> tiene un pago pendiente de S/ <label for="deudaTotal" id="deutaTotal"></label>, el cuál se debe realizar como máximo el día: <label for="fechavencimiento" id="fechavencimiento"></label>. A continuación Ingresa el total de dinero abonado y luego haz click en Guardar.
              </div>

              <div class="form-group col-lg-4">
                <label for="name" class="control-label">Condición de Pago: </label>
                <select id="formapago" name="formapago" class="form-control selectpicker" data-live-search="true" required>

                  <option value="Efectivo">En Efectivo</option>
                  <option value="Transferencia">Transferencia o Tarjeta</option>
                  <option value="Yape">Yape</option>
                  <option value="Plin">Plin</option>
                  <option value="Deposito">Deposito</option>

                </select>
              </div>
              <div class="form-group col-lg-4">
                <label class="col-form-label">Monto a Pagar:</label>
                <input type="text" class="form-control" id="montoPagar" name="montoPagar" required="">
              </div>
              <div class="form-group col-lg-4">
                <label class="col-form-label">Monto Adeudado:</label>
                <input class="form-control pull-right" type="text" name="montoAdeudado" id="montoAdeudado" readonly="">
              </div>
              <div class="form-group col-lg-12">
                <label class="col-form-label">Observación:</label>
                <textarea class="form-control" name="observacion" id="observacion"></textarea>
              </div>
              <div class="form-group col-lg-4">
                <label class="col-form-label">Banco:</label>
                <select id="banco" name="banco" class="form-control selectpicker" data-live-search="true" title="Seleccionar Banco">

                  <option value="BCP">BCP</option>
                  <option value="INTERBANK">INTERBANK</option>
                  <option value="BBVA">BBVA</option>

                </select>
              </div>
              <div class="form-group col-lg-4">
                <label class="col-form-label">OP:</label>
                <input class="form-control pull-right" type="text" name="op" id="op">
              </div>
              <div class="form-group col-lg-4">
                <label class="col-form-label">Fecha de Pago:</label>
                <input class="form-control pull-right" type="date" name="fechaPago" id="fechaPago">
              </div>
            </div>
            <div class="modal-footer panel-footer">
              <button type="button" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancelar</button>

              <button class="btn btn-primary" type="submit" id="btnGuardar"><i class="fa fa-save"></i> Guardar</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Fin modal -->

    <!-- Modal -->
    <div id="getCodeModal2" class="modal fade" role="dialog">

      <div class="modal-dialog modal-md">

        <!-- Modal content-->
        <div class="modal-content panel panel-primary">

          <form role="form" name="formulario" id="formulario" method="POST">

            <div class="modal-header panel-heading">

              <button type="button" class="close" data-dismiss="modal">&times;</button>

              <h4 class="modal-title"><span id="titulo-formulario">Lista de</span> Abonos</h4>

            </div>

            <div class="modal-body panel-body">

              <div class="alert" style="background: #E0F7FA;">
                <strong><i class="fa fa-info"></i> Info!</strong> El monto total del documento electrónico es de <label for="abonoTotal2" id="abonoTotal2"></label>, y se han registrado abonos por un total de <label for="abonoTotal" id="abonoTotal"></label>.
              </div>

              <table id="tbllistado" class="table table-striped table-bordered table-condensed table-hover" width="100%">
                <thead>
                  <th style="width: 100px;">Fecha Registro</th>
                  <th style="width: 25px;">Monto</th>
                  <th style="width: 150px;">Forma de Pago</th>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                  <th>Nombre</th>
                  <th>Estado</th>
                  <th>Forma de Pago</th>
                </tfoot>
              </table>

            </div>

            <div class="modal-footer panel-footer">

              <button type="button" class="btn btn-danger pull-right" data-dismiss="modal"><i class="fa fa-times"></i> Cerrar</button>

            </div>

          </form>

        </div>

      </div>

    </div>

    <!-- Fin modal -->




  <?php
  } else {
    require 'noacceso.php';
  }

  require 'modulos/footer.php';
  ?>
  <script type="text/javascript" src="js/ventasfechacliente2.js"></script>
  <script type="text/javascript" src="js/cuentascobrar.js"></script>
  <script type="text/javascript" src="js/stocksbajos.js"></script>
<?php
}
ob_end_flush();
?>