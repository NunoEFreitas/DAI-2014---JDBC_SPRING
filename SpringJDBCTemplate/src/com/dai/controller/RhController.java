/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.controller;

import com.dai.domain.Rh;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import com.dai.services.EscalaoService;
import com.dai.services.RhService;
import com.dai.services.PerfilService;
import com.dai.services.UtilizadorService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Samuel Costa
 */

@Controller
public class RhController {
    
	@Autowired
	UtilizadorService utilizadorService;
        
        @Autowired
        PerfilService perfilService;
        
        @Autowired
        EscalaoService escalaoService;
         
        @Autowired
        RhService pagamentoService;
        
        
        
      
	
        
//        @RequestMapping("/pagamento")
//	public ModelAndView listaPagamento() {
//		List<Rh> lperfil = pagamentoService.listarPagamento();
//		return new ModelAndView("pagamento", "perfilList", lperfil);
//	}
        
          @RequestMapping("/listaUtilizadorRh")
	public ModelAndView listaPagemnto() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("listaPagamento", "utilizadorList", lutilizador);
	}
        
         @RequestMapping("/registarpagamento")
	public String inserePagamento(@ModelAttribute Rh pagamento) {
		if (pagamento != null)
			pagamentoService.inserirPagamento(pagamento);
		return "redirect:/listaPerfil";
	}
         
         
         
        @RequestMapping("/pagamento/{idutilizador}")
	public ModelAndView registarPagamento(@ModelAttribute Rh rh,@PathVariable("idutilizador") Integer utilizador) {
         
		List<Integer> lutilizador = new ArrayList();
                lutilizador.add(utilizador);
                Map<String,List> map = new HashMap();
                map.put("utilizador", lutilizador);
		return new ModelAndView("pagamento","map", map);
		
                        
	}
         
         
         
}

