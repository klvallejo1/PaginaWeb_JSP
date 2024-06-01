<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*" %>
    
    <%
    	String clave_anterior= request.getParameter("claveAnterior");
    	String clave_nueva= request.getParameter("nuevaClave");
    	String confirmar_clave= request.getParameter("confirmarClave");
    	
    	System.out.println(clave_anterior);
    	System.out.println(clave_nueva);
    	System.out.println(confirmar_clave);
    	
    	
    	Usuario u = new Usuario();
    	out.println(u.cambiarClave(1, clave_anterior, clave_nueva));
    %>
