package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.project.model.Utente;

@Repository
public interface UtenteRepository extends JpaRepository<Utente, Integer>{
	
	public Utente findUtenteByEmail(String email);
	public Utente findUtenteByEmailAndPassword(String email, String password);
	
	@Query(value = "SELECT utente.id, utente.nome, utente.cognome, utente.email, utente.password, utente.cell, utente.tipoutente, utente.img FROM borderlesservice.utente JOIN serviziofferti ON utente.id = id_utente JOIN servizio ON id_servizio = servizio.id WHERE servizio.id = ?;", nativeQuery = true)
	public List<Utente> trovaUtentiServizio(Integer id);
	
	
	//Utente che fa piu richieste
	@Query(value = "SELECT  count(*) as numeroRichieste, utente.id, utente.nome, utente.cognome, utente.email, utente.password, utente.cell, utente.tipoutente, utente.img\r\n"
			+ "FROM utente\r\n"
			+ "JOIN servizirichiesti ON servizirichiesti.id_utente = utente.id\r\n"
			+ "JOIN servizio ON servizio.id = servizirichiesti.id_servizio\r\n"
			+ "GROUP BY utente.id\r\n"
			+ "ORDER BY numeroRichieste DESC", nativeQuery = true)
	public List<Utente> UtentePiuRichiesti();
	@Query(value = "SELECT  count(*) as serviziRichiesti FROM utente \r\n"
			+ "JOIN servizirichiesti ON servizirichiesti.id_utente = utente.id\r\n"
			+ "JOIN servizio ON servizio.id = servizirichiesti.id_servizio\r\n"
			+ "	where utente.id = ?",nativeQuery = true)
	public long countUtentePiuRichiesti(Integer id);
	
	
	//Utente che offre piu servizi
		@Query(value = "SELECT  count(*) as numeroRichieste, utente.id, utente.nome, utente.cognome, utente.email, utente.password, utente.cell, utente.tipoutente, utente.img\r\n"
				+ "FROM utente\r\n"
				+ "JOIN serviziofferti ON serviziofferti.id_utente = utente.id\r\n"
				+ "JOIN servizio ON servizio.id = serviziofferti.id_servizio\r\n"
				+ "GROUP BY utente.id\r\n"
				+ "ORDER BY numeroRichieste DESC", nativeQuery = true)
		public List<Utente> UtentePiuOfferti();
		@Query(value = "SELECT  count(*) as serviziRichiesti FROM utente \r\n"
				+ "JOIN serviziofferti ON serviziofferti.id_utente = utente.id\r\n"
				+ "JOIN servizio ON servizio.id = serviziofferti.id_servizio\r\n"
				+ "	where utente.id = ?",nativeQuery = true)
		public long countUtentePiuOfferti(Integer id);
	
}
