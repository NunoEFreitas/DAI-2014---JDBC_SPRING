/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.controller;

import com.dai.domain.Competicao;
import com.dai.domain.EquipaAdversaria;
import com.dai.domain.Estatistica;
import com.dai.domain.JogadorEquipaAdversaria;
import com.dai.domain.Jogo;
import com.dai.domain.SelecaoJEA;
import com.dai.domain.SelecaoJogo;
import com.dai.domain.Utilizador;
import com.dai.services.CompeticaoService;
import com.dai.services.EquipaAdversariaService;
import com.dai.services.EstatisticaService;
import com.dai.services.JogadorEquipaAdversariaService;
import com.dai.services.JogoService;
import com.dai.services.SelecaoJEAService;
import com.dai.services.SelecaoJogoService;
import com.dai.services.UtilizadorService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
    CompeticaoService competicaoService;
    
    @Autowired
    EquipaAdversariaService eaService;
    
    @Autowired
    UtilizadorService utilizadorService;
    
     @Autowired
     SelecaoJogoService slService;
     
     @Autowired
     JogadorEquipaAdversariaService jeaService;
     
     @Autowired
     SelecaoJEAService sjeaService;
     
     @Autowired
     EstatisticaService eService;
    
     @RequestMapping("/criarJogo")
	public ModelAndView novoJogo(@ModelAttribute Jogo jogo, HttpServletRequest request) {
                
            HttpSession session = request.getSession();
                int escalao = ((int) session.getAttribute("escalao"));
            List<EquipaAdversaria> lea = eaService.listaEAporEscalao(escalao);
            
            List<Competicao> lc = competicaoService.listaCompeticaoPorEscalao(escalao);
            
                    Map<String, List> map = new HashMap<String, List>();
                    map.put("lea", lea);
                    map.put("lc", lc);
                
               
		return new ModelAndView("criarJogo", "map", map);
	}
        
        @RequestMapping("/inserirJogo")
	public String insereJogo(@ModelAttribute Jogo jogo) {
                    jogoService.novoJogo(jogo);
        
		return "redirect:/criarJogo";
	}
        
        @RequestMapping("/criarVideo")
	public ModelAndView criarVideo(@ModelAttribute Jogo jogo) {
          
        
		return new ModelAndView("FileUploadForm");
	}
        
         @RequestMapping("/estatisticas")
	public ModelAndView estatisticas(@ModelAttribute Jogo jogo) {
          
        
		return new ModelAndView("estatisticas");
	}
        
        @RequestMapping("/jogoSelecionados/{idJogo}")
	public ModelAndView selecionaJogadores(@PathVariable("idJogo") Integer jogo, HttpServletRequest request) {
                    List<Integer> idjogo = new ArrayList();
                    idjogo.add(jogo);
                    HttpSession session = request.getSession();
                    int escalao = ((int) session.getAttribute("escalao"));
                    List<Utilizador> lutilizador = utilizadorService.listarUTparaJogo(jogo, escalao);
                    List<Utilizador> lEscolhas = utilizadorService.listarUTselecionadosJogo(jogo, escalao);
                    Map<String, List> map = new HashMap<String, List>();        
                    map.put("jogo", idjogo);
                    map.put("utilizador", lutilizador);
                    map.put("escolhas", lEscolhas);

                        
		return new ModelAndView("jogoSelecionados","map",map );
	}
       
        @RequestMapping("/jogoSelecionados/jogadorSelecionado/{idJogo}/{idUtilizador}")
	public String selecionaJogador(@PathVariable("idJogo") Integer jogo, @PathVariable("idUtilizador") Integer ut) {
                String nome = utilizadorService.getNome(ut);
                SelecaoJogo sl = new SelecaoJogo();    
                sl.setIdJogo(jogo);
                sl.setIdUtilizador(ut);
                sl.setNome(nome);
                slService.adicionaSL(sl);
		return "redirect:/jogoSelecionados/"+jogo;
	}
        
        @RequestMapping("jogoSelecionados/jogadorDesSelecionado/{idJogo}/{idUtilizador}")
	public String desSelecionaJogador(@PathVariable("idJogo") Integer jogo, @PathVariable("idUtilizador") Integer ut) {
                  
                slService.apagaSL(ut, jogo);
		return "redirect:/jogoSelecionados/"+jogo;
	}
        
        @RequestMapping("/jogoSelecionadosEA/{idEquipaAdversaria}/jeaSelecionado/{idJogo}/{IdJogador}")
	public String selecionaJEA(@PathVariable("idEquipaAdversaria") Integer ea, @PathVariable("idJogo") Integer jogo, @PathVariable("IdJogador") Integer jea) {
                SelecaoJEA sjea = new SelecaoJEA();
                sjea.setIdJEA(jea);
                sjea.setIdJogo(jogo);
                String nome = jeaService.getNome(jea);
                sjea.setNome(nome);
                sjeaService.adicionaSJEA(sjea);
		return "redirect:/jogoSelecionadosEA/"+ea+"/"+jogo;
	}
        
        @RequestMapping("/jogoSelecionadosEA/{idEquipaAdversaria}/jeaDesSelecionado/{idJogo}/{IdJogador}")
	public String desSelecionaJEA(@PathVariable("idEquipaAdversaria") Integer ea, @PathVariable("idJogo") Integer jogo, @PathVariable("IdJogador") Integer jea) {
                sjeaService.apagaSJEA(jea, jogo);
		return "redirect:/jogoSelecionadosEA/"+ea+"/"+jogo;
	}
       
        
        @RequestMapping("/inserirDados/{idJogo}")
	public ModelAndView carregaJogo(@ModelAttribute Jogo jogo,@PathVariable("idJogo") Integer idJogo) {
            
            List<Integer> idjogo = new ArrayList();
            idjogo.add(idJogo);
            List<SelecaoJEA> ljea = sjeaService.listaSJEA(idJogo);
            List<SelecaoJogo> lut = slService.listaSL(idJogo);
            Map<String, List> map = new HashMap<String, List>();        
            map.put("jogo", idjogo);
            map.put("ljea", ljea);
            map.put("lut", lut);
            
			
            return new ModelAndView("campo","map",map);
	}
        
        
        @RequestMapping("/listarJogosT")
	public ModelAndView listaJogosT(HttpServletRequest request) {
            HttpSession session = request.getSession();
                    int escalao = ((int) session.getAttribute("escalao"));
		List<Jogo> lJogos = jogoService.listaJogosPendentesEscalao(escalao);
		return new ModelAndView("listarJogosT", "ljogos", lJogos);
	}
        
        @RequestMapping("/listarJogosTA")
	public ModelAndView listaJogosTA(HttpServletRequest request) {
            HttpSession session = request.getSession();
                    int escalao = ((int) session.getAttribute("escalao"));
		List<Jogo> lJogos = jogoService.listaJogosPendentesEscalao(escalao);
		return new ModelAndView("listarJogosTA", "ljogos", lJogos);
	}
        
        @RequestMapping("/listarJogosJ")
	public ModelAndView listaJogosJ(HttpServletRequest request) {
            HttpSession session = request.getSession();
                    int utilizador = ((int) session.getAttribute("user"));
		List<Jogo> lJogos = jogoService.listaJogosSelecionado(utilizador);
		return new ModelAndView("listarJogosJ", "ljogos", lJogos);
	}
        
        @RequestMapping("/listarJogosA")
	public ModelAndView listaJogosA() {
		List<Jogo> lJogos = jogoService.listaJogosPendentes();
		return new ModelAndView("listarJogosA", "ljogos", lJogos);
	}
        
        @RequestMapping("editarJogo/{idJogo}")
	public ModelAndView editarJogo(@ModelAttribute Jogo jogo, @PathVariable("idJogo") Integer idJogo, HttpServletRequest request) {
               
        
                List<Jogo> lj  = jogoService.getJogo(idJogo);
                HttpSession session = request.getSession();
                int escalao = ((int) session.getAttribute("escalao"));
                List<Competicao> lc = competicaoService.listaCompeticaoPorEscalao(escalao);
                List<EquipaAdversaria> lea = eaService.listaEAporEscalao(escalao);
                
                Map<String, List> map = new HashMap<String, List>();        
                    map.put("lj", lj);
                    map.put("competicao", lc);
                    map.put("ea", lea);
                
		return new ModelAndView("editarJogo","map",map);
	}
        
        @RequestMapping("/updateJogo")
	public String updateJogo(@ModelAttribute Jogo jogo) {
		jogoService.alteraJogo(jogo);
		return "redirect:/listarJogosT";
	}
        
        @RequestMapping("/jogoSelecionadosEA/{idEquipaAdversaria}/{idJogo}")
	public ModelAndView selecionaJogadoresEA(@PathVariable("idEquipaAdversaria") Integer ea, @PathVariable("idJogo") Integer jogo) {
                    List<Integer> idjogo = new ArrayList();
                    idjogo.add(jogo);
                    List<JogadorEquipaAdversaria> ljea = jeaService.listarJEAparaJogo(jogo, ea);
                    List<JogadorEquipaAdversaria> lEscolhas = jeaService.listarJEAselecionadosJogo(jogo, ea);
                    Map<String, List> map = new HashMap<String, List>();        
                    map.put("jogo", idjogo);
                    map.put("ljea", ljea);
                    map.put("escolhas", lEscolhas);

                        
		return new ModelAndView("jogoSelecionadosEA","map",map );
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
        /*
        @RequestMapping(value = "/helloajax", method = RequestMethod.GET)  
        public @ResponseBody  
        String insere(@RequestParam("jogador") Integer jogador,
        @RequestParam("clube") Integer clube)  {  
            String mensagem="llll";
            return mensagem;
<<<<<<< HEAD
    }  
        */
        
        @RequestMapping(value = "/helloajax", method = RequestMethod.GET)  
        public @ResponseBody  
        String insere(@RequestParam("rotacaoP") String rotacaoP, @RequestParam("jogadorP") Integer jogadorP,  
                @RequestParam("posicaoP") Integer posicaoP,  @RequestParam("rotacaoEA") String rotacaoEA,  
                @RequestParam("jogadorEA") Integer jogadorEA,   @RequestParam("posicaoEA") Integer posicaoEA){  
            String mensagem = "FCP";
            Estatistica est = new Estatistica();
            est.setDestino(posicaoEA);
            est.setIdJea(jogadorEA);
            est.setRotacaoEA(rotacaoEA);
            est.setIdUtilizador(jogadorP);
            est.setRotacaoPropria(rotacaoP);
            est.setOrigem(posicaoP);
            est.setIdJogo(1);
            est.setIdTipoEstatistica(6);
            eService.adicionaEstatistica(est);
            return mensagem;
    } 
       

    
        
         @RequestMapping("/dadosGrafico")
	public ModelAndView dadosGrafico() {
               
		return new ModelAndView("dadosGrafico");
	}
  @RequestMapping("/dadosTabela")
	public ModelAndView dadosTabela() {
               
		return new ModelAndView("dadosTabela");
	}
         @RequestMapping("/gerarDadosTabela")
	public ModelAndView gerarDadosTabela() {
               
		return new ModelAndView("gerarDadosTabela");
	}
        @RequestMapping("/gerarDadosGrafico")
	public ModelAndView gerarDadosGrafico() {
               
		return new ModelAndView("gerarDadosGrafico");
	}

}  
        
