<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu Cuenta</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_login.css">
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
    </nav>

    <section>
        <div class="contenedor_formulario contenedor">
            <div class="imagen_formulario"></div>
    
            <form class="formulario">
                <div class="texto_formulario">
                    <h1>INICIAR SESIÓN</h1>
                    <p>Ingresa tus credenciales</p>
                </div>
    
                <div class="formulario_input">
                    <label for="usuario">Usuario</label>
                    <input type="text" id="usuario" placeholder="Ingrese su usuario o correo electronico" required>
                </div>
    
                <div class="formulario_input">
                    <label for="contraseña">Contraseña</label>
                    <input type="password" id="contraseña" placeholder="Ingrese su clave" required>
                </div>
    
                <div class="formulario_forget">
                    <a href="#">Olvidaste tu contraseña?</a>
                </div>
    
                <div>
                    <input class="input input_boton" type="submit" value="Ingresar">
                </div>

                <div class="formulario_register">
                    <a href="">No tienes una cuenta? Registrate!</a>
                </div>
            </form>
        </div>
    </section>
<<<<<<< HEAD
    
    <section class="contenedor">
    <div class="formulario">
        <div class="texto_formulario">
            <h1>Registro de nuevos clientes</h1>
            <p>Por favor, complete el formulario para registrarse.</p>
        </div>
        <form action="ingresarUsuario.jsp" method="POST">
            <div>
                <label for="nombre" class="formulario_input">Nombre:</label>
                <input type="text" id="nombreU" name="nombreU" required>
            </div>
            <div>
                <label for="cedula" class="formulario_input">Cedula:</label>
                <!-- Corregir el nombre del atributo "name" a "cedulaU" -->
                <input type="text" id="cedulaU" name="cedulaU" required>
            </div>
            <div>
                <label for="estadoCivil" class="formulario_input">Estado civil:</label>
                <select id="estadoCivilU" name="estadoCivilU" class="input_select" required>
                    <option value="">Seleccionar</option>
                    <option value="Soltero">Soltero</option>
                    <option value="Divorciado">Divorciado</option>
                    <option value="Casado">Casado</option>
                    <option value="Union Libre">Union Libre</option>
                    <option value="Viudo">Viudo</option>
                    <option value="Indefinido">Indefinido</option>
                </select>
            </div>
            <div>
                <label for="correo" class="formulario_input">Correo:</label>
                <input type="email" id="correoU" name="correoU" required>
            </div>
            <div>
                <label for="clave" class="formulario_input">Clave:</label>
                <input type="password" id="claveU" name="claveU" required>
            </div>
            <div>
                <button type="submit" class="input_boton">Enviar</button>
            </div>
        </form>
    </div>
</section>

   
=======
>>>>>>> 25acefda5d5d1399ad350bd479002f3eb5277ba9

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