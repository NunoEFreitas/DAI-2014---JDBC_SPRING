/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.controller;

import com.dai.domain.Jogo;
import com.dai.services.JogoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nuno
 */

@Controller
public class JogoController {
    
    @Autowired
    JogoService jogoService;
    
     @RequestMapping("/novoJogo")
	public ModelAndView novoJogo(@ModelAttribute Jogo jogo) {
               
		return new ModelAndView("novoJogo");
	}
        
        @RequestMapping("/insereJogo")
	public String insereJogo(@ModelAttribute Jogo jogo) {
			jogoService.novoJogo(jogo);
		return "redirect:/jogo";
	}
        
        @RequestMapping("/jogo")
	public ModelAndView carregaJogo(@ModelAttribute Jogo jogo) {
			
            return new ModelAndView("jogo");
	}
}
