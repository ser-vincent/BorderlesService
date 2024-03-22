package com.project.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.model.IntegerValueComparator;
import com.project.model.Servizio;
import com.project.model.TipoServizio;
import com.project.model.Utente;
import com.project.service.ServizioService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/services")
public class ServizioController {

	@Autowired
	ServizioService service;

	@GetMapping("/paginaServizi")
	public String servizi(HttpServletRequest request, HttpSession session) {

		List<Servizio> lista = service.findAllServices();
		session.setAttribute("lista", lista);

		return "redirect:/homepage";
	}

	@GetMapping("/acquistaServizi")
	public String acquistaServizi(HttpServletRequest request, HttpSession session) {

		List<Servizio> acquisti = service.findAllServices();
		session.setAttribute("serviziAcquistati", acquisti);

		return "richiediServizio";
	}

	@GetMapping("/serviziPrivati")
	public String serviziPrivati(HttpServletRequest request, HttpSession session) {

		List<Servizio> listaPrivati = service.findAllServicesByType(TipoServizio.PRIVATO);
		session.setAttribute("listaPrivati", listaPrivati);

		return "redirect:/services/serviziBusiness";
	}

	@GetMapping("/serviziBusiness")
	public String serviziBusiness(HttpServletRequest request, HttpSession session) {

		List<Servizio> listaBusiness = service.findAllServicesByType(TipoServizio.BUSINESS);
		session.setAttribute("listaBusiness", listaBusiness);

		return "redirect:/services/paginaServizi";
	}

	@GetMapping("/serviziOfferti")
	public String serviziOfferti(HttpServletRequest request, HttpSession session) {

		Utente u = (Utente) session.getAttribute("utente");
		Integer id = u.getId();
		List<Servizio> serviziofferti = service.findOfferedServices(id);
		session.setAttribute("offerti", serviziofferti);
		return "serviziOfferti";
	}

	@GetMapping("/rimuoviOfferti")
	public String serviziOfferti(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) {
		Utente u = (Utente) session.getAttribute("utente");
		service.rimuoviofferta(u.getId(), id);
		return "redirect:/services/serviziOfferti";
	}

	@GetMapping("/rimuoviPreferito")
	public String rimuoviRichiesti(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) {
		Utente u = (Utente) session.getAttribute("utente");
		service.rimuovirichiesta(u.getId(), id);
		return "redirect:/services/servizio";
	}

	@GetMapping("/preferiti")
	public String serviziRichiesti(HttpServletRequest request, HttpSession session) {

		Utente u = (Utente) session.getAttribute("utente");
		Integer id = u.getId();
		List<Servizio> servizirichiesti = service.findRequestedServices(id);
		session.setAttribute("richiesti", servizirichiesti);
		return "serviziRichiesti";
	}

	@GetMapping("/servizio")
	public String servizio(HttpServletRequest request, HttpSession session) {

		Integer id = (Integer) session.getAttribute("sid");
		Servizio s = service.selezionaServizio(id);
		Utente u = (Utente) session.getAttribute("utente");
		List<Servizio> preferiti = service.findRequestedServices(u.getId());
		session.setAttribute("servizio", s);
		if (preferiti == null) {
			return "servizioNoPreferiti";
		} else {
			session.setAttribute("preferiti", preferiti);
			return "servizio";
		}
	}

	@GetMapping("/serviziUser")
	public String serviziUser(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) {

		List<Servizio> profiloListaServizi = service.findOfferedServices(id);
		session.setAttribute("pls", profiloListaServizi);
		session.setAttribute("iduserprofile", id);
		return "redirect:/user/profiloServizi";

	}

	@GetMapping("/paginaAggiungiServizio")
	public String paginaAggiungiServizio() {
		return "aggiungiServizio";
	}

	@GetMapping("/gestoreServizi")
	public String gestoreServizi(HttpServletRequest request, HttpSession session) {
		List<Servizio> lista = service.findAllServices();
		session.setAttribute("lista", lista);
		return "gestoreServizi";
	}

	@PostMapping("/aggiungiServizio")
	public String aggiungiServizio(HttpServletRequest request, HttpSession session,
			@RequestParam("img") MultipartFile file) throws IOException, SerialException, SQLException {

		byte[] bytes = file.getBytes();
		Blob img = new javax.sql.rowset.serial.SerialBlob(bytes);

		String nome = request.getParameter("nome");
		String descrizione = request.getParameter("descrizione");
		String tiposervizio = request.getParameter("option");
		TipoServizio tipo = TipoServizio.valueOf(tiposervizio);
		Servizio s = new Servizio(nome, descrizione, img, tipo);
		service.aggiungiServizio(s);
		return "redirect:/services/gestoreServizi";
	}

