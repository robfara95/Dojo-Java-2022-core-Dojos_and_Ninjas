package com.codingdojo.onetomany.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.onetomany.models.Dojo;
import com.codingdojo.onetomany.models.Ninja;
import com.codingdojo.onetomany.services.DojoService;
import com.codingdojo.onetomany.services.NinjaService;

@Controller
public class DojoController {
	@Autowired
	DojoService dojoService;
	@Autowired
	NinjaService ninjaService;
	
	@GetMapping("/dojos/new")
	public String add(@ModelAttribute("dojo") Dojo dojo) {
	    return "add_dojo.jsp";
	}	
	
	@PostMapping("/dojos/new")
	public String create(@Valid @ModelAttribute("dojo") Dojo dojo,
	    BindingResult result,
	    RedirectAttributes redirectAttributes)
	{    	
	    if (result.hasErrors()) {
	        	redirectAttributes.addFlashAttribute("message", "Errors please make corrections"); 
	        	return "add_dojo.jsp";
	    }
	        
	    Dojo dojoItem = dojoService.create(dojo);
	    redirectAttributes.addFlashAttribute("message", "Dojo added");
	        
	    return "redirect:/dojos/" + dojoItem.getId();
	 }
	
	@GetMapping("/ninjas/new")
	public String add(@ModelAttribute("ninja") Ninja ninja, Model model) {
		
		model.addAttribute("dojos",dojoService.getAll());
	    return "add_ninja.jsp";
	}	
	
	@PostMapping("/ninjas/new")
	public String create(@Valid @ModelAttribute("ninja") Ninja ninja,
	    BindingResult result,
	    RedirectAttributes redirectAttributes)
	{    	
	    if (result.hasErrors()) {
	        	redirectAttributes.addFlashAttribute("message", "Errors make corrections"); 
	        	return "add_ninja.jsp";
	    }
	        
	    Ninja ninjaItem = ninjaService.create(ninja);
	    redirectAttributes.addFlashAttribute("message", "Ninja added");
	        
	    return "redirect:/dojos/" + ninjaItem.getDojo().getId();
	 }
	
	@GetMapping("/dojos/{dojo_id}")
	public String showDojos(@PathVariable Long dojo_id, Model model){
		model.addAttribute("dojo", dojoService.findById(dojo_id));	 
	    return "showDojo.jsp";
	}
}