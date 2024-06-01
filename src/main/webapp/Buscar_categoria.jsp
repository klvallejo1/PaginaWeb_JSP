<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String categoria = request.getParameter("categoria");
    String resultadoBusqueda = ""; // Realiza la búsqueda filtrada y guarda los resultados aquí
    // Llama a la función para buscar productos por categoría y guarda el resultado en resultadoBusqueda
    resultadoBusqueda = obtenerProductosPorCategoria(Integer.parseInt(categoria)); // Ajusta este método según tu lógica de negocio

    // Devuelve los resultados de la búsqueda
    out.print(resultadoBusqueda);
%>