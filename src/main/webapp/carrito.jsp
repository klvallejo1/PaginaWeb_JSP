<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*" session="true"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/normalize.css" rel="stylesheet">
<link href="css/style_carrito.css" rel="stylesheet">
<title>Compra!</title>
</head>
<body>
	<header class="header"> <a href="index.jsp"> <img
		class="header_logo" src="resourses/Logo_Temporal.png" alt="LogoWeb">
	</a> </header>

	<nav class="navegacion"> <a class="navegacion_enlace"
		href="index.jsp">TIENDA</a> <a class="navegacion_enlace"
		href="nosotros.jsp">NOSOTROS</a> <a class="navegacion_enlace"
		href="formulario_contacto.jsp">CONTACTÁNOS</a> <a
		class="navegacion_enlace" href="login.jsp">TU CUENTA</a> <a
		class="navegacion_enlace navegacion_enlace--activo" href="carrito.jsp">
		<svg xmlns="http://www.w3.org/2000/svg"
			class="icon icon-tabler icon-tabler-shopping-cart" width="48"
			height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#F5C36C"
			fill="none" stroke-linecap="round" stroke-linejoin="round"> <path
			stroke="none" d="M0 0h24v24H0z" fill="none" /> <path
			d="M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /> <path
			d="M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /> <path
			d="M17 17h-11v-14h-2" /> <path d="M6 5l14 1l-1 7h-13" /> </svg>
	</a> </nav>

	<main class="container">
		<h2>ESCOGE TUS PRODUCTOS!</h2>
		<form name="listadoProductos" action="carrito.jsp" method="post">
			<%
			Producto producto = new Producto();
			String tabla = producto.consultarProductos();
			out.print(tabla);
			%>
			<p>
				<input type="submit" name="button" id="button" value="Agregar al carrito" />
			</p>
			<p>
				<input type="submit" name="accion" value="Eliminar Todo" onclick="return confirm('¿Está seguro que desea eliminar todos los productos del carrito?');"/>
			</p>
		
			
			<h2>MI CARRITO</h2>
			<img src="resourses/Carrito.png" width="160" height="240" alt="Carrito_OnePiece" />
			
			<ul>
			    <%
			    List<String> listaElementos = (List<String>) session.getAttribute("carrito");
			
			    if (listaElementos == null) {
			        listaElementos = new ArrayList<String>();
			        session.setAttribute("carrito", listaElementos);
			    }
			
			    // Agregar productos seleccionados al carrito
			    String[] elementos = request.getParameterValues("productos");
			    if (elementos != null) {
			        for (String elemento : elementos) {
			            listaElementos.add(elemento);
			        }
			    }
			
			    // Manejar eliminación de un producto específico
			    String productoAEliminar = request.getParameter("eliminar");
			    if (productoAEliminar != null && !productoAEliminar.isEmpty()) {
			        listaElementos.remove(productoAEliminar);
			    }
			
			    // Manejar eliminación de todos los productos
			    String accion = request.getParameter("accion");
			    if ("Eliminar Todo".equals(accion)) {
			        listaElementos.clear();
			    }
			
			    session.setAttribute("carrito", listaElementos);
			
			    for (String tmp : listaElementos) 
			    { 
			     out.println("<li>" + tmp + "</li>"); 
			    } 
			    %>
			</ul>
			
			<p>
				<input type="submit" name="enviarForm" id="enviarForm" value="PAGAR"/>
			</p>
		</form>
		
				
	</main>

	<footer class="footer">
	<p class="footer_texto">NekoMangaStore - Todos los derechos
		reservados 2024.</p>

	<div class="footer_red">
		<div class="footer_content">
			<p class="footer_content_img">
				<svg xmlns="http://www.w3.org/2000/svg"
					class="icon icon-tabler icon-tabler-brand-facebook" width="60"
					height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00"
					fill="none" stroke-linecap="round" stroke-linejoin="round"> <path
					stroke="none" d="M0 0h24v24H0z" fill="none" /> <path
					d="M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3" />
				</svg>
			</p>
			<a class="footer_texto_red" href="https://www.facebook.com/"
				target="_blank">Facebook</a>
		</div>

		<div class="footer_content">
			<p class="footer_content_img">
				<svg xmlns="http://www.w3.org/2000/svg"
					class="icon icon-tabler icon-tabler-brand-instagram" width="60"
					height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00"
					fill="none" stroke-linecap="round" stroke-linejoin="round"> <path
					stroke="none" d="M0 0h24v24H0z" fill="none" /> <path
					d="M4 4m0 4a4 4 0 0 1 4 -4h8a4 4 0 0 1 4 4v8a4 4 0 0 1 -4 4h-8a4 4 0 0 1 -4 -4z" />
				<path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" /> <path
					d="M16.5 7.5l0 .01" /> </svg>
			</p>
			<a class="footer_texto_red" href="https://www.instagram.com/"
				target="_blank">Instagram</a>
		</div>

		<div class="footer_content">
			<p class="footer_content_img">
				<svg xmlns="http://www.w3.org/2000/svg"
					class="icon icon-tabler icon-tabler-brand-whatsapp" width="60"
					height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00"
					fill="none" stroke-linecap="round" stroke-linejoin="round"> <path
					stroke="none" d="M0 0h24v24H0z" fill="none" /> <path
					d="M3 21l1.65 -3.8a9 9 0 1 1 3.4 2.9l-5.05 .9" /> <path
					d="M9 10a.5 .5 0 0 0 1 0v-1a.5 .5 0 0 0 -1 0v1a5 5 0 0 0 5 5h1a.5 .5 0 0 0 0 -1h-1a.5 .5 0 0 0 0 1" />
				</svg>
			</p>
			<a class="footer_texto_red" href="https://www.whatsapp.com"
				target="_blank">Whatsapp</a>
		</div>
	</div>
	</footer>
</body>
</html>