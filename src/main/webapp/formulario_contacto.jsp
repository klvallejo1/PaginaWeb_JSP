<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactanos</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_formulario.css">
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
        <a class="navegacion_enlace navegacion_enlace--activo" href="formulario_contacto.jsp">CONTACTÁNOS</a>
        <a class="navegacion_enlace" href="login.jsp">TU CUENTA</a>
    </nav>

    <h1>¿NO ENCUENTRAS TU MANGA FAVORITO? CONTÁCTANOS!</h1>

    <div class="imagen_fondo"></div>

    <main>
        <form class="formulario">
            <div class="campo">
                <label for="nombres" class="campo_label">NOMBRES*: </label>
                <input class="items" type="text" name="Nombres" id="nombres" placeholder="Ingrese sus nombres" required>
            </div>
            
            <div class="campo">
                <label for="apellidos" class="campo_label">APELLIDOS*: </label>
                <input class="items" type="text" name="Apellidos" id="apellidos" placeholder="Ingrese sus apellidos" required>
            </div>

            <div class="campo">
                <label for="correo" class="campo_label">CORREO*: </label>
                <input class="items" type="email" name="Correo" id="correo" placeholder="Ingrese su correo electronico" required>
            </div>

            <div class="campo">
                <label for="estado_civil" class="campo_label">ESTADO CIVIL:</label>
                <select id="opciones" name="opciones" class="items">
                    <option value="opcion1">Soltero/a</option>
                    <option value="opcion2">Casado/a</option>
                    <option value="opcion3">Divorciado/a</option>
                  </select>                  
            </div>

            <div class="campo">
                <label for="mensaje" class="campo_label">MANGA A SOLICITAR*: </label>
                <textarea id="mensaje" class="items campo_label_txtArea" placeholder="¿Que manga buscabas? Ingresa su nombre, volumen, editorial, etc..." required></textarea>
            </div>

            <div class="campo">
                <label for="foto" class="campo_label">AGREGA UNA FOTO</label>
                <input type="file" id="foto" name="foto" accept="image/*">
            </div>

            <div>
                <input class="boton" type="submit" name="Enviar" id="enviar">
                <input class="boton boton_reset" type="reset" name="Borrar Todo" id="delete">
            </div>
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