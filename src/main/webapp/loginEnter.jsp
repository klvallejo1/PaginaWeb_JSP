<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>

<%
    // Obtener los parámetros del formulario
    String usuario = request.getParameter("usuario");
    String contraseña = request.getParameter("contraseña");
    
    // Crear una instancia de la clase Usuario
    Usuario usuarioObj = new Usuario();
    
    // Llamar al método iniciarSesion
    String[] resultadoArray = usuarioObj.iniciarSesion(usuario, contraseña).split(";");
    String resultado = resultadoArray[0];
    int idUsuario = Integer.parseInt(resultadoArray[1]);
    
    // Verificar el resultado del inicio de sesión
    if (resultado.equals("Inicio de sesión exitoso")) {
        // Obtener más detalles del usuario desde la lista de usuarios
        List<Usuario> usuarios = usuarioObj.obtenerTodosLosUsuarios();
        Usuario usuarioAutenticado = usuarios.stream().filter(u -> u.getId() == idUsuario).findFirst().orElse(null);
        
        if (usuarioAutenticado != null) {
            // Almacenar detalles del usuario en la sesión
            HttpSession session2 = request.getSession();
            session2.setAttribute("usuarioAutenticado", usuarioAutenticado);
            
            int perfilUsuario = usuarioAutenticado.getPerfil();
            System.out.println("Perfil: " + perfilUsuario);

            if (perfilUsuario == 1) {
                // Redirigir a la página de administrador
                response.sendRedirect("Administrador.jsp");
            } else if (perfilUsuario == 3) {
                response.sendRedirect("Vendedor.jsp");
            } else {
                response.sendRedirect("Cliente.jsp");
            }
        } else {
            // Manejar el caso si el usuario autenticado no se encuentra en la lista
            response.sendRedirect("login.jsp?error=Error al obtener detalles del usuario");
        }
    } else {
        // Redirigir de vuelta a la página de inicio de sesión con mensaje de error
        response.sendRedirect("login.jsp?error=LAS CREDENCIALES SON INCORRECTAS. REVISALAS!");
    }
%>
