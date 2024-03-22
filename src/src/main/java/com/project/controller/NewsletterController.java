package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Newsletter;
import com.project.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/newsletter")
public class NewsletterController {

	@Autowired
	NewsletterService service;
	
	
	@PostMapping("/register")
	public String register(HttpServletRequest request, HttpSession session, Model m) {
		
		String nome = request.getParameter("user-name");
		String telefono = request.getParameter("user-tel");
		String email = request.getParameter("user-email");
		
		Newsletter n = new Newsletter(nome,telefono,email);
		
		service.registerNewsletter(n);
	
		session.setAttribute("emailABCD", email);
		session.setAttribute("newsLetter", n);
		
	
		
		return "redirect:/form/submitForm";
	}
}

