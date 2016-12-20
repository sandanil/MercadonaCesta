<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mercadona Online</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/estilos.css">

<script src="https://code.jquery.com/jquery-3.1.1.js"
	integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/miscript.js"></script>
</head>
<body>

	<div class="container text-center">
		<img id="logo" alt=""
			src="http://www.guernik.com/blog/wp-content/uploads/2013/06/logo_mercadona_2012-1024x679.jpg">
	</div>
	<div id="exTab1" class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="#1a" data-toggle="tab">Login</a></li>
			<li><a href="#2a" data-toggle="tab">Registro</a></li>
		</ul>

		<div class="tab-content clearfix">
			<div class="tab-pane active" id="1a">
				<h3>Iniciar sesi�n</h3>
				<form action="Login" method="post" id="login" class="form text-center">
					<p>
						<input type="text" name="user" placeholder="Usuario">
					</p>
					<p>
						<input type="password" name="password" placeholder="Contrase�a">
					</p>
					<p>
						<input type="submit" name="login" class="btn btn-lg btn-default"
							value="Iniciar sesi�n">
					</p>
				</form>
			</div>
			<div class="tab-pane" id="2a">
				<h3>Formulario de registro</h3>
				<form action="Login" method="post" id="registro" class="form text-center">
					<p>
						<input type="text" name="user" placeholder="Usuario">
					</p>
					<p>
						<input type="password" name="password" placeholder="Contrase�a">
					</p>
					<p>
						<input type="text" name="nombre" placeholder="Nombre">
					</p>
					<p>
						<input type="text" name="apellido1" placeholder="Primer Apellido">
					</p>
					<p>
						<input type="text" name="apellido2" placeholder="Segundo Apellidos">
					</p>
					<p>
						<input type="tel" name="telefono" placeholder="Telefono">
					</p>
					<p>
						<input type="text" name="direccion" placeholder="Direcci�n">
					</p>
					<p>
						<input type="email" name="email" placeholder="Correo electr�nico">
					</p>
					<p>
						<input type="submit" name="registro" class="btn btn-lg btn-default"
							value="Darse de alta">
					</p>
				</form>

			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>