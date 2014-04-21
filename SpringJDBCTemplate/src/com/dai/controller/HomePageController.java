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
               
		return new ModelAndView("testemain");
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
        
        @RequestMapping("/testenovoutilizador")
	public ModelAndView registaUtilizador(@ModelAttribute Utilizador utilizador) {
                
                List<Perfil> lp = perfilService.listarPerfil();
                List<Escalao> li = escalaoService.listarEscalao();
                
            
                
                Map<String, List> map = new HashMap<String, List>();
                map.put("lp",lp);
                map.put("li",li);
		return new ModelAndView("testenovoutilizador", "map", map);
	}
        
        @RequestMapping("/insereutilizador")
	public String inserData(@ModelAttribute Utilizador utilizador) {
		if (utilizador != null)
			utilizadorService.inserirUtilizador(utilizador);
		return "redirect:/testelistautilizador";
	}
        
        @RequestMapping("/testelistautilizador")
	public ModelAndView listaUtilizador() {
		List<Utilizador> lutilizador = utilizadorService.listarUtilizador();
		return new ModelAndView("testelistautilizador", "utilizadorList", lutilizador);
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
        
       
        

	@RequestMapping("/edit")
	public ModelAndView editUser(@RequestParam String id,
			@ModelAttribute User user) {

		user = userService.getUser(id);

		List<String> Tipo_de_utilizador = new ArrayList<String>();
		Tipo_de_utilizador.add("Treinador");
		Tipo_de_utilizador.add("Treinador-Adjunto");
                Tipo_de_utilizador.add("Atleta");
            
                
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("tdu",Tipo_de_utilizador);
                map.put("user", user);
		return new ModelAndView("edit", "map", map);

	}

	@RequestMapping("/update")
	public String updateUser(@ModelAttribute User user) {
		userService.updateData(user);
		return "redirect:/getList";

	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		userService.deleteData(id);
		return "redirect:/getList";
	}
        
        @RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
        
        @RequestMapping(value="/login", method = RequestMethod.POST)
        public ModelAndView login (@RequestParam("username") String user,@RequestParam("password") String password,  ModelMap model){
            String resultado;
            boolean existe = userService.verificaUser(user);
            if(existe==true){
            User user1 = userService.getUser(user);
            if(user1.getPassword().equals(password)){
               resultado = "Login efectuado com sucesso";
                } else {
                    resultado = "Password Errada";
            }
                    
                   
            } else {
                resultado = "Login Invalido";
            }
        return new ModelAndView("loginresultado","resultado",resultado );
    
    
}
        */
}