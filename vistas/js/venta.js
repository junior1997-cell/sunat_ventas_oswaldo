var tabla;
var contador = 0;

//funcion que se ejecuta al inicio
function init() {
	marcarImpuesto();
	mostrarform(false);
	listar();

	origin = window.location.origin

	pathName = window.location.pathname
	arrPath = pathName.split("/")
	lastPath = arrPath[arrPath.length - 3]

	$("#formulario").on("submit", function (e) {
		guardaryeditar(e);
	});

	$("#formularioClientes").on("submit", function (e) {
		guardarCliente(e);
	});

	//cargamos los items al select almacen
	$.post("../controladores/venta.php?op=selectSucursal", function (r) {
		$("#idsucursal").html(r);
		$('#idsucursal').selectpicker('refresh');
	});

	//cargamos los items al select cliente
	$.post("../controladores/venta.php?op=selectCliente", function (r) {
		$("#idcliente").html(r);
		$('#idcliente').selectpicker('refresh');
	});

	//cargamos los items al celect comprobantes
	$.post("../controladores/venta.php?op=selectComprobante", function (c) {
		$("#tipo_comprobante").html(c);
		$("#tipo_comprobante").selectpicker('refresh');
	});

	//cargamos los items al select comprobantes
	$.post("../controladores/cotizaciones.php?op=selectCotizaciones", function (c) {
		$("#comprobanteReferencia").html(c);
		$("#comprobanteReferencia").selectpicker('refresh');
	});

	//cargamos los items al select almacen
	$.post("../controladores/venta.php?op=selectSucursal3", function (r) {
		$("#idsucursal2").html(r);
		$('#idsucursal2').selectpicker('refresh');
	});

	$.post("../controladores/usuario.php?op=selectEmpleado", function (r) {
		$("#idpersonal").html(r);
		$('#idpersonal').selectpicker('refresh');
	});

	$("#fecha_inicio").change(listar);
	$("#fecha_fin").change(listar);
	$("#estado").change(listar);
	$("#idsucursal2").change(listar);

	$("#idsucursal").change(documentosSucursal);

	$('#navVentasV').addClass("treeview active");
	$('#navVentasLi').addClass("active");

}

function generarReporte() {
	var fecha_inicio = $("#fecha_inicio").val();
	var fecha_fin = $("#fecha_fin").val();
	window.open(origin + '/' + lastPath + '/' + 'reportes/rptventas.php?fechai=' + fecha_inicio + '&fechaf=' + fecha_fin);
}

function generarComprobante(idventa) {

	limpiar();

	mostrarform(true);

	numBoleta();
	numSerieBoleta();

	$("#tipo_comprobante").val('Boleta');

	$("#tipo_comprobante").selectpicker('refresh');

	$('#tipo').val('generar');

	$.post("../controladores/venta.php?op=updateFactura", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

	});

	$.post("../controladores/venta.php?op=mostrar", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

		$('#nuevoVendedor').val(data.personal);
		$('#idcliente').val(data.idcliente);
		$('#idcliente').selectpicker('refresh');

	});

	$.post("../controladores/venta.php?op=listarDetalleVenta", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

		for (var i = 0; i <= detalles; i++) {

			$("#fila" + i).remove();
			calcularTotales();
			evaluar();
			articuloAdd = "";

		}

		for (var i = 0; i < data.length; i++) {

			agregarDetalle(data[i][0], data[i][9], data[i][2], data[i][3], data[i][4], data[i][4], 0.00, 0.00, 0.00, data[i][6], data[i][7], data[i][8])

		}

	});

}

function anularComprobante(idventa) {

	swal({
		title: "¿Anular?",
		text: "¿Está seguro Que Desea anular la Venta?",
		type: "warning",
		showCancelButton: true,
		cancelButtonText: "No",
		cancelButtonColor: '#FF0000',
		confirmButtonText: "Si",
		confirmButtonColor: "#0004FA",
		closeOnConfirm: false,
		closeOnCancel: false,
		showLoaderOnConfirm: true
	}, function (isConfirm) {
		if (isConfirm) {
			$.post("../controladores/venta.php?op=anular", { idventa: idventa }, function (e) {
				swal(
					'!!! Anulado !!!', e, 'success')
				tabla.ajax.reload();
			});
		} else {
			swal("! Cancelado ¡", "Se Cancelo la anulación de la Venta", "error");
		}
	});

}

function generarComprobante2(idventa) {

	limpiar();
	numFactura();
	numSerie();

	$("#tipo_comprobante").val('Factura');

	$("#tipo_comprobante").selectpicker('refresh');

	$('#tipo').val('generar');

	$("#listadoregistros").hide();
	$("#formularioregistros").show();
	$("#btnagregar").hide();

	$("#btnGuardar").hide();
	$("#btnCancelar").show();
	detalles = 0;
	$("#btnAgregarArt").show();

	$.post("../controladores/venta.php?op=updateBoleta", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

	});

	$.post("../controladores/venta.php?op=mostrar", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

		$('#nuevoVendedor').val(data.personal);
		$('#idcliente').val(data.idcliente);
		$('#idcliente').selectpicker('refresh');

	});

	$.post("../controladores/venta.php?op=listarDetalleVenta", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

		for (var i = 0; i <= detalles; i++) {

			$("#fila" + i).remove();
			calcularTotales();
			evaluar();
			articuloAdd = "";

		}

		for (var i = 0; i < data.length; i++) {

			agregarDetalle(data[i][0], data[i][9], data[i][2], data[i][3], data[i][4], data[i][4], 0.00, 0.00, 0.00, data[i][6], data[i][7], data[i][8])

		}

	});

}

