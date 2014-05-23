/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.controller;

import com.dai.domain.Pagamento;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import com.dai.services.EscalaoService;
import com.dai.services.PagamentoService;
import com.dai.services.PerfilService;
import com.dai.services.UtilizadorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Samuel Costa
 */

@Controller
public class PagamentoController {
    
	@Autowired
	UtilizadorService utilizadorService;
        
        @Autowired
        PerfilService perfilService;
        
        @Autowired
        EscalaoService escalaoService;
         
        @Autowired
        PagamentoService pagamentoService;
        
        
        
      
	
        
        @RequestMapping("/pagamento")
	public ModelAndView listaPagamento() {
		List<Pagamento> lperfil = pagamentoService.listarPagamento();
		return new ModelAndView("pagamento", "perfilList", lperfil);
	}
        
          @RequestMapping("/listaPagamento")
	public ModelAndView listaPagemnto() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("listaPagamento", "utilizadorList", lutilizador);
	}
        
         @RequestMapping("/registarpagamento")
	public String inserePagamento(@ModelAttribute Pagamento pagamento) {
		if (pagamento != null)
			pagamentoService.inserirPagamento(pagamento);
		return "redirect:/listaPerfil";
	}
}
