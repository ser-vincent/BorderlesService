package com.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "newsletter")
public class Newsletter {

	
	@Column (name = "id")
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column (name = "nome")
	private String nome;
	@Column (name = "telefono")
	private String telefono;
	@Column (name = "email")
	private String email;
	
	
	public Newsletter(Integer id, String nome, String telefono, String email) {
		
		this.id = id;
		this.nome = nome;
		this.telefono = telefono;
		this.email = email;
	}
	
	public Newsletter(String nome, String telefono, String email) {
		
		this.nome = nome;
		this.telefono = telefono;
		this.email = email;
	}
	
	public Newsletter() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}