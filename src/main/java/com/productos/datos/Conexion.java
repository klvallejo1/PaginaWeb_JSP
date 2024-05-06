package com.productos.datos;

import java.sql.*;

public class Conexion {
	private Statement St;
	private String driver;
	private String user;
	private String pwd;
	private String cadena;
	private Connection con;

	String getDriver() {
		return this.driver;
	}

	String getUser() {
		return this.user;
	}

	String getPwd() {
		return this.pwd;
	}

	String getCadena() {
		return this.cadena;
	}

	public Connection getConexion() {
		return this.con;
	}

	public Conexion() {

		this.driver = "org.postgresql.Driver";
		this.user = "postgres";
		this.pwd = "1234";
		this.cadena = "jdbc:postgresql://localhost:5432/bd_productos";
		this.con = this.crearConexion();

	}

	Connection crearConexion() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {

		}

		try {
			Class.forName(getDriver()).newInstance();
			Connection con = DriverManager.getConnection(getCadena(), getUser(), getPwd());
			return con;
		} catch (Exception ee) {
			System.out.println("Error: " + ee.getMessage());
			return null;
		}
	}

	public String Ejecutar(String sql) {
	    String error = "";
	    Statement st = null;
	    
	    try {
	        st = getConexion().createStatement();
	        st.execute(sql);
	        error = "Datos insertados";
	    } catch (Exception ex) {
	        error = ex.getMessage();
	    } finally {
	        try {
	            if (st != null) {
	                st.close();
	            }
	        } catch (SQLException e) {
	            error = e.getMessage();
	        }
	    }
	    
	    return error;
	}

	public ResultSet Consulta(String sql) {
	    String error = "";
	    ResultSet reg = null;
	    Statement st = null;
	    
	    try {
	        st = getConexion().createStatement();
	        reg = st.executeQuery(sql);
	    } catch (Exception ee) {
	        error = ee.getMessage();
	    }
	    
	    return reg;
	}
	
	public void cerrarConexion() {
	    try {
	        if (St != null) {
	            St.close();
	        }
	        if (con != null && !con.isClosed()) {
	            con.close();
	            System.out.println("Conexión cerrada correctamente.");
	        }
	    } catch (SQLException e) {
	        System.out.println("Error al cerrar la conexión: " + e.getMessage());
	    }
	}
}