<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="es">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Sobre Nosotros</title>
	    <link rel="stylesheet" href="css/normalize.css">
	    <link rel="stylesheet" href="css/style_nosotros.css">
	</head>
<body>
    <header class="header">
        <a href="index.jsp">
            <img class="header_logo" src="resourses/Logo.jpg" alt="LogoWeb">
        </a>
    </header>

    <nav class="navegacion">
        <a class="navegacion_enlace" href="index.jsp">TIENDA</a>
        <a class="navegacion_enlace navegacion_enlace--activo" href="nosotros.jsp">NOSOTROS</a>
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

    <main class="contenedor">
        <h1>NUESTRO EMPRENDIMIENTO</h1>

        <div class="nosotros">
            <div class="nosotros_contenido">
                <p>NekoMangaStore no comenzó como un negocio, sino como el sueño compartido de un grupo de jóvenes universitarios apasionados por el manga y el anime. Todo comenzó en los pasillos de nuestra universidad, donde nos reuníamos para discutir nuestros mangas favoritos, intercambiar recomendaciones y compartir nuestra emoción por las últimas series y lanzamientos.</p>
                <p>Luego de varios desafíos, finalmente, en 2024, nuestra empresa se convirtió en una realidad. Desde entonces, hemos crecido y evolucionado, pero nuestra dedicación a nuestra comunidad de fanáticos del manga nunca ha cambiado. Seguimos siendo un equipo de jóvenes universitarios apasionados, y cada día nos esforzamos por compartir nuestra pasión con el mundo y brindar la mejor experiencia posible a nuestros clientes.</p>
            </div>

            <img class="nosotros_imagen" src="resourses/Nosotros_Temporal.jpg" alt="imagen_nosotros">
        </div>
    </main>

    <section class="contenedor comprar">
        <h2 class="comprar_titulo">¿PORQUÉ ADQUIRIR TUS MANGAS FAVORITOS CON NOSOTROS?</h2>

        <div class="bloques">
            <div class="bloque">
                <p>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-receipt-2" width="100" height="100" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M5 21v-16a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v16l-3 -2l-2 2l-2 -2l-2 2l-2 -2l-3 2" />
                        <path d="M14 8h-2.5a1.5 1.5 0 0 0 0 3h1a1.5 1.5 0 0 1 0 3h-2.5m2 0v1.5m0 -9v1.5" />
                      </svg>
                </p>

                <h3 class="bloque_titulo">EL MEJOR PRECIO</h3>
                <p>Contamos con los mejores precios del mercado, a nivel de Japón.</p>
            </div>

            <div class="bloque">
                <p>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-yin-yang" width="100" height="100" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" />
                        <path d="M12 3a4.5 4.5 0 0 0 0 9a4.5 4.5 0 0 1 0 9" />
                        <circle cx="12" cy="7.5" r=".5" fill="currentColor" />
                        <circle cx="12" cy="16.5" r=".5" fill="currentColor" />
                      </svg>
                </p>

                <h3 class="bloque_titulo">CONFIABILIDAD</h3>
                <p>Entregas inmediatas.</p>
            </div>

            <div class="bloque">
                <p>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-lock-square-rounded" width="100" height="100" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M12 3c7.2 0 9 1.8 9 9s-1.8 9 -9 9s-9 -1.8 -9 -9s1.8 -9 9 -9z" />
                        <path d="M8 11m0 1a1 1 0 0 1 1 -1h6a1 1 0 0 1 1 1v3a1 1 0 0 1 -1 1h-6a1 1 0 0 1 -1 -1z" />
                        <path d="M10 11v-2a2 2 0 1 1 4 0v2" />
                      </svg>
                </p>

                <h3 class="bloque_titulo">SEGURIDAD</h3>
                <p>Entregas físicas seguras y enlaces online con protocolo https.</p>
            </div>

            <div class="bloque">
                <p>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-chrome" width="100" height="100" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffbf00" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" />
                        <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
                        <path d="M12 9h8.4" />
                        <path d="M14.598 13.5l-4.2 7.275" />
                        <path d="M9.402 13.5l-4.2 -7.275" />
                      </svg>
                </p>

                <h3 class="bloque_titulo">VARIABILIDAD</h3>
                <p>No solo mangas básicos, sino de todos los géneros comerciales.</p>
            </div>
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