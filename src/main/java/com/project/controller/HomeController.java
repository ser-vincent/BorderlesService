package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@GetMapping("/home")
	public String home(HttpServletRequest request, HttpSession session) {
		
	

		return"redirect:/services/paginaServizi";
	}
	/*@GetMapping("/home")
	public String home2(HttpServletRequest request, HttpSession session) {
		
	

		return"redirect:/services/serviziPrivati";
	}
	@GetMapping("/home")
	public String home3(HttpServletRequest request, HttpSession session) {
		
	

		return"redirect:/services/serviziBusiness";
	}*/
	
	@PostMapping("/ponte")
	public String ponte() {
		System.out.println("Sono su pnte");
		return "redirect:/home";
	}
	
	@GetMapping("/homepage")
public String homePage(HttpServletRequest request,HttpSession session) {
		

		return"homeIniziale";
	}

	@GetMapping("/teamNoLog")
	public String teamNoLog(HttpServletRequest request,HttpSession session) {
		
		return "teamNoLog";
	}
	
}