function comprobarEstado(idventa, idcol) {

	$url = '../public/FACT_WebService/Facturacion/consultacdr.php?idventa=';

	$.ajax({

		url: $url + idventa + '&codColab=' + idcol,

		type: 'get',
		dataType: 'text',
		beforeSend: function () {

			$(".modal").show();

		},
		success: function (resp) {

			listar();

			swal({
				title: 'SUNAT',
				type: 'success',
				text: resp
			});

		},
		complete: function () {
			$(".modal").hide();
		}

	});

}

function EnviarSunat(tipoc, idventa, idcol) {

	if (tipoc == 1) {
		$url = '../public/FACT_WebService/Facturacion/boleta.php?idventa=';
	} else {
		$url = '../public/FACT_WebService/Facturacion/factura.php?idventa=';
	}

	$.ajax({

		url: $url + idventa + '&codColab=' + idcol,

		type: 'get',
		dataType: 'text',
		beforeSend: function () {

			$(".modal").show();

		},
		success: function (resp) {

			listar();

			swal({
				title: 'SUNAT',
				type: 'success',
				text: resp
			});

		},
		complete: function () {
			$(".modal").hide();
		}

	});


}

function PDF(tipoc, idventa, idcol) {

	if (tipoc == 1) {
		$url = '../public/FACT_WebService/Facturacion/boleta.php?idventa=';
	} else {
		$url = '../public/FACT_WebService/Facturacion/factura.php?idventa=';
	}

	$.ajax({

		url: $url + idventa + '&codColab=' + idcol,

		type: 'get',
		dataType: 'text',
		beforeSend: function () {

			$(".modal").show();

		},
		success: function (resp) {

			listar();

			swal({
				title: 'SUNAT',
				type: 'success',
				text: resp
			});

			window.open(origin + '/' + lastPath + '/' + 'reportes/factura/generaFactura.php?id=' + idventa)

		},
		complete: function () {
			$(".modal").hide();
		}

	});

}

function Ticket(tipoc, idventa, idcol) {

	if (tipoc == 1) {
		$url = '../public/FACT_WebService/Facturacion/boleta.php?idventa=';
	} else {
		$url = '../public/FACT_WebService/Facturacion/factura.php?idventa=';
	}

	$.ajax({

		url: $url + idventa + '&codColab=' + idcol,

		type: 'get',
		dataType: 'text',
		beforeSend: function () {

			$(".modal").show();

		},
		success: function (resp) {

			listar();

			swal({
				title: 'SUNAT',
				type: 'success',
				text: resp
			});

			window.open(origin + '/' + lastPath + '/' + 'reportes/exTicket.php?id=' + idventa)

		},
		complete: function () {
			$(".modal").hide();
		}

	});

}

function limpiarDetalle(comprobante) {

	let id = $('#idcliente').val();

	$.post("../controladores/venta.php?op=selectCliente5&id=" + id, function (data, status) {

		data = JSON.parse(data);

		if (comprobante == 'Factura') {
			if (data.tipo_documento != 'RUC') {
				swal({
					title: '¡Aviso!',
					type: 'error',
					text: 'El tipo de documento del cliente debe ser RUC'
				});
			}
			numFactura();
			numSerie();
			$("#tipo_comprobante").val('Factura');
			$("#tipo_comprobante").selectpicker('refresh');
		}

	});

	$("#comprobanteReferencia").val('Seleccionar Comprobante');

	$("#comprobanteReferencia").selectpicker('refresh');

	if (contador != 0) {

		for (var i = 0; i <= contador; i++) {

			$("#fila" + i).remove();
			calcularTotales();
			evaluar();
			articuloAdd = "";

		}

	}

}

//funcion limpiar
function limpiar() {

	$("#idventa").val("");
	$("#idcliente").val("");
	$("#cliente").val("");
	$("#serie_comprobante").val("");
	$("#num_comprobante").val("");
	// $("#impuesto").val("");
	articuloAdd = "";
	no_aplica = 18;

	$("#total_venta").val("");
	$(".filas").remove();
	$("#total").html("0");

	$("#most_total").html("0");
	$("#most_imp").html("0");

	//obtenemos la fecha actual
	var now = new Date();
	var day = ("0" + now.getDate()).slice(-2);
	var month = ("0" + (now.getMonth() + 1)).slice(-2);
	var today = now.getFullYear() + "-" + (month) + "-" + (day);
	$("#fecha").val(today);

	//marcamos el primer tipo_documento

	$("#tipo_comprobante").val('Boleta');

	$("#tipo_comprobante").selectpicker('refresh');

	$("#idcliente").val('PUBLICO EN GENERAL');

	$("#idcliente").selectpicker('refresh');

	$("#porcentaje").val("");

	$("#observaciones").val("");

	$("#comprobanteReferencia").val('');

	$("#comprobanteReferencia").selectpicker('refresh');

	$("#totalrecibido").val(0);
	$("#vuelto").val("");

	$('#n1').hide();
	$('#n2').hide();
	$('#n3').hide();
	$("#f1").hide();
	$('#n5').hide();
	$('#n6').hide();
	$('#fechadeposito').hide();
	$('#banco').hide();
	$('#fechadeposito').hide();
	$('#banco').hide();

	$('#formapago').val('Efectivo');

	$("#porcentaje").val("");
	$("#nroOperacion").val("");
	$("#totalrecibido").val("");
	$("#vuelto").val("");
	$("#observaciones").val("");

	$("#tipopago").val("No");
	$("#montoPagado").val("");

	$("#fechaDepostivo").val("");

	mostrar_impuesto();

}

