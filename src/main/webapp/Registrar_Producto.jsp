<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
    
<% 
    int categoria = Integer.parseInt(request.getParameter("categoria"));
    String nombre = request.getParameter("nombre");
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));
    double precio = Double.parseDouble(request.getParameter("precio"));
    
    System.out.println(categoria);
    System.out.println(nombre);
    System.out.println(cantidad);
    System.out.println(precio);

    
    Producto p = new Producto();
    out.println(p.ingresarProducto(categoria, nombre, cantidad, precio));
%>
