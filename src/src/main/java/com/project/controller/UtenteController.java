package com.project.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.model.IntegerValueComparator;
import com.project.model.Servizio;
import com.project.model.TipoUtente;
import com.project.model.Utente;
import com.project.service.UtenteService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UtenteController {
	
	@Autowired
	UtenteService service;

	@GetMapping("/login")
	public String login( HttpSession session) {
	    Utente u = (Utente)session.getAttribute("utente");
	    String tipo = u.getTipoutente().toString();
	    session.setAttribute("tipo", tipo);
	    System.out.println(u.getEmail());

	    return "home"; // Reindirizza alla pagina home se l'autenticazione è riuscita
	}
	
	
	
		

	@PostMapping("/auth")
    public ResponseEntity<String> auth(@RequestBody Utente request, HttpSession session) {
        // Controlla l'autenticazione
		
        Utente autentificated = service.login(request.getEmail(), request.getPassword());

        if (autentificated != null) {
        	session.setAttribute("utente", autentificated);
        	 System.out.println(autentificated + " Andata");
            return ResponseEntity.ok("Successo");
           
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password");
        }
    }
	
	
	@PostMapping("/register")
	public String register(HttpServletRequest request, HttpSession session) {
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		String psw = request.getParameter("password");
		String tipo = request.getParameter("tipoAcc");
		TipoUtente tipoUtente = TipoUtente.valueOf(tipo);
		String cell = request.getParameter("telefono");
		Utente u = new Utente(nome, cognome, email, psw, cell, tipoUtente);
		service.register(u);
		session.setAttribute("utente", u);
		session.setAttribute("tipo", tipo);
		return "/home";
		/*if (service.findUser(email) != null) {
			// C'è un utente con la stessa email
			return "test";
		} else {
			service.register(u);
			session.setAttribute("utente", u);
			if (u.getTipoutente().equals(TipoUtente.PRIVATO)) {
				return "/home";
			} else if (u.getTipoutente().equals(TipoUtente.BUSINESS)) {
				return "/home";
			}
		}
		return "redirect:/home";*/
	}
	
	@GetMapping("/richiedi")
	public String richiedi(HttpServletRequest request) {
		
		
		return "home";
	}
	
	@GetMapping("/recuperoUtenti")
	public String richiedi(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) {
		List<Utente> utentiservizioNoImage = new ArrayList<>();
		List<Utente> utentiservizioWithImage = new ArrayList<>();
		
		
		List<Utente> utentiservizio = service.trovaUtentiServizio(id);
		for(Utente u : utentiservizio) {
			if(u.getImg()==null) {
				System.out.println(u.getNome());
				utentiservizioNoImage.add(u);
			} else {
				utentiservizioWithImage.add(u);
				System.out.println(u.getNome());
			}
		}
		session.setAttribute("sid", id);
		session.setAttribute("utentiNoImage", utentiservizioNoImage);
		session.setAttribute("utentiWithImage", utentiservizioWithImage);
		
		return "redirect:/services/servizio";
	}
	
	@GetMapping("/displayProfile")
    public ResponseEntity<byte[]> displayImage(@RequestParam("id") Integer id, HttpServletRequest request, HttpSession session) throws IOException, SQLException
    {
    	
        Utente u = service.findUserById(id);
        byte [] imageBytes = null;
        imageBytes = u.getImg().getBytes(1,(int) u.getImg().length());
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
        
    }
    
    @PostMapping("/uploadProfile")
    public String uploadProfile(HttpServletRequest request, HttpSession session, @RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException {
    	System.out.println(111);
    	Utente u = (Utente) session.getAttribute("utente");
    	byte[] bytes = file.getBytes();
        Blob img = new javax.sql.rowset.serial.SerialBlob(bytes);
    	u.setImg(img);
    	service.aggiornaUtente(u, u.getId());
    	return"redirect:/user/profilo";
    }
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}
	@GetMapping("/profilo")
	public String profiloUtente(HttpServletRequest request, HttpSession session) {
		Utente u = (Utente)session.getAttribute("utente");
		if(u.getImg() == null) {
		return "profilo";
	}else {
		return "profiloWithImage";
	}
}
	
	@GetMapping("/ritornaHome")
	public String ritornaHome() {
		return "home";
	}
	
	@GetMapping("/about")
	public String about() {
		return "about";
	}
	
	@GetMapping("/aboutPage")
	public String aboutPage() {
		return "aboutPage";
	}
	
	@GetMapping("/team")
	public String team() {
		return "team";
	}
	
	@GetMapping("/profiloServizi")
	public String profiloServizi(HttpServletRequest request, HttpSession session) {
		
		Integer id = (Integer)(session.getAttribute("iduserprofile"));
		Utente u = service.findUserById(id);
		session.setAttribute("ups", u);
		
		if(u.getImg() == null) {
			return"profilouserNoimg";
		} else {
			return"profilouser";
		}
	}
	
	
	@GetMapping("/reportistica")
    public String reporUtente(HttpSession session, Model m) {

        //UTENTI CON PIU RICHIESTE
        List<Utente> listaUtentiRichieste = service.utenteConpiuRichieste();
        Map<String, Integer> mappaUrichieste = new TreeMap<>();
        for (Utente u: listaUtentiRichieste) {
            Integer count = (int) service.countUtentiRichiesti(u.getId());
            mappaUrichieste.put(u.getNome(), count);
        }
        IntegerValueComparator comparator = new IntegerValueComparator(mappaUrichieste);
        TreeMap<String, Integer> mappaUrichiesteOrdinata = new TreeMap<>(comparator);
        mappaUrichiesteOrdinata.putAll(mappaUrichieste);
        session.setAttribute("mappaUrichieste", mappaUrichieste);
        session.setAttribute("mappaUrichiesteOrdinataSession", mappaUrichiesteOrdinata );
        m.addAttribute("mappaUrichiesteOrdinata", mappaUrichiesteOrdinata );

        //UTENTI CHE OFFRONO PIU SERVIZI
        List<Utente> listaUtentiOffrono = service.utenteConpiuOfferte();
        Map<String, Integer> mappaUoffrono = new TreeMap<>();
        for (Utente u: listaUtentiOffrono) {
            Integer count = (int) service.countUtentiOfferte(u.getId());
            mappaUoffrono.put(u.getNome(), count);
        }
        IntegerValueComparator comparator2 = new IntegerValueComparator(mappaUoffrono);
        TreeMap<String, Integer> mappaUoffronoOrdinata = new TreeMap<>(comparator2);
        mappaUoffronoOrdinata.putAll(mappaUoffrono);
        session.setAttribute("mappaUoffrono", mappaUoffrono);
        session.setAttribute("mappaUoffronoOrdinataSession", mappaUoffronoOrdinata );
        m.addAttribute("mappaUoffronoOrdinata", mappaUoffronoOrdinata );


        return "redirect:/services/report";

    }
		
		
	@PostMapping("/editProfile")
	public String editProfile(HttpServletRequest request, HttpSession session) {
		Utente u = (Utente)session.getAttribute("utente");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		String psw = request.getParameter("psw");
		String cell = request.getParameter("cell");
		Blob img = u.getImg();
		Utente uEdit = new Utente(u.getId(),nome, cognome, email, psw, cell, u.getTipoutente(), img);
		service.aggiornaUtente(uEdit, u.getId());
		session.setAttribute("utente", uEdit);
		if(u.getImg() == null) {
		return "profilo";
	}else {
		return "profiloWithImage";
	      }
	}	
	
	
	
}

