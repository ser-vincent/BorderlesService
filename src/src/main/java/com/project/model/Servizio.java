package com.project.model;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table (name = "servizio")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class Servizio {
	
	@Column (name = "id")
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "nome")
	private String nome;
	@Column(name = "descrizione")
	private String descrizione;
	@Lob
	@Column(name = "img")
	private Blob img;
	@Column(name= "tiposervizio")
	@Enumerated(EnumType.STRING)
	private TipoServizio tiposervizio;
	
	@ManyToMany
	@JoinTable(
	        name = "serviziofferti",
	        joinColumns = @JoinColumn(name = "id_utente"),
	        inverseJoinColumns = @JoinColumn(name = "id_servizio"))
    private List<Utente> utentiCheOffronoIlServizio;
	
	@ManyToMany
	@JoinTable(
	        name = "servizirichiesti",
	        joinColumns = @JoinColumn(name = "id_utente"),
	        inverseJoinColumns = @JoinColumn(name = "id_servizio"))
    private List<Utente> utentiCheRichiedonoIlServizio;
	
	
	public Servizio(Integer id, String nome, String descrizione, Blob img, List<Utente> utentiCheOffronoIlServizio, TipoServizio tiposervizio) {
		super();
		this.id = id;
		this.nome = nome;
		this.descrizione = descrizione;
		this.img = img;
		this.utentiCheOffronoIlServizio = utentiCheOffronoIlServizio;
		this.tiposervizio = tiposervizio;
	}
	
	public Servizio(Integer id, String nome, String descrizione, Blob img, TipoServizio tiposervizio) {
		super();
		this.id = id;
		this.nome = nome;
		this.descrizione = descrizione;
		this.img = img;
		this.utentiCheOffronoIlServizio = new ArrayList<Utente>();
		this.tiposervizio = tiposervizio;
	}
	
	public Servizio(String nome, String descrizione, Blob img, List<Utente> utentiCheOffronoIlServizio, TipoServizio tiposervizio) {
		super();

		this.nome = nome;
		this.descrizione = descrizione;
		this.img = img;
		this.utentiCheOffronoIlServizio = utentiCheOffronoIlServizio;
		this.tiposervizio = tiposervizio;
	}
	
	public Servizio(String nome, String descrizione, Blob img, TipoServizio tiposervizio) {
		super();

		this.nome = nome;
		this.descrizione = descrizione;
		this.img = img;
		this.utentiCheOffronoIlServizio = new ArrayList<Utente>();
		this.tiposervizio = tiposervizio;
	}


	public Servizio() {	}


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


	public String getDescrizione() {
		return descrizione;
	}


	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}


	public Blob getImg() {
		return img;
	}


	public void setImg(Blob img) {
		this.img = img;
	}


	public List<Utente> getUtentiCheOffronoIlServizio() {
		return utentiCheOffronoIlServizio;
	}


	public void setUtentiCheOffronoIlServizio(List<Utente> utentiCheOffronoIlServizio) {
		this.utentiCheOffronoIlServizio = utentiCheOffronoIlServizio;
	}

	public TipoServizio getTiposervizio() {
		return tiposervizio;
	}

	public void setTiposervizio(TipoServizio tiposervizio) {
		this.tiposervizio = tiposervizio;
	}

	@Override
	public String toString() {
		return "Servizio [id=" + id + ", nome=" + nome + ", descrizione=" + descrizione + ", img=" + img
				+ ", tiposervizio=" + tiposervizio + ", utentiCheOffronoIlServizio=" + utentiCheOffronoIlServizio
				+ ", utentiCheRichiedonoIlServizio=" + utentiCheRichiedonoIlServizio + "]";
	}

	

}
