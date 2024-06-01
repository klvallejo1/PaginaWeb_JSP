<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador</title>
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
    
    <h2>BIENVENIDO, ADMINISTRADOR!</h2>
    
    <section class="contenedor">
        <div class="formulario">
            <div class="texto_formulario">
                <h2>Registro de nuevos vendedores y administradores</h2>
                <p>Por favor, complete el formulario para registrarse.</p>
            </div>
            <form action="Ingresar_como_Administrador.jsp" method="POST">
                <div>
                    <label for="nombre" class="formulario_input">Nombres y Apellidos:</label>
                    <input type="text" id="nombresU" name="nombresU" placeholder="Ingresa tus dos nombres y dos apellidos" required>
                </div>
                <div>
                    <label for="correo" class="formulario_input">Correo:</label>
                    <input type="email" id="correoU" name="correoU" placeholder="Ingresa tu correo electronico" required>
                </div>
                <div>
                    <label for="perfilU" class="formulario_input">Perfil:</label>
                    <select id="perfilU" name="perfilU" class="input_select" required>
                        <option value="">Seleccionar</option>
                        <option value="Administrador">Administrador</option>
                        <option value="Vendedor">Vendedor</option>
                    </select>
                </div>
                
                <div>
                    <label for="clave" class="formulario_input">Clave:</label>
                    <input type="password" id="claveU" name="claveU" placeholder="La clave por defecto será 654321" readonly="readonly">
                </div>
                <div>
                    <button type="submit" class="input_boton">Enviar</button>
                </div>
            </form>
        </div>
    </section>
    
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