//Función limpiar
function limpiarCliente() {
	$("#nombre").val("");
	$("#num_documento").val("");
	$("#direccion").val("");
	$("#telefono").val("");
	$("#email").val("");
	$("#fecha_hora").val("");
	$("#idpersona").val("");
}

function BuscarCliente() {

	let numero = $("#num_documento").val();

	$.post("../controladores/venta.php?op=selectCliente3&numero=" + numero, function (data, status) {

		data = JSON.parse(data);

		if (data != null) {

			swal({
				title: '¡Aviso!',
				type: 'error',
				text: 'El Cliente ya se encuentra registrado'
			});

			$("#num_documento").val('');

		} else {

			if ($('#tipo_documento').val() == 'DNI') {
				var cod = $.trim($('#tipo_documento').val());
				$numero = $("#num_documento").val();
				if ($numero.length < 8) {
					swal({
						title: 'Falta Números en el DNI',
						type: 'error',
						text: 'El DNI debe tener 8 Carácteres'
					});
				} else {
					$('#Buscar_Cliente').addClass('hide');
					var numdni = $('#num_documento').val();
					var url = 'https://dniruc.apisperu.com/api/v1/dni/' + numdni + '?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Ik1hbnVlbF8xM18xOTk4QGhvdG1haWwuY29tIn0.pNHFyJ3fT4JgofrxzINaJWlqh3_fC9bCzfwSP4N_dMo';

					$('#cargando').removeClass('hide');
					$.ajax({
						type: 'GET',
						url: url,
						success: function (dat) {
							if (dat.success == false) {

								swal({
									title: 'DNI Inválido',
									type: 'error',
									text: '¡No Existe DNI!'
								});

							} else {
								//$('#nombre').val(dat.success[0]);
								$('#nombre').val(dat.nombres + " " + dat.apellidoPaterno + " " + dat.apellidoMaterno);
								$('#Buscar_Cliente').removeClass('show');
								$('#cargando').addClass('hide');
							}
						}, complete: function () {

							$('#Buscar_Cliente').removeClass('hide');
							$('#cargando').addClass('hide');

						}, error: function () {

						}
					});
				}

			} else {
				var cod = $.trim($('#tipo_documento').val());
				$numero = $("#num_documento").val();
				if ($numero.length < 11) {
					swal({
						title: 'Falta Números en el RUC',
						type: 'error',
						text: 'El DNI debe tener 11 Carácteres'
					});
				} else {
					$('#Buscar_Cliente').addClass('hide');
					var numdni = $('#num_documento').val();
					var url = 'https://dniruc.apisperu.com/api/v1/ruc/' + numdni + '?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Ik1hbnVlbF8xM18xOTk4QGhvdG1haWwuY29tIn0.pNHFyJ3fT4JgofrxzINaJWlqh3_fC9bCzfwSP4N_dMo';
					$('#cargando').removeClass('hide');
					$.ajax({
						type: 'GET',
						url: url,
						success: function (dat) {
							console.log(dat);
							if (dat.success == false) {
								swal({
									title: 'Ruc Inválido',
									type: 'error',
									text: '¡No Existe RUC!'
								});
							} else {
								console.log(dat);
								$('#nombre').val(dat.razonSocial);
								$('#direccion').val(dat.direccion);
								document.getElementById('estado2').innerHTML = dat.estado;
								document.getElementById('condicion').innerHTML = dat.condicion;
								$('#Buscar_Cliente').removeClass('show');
								$('#cargando').addClass('hide');
							}
						}, complete: function () {

							$('#Buscar_Cliente').removeClass('hide');
							$('#cargando').addClass('hide');

						}, error: function () {

						}
					});
				}
			}


		}

	});

}

