<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/miEstilo.css">
<script type="text/javascript" src="../js/script.js"></script>
<%
	String pag = "Mercabola";
	if (request.getAttribute("page") != null) {
		pag = request.getAttribute("page").toString();
	}
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=pag%></title>
</head>
<body>
	<div class="container" id="titulo">
		<div class="row text-center">
			<div class="col-md-8">
				<h1>Mercabola</h1>
			</div>
			<div class="col-md-3">
				<img src="https://media.infojobs.net/corp/mercadona2_logo.gif">
			</div>
			<div class="col-md-1">
				<a href="jsp/cesta.jsp"><img src="http://img.freepik.com/iconos-gratis/carrito-de-compras_318-122356.jpg?size=338&ext=jpg" width="100" height="100">
			</div>
		</div>
	</div>

</body>
</html>