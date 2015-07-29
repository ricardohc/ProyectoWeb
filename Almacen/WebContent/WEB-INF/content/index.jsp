<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>Alamacen</title>
</head>
<body>
	<div class="container">
		<br>
		<div class="jumbotron">
				<h1 class="col-xs-offset-3">Gestion producto</h1>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-2">
				<!-- nav-pills es para poner horizontal  -->
				<ul class="nav nav-pills nav-stacked" >
					<li class="active"><a href="#" >Inicio</a></li>
					<li class="nav-divider"></li>
					<li class="disabled"><a href="#">Noticias</a></li>
					<li><a href="#">Formulario</a></li>
					<li><a href="#">Nosotros</a></li>
					<li><a href="#">Otros</a></li>
				</ul>
			</div>
			<div class="col-xs-10">
				<div class="panel panel-info panel-danger">
					<div class="panel-heading">
						<h3></h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-3 col-xs-offset-9">
								<input type="button" value="Registrar producto" class="btn btn-info" data-toggle="modal" data-target="#miModalRegistrar" data-whatever="Registrar Producto :)"/>
							</div>
						</div>
						<table class="table table-responsible table-hover"
							id="tablaProductosJS">
							<thead>
								<tr>
									<th>Codigo</th>
									<th>Nombre</th>
									<th>Categoria</th>
									<th>Precio</th>
									<th>----------------</th>
									<th>------------</th>
								</tr>
							</thead>
							<tbody id="filaJS">
								<!-- cargado con JQUERY -->
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- well = jumbotron -->
		<div class="well">
				<h4 class="col-xs-offset-4">Protegido por todos los derechos
					reservados</h4>
		</div> 
	</div>
	
	<!-- MODAL REGISTRAR PRODUCTO -->
	<!-- MODAL REGISTRAR PRODUCTO -->
	<!-- fade frm down  data-dismiss= funcionara  tabindex="-1"= al presionar ESC se va-->
	<div class="modal fade" id="miModalRegistrar"  tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h3 class="modal-title">New message</h3>
				</div>
				<div class="modal-body">
					<form id="frmRegistrarProducto">
					<input type="hidden" name="producto.idproducto" value="0">
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="nombreJS">Nombre</label>
								<input type="text" id="nombreJS" class="form-control" name="producto.nombre">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="categoriaJS">Categoria</label>
								<select id="categoriaJS" class="form-control" name="producto.categoria">
									<option selected="selected">Seleccione</option>
									<option value="Abarrotes">Abarrotes</option>
									<option value="Bebidas">Bebidas</option>
									<option value="Golocinas">Golocinas</option>
								</select>
							</div>
						</div>
						<div class="col-xs-5">
							<input type="submit" id="btnRegistrarJS" class="btn btn-info" value="Registrar">
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="precioJS">Precio</label>
								<input type="text" id="precioJS" class="form-control" name="producto.precio">
							</div>
						</div>
						<div class="col-xs-5">
							<input type="button" id="btnCancelarJS" class="btn btn-info" value="Cancelar">
						</div>	
					</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
	<!-- ---------------------------------------------------------------------------- -->
	<!-- ---------------------------------------------------------------------------- -->
	
	
	<!-- MODAL ACTUALIZAR PRODUCTO -->
	<!-- MODAL ACTUALIZAR PRODUCTO -->
	<!-- fade frm down  data-dismiss= funcionara-->
	<div class="modal fade" id="miModalActualizar" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h3>Actualizar Producto 8)</h3>
				</div>
				<div class="modal-body">
					<form id="frmActualizarProducto">
					<input type="text" name="producto.idproducto" id="idproductoSetJS">
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="nombreSetJS">Nombre</label>
								<input type="text" id="nombreSetJS" class="form-control" name="producto.nombre">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="categoriaSetJS">Categoria</label>
								<select id="categoriaSetJS" class="form-control" name="producto.categoria">
									<option selected="selected">Seleccione</option>
									<option value="Abarrotes">Abarrotes</option>
									<option value="Bebidas">Bebidas</option>
									<option value="Golocinas">Golocinas</option>
								</select>
							</div>
						</div>
						<div class="col-xs-5">
							<input type="submit" id="btnActualizarSetJS" class="btn btn-info" value="Actualizar">
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="precioSetJS">Precio</label>
								<input type="text" id="precioSetJS" class="form-control" name="producto.precio">
							</div>
						</div>
						<div class="col-xs-5">
							<input type="button" id="btnCancelarSetJS" class="btn btn-info" value="Cancelar">
						</div>	
					</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
	<!-- ---------------------------------------------------------------------------- -->
	<!-- ---------------------------------------------------------------------------- -->
	
	
	<!-- MODAL LOGEO -->
	<!-- MODAL LOGEO -->
	<!-- fade frm down  data-dismiss= funcionara  tabindex="-1"= al presionar ESC se va-->
	<div class="modal fade" id="miModalLogeo" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h3>Iniciar Sessión</h3>
				</div>
				<div class="modal-body">
					<form id="frmActualizarProducto">
					<input type="text" name="producto.idproducto" id="idproductoSetJS">
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="nombreSetJS">Nombre</label>
								<input type="text" id="nombreSetJS" class="form-control" name="producto.nombre">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="categoriaSetJS">Categoria</label>
								<select id="categoriaSetJS" class="form-control" name="producto.categoria">
									<option selected="selected">Seleccione</option>
									<option value="Abarrotes">Abarrotes</option>
									<option value="Bebidas">Bebidas</option>
									<option value="Golocinas">Golocinas</option>
								</select>
							</div>
						</div>
						<div class="col-xs-5">
							<input type="submit" id="btnActualizarSetJS" class="btn btn-info" value="Actualizar">
						</div>
					</div>
					<div class="row">
						<div class="col-xs-7">
							<div class="form-group">
								<label for="precioSetJS">Precio</label>
								<input type="text" id="precioSetJS" class="form-control" name="producto.precio">
							</div>
						</div>
						<div class="col-xs-5">
							<input type="button" id="btnCancelarSetJS" class="btn btn-info" value="Cancelar">
						</div>	
					</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
	<!-- ---------------------------------------------------------------------------- -->
	<!-- ---------------------------------------------------------------------------- -->
	
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/productos.js"></script>
	
</body>
</html>