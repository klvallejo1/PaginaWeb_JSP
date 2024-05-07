<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% 
	//int cod=Integer.parseInt(request.getParameter("cod"));
	Producto p= new Producto();
	//boolean f= p.EliminarProducto(cod);
	boolean f=true;
	
	/*
	if(f==true){
		response.sendRedirect("Categoria.jsp");
		
	}*/
%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eliminar Productos</title>
</head>
<body>
	<h1>Eliminar Producto</h1>
	<form action="#" method="POST">

	    <label for="codigo">Código de Producto:</label>
	    <input type="text" id="codigo" name="codigo" required><br><br>
	
	    <label for="categoria">Categoría:</label>
	    <select id="categoria" name="categoria" required>
	        <option value="">Selecciona una categoría</option>
	        <option value="Shonen">Shonen</option>
	        <option value="Seinen">Seinen</option>
	        <option value="Romance">Romance</option>
	        <option value="Deportes">Deportes</option>
	    </select><br><br>
	
	    <label for="descripcion">Descripción:</label><br>
	    <textarea id="descripcion" name="descripcion" rows="4" cols="50" required></textarea><br><br>
	
	    <label for="precio">Precio:</label>
	    <input type="number" id="precio" name="precio" step="0.01" min="0" required><br><br>
	
	    <label for="cantidad">Cantidad:</label>
	    <input type="number" id="cantidad" name="cantidad" min="0" required><br><br>
	
	    <input type="submit" value="Actualizar">
	</form>

</body>
</html>