//__________________________________________________________________________
//mostramos el num_comprobante de la fatura
function numFactura() {

	var idsucursal = $("#idsucursal").val();

	$.ajax({
		url: '../controladores/venta.php?op=mostrarf',
		data: { idsucursal: idsucursal },
		type: 'get',
		dataType: 'json',
		success: function (d) {
			iva = d;
			$('#porcentaje').attr('disabled', true)
			$("#num_comprobante").val(('0000000' + iva).slice(-7)); // "0001"
			$("#nFacturas").html(('0000000' + iva).slice(-7)); // "0001"
		}
	});
}
//mostramos la serie_comprobante de la factura
function numSerie() {
	var idsucursal = $("#idsucursal").val();
	$.ajax({
		url: '../controladores/venta.php?op=mostrars',
		type: 'get',
		data: { idsucursal: idsucursal },
		dataType: 'json',
		success: function (s) {
			series = s;
			$("#numeros").html(('000' + series).slice(-3)); // "0001"
			$("#serie_comprobante").val('F' + ('000' + series).slice(-3)); // "0001"
		}
	});
}
//mostramos el num_comprobante de la boleta
function numBoleta() {
	var idsucursal = $("#idsucursal").val();
	$.ajax({
		url: '../controladores/venta.php?op=mostrar_num_boleta',
		data: { idsucursal: idsucursal },
		type: 'get',
		dataType: 'json',
		success: function (d) {
			iva = d;
			$('#porcentaje').attr('disabled', true)
			$("#num_comprobante").val(('0000000' + iva).slice(-7)); // "0001"
			$("#nFacturas").html(('0000000' + iva).slice(-7)); // "0001"
		}
	});
}
//mostramos la serie_comprobante de la boleta
function numSerieBoleta() {
	var idsucursal = $("#idsucursal").val();
	$.ajax({
		url: '../controladores/venta.php?op=mostrar_serie_boleta',
		data: { idsucursal: idsucursal },
		type: 'get',
		dataType: 'json',
		success: function (s) {
			series = s;
			$("#numeros").html(('000' + series).slice(-3)); // "0001"
			$("#serie_comprobante").val('B' + ('000' + series).slice(-3)); // "0001"
		}
	});
}

//mostramos el num_comprobante del ticket
function numTicket() {
	var idsucursal = $("#idsucursal").val();
	$.ajax({
		url: '../controladores/venta.php?op=mostrar_num_ticket',
		data: { idsucursal: idsucursal },
		type: 'get',
		dataType: 'json',
		success: function (d) {
			iva = d;
			$('#porcentaje').attr('disabled', false)
			$("#num_comprobante").val(('0000000' + iva).slice(-7)); // "0001"
			$("#nFacturas").html(('0000000' + iva).slice(-7)); // "0001"
		}
	});
}
//mostramos la serie_comprobante de la ticket
function numSerieTicket() {
	var idsucursal = $("#idsucursal").val();
	$.ajax({
		url: '../controladores/venta.php?op=mostrar_s_ticket',
		data: { idsucursal: idsucursal },
		type: 'get',
		dataType: 'json',
		success: function (s) {
			series = s;
			$("#numeros").html(('000' + series).slice(-3)); // "0001"
			$("#serie_comprobante").val('P' + ('000' + series).slice(-3)); // "0001"
		}

	});
}
//_______________________________________________________________________________________________

function documentosSucursal() {

	numBoleta();
	numSerieBoleta();

}

//funcion mostrar formulario
function mostrarform(flag) {
	limpiar();
	numBoleta();
	numSerieBoleta();
	// $("#serie_comprobante").val( "B001" );
	if (flag) {
		$("#listadoregistros").hide();
		$("#formularioregistros").show();
		//$("#btnGuardar").prop("disabled",false);
		$("#btnagregar").hide();
		// listarArticulos();

		$("#btnGuardar").hide();
		$("#btnCancelar").show();
		detalles = 0;
		$("#btnAgregarArt").show();


	} else {
		$("#listadoregistros").show();
		$("#formularioregistros").hide();
		$("#btnagregar").show();
	}
}

//cancelar form
function cancelarform() {
	limpiar();
	mostrarform(false);
}

//funcion listar
function listar() {

	var fecha_inicio = $("#fecha_inicio").val();
	var fecha_fin = $("#fecha_fin").val();
	var estado = $("#estado").val();
	var idsucursal2 = $("#idsucursal2").val();

	tabla = $('#tbllistado').dataTable({
		"aProcessing": true,//activamos el procedimiento del datatable
		"aServerSide": true,//paginacion y filrado realizados por el server
		"processing": true,
		"language":
		{
			"processing": "<img style='width:80px; height:80px;' src='../files/plantilla/loading-page.gif' />",
		},
		dom: 'Bfrtip',//definimos los elementos del control de la tabla
		lengthMenu: [
			[5, 10, 25, 50, 100, -1],
			['5 filas', '10 filas', '25 filas', '50 filas', '100 filas', 'Mostrar todo']
		],
		buttons: [
			{
				extend: 'pageLength',
				orientation: 'landscape',
				pageSize: 'LEGAL'
			},
			{
				extend: 'pdfHtml5',
				orientation: 'landscape',
				title: 'Lista de ventas',
				pageSize: 'LEGAL'
			},
			{
				extend: 'copy',
				orientation: 'landscape',
				pageSize: 'LEGAL'
			},
			{
				extend: 'excel',
				orientation: 'landscape',
				title: 'Lista de ventas',
				pageSize: 'LEGAL'
			}],
		"ajax":
		{
			url: '../controladores/venta.php?op=listar',
			data: { fecha_inicio: fecha_inicio, fecha_fin: fecha_fin, estado: estado, idsucursal2: idsucursal2 },
			type: "get",
			dataType: "json",
			error: function (e) {
				console.log(e.responseText);
			}
		},
		"bDestroy": true,
		"iDisplayLength": 10,//paginacion
		"order": [[0, "desc"]]//ordenar (columna, orden)
	}).DataTable();
}

