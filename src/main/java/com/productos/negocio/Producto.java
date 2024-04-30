package com.productos.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

import com.productos.datos.Conexion;

public class Producto {
	
	private int id;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte[] foto;
	
	public Producto(int id, String nombre, int cantidad, double precio, byte[] foto) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.precio = precio;
		this.foto = foto;
	}
	
	public Producto() {
	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	/*PRODUCT_DAO*/
	public String consultarTodo() {
		String sql = "SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con = new Conexion();
		String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			if (rs != null) {
				boolean datosEncontrados = false;
				while (rs.next()) {
					datosEncontrados = true;
					tabla += "<tr><td>" + rs.getInt(1) + "</td>" + "<td>" + rs.getString(3) + "</td>" + "<td>"
							+ rs.getInt(4) + "</td>" + "<td>" + rs.getDouble(5) + "</td>" + "</td></tr>";
				}
				tabla += "</table>";
				if (!datosEncontrados) {
					tabla = "La base de datos está vacía.";
				}
			} else {
				tabla = "Error al consultar la base de datos: ResultSet es nulo.";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			tabla = "Error al consultar la base de datos: " + e.getMessage();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			con.cerrarConexion();
		}
		return tabla;
	}

	public String buscarProductoCategoria(int cat) {
		String sentencia = "SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat=" + cat;
		Conexion con = new Conexion();
		ResultSet rs = null;
		String resultado = "<table border=3>";
		try {
			rs = con.Consulta(sentencia);
			while (rs.next()) {
				resultado += "<tr><td>" + rs.getString(1) + "</td>" + "<td>" + rs.getDouble(2) + "</td></tr>";
			}
			resultado += "</table>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}

	@Override
	public String toString() {
		return "Producto [id=" + id + ", nombre=" + nombre + ", cantidad=" + cantidad + ", precio=" + precio + ", foto="
				+ Arrays.toString(foto) + "]";
	}
	
}
