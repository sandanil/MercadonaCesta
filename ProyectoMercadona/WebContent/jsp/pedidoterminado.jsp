<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h6>Está usted registrado como: <%= session.getAttribute("usuario") %></h6>
	</div>
	<div class="col-md-1"></div>
</div>

<br><br>

<div class="text-center">
	EL PRODUCTO HA SIDO AÑADIDO A SU CESTA <br><br>
	<div id="pedidoterminado">
		<form action="Productos" method="post">
			<input name="productos" type="submit" value="VOLVER">
		</form>
	</div>
</div>

<br><br>


</body>
</html>
