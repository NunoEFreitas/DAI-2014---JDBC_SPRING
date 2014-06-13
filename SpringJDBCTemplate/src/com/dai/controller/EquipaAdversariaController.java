/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.controller;

import com.dai.domain.EquipaAdversaria;
import com.dai.domain.Escalao;
import com.dai.domain.JogadorEquipaAdversaria;
import com.dai.services.EquipaAdversariaService;
import com.dai.services.EscalaoService;
import com.dai.services.JogadorEquipaAdversariaService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nuno
 */


@Controller
public class EquipaAdversariaController {
    
      @Autowired
      EquipaAdversariaService easervice;
     
      @Autowired
      EscalaoService eservice;
      
      @Autowired
      JogadorEquipaAdversariaService jeaservice;
      
    
    @RequestMapping("/criarEquipaAdversaria")
	public ModelAndView criarEA(@ModelAttribute EquipaAdversaria equipaAdversaria) {
               
            List<Escalao> li = eservice.listarEscalao();
     
                Map<String, List> map = new HashMap<String, List>();
                map.put("li", li);
            
		return new ModelAndView("criarEquipaAdversaria", "map",map);
	}
        
        @RequestMapping("/inserirEA")
	public String inserirEA(@ModelAttribute EquipaAdversaria ea) {
                easervice.adicionaEA(ea);
        
		return "redirect:/criarEquipaAdversaria";
	}
        
        @RequestMapping("/listarEquipasAdversarias")
	public ModelAndView listarEA(@ModelAttribute EquipaAdversaria equipaAdversaria) {
               
            List<EquipaAdversaria> li = easervice.listaEA();
            
		return new ModelAndView("listarEquipasAdversarias", "li",li);
	}
        
        @RequestMapping("/criarJogadorEquipaAdversaria")
	public ModelAndView criarJEA(@ModelAttribute JogadorEquipaAdversaria jogadorEquipaAdversaria) {
               
               List<EquipaAdversaria> lea = easervice.listaEA();
            
		return new ModelAndView("criarJogadorEquipaAdversaria", "lea",lea);
	}
        
        @RequestMapping("/inserirJEA")
	public String inserirJEA(@ModelAttribute JogadorEquipaAdversaria jogadorEquipaAdversaria) {
               
               jeaservice.adicionaJEA(jogadorEquipaAdversaria);
            
		return "redirect:/criarJogadorEquipaAdversaria" ;
	}
        
        @RequestMapping("/listarJogadoresEquipaAdversaria")
	public ModelAndView listarEA(@ModelAttribute JogadorEquipaAdversaria jea) {
               
            List<JogadorEquipaAdversaria> li = jeaservice.listaJEA();
            
		return new ModelAndView("listarJogadoresEquipaAdversaria", "li",li);
	}
        
        @RequestMapping("/listarJogadoresEquipaAdversaria/{idEquipa}")
	public ModelAndView listarEA(@ModelAttribute JogadorEquipaAdversaria jea, @PathVariable("idEquipa") Integer equipa) {
               
            List<JogadorEquipaAdversaria> li = jeaservice.listaJEAporEquipa(equipa);
            
		return new ModelAndView("listarJogadoresEquipaAdversaria", "li",li);
	}
}
