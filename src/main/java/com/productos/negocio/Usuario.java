package com.productos.negocio;

import java.sql.PreparedStatement;

import com.productos.datos.Conexion;

public class Usuario {
	private int id;
	private int perfil;
	private int estadoCivil;
	private String cedula;
	private String nombre;
	private String correo;
	private String clave;
	
	
	public Usuario(int id, int perfil, int estadoCivil, String cedula, String nombre, String correo, String clave) {
		super();
		this.id = id;
		this.perfil = perfil;
		this.estadoCivil = estadoCivil;
		this.cedula = cedula;
		this.nombre = nombre;
		this.correo = correo;
		this.clave = clave;
	}
	
	public Usuario() {
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPerfil() {
		return perfil;
	}
	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}
	public int getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(int estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public String getCedula() {
		return cedula;
	}
	public void setCedula(String cedula) {
		this.cedula = cedula;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	
	public String ingresarCliente(int estado_Civil, String nombre, String cedula, String correo, String clave) {
		String result="";
		
		Conexion con= new Conexion();
		PreparedStatement pr= null;
		String sql="INSERT INTO tb_usuario (id_per, id_est, nombre_us,"
				 + "cedula_us,correo_us,clave_us) "
				 + "VALUES(?,?,?,?,?,?)";
		
		try {
			 pr=con.getConexion().prepareStatement(sql);
			 pr.setInt(1, 2);
			 pr.setInt(2, estado_Civil);
			 pr.setString(3, nombre);
			 pr.setString(4, cedula);
			 pr.setString(5, correo);
			 pr.setString(6, clave);
			 
			 if(pr.executeUpdate()==1) {
				 result="Insercion correcta";
			 }else {
				result="Error en insercion";
			}
			
		} catch (Exception ex) {
			result=ex.getMessage();
			System.out.println(result);
		}
		finally {
			try {
				pr.close();
				con.getConexion().close();
				
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		
		return result;
	}
	
	
}
