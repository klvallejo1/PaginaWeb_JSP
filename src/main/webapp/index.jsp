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
            <img class="header_logo" src="resourses/Logo.jpg" alt="LogoWeb">
        </a>
	</header>


    <nav class="navegacion">
        <a class="navegacion_enlace navegacion_enlace--activo" href="index.jsp">TIENDA</a>
        <a class="navegacion_enlace" href="nosotros.jsp">NOSOTROS</a>
        <a class="navegacion_enlace" href="formulario_contacto.jsp">CONTACTÁNOS</a>
        <a class="navegacion_enlace" href="login.jsp">TU CUENTA</a>
        <a class="navegacion_enlace" href="carrito.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#F5C36C" fill="none" stroke-linecap="round" stroke-linejoin="round">
			  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
			  <path d="M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
			  <path d="M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
			  <path d="M17 17h-11v-14h-2" />
			  <path d="M6 5l14 1l-1 7h-13" />
			</svg>
        </a>
    </nav>
    
     <div class="container">
        <div class="image-column">
            <img src="resourses/1.jpg" alt="Image 1">
            <img src="resourses/2.jpg" alt="Image 2">
            <img src="resourses/3.jpg" alt="Image 3">
            <img src="resourses/4.jpg" alt="Image 3">
        </div>
    </div>

    <main class="container">

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
                    <svg class="w-[44px] h-[44px] text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" viewBox="0 0 24 24">
				  <path fill-rule="evenodd" d="M12.51 8.796v1.697a3.738 3.738 0 0 1 3.288-1.684c3.455 0 4.202 2.16 4.202 4.97V19.5h-3.2v-5.072c0-1.21-.244-2.766-2.128-2.766-1.827 0-2.139 1.317-2.139 2.676V19.5h-3.19V8.796h3.168ZM7.2 6.106a1.61 1.61 0 0 1-.988 1.483 1.595 1.595 0 0 1-1.743-.348A1.607 1.607 0 0 1 5.6 4.5a1.601 1.601 0 0 1 1.6 1.606Z" clip-rule="evenodd"/>
				  <path d="M7.2 8.809H4V19.5h3.2V8.809Z"/>
				</svg>


                </p>
                <a class="footer_texto_red" href="https://ec.linkedin.com/in/kevin-vallejo-hern%C3%A1ndez-a90771134" target="_blank">Linkedin</a>
            </div>
        </div>
    </footer>
</body>
</html>