	@GetMapping("/rimuoviServizio")
	public String rimuoviServizio(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) {

		service.rimuoviServizio(id);
		return "redirect:/services/gestoreServizi";
	}

	@GetMapping("/paginaModificaServizio")
	public String paginaModificaServizio(@RequestParam("id") Integer id, HttpServletRequest request,
			HttpSession session, MultipartFile file) {
		Servizio s = service.selezionaServizio(id);
		System.out.println(s.getId());
		session.setAttribute("servizio", s);
		return "modificaServizio";

	}

	@PostMapping("/modificaServizio")
	public String modificaServizio(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session,
			@RequestParam("img") MultipartFile file) throws IOException, SerialException, SQLException {
		String nome = request.getParameter("nome");
		String descrizione = request.getParameter("descrizione");
		byte[] bytes = file.getBytes();
		Blob img = new javax.sql.rowset.serial.SerialBlob(bytes);
		String tiposervizio = request.getParameter("option");
		TipoServizio tipo = TipoServizio.valueOf(tiposervizio);
		Servizio s = new Servizio(nome, descrizione, img, tipo);
		service.aggiornaServizio(s, id);
		return "redirect:/services/gestoreServizi";
	}

	@GetMapping("/display")
	public ResponseEntity<byte[]> displayImage(@RequestParam("id") Integer id, HttpServletRequest request,
			HttpSession session) throws IOException, SQLException {

		Servizio s = service.selezionaServizio(id);
		byte[] imageBytes = null;
		imageBytes = s.getImg().getBytes(1, (int) s.getImg().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("/offriServizio")
	public String offri(HttpServletRequest request, HttpSession session) {

		Utente u = (Utente) session.getAttribute("utente");
		List<Servizio> lista = service.findAllServices();
		List<Servizio> serviziofferti = service.findOfferedServices(u.getId());

		session.setAttribute("lista", lista);
		session.setAttribute("offerti", serviziofferti);
		return "offriServizi";
	}

	@GetMapping("/aggiungiPreferito")
	public String aggiungiPreferito(@RequestParam("id") Integer id, HttpServletRequest request,
			HttpSession session) {

		List<Servizio> preferiti = service.findRequestedServices(id);
		for (Servizio s : preferiti) {
			session.setAttribute("abcd", s);

		}
		session.setAttribute("preferiti", preferiti);
		Utente u = (Utente) session.getAttribute("utente");
		service.richiedi(u.getId(), id);
		Servizio s = service.selezionaServizio(id);
		session.setAttribute("idpref", s.getId());
		return "redirect:/services/servizio";
	}

	@GetMapping("/aggiungiServizioOfferto")
	public String aggiungiServizioOfferto(@RequestParam("id") Integer id, HttpServletRequest request,
			HttpSession session) {

		Utente u = (Utente) session.getAttribute("utente");
		service.offri(u.getId(), id);

		return "redirect:/services/offriServizio";
	}
	//servizi piu richiesti
    @GetMapping("/report")
    public String report(HttpServletRequest request, HttpSession session, Model m) {
        List<Servizio> listaReport = service.serviziConPiuRichieste();
        Map<String, Integer> counts = new TreeMap<>();
        for (Servizio s : listaReport) {
            Integer count = (int) service.contatoreServizioPiuRichiesto(s.getId());
            counts.put(s.getNome(), count);
        }
        IntegerValueComparator comparator = new IntegerValueComparator(counts);
        TreeMap<String, Integer> sortedCounts = new TreeMap<>(comparator);
        sortedCounts.putAll(counts);
        session.setAttribute("listaReport", listaReport);
        session.setAttribute("counts", sortedCounts);
        m.addAttribute("mappa", sortedCounts);
        //--------
        List<Servizio> listaReportOfferti = service.serviziConPiuOfferti();
        Map<String, Integer> mappaServiziOfferti = new TreeMap<>();

        for(Servizio s :listaReportOfferti) {

            Integer count = (int) service.contatoreServizioPiuOfferto(s.getId());
            mappaServiziOfferti.put(s.getNome(), count);
        }
        IntegerValueComparator comparator2 = new IntegerValueComparator(mappaServiziOfferti);
        TreeMap<String, Integer> mappaServiziOffertiOrd = new TreeMap<>(comparator2);
        mappaServiziOffertiOrd.putAll(mappaServiziOfferti);
        session.setAttribute("listaReportOfferti", listaReportOfferti);
        session.setAttribute("mappaServiziOfferti", mappaServiziOffertiOrd);
        m.addAttribute("mappaServiziOffertiOrd",mappaServiziOffertiOrd);


        return "report";
    }
	
	
	
	
	
	
	
	
	
	
}