function listarArticulos2() {

	var idsucursal = $("#idsucursal").val();

	tabla = $('#tblarticulos2').dataTable({
		"aProcessing": true,//activamos el procedimiento del datatable
		"aServerSide": true,//paginacion y filrado realizados por el server
		dom: 'Bfrtip',//definimos los elementos del control de la tabla
		buttons: [

		],
		"ajax":
		{
			url: '../controladores/venta.php?op=listarArticulos2',
			data: { idsucursal: idsucursal },
			type: "get",
			dataType: "json",
			error: function (e) {
				console.log(e.responseText);
			}
		},
		"bDestroy": true,
		"iDisplayLength": 10,//paginacion
		"order": [[1, "asc"], [2, "asc"]]//ordenar (columna, orden)
	}).DataTable();
}

function listarArticulos() {

	var idsucursal = $("#idsucursal").val();

	tabla = $('#tblarticulos').dataTable({
		"aProcessing": true,//activamos el procedimiento del datatable
		"aServerSide": true,//paginacion y filrado realizados por el server
		dom: 'B<"float-left"i><"float-right"f>t<"float-left"l><"float-right"p><"clearfix">',
		buttons: [

		],
		initComplete: function () {
			this.api()
				.columns([1])
				.every(function () {

					var column = this;
					var title = column.footer().textContent;

					// Create input element and add event listener
					$('<input type="text" placeholder="' + title + '" />')
						.appendTo($(column.footer()).empty())
						.on('keyup change clear', function () {
							if (column.search() !== this.value) {
								column.search(this.value).draw();
							}
						});
				});
		},
		"ajax":
		{
			url: '../controladores/venta.php?op=listarArticulos',
			data: { idsucursal: idsucursal },
			type: "get",
			dataType: "json",
			error: function (e) {
				console.log(e.responseText);
			}
		},
		"bDestroy": true,
		"iDisplayLength": 10,//paginacion
		"order": [[1, "asc"], [2, "asc"]]//ordenar (columna, orden)
	}).DataTable();

	// $('.filtro').keyup(function(){

	// 	var tabla = $('#tblarticulos').DataTable();

	// 	tabla.search( this.value ).draw();

	// });

}

//funcion para guardaryeditar
function guardaryeditar(e) {
	e.preventDefault();//no se activara la accion predeterminada 
	//$("#btnGuardar").prop("disabled",true);
	var formData = new FormData($("#formulario")[0]);

	$.ajax({
		url: "../controladores/venta.php?op=guardaryeditar",
		type: "POST",
		data: formData,
		contentType: false,
		processData: false,

		success: function (datos) {
			swal({
				title: '',
				type: 'success',
				text: datos
			});
			mostrarform(false);
			listar();
		}
	});

	limpiar();
}

//funcion para Guardar Clientes
function guardarCliente(e) {
	e.preventDefault();//no se activara la accion predeterminada 
	//$("#btnGuardar").prop("disabled",true);
	var formData = new FormData($("#formularioClientes")[0]);

	$.ajax({
		url: "../controladores/venta.php?op=guardarCliente",
		type: "POST",
		data: formData,
		contentType: false,
		processData: false,

		success: function (datos) {
			swal({
				title: 'Cliente',
				type: 'success',
				text: datos
			});
			//cargamos los items al select cliente
			$.post("../controladores/venta.php?op=selectCliente", function (r) {
				$("#idcliente").html(r);
				$('#idcliente').selectpicker('refresh');
			});

			$.post("../controladores/venta.php?op=mostrarUltimoCliente", function (data, status) {

				data = JSON.parse(data);

				seleccionarCliente(data.nombre, data.idpersona);


			});
		}
	});

	$("#ModalClientes").modal('hide');

	limpiarCliente();
}

function seleccionarCliente(nombre, idcliente) {

	$("#idcliente").val(idcliente);
	$("#idcliente").selectpicker('refresh');

}

function cambiarEstado(estadoS) {

	let idventa = $('#idventam').val();

	swal({
		title: "Cambiar Estado?",
		text: "¿Está seguro Que Desea Cambiar el estado de los Servicios?",
		type: "warning",
		showCancelButton: true,
		cancelButtonText: "No",
		cancelButtonColor: '#FF0000',
		confirmButtonText: "Si",
		confirmButtonColor: "#0004FA",
		closeOnConfirm: false,
		closeOnCancel: false,
		showLoaderOnConfirm: true
	}, function (isConfirm) {
		if (isConfirm) {
			$.post("../controladores/venta.php?op=cambiarEstado", { idventa: idventa, estadoS: estadoS }, function (e) {
				swal(
					'!!! Actualizado !!!', e, 'success')
				tabla.ajax.reload();
			});
		} else {
			swal("! Cancelado ¡", "Se Cancelo la actualización del Servicio", "error");
		}
	});

}

function mostrar(idventa) {
	$("#getCodeModal").modal('show');
	$.post("../controladores/venta.php?op=mostrar", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);
		//mostrarform(true);

		$("#idventam").val(data.idventa);
		$("#cliente").val(data.cliente);
		$("#tipo_comprobantem").val(data.tipo_comprobante);
		$("#serie_comprobantem").val(data.serie_comprobante);
		$("#num_comprobantem").val(data.num_comprobante);
		$("#fecha_horam").val(data.fecha);
		$("#impuestom").val(data.impuesto);
		$("#formapagom").val(data.formapago);
		$("#nrooperacionm").val(data.numoperacion);
		$("#fechadeposito").val(data.fechadeposito);
		$("#idventam").val(data.idventa);
	});

	$.post("../controladores/venta.php?op=listarDetalle&id=" + idventa, function (r) {
		$("#detallesm").html(r);


	});

}

