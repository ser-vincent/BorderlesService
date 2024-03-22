package com.project.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Newsletter;
import com.project.repository.NewsletterRepository;
import com.project.service.NewsletterService;


@Service
public class NewsletterServiceImpl implements NewsletterService {
	
	
	@Autowired
	NewsletterRepository repository;

	@Override
	public void registerNewsletter(Newsletter n) {
		
		repository.save(n);
		
		
	}

}
