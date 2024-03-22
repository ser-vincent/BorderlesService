package com.project.model;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "prodotto")
public class Prodotto {
	
	@Column (name = "id")
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column (name = "nome")
	private String nome;
	@Column (name = "quantita")
	private int quantita;
	@Column (name = "prezzo")
	private double prezzo;
	
	
	
	
	public Prodotto() {
		super();
	}

	public Prodotto(Integer id, String nome, int quantita, double prezzo) {
		super();
		this.id = id;
		this.nome = nome;
		this.quantita = quantita;
		this.prezzo = prezzo;
	}
	
	public Prodotto(String nome, int quantita, double prezzo) {
		super();
		
		this.nome = nome;
		this.quantita = quantita;
		this.prezzo = prezzo;
	}

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

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	
	
	
	

}
