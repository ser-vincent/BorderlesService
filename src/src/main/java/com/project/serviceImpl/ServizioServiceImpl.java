package com.project.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Servizio;
import com.project.model.TipoServizio;
import com.project.repository.ServizioRepository;
import com.project.service.ServizioService;




@Service
public class ServizioServiceImpl implements ServizioService{
	
	@Autowired
	ServizioRepository repository;

	public List<Servizio> findAllServices() {
		return repository.findAll();
	}

	@Override
	public List<Servizio> findAllServicesByType(TipoServizio tiposervizio) {
		
		return repository.findAllServizioByTiposervizio(tiposervizio);
	}


	@Override
	public List<Servizio> findOfferedServices(Integer id) {
		
		return repository.trovaServiziOffertiUtente(id);
	}

	@Override
	public List<Servizio> findRequestedServices(Integer id) {
		
		return repository.trovaServiziRichiestiUtente(id);
	}

	@Override
	public void aggiungiServizio(Servizio s) {
		repository.save(s);
		
		
	}

	@Override
	public void rimuoviServizio(Integer id) {
		repository.deleteById(id);
		
	}
	
	

	@Override
	public void aggiornaServizio(Servizio s, Integer id) {
		
		Servizio servizioRecuperato = this.selezionaServizio(id);
		if(servizioRecuperato != null) {
			servizioRecuperato.setNome(s.getNome());
			servizioRecuperato.setDescrizione(s.getDescrizione());
			servizioRecuperato.setImg(s.getImg());
			servizioRecuperato.setTiposervizio(s.getTiposervizio());
			repository.save(servizioRecuperato);
		}else {
			System.out.println("Prodotto non esistente");
		}
		
	}

	@Override
	public Servizio selezionaServizio(Integer id) {
		
		return repository.findById(id).get();
	
	}

	@Override
	public void offri(Integer id_utente, Integer id_servizio) {

		repository.offri(id_utente, id_servizio);
		
	}

	@Override
	public void rimuoviofferta(Integer id_utente, Integer id_servizio) {
		
		repository.rimuoviofferta(id_utente, id_servizio);
		
	}

	@Override
	public void richiedi(Integer id_utente, Integer id_servizio) {
		
		repository.richiedi(id_utente, id_servizio);
		
	}

	@Override
	public void rimuovirichiesta(Integer id_utente, Integer id_servizio) {
		
		repository.rimuovirichiesta(id_utente, id_servizio);
		
	}

	@Override
	public List<Servizio> serviziConPiuRichieste() {
	
		return	repository.serviziPiuRichiesti();
	
	}

	@Override
	public long contatoreServizioPiuRichiesto(Integer id) {

		return repository.countServiziPiuRichiesti(id);
	}

	@Override
	public List<Servizio> serviziConPiuOfferti() {
		return repository.servizipiuOfferti();
	}

	@Override
	public long contatoreServizioPiuOfferto(Integer id) {
		return repository.countServizipiuOfferti(id);
	}

}
