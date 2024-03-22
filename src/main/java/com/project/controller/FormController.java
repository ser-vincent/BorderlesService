package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;


import com.project.model.Newsletter;
import com.project.serviceImpl.EmailServiceImpl;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/form")
public class FormController {

	@Autowired
	private EmailServiceImpl emailService;

	@GetMapping("/submitForm")
	public String submitForm(Model m, HttpSession session) {

		
			String emailA = (String) session.getAttribute("emailABCD");
			Newsletter a = (Newsletter) session.getAttribute("newsLetter");

			emailService.sendSimpleMessage(emailA, "Ciao" + a.getNome(),
					"Grazie per esserti registrato alla nostra newsletter per tenerti informati su tutte le nostre novita");
		

		return "redirect:/home";
	}
}

