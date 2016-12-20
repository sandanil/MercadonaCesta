<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header2.jsp" />
<body>
Usuario: <%= session.getAttribute("usuario") %>
		 <div class="row">    
	<%  
	
	ResultSet producto = (ResultSet) (request.getAttribute("producto"));
	while (producto.next()) {
	%>
		
		    <div id="1" class="col-md-3 text-center">
		    <br>
			<a href="DetalleProducto?id=<%= producto.getInt("id") %>"><img src="<%=producto.getString(5) %>" width="200" height="200" class="img-circle">
		    <br><span class="nombre"><%=producto.getString(2) %> </span></a>
			<br><span class="precio"><%=producto.getString(4) %> Euros</span>
			<a href="Cesta?id=<%= producto.getInt("id") %>">Comprar</a>
			
	
	<%
	}
	
	%>
</div> 





</body>
</html>