function mostrarE() {
	let idcotizacion = $('#comprobanteReferencia').val();
	$.post("../controladores/cotizaciones.php?op=mostrar", { idcotizacion: idcotizacion }, function (data, status) {
		data = JSON.parse(data);

		$('#idcliente').val(data.idcliente);
		$('#idcliente').selectpicker('refresh');


	});
	$.post("../controladores/cotizaciones.php?op=listarDetalleCotizacion", { idcotizacion: idcotizacion }, function (data, status) {
		data = JSON.parse(data);

		for (var y = 0; y < contador; y++) {

			eliminarDetalles(y);

		}

		for (var i = 0; i < data.length; i++) {

			agregarDetalle(data[i][0], data[i][1], data[i][2], data[i][3], data[i][4], data[i][5], 0.00, 0.00, 0.00, data[i][6], data[i][7], data[i][8])

		}

	});
}

function EnviarComprobante(idventa) {

	$.post("../controladores/venta.php?op=mostrar", { idventa: idventa }, function (data, status) {
		data = JSON.parse(data);

		window.open("https://api.whatsapp.com/send?phone=51" + data.telefono + "&text=" + origin + '/' + lastPath + "/reportes/documentos/" + data.tipo_comprobante + "-" + data.num_comprobante + ".pdf");

	});

}


//funcion para desactivar
function anular(idventa) {
	swal({
		title: "¿Anular?",
		text: "¿Está seguro Que Desea anular la Venta?",
		type: "warning",
		showCancelButton: true,
		cancelButtonText: "No",
		cancelButtonColor: '#FF0000',
		confirmButtonText: "Si",
		confirmButtonColor: "#0004FA",
		closeOnConfirm: false,
		closeOnCancel: false,
		showLoaderOnConfirm: true
	}, function (isConfirm) {
		if (isConfirm) {
			$.post("../controladores/venta.php?op=anular", { idventa: idventa }, function (e) {
				swal(
					'!!! Anulado !!!', e, 'success')
				tabla.ajax.reload();
			});
		} else {
			swal("! Cancelado ¡", "Se Cancelo la anulación de la Venta", "error");
		}
	});
}

var articuloAdd = "";
//declaramos variables necesarias para trabajar con las compras y sus detalles
var cont = 0;
var detalles = 0;

function mostrar_impuesto() {

	$.ajax({
		url: '../controladores/negocio.php?op=mostrar_impuesto',
		type: 'get',
		dataType: 'json',
		success: function (i) {

			impuesto = i;

			$("#impuesto").val(impuesto);

		}

	});

}

var no_aplica = 0;

$("#btnGuardar").hide();
$("#tipo_comprobante").change(marcarImpuesto);


function marcarImpuesto() {
	var tipo_comprobante = $("#tipo_comprobante option:selected").text();
	if (tipo_comprobante == 'Factura') {
		// $("#impuesto").val(impuesto);
		mostrar_impuesto();
		no_aplica = impuesto;
		numFactura();
		numSerie();
		// $("#serie_comprobante").val( "F001" );
	} else if (tipo_comprobante == 'Boleta') {
		// $("#impuesto").val(impuesto);
		mostrar_impuesto();
		no_aplica = impuesto;
		numBoleta();
		numSerieBoleta();
		// $("#serie_comprobante").val( "B001" );
	}
	else {
		$("#impuesto").val("0");
		no_aplica = 0;
		numTicket();
		numSerieTicket();
		// $("#serie_comprobante").val( "P001" );
	}
	console.log(no_aplica);
}

// Buscar producto por código
function buscarProductoCod(e, codigo) {

	if (e.keyCode === 13) {

		if (codigo.length > 0) {

			$.post("../controladores/venta.php?op=buscarProducto", { codigo: codigo }, function (data, status) {

				data = JSON.parse(data);
				console.log(data);

				if (data == null) {
					alert("Producto no encontrado");
				} else {

					agregarDetalle(data.idproducto, data.nombre, 1, 0, data.precio, data.preciocigv, data.precioB, data.precioC, data.precioD, data.stock, data.proigv, data.unidadmedida);

				}

				$("#idCodigoBarra").val("");

			});

		}

	}

}

