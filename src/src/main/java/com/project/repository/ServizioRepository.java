package com.project.repository;

import java.util.List;
import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.model.Servizio;
import com.project.model.TipoServizio;

import jakarta.transaction.Transactional;

@Repository
public interface ServizioRepository extends JpaRepository<Servizio, Integer>{
	
	public List<Servizio> findAllServizioByTiposervizio(TipoServizio tipo_servizio);
	
	
	@Query(value = "SELECT servizio.id, servizio.nome, servizio.descrizione, servizio.img, servizio.tiposervizio FROM servizio JOIN serviziofferti ON servizio.id = serviziofferti.id_servizio JOIN utente ON serviziofferti.id_utente = utente.id WHERE utente.id = ?", nativeQuery = true)
	public List<Servizio> trovaServiziOffertiUtente(Integer id);
	
	@Query(value = "SELECT servizio.id, servizio.nome, servizio.descrizione, servizio.img, servizio.tiposervizio FROM servizio JOIN servizirichiesti ON servizio.id = servizirichiesti.id_servizio JOIN utente ON servizirichiesti.id_utente = utente.id WHERE utente.id = ?", nativeQuery = true)
	public List<Servizio> trovaServiziRichiestiUtente(Integer id);
	
	@Query(value = "SELECT  count(*) as numeroRichieste, servizio.id, servizio.nome, servizio.descrizione, servizio.img, servizio.tiposervizio FROM servizio JOIN servizirichiesti ON servizio.id = servizirichiesti.id_servizio JOIN utente ON servizirichiesti.id_utente = utente.id group by servizio.id order by numeroRichieste DESC", nativeQuery = true)
	public List<Servizio> serviziPiuRichiesti();
	@Query(value = "SELECT  count(*) as numeroRichieste FROM servizio JOIN servizirichiesti ON servizio.id = servizirichiesti.id_servizio JOIN utente ON servizirichiesti.id_utente = utente.id where servizio.id= ? group by servizio.id",nativeQuery = true)
	public long countServiziPiuRichiesti(Integer id);
	
	@Query(value ="SELECT  count(*) as offerto, servizio.id, servizio.nome, servizio.descrizione, servizio.img, servizio.tiposervizio \r\n"
			+ "FROM servizio JOIN serviziofferti ON servizio.id = serviziofferti.id_servizio JOIN utente ON serviziofferti.id_utente = utente.id \r\n"
			+ "group by servizio.id order by offerto DESC", nativeQuery = true)
	public List<Servizio> servizipiuOfferti();
	
	@Query(value ="SELECT  count(*) as offerto\r\n"
			+ "FROM servizio JOIN serviziofferti ON servizio.id = serviziofferti.id_servizio JOIN utente ON serviziofferti.id_utente = utente.id where servizio.id = ?\r\n"
			+ "group by servizio.id ", nativeQuery = true)
	public long countServizipiuOfferti(Integer id);
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO `borderlesservice`.`serviziofferti` (`id_utente`, `id_servizio`) VALUES (?, ?)", nativeQuery = true )
	public void offri(Integer id_utente, Integer id_servizio);
	
	
	@Modifying
	@Transactional
	@Query(value = "DELETE FROM `borderlesservice`.`serviziofferti` WHERE id_utente = ? AND id_servizio = ?", nativeQuery = true )
	public void rimuoviofferta(Integer id_utente, Integer id_servizio);
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO `borderlesservice`.`servizirichiesti` (`id_utente`, `id_servizio`) VALUES (?, ?)", nativeQuery = true )
	public void richiedi(Integer id_utente, Integer id_servizio);
	
	
	@Modifying
	@Transactional
	@Query(value = "DELETE FROM `borderlesservice`.`servizirichiesti` WHERE id_utente = ? AND id_servizio = ?", nativeQuery = true )
	public void rimuovirichiesta(Integer id_utente, Integer id_servizio);
}
