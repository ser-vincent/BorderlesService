package com.project.model;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.*;

@Entity
@Table (name = "utente")
    public class Utente {
	
	@Column (name = "id")
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "nome")
	private String nome;
	@Column(name = "cognome")
	private String cognome;
	@Column(name = "email")
	private String email;
	@Column(name = "password")
	private String password;
	@Column(name = "cell")
	private String cell;
	
	@Lob
	@Column(name = "img")
	private Blob img;
	
	@Column(name = "tipoutente")
	@Enumerated(EnumType.STRING)
	private TipoUtente tipoutente;
	
	@ManyToMany
    @JoinTable(
        name = "serviziofferti",
        joinColumns = @JoinColumn(name = "id_utente"),
        inverseJoinColumns = @JoinColumn(name = "id_servizio"))
    private List<Servizio> serviziOfferti;
	
	@ManyToMany
    @JoinTable(
        name = "servizirichiesti",
        joinColumns = @JoinColumn(name = "id_utente"),
        inverseJoinColumns = @JoinColumn(name = "id_servizio"))
    private List<Servizio> serviziRichiesti;
	
	
	public Utente() {
		super();
		
	}

	public Utente(String nome, String cognome, String email, String password, String cell, TipoUtente tipoutente,
		List<Servizio> serviziOfferti) {
	super();
	this.nome = nome;
	this.cognome = cognome;
	this.email = email;
	this.password = password;
	this.cell = cell;
	this.tipoutente = tipoutente;
	this.serviziOfferti = serviziOfferti;
	this.img = null;
}
	
	public Utente(String nome, String cognome, String email, String password, String cell, TipoUtente tipoutente) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.cell = cell;
		this.tipoutente = tipoutente;
		this.serviziOfferti = new ArrayList<Servizio>();
		this.img = null;
	}


	public Utente(Integer id, String nome, String cognome, String email, String password, String cell,
		TipoUtente tipoutente, List<Servizio> serviziOfferti) {
	super();
	this.id = id;
	this.nome = nome;
	this.cognome = cognome;
	this.email = email;
	this.password = password;
	this.cell = cell;
	this.tipoutente = tipoutente;
	this.serviziOfferti = serviziOfferti;
	this.img = null;
}
	
	public Utente(Integer id, String nome, String cognome, String email, String password, String cell,
			TipoUtente tipoutente) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.cell = cell;
		this.tipoutente = tipoutente;
		this.serviziOfferti = new ArrayList<Servizio>();
		this.img = null;
	}
	

	public Utente(Integer id, String nome, String cognome, String email, String password, String cell, Blob img,
			TipoUtente tipoutente, List<Servizio> serviziOfferti, List<Servizio> serviziRichiesti) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.cell = cell;
		this.img = img;
		this.tipoutente = tipoutente;
		this.serviziOfferti = serviziOfferti;
		this.serviziRichiesti = serviziRichiesti;
	}
	
	public Utente(String nome, String cognome, String email, String password, String cell, TipoUtente tipoutente, Blob img) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.cell = cell;
		this.tipoutente = tipoutente;
		this.serviziOfferti = new ArrayList<Servizio>();
		this.img = img;
	}
	
	public Utente(Integer id,String nome, String cognome, String email, String password, String cell, TipoUtente tipoutente, Blob img) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.cell = cell;
		this.tipoutente = tipoutente;
		this.serviziOfferti = new ArrayList<Servizio>();
		this.img = img;
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

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCell() {
		return cell;
	}

	public void setCell(String cell) {
		this.cell = cell;
	}

	public TipoUtente getTipoutente() {
		return tipoutente;
	}

	public void setTipoutente(TipoUtente tipoutente) {
		this.tipoutente = tipoutente;
	}

	public List<Servizio> getServiziOfferti() {
		return serviziOfferti;
	}

	public void setServiziOfferti(List<Servizio> serviziOfferti) {
		this.serviziOfferti = serviziOfferti;
	}

	public List<Servizio> getServiziRichiesti() {
		return serviziRichiesti;
	}

	public void setServiziRichiesti(List<Servizio> serviziRichiesti) {
		this.serviziRichiesti = serviziRichiesti;
	}

	public Blob getImg() {
		return img;
	}

	public void setImg(Blob img) {
		this.img = img;
	}
	
	
}
