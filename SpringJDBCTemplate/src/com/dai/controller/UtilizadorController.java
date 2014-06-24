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
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
        if (perfil != null) {
            perfilService.inserirPerfil(perfil);
        }
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
        map.put("lp", lp);
        map.put("li", li);
        return new ModelAndView("registarUtilizador", "map", map);
    }

    @RequestMapping("/insereutilizador")
    public String insereUtilizador(@ModelAttribute Utilizador utilizador) {
        if (utilizador != null) {
            utilizadorService.inserirUtilizador(utilizador);
        }
        return "redirect:/registarUtilizador";
    }

    @RequestMapping("/listarUtilizadores")
    public ModelAndView listaUtilizador(HttpServletRequest request) {
        HttpSession session = request.getSession();
        int id = ((int) session.getAttribute("user"));
        int escalao = ((int) session.getAttribute("escalao"));

        int perfil = ((int) session.getAttribute("perfil"));
        List<Utilizador> lutilizador = null;
        switch (perfil) {
            case 1:
                lutilizador = utilizadorService.getListaUtilizador(id);

                break;
            case 2:
                lutilizador = utilizadorService.listarUtilizadorPorEscalao(escalao);
                break;
            case 3:
                lutilizador = utilizadorService.listarUtilizadorPorEscalao(escalao);
                break;
            case 6:
                lutilizador = utilizadorService.listarUtilizador();
                break;
        }
        return new ModelAndView("listarUtilizadores", "lutilizador", lutilizador);
    }

    @RequestMapping("/listarUtilizadoresJ")
    public ModelAndView listaUtilizadorJ(HttpServletRequest request) {
        HttpSession session = request.getSession();
        int id = ((int) session.getAttribute("user"));

        List<Utilizador> lutilizador = null;

        lutilizador = utilizadorService.getListaUtilizador(id);

        return new ModelAndView("listarUtilizadoresJ", "lutilizador", lutilizador);
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

    @RequestMapping("/editar/{idUtilizador}")
    public ModelAndView editUtilizador(@PathVariable("idUtilizador") Integer idUtilizador, @ModelAttribute Utilizador user) {
        String model = null;
        Map<String, Object> map = new HashMap<String, Object>();
        List<Escalao> li = escalaoService.listarEscalao();
        List<Perfil> lp = perfilService.listarPerfil();
        user = utilizadorService.getUtilizador(idUtilizador);
        map.put("user", user);
        map.put("li", li);
        map.put("lp", lp);
        int perfil = user.getIdPerfil();
        switch (perfil) {
            case 1:
                model = "editarJ";
                break;
            case 2:
                model = "editarT";
                break;
            case 3:
                model = "editarTA";
                break;
            case 4:
                model = "editarO";
                break;
            case 5:
                model = "editarA";
                break;
            case 6:
                model = "editarS";
                break;
        }

        return new ModelAndView(model, "map", map);

    }

    @RequestMapping("/login")
    public ModelAndView login() {

        return new ModelAndView("login");
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") Integer user, @RequestParam("password") String password, ModelMap model, HttpServletRequest request, HttpServletResponse response) {
        String resultado;
        Utilizador ut;

        if (utilizadorService.verificaUtilizador(user)) {
            ut = utilizadorService.getUtilizador(user);

            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("nome", ut.getNome());
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
                    return new ModelAndView("olheiros", "resultado", resultado);

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
                resultado = "Password Errada!";
                return new ModelAndView("login", "resultado", resultado);
            }
        } else {
            resultado = "Os dados introduzidos não existem!";
            return new ModelAndView("login", "resultado", resultado);

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
        map.put("li", li);

        return new ModelAndView("criarCompeticao", "map", map);
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

        return new ModelAndView("listarCompeticoes", "li", li);
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

        return new ModelAndView("listarEscaloes", "li", li);
    }

    @RequestMapping("/sair")
    public ModelAndView sair(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

//           session.removeAttribute("perfil");
//                session.invalidate();
        session.removeAttribute("user");
        System.out.println(session.getAttribute("user"));

        session.invalidate();

        return new ModelAndView("login");
    }

    @RequestMapping("/naoAutorizado")
    public ModelAndView naoAutorizado() {

        return new ModelAndView("naoAutorizado");
    }

    @RequestMapping("/historicoAtletaT")
    public ModelAndView historicoAtletaT(HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<Utilizador> lutilizador = null;
        int escalao = ((int) session.getAttribute("escalao"));
        lutilizador = utilizadorService.listarUtilizadorPorEscalao(escalao);
        return new ModelAndView("historicoAtletaT", "lutilizador", lutilizador);

    }

}
