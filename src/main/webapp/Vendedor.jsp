<%@page import="com.productos.negocio.Producto"%>
<%@page import="com.productos.negocio.Categoria"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	Categoria c= new Categoria();
	Producto producto = new Producto();
	String resultado="";
	
	String tabla = producto.consultarTodo();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vendedor</title>
		<link href="css/normalize.css" rel="stylesheet">
	    <link href="css/style_administrador.css" rel="stylesheet">
</head>
<body>
<header class="header">
        <a href="index.jsp">
            <img class="header_logo" src="resourses/Logo_Temporal.png" alt="LogoWeb">
        </a>
	</header>


    <nav class="navegacion">
        <a class="navegacion_enlace" href="index.jsp">TIENDA</a>
        <a class="navegacion_enlace" href="nosotros.jsp">NOSOTROS</a>
        <a class="navegacion_enlace" href="formulario_contacto.jsp">CONTACTÁNOS</a>
        <a class="navegacion_enlace navegacion_enlace--activo" href="login.jsp">TU CUENTA</a>
        <a class="navegacion_enlace" href="carrito.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#F5C36C" fill="none" stroke-linecap="round" stroke-linejoin="round">
			  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
			  <path d="M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
			  <path d="M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" />
			  <path d="M17 17h-11v-14h-2" />
			  <path d="M6 5l14 1l-1 7h-13" />
			</svg>
        </a>
        <a class="navegacion_enlace" href="index.jsp">CERRAR SESIÓN</a>
    </nav>
    
    <h2>BIENVENIDO, VENDEDOR!</h2>
    
    <main class="container">

        <h1>LISTA DE PRODUCTOS</h1>
        
        <h2>Lista de Productos</h2>
        <%=tabla%>
    </main>
    
    <h2>Ingresar Nuevo Producto</h2>
    
    <form action="Registrar_Producto.jsp" method="post">
        <div>
            <label for="nombre">Nombre del Producto:</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>
        <div>
            <label for="categoria">Categoría:</label>
            <!-- Aquí podrías cargar dinámicamente las categorías desde la base de datos -->
            <input type="text" id="categoria" name="categoria" required>
        </div>
        <div>
            <label for="cantidad">Cantidad:</label>
            <input type="number" id="cantidad" name="cantidad" required>
        </div>
        <div>
            <label for="precio">Precio:</label>
            <input type="number" id="precio" name="precio" step="0.01" required>
        </div>
        <div>
            <button type="submit">Ingresar Producto</button>
        </div>
       </form>
       
       <h2>Modificar Producto</h2>
    <form action="Modificar_Producto.jsp" method="post">
        <label for="id">ID del Producto:</label>
        <input type="text" id="id" name="id" required><br>
        <label for="nombre">Nuevo Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>
        <label for="categoria">Nueva Categoría:</label>
        <input type="text" id="categoria" name="categoria" required><br>
        <label for="cantidad">Nueva Cantidad:</label>
        <input type="text" id="cantidad" name="cantidad" required><br>
        <label for="precio">Nuevo Precio:</label>
        <input type="text" id="precio" name="precio" required><br>
        <button type="submit">Guardar Cambios</button>
        
        
    </form>
    
    	<h2>Eliminar Producto</h2>
    <form action="eliminar_producto.jsp" method="post">
        <label for="idProducto">ID del Producto a Eliminar:</label>
        <input type="text" id="idProducto" name="idProducto" required>
        <button type="submit">Eliminar</button>
    </form>
    
    
	<section class="contenedor">
	    <div class="formulario">
	        <div class="texto_formulario">
	            <h2>Cambiar Contraseña</h2>
	            <p>Complete todos siguientes campos para cambiar su contraseña.</p>
	        </div>
	        <form action="Cambiar_Clave.jsp" method="POST">
	            <div>
	                <label for="claveAnterior" class="formulario_input">Clave Anterior:</label>
	                <input type="password" id="claveAnterior" name="claveAnterior" placeholder="Ingrese su clave anterior" required>
	            </div>
	            <div>
	                <label for="nuevaClave" class="formulario_input">Nueva Contraseña:</label>
	                <input type="password" id="nuevaClave" name="nuevaClave" placeholder="Ingrese su nueva contraseña" required>
	            </div>
	            <div>
	                <label for="confirmarClave" class="formulario_input">Confirmar Nueva Contraseña:</label>
	                <input type="password" id="confirmarClave" name="confirmarClave" placeholder="Repita su nueva contraseña" required>
	            </div>
	            <div>
	                <button type="submit" class="input_boton">Guardar Nueva Clave</button>
	            </div>
	        </form>
	    </div>
	</section>
	



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