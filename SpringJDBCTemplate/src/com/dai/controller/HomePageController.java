
package com.dai.controller;

import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {

	@Autowired
	UtilizadorService utilizadorService;
        
        @Autowired
        PerfilService perfilService;
        
        @Autowired
        EscalaoService escalaoService;
        
        @RequestMapping("/main")
	public ModelAndView main() {
               
		return new ModelAndView("main");
	}
        
         @RequestMapping("/testenovoperfil")
	public ModelAndView perfil(@ModelAttribute Perfil perfil) {
               
		return new ModelAndView("testenovoperfil");
	}
        
        // futuramente alterar o redirect para uma pagina de confirmacao no caso de ter sido
        // inserido com sucesso ou no caso de insucesso com o erro correspondente
        @RequestMapping("/novoperfil")
	public String inserePerfil(@ModelAttribute Perfil perfil) {
		if (perfil != null)
			perfilService.inserirPerfil(perfil);
		return "redirect:/testelistaperfil";
	}
        
        @RequestMapping("/testelistaperfil")
	public ModelAndView listaPerfil() {
		List<Perfil> lperfil = perfilService.listarPerfil();
		return new ModelAndView("testelistaperfil", "perfilList", lperfil);
	}
        
        @RequestMapping("/testenovoescalao")
	public ModelAndView escalao(@ModelAttribute Escalao escalao) {
               
		return new ModelAndView("testenovoescalao");
	}
        
        @RequestMapping("/novoescalao")
	public String insereEscalao(@ModelAttribute Escalao escalao) {
		if (escalao != null)
			escalaoService.inserirEscalao(escalao);
		return "redirect:/testelistaescalao";
	}
        
        @RequestMapping("/testelistaescalao")
	public ModelAndView listaEscalao() {
		List<Escalao> lescalao = escalaoService.listarEscalao();
		return new ModelAndView("testelistaescalao", "escalaoList", lescalao);
	}
        
        @RequestMapping("/register")
	public ModelAndView registaUtilizador(@ModelAttribute Utilizador utilizador) {
                
                List<Perfil> lp = perfilService.listarPerfil();
                List<Escalao> li = escalaoService.listarEscalao();
                
            
                
                Map<String, List> map = new HashMap<String, List>();
                map.put("lp",lp);
                map.put("li",li);
		return new ModelAndView("register", "map", map);
	}
        
        @RequestMapping("/insereutilizador")
	public String inserData(@ModelAttribute Utilizador utilizador) {
		if (utilizador != null)
			utilizadorService.inserirUtilizador(utilizador);
		return "redirect:/testelistautilizador";
	}
        
        @RequestMapping("/userList")
	public ModelAndView listaUtilizador() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("userList", "utilizadorList", lutilizador);
	}
         @RequestMapping("/alterarDados")
	public ModelAndView lista() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("alterarDados", "utilizadorList", lutilizador);
	}
        

/*
	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute User user) {
                
                List<String> Tipo_de_utilizador = new ArrayList<String>();
		Tipo_de_utilizador.add("Treinador");
		Tipo_de_utilizador.add("Treinador-Adjunto");
                Tipo_de_utilizador.add("Atleta");
            
                
                Map<String, List> map = new HashMap<String, List>();
                map.put("Tipo_de_utilizador",Tipo_de_utilizador);
		return new ModelAndView("register", "map", map);
	}
        
        

	@RequestMapping("/insert")
	public String inserData(@ModelAttribute User user) {
		if (user != null)
			userService.insertData(user);
		return "redirect:/getList";
	}

	@RequestMapping("/getList")
	public ModelAndView getUserLIst() {
		List<User> userL = userService.getUserList();
		return new ModelAndView("userList", "userList", userL);
	}
        
       
        

	

	

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		userService.deleteData(id);
		return "redirect:/getList";
	}
        */
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
        
        @RequestMapping("/treino")
	public ModelAndView criarTreino() {
		return new ModelAndView("definirEquipa");
	}
        @RequestMapping("/equipa")
	public ModelAndView criarEquipa() {
		return new ModelAndView("criarEquipa");
	}
        
        @RequestMapping("/verifica")
	public ModelAndView verifica() {
		return new ModelAndView("apresenta");
	}
        
        
        @RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
        
        @RequestMapping(value="/login", method = RequestMethod.POST)
        public ModelAndView login (@RequestParam("username") Integer user,@RequestParam("password") String password,  ModelMap model){
            String resultado;
            Utilizador ut = utilizadorService.getUtilizador(user);
            if(ut.getPassword().equals(password)){
                resultado = "Login efectuado com sucesso";
                return new ModelAndView("administrador","resultado",resultado );
            } else{ 
                resultado = "Password Errada";
                return new ModelAndView("login");
            }
                    
                
      
    
    
}}
       