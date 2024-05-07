package com.productos.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
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

	/* PRODUCT_DAO */
	public String consultarTodo() {
	    String sql = "SELECT * FROM tb_producto ORDER BY id_pr";
	    Conexion con = new Conexion();
	    String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Modificar</th><th>Eliminar</th>";
	    ResultSet rs = null; // Aquí se guardan los datos obtenidos de la tabla.
	    try {
	        rs = con.Consulta(sql);
	        if (rs != null) {
	            boolean datosEncontrados = false;
	            while (rs.next()) {
	                datosEncontrados = true;
	                int idProducto = rs.getInt(1);
	                tabla += "<tr><td>" + idProducto + "</td>" 
	                         + "<td>" + rs.getString(3) + "</td>" 
	                         + "<td>" + rs.getInt(4) + "</td>" 
	                         + "<td>" + rs.getDouble(5) + "</td>"
	                         + "<td><a href='Buscar_Producto.jsp' id=" + idProducto + "'>Modificar</a></td>"
	                         + "<td><a href='Eliminar_Producto.jsp' id=" + idProducto + "'>Eliminar</a></td></tr>";
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
	
	public void ConsultarEditarProductos(int cod) {
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		ResultSet rs = null;
		Producto p= new Producto();
		Categoria c= new Categoria();
		
		String sql= "SELECT id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr FROM tb_producto WHERE id_pr = '" + cod + "'";
		
		try {
			rs= con.Consulta(sql);
			while(rs.next()) {
				p.setId(rs.getInt(1));
				c.setId(rs.getInt(2));
				c.setDescription(rs.getString(3));
				p.setPrecio(rs.getDouble(4));
				p.setCantidad(rs.getInt(5));
			}
			
		} catch (Exception e) {
			
		}
	
	}


	public String ingresarProducto(int cat, String nombre, int cantidad, double precio) {
		String result = "";
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		String sql = "INSERT INTO tb_producto (id_cat, nombre_pr, cantidad_pr, precio_pr) VALUES (?, ?, ?, ?)";
		try {
			pr = con.getConexion().prepareStatement(sql);
			pr.setInt(1, cat);
			pr.setString(2, nombre);
			pr.setInt(3, cantidad);
			pr.setDouble(4, precio);
			/*
			File fichero = new File(directorio);
			FileInputStream streamEntrada = new FileInputStream(fichero);
			pr.setBinaryStream(6, streamEntrada, (int) fichero.length());*/
			
			if (pr.executeUpdate() == 1) {
				result = "Inserción correcta";
			} else {
				result = "Error en inserción";
			}
		} catch (Exception ex) {
			result = ex.getMessage();
		} finally {
			try {
				pr.close();
				con.getConexion().close();
			} catch (Exception ex) {
				System.out.print(ex.getMessage());
			}
		}
		return result;
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
	
	public boolean ModificarProducto(Producto p) {
		
		boolean agregado=false;
		Conexion con= new Conexion();
		String sql="UPDATE tb_producto SET descripcion_pr='"+p.get;
		
		return agregado;
	}
	
	public boolean EliminarProducto(int cod) {
		boolean f=false;
		Conexion con= new Conexion();
		String sql="DELETE FROM tb_producto WHERE id_pr='"+cod+"'";
		
		try {
			con.Ejecutar(sql);
			f=true;
			
		} catch (Exception e) {
			f=false;
		}
		
		return f;
	}

	@Override
	public String toString() {
		return "Producto [id=" + id + ", nombre=" + nombre + ", cantidad=" + cantidad + ", precio=" + precio + ", foto="
				+ Arrays.toString(foto) + "]";
	}
}

