package com.codingdojo.onetomany.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.onetomany.models.Ninja;
import com.codingdojo.onetomany.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	NinjaRepository repository;	
	
    public Ninja create(Ninja item) {
        return repository.save(item);
    }	

}
