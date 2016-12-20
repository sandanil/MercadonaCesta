<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Productos Disponibles</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/estilos.css">

<script src="https://code.jquery.com/jquery-3.1.1.js"
	integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../js/miscript.js"></script>
</head>
<body>
<p align="right">Sesión iniciada por <%= session.getAttribute("usuario") %></p>
<h3>Listado de productos</h3>
<% ResultSet rs=(ResultSet)(request.getAttribute("resultados"));
	while(rs.next()){
%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<p><%= rs.getString("nombre") %></p>
				<a href='DetalleProducto?id=<%= rs.getString("id")%>'>
				<p><img src="<%= rs.getString("image") %>" width="300"></p></a>
			</div>
		</div>
	</div>
<%} %>


	<br><br><a class="col-md-12 text-center" href="Login">Volver a mi Perfil</a>
</body>
</html>