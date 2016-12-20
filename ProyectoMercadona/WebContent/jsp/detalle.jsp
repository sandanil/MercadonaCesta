<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detalles Productos</title>
</head>
<body>
Usuario: <%= session.getAttribute("usuario") %>
		<%
		ResultSet rs=(ResultSet)(request.getAttribute("resultados"));
	
			if (rs.next()) {
				
			%>
				
			<div class="container text-center">
				<div class="row">
					<p><%= rs.getString("nombre") %></p>
					<br><img src="<%=rs.getString("image") %>" width="200" height="200" class="img-rounded">
					<br><span class="peso"><%=rs.getString("peso") %> Kilos</span>
					<br><span class="precio"><%=rs.getString("precio") %> Euros</span>
					<br><span class="descripcion"><b>DETALLES:</b><%=rs.getString("descripcion") %></span>
				</div>
			</div>
		<%
		}
		%>
		
<div id="anadirdetalles">
				<form class="text-center" action="Pedidos" method="get">
					<input name="cantidad" type="number" min="1" placeholder="Cantidad">
					<input name="id_pr" type="hidden" value="<%=rs.getString("id") %>">		
					<input name="anadir" type="submit" value="AÑADIR A LA CESTA">	
				</form>
			</div>		
		
		

</body>
</html>