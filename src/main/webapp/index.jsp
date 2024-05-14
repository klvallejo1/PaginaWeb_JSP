<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.util.List"%>
<%
	Categoria c= new Categoria();
	Producto producto = new Producto();
	String resultado="";
	
	String tabla = producto.consultarTodo();
	
%>
<html lang="es">
	<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8" import="com.productos.negocio.*" import="com.productos.datos.*"%>
	    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>NekoMangas</title>
	    <link href="css/normalize.css" rel="stylesheet">
	    <link href="css/style_index.css" rel="stylesheet">
</head>
<body>
    <header class="header">
        <a href="index.jsp">
            <img class="header_logo" src="resourses/Logo_Temporal.png" alt="LogoWeb">
        </a>
    </header>

    <nav class="navegacion">
        <a class="navegacion_enlace navegacion_enlace--activo" href="index.jsp">TIENDA</a>
        <a class="navegacion_enlace" href="nosotros.jsp">NOSOTROS</a>
        <a class="navegacion_enlace" href="formulario_contacto.jsp">CONTACTÁNOS</a>
        <a class="navegacion_enlace" href="login.jsp">TU CUENTA</a>
    </nav>

    <main>

        <h1>MANGAS DISPONIBLES</h1>

        <div class="navegacion">
            <p>Todas las categorias: </p>
            <%
                String combCategoria = c.mostrarCategoria();
                out.print(combCategoria); 
            %>  
        
           <input type="text" id="buscar" placeholder="Buscar producto...">
           <button id="boton_buscar">Buscar</button>
        </div> 
        
        
        <h2>Lista de Productos</h2>
        <%=tabla%>
        
        
        <h1>Ingresar un producto</h1>
        <form action="Registrar_Producto.jsp" method="post">
	
	        <label for="categoria">Categoría:</label>
	        <input type="number" id="categoria" name="categoria" required><br><br>
	
	        <label for="nombre">Nombre del Producto:</label>
	        <input type="text" id="nombre" name="nombre" required><br><br>
	
	        <label for="cantidad">Cantidad:</label>
	        <input type="number" id="cantidad" name="cantidad" required><br><br>
	
	        <label for="precio">Precio:</label>
	        <input type="number" step="0.01" id="precio" name="precio" required><br><br>
	        
	        <label>Foto del producto: </label>
	        <input type="file" id="precio" name="foto" required><br><br>
	        
	
	        <input type="submit" value="Enviar">
    	</form>
    </main>

    <footer class="footer">
        <p class="footer_texto">NekoMangaStore - Todos los derechos reservados 2024.</p>

        <div class="footer_red">
            <div class="footer_content">
                <p class="footer_content_img">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-facebook" width="60" height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3" />
                      </svg>
                </p>
                <a class="footer_texto_red" href="https://www.facebook.com/" target="_blank">Facebook</a>
            </div>
    
            <div class="footer_content">
                <p class="footer_content_img">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-instagram" width="60" height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M4 4m0 4a4 4 0 0 1 4 -4h8a4 4 0 0 1 4 4v8a4 4 0 0 1 -4 4h-8a4 4 0 0 1 -4 -4z" />
                        <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
                        <path d="M16.5 7.5l0 .01" />
                     </svg>
                </p>
                <a class="footer_texto_red" href="https://www.instagram.com/" target="_blank">Instagram</a>
            </div>
    
            <div class="footer_content">
                <p class="footer_content_img">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-whatsapp" width="60" height="60" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M3 21l1.65 -3.8a9 9 0 1 1 3.4 2.9l-5.05 .9" />
                        <path d="M9 10a.5 .5 0 0 0 1 0v-1a.5 .5 0 0 0 -1 0v1a5 5 0 0 0 5 5h1a.5 .5 0 0 0 0 -1h-1a.5 .5 0 0 0 0 1" />
                      </svg>
                </p>
                <a class="footer_texto_red" href="https://www.whatsapp.com" target="_blank">Whatsapp</a>
            </div>
        </div>
    </footer>
</body>
</html>