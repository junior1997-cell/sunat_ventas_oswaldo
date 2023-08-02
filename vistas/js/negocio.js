var tabla;

//funcion que se ejecuta al inicio
function init() {
	mostrarform(false);
	listar();
	mostrar_registros();

	$("#formulario").on("submit", function (e) {
		guardaryeditar(e);
	})

	$('#navConfiguracion').addClass("treeview active");
	$('#navConfiguracionLi').addClass("active");

	$("#imagenmuestra").show();
	$("#imagenmuestra").attr("src", "../files/personal/user.png");
	$("#imagenactual").val("user.png");

}

function mostrar_registros() {
	$.ajax({
		url: '../controladores/negocio.php?op=mostrar_registros',
		type: 'get',
		dataType: 'json',
		success: function (i) {
			registros = i;
			if (registros == 0) {
				$("#btnagregar").show();
			} else {
				$("#btnagregar").hide();
			}
		}

	});
}
//funcion limpiar
function limpiar() {
	$("#codigo").val("");
	$("#nombre").val("");
	$("#ndocumento").val("");
	$("#documento").val("");
	$("#direccion").val("");
	$("#direccion").val("");
	$("#telefono").val("");
	$("#email").val("");
	$("#imagenmuestra").attr("src", "../files//personal/user.png");
	$("#imagenactual").val("user.png");
	$("#pais").val("");
	$("#ciudad").val("");
	$("#nombre_impuesto").val("");
	$("#monto_impuesto").val("");
	$("#moneda").val("");
	$("#simbolo").val("");
	$("#id_negocio").val("");
	mostrar_registros();
}

//funcion mostrar formulario
function mostrarform(flag) {
	limpiar();
	if (flag) {
		$("#listadoregistros").hide();
		$("#formularioregistros").show();
		$("#btnGuardar").prop("disabled", false);
		$("#btnagregar").hide();
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
		buttons: ['pageLength', 'copy', 'excel', 'pdf'],
		"ajax":
		{
			url: '../controladores/negocio.php?op=listar',
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
//funcion para guardaryeditar
function guardaryeditar(e) {
	e.preventDefault();//no se activara la accion predeterminada 
	$("#btnGuardar").prop("disabled", true);
	var formData = new FormData($("#formulario")[0]);

	$.ajax({
		url: "../controladores/negocio.php?op=guardaryeditar",
		type: "POST",
		data: formData,
		contentType: false,
		processData: false,

		success: function (datos) {
			swal({
				title: 'Empresa',
				type: 'success',
				text: datos
			});
			mostrarform(false);
			tabla.ajax.reload();
		}
	});

	limpiar();
}

function mostrar(id_negocio) {
	$.post("../controladores/negocio.php?op=mostrar", { id_negocio: id_negocio },
		function (data, status) {
			data = JSON.parse(data);
			console.log(data);
			mostrarform(true);
			$("#clave_certificado").val(data.clave_certificado);
			$("#estado_certificado").val(data.estado_certificado);
			$("#codigo").val(data.codigo);
			$("#nombre").val(data.nombre);
			$("#ndocumento").val(data.ndocumento);
			$("#documento").val(data.documento);
			$("#direccion").val(data.direccion);
			$("#telefono").val(data.telefono);
			$("#email").val(data.email);
			$("#imagenmuestra").show();
			$("#imagenmuestra").attr("src", "../reportes/" + data.logo);
			$("#imagenactual").val(data.logo);
			$("#pais").val(data.pais);
			$("#ciudad").val(data.ciudad);
			$("#nombre_impuesto").val(data.nombre_impuesto);
			$("#monto_impuesto").val(data.monto_impuesto);
			$("#moneda").val(data.moneda);
			$("#simbolo").val(data.simbolo);
			$("#id_negocio").val(data.id_negocio);
			$("#usuario_sol").val(data.usuario_sol);
			$("#clave_sol").val(data.clave_sol);
			$("#ruta_certificado").val(data.ruta_certificado);

		});
}


//funcion para desactivar
function desactivar(id_negocio) {
	bootbox.confirm("¿Esta seguro de desactivar este dato?", function (result) {
		if (result) {
			$.post("../controladores/negocio.php?op=desactivar", { id_negocio: id_negocio }, function (e) {
				bootbox.alert(e);
				tabla.ajax.reload();
			});
		}
	})
}

function activar(id_negocio) {
	bootbox.confirm("¿Esta seguro de activar este dato?", function (result) {
		if (result) {
			$.post("../controladores/negocio.php?op=activar", { id_negocio: id_negocio }, function (e) {
				bootbox.alert(e);
				tabla.ajax.reload();
			});
		}
	})
}

/*=============================================
SUBIENDO LA FOTO DEL PRODUCTO
=============================================*/

$("#imagen").change(function () {

	var imagen = this.files[0];

	/*=============================================
		VALIDAMOS EL FORMATO DE LA IMAGEN SEA JPG O PNG
	=============================================*/

	if (imagen["type"] != "image/jpeg" && imagen["type"] != "image/png") {

		$(".nuevaImagen").val("");

		swal({
			title: "Error al subir la imagen",
			text: "¡La imagen debe estar en formato JPG o PNG!",
			type: "error",
			confirmButtonText: "¡Cerrar!"
		});

	} else if (imagen["size"] > 2000000) {

		$(".nuevaImagen").val("");

		swal({
			title: "Error al subir la imagen",
			text: "¡La imagen no debe pesar más de 2MB!",
			type: "error",
			confirmButtonText: "¡Cerrar!"
		});

	} else {

		var datosImagen = new FileReader;
		datosImagen.readAsDataURL(imagen);

		$(datosImagen).on("load", function (event) {

			var rutaImagen = event.target.result;

			$("#imagenmuestra").attr("src", rutaImagen);

		})

	}
})


init();

// ::::::::::::::::::::::::::::: FUNCIONES ALTERNAS ::::::::::::::::::::::
function BuscarCliente() {

	let numero = $("#documento").val();

	$.post("../controladores/venta.php?op=selectCliente3&numero=" + numero, function (data, status) {

		data = JSON.parse(data);

		if (data != null) {

			swal({
				title: '¡Aviso!',
				type: 'error',
				text: 'El Cliente ya se encuentra registrado'
			});

			$("#documento").val('');

		} else {

			if ($('#ndocumento').val() == 'DNI') {
				var cod = $.trim($('#ndocumento').val());
				$numero = $("#documento").val();
				if ($numero.length < 8) {
					swal({
						title: 'Falta Números en el DNI',
						type: 'error',
						text: 'El DNI debe tener 8 Carácteres'
					});
				} else {
					$('#Buscar_Cliente').addClass('hide');
					var numdni = $('#documento').val();
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
				var cod = $.trim($('#ndocumento').val());
				$numero = $("#documento").val();
				if ($numero.length < 11) {
					swal({
						title: 'Falta Números en el RUC',
						type: 'error',
						text: 'El DNI debe tener 11 Carácteres'
					});
				} else {
					$('#Buscar_Cliente').addClass('hide');
					var numdni = $('#documento').val();
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