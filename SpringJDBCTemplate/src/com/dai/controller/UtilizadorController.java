
package com.dai.controller;

import com.dai.domain.Competicao;
import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import com.dai.services.CompeticaoService;
import com.dai.services.EscalaoService;
import com.dai.services.PerfilService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.dai.services.UtilizadorService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UtilizadorController {

	@Autowired
	UtilizadorService utilizadorService;
        
        @Autowired
        PerfilService perfilService;
        
        @Autowired
        EscalaoService escalaoService;
        
        @Autowired
        CompeticaoService competicaoService;
        

        
        // futuramente alterar o redirect para uma pagina de confirmacao no caso de ter sido
        // inserido com sucesso ou no caso de insucesso com o erro correspondente
        @RequestMapping("/novoperfil")
	public String inserePerfil(@ModelAttribute Perfil perfil) {
		if (perfil != null)
			perfilService.inserirPerfil(perfil);
		return "redirect:/listaPerfil";
	}
         
         @RequestMapping("/apagarPerfil")
	public String apagarPerfil(@RequestParam Integer id) {
               perfilService.apagarPerfil(id);
		return "redirect:/listaPerfil";
	}
         @RequestMapping("/activaUtilizador")
	public String activaUtilizador(@RequestParam Integer id) {
               utilizadorService.activaUtilizador(id);
		return "redirect:/alterarDados";
	}
        @RequestMapping("/desactivaUtilizador")
	public String desactivaUtilizador(@RequestParam Integer id) {
               utilizadorService.desactivaUtilizador(id);
		return "redirect:/alterarDados";
	}
        @RequestMapping("/listaPerfil")
	public ModelAndView listaPerfil() {
		List<Perfil> lperfil = perfilService.listarPerfil();
		return new ModelAndView("listaPerfil", "perfilList", lperfil);
	}
        
        
        
        @RequestMapping("/main")
	public ModelAndView main() {
               
		return new ModelAndView("main");
	}

        
        @RequestMapping("/registarUtilizador")
	public ModelAndView registaUtilizador(@ModelAttribute Utilizador utilizador) {
                
                List<Perfil> lp = perfilService.listarPerfil();
                List<Escalao> li = escalaoService.listarEscalao();
     
                Map<String, List> map = new HashMap<String, List>();
                map.put("lp",lp);
                map.put("li",li);
		return new ModelAndView("registarUtilizador", "map", map);
	}
        
        @RequestMapping("/insereutilizador")
	public String insereUtilizador(@ModelAttribute Utilizador utilizador) {
		if (utilizador != null)
			utilizadorService.inserirUtilizador(utilizador);
		return "redirect:/registarUtilizador";
	}
        
        @RequestMapping("/listarUtilizadores")
	public ModelAndView listaUtilizador() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("listarUtilizadores", "utilizadorList", lutilizador);
	}
         @RequestMapping("/alterarDados")
	public ModelAndView lista() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("alterarDados", "utilizadorList", lutilizador);
	}
        
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam Integer id) {
		utilizadorService.apagarUtilizador(id);
		return "redirect:/alterarDados";
	}
        
        @RequestMapping("/update")
	public String updateUser(@ModelAttribute Utilizador user) {
		utilizadorService.updateUtilizador(user);
		return "redirect:/alterarDados";

	}
        
           @RequestMapping("/edit")
	public ModelAndView editUtilizador(@RequestParam Integer id,
			@ModelAttribute Utilizador user) {

		user = utilizadorService.getUtilizador(id);

		List<String> Tipo_de_utilizador = new ArrayList<String>();
		Tipo_de_utilizador.add("Treinador");
		Tipo_de_utilizador.add("Treinador-Adjunto");
                Tipo_de_utilizador.add("Atleta");
            
                
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("tdu",Tipo_de_utilizador);
                map.put("user", user);
		return new ModelAndView("edit", "map", map);

	}
 
        
        @RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
        
        @RequestMapping(value = "/login", method = RequestMethod.POST)
        public ModelAndView login(@RequestParam("username") Integer user, @RequestParam("password") String password, ModelMap model, HttpServletRequest request, HttpServletResponse response) {
        String resultado;
        Utilizador ut = utilizadorService.getUtilizador(user);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setAttribute("perfil", ut.getIdPerfil());
        session.setAttribute("escalao", ut.getIdEscalao());

        if (ut.getPassword().equals(password)) {
            if (ut.getIdPerfil() == 1) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("atleta", "resultado", resultado);

            }
            if (ut.getIdPerfil() == 2) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("treinador", "resultado", resultado);
            }
            if (ut.getIdPerfil() == 3) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("treinadorAdjunto", "resultado", resultado);

            }
            if (ut.getIdPerfil() == 4) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("olheiro", "resultado", resultado);

            }
            if (ut.getIdPerfil() == 5) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("analistas", "resultado", resultado);
            }
            if (ut.getIdPerfil() == 6) {
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("seccionista", "resultado", resultado);

            }


        } else {
            resultado = "Password Errada";
            return new ModelAndView("login");
        }
        return null;
    }
         
               
         
       @RequestMapping("/estadoUtilizadores")
	public ModelAndView estadoUtilizadores() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("estadoUtilizadores", "utilizadorList", lutilizador);
	}
                
         @RequestMapping("/criarCompeticao")
	public ModelAndView criarCompeticoes(@ModelAttribute Competicao competicao) {
            
                List<Escalao> li = escalaoService.listarEscalao();
     
                Map<String, List> map = new HashMap<String, List>();
                map.put("li",li);

		return new ModelAndView("criarCompeticao","map",map );
	}    
        
        @RequestMapping("/inserirCompeticao")
	public String inserirCompeticao(@ModelAttribute Competicao competicao) {
            
               competicaoService.adicionaCompeticao(competicao);

		return "redirect:/criarCompeticao";
	}
        
         
    
       @RequestMapping("/seccionista")
	public ModelAndView seccionista() {
		return new ModelAndView("seccionista");
	}  
       
        @RequestMapping("/treinador")
	public ModelAndView treinador() {
		return new ModelAndView("treinador");
	}  
         @RequestMapping("/treinadorAdjunto")
	public ModelAndView treinadorAdjunto() {
		return new ModelAndView("treinadorAdjunto");
	}  
         
          @RequestMapping("/olheiros")
	public ModelAndView olheiros() {
		return new ModelAndView("olheiros");
	}  
          
            @RequestMapping("/atleta")
	public ModelAndView atleta() {
		return new ModelAndView("atleta");
	}  
               @RequestMapping("/analistas")
	public ModelAndView analistas() {
		return new ModelAndView("analistas");
	} 
        
        @RequestMapping("/listarCompeticoes")
	public ModelAndView listarCompeticao(@ModelAttribute Competicao competicao) {
            
                List<Competicao> li = competicaoService.listaCompeticao();

		return new ModelAndView("listarCompeticoes","li",li);
	}
        
        @RequestMapping("/criarEscalao")
	public ModelAndView criarEscalao(Escalao escalao) {
		return new ModelAndView("criarEscalao");
	} 
        
        @RequestMapping("/inserirEscalao")
	public String inserirEscalao(Escalao escalao) {
            escalaoService.inserirEscalao(escalao);
		return "redirect:/criarEscalao";
	} 
    
        @RequestMapping("/listarEscaloes")
	public ModelAndView listarEscaloes(@ModelAttribute Escalao escalao) {
           
                List<Escalao> li = escalaoService.listarEscalao();

		return new ModelAndView("listarEscaloes","li",li);
	}
          
}
