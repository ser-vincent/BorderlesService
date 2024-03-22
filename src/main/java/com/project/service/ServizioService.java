package com.project.service;

import java.util.List;

import com.project.model.Servizio;
import com.project.model.TipoServizio;


public interface ServizioService {
	
	public List<Servizio> findAllServices();
	public List<Servizio> findAllServicesByType(TipoServizio tiposervizio);
	public List<Servizio> findOfferedServices(Integer id);
	public List<Servizio> findRequestedServices(Integer id);
	public void aggiungiServizio(Servizio s);
	public void rimuoviServizio(Integer id);
	public void aggiornaServizio(Servizio s, Integer id);
	public Servizio selezionaServizio(Integer id);
	public void offri(Integer id_utente, Integer id_servizio);
	public void rimuoviofferta(Integer id_utente, Integer id_servizio);
	public void richiedi(Integer id_utente, Integer id_servizio);
	public void rimuovirichiesta(Integer id_utente, Integer id_servizio);
	public List<Servizio> serviziConPiuRichieste();
	public long contatoreServizioPiuRichiesto(Integer id);
	public List<Servizio> serviziConPiuOfferti();
	public long contatoreServizioPiuOfferto(Integer id);

}
