package com.project.service;

import java.util.List;

import com.project.model.Utente;

public interface UtenteService {
	
	public Utente login(String email, String password);
	public void register(Utente u);
	public Utente findUser(String email);
	public List<Utente> trovaUtentiServizio(Integer id);
	public Utente findUserById(Integer id);
	public void aggiornaUtente(Utente u, Integer id);
	public List<Utente> utenteConpiuRichieste();
	public long countUtentiRichiesti(Integer id);
	public List<Utente> utenteConpiuOfferte();
	public long countUtentiOfferte(Integer id);
}
