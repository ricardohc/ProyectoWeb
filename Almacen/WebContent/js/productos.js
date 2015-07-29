
/*
$(window).bind('beforeunload', function() {
      return 'Do you really want to leave?' ;
});*/

$(document).on("ready", function() {
	
	console.log("Evento Load");
	listar();
});

function listar() {
	
	$.ajax({
		type:"get",
		url:"a_listar?productos",
		success:function(respuesta){
			console.log(respuesta);
			//limpiar la tabla al listar
			$("#tablaProductosJS").find("tr:gt(0)").remove();
			$.each(respuesta.productos, function(key, value){
				$("#filaJS").append('<tr><td>'+value.idproducto	
						+'</td><td>'+
						value.nombre
						+'</td><td>'+
						value.categoria
						+'</td><td>'+
						value.precio
						+'</td><td>'+
						"<button type=button class='btn btn-info' onclick=buscar(this) value="+value.idproducto+">Actualizar</button>"
						+'</td><td>'+
						"<button type=button class='btn btn-info' onclick=borrar(this) value="+value.idproducto+">Borrar</button>"
						+'</td></tr>');
			});
		}
		
	});
	
		
}



function borrar(btnBorrar) {
	console.log("Evento Borrar");
	console.log("objeto boton"+ btnBorrar);
	
	var id=btnBorrar.value;
	console.log(id);
	
	$.ajax({
		type: "get",
		url: "a_borrar",
		data: {idproducto: id},
		success: function(respuesta) {
			console.log(respuesta.productos);
			//limpiar la tabla al listar
			$("#tablaProductosJS").find("tr:gt(0)").remove();
			$.each(respuesta.productos, function(key, value){
				$("#filaJS").append('<tr><td>'+value.idproducto	
						+'</td><td>'+
						value.nombre
						+'</td><td>'+
						value.categoria
						+'</td><td>'+
						value.precio
						+'</td><td>'+
						"<button type=button class='btn btn-info' onclick=buscar(this) value="+value.idproducto+">Actualizar</button>"
						+'</td><td>'+
						"<button type=button class='btn btn-info' onclick=borrar(this) value="+value.idproducto+">Borrar</button>"
						+'</td></tr>');
			});
		}
		
	});
}


//EVENTO CUANDO SE MODAL SE MUESTRA
$('#miModalRegistrar').on('show.bs.modal', function (event) {
	  console.log("Mostrar el modal"+ event);// stops modal from being shown
	  var button = $(event.relatedTarget); // Boton q mostro el modal
	  var recipient = button.data('whatever');
	  var modal = $(this);
	  modal.find('.modal-title').text(recipient);	  
});

function buscar(btnActulizar) {
	console.log("Evento Buscar para Actualizar");
	console.log("objeto boton"+ btnActulizar);
	
	var id=btnActulizar.value;
	
	$.ajax({
		type:"get",
		url:"a_buscar",
		data:{idproducto:id},
		success:function(respuesta){
			console.log(respuesta.producto);
			$("#idproductoSetJS").val(respuesta.producto.idproducto);
			$("#nombreSetJS").val(respuesta.producto.nombre);
			//falta setear esto
			//falta setear esto
			document.getElementById("categoriaSetJS").value=respuesta.producto.categoria;
			$("#precioSetJS").val(respuesta.producto.precio);
		}
	});
	limpiarBuscar();
	$('#miModalActualizar').modal('show');
	
}

$("#btnActualizarSetJS").on("click", function(){
	
	console.log("Evento Actualizar");
	actualizar();
});

function actualizar() {
	
	var json= $("#frmActualizarProducto").serialize();
	console.log("Data Serializada "+json);
	
	$.ajax({
		type:"get",
		url:"a_actualizar",
		data:$("#frmActualizarProducto").serialize(),
		success:function(respuesta){
			
		},
		error:function(respuesta){
			console.log(respuesta);
		}
		
	});
	
	limpiar();
	
}


/*-----------------------------------------------------------------------------------*/

$("#btnRegistrarJS").on("click", function(){
	
	console.log("Evento Registrar");
	registrar();
});

function registrar() {
	
	var json= $("#frmRegistrarProducto").serialize();
	console.log("Data Serializada "+json);
	
	$.ajax({
		type:"get",
		url:"a_registrar",
		data:$("#frmRegistrarProducto").serialize(),
		success:function(respuesta){
			
		},
		error:function(respuesta){
			console.log(respuesta);
		}
		
	});
	
	limpiar();
	
}

$("#btnCancelarJS").on("click", function(){
	console.log("Evento Cancelar");
	limpiar();
});

$("#btnCancelarSetJS").on("click", function(){
	console.log("Evento Cancelar");
	limpiarBuscar();
});



function limpiar() {
	
	$("#nombreJS").val("");
	$("#categoriaJS").val($("#categoriaJS option:first").val());
	$("#precioJS").val("");
	$('#miModalRegistrar').modal("hide");
}

function limpiarBuscar() {
	
	$("#nombreSetJS").val("");
	$("#categoriaSetJS").val($("#categoriaJS option:first").val());
	$("#precioSetJS").val("");
	$('#miModalActualizar').modal("hide");
}