function agregarDetalle(idproducto, producto, cant, desc, precio_venta, preciocigv, precioB, precioC, precioD, stock, proigv, unidadmedida) {

	//aquí preguntamos si el idarticulo ya fue agregado
	if (articuloAdd.indexOf(idproducto) != -1) { //reporta -1 cuando no existe
		// swal( producto +" ya se agrego");

		let cant = document.getElementsByName("cantidad[]");

		let id = document.getElementsByName("idproducto[]");

		for (var i = 0; i < cant.length; i++) {

			if (id[i].value == idproducto) {

				let total = Number(cant[i].value) + 1;

				document.getElementsByName("cantidad[]")[i].value = total;

				modificarSubtotales(i);

			}

		}

	}
	else {
		var cantidad = cant;
		var descuento = desc;

		var cad = '';
		var select = '';

		if (precioB != '0.00' || precioC != '0.00' || precioD != '0.00') {

			cad = '<option value="' + precio_venta + '">' + precio_venta + '</option>';

			if (precioB != '0.00') {
				cad = cad + '<option value="' + precioB + '">' + precioB + '</option>';
			}

			if (precioC != '0.00') {
				cad = cad + '<option value="' + precioC + '">' + precioC + '</option>';
			}

			if (precioD != '0.00') {
				cad = cad + '<option value="' + precioD + '">' + precioD + '</option>';
			}

			select = '<td><select style="width:150px;height:35px;" onchange="modificarSubtotales(cont)" name="precio_venta[]" id="precio_venta[]" class="form-control" required>' + cad + '</select></td>';

		} else {

			select = '<td><input style="text-align:center; width: 80px;" type="number" step="0.01" onchange="modificarSubtotales(cont)" name="precio_venta[]" id="precio_venta[]" value="' + precio_venta + '"></td>';

		}



		if (idproducto != "") {
			contador = contador + 1;
			var subtotal = cantidad * precio_venta;
			var fila = '<tr class="filas" id="fila' + cont + '">' +
				'<td><input type="hidden" name="idproducto[]" value="' + idproducto + '"><input style="width: 400px;" type="text" name="nombreProducto[]" value="' + producto + '"></td>' +
				'<td><input style="text-align:center" type="hidden">' + unidadmedida + '</td>' +
				'<td><input style="text-align:center; width: 50px;" type="number" step="0.01" onchange="modificarSubtotales(' + cont + ')" name="cantidad[]" id="cantidad[]" value="' + cantidad + '"></td>' +
				// '<td><input style="text-align:center; width: 80px;" type="number" step="0.01" onchange="modificarSubtotales()" name="precio_venta[]" id="precio_venta[]" value="'+precio_venta+'"></td>'+
				select +

				'<input style="text-align:center" type="hidden" id="precio_ventaI[]" name="precio_ventaI[]" value="10">' +

				'<td><input style="text-align:center; width: 50px;" type="number" step="0.01" onchange="modificarSubtotales(' + cont + ')" name="descuento[]" value="' + descuento + '"></td>' +
				'<td><input style="text-align:center; width: 50px;" type="text" readonly="readonly" name="stock[]" value="' + stock + '"></td>' +
				'<td><span style="text-align:center" id="subtotal' + cont + '" name="subtotal">' + subtotal + '</span></td>' +
				'<td><center><button type="button" class="btn btn-danger" onclick="eliminarDetalle(' + cont + ')"><i class="fa fa-trash"></i></button></center></td>' +
				'<td><span style="text-align:center" id="proigv' + cont + '" name="proigv">' + proigv + '</span></td>' +
				'</tr>';
			detalles = detalles + 1;
			articuloAdd = articuloAdd + idproducto + "-"; //aca concatemanos los idarticulos xvg: 1-2-5-12-20
			$('#detalles').append(fila);
			modificarSubtotales(cont);
			cont++;
			// $('#tipo_comprobante').attr('disabled',true);

		} else {
			alert("error al ingresar el detalle, revisar las datos del articulo ");
		}
	}
}

function nostock() {
	swal("Sin Stock");
}

function modificarSubtotales(cont) {
	var cant = document.getElementsByName("cantidad[]");
	var prec = document.getElementsByName("precio_venta[]");
	var desc = document.getElementsByName("descuento[]");
	var sub = document.getElementsByName("subtotal");
	var Stoc = document.getElementsByName("stock[]");


	for (var i = 0; i < cant.length; i++) {

		var inpC = cant[i];
		var inpP = prec[i];
		var inpD = desc[i];
		var inpS = sub[i];
		var inpSt = Stoc[i];

		var subtl = inpS.value = (inpC.value * inpP.value) - (inpD.value * inpC.value);
		var subfinal = subtl.toFixed(2);

		if ($('#tipo').val() == 'venta') {

			if (Number(inpC.value) > Number(inpSt.value)) {

				swal("No hay suficiente stock!");
				inpC.style.backgroundColor = "#00CC00";
				inpSt.style.backgroundColor = "#CC0000";
				$("#btnGuardar").hide();
				e.preventDefault();

			}
			else {

				inpC.style.backgroundColor = "#FFFFFF";
				inpSt.style.backgroundColor = "#FFFFFF";
				document.getElementsByName("subtotal")[i].innerHTML = subfinal;
			}

		}

	}

	calcularTotales();
	evaluar();
}

function calcularTotales() {

	var sub = document.getElementsByName("subtotal");
	var total = 0;
	var total_monto = 0;
	var igv_dec = 0;
	var totalConIgv = 0;
	var igv = 0;

	for (var i = 0; i < sub.length; i++) {

		total += document.getElementsByName("subtotal")[i].value;

		var proigv = document.getElementsByName("proigv")[i].innerHTML;

		if (proigv == "Gravada") {
			totalConIgv += document.getElementsByName("subtotal")[i].value;
			igv = totalConIgv * (no_aplica) / (no_aplica + 100);
			total_monto = (totalConIgv - (igv)).toFixed(2);
			igv_dec = igv.toFixed(2);
		}


	}

	$.ajax({
		url: '../controladores/negocio.php?op=mostrar_simbolo',
		type: 'get',
		dataType: 'json',
		success: function (sim) {

			simbolo = sim;
			total2 = total - igv;

			$("#total").html(total.toFixed(2));
			$("#total_venta").val(total.toFixed(2));
			$("#most_total2").val(total.toFixed(2));
			$("#most_total").html(esnulo(total2).toFixed(2));

			$("#montoDeuda").val(total);

			$("#most_imp").html(esnulo(igv_dec));
			console.log("Aquiiiiii " + igv_dec);
			evaluar();


		}

	});

}

