package com.dai.controller;

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
import com.dai.domain.User;
import com.dai.services.UserService;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {

	@Autowired
	UserService userService;

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
        
        @RequestMapping("/main")
	public ModelAndView main() {
               
		return new ModelAndView("main");
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
        
         @RequestMapping("/verifica")
	public ModelAndView verifica() {
		return new ModelAndView("olheiros");
	}
        
        
        @RequestMapping(value="/login", method = RequestMethod.POST)
        public ModelAndView login (@RequestParam("username") String user,@RequestParam("password") String password,  ModelMap model,HttpServletRequest request, HttpServletResponse response){
            String resultado;
            boolean existe = userService.verificaUser(user);
            if(existe==true){
            User user1 = userService.getUser(user);
            if(user1.getPassword().equals(password)){
               resultado = "Login efectuado com sucesso";
              
              HttpSession  session = request.getSession();
              session.setAttribute("user", user);
                } else {
                    resultado = "Password Errada";
            }
                    
                   
            } else {
                resultado = "Login Invalido";
            }
          
        return new ModelAndView("administrador","resultado",resultado );
    
    
}
}