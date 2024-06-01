<%@page import="com.productos.negocio.Producto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nombre = request.getParameter("nombre");
    int categoria = Integer.parseInt(request.getParameter("categoria"));
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));
    double precio = Double.parseDouble(request.getParameter("precio"));

    Producto p = new Producto();
    String resultado = p.modificarProducto(id, categoria, nombre, cantidad, precio);
    out.println(resultado);
%>