function esnulo(v) {
	if (isNaN(v)) {
		return 0;
	} else {
		return v;
	}
}

$("#formapago").change(function () {

	if ($("#formapago").val() == "Reposicion" || $("#formapago").val() == "Costo0") {

		// $("#n1").hide();
		$("#f1").hide();
		$('#n5').hide();
		$('#n6').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();
		$('#n1').hide();
		$('#n2').hide();
		$('#n3').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();

	} else if ($("#formapago").val() == "Efectivo" && $("#tipopago").val() == "No") {

		$('#n1').hide();
		$('#n2').hide();
		$('#n3').hide();
		$("#f1").hide();
		$('#n5').hide();
		$('#n6').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();

	} else if ($("#formapago").val() == "Efectivo" && $("#tipopago").val() == "Si") {

		$('#n1').show();
		$('#n2').show();
		$('#n3').show();
		$("#f1").hide();
		$('#n5').hide();
		$('#n6').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();

	} else if ($("#formapago").val() == "Tarjeta" && $("#tipopago").val() == "No") {

		$('#n6').show();
		$("#f1").hide();
		$('#n5').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();

	} else if ($("#formapago").val() == "Reposicion" && $("#tipopago").val() == "Si") {

		$("#f1").hide();
		$('#n5').hide();
		$('#n6').hide();
		$('#fechadeposito').hide();
		$('#banco').hide();
		$('#n1').show();
		$('#n2').show();
		$('#n3').show();

	} else if ($("#formapago").val() == "Tarjeta" && $("#tipopago").val() == "Si") {

		$('#f1').show();
		$('#n5').show();
		$('#n6').show();
		$('#fechadeposito').show();
		$('#banco').show();
		$('#banco').hide();
		$('#n1').show();
		$('#n2').show();
		$('#n3').show();

	} else {

		// $('#n1').show();
		$('#f1').show();
		$('#n5').show();
		$('#n6').show();
		$('#fechadeposito').show();
		$('#banco').show();

	}

});

$("#tipopago").change(function () {

	if ($("#tipopago").val() == "Si") {

		$('#n1').show();

		$('#n2').show();

		$('#n3').show();

		// $('#fp2').show();

		// document.getElementById("n1").style.display = "none";
		// document.getElementById("f1").style.display = "none";

	} else {

		// $("#formapagoocultar").show();

		document.getElementById("n1").style.display = "none";

		document.getElementById("n2").style.display = "none";

		document.getElementById("n3").style.display = "none";

		// $('#n1').hide();

		// $('#n2').hide();

		// $('#n3').hide();

	}

});

function calcularDeuda() {

	$('#totalrecibido').val(0);

	$('#vuelto').val(0);

	montoDeuda = $("#total_venta").val();

	montoPagado = $("#montoPagado").val();

	totalDeuda = montoDeuda - montoPagado;

	$("#montoDeuda").val(totalDeuda);

	if (montoPagado == '0' || montoPagado == "") {

		$("#montoDeuda").val($("#total_venta").val());

	}

}

function calcularPorcentaje() {

	total = $("#most_total2").val();

	porcentaje = $("#porcentaje").val();

	tp1 = total - porcentaje;

	$("#total").html(tp1.toFixed(2));

	$("#total_venta").val(tp1.toFixed(2));

	$("#montoDeuda").val(tp1.toFixed(2));

	if (porcentaje == '0') {

		calcularTotales();

	}

}

function calcularVuelto() {

	let totalrecibido = $('#totalrecibido').val();

	let total = $('#total_venta').val();

	let montoPagado = $('#montoPagado').val();

	if (montoPagado > 0 || montoPagado == null) {

		let vuelto = totalrecibido - montoPagado;

		if (vuelto > 0) {

			$('#vuelto').val(vuelto);

		}

	} else {

		let vuelto = totalrecibido - total;

		if (vuelto > 0) {

			$('#vuelto').val(vuelto);

		} else {

			$('#vuelto').val("0.00");

		}

	}



}

function evaluar() {

	if (detalles > 0) {
		$("#btnGuardar").show();
	}
	else {
		$("#btnGuardar").hide();
		cont = 0;
		igv = 0;
		igv_dec = 0;
		total = 0;
		totalConIgv = 0;
		igv = 0;
		$('#most_total').val('0');
		$('#most_imp').val('0');
	}
}

function eliminarDetalle(indice) {
	$("#fila" + indice).remove();
	calcularTotales();
	detalles = detalles - 1;
	evaluar();
	articuloAdd = "";

	if (detalles == 0) {

		// $('#tipo_comprobante').attr('disabled',true);

	}

}

function eliminarDetalles(indice) {
	$("#fila" + indice).remove();
	detalles = 0;
	articuloAdd = "";
}

init();