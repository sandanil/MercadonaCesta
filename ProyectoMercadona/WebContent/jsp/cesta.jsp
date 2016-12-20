<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cesta</title>
</head>
<body>
<section id="pedidos">
		<h4>Pedidos</h4>


		
			<%
				ResultSet pc = (ResultSet) request.getAttribute("query");
				while (pc.next()) {
			%>			
				<p><%=pc.getString("nombre")%>
				<p><%=pc.getString("precio")%>
			<%
				}
			%>
		
	</section>
	
	<a href="Productos"><img src="http://ceipcaminodelnorte.centros.educa.jcyl.es/sitio/upload/img/flecha_volver.bmp " widht="100" heigth="100" alt="back"></a>
	




</body>
</html>