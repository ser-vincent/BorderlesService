package com.project.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Servizio;
import com.project.model.Utente;
import com.project.repository.UtenteRepository;
import com.project.service.UtenteService;

@Service
public class UtenteServiceImpl implements UtenteService{

	@Autowired
	UtenteRepository repository;
	@Override
	public Utente login(String email, String password) {
		return repository.findUtenteByEmailAndPassword(email, password);
		
	}

	@Override
	public void register(Utente u) {
         repository.save(u);
		
	}

	@Override
	public Utente findUser(String email) {
		// TODO Auto-generated method stub
		return repository.findUtenteByEmail(email);
	}

	@Override
	public List<Utente> trovaUtentiServizio(Integer id) {
	
		return repository.trovaUtentiServizio(id);
		
	}


	@Override
	public Utente findUserById(Integer id) {
		
		return repository.findById(id).get();
	}

	@Override
public void aggiornaUtente(Utente u, Integer id) {
		
		Utente utenteRecuperato = this.findUserById(id);
		if(utenteRecuperato != null) {
			utenteRecuperato.setNome(u.getNome());
			utenteRecuperato.setCognome(u.getCognome());
			utenteRecuperato.setEmail(u.getEmail());
			utenteRecuperato.setPassword(u.getPassword());
			utenteRecuperato.setCell(u.getCell());
			utenteRecuperato.setImg(u.getImg());
			repository.save(utenteRecuperato);
		}else {
			System.out.println("Prodotto non esistente");
		}
		
	}

	@Override
	public List<Utente> utenteConpiuRichieste() {
		
		return repository.UtentePiuRichiesti();
	}

	@Override
	public long countUtentiRichiesti(Integer id) {
	
		return repository.countUtentePiuRichiesti(id);
	}

	@Override
	public List<Utente> utenteConpiuOfferte() {

		return repository.UtentePiuOfferti();
	}

	@Override
	public long countUtentiOfferte(Integer id) {

		return repository.countUtentePiuOfferti(id);
	}
	

}

