package com.productos.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	 public List<Usuario> obtenerTodosLosUsuarios() {
	        List<Usuario> usuarios = new ArrayList<>();
	        Conexion con = new Conexion();
	        ResultSet rs = null;
	        PreparedStatement pr = null;
	        String sql = "SELECT * FROM tb_usuario";

	        try {
	            pr = con.getConexion().prepareStatement(sql);
	            rs = pr.executeQuery();

	            while (rs.next()) {
	                int id = rs.getInt("id_us");
	                int perfil = rs.getInt("id_per");
	                int estadoCivil = rs.getInt("id_est");
	                String cedula = rs.getString("cedula_us");
	                String nombre = rs.getString("nombre_us");
	                String correo = rs.getString("correo_us");
	                String clave = rs.getString("clave_us");

	                Usuario usuario = new Usuario(id, perfil, estadoCivil, cedula, nombre, correo, clave);
	                usuarios.add(usuario);
	            }
	        } catch (SQLException ex) {
	            System.out.println("Error al obtener usuarios: " + ex.getMessage());
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                if (pr != null) pr.close();
	                con.cerrarConexion();
	            } catch (SQLException ex) {
	                System.out.println("Error al cerrar recursos: " + ex.getMessage());
	            }
	        }

	        return usuarios;
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
	
    public String iniciarSesion(String usuario, String contraseña) {
        String result = "";
        int idUsuario = -1;

        Conexion con = new Conexion();
        PreparedStatement pr = null;
        ResultSet rs = null;
        String sql = "SELECT id_us, id_per FROM tb_usuario WHERE correo_us = ? AND clave_us = ?";
        
        try {
            pr = con.getConexion().prepareStatement(sql);
            pr.setString(1, usuario);
            pr.setString(2, contraseña);
            rs = pr.executeQuery();
            
            if (rs.next()) {
                idUsuario = rs.getInt("id_us");
                int perfil = rs.getInt("id_per");
                result = "Inicio de sesión exitoso";
            } else {
                result = "Credenciales incorrectas";
            }
        } catch (Exception ex) {
            result = ex.getMessage();
            System.out.println(result);
        } finally {
            try {
                rs.close();
                pr.close();
                con.getConexion().close();
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
        }
        
        return result + ";" + idUsuario;
    }

	 
	 //Ingresar como administrador
	 public String ingresarComoAdmin(String nombre, String correo, int idPerfil) {
		    String result = "";
		    Conexion con = new Conexion();
		    PreparedStatement pr = null;
		    String sql = "INSERT INTO tb_usuario (id_per, nombre_us, correo_us, clave_us) VALUES (?, ?, ?, ?)";
		    
		    try {
		        pr = con.getConexion().prepareStatement(sql);
		        pr.setInt(1, idPerfil);
		        pr.setString(2, nombre);
		        pr.setString(3, correo);
		        pr.setString(4, "654321");
		        
		        if (pr.executeUpdate() == 1) {
		            result = "Inserción como administrador correcta";
		        } else {
		            result = "Error en inserción";
		        }
		    } catch (Exception ex) {
		        result = ex.getMessage();
		        System.out.println(result);
		    } finally {
		        try {
		            pr.close();
		            con.getConexion().close();
		        } catch (Exception ex) {
		            System.out.println(ex.getMessage());
		        }
		    }
		    
		    return result;
		}
	 
	 public String ingresarComoCliente(String nombre, String correo, int idPerfil) {
		    String result = "";
		    Conexion con = new Conexion();
		    PreparedStatement pr = null;
		    String sql = "INSERT INTO tb_usuario (id_per, nombre_us, correo_us, clave_us) VALUES (?, ?, ?, ?)";
		    
		    try {
		        pr = con.getConexion().prepareStatement(sql);
		        pr.setInt(1, idPerfil);
		        pr.setString(2, nombre);
		        pr.setString(3, correo);
		        pr.setString(4, "654321");
		        
		        if (pr.executeUpdate() == 1) {
		            result = "Inserción como administrador correcta";
		        } else {
		            result = "Error en inserción";
		        }
		    } catch (Exception ex) {
		        result = ex.getMessage();
		        System.out.println(result);
		    } finally {
		        try {
		            pr.close();
		            con.getConexion().close();
		        } catch (Exception ex) {
		            System.out.println(ex.getMessage());
		        }
		    }
		    
		    return result;
		}
	 
	 //Cambiar contraseña
	 public String cambiarClave(int idUsuario, String claveAnterior, String nuevaClave) {
		    String result = "";
		    Conexion con = new Conexion();
		    PreparedStatement pr = null;
		    ResultSet rs = null;
		    String sql = "SELECT * FROM tb_usuario WHERE id_us = ? AND clave_us = ?";
		    
		    try {
		        pr = con.getConexion().prepareStatement(sql);
		        pr.setInt(1, idUsuario);
		        pr.setString(2, claveAnterior);
		        rs = pr.executeQuery();
		        
		        if (rs.next()) {
		            sql = "UPDATE tb_usuario SET clave_us = ? WHERE id_us = ?";
		            pr = con.getConexion().prepareStatement(sql);
		            pr.setString(1, nuevaClave);
		            pr.setInt(2, idUsuario);
		            
		            if (pr.executeUpdate() == 1) {
		                result = "Cambio de contraseña exitoso";
		            } else {
		                result = "Error al cambiar la contraseña";
		            }
		        } else {
		            result = "La clave anterior no es correcta";
		        }
		    } catch (Exception ex) {
		        result = ex.getMessage();
		        System.out.println(result);
		    } finally {
		        try {
		            rs.close();
		            pr.close();
		            con.getConexion().close();
		        } catch (Exception ex) {
		            System.out.println(ex.getMessage());
		        }
		    }
		    
		    return result;
		}

}
