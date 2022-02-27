package com.codingdojo.onetomany.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.onetomany.models.Dojo;
import com.codingdojo.onetomany.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	DojoRepository repository;
	
    public Dojo create(Dojo item) {
        return repository.save(item);
    }	
    
    public List<Dojo> getAll() {
        return repository.findAll();
    }
    
    public Dojo findById (Long id) {
        Optional<Dojo> optionalDojo = repository.findById(id);
        if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }    	 
    }
}
