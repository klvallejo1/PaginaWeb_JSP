<%@page import="com.productos.negocio.Producto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
        int idProducto = Integer.parseInt(request.getParameter("idProducto"));

        Producto producto = new Producto();
        String mensaje = producto.eliminarProducto(idProducto);
    %>

    <h2>Resultado de la eliminación del producto</h2>
    <p><%= mensaje %></p>