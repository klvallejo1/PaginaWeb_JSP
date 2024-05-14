<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
    
<%
    String nombre = request.getParameter("nombreU");
    String cedula = request.getParameter("cedulaU");
    String estadoCivilMoment = request.getParameter("estadoCivilU");
    int estadoCivil;

    // Comparación de estado civil utilizando equals()
    if ("Soltero".equals(estadoCivilMoment)) {
        estadoCivil = 1;   
    } else if ("Divorciado".equals(estadoCivilMoment)) {
        estadoCivil = 2;
    } else if ("Casado".equals(estadoCivilMoment)) {
        estadoCivil = 3;
    } else if ("Union Libre".equals(estadoCivilMoment)) {
        estadoCivil = 4;
    } else if ("Viudo".equals(estadoCivilMoment)) {
        estadoCivil = 5;
    } else {
        estadoCivil = 6;
    }

    String correo = request.getParameter("correoU");
    String clave = request.getParameter("claveU");

    System.out.println(nombre);
    System.out.println(cedula);
    System.out.println(estadoCivilMoment);
    System.out.println(correo);
    System.out.println(clave);
    
    Usuario u = new Usuario();
    System.out.println(u.toString());
    out.println(u.ingresarCliente(estadoCivil, nombre, cedula, correo, clave));
%>
