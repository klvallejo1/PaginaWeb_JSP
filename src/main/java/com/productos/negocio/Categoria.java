package com.productos.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Categoria {
	
	private int id;
	private String description;
	
	public Categoria(int id, String description) {
		super();
		this.id = id;
		this.description = description;
	}
	
	public Categoria() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String mostrarCategoria() {
		String combo = "<select name=cmbCategoriFa>";
		String sql = "SELECT * FROM tb_categoria";
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				combo += "<option value=" + rs.getInt(1) + ">" + rs.getString(2) + "</option>";
			}
			combo += "</select>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return combo;
	}
}
