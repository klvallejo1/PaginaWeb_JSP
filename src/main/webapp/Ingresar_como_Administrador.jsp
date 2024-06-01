<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
    
    <%
    	String nombres = request.getParameter("nombresU");
    	String correo = request.getParameter("correoU");
    	String perfilMoment= request.getParameter("perfilU");
    	int Perfil=2;
    	System.out.println("Momentaneo: "+perfilMoment);
    	
    	if("Administrador".equals(perfilMoment)){
    		Perfil=1;	
    	}else if("Vendedor".equals(perfilMoment)){
    		Perfil=3;		
    	}
    	
    	System.out.println(nombres);
    	System.out.println(correo);
    	System.out.println("El perfil definitivo sera: "+ Perfil);
    	
    	Usuario u = new Usuario();
        out.println(u.ingresarComoAdmin(nombres, correo, Perfil));
    %>
    
    
    
    
