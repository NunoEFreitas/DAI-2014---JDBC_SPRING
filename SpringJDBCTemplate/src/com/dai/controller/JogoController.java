/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.controller;

import com.dai.domain.Jogo;
import com.dai.domain.SelecaoJogo;
import com.dai.domain.Utilizador;
import com.dai.services.JogoService;
import com.dai.services.SelecaoJogoService;
import com.dai.services.UtilizadorService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Nuno
 */

@Controller
public class JogoController {
    
    @Autowired
    JogoService jogoService;
    
    @Autowired
    UtilizadorService utilizadorService;
    
     @Autowired
     SelecaoJogoService slService;
    
     @RequestMapping("/novoJogo")
	public ModelAndView novoJogo(@ModelAttribute Jogo jogo) {
               
		return new ModelAndView("novoJogo");
	}
        
        @RequestMapping("/insereJogo")
	public ModelAndView insereJogo(@ModelAttribute Jogo jogo) {
                    jogoService.novoJogo(jogo);
        
		return new ModelAndView("main" );
	}
        
                @RequestMapping("/criarVideo")
	public ModelAndView criarVideo(@ModelAttribute Jogo jogo) {
          
        
		return new ModelAndView("FileUploadForm");
	}
        
        @RequestMapping("/jogoSelecionados/{idJogo}")
	public ModelAndView selecionaJogadores(@PathVariable("idJogo") Integer jogo) {
                    List<Integer> idjogo = new ArrayList();
                    idjogo.add(jogo);
                    List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
                    Map<String, List> map = new HashMap<String, List>();
                    map.put("jogo", idjogo);
                    map.put("utilizador", lutilizador);

                        
		return new ModelAndView("jogadoresSelecionados","map",map );
	}
       
        @RequestMapping("/jogoSelecionados/jogadorSelecionado/{idJogo}/{idUtilizador}")
	public String selecionaJogador(@PathVariable("idJogo") Integer jogo, @PathVariable("idUtilizador") Integer ut) {
                   
                SelecaoJogo sl = new SelecaoJogo();    
                sl.setIdJogo(jogo);
                sl.setIdUtilizador(ut);
                slService.adicionaSL(sl);
		return "redirect:/jogadoresSelecionados/"+jogo;
	}
       
        
        @RequestMapping("/jogo/{idJogo}")
	public ModelAndView carregaJogo(@PathVariable("idJogo") Integer jogo) {
			
            return new ModelAndView("jogo");
	}
        
        @RequestMapping("/jogo")
	public ModelAndView carregaCampo() {
			
            return new ModelAndView("jogo");
	}
        
        @RequestMapping("/listaJogos")
	public ModelAndView listaJogos() {
		List<Jogo> lJogos = jogoService.listaJogos();
		return new ModelAndView("listaJogos", "ljogos", lJogos);
	}
        /*
        @RequestMapping(value="/insere", method= RequestMethod.GET)
        public void insere(@RequestParam(value = "idUtilizador", required = true) Integer idUtilizador, @RequestParam(value = "idJogo", required = true) Integer idJogo, HttpServletRequest request, HttpServletResponse response) throws Exception {  
		SelecaoJogo sl = new SelecaoJogo();
                sl.setIdUtilizador(idUtilizador);
                sl.setIdJogo(idJogo);
                slService.adicionaSL(sl);
                
	}
        */
        
@RequestMapping(value = "/helloajax", method = RequestMethod.GET)  
        public @ResponseBody  
        String insere(@RequestParam("jogador") String jogador,
        @RequestParam("clube") String clube)  {  
            String mensagem=jogador;
            return mensagem;
    }  
}  
        
